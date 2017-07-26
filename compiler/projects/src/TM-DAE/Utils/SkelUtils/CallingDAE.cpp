//===- CallingDAE.cpp - Utility for calling and timing DAE-----------------===//
//
//										 The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
/// \file CallingDAE.cpp
///
/// \brief Utility for calling and timing TM-DAE
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

#define TM_BEGIN_X86 "llvm.x86.xbegin"
#define TM_END_X86 "llvm.x86.xend"
#define RTM_UNLOCK "RTM_fallback_unlock"
#define RTM_LOCK "RTM_fallback_lock"

#ifndef CallingDAE_
#define CallingDAE_

void insertCallToAccessFunction(Function *F, Function *cF);
void insertCallToAccessFunctionSequential(Function *F, Function *cF);
void insertCallToAccessFunctionBeforeTM(set<BasicBlock *> bTS,	
	Function * access, Function * execute, map<BasicBlock *, 
	vector<Value *>> funArgs, DominatorTree * DT);
void insertCallToPAPI(CallInst *access, CallInst *execute);
void insertCallOrigToPAPI(CallInst *execute);
void insertCallInitPAPI(CallInst *mainF);
void getInsideTM(BasicBlock * BB, set<Instruction *> & InsideTM);
Instruction* getInsertPoint(Instruction* I, DominatorTree * DT);
Instruction* isBeginTM(BasicBlock* BB);
Instruction* isEndTMOrLock(BasicBlock* BB);
Instruction* isAssertFail(BasicBlock* BB);
void mapArgumentsToParams(Function *F, ValueToValueMapTy *VMap);
void getBeginTransactionalSection(list<LoadInst * > & toHoist, CallInst * I, 
	set<BasicBlock *> & bTS, vector<BasicBlock *> & vBlockWithoutBTS, 
	map<BasicBlock *, vector<Value *>> & funArgs, map<LoadInst *, Value*> & loadToVal);
void getCallers(Module * M, Function * F, vector<CallInst * > & vF);
void constructArgVector(list <LoadInst *> toHoist, BasicBlock * BB, 
	map<LoadInst *, Value*> & loadToVal, map<BasicBlock *, vector<Value *>> &funArgs);



void insertCallToAccessFunction(Function *F, Function *cF) {
	CallInst *I;
	Instruction *bI;
	std::vector<Value *> Args;
	std::vector<Type *> ArgsTy;
	Module *M = F->getParent();
	std::string name;
	Function *nF, *tF;
	FunctionType *FTy;
	std::stringstream out;

	Value::user_iterator i = F->user_begin(), e = F->user_end();
	while (i != e) {
		Args.clear();
		ArgsTy.clear();
		/*************	C codes	***********/

		if (isa<CallInst>(*i)) {

			I = dyn_cast<CallInst>(*i);
			// call to the access function F
			Args.push_back(I->getArgOperand(0));
			ArgsTy.push_back(I->getArgOperand(0)->getType());

			// call to the execute function cF
			Args.push_back(cF);
			ArgsTy.push_back(PointerType::get(cF->getFunctionType(), 0));

			unsigned int t;
			for (t = 1; t < I->getNumArgOperands(); t++) {
				Args.push_back(I->getArgOperand(t));
				ArgsTy.push_back(I->getArgOperand(t)->getType());
				// errs() << *(I->getArgOperand(t)) << " is or not " <<
				// isa<GlobalVariable>(I->getArgOperand(t)) << "\n";
			}
			tF = dyn_cast<Function>(I->getCalledFunction());
			FTy = FunctionType::get(tF->getReturnType(), ArgsTy, 0);

			out.str(std::string());
			out << "task_DAE_" << I->getNumArgOperands() - 1;
			nF = (Function *)M->getOrInsertFunction(out.str(), FTy);
			CallInst *ci = CallInst::Create(nF, Args, I->getName(), I);

			i++;
			I->replaceAllUsesWith(ci);
			I->eraseFromParent();
		}
		/*************	C++ codes	***********/
		else {

			Value::user_iterator bit = (*i)->user_begin(), bite = (*i)->user_end();

			Type *iTy = (*i)->getType();
			i++;
			while (bit != bite) {
				Args.clear();
				ArgsTy.clear();
				I = dyn_cast<CallInst>(*bit);

				bit++;

				// call to the access function F
				Args.push_back(I->getArgOperand(0));
				ArgsTy.push_back(I->getArgOperand(0)->getType());

				// call to the execute function cF
				bI = new BitCastInst(cF, (iTy), "_TPR", I);
				Args.push_back(bI);
				ArgsTy.push_back(bI->getType());

				unsigned int t;
				for (t = 1; t < I->getNumArgOperands(); t++) {
					Args.push_back(I->getArgOperand(t));
					ArgsTy.push_back(I->getArgOperand(t)->getType());
				}
				tF = dyn_cast<Function>(I->getCalledFunction());
				FTy = FunctionType::get(tF->getReturnType(), ArgsTy, 0);

				out.str(std::string());
				out << "task_DAE_" << I->getNumArgOperands() - 1;
				nF = (Function *)M->getOrInsertFunction(out.str(), FTy);
				CallInst *ci = CallInst::Create(nF, Args, I->getName(), I);

				I->replaceAllUsesWith(ci);
				I->eraseFromParent();
			}
		}
	}
}

void insertCallToAccessFunctionSequential(Function *F, Function *cF) {
	CallInst *I;
	BasicBlock *b;

	Value::user_iterator i = F->user_begin(), e = F->user_end();
	while (i != e) {
		if (isa<CallInst>(*i)) {

			I = dyn_cast<CallInst>(*i);
			CallInst *ci = dyn_cast<CallInst>(I->clone());
			I->setCalledFunction(cF);
			ci->setCalledFunction(F);
			ci->insertBefore(I);

			//insertCallToPAPI(I, ci);
		}

		i++;
	}
}


void insertCallToAccessFunctionBeforeTM(
	set<BasicBlock *> bTS,
	Function * access,
	Function * execute,
	map<BasicBlock *, vector<Value *>> funArgs,
	DominatorTree * DT) {
	
	CallInst *I;
	BasicBlock *b;

	//Set all call to access to execute instead
	for(Value::user_iterator i = access->user_begin(), e = access->user_end();i != e; ++i)
		if (isa<CallInst>(*i)) {
			I = dyn_cast<CallInst>(*i);
			I->setCalledFunction(execute);
		}

	//Place the accesses
	for(BasicBlock * BB : bTS) {
		IRBuilder<> build(BB);
		build.SetInsertPoint(getInsertPoint(isBeginTM(BB), DT));
		CallInst * ci = build.CreateCall(access, ArrayRef <Value *> (funArgs[BB]));
	}
}


void mapArgumentsToParams(Function *F, ValueToValueMapTy *VMap) {
	CallInst *I;
	Instruction *aux = 0;
	Value *vaux;

	Value::user_iterator i = F->user_begin(), e = F->user_end();
	Function::arg_iterator a = F->arg_begin();
	while (i != e) {

		a = F->arg_begin();
		/*************	C codes	***********/

		if (isa<CallInst>(*i)) {

			I = dyn_cast<CallInst>(*i);
			unsigned int t;
			for (t = 1; t < I->getNumArgOperands(); t++) {
				aux = 0;
				vaux = I->getArgOperand(t);
				while (isa<Instruction>(vaux)) {
					aux = dyn_cast<Instruction>(vaux);
					vaux = aux->getOperand(0);
				}

				// errs() << "ARG "<< *(a) << " ----------------- " << *vaux << "\n";
				Value *argument = &*a;
				VMap->insert(std::pair<Value *, Value *>(argument, &*vaux));
				a++;
			}
			i++;
		}
		/*************	C++ codes	***********/
		else {

			Value::user_iterator bit = (*i)->user_begin(), bite = (*i)->user_end();
			i++;
			while (bit != bite) {
				I = dyn_cast<CallInst>(*bit);
				a = F->arg_begin();
				bit++;
				unsigned int t;
				for (t = 1; t < I->getNumArgOperands(); t++) {
					aux = 0;
					vaux = I->getArgOperand(t);
					errs() << "vaux=" << *vaux << "		a=" << *a << "\n";
					while ((isa<Instruction>(vaux)) && (!isa<PHINode>(vaux))) {
						aux = dyn_cast<Instruction>(vaux);
						if (!isa<PHINode>(aux))
							vaux = aux->getOperand(0);
						// errs() << "vaux="<<*vaux << "		a="<<*a <<"\n";
					}

					errs() << "ARG " << *(a) << " ----------------- " << *vaux << "\n";
					Value *argument = &*a;
					VMap->insert(std::pair<Value *, Value *>(argument, vaux));
					a++;
				}
			}
		}
	}
}

void insertCallInitPAPI(Function *mainF) {

	Module *M = mainF->getParent();
	FunctionType *FTy =
			FunctionType::get(llvm::Type::getVoidTy(M->getContext()), 0);

	Function *profiler_print_stats =
			cast<Function>(M->getOrInsertFunction("profiler_print_stats", FTy));
	profiler_print_stats->setCallingConv(CallingConv::C);

	IRBuilder<> Builder(mainF->getEntryBlock().getTerminator());

	for (inst_iterator I = inst_begin(mainF), E = inst_end(mainF); I != E; ++I) {
		if (isa<ReturnInst>(*I)) {
			Builder.SetInsertPoint(&(*I));
			Builder.CreateCall(profiler_print_stats);
		}
	}
}

void insertCallToPAPI(CallInst *access, CallInst *execute) {
	Function *caller = access->getParent()->getParent();
	Module *M = caller->getParent();
	IRBuilder<> Builder(access);

	std::vector<llvm::Type *> tid_arg;
	tid_arg.push_back(Builder.getInt64Ty());
	llvm::ArrayRef<llvm::Type *> int64t_ref(tid_arg);

	std::vector<llvm::Type *> profiler_args;
	profiler_args.push_back(Builder.getInt8PtrTy());
	llvm::ArrayRef<llvm::Type *> void_ptr_ref(profiler_args);

	// Declare FunctionType returning Int64 -- no input args
	FunctionType *fT_i64_v =
			FunctionType::get(llvm::Type::getInt64Ty(M->getContext()), false);
	// Declare FunctionType returning void * (vptr) -- one input argument of type:
	// Int64
	FunctionType *fT__vptr_i64 = FunctionType::get(
			llvm::Type::getInt8PtrTy(M->getContext()), int64t_ref, false);
	// Declare FunctionType returning (v)oid -- one input argument of type: void *
	// (vptr)
	FunctionType *fT_v_vptr = FunctionType::get(
			llvm::Type::getVoidTy(M->getContext()), void_ptr_ref, false);

	Function *profiler_get_thread_id = cast<Function>(
			M->getOrInsertFunction("profiler_get_thread_id", fT_i64_v));
	profiler_get_thread_id->setCallingConv(CallingConv::C);
	Function *profiler_get_counters = cast<Function>(
			M->getOrInsertFunction("profiler_get_counters", fT__vptr_i64));
	profiler_get_counters->setCallingConv(CallingConv::C);

	Function *profiler_start_access = cast<Function>(
			M->getOrInsertFunction("profiler_start_access", fT_v_vptr));
	profiler_start_access->setCallingConv(CallingConv::C);
	Function *profiler_end_access =
			cast<Function>(M->getOrInsertFunction("profiler_end_access", fT_v_vptr));
	profiler_end_access->setCallingConv(CallingConv::C);
	Function *profiler_start_execute = cast<Function>(
			M->getOrInsertFunction("profiler_start_execute", fT_v_vptr));
	profiler_start_execute->setCallingConv(CallingConv::C);
	Function *profiler_end_execute =
			cast<Function>(M->getOrInsertFunction("profiler_end_execute", fT_v_vptr));
	profiler_end_execute->setCallingConv(CallingConv::C);
	profiler_end_access->addFnAttr(Attribute::AlwaysInline);

	Value *thread_id =
			Builder.CreateCall(profiler_get_thread_id, None, "thread_id");
	Value *p_counters =
			Builder.CreateCall(profiler_get_counters, thread_id, "p_counters");

	/* insert PAPI calls before the prefetch phase*/
	Builder.CreateCall(profiler_start_access, p_counters);

	/* insert PAPI calls after the prefetch phase and before the execute phase*/
	Builder.SetInsertPoint(execute);
	Builder.CreateCall(profiler_end_access, p_counters);
	Builder.CreateCall(profiler_start_execute, p_counters);

	/* insert PAPI calls after the execute phase*/
	BasicBlock::iterator I(execute);
	I++;
	Builder.SetInsertPoint(&(*I));
	Builder.CreateCall(profiler_end_execute, p_counters);
}

void insertCallOrigToPAPI(CallInst *execute) {

	Function *caller = execute->getParent()->getParent();
	Module *M = caller->getParent();
	IRBuilder<> Builder(execute);

	std::vector<llvm::Type *> tid_arg;
	tid_arg.push_back(Builder.getInt64Ty());
	llvm::ArrayRef<llvm::Type *> int64t_ref(tid_arg);

	std::vector<llvm::Type *> profiler_args;
	profiler_args.push_back(Builder.getInt8PtrTy());
	llvm::ArrayRef<llvm::Type *> void_ptr_ref(profiler_args);

	// Declare FunctionType returning Int64 -- no input args
	FunctionType *fT_i64_v =
			FunctionType::get(llvm::Type::getInt64Ty(M->getContext()), false);
	// Declare FunctionType returning void * (vptr) -- one input argument of type:
	// Int64
	FunctionType *fT__vptr_i64 = FunctionType::get(
			llvm::Type::getInt8PtrTy(M->getContext()), int64t_ref, false);
	// Declare FunctionType returning (v)oid -- one input argument of type: void *
	// (vptr)
	FunctionType *fT_v_vptr = FunctionType::get(
			llvm::Type::getVoidTy(M->getContext()), void_ptr_ref, false);

	Function *profiler_get_thread_id = cast<Function>(
			M->getOrInsertFunction("profiler_get_thread_id", fT_i64_v));
	profiler_get_thread_id->setCallingConv(CallingConv::C);
	Function *profiler_get_counters = cast<Function>(
			M->getOrInsertFunction("profiler_get_counters", fT__vptr_i64));
	profiler_get_counters->setCallingConv(CallingConv::C);
	Function *profiler_start_execute = cast<Function>(
			M->getOrInsertFunction("profiler_start_execute", fT_v_vptr));
	profiler_start_execute->setCallingConv(CallingConv::C);
	Function *profiler_end_execute =
			cast<Function>(M->getOrInsertFunction("profiler_end_execute", fT_v_vptr));
	profiler_end_execute->setCallingConv(CallingConv::C);

	/* insert PAPI calls after the prefetch phase and before the execute phase*/
	Value *thread_id =
			Builder.CreateCall(profiler_get_thread_id, None, "thread_id");
	Value *p_counters =
			Builder.CreateCall(profiler_get_counters, thread_id, "p_counters");

	/* insert PAPI calls after the prefetch phase and before the execute phase*/
	Builder.CreateCall(profiler_start_execute, p_counters);

	/* insert PAPI calls after the execute phase*/
	BasicBlock::iterator I(execute);
	I++;
	Builder.SetInsertPoint(&(*I));
	Builder.CreateCall(profiler_end_execute, p_counters);
}


// Put all the instruction of the TM section in the InsideTM set by
// a traversal of the CFG
void getInsideTM(
	BasicBlock * BB,
	set<Instruction *> & InsideTM) {
	
	Instruction * Beg, * End;
	set<BasicBlock *> visited;

	if (!(Beg = isBeginTM (BB)))
		return;

	queue<BasicBlock *> Q;
	Q.push(BB);

	while(!Q.empty()) {
		BasicBlock * current = Q.front();
		Q.pop();

		if (visited.find(current) != visited.end())
			continue;
		visited.insert(current);

		End = isEndTMOrLock(current);
		Beg = isBeginTM(current);
		bool valid = !Beg;
		for (BasicBlock::iterator I = current->begin(), E = current->end(); I != E; ++I) {
			if (End == &*I)
				valid = false;
			if (valid)
				InsideTM.insert(&*I);
			if (Beg == &*I)
				valid = true;
		}

		if (!End) {
			for (succ_iterator SI = succ_begin(current), E = succ_end(current);
							 								SI != E; ++SI) {
				if (visited.find(*SI)==visited.end()) {
					Q.push(*SI);
				}
			}
		}
	}
}


// Get all the basicBlocks that have a TM_BEGIN() instruction and that
// dominates I
void getBeginTransactionalSection(list<LoadInst * > & toHoist, CallInst * I, 
	set<BasicBlock *> & bTS, vector<BasicBlock *> & vBlockWithoutBTS, 
	map<BasicBlock *, vector<Value *>> & funArgs, map<LoadInst *, Value*> & loadToVal) {
	BasicBlock * BB = I -> getParent();


	if(isBeginTM(BB)){
		//construct the argument vector
		constructArgVector(toHoist, BB, loadToVal, funArgs);
		bTS.insert(BB);
		return;
	}

	//Simple BFS to find all the BeginTM block that directly
	//precede block BB. If an instruction interferes with one
	//of the loads to hoist, this load is suppressed.
	queue<BasicBlock*> queue;
	set<BasicBlock*> visited;
	queue.push(BB);

	while(!queue.empty()) {	 
		BasicBlock * current;
		current = queue.front();
		visited.insert(current);
		queue.pop();

		for (pred_iterator PI = pred_begin(current), E = pred_end(current);
				 PI != E; ++PI) {
			if(visited.find(*PI) == visited.end()) {
				if (isBeginTM(*PI)){
					constructArgVector(toHoist, *PI, loadToVal, funArgs);

					bTS.insert(*PI);
				}
				else
					if (!isEndTMOrLock(*PI))
						if (pred_begin(*PI) == pred_end(*PI))
							//no predecessors
							vBlockWithoutBTS.push_back(*PI);
						else
							queue.push(*PI);
				
				visited.insert(*PI);
			}
		}
	}
}


// Return a block that is executed one time, no matter the number
// of retries of the TM section. Warning: this is different if we
// uses Ruben's simulatore or RTM version
Instruction* getInsertPoint(Instruction* I, DominatorTree * DT) {
	if(isa<CallInst>(I) && cast<CallInst> (I) -> getCalledFunction() 
			 && cast<CallInst> (I) -> getCalledFunction() ->	hasName()
			 && cast<CallInst> (I) -> getCalledFunction() -> getName() == "beginTransaction")
		return I;
	BasicBlock * BB = I->getParent();

	int parent = 0;
	BasicBlock * failure_label;
	for (pred_iterator SI = pred_begin(BB), E = pred_end(BB); SI != E; ++SI) {
		if (DT->dominates((*SI)->getTerminator(),BB)) {
			++parent;
			failure_label = *SI;
		}
	}
	if(parent != 1) {
		errs()<<"FATAL ERROR: too many failure: blocks\n";
		BB->print(errs());
		exit(-1);
	}

	parent = 0;
	BasicBlock * Insert_point;
	for (pred_iterator SI = pred_begin(failure_label), E = pred_end(failure_label); SI != E; ++SI) {
		if (DT->dominates((*SI)->getTerminator(),failure_label)) {
			++parent;
			Insert_point = *SI;
		}
	}
	if(parent != 1) {
		errs()<<"FATAL ERROR: too many parents for failure: block\n";
		BB->print(errs());
		exit(-1);
	}


	return Insert_point->getTerminator();
}

// Returns a pointer to the TM_BEGIN() instruction if there is any,
// nullptr otherwise
Instruction* isBeginTM(BasicBlock* BB) {
	for (BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I){
		if(isa<CallInst>(I) && cast<CallInst> (I) -> getCalledFunction() 
			 && cast<CallInst> (I) -> getCalledFunction() ->	hasName()
			 && cast<CallInst> (I) -> getCalledFunction() -> getName() == TM_BEGIN_X86) {
			return &(*I);
		} else 	if(isa<CallInst>(I) && cast<CallInst> (I) -> getCalledFunction() 
			 && cast<CallInst> (I) -> getCalledFunction() ->	hasName()
			 && cast<CallInst> (I) -> getCalledFunction() -> getName() == "beginTransaction") {
			return &(*I);
		}
	}
	return nullptr;
}


// Returns a pointer to the TM_END()/Lock/Unlock instruction if there
// is any, nullptr otherwise
Instruction* isEndTMOrLock(BasicBlock* BB) {
	for (BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I) {
		if( isa<CallInst>(I) && ! (cast<CallInst>(I) -> isInlineAsm())) {
			if (auto* CstExpr = dyn_cast<ConstantExpr>(I->getOperand(0))) {
				if (CstExpr->isCast()) {
					Value * Fun = CstExpr->getOperand(0);
					if (Fun -> getName() == "pthread_mutex_unlock" ||
					Fun -> getName() == "pthread_mutex_lock" ||
					Fun -> getName() == "commitTransaction" ||
					Fun -> getName() == RTM_UNLOCK ||
					Fun -> getName() == RTM_LOCK ||
					Fun -> getName() == TM_END_X86)
						return &(*I);
					// if this is a call bitcast, get the real function and figure out
					continue;
				}
			}

			if(isa<CallInst>(I) && cast<CallInst> (I) -> getCalledFunction() ->
			 hasName() && cast<CallInst> (I) -> getCalledFunction() 
			 -> getName() == "pthread_mutex_unlock") {
				return &(*I);
			}
			if(isa<CallInst>(I) && cast<CallInst> (I) -> getCalledFunction() -> 
				hasName() && cast<CallInst> (I) -> getCalledFunction() -> 
				getName() == "pthread_mutex_lock") {
				return &(*I);
			}
			if(isa<CallInst>(I) && cast<CallInst> (I) -> getCalledFunction() ->
			 hasName() && cast<CallInst> (I) -> getCalledFunction() 
			 -> getName() == RTM_UNLOCK) {
				return &(*I);
			}
			if(isa<CallInst>(I) && cast<CallInst> (I) -> getCalledFunction() -> 
				hasName() && cast<CallInst> (I) -> getCalledFunction() -> 
				getName() == RTM_LOCK) {
				return &(*I);
			}
			if(isa<CallInst>(I) && cast<CallInst> (I) -> getCalledFunction() -> 
				hasName() && cast<CallInst> (I) -> getCalledFunction() -> 
				getName() == "commitTransaction") {
				return &(*I);
			}
			if(isa<CallInst>(I) && cast<CallInst> (I) -> getCalledFunction() -> 
				hasName() && cast<CallInst> (I) -> getCalledFunction() -> 
				getName() == TM_END_X86) {
				return &(*I);
			}
		}
	}

	return nullptr;
}

// Not used: Get the pointer to the forst Assert Fail instruction if
// there is any, nreturns nullptr otherwise
Instruction* isAssertFail(BasicBlock* BB) {
	for (BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I){
		if(isa<CallInst>(I) && !cast<CallInst> (I) -> isInlineAsm()
		&& cast<CallInst> (I) -> getCalledFunction() ->	hasName()
		&& cast<CallInst> (I) -> getCalledFunction() -> getName() == "__assert_fail") {
			return &(*I);
		}
	}

	return nullptr;
}

// Construct the argument vector
void constructArgVector(list <LoadInst *> toHoist, BasicBlock * BB, 
	map<LoadInst *, Value*> & loadToVal, map<BasicBlock *, vector<Value *>> &funArgs){
	map<Value *, char> seen;
	funArgs[BB] = vector<Value *> ();
    for (LoadInst * LInst: toHoist){
		if (seen.find(cast<GetElementPtrInst> (LInst->getPointerOperand())->getPointerOperand())==seen.end()){
			funArgs[BB].push_back(loadToVal[LInst]);
			seen[cast<GetElementPtrInst> (LInst->getPointerOperand())->getPointerOperand()] = 1;
		}
	}
}

// Gather in vF the call insructions that target function F
// in module M
void getCallers(Module * M, Function * F, vector<CallInst * > & vF){
	for (Module::iterator MI = M->begin(), mE = M->end(); MI != mE; ++MI){
		for (Function::iterator FI = (*MI).begin(), eFI = (*MI).end(); FI != eFI; ++FI) {
			for (BasicBlock::iterator I = (*FI).begin(), E = (*FI).end(); I != E; ++I) {
				if (CallInst *call = dyn_cast<CallInst> (I)) {
					if (call->getCalledFunction() == F) {
							vF.push_back(cast<CallInst> (call));
					}
				}
			}
		}
	}
}

#endif
