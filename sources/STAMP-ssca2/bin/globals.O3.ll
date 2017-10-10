; ModuleID = '../bin/globals.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCALE = common global i64 0, align 8
@TOT_VERTICES = common global i64 0, align 8
@MAX_CLIQUE_SIZE = common global i64 0, align 8
@MAX_PARAL_EDGES = common global i64 0, align 8
@MAX_INT_WEIGHT = common global i64 0, align 8
@SOUGHT_STRING = common global i8* null, align 8
@MAX_STRLEN = common global i64 0, align 8
@PERC_INT_WEIGHTS = common global float 0.000000e+00, align 4
@PROB_UNIDIRECTIONAL = common global float 0.000000e+00, align 4
@PROB_INTERCL_EDGES = common global float 0.000000e+00, align 4
@SUBGR_EDGE_LENGTH = common global i64 0, align 8
@MAX_CLUSTER_SIZE = common global i64 0, align 8
@K3_DS = common global i64 0, align 8
@THREADS = common global i64 0, align 8

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
