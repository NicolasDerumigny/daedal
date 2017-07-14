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
#define debug(elmt) do{(elmt)->print(errs());errs()<<"\n";}while(0)


using namespace llvm;
using namespace std;
using namespace util;



static cl::opt <bool>
		FollowMay("args-follow-may",
							cl::desc("Require at least MayAlias to follow store in TM sections"));
static cl::opt <bool>
		FollowPartial("args-follow-partial",
									cl::desc("Require at least PartialAlias to follow store in TM sections"));
static cl::opt <bool>
		FollowMust("args-follow-must", cl::desc("Require at MustAlias to follow store in TM sections"));



namespace {
struct TMArgPrefetcher : public ModulePass {
	static char ID; // Pass identification, replacement for typeid
	TMArgPrefetcher() : ModulePass(ID) {}

public:
	virtual void getAnalysisUsage(AnalysisUsage &AU) const {
		AU.addRequired <AAResultsWrapperPass>();
		AU.addRequired <TargetTransformInfoWrapperPass>();
		AU.addRequired <AssumptionCacheTracker>();
		AU.addRequired <TargetLibraryInfoWrapperPass>();
		AU.addRequired <DominatorTreeWrapperPass>();
	}


	bool runOnModule(Module &M) {
		bool change = false;
		PRINTSTREAM<<"\n";
		for (Module::iterator fI = M.begin(), fE = M.end(); fI != fE; ++fI) {
			for (Function::iterator FI = fI->begin(), eFI = fI->end(); FI != eFI; ++FI) {
				if (isBeginTM(&(*FI))) {
					BasicAAResult BAR(createLegacyPMBasicAAResult(*this, *fI));

					// Construct our own AA results for this function. We do this manually to
					// work around the limitations of the legacy pass manager.
					AAResults AAR(createLegacyPMAAResults(*this, *fI, BAR));
					AA = &AAR;
					// Construct a Dominator tree to find the right place 
					// to insert prefetches
					DT = & getAnalysis<DominatorTreeWrapperPass>(*fI).getDomTree();


					BasicBlock * BB = &*FI;
					// prefetch arguments of the called functions
					list <Instruction *> toKeep;
					set <Instruction *> StayLoad;
					list <Instruction *> refined;
					map <Instruction *, map <Value *, Value *>> CallToArgs;

					getFunArg(BB, toKeep, StayLoad, CallToArgs);
					unsigned nbInst = refine(toKeep, StayLoad, refined, CallToArgs);

					change |= toKeep.empty();
					prefetchArgs(BB, refined, StayLoad);
					/*errs()<<"Access Phase:";
					BB-> print(errs());
					errs()<<"End of Access Phase\n\n\n";*/

					printStart()<<fI->getName()<<": Instructions for calls: "<<nbInst<<"\n";
				}
			}
		}
		//M.dump();
		return change;
	}

protected:
	AliasAnalysis * AA;
	DominatorTree * DT;


	// Inserts the dependencies Deps into toKeep
	void insertDeps(
		BasicBlock * BB, 
		set <Instruction *> Deps, 
		list <Instruction *> & toKeep,
		set <Instruction *> & setKeep,
		set <Instruction *> & StayLoad,
		Instruction * Instr = nullptr) {
		
		Function::iterator fI = BB->getParent()->begin();
		// check the dependencies in the former basic blocks
		// to have them in a topological order
		do {
			for (BasicBlock::iterator bI = fI->begin(), bE=fI->end(); bI!=bE; ++bI) {
				if (Deps.find(&(*bI)) != Deps.end()) {
					if (setKeep.insert(&(*bI)).second) {
						// if the instruction is in the dependencies and is not
						// already kept (avoid doubles in toKeep)
						toKeep.push_back(&(*bI));
					}
					if (isa <LoadInst> (&(*bI))) {
						// This load is in the dependencies of another load, keep it
						StayLoad.insert(&(*bI));
					}
				}
			}
		} while( &(*(fI++)) != BB);
		if (Instr != nullptr) {
			if (setKeep.insert(Instr).second) {
				toKeep.push_back(Instr);
			}
		}
	}


	bool addInstr(
		set <unsigned> ArgsCanDep,
		set <unsigned> & used,
		Instruction * I,
		BasicBlock * BB,
		list <Instruction *> & toKeep,
		set <Instruction *> & setKeep,
		set <Instruction *> & StayLoad) {
		
		set <Instruction *> Deps;
		if (followDeps(I, Deps, AA, true, true, true)) {
			for (Instruction * Inst: Deps) {
				if (isa <AllocaInst>(Inst))
					return false;
				if (isa <LoadInst> (Inst))
					return false;

				for (Instruction::op_iterator b=Inst->op_begin(), e=Inst->op_end(); b!=e; ++b) {
					Argument * Arg;
					if (Arg = dyn_cast <Argument> (*b)) {
						if (ArgsCanDep.find(Arg->getArgNo())
							!= ArgsCanDep.end()) {
							used.insert(Arg->getArgNo());
						} else {
							return false;
						}
					}
				}
			}

			insertDeps(BB, Deps, toKeep, setKeep, StayLoad, I);
			return true;
		} else {
			return false;
		}
	}

	bool addZlvlInstr(
		Instruction * I,
		BasicBlock * BB,
		list <Instruction *> & toKeep,
		set <Instruction *> & setKeep,
		set <Instruction *> & StayLoad,
		set <Instruction *> InsideTM) {

		set <Instruction *> Deps;
		if (followDepsZLvl(InsideTM, I, Deps, AA, true, true, true)) {
			for (Instruction * Inst: Deps) {
				if (isa <AllocaInst>(Inst))
					return false;
				if (isa <LoadInst> (Inst))
					return false;
			}
			
			insertDeps(BB, Deps, toKeep, setKeep, StayLoad, I);

			return true;
		}
		return false;
	}

	// Returns a reference to the ith argument
	Value * getArgVal(
		unsigned i,
		Function * F) {

		unsigned target = 0;
		for (ilist_iterator <Argument> b = F->getArgumentList().begin(),
						e = F->getArgumentList().end();b != e; ++b) {
			if (target == i) {
				return &(*b);
			}
			++target;
		}
		return nullptr;
	}


	// Collects the instructions that has to be kept in the access
	// phase. Store also the loads that cannot be prefetched
	void collectToKeep(
		set <unsigned> ArgsCanDep,
		set <unsigned> & usedArgs,
		BasicBlock * BB, 
		list <Instruction *> & toKeep,
		set <Instruction *> & setKeep,
		set <Instruction *> & StayLoad,
		set <BasicBlock *> & visited,
		map <Instruction *, map <Value *, Value *>> & CallToArgs) {

		for (BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I) {


			/*if (isa <ICmpInst> (I)) {
				// If we compare directly a pointer, it cannot be use later
				// as it may be invalid
				for (Instruction::op_iterator b=I->op_begin(),
									e=I->op_end(); b!=e; ++b) {
					set <Instruction *> Deps;
					if (followDeps(cast <Instruction> (*b), Deps, AA, true, true, true)) {
						for (auto Inst : Deps) {
							for (Instruction::op_iterator b2=Inst->op_begin(),
								e2=Inst->op_end(); b2!=e2; ++b2) {
								Argument * Arg;
								if ((Arg = dyn_cast <Argument> (*b2)) &&
									ArgsCanDep.find(Arg->getArgNo()) != ArgsCanDep.end()) {
									ArgsCanDep.erase(Arg->getArgNo());
								}
							}
						}
					}
				}
			}*/

			if (isa <LoadInst> (I)) {
				set <unsigned> mayUsed;
				if (addInstr(ArgsCanDep, mayUsed, &(*I), BB, toKeep, setKeep, StayLoad))
					usedArgs.insert(mayUsed.begin(), mayUsed.end());
			}

			if (isa <CallInst> (I) && !cast <CallInst> (I)->isInlineAsm()
				&& (dyn_cast <GlobalValue> (cast <CallInst> (I)->getCalledFunction()))) {
				// It should be neither a ASM call nor an local pointer, 
				// and comply with call bitcast

				CallInst * cI = cast <CallInst> (I);
				Function * Fun = cI->getCalledFunction();

				if (!Fun->isDeclaration() && visited.find(&Fun->getEntryBlock()) 
												== visited.end()) {
					// Visit the function and 
					// get here the correspondance arg-val
					unsigned i = 0;
					Instruction * marker = cI->clone();
					CallToArgs[marker] = map <Value *, Value *> ();	
					// Use it to signal a call with the following arguments
					// CallToArgs[marker]: value -> argument that takes the value

					list <Instruction *> testToKeep;
					set <BasicBlock *> visited;
					set <unsigned> ArgsCanDepSubCall;
					// The set of args that can be prefetched
					map <unsigned, set <unsigned>> argToUsedArg;
					map <unsigned, set<Instruction *>> ArgsToDeps;
					// The dependendies of each arg

					for (CallInst::op_iterator b = cI->arg_begin(),
									e = cI->arg_end();b != e; ++b) {
						bool insert = isPrefetchable(*b, ArgsCanDep);
						set <Instruction *> Deps;
						argToUsedArg[i] = set <unsigned> ();

						if (insert && (isa<Argument> (*b) || 
							(followDeps(cast <Instruction> (*b),
												 Deps, AA, true, true, true)))) {

							// if the value is an instruction, compute its dependencies
							// else, it is an argument so it may be used depending
							// on its deps
							if (isa <Instruction> (*b)) {
								Deps.insert(cast <Instruction> (*b));
							} 
							if (isa <Argument> (*b)) {
								argToUsedArg[i].insert(dyn_cast <Argument> (b)->getArgNo());
							}
							for (Instruction * Inst: Deps) {
								if (isa <AllocaInst>(Inst))
									insert=false;
								if (isa <LoadInst> (Inst))
									insert=false;
								for (Instruction::op_iterator b=Inst->op_begin(),
													e=Inst->op_end(); b!=e; ++b) {
									Argument * Arg;
									if (Arg = dyn_cast <Argument> (*b)) {
										if (ArgsCanDep.find(Arg->getArgNo())
														!= ArgsCanDep.end()) {
											argToUsedArg[i].insert(Arg->getArgNo());
										} else {
											insert=false;
										}
									}
								}
							}
							if (insert) {
								ArgsToDeps[i]=Deps;
								ArgsCanDepSubCall.insert(i);
							}
						}

						if (isa <ConstantExpr> (*b)) {
							ArgsCanDepSubCall.insert(i);
							ArgsToDeps[i]=set<Instruction *> ();
						}

						CallToArgs[marker][*b] = getArgVal(i, Fun);
						++i;
					}

					set <unsigned> usedArgsSubCall;

					collectInstr(ArgsCanDepSubCall, usedArgsSubCall, Fun, 
						testToKeep, StayLoad, visited, CallToArgs);

					for (auto ArgToKeep: usedArgsSubCall) {
						insertDeps(BB, ArgsToDeps[ArgToKeep], toKeep,
						 setKeep, StayLoad);
						usedArgs.insert(argToUsedArg[ArgToKeep].begin(), 
							argToUsedArg[ArgToKeep].end());
					}

					toKeep.push_back(marker);
					// Add the marker after the dependencies so that they are in the right
					// scope

					// merge toKeep and testToKeep
					for (auto Inst: testToKeep) {
						toKeep.push_back(Inst);
						setKeep.insert(Inst);
					}
					toKeep.push_back(marker);
					// Use it to signal the end of the call
				} else if (cI->getCalledFunction()->getName() == "llvm.memcpy.p0i8.p0i8.i64") {
					//prefetch the first value of the memcpy instr
					if (isa <Instruction> (cI->getOperand(0))) {
						set <unsigned> mayUsed;
						if (addInstr(ArgsCanDep, mayUsed, cast <Instruction> (cI->getOperand(0)),
											BB, toKeep, setKeep, StayLoad)) {
							usedArgs.insert(mayUsed.begin(),mayUsed.end());
						}
					}
				}
			}
		}
	}


	// Collect by a BFS on the functions the instructions that are
	// suitable for prefetching, and keep a map :
	// value -> argument that takes this value
	void collectInstr(
		set <unsigned> ArgsCanDep,
		set <unsigned> & usedArgs,
		Function * F, 
		list <Instruction *> & toKeep,
		set <Instruction *> & StayLoad,
		set <BasicBlock *> visited,
		map <Instruction *, map <Value *, Value *>> & CallToArgs) {
		
		// visited should not be modified as it is local to the function call 
		// -> we want to prefetch two times the same function
		// if there are two calls with different arguments
		queue <BasicBlock *> Q;
		Q.push(&F->getEntryBlock());

		while (!Q.empty()) {
			BasicBlock * current = Q.front();
			Q.pop();
			set <Instruction *> setKeep;

			collectToKeep(ArgsCanDep, usedArgs, current, toKeep, setKeep, 
				StayLoad, visited, CallToArgs);

			visited.insert(current);

			for (succ_iterator SI = succ_begin(current), E = succ_end(current);
					 SI != E; ++SI) {
				if (visited.find(*SI)==visited.end()) {
					Q.push(*SI);
					visited.insert(*SI);
				}
			}
		}
	}

	// Put the values that are loaded and their dependencies in
	// toKeep
	void getAccessPhase(
		BasicBlock * BB,
		list <Instruction *> & toKeep,
		set <Instruction *> & StayLoad,
		map <Instruction *, map <Value *, Value *>> & CallToArgs,
		set <Instruction *> InsideTM) {
		
		Instruction * Beg = isBeginTM(BB), * End = isEndTMOrLock(BB);
		bool active = (Beg == nullptr);
		set <Instruction *> setKeep;
		
		for (BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I) {
			if (&(*I) == End)
				return;
			if (active) {
				Function * Fun;
				
				if (isa<LoadInst> (I)){
					// Zero-level loads
					addZlvlInstr(&*I, BB, toKeep, setKeep, StayLoad, InsideTM); 

				} else if (isa <CallInst> (I)) {
					// Loads in function calls
					CallInst * cI = cast <CallInst> (I);
					Fun = cI ->getCalledFunction();

					if (auto* CstExpr = dyn_cast<ConstantExpr>(I->getOperand(0))) {
						if (CstExpr->isCast() && isa <Function> (CstExpr->getOperand(0))) {
							Fun = cast<Function> (CstExpr->getOperand(0));
						}
					}

					if (!Fun->isDeclaration()) {
						unsigned i = 0;
						Instruction * marker = cI->clone();
						CallToArgs[marker] = map <Value *, Value *> ();

						list <Instruction *> testToKeep;
						set <BasicBlock *> visited;
						set <unsigned> ArgsCanDep;
						set <unsigned> usedArgs;
						// The set of args that can be prefetched
						map <unsigned, set<Instruction *>> ArgsToDeps;
						// The dependendies of each arg

						for (CallInst::op_iterator b = cI->arg_begin(),
										e = cI->arg_end();b != e; ++b) {
							bool insert = isPrefetchable(*b, ArgsCanDep);
							set <Instruction *> Deps;
						
							if (insert && (isa<Argument> (*b) || 
							(followDepsZLvl(InsideTM, cast <Instruction> (*b),
												 Deps, AA, true, true, true)))) {

								if (isa<Instruction> (*b)) {
									Deps.insert(cast <Instruction> (*b));
								}

								for (Instruction * Inst: Deps) {
									if (isa <AllocaInst>(Inst))
										insert=false;
									if (isa <LoadInst> (Inst))
										insert=false;
								}

								if (insert) {
									ArgsToDeps[i]=Deps;
									ArgsCanDep.insert(i);
								}
							}
							if (isa <ConstantExpr> (*b)) {
								ArgsCanDep.insert(i);
								ArgsToDeps[i]=set<Instruction *> ();
							}

							CallToArgs[marker][*b] = getArgVal(i, Fun);
							++i;
						}

						collectInstr(ArgsCanDep, usedArgs, Fun, 
							testToKeep, StayLoad, visited, CallToArgs);
						

						
						for (auto ArgToKeep: usedArgs) {
							insertDeps(BB, ArgsToDeps[ArgToKeep], 
								toKeep, setKeep, StayLoad);
						}

						toKeep.push_back(marker);


						// merge toKeep and testToKeep
						for (auto Inst: testToKeep) {
							toKeep.push_back(Inst);
							setKeep.insert(Inst);
						}

						toKeep.push_back(marker);
					}
				}
			} else {
				active = (&(*I) == Beg);
			}
		}
	}


	// simple DFS over the basic block to find all the avalaible 
	// instructions to prefetch
	// toKeep: ({Value in following instructions}, inst to prefetch)
	void getFunArg(
		BasicBlock * BB,
		list <Instruction *> & toKeep,
		set <Instruction *> & StayLoad,
		map <Instruction *, map <Value *, Value *>> & CallToArgs) {
		
		queue <BasicBlock *> Q;
		set <BasicBlock *> visited;
		set <Instruction*> InsideTM;
		getInsideTM(BB, InsideTM);
		Q.push(BB);


		while(!Q.empty()) {
			BasicBlock * current = Q.front();
			Q.pop();
			visited.insert(current);
			getAccessPhase(current, toKeep, StayLoad, CallToArgs, InsideTM);

			if (!isEndTMOrLock(current)) {
				for (succ_iterator SI = succ_begin(current), E = succ_end(current); SI != E; ++SI) {
					if (visited.find(*SI) == visited.end()) {
						Q.push(*SI);
					}
				}
			}
		}
	}

	// Create several copies of the instruction to handle all possible PHINode
	// affectation of variables one the first execution
	unsigned createPrefInstr(
		unsigned depth,
		list <Value *> & Args,
		Instruction * Instr, 
		map <Value *, set <Value *>> & oldToPrefetch,
		list <Instruction *> & refined,
		map <list <Value *>, Value *> & seenGEP,
		map <list <Value *>, Value *> & seenCast,
		map <list <Value *>, Value *> & seenAdd,
		map <list <Value *>, Value *> & seenMul) {
		
		if (depth == Instr->getNumOperands()) {
			if (isa <GetElementPtrInst> (Instr)) {
				if (seenGEP.find(Args) != seenGEP.end()) {
					oldToPrefetch[Instr].insert(seenGEP[Args]);
					return 0;
				}
			} else if (isa <CastInst> (Instr)) {
				if (seenCast.find(Args) != seenCast.end()) {
					oldToPrefetch[Instr].insert(seenCast[Args]);
					return 0;
				}
			} else if (Instr->getOpcode() == Instruction::Add) {
				if (seenAdd.find(Args) != seenAdd.end()) {
					oldToPrefetch[Instr].insert(seenAdd[Args]);
					return 0;
				}
			} else if (Instr->getOpcode() == Instruction::Mul) {
				if (seenMul.find(Args) != seenMul.end()) {
					oldToPrefetch[Instr].insert(seenMul[Args]);
					return 0;
				}
			}

			Instruction * nInst = Instr-> clone();
			unsigned i = 0;
			for (Value * Val : Args) {
				nInst->setOperand(i, Val);
				++i;
			}

			oldToPrefetch[Instr].insert(nInst);
			refined.push_back(nInst);

			if (isa <GetElementPtrInst> (Instr)) {
				seenGEP[Args]=nInst;
			} else if (isa <CastInst> (Instr)) {
				seenCast[Args]=nInst;
			} else if (Instr->getOpcode() == Instruction::Add) {
				seenAdd[Args]=nInst;
			} else if (Instr->getOpcode() == Instruction::Mul) {
				seenMul[Args]=nInst;
			}
			return 1;
		} else {
			unsigned ret = 0;
			Value * op = Instr->getOperand(depth);
			if ( (isa <Instruction> (op) || isa <Argument> (op))
				&& !isa <GlobalValue> (op) && !oldToPrefetch[op].empty()) {
				for (Value * Val: oldToPrefetch[op]) {
					Args.push_back(Val);
					ret = ret + createPrefInstr(depth + 1, Args, Instr, oldToPrefetch, refined,
						seenGEP, seenCast, seenAdd, seenMul);
					Args.pop_back();
				}
			} else {
				Args.push_back(op);
				ret = createPrefInstr(depth + 1, Args, Instr, oldToPrefetch, refined,
					seenGEP, seenCast, seenAdd, seenMul);
				Args.pop_back();
			}

			return ret;
		}
	}

	// Remove the instruction present twice, clone the others
	// and replace the old values by its new one
	unsigned refine(
		list <Instruction *> & toKeep,
		set <Instruction *> & StayLoad,
		list <Instruction *> & refined,
		map <Instruction *, map <Value *, Value *>> CallToArgs) {

		map <list <Value *>, Value *> seenGEP;
		map <list <Value *>, Value *> seenCast;
		map <list <Value *>, Value *> seenAdd;
		map <list <Value *>, Value *> seenMul;
		map <Value *, Value *> seenLoad;
		set <Instruction *> seen;
		unsigned ret = 0;
		map <Value *, set <Value *>> oldToPrefetch;

		stack <pair <Instruction *, set <Instruction *>>> Sfun;

		for (auto& elmt2: toKeep) {
			// For all instructions that can be prefetched
			if (seen.find(elmt2) != seen.end()
				&& CallToArgs.find(elmt2) == CallToArgs.end()) {
				// If we have already seen the inst and it is not the 
				// marker of the end of a call
				continue;
			}
			seen.insert(elmt2);


			if (isa <PHINode> (elmt2)) {
				// Push all possible values in oldToPrefetch
				oldToPrefetch[elmt2] = set <Value *> ();
				for (unsigned i = 0; i < elmt2->getNumOperands(); ++i) {
					Value * op = elmt2->getOperand(i);
					if (isa <Constant> (op)) {
						oldToPrefetch[elmt2].insert(op);
					} else if (oldToPrefetch.find(op) != oldToPrefetch.end()) {
						for (Value * Val: oldToPrefetch[op]) {
							oldToPrefetch[elmt2].insert(Val);
						}
						if (oldToPrefetch[op].empty() && Sfun.empty()) {
							// PHINode on Zlvl with dep before the TM
							// section
							oldToPrefetch[elmt2].insert(op);
						}
					}
				}
			} else if (isa <LoadInst> (elmt2)) {
				oldToPrefetch[elmt2] = set <Value *> ();
				if (! isa <GlobalValue> (elmt2->getOperand(0))) {
					for (Value * Val: oldToPrefetch[elmt2->getOperand(0)]) {
						// the loaded has been prefetched before
						if (seenLoad.find(Val) != seenLoad.end()) {
							oldToPrefetch[elmt2].insert(seenLoad[Val]);
							if (StayLoad.find(elmt2) != StayLoad.end()) {
								// If the load is the same than an other load
								// but is needed for the dependencies
								StayLoad.insert(cast <Instruction> (seenLoad[Val]));
							}
							continue;
						}
						Instruction * nInst;
						nInst = elmt2->clone();
						nInst -> setOperand(0, Val);
						refined.push_back(nInst);
						seenLoad[Val] = nInst;
						++ret;
						if (StayLoad.find(elmt2) != StayLoad.end()) {
							StayLoad.insert(nInst);
							oldToPrefetch[elmt2].insert(nInst);
						}
					}
					if (oldToPrefetch[elmt2->getOperand(0)].empty() &&
					 seenLoad.find(elmt2->getOperand(0)) == seenLoad.end()) {
					 	// the operand 0 has never been computed before (zeroLvl load
					 	// without dependency)
						Instruction * nInst;
						nInst = elmt2->clone();
						refined.push_back(nInst);
						seenLoad[elmt2->getOperand(0)]=nInst;
						++ret;
						if (StayLoad.find(elmt2) != StayLoad.end()) {
							StayLoad.insert(nInst);
							oldToPrefetch[elmt2].insert(nInst);
						}
					}
				} else if (seenLoad.find(elmt2->getOperand(0)) == seenLoad.end()) { 
					// Global value, no need to duplicate
					Instruction * nInst;
					nInst = elmt2->clone();
					refined.push_back(nInst);
					++ret;
					seenLoad[elmt2->getOperand(0)] = nInst;
					oldToPrefetch[elmt2].insert(nInst);
					if (StayLoad.find(elmt2) != StayLoad.end()) {
						StayLoad.insert(nInst);
					}
				} else {
					oldToPrefetch[elmt2].insert(seenLoad[elmt2->getOperand(0)]);
				}

			} else if (isa <CallInst> (elmt2) && ! elmt2->getParent()) {
				// It is a marker of a call
				if (!Sfun.empty() && Sfun.top().first == elmt2) {
					// This is the end: restore only the previously seen instruction
					// to handle multiple calls of the same function
					seen = Sfun.top().second;
					Sfun.pop();
					delete elmt2;
				} else {
					Sfun.push(make_pair(elmt2, seen));
					// Update the oldToPref accordingly to CallToArg[elmt2]
					for (auto Arg: CallToArgs[elmt2]) {
						oldToPrefetch[Arg.second].clear();
						if (isa <ConstantExpr> (Arg.first)) {
							// The value is a constant
							oldToPrefetch[Arg.second].insert(Arg.first);
						} else {
							// Regular value
							if (oldToPrefetch[Arg.first].empty()) {
								oldToPrefetch[Arg.second]=set <Value *> ();
								oldToPrefetch[Arg.second].insert(Arg.first);
							} else {
								for (Value * ValForArg: oldToPrefetch[Arg.first]) {
									oldToPrefetch[Arg.second].insert(ValForArg);
								}
							}
						}
					}
				}
			} else if (isa <CallInst> (elmt2) && !cast <CallInst> (elmt2)->isInlineAsm() 
				&& cast <CallInst> (elmt2)->getCalledFunction()
				->getName() == "llvm.memcpy.p0i8.p0i8.i64") {
				// There is a memcpy
				oldToPrefetch[elmt2] = set <Value *> ();
				for (Value * Val: oldToPrefetch[elmt2->getOperand(0)]) {
					ret++;
					Instruction * nInst = elmt2->clone();
					nInst->setOperand(0, Val);
					refined.push_back(nInst);
				}
			} else {
				oldToPrefetch[elmt2] = set <Value *> ();
				list <Value *> help;
				ret = ret + createPrefInstr(0, help , elmt2, oldToPrefetch, refined,
					seenGEP, seenCast, seenAdd, seenMul);
			}
		}

		return ret;
	}



	//insert prefetches before the TM_BEGIN
	void prefetchArgs(
		BasicBlock* BB,
		list <Instruction *> & refined,
		set <Instruction *> StayLoad) {
		
		Instruction * Beg = getInsertPoint(isBeginTM(BB), DT);

		for (auto & current : refined) {
			if (isa <LoadInst>(current) && StayLoad.find(current) == StayLoad.end()) {

				Value * ptr = cast <LoadInst> (current) -> getPointerOperand ();
				// Make sure type is correct
				unsigned PtrAS = ptr->getType()->getPointerAddressSpace();
				Type *I8Ptr = Type::getInt8PtrTy(BB->getContext(), PtrAS);
				CastInst *Cast =
					CastInst::CreatePointerCast(ptr, I8Ptr, "", Beg);

				// Insert prefetch
				IRBuilder <> Builder(Beg);
				//the cast is prefetched first, then the prefetch
				Module *M = BB->getParent()->getParent();
				Type *I32 = Type::getInt32Ty(BB->getContext());
				Value *PrefFun = Intrinsic::getDeclaration(M, Intrinsic::prefetch);
				CallInst *Prefetch = Builder.CreateCall(
						PrefFun, {Cast, ConstantInt::get(I32, 0),								  // read
											ConstantInt::get(I32, 3), ConstantInt::get(I32, 1)}); // data

				//do not insert care about the load, we already have a prefetch
				delete current; 
			} else if (isa <CallInst> (current) && !cast <CallInst> (current)->isInlineAsm() 
						&& cast <CallInst> (current)->getCalledFunction()
						->getName() == "llvm.memcpy.p0i8.p0i8.i64"){
				// Insert prefetch
				IRBuilder <> Builder(Beg);
				//the cast is prefetched first, then the prefetch
				Module *M = BB->getParent()->getParent();
				Type *I32 = Type::getInt32Ty(BB->getContext());
				Value *PrefFun = Intrinsic::getDeclaration(M, Intrinsic::prefetch);
				CallInst *Prefetch = Builder.CreateCall(
						PrefFun, {current->getOperand(0), ConstantInt::get(I32, 0),								  // read
											ConstantInt::get(I32, 3), ConstantInt::get(I32, 1)}); // data
				delete current;
			} else {
				current->insertBefore(Beg);
			}
		}
	}



	raw_ostream &printStart() { return (PRINTSTREAM<<LIBRARYNAME<<": "); }
};
}


char TMArgPrefetcher::ID = 0;
static RegisterPass <TMArgPrefetcher> X("tm-prefetch-args", "Prefectch All loads concerning arguments of called functions inside TM section", false, false);