; ModuleID = 'bayes.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.data = type { i64, i64, i8*, %struct.random* }
%struct.net = type opaque
%struct.adtree = type { i64, i64, %struct.adtree_node* }
%struct.adtree_node = type { i64, i64, i64, %struct.vector* }
%struct.vector = type { i64, i64, i8** }
%struct.timeval = type { i64, i64 }
%struct.learner = type { %struct.adtree*, %struct.net*, float*, [56 x i8], float, [60 x i8], %struct.learner_task*, [56 x i8], %struct.list*, [56 x i8], i64, [56 x i8] }
%struct.learner_task = type opaque
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.timezone = type { i32, i32 }

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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %numThread = alloca i64, align 8
  %numVar = alloca i64, align 8
  %numRecord = alloca i64, align 8
  %randomSeed = alloca i64, align 8
  %maxNumParent = alloca i64, align 8
  %percentParent = alloca i64, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %randomPtr = alloca %struct.random*, align 8
  %dataPtr = alloca %struct.data*, align 8
  %netPtr = alloca %struct.net*, align 8
  %adtreePtr = alloca %struct.adtree*, align 8
  %adtreeStartTime = alloca %struct.timeval, align 8
  %adtreeStopTime = alloca %struct.timeval, align 8
  %actualScore = alloca float, align 4
  %learnerPtr = alloca %struct.learner*, align 8
  %learnStartTime = alloca %struct.timeval, align 8
  %learnStopTime = alloca %struct.timeval, align 8
  %status = alloca i64, align 8
  %learnScore = alloca float, align 4
  %count = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = load i8**, i8*** %3, align 8
  call void @parseArgs(i64 %5, i8** %6)
  %7 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  store i64 %7, i64* %numThread, align 8
  %8 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 118), align 16
  store i64 %8, i64* %numVar, align 8
  %9 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 114), align 16
  store i64 %9, i64* %numRecord, align 8
  %10 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  store i64 %10, i64* %randomSeed, align 8
  %11 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  store i64 %11, i64* %maxNumParent, align 8
  %12 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 112), align 16
  store i64 %12, i64* %percentParent, align 8
  %13 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 105), align 8
  store i64 %13, i64* @global_insertPenalty, align 8
  %14 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 101), align 8
  store i64 %14, i64* @global_maxNumEdgeLearned, align 8
  br label %15

; <label>:15                                      ; preds = %0
  %16 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %17 = icmp sge i32 %16, 7
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %15
  br i1 true, label %19, label %20

; <label>:19                                      ; preds = %18
  br label %22

; <label>:20                                      ; preds = %18, %15
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 249, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #7, !srcloc !1
  %24 = extractvalue { i32, i32, i32, i32 } %23, 0
  %25 = extractvalue { i32, i32, i32, i32 } %23, 1
  %26 = extractvalue { i32, i32, i32, i32 } %23, 2
  %27 = extractvalue { i32, i32, i32, i32 } %23, 3
  store i32 %24, i32* %a, align 4
  store i32 %25, i32* %b, align 4
  store i32 %26, i32* %c, align 4
  store i32 %27, i32* %d, align 4
  %28 = load i32, i32* %b, align 4
  %29 = and i32 %28, 2048
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

; <label>:31                                      ; preds = %22
  br i1 true, label %32, label %33

; <label>:32                                      ; preds = %31
  br label %35

; <label>:33                                      ; preds = %31, %22
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 249, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %35

; <label>:35                                      ; preds = %34, %32
  call void (...) @RTM_spinlock_init()
  %36 = load i64, i64* %numThread, align 8
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %36)
  br label %37

; <label>:37                                      ; preds = %35
  %38 = load i64, i64* %numThread, align 8
  call void @thread_startup(i64 %38)
  %39 = load i64, i64* %randomSeed, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i64 %39)
  %41 = load i64, i64* %numVar, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i64 %41)
  %43 = load i64, i64* %numRecord, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i64 %43)
  %45 = load i64, i64* %maxNumParent, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), i64 %45)
  %47 = load i64, i64* %percentParent, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i64 %47)
  %49 = load i64, i64* @global_insertPenalty, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i64 %49)
  %51 = load i64, i64* @global_maxNumEdgeLearned, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), i64 %51)
  %53 = load float, float* @global_operationQualityFactor, align 4
  %54 = fpext float %53 to double
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), double %54)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %57 = call i32 @fflush(%struct._IO_FILE* %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %60 = call i32 @fflush(%struct._IO_FILE* %59)
  %61 = call %struct.random* (...) @random_alloc()
  store %struct.random* %61, %struct.random** %randomPtr, align 8
  %62 = load %struct.random*, %struct.random** %randomPtr, align 8
  %63 = icmp ne %struct.random* %62, null
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %37
  br label %67

; <label>:65                                      ; preds = %37
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 271, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %67

; <label>:67                                      ; preds = %66, %64
  %68 = load %struct.random*, %struct.random** %randomPtr, align 8
  %69 = load i64, i64* %randomSeed, align 8
  call void @random_seed(%struct.random* %68, i64 %69)
  %70 = load i64, i64* %numVar, align 8
  %71 = load i64, i64* %numRecord, align 8
  %72 = load %struct.random*, %struct.random** %randomPtr, align 8
  %73 = call %struct.data* @data_alloc(i64 %70, i64 %71, %struct.random* %72)
  store %struct.data* %73, %struct.data** %dataPtr, align 8
  %74 = load %struct.data*, %struct.data** %dataPtr, align 8
  %75 = icmp ne %struct.data* %74, null
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %67
  br label %79

; <label>:77                                      ; preds = %67
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 275, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %79

; <label>:79                                      ; preds = %78, %76
  %80 = load %struct.data*, %struct.data** %dataPtr, align 8
  %81 = load i64, i64* %maxNumParent, align 8
  %82 = load i64, i64* %percentParent, align 8
  %83 = call %struct.net* @data_generate(%struct.data* %80, i64 -1, i64 %81, i64 %82)
  store %struct.net* %83, %struct.net** %netPtr, align 8
  %84 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %86 = call i32 @fflush(%struct._IO_FILE* %85)
  %87 = call %struct.adtree* (...) @adtree_alloc()
  store %struct.adtree* %87, %struct.adtree** %adtreePtr, align 8
  %88 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %89 = icmp ne %struct.adtree* %88, null
  br i1 %89, label %90, label %91

; <label>:90                                      ; preds = %79
  br label %93

; <label>:91                                      ; preds = %79
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 285, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %93

; <label>:93                                      ; preds = %92, %90
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %96 = call i32 @fflush(%struct._IO_FILE* %95)
  %97 = call i32 @gettimeofday(%struct.timeval* %adtreeStartTime, %struct.timezone* null) #8
  %98 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %99 = load %struct.data*, %struct.data** %dataPtr, align 8
  call void @adtree_make(%struct.adtree* %98, %struct.data* %99)
  %100 = call i32 @gettimeofday(%struct.timeval* %adtreeStopTime, %struct.timezone* null) #8
  %101 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %103 = call i32 @fflush(%struct._IO_FILE* %102)
  %104 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStopTime, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sitofp i64 %105 to double
  %107 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStopTime, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = sitofp i64 %108 to double
  %110 = fdiv double %109, 1.000000e+06
  %111 = fadd double %106, %110
  %112 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStartTime, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sitofp i64 %113 to double
  %115 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStartTime, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sitofp i64 %116 to double
  %118 = fdiv double %117, 1.000000e+06
  %119 = fadd double %114, %118
  %120 = fsub double %111, %119
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), double %120)
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %123 = call i32 @fflush(%struct._IO_FILE* %122)
  %124 = load %struct.net*, %struct.net** %netPtr, align 8
  %125 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %126 = call float @score(%struct.net* %124, %struct.adtree* %125)
  store float %126, float* %actualScore, align 4
  %127 = load %struct.net*, %struct.net** %netPtr, align 8
  call void @net_free(%struct.net* %127)
  %128 = load %struct.data*, %struct.data** %dataPtr, align 8
  %129 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %130 = load i64, i64* %numThread, align 8
  %131 = call %struct.learner* @learner_alloc(%struct.data* %128, %struct.adtree* %129, i64 %130)
  store %struct.learner* %131, %struct.learner** %learnerPtr, align 8
  %132 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %133 = icmp ne %struct.learner* %132, null
  br i1 %133, label %134, label %135

; <label>:134                                     ; preds = %93
  br label %137

; <label>:135                                     ; preds = %93
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 316, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %137

; <label>:137                                     ; preds = %136, %134
  %138 = load %struct.data*, %struct.data** %dataPtr, align 8
  call void @data_free(%struct.data* %138)
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0))
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %141 = call i32 @fflush(%struct._IO_FILE* %140)
  %142 = call i32 @gettimeofday(%struct.timeval* %learnStartTime, %struct.timezone* null) #8
  %143 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  call void @learner_run(%struct.learner* %143)
  %144 = call i32 @gettimeofday(%struct.timeval* %learnStopTime, %struct.timezone* null) #8
  %145 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %147 = call i32 @fflush(%struct._IO_FILE* %146)
  %148 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStopTime, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = sitofp i64 %149 to double
  %151 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStopTime, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = sitofp i64 %152 to double
  %154 = fdiv double %153, 1.000000e+06
  %155 = fadd double %150, %154
  %156 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStartTime, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = sitofp i64 %157 to double
  %159 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStartTime, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = sitofp i64 %160 to double
  %162 = fdiv double %161, 1.000000e+06
  %163 = fadd double %158, %162
  %164 = fsub double %155, %163
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), double %164)
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %167 = call i32 @fflush(%struct._IO_FILE* %166)
  %168 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %169 = getelementptr inbounds %struct.learner, %struct.learner* %168, i32 0, i32 1
  %170 = load %struct.net*, %struct.net** %169, align 8
  %171 = call i64 @net_isCycle(%struct.net* %170)
  store i64 %171, i64* %status, align 8
  %172 = load i64, i64* %status, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %175, label %174

; <label>:174                                     ; preds = %137
  br label %177

; <label>:175                                     ; preds = %137
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 343, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %177

; <label>:177                                     ; preds = %176, %174
  %178 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %179 = call float @learner_score(%struct.learner* %178)
  store float %179, float* %learnScore, align 4
  %180 = load float, float* %learnScore, align 4
  %181 = fpext float %180 to double
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), double %181)
  %183 = load float, float* %actualScore, align 4
  %184 = fpext float %183 to double
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), double %184)
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %187 = call i32 @fflush(%struct._IO_FILE* %186)
  %188 = load %struct.random*, %struct.random** %randomPtr, align 8
  call void @random_free(%struct.random* %188)
  %189 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  call void @adtree_free(%struct.adtree* %189)
  br label %190

; <label>:190                                     ; preds = %177
  %191 = call i64 (...) @getWorkItemCount()
  store i64 %191, i64* %count, align 8
  %192 = load i64, i64* %count, align 8
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i64 %192)
  %194 = call i32 @fflush(%struct._IO_FILE* null)
  br label %195

; <label>:195                                     ; preds = %190
  call void (...) @thread_shutdown()
  call void (...) @RTM_output_stats()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @parseArgs(i64 %argc, i8** %argv) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8**, align 8
  %i = alloca i64, align 8
  %opt = alloca i64, align 8
  store i64 %argc, i64* %1, align 8
  store i8** %argv, i8*** %2, align 8
  store i32 0, i32* @opterr, align 4
  call void @setDefaultParams()
  br label %3

; <label>:3                                       ; preds = %27, %0
  %4 = load i64, i64* %1, align 8
  %5 = trunc i64 %4 to i32
  %6 = load i8**, i8*** %2, align 8
  %7 = call i32 @getopt(i32 %5, i8** %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0)) #8
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %opt, align 8
  %9 = icmp ne i64 %8, -1
  br i1 %9, label %10, label %28

; <label>:10                                      ; preds = %3
  %11 = load i64, i64* %opt, align 8
  switch i64 %11, label %24 [
    i64 101, label %12
    i64 105, label %12
    i64 110, label %12
    i64 112, label %12
    i64 114, label %12
    i64 115, label %12
    i64 116, label %12
    i64 118, label %12
    i64 113, label %19
    i64 63, label %23
  ]

; <label>:12                                      ; preds = %10, %10, %10, %10, %10, %10, %10, %10
  %13 = load i8*, i8** @optarg, align 8
  %14 = call i64 @atol(i8* %13) #9
  %15 = load i64, i64* %opt, align 8
  %16 = trunc i64 %15 to i8
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds [256 x i64], [256 x i64]* @global_params, i64 0, i64 %17
  store i64 %14, i64* %18, align 8
  br label %27

; <label>:19                                      ; preds = %10
  %20 = load i8*, i8** @optarg, align 8
  %21 = call double @atof(i8* %20) #9
  %22 = fptrunc double %21 to float
  store float %22, float* @global_operationQualityFactor, align 4
  br label %27

; <label>:23                                      ; preds = %10
  br label %24

; <label>:24                                      ; preds = %10, %23
  %25 = load i32, i32* @opterr, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @opterr, align 4
  br label %27

; <label>:27                                      ; preds = %24, %19, %12
  br label %3

; <label>:28                                      ; preds = %3
  %29 = load i32, i32* @optind, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %i, align 8
  br label %31

; <label>:31                                      ; preds = %44, %28
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* %1, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %47

; <label>:35                                      ; preds = %31
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i64, i64* %i, align 8
  %38 = load i8**, i8*** %2, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 %37
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i8* %40)
  %42 = load i32, i32* @opterr, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @opterr, align 4
  br label %44

; <label>:44                                      ; preds = %35
  %45 = load i64, i64* %i, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %i, align 8
  br label %31

; <label>:47                                      ; preds = %31
  %48 = load i32, i32* @opterr, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

; <label>:50                                      ; preds = %47
  %51 = load i8**, i8*** %2, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  call void @displayUsage(i8* %53)
  br label %54

; <label>:54                                      ; preds = %50, %47
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %__eax = alloca i32, align 4
  %__ebx = alloca i32, align 4
  %__ecx = alloca i32, align 4
  %__edx = alloca i32, align 4
  store i32 %__level, i32* %1, align 4
  store i32* %__sig, i32** %2, align 8
  %3 = load i32, i32* %1, align 4
  %4 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #7, !srcloc !2
  %5 = extractvalue { i32, i32, i32, i32 } %4, 0
  %6 = extractvalue { i32, i32, i32, i32 } %4, 1
  %7 = extractvalue { i32, i32, i32, i32 } %4, 2
  %8 = extractvalue { i32, i32, i32, i32 } %4, 3
  store i32 %5, i32* %__eax, align 4
  store i32 %6, i32* %__ebx, align 4
  store i32 %7, i32* %__ecx, align 4
  store i32 %8, i32* %__edx, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %0
  %12 = load i32, i32* %__ebx, align 4
  %13 = load i32*, i32** %2, align 8
  store i32 %12, i32* %13, align 4
  br label %14

; <label>:14                                      ; preds = %11, %0
  %15 = load i32, i32* %__eax, align 4
  ret i32 %15
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
  %1 = alloca %struct.net*, align 8
  %2 = alloca %struct.adtree*, align 8
  %dataPtr = alloca %struct.data*, align 8
  %learnerPtr = alloca %struct.learner*, align 8
  %tmpNetPtr = alloca %struct.net*, align 8
  %score = alloca float, align 4
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store %struct.adtree* %adtreePtr, %struct.adtree** %2, align 8
  %3 = call %struct.data* @data_alloc(i64 1, i64 1, %struct.random* null)
  store %struct.data* %3, %struct.data** %dataPtr, align 8
  %4 = load %struct.data*, %struct.data** %dataPtr, align 8
  %5 = load %struct.adtree*, %struct.adtree** %2, align 8
  %6 = call %struct.learner* @learner_alloc(%struct.data* %4, %struct.adtree* %5, i64 1)
  store %struct.learner* %6, %struct.learner** %learnerPtr, align 8
  %7 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %8 = getelementptr inbounds %struct.learner, %struct.learner* %7, i32 0, i32 1
  %9 = load %struct.net*, %struct.net** %8, align 8
  store %struct.net* %9, %struct.net** %tmpNetPtr, align 8
  %10 = load %struct.net*, %struct.net** %1, align 8
  %11 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %12 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 1
  store %struct.net* %10, %struct.net** %12, align 8
  %13 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %14 = call float @learner_score(%struct.learner* %13)
  store float %14, float* %score, align 4
  %15 = load %struct.net*, %struct.net** %tmpNetPtr, align 8
  %16 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %17 = getelementptr inbounds %struct.learner, %struct.learner* %16, i32 0, i32 1
  store %struct.net* %15, %struct.net** %17, align 8
  %18 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  call void @learner_free(%struct.learner* %18)
  %19 = load %struct.data*, %struct.data** %dataPtr, align 8
  call void @data_free(%struct.data* %19)
  %20 = load float, float* %score, align 4
  ret float %20
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
  %1 = alloca i8*, align 8
  store i8* %appName, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i8* %2)
  %4 = call i32 @puts(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.29, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.30, i32 0, i32 0), i32 -1)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i32 0, i32 0), i32 1)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.32, i32 0, i32 0), i32 4)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.33, i32 0, i32 0), i32 10)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.34, i32 0, i32 0), double 1.000000e+00)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.35, i32 0, i32 0), i32 4096)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.36, i32 0, i32 0), i32 1)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.37, i32 0, i32 0), i32 1)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.38, i32 0, i32 0), i32 32)
  call void @profiler_print_stats()
  call void @exit(i32 1) #6
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setDefaultParams() #0 {
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

; Function Attrs: noreturn nounwind
declare void @profiler_print_stats()
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
