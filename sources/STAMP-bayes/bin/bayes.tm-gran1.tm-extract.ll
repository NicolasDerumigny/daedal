; ModuleID = '../bin/bayes.tm-gran.ll'
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
@.str = private unnamed_addr constant [19 x i8] c"RTM is not present\00", align 1
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
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sext i32 %argc to i64
  call void @parseArgs(i64 %1, i8** %argv)
  %2 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  %3 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 118), align 16
  %4 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 114), align 16
  %5 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  %6 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  %7 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 112), align 16
  %8 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 105), align 8
  store i64 %8, i64* @global_insertPenalty, align 8
  %9 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 101), align 8
  store i64 %9, i64* @global_maxNumEdgeLearned, align 8
  br label %10

; <label>:10                                      ; preds = %0
  %11 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %12 = icmp sge i32 %11, 7
  br i1 %12, label %13, label %._crit_edge

._crit_edge:                                      ; preds = %10
  br label %15

; <label>:13                                      ; preds = %10
  br i1 true, label %14, label %._crit_edge1

._crit_edge1:                                     ; preds = %13
  br label %15

; <label>:14                                      ; preds = %13
  br label %17

; <label>:15                                      ; preds = %._crit_edge1, %._crit_edge
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 249, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %17

; <label>:17                                      ; preds = %16, %14
  %18 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #7, !srcloc !1
  %19 = extractvalue { i32, i32, i32, i32 } %18, 0
  %20 = extractvalue { i32, i32, i32, i32 } %18, 1
  %21 = extractvalue { i32, i32, i32, i32 } %18, 2
  %22 = extractvalue { i32, i32, i32, i32 } %18, 3
  %23 = and i32 %20, 2048
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %._crit_edge2

._crit_edge2:                                     ; preds = %17
  br label %27

; <label>:25                                      ; preds = %17
  br i1 true, label %26, label %._crit_edge3

._crit_edge3:                                     ; preds = %25
  br label %27

; <label>:26                                      ; preds = %25
  br label %29

; <label>:27                                      ; preds = %._crit_edge3, %._crit_edge2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 249, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %26
  call void (...) @RTM_spinlock_init()
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %2)
  br label %30

; <label>:30                                      ; preds = %29
  call void @thread_startup(i64 %2)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i64 %5)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i64 %3)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i64 %4)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), i64 %6)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i64 %7)
  %36 = load i64, i64* @global_insertPenalty, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i64 %36)
  %38 = load i64, i64* @global_maxNumEdgeLearned, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), i64 %38)
  %40 = load float, float* @global_operationQualityFactor, align 4
  %41 = fpext float %40 to double
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), double %41)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = call i32 @fflush(%struct._IO_FILE* %43)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = call i32 @fflush(%struct._IO_FILE* %46)
  %48 = call %struct.random* (...) @random_alloc()
  %49 = icmp ne %struct.random* %48, null
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %30
  br label %53

; <label>:51                                      ; preds = %30
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 271, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %53

; <label>:53                                      ; preds = %52, %50
  call void @random_seed(%struct.random* %48, i64 %5)
  %54 = call %struct.data* @data_alloc(i64 %3, i64 %4, %struct.random* %48)
  %55 = icmp ne %struct.data* %54, null
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %53
  br label %59

; <label>:57                                      ; preds = %53
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 275, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  %60 = call %struct.net* @data_generate(%struct.data* %54, i64 -1, i64 %6, i64 %7)
  %61 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %63 = call i32 @fflush(%struct._IO_FILE* %62)
  %64 = call %struct.adtree* (...) @adtree_alloc()
  %65 = icmp ne %struct.adtree* %64, null
  br i1 %65, label %66, label %67

; <label>:66                                      ; preds = %59
  br label %69

; <label>:67                                      ; preds = %59
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 285, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %69

; <label>:69                                      ; preds = %68, %66
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %72 = call i32 @fflush(%struct._IO_FILE* %71)
  %73 = call i32 @gettimeofday(%struct.timeval* %adtreeStartTime, %struct.timezone* null) #8
  call void @adtree_make(%struct.adtree* %64, %struct.data* %54)
  %74 = call i32 @gettimeofday(%struct.timeval* %adtreeStopTime, %struct.timezone* null) #8
  %75 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %77 = call i32 @fflush(%struct._IO_FILE* %76)
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStopTime, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sitofp i64 %79 to double
  %81 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStopTime, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sitofp i64 %82 to double
  %84 = fdiv double %83, 1.000000e+06
  %85 = fadd double %80, %84
  %86 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStartTime, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sitofp i64 %87 to double
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStartTime, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sitofp i64 %90 to double
  %92 = fdiv double %91, 1.000000e+06
  %93 = fadd double %88, %92
  %94 = fsub double %85, %93
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), double %94)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %97 = call i32 @fflush(%struct._IO_FILE* %96)
  %98 = call float @score(%struct.net* %60, %struct.adtree* %64)
  call void @net_free(%struct.net* %60)
  %99 = call %struct.learner* @learner_alloc(%struct.data* %54, %struct.adtree* %64, i64 %2)
  %100 = icmp ne %struct.learner* %99, null
  br i1 %100, label %101, label %102

; <label>:101                                     ; preds = %69
  br label %104

; <label>:102                                     ; preds = %69
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 316, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %104

; <label>:104                                     ; preds = %103, %101
  call void @data_free(%struct.data* %54)
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0))
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %107 = call i32 @fflush(%struct._IO_FILE* %106)
  %108 = call i32 @gettimeofday(%struct.timeval* %learnStartTime, %struct.timezone* null) #8
  call void @learner_run(%struct.learner* %99)
  %109 = call i32 @gettimeofday(%struct.timeval* %learnStopTime, %struct.timezone* null) #8
  %110 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %112 = call i32 @fflush(%struct._IO_FILE* %111)
  %113 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStopTime, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sitofp i64 %114 to double
  %116 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStopTime, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = sitofp i64 %117 to double
  %119 = fdiv double %118, 1.000000e+06
  %120 = fadd double %115, %119
  %121 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStartTime, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = sitofp i64 %122 to double
  %124 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStartTime, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = sitofp i64 %125 to double
  %127 = fdiv double %126, 1.000000e+06
  %128 = fadd double %123, %127
  %129 = fsub double %120, %128
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), double %129)
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %132 = call i32 @fflush(%struct._IO_FILE* %131)
  %133 = getelementptr inbounds %struct.learner, %struct.learner* %99, i32 0, i32 1
  %134 = load %struct.net*, %struct.net** %133, align 8
  %135 = call i64 @net_isCycle(%struct.net* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %138, label %137

; <label>:137                                     ; preds = %104
  br label %140

; <label>:138                                     ; preds = %104
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 343, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %140

; <label>:140                                     ; preds = %139, %137
  %141 = call float @learner_score(%struct.learner* %99)
  %142 = fpext float %141 to double
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), double %142)
  %144 = fpext float %98 to double
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), double %144)
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %147 = call i32 @fflush(%struct._IO_FILE* %146)
  call void @random_free(%struct.random* %48)
  call void @adtree_free(%struct.adtree* %64)
  br label %148

; <label>:148                                     ; preds = %140
  %149 = call i64 (...) @getWorkItemCount()
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i64 %149)
  %151 = call i32 @fflush(%struct._IO_FILE* null)
  br label %152

; <label>:152                                     ; preds = %148
  call void (...) @thread_shutdown()
  call void (...) @RTM_output_stats()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @parseArgs(i64 %argc, i8** %argv) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 0, i32* @opterr, align 4
  call void @setDefaultParams()
  %1 = trunc i64 %argc to i32
  br label %2

; <label>:2                                       ; preds = %21, %0
  %3 = call i32 @getopt(i32 %1, i8** %argv, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0)) #8
  %4 = sext i32 %3 to i64
  %5 = icmp ne i64 %4, -1
  br i1 %5, label %6, label %22

; <label>:6                                       ; preds = %2
  switch i64 %4, label %._crit_edge [
    i64 101, label %._crit_edge1
    i64 105, label %._crit_edge2
    i64 110, label %._crit_edge3
    i64 112, label %._crit_edge4
    i64 114, label %._crit_edge5
    i64 115, label %._crit_edge6
    i64 116, label %._crit_edge7
    i64 118, label %._crit_edge8
    i64 113, label %13
    i64 63, label %17
  ]

._crit_edge8:                                     ; preds = %6
  br label %7

._crit_edge7:                                     ; preds = %6
  br label %7

._crit_edge6:                                     ; preds = %6
  br label %7

._crit_edge5:                                     ; preds = %6
  br label %7

._crit_edge4:                                     ; preds = %6
  br label %7

._crit_edge3:                                     ; preds = %6
  br label %7

._crit_edge2:                                     ; preds = %6
  br label %7

._crit_edge1:                                     ; preds = %6
  br label %7

._crit_edge:                                      ; preds = %6
  br label %18

; <label>:7                                       ; preds = %._crit_edge1, %._crit_edge2, %._crit_edge3, %._crit_edge4, %._crit_edge5, %._crit_edge6, %._crit_edge7, %._crit_edge8
  %8 = load i8*, i8** @optarg, align 8
  %9 = call i64 @atol(i8* %8) #9
  %10 = trunc i64 %4 to i8
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [256 x i64], [256 x i64]* @global_params, i64 0, i64 %11
  store i64 %9, i64* %12, align 8
  br label %21

; <label>:13                                      ; preds = %6
  %14 = load i8*, i8** @optarg, align 8
  %15 = call double @atof(i8* %14) #9
  %16 = fptrunc double %15 to float
  store float %16, float* @global_operationQualityFactor, align 4
  br label %21

; <label>:17                                      ; preds = %6
  br label %18

; <label>:18                                      ; preds = %17, %._crit_edge
  %19 = load i32, i32* @opterr, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @opterr, align 4
  br label %21

; <label>:21                                      ; preds = %18, %13, %7
  br label %2

; <label>:22                                      ; preds = %2
  %.lcssa = phi i64 [ %4, %2 ]
  %23 = load i32, i32* @optind, align 4
  %24 = sext i32 %23 to i64
  br label %25

; <label>:25                                      ; preds = %34, %22
  %i.0 = phi i64 [ %24, %22 ], [ %35, %34 ]
  %26 = icmp slt i64 %i.0, %argc
  br i1 %26, label %27, label %36

; <label>:27                                      ; preds = %25
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = getelementptr inbounds i8*, i8** %argv, i64 %i.0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i8* %30)
  %32 = load i32, i32* @opterr, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @opterr, align 4
  br label %34

; <label>:34                                      ; preds = %27
  %35 = add nsw i64 %i.0, 1
  br label %25

; <label>:36                                      ; preds = %25
  %37 = load i32, i32* @opterr, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %._crit_edge9

._crit_edge9:                                     ; preds = %36
  br label %42

; <label>:39                                      ; preds = %36
  %40 = getelementptr inbounds i8*, i8** %argv, i64 0
  %41 = load i8*, i8** %40, align 8
  call void @displayUsage(i8* %41)
  br label %42

; <label>:42                                      ; preds = %39, %._crit_edge9
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #1 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %__level) #7, !srcloc !2
  %2 = extractvalue { i32, i32, i32, i32 } %1, 0
  %3 = extractvalue { i32, i32, i32, i32 } %1, 1
  %4 = extractvalue { i32, i32, i32, i32 } %1, 2
  %5 = extractvalue { i32, i32, i32, i32 } %1, 3
  %6 = icmp ne i32* %__sig, null
  br i1 %6, label %7, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %8

; <label>:7                                       ; preds = %0
  store i32 %3, i32* %__sig, align 4
  br label %8

; <label>:8                                       ; preds = %7, %._crit_edge
  ret i32 %2
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare void @RTM_spinlock_init(...) #3

declare void @SimStartup(...) #3

declare void @thread_startup(i64) #3

declare i32 @printf(i8*, ...) #3

declare i32 @fflush(%struct._IO_FILE*) #3

declare %struct.random* @random_alloc(...) #3

declare void @random_seed(%struct.random*, i64) #3

declare %struct.data* @data_alloc(i64, i64, %struct.random*) #3

declare %struct.net* @data_generate(%struct.data*, i64, i64, i64) #3

declare i32 @puts(i8*) #3

declare %struct.adtree* @adtree_alloc(...) #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #4

declare void @adtree_make(%struct.adtree*, %struct.data*) #3

; Function Attrs: nounwind uwtable
define internal float @score(%struct.net* %netPtr, %struct.adtree* %adtreePtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call %struct.data* @data_alloc(i64 1, i64 1, %struct.random* null)
  %2 = call %struct.learner* @learner_alloc(%struct.data* %1, %struct.adtree* %adtreePtr, i64 1)
  %3 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 1
  %4 = load %struct.net*, %struct.net** %3, align 8
  %5 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 1
  store %struct.net* %netPtr, %struct.net** %5, align 8
  %6 = call float @learner_score(%struct.learner* %2)
  %7 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 1
  store %struct.net* %4, %struct.net** %7, align 8
  call void @learner_free(%struct.learner* %2)
  call void @data_free(%struct.data* %1)
  ret float %6
}

declare void @net_free(%struct.net*) #3

declare %struct.learner* @learner_alloc(%struct.data*, %struct.adtree*, i64) #3

declare void @data_free(%struct.data*) #3

declare void @learner_run(%struct.learner*) #3

declare i64 @net_isCycle(%struct.net*) #3

declare float @learner_score(%struct.learner*) #3

declare void @random_free(%struct.random*) #3

declare void @adtree_free(%struct.adtree*) #3

declare i64 @getWorkItemCount(...) #3

declare void @thread_shutdown(...) #3

declare void @RTM_output_stats(...) #3

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #5

; Function Attrs: nounwind readonly
declare double @atof(i8*) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @displayUsage(i8* %appName) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i8* %appName)
  %2 = call i32 @puts(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.29, i32 0, i32 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.30, i32 0, i32 0), i32 -1)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i32 0, i32 0), i32 1)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.32, i32 0, i32 0), i32 4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.33, i32 0, i32 0), i32 10)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.34, i32 0, i32 0), double 1.000000e+00)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.35, i32 0, i32 0), i32 4096)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.36, i32 0, i32 0), i32 1)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.37, i32 0, i32 0), i32 1)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.38, i32 0, i32 0), i32 32)
  call void @profiler_print_stats()
  call void @exit(i32 1) #6
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setDefaultParams() #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 -1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 101), align 8
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 105), align 8
  store i64 4, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  store i64 10, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 112), align 16
  store i64 4096, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 114), align 16
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  store i64 32, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 118), align 16
  ret void
}

declare void @profiler_print_stats()

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare void @learner_free(%struct.learner*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145830713, i32 -2145830677, i32 -2145830653}
!2 = !{i32 -2146008866, i32 -2146008830, i32 -2146008806}
