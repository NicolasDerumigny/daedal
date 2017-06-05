//===- CallingDAE.cpp - Utility for calling and timing DAE-----------------===//
//
//                     The LLVM Compiler Infrastructure
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
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/InlineAsm.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/Cloning.h"

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

#define TM_BEGIN_ASM ".byte 0xc7,0xf8 ; .long 0"
#define TM_END_ASM ".byte 0x0f,0x01,0xd5"

#ifndef CallingDAE_
#define CallingDAE_

void insertCallToAccessFunction(Function *F, Function *cF);
void insertCallToAccessFunctionSequential(Function *F, Function *cF, vector<Instruction> * BeginTrans);
void insertCallToPAPI(CallInst *access, CallInst *execute);
void insertCallOrigToPAPI(CallInst *execute);
void insertCallInitPAPI(CallInst *mainF);
bool isBeginTM(BasicBlock* BB);
bool isEndTMOrLock(BasicBlock* BB);
void mapArgumentsToParams(Function *F, ValueToValueMapTy *VMap);
void getBeginTransactionalSection(BasicBlock* BB, set<BasicBlock *> & bTv, vector<BasicBlock *> & vBlockWithoutBTS);
void getCallers(Module * M, Function * F, vector<Instruction*> & vF);

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
    /*************  C codes  ***********/

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
    /*************  C++ codes  ***********/
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

void insertCallToAccessFunctionSequential(Function *F, Function *cF, set<BasicBlock *> BeginTrans) {
  CallInst *I;
  BasicBlock *b;

  Value::user_iterator i = F->user_begin(), e = F->user_end();
  while (i != e) {
    if (isa<CallInst>(*i)) {

      I = dyn_cast<CallInst>(*i);
      b = I->getParent();

      if (BeginTrans.size()==0) {
        //No TM_BEGIN or TM_BEGIN detection disabled
        BasicBlock::iterator helper(I);
        CallInst *ci = dyn_cast<CallInst>(I->clone());
        ci->setCalledFunction(cF);
        b->getInstList().insertAfter(helper, ci);
        I->replaceAllUsesWith(ci);
      } else {
        //TODO
        errs()<<"ERROR: Not implemented\n";
        exit(-1);
      }

      //insertCallToPAPI(I, ci);
    }

    i++;
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
    /*************  C codes  ***********/

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
    /*************  C++ codes  ***********/
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
          errs() << "vaux=" << *vaux << "    a=" << *a << "\n";
          while ((isa<Instruction>(vaux)) && (!isa<PHINode>(vaux))) {
            aux = dyn_cast<Instruction>(vaux);
            if (!isa<PHINode>(aux))
              vaux = aux->getOperand(0);
            // errs() << "vaux="<<*vaux << "    a="<<*a <<"\n";
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


void getBeginTransactionalSection(BasicBlock* BB, set<BasicBlock *> & bTS, vector<BasicBlock *> & vBlockWithoutBTS) {
  if(isBeginTM(BB)){
    bTS.insert(BB);
    return;
  }

  //Simple BFS to find all the BeginTM block that directly
  //precede block BB
  queue<BasicBlock*> queue;
  map<BasicBlock*, bool> visited;
  queue.push(BB);

  while(!queue.empty()) {   
    BasicBlock* current;
    current = queue.front();
    visited[current] = true;
    queue.pop();

    for (pred_iterator PI = pred_begin(current), E = pred_end(current);
         PI != E; ++PI) {
      if(visited.find(*PI) == visited.end()) {
          if (isBeginTM(*PI))
            bTS.insert(*PI);
          else
            if (!isEndTMOrLock(*PI))
              if (pred_begin(*PI) == pred_end(*PI))
                //no predecessors
                vBlockWithoutBTS.push_back(*PI);
              else
                queue.push(*PI);
          
          visited[*PI] = true;
      }
    }
  }
}


bool isBeginTM(BasicBlock* BB) {
  for (BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I)
    if(isa<CallInst>(I) && cast<CallInst>(I) -> isInlineAsm())
      if(isa<InlineAsm> (cast<CallInst>(I)->getCalledValue()) &&
        cast<InlineAsm>(cast<CallInst>(I)->getCalledValue())->getAsmString() == TM_BEGIN_ASM)
         return true;

  return false;
}

bool isEndTMOrLock(BasicBlock* BB) {
  for (BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I)
    if(isa<CallInst>(I) && cast<CallInst>(I) -> isInlineAsm()) {
      if(isa<InlineAsm> (cast<CallInst>(I)->getCalledValue()) &&
        cast<InlineAsm>(cast<CallInst>(I)->getCalledValue())->getAsmString() == TM_END_ASM)
         return true;
    } else {
      if(isa<CallInst>(I) && cast<CallInst> (I) -> getCalledFunction() -> hasName() && cast<CallInst> (I) -> getCalledFunction() -> getName() == "pthread_mutex_lock") {
        return true;
      }
    }
    

  return false;
}


void getCallers(Module * M, Function * F, vector<Instruction*> & vF){
  //Gather in vF the functions inside which there is a call
  //to F
  for (Module::iterator MI = M->begin(), mE = M->end(); MI != mE; ++MI){
    for (Function::iterator FI = (*MI).begin(), eFI = (*MI).end(); FI != eFI; ++FI) {
      for (BasicBlock::iterator I = (*FI).begin(), E = (*FI).end(); I != E; ++I) {
        if (CallInst *call = dyn_cast<CallInst> (I)) {
          if (call->getCalledFunction() == F) {
              vF.push_back(call);
          }
        }
      }
    }
  }
}

#endif
