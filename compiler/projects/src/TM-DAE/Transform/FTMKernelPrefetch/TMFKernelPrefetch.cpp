//===- TMFKernelPrefetch.cpp - DAE with Multiversioning ---------------------===//
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
#include <map>
#include <queue>
#include <set>
#include <stack>
#include <string>

#include "llvm/Transforms/Utils/Cloning.h"

#include "Util/Annotation/MetadataInfo.h"
#include "llvm/IR/IRBuilder.h"

#include "llvm/Analysis/CFG.h"

//#include "../../Utils/SkelUtils/CallingDAE.cpp"

#define LIBRARYNAME "TMFKernelPrefetch"
#define PRINTSTREAM errs() // raw_ostream

#define F_KERNEL_SUBSTR "__kernel__"
#define CLONE_SUFFIX "_clone"

using namespace llvm;
using namespace std;
using namespace util;


namespace {
struct TMFKernelPrefetch : public ModulePass {
		static char ID;
		TMFKernelPrefetch() : ModulePass (ID) {}

public:
	virtual void getAnalysisUsage(AnalysisUsage &AU) const {
		AU.addRequired<AAResultsWrapperPass>();
		AU.addRequired<LoopInfoWrapperPass>();
		AU.addRequired<AssumptionCacheTracker>();
		AU.addRequired<TargetLibraryInfoWrapperPass>();
	}


	virtual bool runOnModule(Module &M) {
		bool change = false;
		for (Module::iterator fI = M.begin(), fE = M.end(); fI != fE; ++fI) {
			if (isFKernel(*fI)) {
				PRINTSTREAM << "kernel:\n";
				printStart() << fI->getName() << "\n";
			}
		}
		return change;
	}

	// Returns true iff F is an F_kernel function.
	bool isFKernel(Function &F) {
		return F.getName().str().find(F_KERNEL_SUBSTR) != string::npos &&
		F.getName().str().find(CLONE_SUFFIX) == string::npos;
	}

	raw_ostream &printStart() { return (PRINTSTREAM << LIBRARYNAME << ": "); }
};
}

char TMFKernelPrefetch::ID = 0;
static RegisterPass<TMFKernelPrefetch> X("tm-f-kernel-prefetch", "F_kernel prefetch pass for transactional memory", false, false);