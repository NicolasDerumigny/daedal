//===- TMFKernelPrefetch.cpp - DAE with Multiversioning ---------------------===//
//
//           The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
/// \file TMFKernelPrefetch.cpp
///
/// \brief TM-DAE with Multiversioning
///
/// \copyright Eta Scale AB. Licensed under the Eta Scale Open Source License. See
/// the LICENSE file for details.
//
// This file implements a pass identify every function with "_kernel_"
// as part of the name. Every such clone will be cloned and a call to the
// clone will be added after all calls to the original function. The original
// (cloned) functions will then have every instruction removed except
// those required to follow the control flow graph (CFG), and
// loads of variables visible outside of the enclosing function. Before each
// of these load a prefetch instruction will be added.
//
//===----------------------------------------------------------------------===//

#include <llvm/Analysis/BasicAliasAnalysis.h>
#include <llvm/IR/IntrinsicInst.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/Value.h>
#include <map>
#include <queue>
#include <set>
#include <stack>
#include <string>

#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Analysis/TargetTransformInfo.h"
#include "llvm/Analysis/CFG.h"
#include "llvm/IR/IRBuilder.h"
#include "Util/Annotation/MetadataInfo.h"



#include "../../Utils/SkelUtils/CallingDAE.cpp"

#define LIBRARYNAME "TMFKernelPrefetch"
#define PRINTSTREAM errs() // raw_ostream

#define F_KERNEL_SUBSTR "__kernel__"
#define CLONE_SUFFIX "_clone"

using namespace llvm;
using namespace std;
using namespace util;


// Used as the limit of indirections allowed.
static cl::opt<unsigned> IndirThresh("indir-thresh",
                                     cl::desc("Max number of indirections"),
                                     cl::value_desc("unsigned"));

static cl::opt<bool> HoistAliasingStores(
    "hoist-aliasing-stores",
    cl::desc("Ignore stores that might corrupt load instructions."));

// Set the minimum alias requirement to follow a store.
// Without flag stores are not followed at all.
static cl::opt<bool>
    FollowMay("follow-may",
              cl::desc("Require at least MayAlias to follow store"));
static cl::opt<bool>
    FollowPartial("follow-partial",
                  cl::desc("Require at least PartialAlias to follow store"));
static cl::opt<bool>
    FollowMust("follow-must", cl::desc("Require at MustAlias to follow store"));

static cl::opt<bool>
    DontUseTM("dont-use-tm", cl::desc("Do no detect TM_BEGIN and put access phasis "));

// If present redundant prefetches are kept.
static cl::opt<bool> KeepRedPrefs(
    "keep-red-prefs",
    cl::desc(
        "Keep prefeches made redundant by the presens of corresponding load"),
    cl::Hidden);



namespace {
struct TMFKernelPrefetch : public ModulePass {
    static char ID;
    TMFKernelPrefetch() : ModulePass (ID) {}

public:
  virtual void getAnalysisUsage(AnalysisUsage &AU) const {
    AU.addRequired<AAResultsWrapperPass>();
    AU.addRequired<LoopInfoWrapperPass>();
    AU.addRequired<TargetTransformInfoWrapperPass>();
    AU.addRequired<AssumptionCacheTracker>();
    AU.addRequired<TargetLibraryInfoWrapperPass>();
  }


  virtual bool runOnModule(Module &M) {
    bool change = false;
    for (Module::iterator fI = M.begin(), fE = M.end(); fI != fE; ++fI) {
      if (isFKernel(*fI)) {
        PRINTSTREAM << "\n";
        printStart().write_escaped(fI->getName()) << ":\n";

        if (!DontUseTM){
          set<BasicBlock *> bTS;
          getBeginTMSection(&(*fI), M, bTS);
        }

        change |= swoopify(*fI);
      } else if (isMain(*fI)) {
        insertCallInitPAPI(&*fI);
        change = true;
      }
    }

    return change;
  }

protected:
  AliasAnalysis *AA;
  LoopInfo *LI;

  // Anotates stores in fun with the closest alias type to
  // any of the loads in toPref. (To be clear alias analysis are
  // performed between the address of each store and the address
  // of each load.) Results are annotated as metadata.
  void anotateStores(Function &fun, list<LoadInst *> &toPref) {
    list<StoreInst *> StoreList;
    findStores(fun, StoreList);
    for (list<StoreInst *>::iterator I = StoreList.begin(), E = StoreList.end();
         I != E; I++) {
      string aliasLevel;
      switch (crossCheck(*I, toPref)) {
      case AliasResult::NoAlias:
        aliasLevel = "NoAlias";
        break;
      case AliasResult::MayAlias:
        aliasLevel = "MayAlias";
        break;
      case AliasResult::PartialAlias:
        aliasLevel = "PartialAlias";
        break;
      case AliasResult::MustAlias:
        aliasLevel = "MustAlias";
        break;
      }
      AttachMetadata(*I, "GlobalAlias", aliasLevel);
    }
  }

  // Adds pointers to all StoreInsts in F to StoreList.
  void findStores(Function &F, list<StoreInst *> &StoreList) {
    for (inst_iterator iI = inst_begin(F), iE = inst_end(F); iI != iE; ++iI) {
      if (StoreInst::classof(&(*iI))) {
        StoreList.push_back((StoreInst *)&(*iI));
      }
    }
  }

  // Returns the closest alias between store and any of the LoadInsts
  // in toPref.
  AliasResult crossCheck(StoreInst *store, list<LoadInst *> &toPref) {
    AliasResult closest = AliasResult::NoAlias;
    Value *storePointer = store->getPointerOperand();
    for (list<LoadInst *>::iterator I = toPref.begin(), E = toPref.end();
         I != E && closest != AliasResult::MustAlias; ++I) {
      Value *loadPointer = (*I)->getPointerOperand();
      switch (pointerAlias(storePointer, loadPointer,
                           (*I)->getModule()->getDataLayout())) {
      case AliasResult::NoAlias:
        break; // Already default value.
      case AliasResult::MayAlias:
        if (closest == AliasResult::NoAlias) {
          closest = AliasResult::MayAlias;
        }
        break;
      case AliasResult::PartialAlias:
        if (closest == AliasResult::NoAlias ||
            closest == AliasResult::MayAlias) {
          closest = AliasResult::PartialAlias;
        }
        break;
      case AliasResult::MustAlias:
        closest = AliasResult::MustAlias; // Highest value.
        break;
      }
    }
    return closest;
  }

  void filterLoadsOnIndir(LoopInfo *LI, list<LoadInst *> &LoadList, list<LoadInst *> &IndirList,
                        unsigned int IndirThresh) {
    for (list<LoadInst *>::iterator I = LoadList.begin(), E = LoadList.end(); I != E; ++I) {
      set<Instruction *> Deps;
      getDeps(LI, *I, Deps);
      int DataIndirCount = count_if(Deps.begin(), Deps.end(),
                                    [&](Instruction *DepI){return isa<LoadInst>(DepI) && LI->getLoopFor(DepI->getParent());});
      bool UnderDataThreshold = DataIndirCount <= IndirThresh;
      bool UnderCFGThreshold = !InstrhasMetadataKind(*I, "CFGIndir") ||
          stoi(getInstructionMD(*I, "CFGIndir")) <= IndirThresh;

      if (UnderDataThreshold && UnderCFGThreshold) {
        IndirList.push_back(*I);
      }
      // else: hits indir threshold
    }
  }

  void getRequirementsInIteration(LoopInfo *LI, Instruction *I, set<Instruction *> &DepSet, bool followStores = true) {
    set<Instruction*> DataDeps;
    getDeps(LI, I, DataDeps, followStores);
    for (Instruction *DataDep : DataDeps) {
      getControlDeps(LI, DataDep, DepSet);
    }
    DepSet.insert(DataDeps.begin(), DataDeps.end());
  }

  void filterLoadsOnInterferingDeps(LoopInfo *LI, list<LoadInst *> &Loads,
                                            list<LoadInst *> &Hoistable, Function &F) {
      // Hoistable, if CFG to this block doesn't require global stores / calls
      for (auto L = Loads.begin(), LE = Loads.end(); L != LE; ++L) {
        // this loads immediate deps
        set<Instruction *> Deps;

        // this laads populated deps in followDeps
        set<Instruction *> DepSet;
        getRequirementsInIteration(LI, *L, Deps);
        if (followDeps(Deps, DepSet)) {
          Hoistable.push_back(*L);
        }
    }
  }


  void findAccessInsts(LoopInfo *LI, Function &fun, list<LoadInst *> &toHoist, unsigned int IndirThresh) {
    list<LoadInst *> LoadList, VisibleList, IndirLoads;

    unsigned int BadDeps, Indir;

    // Find all existing load instructions
    findLoads(fun, LoadList);

    findVisibleLoads(LoadList, VisibleList);

    // Filter on the number of allowed indirections to hoist
    filterLoadsOnIndir(LI, VisibleList, IndirLoads, IndirThresh);
    Indir = VisibleList.size() - IndirLoads.size();

    anotateStores(fun, IndirLoads);

    // Hoistable depending on terminator instructions
    filterLoadsOnInterferingDeps(LI, IndirLoads, toHoist, fun);

    BadDeps = IndirLoads.size() - toHoist.size();

    printStart() << "(BadDeps: " << BadDeps << ", Indir: " << Indir << ")\n";
  }


/* OLD
  bool virtual findAccessInsts(Function &fun, set<Instruction *> &toKeep,
                               list<LoadInst *> &toPref) {
    // Find instructions to keep
    // Find load instructions
    list<LoadInst *> LoadList;
    findLoads(fun, LoadList);
    findVisibleLoads(LoadList, toPref);
    // anotate stores
    anotateStores(fun, toPref);
    // Find Instructions required to follow the CFG.
    findTerminators(fun, toKeep);
    // Follow CFG dependencies
    set<Instruction *> Deps;
    bool res = followDeps(toKeep, Deps);
    toKeep.insert(Deps.begin(), Deps.end());

    return res;
  }*/


  // Returns true iff F is an F_kernel function.
  bool isFKernel(Function &F) {
    return F.getName().str().find(F_KERNEL_SUBSTR) != string::npos &&
    F.getName().str().find(CLONE_SUFFIX) == string::npos;
  }

   // Returns true iff F is the main function.
  bool isMain(Function &F) { return F.getName().str().compare("main") == 0; }

  // Clones Function F to its parent Module. A pointer to the
  // clone is returned.
  Function *cloneFunction(Function *F) {
    ValueToValueMapTy VMap;
    Function *cF =
        Function::Create(F->getFunctionType(), F->getLinkage(),
                         F->getName() + CLONE_SUFFIX, F->getParent());
    for (Function::arg_iterator aI = F->arg_begin(), aE = F->arg_end(),
                                acI = cF->arg_begin(), acE = cF->arg_end();
         aI != aE; ++aI, ++acI) {
      assert(acI != acE);
      acI->setName(aI->getName());
      VMap.insert(std::pair<Value *, Value *>((Value *)&*aI, (Value *)&*acI));
    }
    SmallVector<ReturnInst *, 8> Returns; // Ignored
    CloneFunctionInto(cF, F, VMap, false, Returns);
    return cF;
  }

  // Adds pointer to all LoadInsts in F to LoadList.
  virtual void findLoads(Function &F, list<LoadInst *> &LoadList) {
    for (inst_iterator iI = inst_begin(F), iE = inst_end(F); iI != iE; ++iI) {
      if (LoadInst::classof(&(*iI))) {
        LoadList.push_back((LoadInst *)&(*iI));
      }
    }
  }

  // Adds LoadInsts in LoadList to VisList if they
  // operate on visible data.
  void findVisibleLoads(list<LoadInst *> &LoadList, list<LoadInst *> &VisList) {
    for (list<LoadInst *>::iterator I = LoadList.begin(), E = LoadList.end();
         I != E; ++I) {
      if (isNonLocalPointer((*I)->getPointerOperand())) {
        VisList.push_back(*I);
      }
    }
  }

  // Adds the Instructions in F that terminates a BasicBlock to CfgSet.
  void findTerminators(Function &F, set<Instruction *> &CfgSet) {
    for (Function::iterator bbI = F.begin(), bbE = F.end(); bbI != bbE; ++bbI) {
      TerminatorInst *TInst = bbI->getTerminator();
      if (TInst != NULL) {
        CfgSet.insert(TInst);
      }
    }
  }


  void getDeps(LoopInfo *LI, Instruction *I, set<Instruction *> &DepSet, bool followStores = true) {
    queue<Instruction *> Q;
    Q.push(I);

    // get enclosing loop
    const Loop *L = LI->getLoopFor(I->getParent());
    BasicBlock *H;
    
    if (L) {
      H = L->getHeader();
    }
    
    while (!Q.empty()) {
      Instruction *Inst = Q.front();
      Q.pop();

      // TODO: consider: do we want to include deps that are
      // in the entry block?
      if (L && Inst->getParent() == H && isa<PHINode>(Inst)) {
  // do not follow backedges to the head of the loop;
  // here we only consider requirements within _one_
  // iteration
  continue;
      }
    
      enqueueOperands(Inst, DepSet, Q);
      if (followStores && LoadInst::classof(Inst)) {
  enqueueStores((LoadInst *)Inst, DepSet, Q);
      }
    }
  }

  void getControlDeps(LoopInfo *LI, Instruction *I, set<Instruction *> &Deps) {
    set<BasicBlock *> Starred;
    BasicBlock *BB = I->getParent();
    std::queue<BasicBlock *> Ancestors;

    const Loop *L = LI->getLoopFor(BB);
    if (!L || BB == L->getHeader()) {
      return;
    }

    // 1. Find all ancestors of the parent block that are
    // contained in the loop.
    Starred.insert(BB);
    Ancestors.push(BB);
    while (!Ancestors.empty()) {
      BasicBlock *B = Ancestors.front();
      Ancestors.pop();

      const Loop *L = LI->getLoopFor(B);
      if (!L || B == L->getHeader()) {
        continue;
      }

      for (auto P = pred_begin(B), PE = pred_end(B); P != PE; ++P) {
        if (Starred.insert(*P).second) { // succeeded inserting it
          Ancestors.push(*P);
        }
      }
    }


    // 2. Find all terminator instructions that are crucial to the
    // execution of I
    for (auto Ancestor : Starred) {
    
      bool isMandatory = false;
      for (succ_iterator S = succ_begin(Ancestor), SE = succ_end(Ancestor); S != SE && !isMandatory; ++S) {
        if (Ancestor == BB) {
          continue;
        }
        
        // If a successor is not one of the blocks ancestor's, then this
        // terminator instruction determines whether the instruction
        // will be executed or not
        isMandatory = Starred.find(*S) == Starred.end();
      }

      if (isMandatory) {
        Deps.insert(Ancestor->getTerminator());
        getDeps(LI, Ancestor->getTerminator(), Deps);
      }
    }
  }

  // Adds dependencies of the Instructions in Set to DepSet.
  // Dependencies are considered to be the operators of an Instruction
  // with the exceptions of calls. In case a LoadInst is a dependency
  // the coresponding StoreInst is also considered as a dependency
  // as long it does not operate on visible memory.
  // Retrurns false iff a prohibited instruction are required.
  // The contents of Set and DepSet are only reliable if the result
  // is true.
  bool followDeps(set<Instruction *> &Set, set<Instruction *> &DepSet,
                  bool followStores = true, bool followCalls = true) {
    bool valid = true;
    queue<Instruction *> Q;
    for (set<Instruction *>::iterator I = Set.begin(), E = Set.end();
         I != E; ++I) {
      enqueueOperands(*I, DepSet, Q);
    }
    
    while (!Q.empty()) {
      bool res = true;
      Instruction *Inst = Q.front();
      Q.pop();

      // Calls and non-local stores are prohibited.
      if (CallInst::classof(Inst)) {
        bool onlyReadsMemory = ((CallInst *)Inst)->onlyReadsMemory();
        bool annotatedToBeLocal = InstrhasMetadata(Inst, "Call", "Local");

        res = onlyReadsMemory || annotatedToBeLocal;
        if (!res) {
          errs() << "<!call " << *Inst << "!>\n";
        }
      } else if (StoreInst::classof(Inst)) {
        res = isLocalPointer(((StoreInst *)Inst)->getPointerOperand());
        if (!res) {
          errs() << " <!store " << *Inst << "!>\n";
        }
      }
      if (res) {
        enqueueOperands(Inst, DepSet, Q);
        // Follow load/store
        if (followStores && LoadInst::classof(Inst)) {
          enqueueStores((LoadInst *)Inst, DepSet, Q);
        }
        if (followCalls) {
          res = checkCalls(Inst);
        }
      } else {
        valid = false;
      }
      
    }
    return valid;
  }

  // Convinience call
  bool followDeps(Instruction *Inst, set<Instruction *> &DepSet) {
    set<Instruction *> Set;
    Set.insert(Inst);
    return followDeps(Set, DepSet);
  }

  // Enques the operands of Inst.
  void enqueueOperands(Instruction *Inst, set<Instruction *> &Set,
                       queue<Instruction *> &Q) {
    for (User::value_op_iterator I = Inst->value_op_begin(),
                                 E = Inst->value_op_end();
         I != E; ++I) {
      enqueueInst(*I, Set, Q);
    }
  }

  // Adds Val to Set and Q provided it is an Instruction that has
  // never before been enqued to Q. This assumes that an Instruction
  // is present in Set iff it has been added to Q.
  void enqueueInst(Value *Val, set<Instruction *> &Set,
                   queue<Instruction *> &Q) {
    if (Instruction::classof(Val)) {
      Instruction *Inst = (Instruction *)Val;
      if (Set.insert(Inst).second) { // true if Inst was inserted
        Q.push(Inst);
      }
    }
  }

  // Adds all StoreInsts that could be responsible for the value read
  // by LInst to Set and Q under the same condition as in enqueueInst.
  void enqueueStores(LoadInst *LInst, set<Instruction *> &Set,
                     queue<Instruction *> &Q) {
    BasicBlock *loadBB = LInst->getParent();
    Value *Pointer = LInst->getPointerOperand();
    queue<BasicBlock *> BBQ;
    set<BasicBlock *> BBSet;
    BBQ.push(loadBB);
    bool first = true;
    bool found;
    while (!BBQ.empty()) {
      BasicBlock *BB = BBQ.front();
      BBQ.pop();
      found = false;

      BasicBlock::reverse_iterator RI(LInst->getIterator());
      for (BasicBlock::reverse_iterator iI = first ? RI : BB->rbegin(),
                                        iE = BB->rend();
           iI != iE; ++iI) {
        if (StoreInst::classof(&(*iI))) {
          StoreInst *SInst = (StoreInst *)&(*iI);
          switch (pointerAlias(SInst->getPointerOperand(), Pointer,
                               iI->getModule()->getDataLayout())) {
          case AliasResult::MustAlias:
            if (FollowMust || FollowPartial || FollowMay) {
              found = true;
              enqueueInst(SInst, Set, Q);
            }
            break;
          case AliasResult::PartialAlias:
            if (FollowPartial || FollowMay) {
              enqueueInst(SInst, Set, Q);
            }
            break;
          case AliasResult::MayAlias:
            if (FollowMay) {
              enqueueInst(SInst, Set, Q);
            }
            break;
          case AliasResult::NoAlias:
            break;
          }
        } else if (Pointer == &(*iI)) {
          found = true;
        }
      }
      if (!found) {
        for (pred_iterator pI = pred_begin(BB), pE = pred_end(BB); pI != pE;
             ++pI) {
          if (BBSet.insert(*pI).second) {
            BBQ.push(*pI);
          }
        }
      }
      first = false;
    }
  }

  bool checkCalls(Instruction *I) {
    bool hasNoModifyingCalls = true;

    BasicBlock *InstBB = I->getParent();
    std::queue<BasicBlock *> BBQ;
    std::set<BasicBlock *> BBSet;

    BBQ.push(InstBB);
    // Collect all predecessor blocks
    while (!BBQ.empty()) {
      BasicBlock *BB = BBQ.front();
      BBQ.pop();
      for (pred_iterator pI = pred_begin(BB), pE = pred_end(BB); pI != pE;
           ++pI) {
        if (BBSet.insert(*pI).second) {
          BBQ.push(*pI);
        }
      }
    }

    for (Value::user_iterator U = I->user_begin(), UE = I->user_end();
         U != UE && hasNoModifyingCalls; ++U) {
      Instruction *UserInst = (Instruction *)*U;
      for (Value::user_iterator UU = UserInst->user_begin(),
                                UUE = UserInst->user_end();
           UU != UUE && hasNoModifyingCalls; ++UU) {
        if (!CallInst::classof(*UU)) {
          continue;
        }

        if (BBSet.find(((Instruction *)(*UU))->getParent()) == BBSet.end()) {
          continue;
        }

        CallInst *Call = (CallInst *)*UU;
        hasNoModifyingCalls = Call->onlyReadsMemory();

        // Allow prefetches
        if (!hasNoModifyingCalls && isa<IntrinsicInst>(Call) &&
            ((IntrinsicInst *)Call)->getIntrinsicID() == Intrinsic::prefetch) {
          hasNoModifyingCalls = true;
        }
      }
    }

    return hasNoModifyingCalls;
  }

  // Returns true iff Pointer does have a local destination.
  bool isLocalPointer(Value *Pointer) {
    if (!Instruction::classof(Pointer)) {
      return false;
    }
    Instruction *PtrInst = (Instruction *)Pointer;
    if (AllocaInst::classof(Pointer)) {
      // A locally defined memory location
      return true;
    }
    unsigned poi;
    if (GetElementPtrInst::classof(Pointer)) {
      poi = GetElementPtrInst::getPointerOperandIndex();
    } else if (CastInst::classof(Pointer)) {
      poi = 0; // The only operand
    } else if (LoadInst::classof(Pointer)) {
      // Assumes that global pointers are never stored in local
      // structures. Otherwise this could produce false positives.
      poi = LoadInst::getPointerOperandIndex();
    } else {
      return false;
    }
    Value *Pointer2 = PtrInst->getOperand(poi);
    return isLocalPointer(Pointer2);
  }

  // Convenience call
  bool isNonLocalPointer(Value *Pointer) { return !isLocalPointer(Pointer); }

  // Checks if two pointers alias
  AliasResult pointerAlias(Value *P1, Value *P2, const DataLayout &DL) {
    uint64_t P1Size = MemoryLocation::UnknownSize;
    Type *P1ElTy = cast<PointerType>(P1->getType())->getElementType();
    if (P1ElTy->isSized()) {
      P1Size = DL.getTypeStoreSize(P1ElTy);
    }

    uint64_t P2Size = MemoryLocation::UnknownSize;
    Type *P2ElTy = cast<PointerType>(P2->getType())->getElementType();
    if (P2ElTy->isSized()) {
      P2Size = DL.getTypeStoreSize(P2ElTy);

      return AA->alias(P1, P1Size, P2, P2Size);
    }
  }

  void removeUnlisted(Function &F, set<Instruction *> &KeepSet) {
    set<Instruction *>::iterator ksI = KeepSet.begin(), ksE = KeepSet.end();
    for (inst_iterator iI = inst_begin(F), iE = inst_end(F); iI != iE;) {
      Instruction *Inst = &(*iI);
      ++iI;
      if (find(ksI, ksE, Inst) == ksE) {
        Inst->replaceAllUsesWith(UndefValue::get(Inst->getType()));
        Inst->eraseFromParent();
      }
    }
  }

  bool swoopify(Function & F){
    LI = &getAnalysis<LoopInfoWrapperPass>(F).getLoopInfo();

    // We need to manually construct BasicAA directly in order to disable
    // its use of other function analyses.
    BasicAAResult BAR(createLegacyPMBasicAAResult(*this, F));

    // Construct our own AA results for this function. We do this manually to
    // work around the limitations of the legacy pass manager.
    AAResults AAR(createLegacyPMAAResults(*this, F, BAR));
    AA = &AAR;

    list<LoadInst *> toHoist;   // LoadInsts to hoist
    findAccessInsts(LI, F, toHoist, IndirThresh);


    printStart() << "Indir: " << IndirThresh << ", " << toHoist.size() << " load(s) in access phase.\n";

    if (toHoist.empty()) {
      printStart() << "Disqualified: no loads to hoist\n";
      return false;
    }

    bool succeeded = swoopifyCore(F, toHoist);
    return succeeded;
  }

  bool swoopifyCore(Function &F, list<LoadInst*> toHoist) {
  /*  OLD CODE  
    Function *access = &F; // the original
    Function *execute = cloneFunction(access);

    list<LoadInst *> toPref;   // LoadInsts to prefetch
    set<Instruction *> toKeep; // Instructions to keep
    if (findAccessInsts(*access, toKeep, toPref)) {
      // insert prefetches
      int prefs = insertPrefetches(toPref, toKeep, true);
      if (prefs > 0) {
        // remove unwanted instructions
        removeUnlisted(*access, toKeep);

        // Always inline the access phase
        access->removeFnAttr(Attribute::NoInline);
        access->addFnAttr(Attribute::AlwaysInline);
        // Following instructions asssumes that the first
        // operand is the original and the second the clone.
        insertCallToAccessFunctionSequential(access, execute);
      } else {
        printStart() << "Disqualified: no prefetches\n";
      }
    } else {
      printStart() << "Disqualified: CFG error\n";
    }*/
    Function *access = &F; // the original
    Function *execute = cloneFunction(access);
    set<Instruction *> toKeep; // Instructions to keep

    // Find Instructions required to follow the CFG.
    findTerminators(*access, toKeep);

    // Find function entry instructions
    BasicBlock &EntryBlock = (*access).getEntryBlock();
    for (auto I = EntryBlock.begin(), IE = EntryBlock.end(); I != IE; ++I) {
      toKeep.insert(&*I);
    }

    // Follow CFG dependencies
    set<Instruction *> Deps;


    if (followDeps(toKeep, Deps)) {
      toKeep.insert(Deps.begin(), Deps.end());

      // insert prefetches
      int prefs = insertPrefetches(toHoist, toKeep, true);
      if (prefs > 0) {
        // remove unwanted instructions
        removeUnlisted(*access, toKeep);

        // Always inline the access phase
        access->removeFnAttr(Attribute::NoInline);
        access->addFnAttr(Attribute::AlwaysInline);
        // Following instructions asssumes that the first
        // operand is the original and the second the clone.
        insertCallToAccessFunctionSequential(access, execute);

        // simplify the control flow graph
        // (remove all unnecessary instructions and branches)
        TargetTransformInfo &TTI =
        getAnalysis<TargetTransformInfoWrapperPass>().getTTI(*access);
        simplifyCFG(access, TTI);

        return true;
      } else {
        printStart() << "Disqualified: no prefetches\n";
      }
    } else {
      printStart() << "Disqualified: Unhandled dependencies\n";
    }
    return false;
  }



  enum PrefInsertResult { Inserted, BadDeps, IndirLimit, Redundant };

  // Inserts a prefetch for every LoadInst in toPref
  // that fulfils the criterion of being inserted.
  // All prefetches to be kept are added to toKeep
  // (more unqualified prefetches may be added to the function).
  // Returns the number of inserted prefetches.
  int insertPrefetches(list<LoadInst *> &toPref, set<Instruction *> &toKeep,
                       bool printRes = false, bool onlyPrintOnSuccess = false) {
    int total = 0, ins = 0, bad = 0, indir = 0, red = 0;
    map<LoadInst *, pair<CastInst *, CallInst *>> prefs;
    set<Instruction *> prefToKeep;
    // Insert prefetches
    for (list<LoadInst *>::iterator I = toPref.begin(), E = toPref.end();
         I != E; I++) {
      switch (insertPrefetch(*I, prefToKeep, prefs)) {
      case Inserted:
        ++ins;
        break;
      case BadDeps:
        ++bad;
        break;
      case IndirLimit:
        ++indir;
        break;
      case Redundant:
        ++red;
        break;
      }
    }
    // Remove unqualified prefetches from toKeep
    if (!KeepRedPrefs) {
      for (map<LoadInst *, pair<CastInst *, CallInst *>>::iterator
               I = prefs.begin(),
               E = prefs.end();
           I != E; ++I) {
        LoadInst *LInst = I->first;
        if (prefToKeep.count(LInst) != 0) {
          // Load present - remove prefetch
          CastInst *Cast = I->second.first;
          CallInst *Prefetch = I->second.second;
          prefToKeep.erase(Cast);
          prefToKeep.erase(Prefetch);
          ++red;
        }
      }
    }
    toKeep.insert(prefToKeep.begin(), prefToKeep.end());
    // Print results
    if (printRes && (!onlyPrintOnSuccess || ins > 0)) {
      total = ins + bad + indir;
      printStart() << "Prefetches: "
                   << "Inserted: " << ins << "/" << total << "  (Bad: " << bad
                   << "  Indir: " << indir << "  Red: " << red << ")\n";
    }
    return ins;
  }

  // Inserts a prefetch for LInst as early as possible
  // (i.e. as soon as the adress has been computed).
  // The prefetch and all its dependencies will also
  // be inserted in toKeep.
  // Returns the result of the insertion.
  PrefInsertResult
  insertPrefetch(LoadInst *LInst, set<Instruction *> &toKeep,
                 map<LoadInst *, pair<CastInst *, CallInst *>> &prefs) {

    // Follow dependencies
    set<Instruction *> Deps;
    if (followDeps(LInst, Deps)) {
      if (isUnderThreshold(Deps)) {
        toKeep.insert(Deps.begin(), Deps.end());
      } else {
        return IndirLimit;
      }
    } else {
      return BadDeps;
    }

    // Extract usefull information
    bool prefetchExists = false;
    Value *DataPtr = LInst->getPointerOperand();
    BasicBlock *BB = LInst->getParent();
    BasicBlock *EntryBlock =
        &(LInst->getParent()->getParent()->getEntryBlock());
    for (map<LoadInst *, pair<CastInst *, CallInst *>>::iterator
             I = prefs.begin(),
             E = prefs.end();
         I != E; ++I) {
      LoadInst *LD = I->first;
      if (LD->getPointerOperand() == DataPtr) {
        // Might also be nullptr
        BasicBlock *LDBB = LD->getParent();
        if (BB == EntryBlock && LDBB == EntryBlock ||
            BB != EntryBlock && LDBB != EntryBlock) {
          prefetchExists = true;
          break;
        }
      }
    }

    if (prefetchExists) {
      return Redundant;
    }

    unsigned PtrAS = LInst->getPointerAddressSpace();
    LLVMContext &Context = DataPtr->getContext();

    // Make sure type is correct
    Instruction *InsertPoint = LInst;
    Type *I8Ptr = Type::getInt8PtrTy(Context, PtrAS);
    CastInst *Cast =
        CastInst::CreatePointerCast(DataPtr, I8Ptr, "", InsertPoint);

    // Insert prefetch
    IRBuilder<> Builder(InsertPoint);
    Module *M = LInst->getParent()->getParent()->getParent();
    Type *I32 = Type::getInt32Ty(LInst->getContext());
    Value *PrefFun = Intrinsic::getDeclaration(M, Intrinsic::prefetch);
    CallInst *Prefetch = Builder.CreateCall(
        PrefFun, {Cast, ConstantInt::get(I32, 0),                       // read
                  ConstantInt::get(I32, 3), ConstantInt::get(I32, 1)}); // data

    // Inset prefetch instructions into book keeping
    toKeep.insert(Cast);
    toKeep.insert(Prefetch);
    prefs.insert(make_pair(LInst, make_pair(Cast, Prefetch)));

    return Inserted;
  }

  bool isUnderThreshold(set<Instruction *> Deps) {
    unsigned thresh = IndirThresh;
    unsigned count = 0;
    for (set<Instruction *>::iterator dI = Deps.begin(), dE = Deps.end();
         dI != dE && count <= thresh; ++dI) {
      if (LoadInst::classof(*dI)) {
        ++count;
      }
    }
    return count <= thresh;
  }


  // Find all TM_Begin that can precede initFun by a traversal
  // of the CFG
  void getBeginTMSection(Function * initFun, Module & M, set<BasicBlock *> & bTS) {
    vector<Function *> vF;
    map<Function *, bool> seen;
    vF.push_back(initFun);
    seen[initFun]=true;

    while(bTS.size() == 0 && vF.size() != 0) {
      set<Function *> nvF;
      for(Function * F: vF) {
        vector<Instruction*> vI;
        getCallers(&M, F, vI);
        if (vI.size() == 0){
          printStart()<<"WARNING: " <<
          "A marked loop might be executed outside a TM section\n";
        }
        vector<BasicBlock *> vBlockWithoutBTS;
        for(Instruction* I : vI)
          getBeginTransactionalSection(I-> getParent(), bTS, vBlockWithoutBTS);

        for(BasicBlock * BB: vBlockWithoutBTS)
          nvF.insert(BB->getParent());
      }
      vF.clear();
      for(Function * F: nvF)
        if (seen.find(F)==seen.end()){
          vF.push_back(F);
          seen[F]=true;
        }
    }

    if (bTS.size() == 0) {
      printStart() << "ERROR: A marked loop is never executed in a TM section in this file\n";
    } else {
      printStart() << bTS.size() << " Corresponding TM_BEGIN()\n";
    }
  }

  bool SimplifyCFGExclude(Function *F, TargetTransformInfo &TTI,
                        unsigned bonusInstThreshold,
                        vector<BasicBlock *> excludeList) {

    bool modif = false;
    Function::iterator bbI = F->begin(), bbE = F->end();
    while (bbI != bbE) {
      if (std::find(excludeList.begin(), excludeList.end(), &*bbI) ==
          excludeList.end()) {
        modif = SimplifyCFG(&*bbI, TTI, bonusInstThreshold);
      } else {
        modif = false;
      }
      if (modif)
        bbI = F->begin(); // helper;
      else
        bbI++;
    }
  }

  void simplifyCFG(Function *F, TargetTransformInfo &TTI) {
    // simplify the CFG of A to remove dead code
    vector<BasicBlock *> excludeInCfg;
    excludeInCfg.push_back(&(F->getEntryBlock()));
    excludeInCfg.push_back(F->getEntryBlock().getTerminator()->getSuccessor(0));

    SimplifyCFGExclude(F, TTI, 0, excludeInCfg);
  }

  raw_ostream &printStart() { return (PRINTSTREAM << LIBRARYNAME << ": "); }
};
}

char TMFKernelPrefetch::ID = 0;
static RegisterPass<TMFKernelPrefetch> X("tm-f-kernel-prefetch", "F_kernel prefetch pass for transactional memory", false, false);
