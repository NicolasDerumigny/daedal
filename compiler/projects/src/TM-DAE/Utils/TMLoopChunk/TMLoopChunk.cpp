//===- TMLoopChunk.cpp - Transforms a loop into a doubly nested loop---------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
/// \file TMLoopChunk.cpp
///
/// \brief Only print the region of interest
///
/// \copyright Eta Scale AB. Licensed under the Eta Scale Open Source License. See
/// the LICENSE file for details.
//===----------------------------------------------------------------------===//
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/IR/Intrinsics.h"

#include <fstream>
#include <iostream>

#include "../SkelUtils/CFGhacking.cpp"
#include "../SkelUtils/LoopUtils.cpp"
#include "../SkelUtils/Utils.cpp"
#include "Util/Annotation/MetadataInfo.h"

#define LIBRARYNAME "TMLoopChunk"
#define PRINTSTREAM errs() // raw_ostream

#define F_KERNEL_SUBSTR "__kernel__"

using namespace llvm;
using namespace std;


static cl::opt<std::string> BenchName("bench-name",
                                      cl::desc("The benchmark name"),
                                      cl::value_desc("name"));

namespace {
struct TMLoopChunk : public LoopPass {

  static char ID;
  TMLoopChunk() : LoopPass(ID) {}

  virtual void getAnalysisUsage(AnalysisUsage &AU) const {
    AU.addRequired<LoopInfoWrapperPass>();
    AU.addRequired<DominatorTreeWrapperPass>();
  }

  bool runOnLoop(Loop *L, LPPassManager &) {
    BasicBlock *h = L->getHeader();
    Function *F = h->getParent();
    
    if (L->getHeader()->getName().str().find(F_KERNEL_SUBSTR) != string::npos) { 

      //Do nothing here, as Loop Chunking is currently disabled for trasactionnal memory

    }
    return false;
  }

  raw_ostream &printStart() { return (PRINTSTREAM << LIBRARYNAME << ": "); }
};
}

char TMLoopChunk::ID = 1;
static RegisterPass<TMLoopChunk> X("tm-loop-chunk", "Loop chunking Pass for Transactional Memory", true,
                                  true);
