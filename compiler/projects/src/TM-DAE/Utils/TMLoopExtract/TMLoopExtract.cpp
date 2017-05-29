//===- TMLoopExtract.cpp - Extracts DAE-targeted loop----
//--------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
/// \file TMLoopExtract.cpp
///
/// \brief Extracts TM-DAE-targeted loop
///
/// \copyright Eta Scale AB. Licensed under the Eta Scale Open Source License. See
/// the LICENSE file for details.
//===----------------------------------------------------------------------===//
#include "llvm/Analysis/LoopPass.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Transforms/IPO.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Transforms/Utils/CodeExtractor.h"

#include <fstream>

#define LIBRARYNAME "TMLoopExtract"
#define PRINTSTREAM errs() // raw_ostream

#define F_KERNEL_SUBSTR "__kernel__"
#define PROLOGUE_SUBSTR "prol"

using namespace llvm;

#include "../SkelUtils/Utils.cpp"

static cl::opt<std::string> BenchName("bench-name",
                                      cl::desc("The benchmark name"),
                                      cl::value_desc("name"));

static cl::opt<bool> IsDae("is-dae",
                           cl::desc("Use depth-based DAE loop detection"));

namespace {
struct TMLoopExtract : public LoopPass {
  static char ID; // Pass identification, replacement for typeid

  TMLoopExtract() : LoopPass(ID) {}
  unsigned NumLoops;

  virtual bool runOnLoop(Loop *L, LPPassManager &LPM);

  virtual void getAnalysisUsage(AnalysisUsage &AU) const {
    AU.addRequiredID(BreakCriticalEdgesID);
    AU.addRequiredID(LoopSimplifyID);
    AU.addRequired<DominatorTreeWrapperPass>();
    AU.addRequired<LoopInfoWrapperPass>();
  }

  void PrintModule(Function *F);
  void PrintFunction(Function *F, std::string suf);
  BasicBlock *getCaller(Function *F);
  bool toBeExtracted(Loop *L);
  raw_ostream &printStart() { return (PRINTSTREAM << LIBRARYNAME << ": "); }
};
}

char TMLoopExtract::ID = 0;
static RegisterPass<TMLoopExtract>
    X("tm-loop-extract", "Extract marked loops into new functions",
      true, true);

bool TMLoopExtract::runOnLoop(Loop *L, LPPassManager &LPM) {
  // find the loops
  if (IsDae) {
    // the loop has to be marked, but not its parent
    bool isMarked = L->getHeader()->getName().str().find(F_KERNEL_SUBSTR) 
      != string::npos && L->getHeader()->getParent()->getName().str().find(
      F_KERNEL_SUBSTR) == string::npos;
    if (!isMarked) {
      return false;
    }
  } else {
    if (!toBeExtracted(L)) {
      return false;
    }
  }

  PRINTSTREAM << "\n";
  printStart().write_escaped(L->getHeader()->getName()) << "\n";

  // If LoopSimplify form is not available, stay out of trouble.
  if (!L->isLoopSimplifyForm()) {
    return false;
  }

  DominatorTree &DT = getAnalysis<DominatorTreeWrapperPass>().getDomTree();
  bool Changed = false;


  // We must omit landing pads. Landing pads must accompany the invoke
  // instruction. But this would result in a loop in the extracted
  // function. An infinite cycle occurs when it tries to extract that loop as
  // well.
  SmallVector<BasicBlock *, 8> ExitBlocks;
  L->getExitBlocks(ExitBlocks);
  for (unsigned i = 0, e = ExitBlocks.size(); i != e; ++i)
    if (ExitBlocks[i]->isLandingPad()) {
      return false;
    }


  CodeExtractor Extractor(DT, *L);
  Function *nF = Extractor.extractCodeRegion();  
  if (nF != 0) {
    BasicBlock *codeRepl = getCaller(nF);
    nF->addFnAttr(Attribute::AlwaysInline);

    Changed = true;

    LoopInfo *LI = &getAnalysis<LoopInfoWrapperPass>().getLoopInfo();


    //In case of imbricated loop (?)
    if (L->getParentLoop()) {
      L->getParentLoop()->addBasicBlockToLoop(codeRepl, *LI);
    }

    // After extraction, the loop is replaced by a function call, so
    // we shouldn't try to run any more loop passes on it.
    LI->markAsRemoved(L);
  }

  printStart().write_escaped(L->getHeader()->getParent()->getName().str())<<"\n";

  printStart() << "Extracted \n";

  return Changed;
}


bool TMLoopExtract::toBeExtracted(Loop *L) {
  bool isMarked =
      L->getHeader()->getName().str().find(F_KERNEL_SUBSTR) != string::npos;
  bool isOriginalLoop =
      L->getHeader()->getName().str().find(PROLOGUE_SUBSTR) == string::npos;
  bool functionNotYetExtracted =
      L->getHeader()->getParent()->getName().str().find(F_KERNEL_SUBSTR) ==
      string::npos;

  if (!isMarked || !isOriginalLoop || !functionNotYetExtracted) {
    return false;
  }
  return true;
}

BasicBlock *TMLoopExtract::getCaller(Function *F) {
  for (Value::user_iterator I = F->user_begin(), E = F->user_end(); I != E;
       ++I) {
    if (isa<CallInst>(*I) || isa<InvokeInst>(*I)) {
      Instruction *User = dyn_cast<Instruction>(*I);
      return User->getParent();
    }
  }
  return 0;
}
