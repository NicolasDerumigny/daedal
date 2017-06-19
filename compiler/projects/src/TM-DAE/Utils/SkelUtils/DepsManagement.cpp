//===- DepsManagement.cpp - Utility for calling and timing DAE-----------------===//
//
//										 The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
/// \file DepsManagement.cpp
///
/// \brief Utility for computing dependencies of an instruction
///
/// \copyright Eta Scale AB. Licensed under the Eta Scale Open Source License. See
/// the LICENSE file for details.
//===----------------------------------------------------------------------===//
#include "llvm/Analysis/LoopPass.h"
#include "llvm/ADT/ilist.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Argument.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/InlineAsm.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/IR/Function.h"
#include "llvm/Analysis/TargetTransformInfo.h"
#include "llvm/Analysis/CFG.h"
#include "Util/Annotation/MetadataInfo.h"

#include <algorithm>
#include <fstream>
#include <iostream>
#include <queue>
#include <map>
#include <set>
#include <sstream>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <utility>
#include <vector>

using namespace llvm;
using namespace std;

bool followDeps(set<Instruction *> &Set, set<Instruction *> &DepSet, AliasAnalysis * AA,
								bool FollowMust, bool FollowPartial, bool FollowMay,
								bool followStores = true, bool followCalls = true);
bool followDeps(Instruction *Inst, set<Instruction *> &DepSet, AliasAnalysis * AA, 
								bool FollowMust, bool FollowPartial, bool FollowMay);
void enqueueStores(LoadInst *LInst, set<Instruction *> &Set,
 									 queue<Instruction *> &Q, AliasAnalysis * AA, bool FollowMust, 
 									 bool FollowPartial, bool FollowMay);
void enqueueOperands(Instruction *Inst, set<Instruction *> &Set,
										 queue<Instruction *> &Q);
void enqueueInst(Value *Val, set<Instruction *> &Set,
								 queue<Instruction *> &Q);
bool isLocalPointer(Value *Pointer);
bool isNonLocalPointer(Value *Pointer);
bool checkCalls(Instruction *I);
AliasResult pointerAlias(Value *P1, Value *P2, const DataLayout &DL, AliasAnalysis *AA);


// Adds dependencies of the Instructions in Set to DepSet.
// Dependencies are considered to be the operators of an Instruction
// with the exceptions of calls. In case a LoadInst is a dependency
// the coresponding StoreInst is also considered as a dependency
// as long it does not operate on visible memory.
// Retrurns false iff a prohibited instruction are required.
// The contents of Set and DepSet are only reliable if the result
// is true.
bool followDeps(set<Instruction *> &Set, set<Instruction *> &DepSet, AliasAnalysis * AA,
								bool FollowMust, bool FollowPartial, bool FollowMay,
								bool followStores, bool followCalls) {
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
			bool annotatedToBeLocal = util::InstrhasMetadata(Inst, "Call", "Local");

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
				enqueueStores((LoadInst *)Inst, DepSet, Q, AA, FollowMust, FollowPartial, FollowMay);
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
bool followDeps(Instruction *Inst, 
				set<Instruction *> &DepSet, 
				AliasAnalysis * AA, 
				bool FollowMust, 
				bool FollowPartial, 
				bool FollowMay) {
	set<Instruction *> Set;
	Set.insert(Inst);
	return followDeps(Set, DepSet, AA, FollowMust, FollowPartial, FollowMay);
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
									 queue<Instruction *> &Q, AliasAnalysis * AA, 
									 bool FollowMust, bool FollowPartial, bool FollowMay) {
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
														 iI->getModule()->getDataLayout(), AA)) {
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

// Checks if two pointers alias
AliasResult pointerAlias(Value *P1, Value *P2, const DataLayout &DL, AliasAnalysis *AA) {
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
