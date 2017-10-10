; ModuleID = '../bin/bayes.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.data = type { i64, i64, i8*, %struct.random* }
%struct.net = type opaque
%struct.adtree = type { i64, i64, %struct.adtree_node* }
%struct.adtree_node = type { i64, i64, i64, %struct.vector* }
%struct.vector = type { i64, i64, i8** }
%struct.timezone = type { i32, i32 }
%struct.learner = type { %struct.adtree*, %struct.net*, float*, [56 x i8], float, [60 x i8], %struct.learner_task*, [56 x i8], %struct.list*, [56 x i8], i64, [56 x i8] }
%struct.learner_task = type opaque
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }

@global_maxNumEdgeLearned = global i64 -1, align 8
@global_insertPenalty = global i64 1, align 8
@global_operationQualityFactor = global float 1.000000e+00, align 4
@global_params = common global [256 x i64] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"bayes.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Random seed                = %li\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Number of vars             = %li\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Number of records          = %li\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Max num parents            = %li\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"%% chance of parent         = %li\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Insert penalty             = %li\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Max num edge learned / var = %li\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Operation quality factor   = %f\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"Generating data... \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"randomPtr\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"dataPtr\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"done.\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"adtreePtr\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Generating adtree... \00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Adtree time = %f\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"learnerPtr\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Learning structure...\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Learn time = %f\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"!status\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Learn score  = %f\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Actual score = %f\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@opterr = external global i32, align 4
@.str.26 = private unnamed_addr constant [19 x i8] c"e:i:n:p:q:r:s:t:v:\00", align 1
@optarg = external global i8*, align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.29 = private unnamed_addr constant [62 x i8] c"\0AOptions:                                         (defaults)\0A\00", align 1
@.str.30 = private unnamed_addr constant [55 x i8] c"    e <UINT>   Max [e]dges learned per variable  (%i)\0A\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"    i <UINT>   Edge [i]nsert penalty             (%i)\0A\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"    n <UINT>   Max [n]umber of parents           (%i)\0A\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"    p <UINT>   [p]ercent chance of parent        (%i)\0A\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"    q <FLT>    Operation [q]uality factor        (%f)\0A\00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"    r <UINT>   Number of [r]ecords               (%i)\0A\00", align 1
@.str.36 = private unnamed_addr constant [55 x i8] c"    s <UINT>   Random [s]eed                     (%i)\0A\00", align 1
@.str.37 = private unnamed_addr constant [55 x i8] c"    t <UINT>   Number of [t]hreads               (%i)\0A\00", align 1
@.str.38 = private unnamed_addr constant [55 x i8] c"    v <UINT>   Number of [v]ariables             (%i)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %adtreeStartTime = alloca %struct.timeval, align 8
  %adtreeStopTime = alloca %struct.timeval, align 8
  %learnStartTime = alloca %struct.timeval, align 8
  %learnStopTime = alloca %struct.timeval, align 8
  %1 = sext i32 %argc to i64
  store i32 0, i32* @opterr, align 4
  store i64 -1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 101), align 8
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 105), align 8
  store i64 4, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  store i64 10, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 112), align 16
  store <2 x i64> <i64 4096, i64 1>, <2 x i64>* bitcast (i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 114) to <2 x i64>*), align 16
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  store i64 32, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 118), align 16
  %2 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0)) #5
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %._crit_edge4.i, label %.lr.ph3.i.preheader

.lr.ph3.i.preheader:                              ; preds = %0
  br label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.lr.ph3.i.preheader, %.backedge.i
  %4 = phi i32 [ %19, %.backedge.i ], [ %2, %.lr.ph3.i.preheader ]
  %5 = sext i32 %4 to i64
  switch i64 %5, label %16 [
    i64 101, label %6
    i64 105, label %6
    i64 110, label %6
    i64 112, label %6
    i64 114, label %6
    i64 115, label %6
    i64 116, label %6
    i64 118, label %6
    i64 113, label %12
  ]

; <label>:6                                       ; preds = %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i
  %7 = load i8*, i8** @optarg, align 8
  %8 = tail call i64 @atol(i8* %7) #6
  %9 = zext i32 %4 to i64
  %10 = and i64 %9, 255
  %11 = getelementptr inbounds [256 x i64], [256 x i64]* @global_params, i64 0, i64 %10
  store i64 %8, i64* %11, align 8
  br label %.backedge.i

; <label>:12                                      ; preds = %.lr.ph3.i
  %13 = load i8*, i8** @optarg, align 8
  %14 = tail call double @atof(i8* %13) #6
  %15 = fptrunc double %14 to float
  store float %15, float* @global_operationQualityFactor, align 4
  br label %.backedge.i

; <label>:16                                      ; preds = %.lr.ph3.i
  %17 = load i32, i32* @opterr, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @opterr, align 4
  br label %.backedge.i

.backedge.i:                                      ; preds = %16, %12, %6
  %19 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0)) #5
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %._crit_edge4.i.loopexit, label %.lr.ph3.i

._crit_edge4.i.loopexit:                          ; preds = %.backedge.i
  br label %._crit_edge4.i

._crit_edge4.i:                                   ; preds = %._crit_edge4.i.loopexit, %0
  %21 = load i32, i32* @optind, align 4
  %22 = icmp slt i32 %21, %argc
  br i1 %22, label %.lr.ph.i.preheader, label %._crit_edge4.._crit_edge_crit_edge.i

.lr.ph.i.preheader:                               ; preds = %._crit_edge4.i
  %23 = sext i32 %21 to i64
  br label %.lr.ph.i

._crit_edge4.._crit_edge_crit_edge.i:             ; preds = %._crit_edge4.i
  %.pre.i = load i32, i32* @opterr, align 4
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.01.i = phi i64 [ %30, %.lr.ph.i ], [ %23, %.lr.ph.i.preheader ]
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = getelementptr inbounds i8*, i8** %argv, i64 %i.01.i
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i8* %26) #7
  %28 = load i32, i32* @opterr, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @opterr, align 4
  %30 = add nsw i64 %i.01.i, 1
  %exitcond.i = icmp eq i64 %30, %1
  br i1 %exitcond.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.lcssa = phi i32 [ %29, %.lr.ph.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %._crit_edge4.._crit_edge_crit_edge.i
  %31 = phi i32 [ %.pre.i, %._crit_edge4.._crit_edge_crit_edge.i ], [ %.lcssa, %._crit_edge.i.loopexit ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %parseArgs.exit, label %33

; <label>:33                                      ; preds = %._crit_edge.i
  %34 = load i8*, i8** %argv, align 8
  %35 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i8* %34) #5
  %36 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.29, i64 0, i64 0)) #5
  %37 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.30, i64 0, i64 0), i32 -1) #5
  %38 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i64 0, i64 0), i32 1) #5
  %39 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.32, i64 0, i64 0), i32 4) #5
  %40 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.33, i64 0, i64 0), i32 10) #5
  %41 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.34, i64 0, i64 0), double 1.000000e+00) #5
  %42 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.35, i64 0, i64 0), i32 4096) #5
  %43 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.36, i64 0, i64 0), i32 1) #5
  %44 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.37, i64 0, i64 0), i32 1) #5
  %45 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.38, i64 0, i64 0), i32 32) #5
  tail call void @exit(i32 1) #8
  unreachable

parseArgs.exit:                                   ; preds = %._crit_edge.i
  %46 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  %47 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 118), align 16
  %48 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 114), align 16
  %49 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  %50 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  %51 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 112), align 16
  %52 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 105), align 8
  store i64 %52, i64* @global_insertPenalty, align 8
  %53 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 101), align 8
  store i64 %53, i64* @global_maxNumEdgeLearned, align 8
  %54 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #9, !srcloc !1
  %55 = extractvalue { i32, i32, i32, i32 } %54, 0
  %56 = icmp sgt i32 %55, 6
  br i1 %56, label %58, label %57

; <label>:57                                      ; preds = %parseArgs.exit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 249, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:58                                      ; preds = %parseArgs.exit
  %59 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #9, !srcloc !2
  %60 = extractvalue { i32, i32, i32, i32 } %59, 1
  %61 = and i32 %60, 2048
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %58
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 249, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:64                                      ; preds = %58
  tail call void (...) @RTM_spinlock_init() #5
  tail call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %46) #5
  tail call void @thread_startup(i64 %46) #5
  %65 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %49)
  %66 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %47)
  %67 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %48)
  %68 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %50)
  %69 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %51)
  %70 = load i64, i64* @global_insertPenalty, align 8
  %71 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* @global_maxNumEdgeLearned, align 8
  %73 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i64 %72)
  %74 = load float, float* @global_operationQualityFactor, align 4
  %75 = fpext float %74 to double
  %76 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), double %75)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %78 = tail call i32 @fflush(%struct._IO_FILE* %77)
  %79 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %81 = tail call i32 @fflush(%struct._IO_FILE* %80)
  %82 = tail call %struct.random* (...) @random_alloc() #5
  %83 = icmp eq %struct.random* %82, null
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %64
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 271, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:85                                      ; preds = %64
  tail call void @random_seed(%struct.random* nonnull %82, i64 %49) #5
  %86 = tail call %struct.data* @data_alloc(i64 %47, i64 %48, %struct.random* nonnull %82) #5
  %87 = icmp eq %struct.data* %86, null
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %85
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 275, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:89                                      ; preds = %85
  %90 = tail call %struct.net* @data_generate(%struct.data* nonnull %86, i64 -1, i64 %50, i64 %51) #5
  %91 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %93 = tail call i32 @fflush(%struct._IO_FILE* %92)
  %94 = tail call %struct.adtree* (...) @adtree_alloc() #5
  %95 = icmp eq %struct.adtree* %94, null
  br i1 %95, label %96, label %97

; <label>:96                                      ; preds = %89
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 285, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:97                                      ; preds = %89
  %98 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %100 = tail call i32 @fflush(%struct._IO_FILE* %99)
  %101 = call i32 @gettimeofday(%struct.timeval* nonnull %adtreeStartTime, %struct.timezone* null) #5
  tail call void @adtree_make(%struct.adtree* nonnull %94, %struct.data* nonnull %86) #5
  %102 = call i32 @gettimeofday(%struct.timeval* nonnull %adtreeStopTime, %struct.timezone* null) #5
  %103 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %105 = tail call i32 @fflush(%struct._IO_FILE* %104)
  %106 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStopTime, i64 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sitofp i64 %107 to double
  %109 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStopTime, i64 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = sitofp i64 %110 to double
  %112 = fdiv double %111, 1.000000e+06
  %113 = fadd double %108, %112
  %114 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStartTime, i64 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = sitofp i64 %115 to double
  %117 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStartTime, i64 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sitofp i64 %118 to double
  %120 = fdiv double %119, 1.000000e+06
  %121 = fadd double %116, %120
  %122 = fsub double %113, %121
  %123 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), double %122)
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %125 = tail call i32 @fflush(%struct._IO_FILE* %124)
  %126 = tail call %struct.data* @data_alloc(i64 1, i64 1, %struct.random* null) #5
  %127 = tail call %struct.learner* @learner_alloc(%struct.data* %126, %struct.adtree* nonnull %94, i64 1) #5
  %128 = getelementptr inbounds %struct.learner, %struct.learner* %127, i64 0, i32 1
  %129 = bitcast %struct.net** %128 to i64*
  %130 = load i64, i64* %129, align 8
  store %struct.net* %90, %struct.net** %128, align 8
  %131 = tail call float @learner_score(%struct.learner* %127) #5
  store i64 %130, i64* %129, align 8
  tail call void @learner_free(%struct.learner* %127) #5
  tail call void @data_free(%struct.data* %126) #5
  tail call void @net_free(%struct.net* %90) #5
  %132 = tail call %struct.learner* @learner_alloc(%struct.data* nonnull %86, %struct.adtree* nonnull %94, i64 %46) #5
  %133 = icmp eq %struct.learner* %132, null
  br i1 %133, label %134, label %135

; <label>:134                                     ; preds = %97
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 316, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:135                                     ; preds = %97
  tail call void @data_free(%struct.data* nonnull %86) #5
  %136 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %138 = tail call i32 @fflush(%struct._IO_FILE* %137)
  %139 = call i32 @gettimeofday(%struct.timeval* nonnull %learnStartTime, %struct.timezone* null) #5
  tail call void @learner_run(%struct.learner* nonnull %132) #5
  %140 = call i32 @gettimeofday(%struct.timeval* nonnull %learnStopTime, %struct.timezone* null) #5
  %141 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %143 = tail call i32 @fflush(%struct._IO_FILE* %142)
  %144 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStopTime, i64 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = sitofp i64 %145 to double
  %147 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStopTime, i64 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = sitofp i64 %148 to double
  %150 = fdiv double %149, 1.000000e+06
  %151 = fadd double %146, %150
  %152 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStartTime, i64 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = sitofp i64 %153 to double
  %155 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStartTime, i64 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = sitofp i64 %156 to double
  %158 = fdiv double %157, 1.000000e+06
  %159 = fadd double %154, %158
  %160 = fsub double %151, %159
  %161 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), double %160)
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %163 = tail call i32 @fflush(%struct._IO_FILE* %162)
  %164 = getelementptr inbounds %struct.learner, %struct.learner* %132, i64 0, i32 1
  %165 = load %struct.net*, %struct.net** %164, align 8
  %166 = tail call i64 @net_isCycle(%struct.net* %165) #5
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %169, label %168

; <label>:168                                     ; preds = %135
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 343, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:169                                     ; preds = %135
  %170 = tail call float @learner_score(%struct.learner* nonnull %132) #5
  %171 = fpext float %170 to double
  %172 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), double %171)
  %173 = fpext float %131 to double
  %174 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), double %173)
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %176 = tail call i32 @fflush(%struct._IO_FILE* %175)
  tail call void @random_free(%struct.random* nonnull %82) #5
  tail call void @adtree_free(%struct.adtree* nonnull %94) #5
  %177 = tail call i64 (...) @getWorkItemCount() #5
  %178 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i64 %177)
  %179 = tail call i32 @fflush(%struct._IO_FILE* null)
  tail call void (...) @thread_shutdown() #5
  tail call void (...) @RTM_output_stats() #5
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

declare void @RTM_spinlock_init(...) #2

declare void @SimStartup(...) #2

declare void @thread_startup(i64) #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

declare %struct.random* @random_alloc(...) #2

declare void @random_seed(%struct.random*, i64) #2

declare %struct.data* @data_alloc(i64, i64, %struct.random*) #2

declare %struct.net* @data_generate(%struct.data*, i64, i64, i64) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

declare %struct.adtree* @adtree_alloc(...) #2

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #3

declare void @adtree_make(%struct.adtree*, %struct.data*) #2

declare void @net_free(%struct.net*) #2

declare %struct.learner* @learner_alloc(%struct.data*, %struct.adtree*, i64) #2

declare void @data_free(%struct.data*) #2

declare void @learner_run(%struct.learner*) #2

declare i64 @net_isCycle(%struct.net*) #2

declare float @learner_score(%struct.learner*) #2

declare void @random_free(%struct.random*) #2

declare void @adtree_free(%struct.adtree*) #2

declare i64 @getWorkItemCount(...) #2

declare void @thread_shutdown(...) #2

declare void @RTM_output_stats(...) #2

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @atol(i8* nocapture) #4

; Function Attrs: nounwind readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

declare void @learner_free(%struct.learner*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2146008866, i32 -2146008830, i32 -2146008806}
!2 = !{i32 -2145830713, i32 -2145830677, i32 -2145830653}
