//===- TMArgsPrefetcher.cpp - DAE with Multiversioning ---------------------===//
//
//					 The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
/// \file TMArgsPrefetcher.cpp
///
/// \brief TM-DAE with Multiversioning
///
/// \copyright Eta Scale AB. Licensed under the Eta Scale Open Source License. See
/// the LICENSE file for details.
//
// This file implement the prefetching of all function arguments that 
// are both pointer and used in a load instruction before a store.
// They are all prefetched right before the begining of the transactional
// section.
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

#define LIBRARYNAME "TMArgPrefetcher"
#define PRINTSTREAM errs() // raw_ostream


using namespace llvm;
using namespace std;
using namespace util;



static cl::opt<bool>
		FollowMay("args-follow-may",
							cl::desc("Require at least MayAlias to follow store in TM sections"));
static cl::opt<bool>
		FollowPartial("args-follow-partial",
									cl::desc("Require at least PartialAlias to follow store in TM sections"));
static cl::opt<bool>
		FollowMust("args-follow-must", cl::desc("Require at MustAlias to follow store in TM sections"));



namespace {
struct TMArgPrefetcher : public ModulePass {
	static char ID; // Pass identification, replacement for typeid
	TMArgPrefetcher() : ModulePass(ID) {}

public:
	virtual void getAnalysisUsage(AnalysisUsage &AU) const {
		AU.addRequired<AAResultsWrapperPass>();
		AU.addRequired<TargetTransformInfoWrapperPass>();
		AU.addRequired<AssumptionCacheTracker>();
		AU.addRequired<TargetLibraryInfoWrapperPass>();
	}


	bool runOnModule(Module &M) {
		bool change = false;
		for (Module::iterator fI = M.begin(), fE = M.end(); fI != fE; ++fI) {
			for (Function::iterator FI = fI->begin(), eFI = fI->end(); FI != eFI; ++FI) {
				if (isBeginTM(&(*FI))) {
					BasicAAResult BAR(createLegacyPMBasicAAResult(*this, *fI));

					// Construct our own AA results for this function. We do this manually to
					// work around the limitations of the legacy pass manager.
					AAResults AAR(createLegacyPMAAResults(*this, *fI, BAR));
					AA = &AAR;


					BasicBlock * BB = &(*FI);
					// prefetch arguments of the called functions
					map<Value*, pair< set<Value*>, list<Instruction *>>> toKeepFun;
					set <Instruction *> StayLoad;
					list<Instruction *> refined;
					getFunArg(BB, toKeepFun, StayLoad);
					int nbInst = refine(toKeepFun, StayLoad, refined);
					printStart()<<fI->getName()<<": Instructions for calls: "<< nbInst<<"\n";

					change |= toKeepFun.empty();
					prefetchArgs(BB, refined, StayLoad);
/*					BB-> print(errs());
					errs()<<"\n";*/
				}
			}
		}
		return change;
	}

protected:
	AliasAnalysis *AA;


	// Collect the instructions that has to be kept in the access
	// phase. Store also the loads that cannot be prefetched
	void collectToKeep(set <Value *> & Val,
					   BasicBlock * BB, 
					   list<Instruction *> & toKeep,
					   set <Instruction *> & StayLoad) {

		for (BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I) {

			if (isa<LoadInst> (I)) {
				set <Instruction *> Deps;
				if (followDeps(&(*I), Deps, AA, true, true, true)) {
					Function::iterator fI = BB->getParent()->begin();
					// check the dependencies in the former basic blocks
					// to have them in a topological order
					do {
						for (BasicBlock::iterator bI = fI->begin(), bE=fI->end(); bI!=bE; ++bI) {
							if (Deps.find(&(*bI)) != Deps.end()) {
								//TODO : check if it uses only values in Val or constants
								toKeep.push_back(&(*bI));
								Val.insert(&(*bI));
								if (isa<LoadInst> (&(*bI))) {
									//This load is in the dependencies of another load, keep it
									StayLoad.insert(&(*bI));
								}
							}
						}
					} while( &(*(fI++)) != BB);
					toKeep.push_back(&(*I));
				}
			}
		}
	}


	// Return true if there is a load instruction that uses the i-th
	// argument, computed by a BFS on the function
	void collectInstr(int i, Function * F, 
					  pair <set <Value*>, list<Instruction *>> & toKeep,
					  set <Instruction *> & StayLoad) {
		int target = 0;
		for (ilist_iterator<Argument> b = F->getArgumentList().begin(),
						    e = F->getArgumentList().end();b != e; ++b) {
			if (target == i) {
				toKeep.first.insert(&(*b));
				break;
			}
			++target;
		}

		set<BasicBlock *> visited;
		queue<BasicBlock *> Q;
		visited.insert(&F->getEntryBlock());
		Q.push(&F->getEntryBlock());

		while (!Q.empty()) {
			BasicBlock * current = Q.front();
			Q.pop();

			collectToKeep(toKeep.first, current, toKeep.second, StayLoad);


			for (succ_iterator SI = succ_begin(current), E = succ_end(current);
					 SI != E; ++SI) {
				if (visited.find(*SI)==visited.end()) {
					Q.push(*SI);
					visited.insert(*SI);
				}
			}
		}
	}



	// simple BFS over the basic block to find all the avalaible 
	// instructions to prefetch
	// toKeepFun: Value -> ({Value in following instructions}, inst to prefetch)
	void getFunArg(BasicBlock *	BB,
				   map<Value*, pair< set<Value*>,
				   list<Instruction *>>> & toKeepFun,
				   set <Instruction *> & StayLoad) {
		vector<BasicBlock *> toVisit;
		set<BasicBlock *> visited;
		set<Value *> declaredVal;
		visited.insert(BB);
		toVisit.push_back(BB);
		addDeclaredValues(BB, declaredVal, toKeepFun);

		while(toVisit.size() != 0) {
			vector<BasicBlock *> ntoVisit;

			for(BasicBlock * aBB : toVisit) {
				for (succ_iterator SI = succ_begin(aBB), E = succ_end(aBB); SI != E; ++SI) {
					if (visited.find(*SI) == visited.end() && !isEndTMOrLock(*SI)) {
						addDeclaredValues(*SI, declaredVal, toKeepFun);
						getFunctionArg(*SI, declaredVal, toKeepFun, StayLoad);

						ntoVisit.push_back(*SI);
					}
				}
				visited.insert(aBB);
			}


			toVisit.clear();
			for(BasicBlock * next: ntoVisit)
				toVisit.push_back(next);
		}
	}

	// Put the values that are used by function calls in
	// toKeepFun
	bool getFunctionArg(BasicBlock * BB, 
						set<Value *> declaredVal, 
						map<Value*, pair< set<Value*>, list<Instruction *>>> & toKeepFun,
						set <Instruction *> & StayLoad) {
		bool found = false;
		for (BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I) {
			if(isa<CallInst> (I)){
				CallInst * cI = cast<CallInst> (I);
				int i = 0;
				for (CallInst::op_iterator b = cI->arg_begin(),
												e = cI->arg_end();b != e; ++b){
					if (declaredVal.find(*b)==declaredVal.end() && 
						(*b)->getType()-> isPointerTy() 
						&& !cI->getCalledFunction()->isDeclaration()) {
						collectInstr(i, cI->getCalledFunction(), toKeepFun[*b], StayLoad);
					}
					++i;
				 }
				 found = i!=0;
				 if (found)
				 	printStart()<<"Function Called: " <<cI->getCalledFunction()->getName()<<"\n";
			}
		}
		return found;
	}



	//insert prefetches before the TM_BEGIN
	void prefetchArgs(BasicBlock* BB,
		list<Instruction *> & refined,
		set <Instruction *> StayLoad) {
		refined.reverse();
		// the last instruction should be insered first
		for (auto & current : refined) {
			if (isa<LoadInst>(current) && StayLoad.find(current) == StayLoad.end()) {

				Value * ptr = cast<LoadInst> (current) -> getPointerOperand ();
				// Make sure type is correct
				unsigned PtrAS = ptr->getType()->getPointerAddressSpace();
				Type *I8Ptr = Type::getInt8PtrTy(BB->getContext(), PtrAS);
				CastInst *Cast =
					CastInst::CreatePointerCast(ptr, I8Ptr, "", BB->getFirstNonPHI());

				// Insert prefetch
				IRBuilder<> Builder(BB, ++BB->begin());
				//the cast is prefetched first, then the prefetch
				Module *M = BB->getParent()->getParent();
				Type *I32 = Type::getInt32Ty(BB->getContext());
				Value *PrefFun = Intrinsic::getDeclaration(M, Intrinsic::prefetch);
				CallInst *Prefetch = Builder.CreateCall(
						PrefFun, {Cast, ConstantInt::get(I32, 0),								  // read
											ConstantInt::get(I32, 3), ConstantInt::get(I32, 1)}); // data

				//do not insert the load, we already have a prefetch
				delete current; 
			} else {
				current->insertBefore(BB->getFirstNonPHI());
			}
		}
	}

	// remove the instruction present twice, clone the others
	// and replace the old values by its new one
	int refine(map<Value*, pair<set <Value*>, list<Instruction *>>> & toKeepFun,
		set <Instruction *> & StayLoad,
		list<Instruction *> & refined) {
		set<Instruction *> seen;
		int ret = 0;
		map <Value *, Value *> oldToPrefetch;
		//init oldToPrefetch with the arguments
		for (auto& elmt: toKeepFun)
			for (auto& elmt2: elmt.second.first)
				oldToPrefetch[elmt2] = elmt.first;


		for (auto& elmt: toKeepFun) {
			if (!elmt.second.first.empty()) {
				//if there is something to prefetch
				for (auto& elmt2: elmt.second.second) {
					//for all instructions that can be prefetched
					if (seen.find(elmt2) != seen.end()) {
						continue;
					}
					seen.insert(elmt2);


					if (isa<GetElementPtrInst> (elmt2)) {
						GetElementPtrInst * Inst = cast<GetElementPtrInst> (elmt2);

						Instruction * nInst = elmt2->clone();
						for (unsigned i = 0; i<=Inst->getNumIndices(); ++i) {
							Value * op = elmt2->getOperand(i);
							if ( (isa<Instruction> (op) || isa<Argument> (op))
								&& ! isa<GlobalValue> (elmt2->getOperand(i))) {
								nInst->setOperand(i, oldToPrefetch[op]);
							}
						}
						oldToPrefetch[elmt2]=nInst;
						refined.push_back(nInst);
						++ret;

					} else if (isa<CastInst> (elmt2)) {
						CastInst * Inst = cast <CastInst> (elmt2);


						Instruction * nInst = elmt2->clone();
						if (! isa<GlobalValue> (elmt2->getOperand(0)))
							nInst -> setOperand(0, oldToPrefetch[elmt2->getOperand(0)]);
						oldToPrefetch[elmt2]=nInst;
						refined.push_back(nInst);
						++ret;

					} else if (isa<PHINode> (elmt2)) {
						// TODO: Do not push it, but create branches corresponding to the different
						// possible values 

					} else if (isa<LoadInst> (elmt2)) {
						Instruction * nInst = elmt2->clone();
						if (! isa<GlobalValue> (elmt2->getOperand(0)))
							nInst -> setOperand(0, oldToPrefetch[elmt2->getOperand(0)]);
						oldToPrefetch[elmt2]=nInst;
						refined.push_back(nInst);
						++ret;
						if (StayLoad.find(elmt2) != StayLoad.end()) {
							StayLoad.insert(nInst);
						}
					} else {
						Instruction * nInst = elmt2->clone();
						oldToPrefetch[elmt2]=nInst;
						refined.push_back(nInst);
						++ret;
					}
				}
			}
		}

		return ret;
	}


	raw_ostream &printStart() { return (PRINTSTREAM << LIBRARYNAME << ": "); }
};
}


char TMArgPrefetcher::ID = 0;
static RegisterPass<TMArgPrefetcher> X("tm-prefetch-args", "Prefectch All loads concerning arguments of called functions inside TM section", false, false);