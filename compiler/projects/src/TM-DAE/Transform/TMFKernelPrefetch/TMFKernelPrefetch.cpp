//===- TMFKernelPrefetch.cpp - TM-DAE with Multiversioning ---------------------===//
//
//					 The LLVM Compiler Infrastructure
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
#include "../../Utils/SkelUtils/DepsManagement.cpp"

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
		DontUseTM("dont-use-tm", cl::desc("Do no detect TM_BEGIN and put access phasis at standard place"));

static cl::opt<bool>
		Dump("dump", cl::desc("Dump the ouput .ll file (usefull for debugging)"));

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
		AU.addRequired <DominatorTreeWrapperPass>();
	}


	virtual bool runOnModule(Module &M) {
		bool change = false;
		for (Module::iterator fI = M.begin(), fE = M.end(); fI != fE; ++fI) {
			if (isFKernel(*fI)) {
				PRINTSTREAM << "\n";
				printStart().write_escaped(fI->getName()) << ":\n";

				change |= swoopify(*fI);
			} /*else if (isMain(*fI)) {
				insertCallInitPAPI(&*fI);
				change = true;
			}*/
		}


		if (Dump) {
				PRINTSTREAM<<"DUMP:\n";
				M.dump();
		}
		return change;
	}

protected:
	AliasAnalysis *AA;
	LoopInfo *LI;
	DominatorTree * DT;

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
													 (*I)->getModule()->getDataLayout(), AA)) {
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

	//Eliminates loads that hit indir threashold
	void filterLoadsOnIndir(list<LoadInst *> &LoadList, list<LoadInst *> &IndirList,
												unsigned int IndirThresh) {
		for (list<LoadInst *>::iterator I = LoadList.begin(), E = LoadList.end(); I != E; ++I) {
			set<Instruction *> Deps;
			getDeps(*I, Deps);
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

	void getRequirementsInIteration(Instruction *I, set<Instruction *> &DepSet, bool followStores = true) {
		set<Instruction*> DataDeps;
		getDeps(I, DataDeps, followStores);
		for (Instruction *DataDep : DataDeps) {
			getControlDeps(DataDep, DepSet);
		}
		DepSet.insert(DataDeps.begin(), DataDeps.end());
	}

	void filterLoadsOnInterferingDeps(list<LoadInst *> &Loads,
					 				  list<LoadInst *> &Hoistable,
					 				  Function &F) {
		// Hoistable, if CFG to this block doesn't require global stores / calls
		for (auto L = Loads.begin(), LE = Loads.end(); L != LE; ++L) {
			// this loads immediate deps
			set<Instruction *> Deps;

			// this loads populated deps in followDeps
			set<Instruction *> DepSet;
			getRequirementsInIteration(*L, Deps);
			if (followDeps(Deps, DepSet, AA, FollowMust, FollowPartial, FollowMay)) {
				Hoistable.push_back(*L);
			}
		}
	}

	// Get the Access Phase by finding loads then refining
	// them based on indir and dependencies
	void findAccessInsts(Function &fun, list<LoadInst *> &toPref, unsigned int IndirThresh) {
		list<LoadInst *> LoadList, VisibleList, IndirLoads;

		unsigned int BadDeps, Indir;

		// Find all existing load instructions
		findLoads(fun, LoadList);

		findVisibleLoads(LoadList, VisibleList);

		// Filter on the number of allowed indirections to hoist
		filterLoadsOnIndir(VisibleList, IndirLoads, IndirThresh);
		Indir = VisibleList.size() - IndirLoads.size();

		anotateStores(fun, IndirLoads);

		// Hoistable depending on terminator instructions
		filterLoadsOnInterferingDeps(IndirLoads, toPref, fun);

		BadDeps = IndirLoads.size() - toPref.size();

		printStart() << "(BadDeps: " << BadDeps << ", Indir: " << Indir << ")\n";
	}

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

	// Get the dependencies intruction I inside the loop instructions
	void getDeps(Instruction *I, set<Instruction *> &DepSet, bool followStores = true) {
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
				enqueueStores((LoadInst *)Inst, DepSet, Q, AA, FollowMust,
											FollowPartial, FollowMay);
			}
		}
	}

	// Get the dependencies of the instruction outside of its loop
	void getControlDeps(Instruction *I, set<Instruction *> &Deps) {
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
				getDeps(Ancestor->getTerminator(), Deps);
			}
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

	// find the instructions and call swoopifyCore to prefetch them
	bool swoopify(Function & F){
		LI = &getAnalysis<LoopInfoWrapperPass>(F).getLoopInfo();

		// We need to manually construct BasicAA directly in order to disable
		// its use of other function analyses.
		BasicAAResult BAR(createLegacyPMBasicAAResult(*this, F));

		// Construct our own AA results for this function. We do this manually to
		// work around the limitations of the legacy pass manager.
		AAResults AAR(createLegacyPMAAResults(*this, F, BAR));
		AA = &AAR;

		list<LoadInst *> toPref;	 // LoadInsts to hoist
		findAccessInsts(F, toPref, IndirThresh);


		printStart() << "Indir: " << IndirThresh << ", " << toPref.size() << " load(s) in access phase.\n";

		if (toPref.empty()) {
			printStart() << "Disqualified: no loads to hoist\n";
			return false;
		}

		bool succeeded = swoopifyCore(F, toPref, true);
		return succeeded;
	}

	// Put the Access Phase before the loop. If the access phase cam
	// be put outside the TM section, then do nothing as it is already handled
	// by TM-Arg
	bool swoopifyCore(Function &F, list<LoadInst*> toPref, 
		bool forceNotTM = false) {
		Function *access = &F; 
		// the original, in which the prefetch will be put
		Function *execute = cloneFunction(access);
		set<Instruction *> toKeep, Deps, DepSet;
		set<BasicBlock *> bTS;
		map<BasicBlock *, vector<Value *>> funArgs;
		list<LoadInst*> backup = toPref;
		int prefs;


		if (DontUseTM || forceNotTM) {
			// Add terminators
			findTerminators(*access, toKeep);

			for (LoadInst * inst : toPref) {
				toKeep.insert(inst);
				getRequirementsInIteration(inst, Deps);
				followDeps(Deps, DepSet, AA, FollowMust, FollowPartial, FollowMay);
			}

			// Keep all data dependencies
			toKeep.insert(DepSet.begin(), DepSet.end());


			// insert prefetches
			prefs = insertPrefetches(toPref, toKeep, true);
		} else {
			SelectHoistForBeginTMSection(toPref, DepSet, access, bTS, funArgs);

			if (bTS.size()!=1) {
				PRINTSTREAM<<"FATAL ERROR: TM section has several begins\n";
			} else {
				for (BasicBlock * BB : bTS) {	
					// Construct a Dominator tree to find the right place 
					// to insert prefetches
					DT = & getAnalysis<DominatorTreeWrapperPass>(*(BB->getParent())).getDomTree();
				}
			}

			findTerminators(*access, toKeep);

			for (LoadInst * inst : toPref) {
				toKeep.insert(inst);
				getRequirementsInIteration(inst, Deps);
				followDeps(Deps, DepSet, AA, FollowMust, FollowPartial, FollowMay);
			}


			// Keep all data dependencies
			toKeep.insert(DepSet.begin(), DepSet.end());


			// insert prefetches
			prefs = insertPrefetches(toPref, toKeep, true);
		}


		if (prefs > 0) {
			// remove unwanted instructions
			removeUnlisted(*access, toKeep);
			// simplify the control flow graph
			// (remove all unnecessary instructions and branches)
			TargetTransformInfo &TTI =
			getAnalysis<TargetTransformInfoWrapperPass>().getTTI(*access);
			simplifyCFG(access, TTI);

			// Always inline the access phase
			access->removeFnAttr(Attribute::NoInline);
			access->addFnAttr(Attribute::AlwaysInline);
			
			if (DontUseTM || forceNotTM) {
				insertCallToAccessFunctionSequential(access, execute);
			} else {
				// Used to put access phase before the TM_BEGIN(), but this
				// create doubles with TM-Arg
				// So we just put a message and exit
				printStart()<<"Loads already handled by TM-Arg, nothing is done...\n";
				insertCallToAccessFunctionBeforeTM(bTS, access, execute, funArgs, DT);
			}
			return true;

		} else {
			if (DontUseTM || forceNotTM){
				printStart() << "Disqualified: no prefetches\n";
				return false;
			} else {
				printStart() << "No prefetches can be hoist outside TM Section, falling back to original mode\n";
				return swoopifyCore(F, backup, true);
			}
		}
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
	insertPrefetch(LoadInst *LInst,
				   set<Instruction *> &toKeep,
				   map<LoadInst *, pair<CastInst *, CallInst *>> &prefs) {

		// Follow dependencies
		set<Instruction *> Deps;
		if (followDeps(LInst, Deps, AA, FollowMust, FollowPartial, FollowMay)) {
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
				PrefFun, {Cast, ConstantInt::get(I32, 0),			  // read
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


	// get a map of the load instructions to their value in the
	// current call
	void initLoadToVal(list<LoadInst * > & toPref,
					   map<LoadInst *, Value*> & loadToVal) {
		list<LoadInst * > SureToPref;
		for (LoadInst * LInst : toPref) {
			bool isPresent = false;
			Function::ArgumentListType & ArgLst = LInst->getParent()->
				 getParent()->getArgumentList();
			for (ilist_iterator<Argument> b = ArgLst.begin(), e = ArgLst.end();
													b != e; ++b) {
				if ((cast<GetElementPtrInst> (LInst->getPointerOperand()))
									->getPointerOperand() == &(*b)){
					loadToVal[LInst] = &(*b);
					isPresent = true;
				}
			}

			if (isPresent)
				SureToPref.push_back(LInst);
		}
		toPref = SureToPref;
	}


	// Update the loadToVal map when the function F is called
	void updateLoadToVal(CallInst * I, Function * F, list<LoadInst * > & toPref, map<LoadInst *, Value*> & loadToVal) {
		list<LoadInst * > SureToPref;
		for (LoadInst * LInst : toPref) {
			int argNbr = -1;
			for (ilist_iterator<Argument> b = F->getArgumentList().begin(),
				e = F->getArgumentList().end();b != e; ++b) {
				++argNbr;
				if (loadToVal[LInst] == &(*b)) { 
					loadToVal[LInst] = I->arg_begin()[argNbr];
					SureToPref.push_back(LInst);
					break;
				}
			}
		}
		toPref = SureToPref;
	}

	// Find all TM_Begin that can precede initFun by a traversal
	// of the CFG and keep only the instructions that can be hoisted befor anny TM_BEGIN
	// Collect also the argument with which the function is called
	int SelectHoistForBeginTMSection(list<LoadInst * > & toPref, 
		set<Instruction * > & DepSet, Function * access, set<BasicBlock *> & bTS,
		map<BasicBlock *, vector <Value *>> & funArgs) {
		Module * M = access->getParent();
		vector<Function *> vF;
		set<Function *> seen;
		map<LoadInst *, Value*> loadToVal;
		map<Function*, map<LoadInst *, Value*>> BFStoloadToVal;
		vF.push_back(access);
		seen.insert(access);
		BFStoloadToVal[access] = map<LoadInst *, Value*>();
		initLoadToVal(toPref,	BFStoloadToVal[access]);


		// BFS overs the function calls to detect the TM_BEGIN section
		while(vF.size() != 0) {
			set<Function *> nvF;
			for(Function * F: vF) {
				vector< CallInst *> vI;
				getCallers(M, F, vI);
				// Detection of the TM_BEGIN: pushed either in new Vector Fun (nVF)
				// if there is no TM_BEGIN, and continue the traversal; or in BTS
				if (vI.size() == 0){
					printStart()<<"WARNING: " <<
					"A marked loop might be executed outside a TM section, or there is a recursive call.\n";
				}


				vector<BasicBlock *> vBlockWithoutBTS;
				for (CallInst * I: vI) {
					BFStoloadToVal[I->getParent()->getParent()]=BFStoloadToVal[F];
					//have different loadToVar for each part of the BFS
					updateLoadToVal(I, F, toPref, BFStoloadToVal[I->getParent()->getParent()]);
					getBeginTransactionalSection(toPref, I, bTS, vBlockWithoutBTS, 
									 funArgs, BFStoloadToVal[I->getParent()->getParent()]);
				}

				for(BasicBlock * BB: vBlockWithoutBTS) {
					nvF.insert(BB->getParent());
				}
			}
			vF.clear();
			for(Function * F: nvF)
				if (seen.find(F)==seen.end()){
					vF.push_back(F);
					seen.insert(F);
				}
		}

		if (bTS.size() == 0) {
			printStart() << "ERROR: A marked loop is never executed in a TM section in this file\n";
		} else {
			printStart() << bTS.size() << " Corresponding TM_BEGIN()\n";
		}

		return toPref.size();
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
