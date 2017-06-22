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
#include "llvm/IR/InstrTypes.h"
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
					map<Value *, pair< set<Value*>, list<Instruction *>>> toKeepFun;
					set <Instruction *> StayLoad;
					list <Instruction *> refined;
					map<Instruction *, map<Value *, Value *>> CallToArgs;
					getFunArg(BB, toKeepFun, StayLoad, CallToArgs);
					int nbInst = refine(toKeepFun, StayLoad, refined, CallToArgs);
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
	void collectToKeep(BasicBlock * BB, 
					   pair <set <Value*>, list<Instruction *>> & toKeep,
					   set <Instruction *> & StayLoad,
					   queue<BasicBlock *> & Q,
					   set<BasicBlock *> & visited,
					   map<Instruction *, map<Value *, Value *>> & CallToArgs) {

		for (BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I) {

			if (isa <LoadInst> (I)) {
				set <Instruction *> Deps;
				if (followDeps(&(*I), Deps, AA, true, true, true)) {
					bool insert = true;
					for (Instruction * Inst: Deps)
						if (isa<AllocaInst>(Inst))
							insert=false;

					if (insert) {
						Function::iterator fI = BB->getParent()->begin();
						// check the dependencies in the former basic blocks
						// to have them in a topological order
						do {
							for (BasicBlock::iterator bI = fI->begin(), bE=fI->end(); bI!=bE; ++bI) {
								if (Deps.find(&(*bI)) != Deps.end() 
									&& toKeep.first.find(&(*bI)) == toKeep.first.end()) {
									// if the instruction is in the dependencies and is not
									// already kept (avoid doubles in toKeep.second)
									toKeep.second.push_back(&(*bI));
									toKeep.first.insert(&(*bI));
									if (isa<LoadInst> (&(*bI))) {
										// This load is in the dependencies of another load, keep it
										StayLoad.insert(&(*bI));
									}
								}
							}
						} while( &(*(fI++)) != BB);
						toKeep.second.push_back(&(*I));
					}
				}
			}

			if (isa <CallInst> (I) && !cast<CallInst> (I)->isInlineAsm() && !(cast<CallInst> (I)->getCalledFunction()->isDeclaration())) {
				CallInst * cI = cast<CallInst> (I);

				//get here the correspondance arg-val
				if (visited.find(&cI->getCalledFunction()->getEntryBlock()) == visited.end()) {
					int i = 0;
					Instruction * marker = cI->clone();
					toKeep.second.push_back(marker);
					CallToArgs[marker] = map <Value *, Value *> ();
					// Use it to signal a call with the following arguments
					// CallToArgs[marker]: value -> argument that takes the value
					for (CallInst::op_iterator bC = cI->arg_begin(),
								eC = cI->arg_end();bC != eC; ++bC) {
						if (toKeep.first.find(*bC)!=toKeep.first.end() && 
						(*bC)->getType()-> isPointerTy()) {
							CallToArgs[marker][*bC] = collectInstr(i, *bC, cI->getCalledFunction(), 
									toKeep, StayLoad, visited, CallToArgs);
						}
						++i;
					}
					toKeep.second.push_back(marker);
					// Use it to signal the end of the call
				}
			}
		}
	}


	// Compute by a BFS on the function to collect the instructions that are
	// suitable for prefetching, and keep a map :
	// value -> argument that takes this value
	Value * collectInstr(int i,
					  Value * Val,
					  Function * F, 
					  pair <set <Value*>, list<Instruction *>> & toKeep,
					  set <Instruction *> & StayLoad,
					  set<BasicBlock *> visited,
					  map<Instruction *, map<Value *, Value *>> & CallToArgs) {
		// visited should not be modified as it is local to the function call -> we want to prefetch two times
		// the same function if there are two calls with different
		// arguments
		int target = 0;
		Value * ret = nullptr;
		for (ilist_iterator<Argument> b = F->getArgumentList().begin(),
						    e = F->getArgumentList().end();b != e; ++b) {
			if (target == i) {
				toKeep.first.insert(&(*b));
				ret = &(*b);
				break;
			}
			++target;
		}
		queue<BasicBlock *> Q;
		Q.push(&F->getEntryBlock());

		while (!Q.empty()) {
			BasicBlock * current = Q.front();
			Q.pop();

			collectToKeep(current, toKeep, StayLoad, Q, visited, CallToArgs);


			visited.insert(current);

			for (succ_iterator SI = succ_begin(current), E = succ_end(current);
					 SI != E; ++SI) {
				if (visited.find(*SI)==visited.end()) {
					Q.push(*SI);
					visited.insert(*SI);
				}
			}
		}
		return ret;
	}



	// Put the values that are loaded and their dependencies in
	// toKeepFun
	void getAccessPhase(BasicBlock * BB,
				  set<Value *> declaredVal, 
				  map<Value*, pair< set<Value*>, list<Instruction *>>> & toKeepFun,
				  set <Instruction *> & StayLoad,
				  map<Instruction *, map<Value *, Value *>> & CallToArgs) {
		bool found = false;
		for (BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I) {
			if(isa<CallInst> (I) && ! cast<CallInst> (I) 
					->getCalledFunction()->isDeclaration()) { 
				CallInst * cI = cast<CallInst> (I);
				int i = 0;
				for (CallInst::op_iterator b = cI->arg_begin(),
								e = cI->arg_end();b != e; ++b) {
					if (declaredVal.find(*b)==declaredVal.end() && 
						(*b)->getType()-> isPointerTy()) {
						set<BasicBlock *> visited;
						collectInstr(i, *b, cI->getCalledFunction(), toKeepFun[*b], StayLoad, visited, CallToArgs);
					}
					++i;
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
				   set <Instruction *> & StayLoad,
				   map<Instruction *, map<Value *, Value *>> & CallToArgs) {

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
						getAccessPhase(*SI, declaredVal, toKeepFun, StayLoad, CallToArgs);

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

	// Create several copies of the instruction to handle all possible PHINode
	// affectation of variables one the first execution
	int createPrefInstr(int depth,
						list <Value *> & Args,
						Instruction * Instr, 
						map <Value *, set<Value *>> & oldToPrefetch,
						list<Instruction *> & refined,
						map<list<Value *>, Value *> & seenGEP,
						map<list<Value *>, Value *> & seenCast) {
		if (depth == Instr->getNumOperands()) {
			if (isa<GetElementPtrInst> (Instr)) {
				if (seenGEP.find(Args) != seenGEP.end()) {
					oldToPrefetch[Instr]=oldToPrefetch[seenGEP[Args]];
					return 0;
				}

			} else if (isa<CastInst> (Instr)) {
				if (seenCast.find(Args) != seenCast.end()) {
					oldToPrefetch[Instr]=oldToPrefetch[seenCast[Args]];
					return 0;
				}
			}
			Instruction * nInst = Instr-> clone();
			int i = 0;
			for (Value * Val : Args) {
				nInst->setOperand(i, Val);
				++i;
			}
			oldToPrefetch[Instr].insert(nInst);
			refined.push_back(nInst);

			if (isa<GetElementPtrInst> (Instr)) {
				seenGEP[Args]=Instr;

			} else if (isa<CastInst> (Instr)) {
				seenCast[Args]=Instr;
			}

			return 1;
		} else {
			int ret = 0;
			Value * op = Instr->getOperand(depth);
			if ( (isa<Instruction> (op) || isa<Argument> (op))
				&& ! isa<GlobalValue> (op)) {
				for (Value * Val: oldToPrefetch[op]) {
					Args.push_back(Val);
					ret = ret + createPrefInstr(depth + 1, Args, Instr, oldToPrefetch, refined, seenGEP, seenCast);
					Args.pop_back();
				}
			} else {
				Args.push_back(op);
				ret = createPrefInstr(depth + 1, Args, Instr, oldToPrefetch, refined, seenGEP, seenCast);
				Args.pop_back();
			}

			return ret;
		}
	}

	// remove the instruction present twice, clone the others
	// and replace the old values by its new one
	int refine(map<Value*, pair<set <Value*>, list<Instruction *>>> & toKeepFun,
		set <Instruction *> & StayLoad,
		list<Instruction *> & refined,
		map<Instruction *, map<Value *, Value *>> CallToArgs) {
		map<list<Value *>, Value *> seenGEP;
		map<list<Value *>, Value *> seenCast;
		map<Value *, Value *> seenLoad;
		set<Instruction *> seen;
		int ret = 0;
		map <Value *, set<Value *>> oldToPrefetch;


		//init oldToPrefetch with the arguments
		for (auto& elmt: toKeepFun)
			for (auto& elmt2: elmt.second.first) {
				oldToPrefetch[elmt2] = set<Value *> ();
				oldToPrefetch[elmt2].insert(elmt.first);
			}


		for (auto& elmt: toKeepFun) {
			if (!elmt.second.first.empty()) {
				//if there is something to prefetch
				stack<pair<Instruction *, set<Instruction *>>> Sfun;
				for (auto& elmt2: elmt.second.second) {
					//for all instructions that can be prefetched
					if (seen.find(elmt2) != seen.end() 
						&& CallToArgs.find(elmt2) == CallToArgs.end()) {
						continue;
					}
					seen.insert(elmt2);


					if (isa<PHINode> (elmt2)) {
						//push all possible values in oldToPrefetch
						oldToPrefetch[elmt2] = set <Value *> ();
						for (unsigned i = 0; i<elmt2->getNumOperands(); ++i) {
							Value * op = elmt2->getOperand(i);
							if (oldToPrefetch.find(op) == oldToPrefetch.end()) {
								oldToPrefetch[elmt2].insert(op);
							}
						}
					} else if (isa<LoadInst> (elmt2)) {
						if (seenLoad.find(elmt2->getOperand(0)) == seenLoad.end()) {
							oldToPrefetch[elmt2] = set<Value *> ();
							Instruction * nInst;
							if (! isa<GlobalValue> (elmt2->getOperand(0))) {
								for (Value * Val: oldToPrefetch[elmt2->getOperand(0)]) {
									nInst = elmt2->clone();
									nInst -> setOperand(0, Val);
									oldToPrefetch[elmt2].insert(nInst);
									refined.push_back(nInst);
									++ret;
									if (StayLoad.find(elmt2) != StayLoad.end()) {
										StayLoad.insert(nInst);
									}
								}
							} else { // Global value, no need to duplicate
								nInst = elmt2->clone();
								oldToPrefetch[elmt2].insert(nInst);
								refined.push_back(nInst);
								++ret;
								if (StayLoad.find(elmt2) != StayLoad.end()) {
									StayLoad.insert(nInst);
								}
							}
							seenLoad[elmt2->getOperand(0)] = nInst;
						} else {
							oldToPrefetch[elmt2]=oldToPrefetch[seenLoad[elmt2->getOperand(0)]];
						}

					} else if (isa<CallInst> (elmt2) && ! elmt2->getParent()) {
						// it is a marker of a call
						if (!Sfun.empty() && Sfun.top().first == elmt2) {
							// this is the end: retore only the previously seen instruction
							// to handle multiple calls to the same function
							seen = Sfun.top().second;
							Sfun.pop();
							delete elmt2;
						} else {
							Sfun.push(make_pair(elmt2, seen));
							//update the oldToPref accordingly to CallToArg[elmt2]
							for (auto Arg: CallToArgs[elmt2]) {
								oldToPrefetch[Arg.second].clear();
								for (Value * possForArg: oldToPrefetch[Arg.first])
									oldToPrefetch[Arg.second].insert(possForArg);
							}
						}
					} else {
						oldToPrefetch[elmt2] = set<Value *> ();
						list <Value *> help;
						ret = ret + createPrefInstr(0, help , elmt2, oldToPrefetch, refined, seenGEP, seenCast);
					}
				}
			}
		}

		return ret;
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



	raw_ostream &printStart() { return (PRINTSTREAM << LIBRARYNAME << ": "); }
};
}


char TMArgPrefetcher::ID = 0;
static RegisterPass<TMArgPrefetcher> X("tm-prefetch-args", "Prefectch All loads concerning arguments of called functions inside TM section", false, false);