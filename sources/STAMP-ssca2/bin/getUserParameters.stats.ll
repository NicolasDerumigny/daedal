; ModuleID = 'getUserParameters.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@THREADS = external global i64, align 8
@SCALE = external global i64, align 8
@MAX_PARAL_EDGES = external global i64, align 8
@PERC_INT_WEIGHTS = external global float, align 4
@PROB_UNIDIRECTIONAL = external global float, align 4
@PROB_INTERCL_EDGES = external global float, align 4
@SUBGR_EDGE_LENGTH = external global i64, align 8
@K3_DS = external global i64, align 8
@TOT_VERTICES = external global i64, align 8
@MAX_CLIQUE_SIZE = external global i64, align 8
@MAX_INT_WEIGHT = external global i64, align 8
@MAX_STRLEN = external global i64, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SOUGHT_STRING = external global i8*, align 8
@MAX_CLUSTER_SIZE = external global i64, align 8
@opterr = external global i32, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"i:k:l:p:s:t:u:w:\00", align 1
@optarg = external global i8*, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"K3_DS >= 0 && K3_DS <= 2\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"getUserParameters.c\00", align 1
@__PRETTY_FUNCTION__.parseArgs = private unnamed_addr constant [36 x i8] c"void parseArgs(long, char *const *)\00", align 1
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"\0AOptions:                                       (defaults)\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"    i <FLT>    Probability [i]nter-clique      (%f)\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"    k <UINT>   [k]ind: 0=array 1=list 2=vector (%li)\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"    l <UINT>   Max path [l]ength               (%li)\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"    p <UINT>   Max [p]arallel edges            (%li)\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"    s <UINT>   Problem [s]cale                 (%li)\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"    t <UINT>   Number of [t]hreads             (%li)\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"    u <FLT>    Probability [u]nidirectional    (%f)\0A\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"    w <FLT>    Fraction integer [w]eights      (%f)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @getUserParameters(i64 %argc, i8** %argv) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8**, align 8
  store i64 %argc, i64* %1, align 8
  store i8** %argv, i8*** %2, align 8
  store i64 1, i64* @THREADS, align 8
  store i64 20, i64* @SCALE, align 8
  store i64 3, i64* @MAX_PARAL_EDGES, align 8
  store float 0x3FE3333340000000, float* @PERC_INT_WEIGHTS, align 4
  store float 0x3FB99999A0000000, float* @PROB_UNIDIRECTIONAL, align 4
  store float 5.000000e-01, float* @PROB_INTERCL_EDGES, align 4
  store i64 3, i64* @SUBGR_EDGE_LENGTH, align 8
  store i64 2, i64* @K3_DS, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i8**, i8*** %2, align 8
  call void @parseArgs(i64 %3, i8** %4)
  %5 = load i64, i64* @SCALE, align 8
  %6 = trunc i64 %5 to i32
  %7 = shl i32 1, %6
  %8 = sext i32 %7 to i64
  store i64 %8, i64* @TOT_VERTICES, align 8
  %9 = load i64, i64* @SCALE, align 8
  %10 = sdiv i64 %9, 3
  %11 = trunc i64 %10 to i32
  %12 = shl i32 1, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* @MAX_CLIQUE_SIZE, align 8
  %14 = load i64, i64* @SCALE, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 1, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* @MAX_INT_WEIGHT, align 8
  %18 = load i64, i64* @SCALE, align 8
  store i64 %18, i64* @MAX_STRLEN, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** @SOUGHT_STRING, align 8
  %19 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  store i64 %19, i64* @MAX_CLUSTER_SIZE, align 8
  ret void
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
  br label %3

; <label>:3                                       ; preds = %52, %0
  %4 = load i64, i64* %1, align 8
  %5 = trunc i64 %4 to i32
  %6 = load i8**, i8*** %2, align 8
  %7 = call i32 @getopt(i32 %5, i8** %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #5
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %opt, align 8
  %9 = icmp ne i64 %8, -1
  br i1 %9, label %10, label %53

; <label>:10                                      ; preds = %3
  %11 = load i64, i64* %opt, align 8
  switch i64 %11, label %49 [
    i64 105, label %12
    i64 107, label %16
    i64 108, label %28
    i64 112, label %31
    i64 115, label %34
    i64 116, label %37
    i64 117, label %40
    i64 119, label %44
    i64 63, label %48
  ]

; <label>:12                                      ; preds = %10
  %13 = load i8*, i8** @optarg, align 8
  %14 = call double @atof(i8* %13) #6
  %15 = fptrunc double %14 to float
  store float %15, float* @PROB_INTERCL_EDGES, align 4
  br label %52

; <label>:16                                      ; preds = %10
  %17 = load i8*, i8** @optarg, align 8
  %18 = call i64 @atol(i8* %17) #6
  store i64 %18, i64* @K3_DS, align 8
  %19 = load i64, i64* @K3_DS, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %25

; <label>:21                                      ; preds = %16
  %22 = load i64, i64* @K3_DS, align 8
  %23 = icmp sle i64 %22, 2
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %21
  br label %27

; <label>:25                                      ; preds = %21, %16
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.parseArgs, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %27

; <label>:27                                      ; preds = %26, %24
  br label %52

; <label>:28                                      ; preds = %10
  %29 = load i8*, i8** @optarg, align 8
  %30 = call i64 @atol(i8* %29) #6
  store i64 %30, i64* @SUBGR_EDGE_LENGTH, align 8
  br label %52

; <label>:31                                      ; preds = %10
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i64 @atol(i8* %32) #6
  store i64 %33, i64* @MAX_PARAL_EDGES, align 8
  br label %52

; <label>:34                                      ; preds = %10
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i64 @atol(i8* %35) #6
  store i64 %36, i64* @SCALE, align 8
  br label %52

; <label>:37                                      ; preds = %10
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i64 @atol(i8* %38) #6
  store i64 %39, i64* @THREADS, align 8
  br label %52

; <label>:40                                      ; preds = %10
  %41 = load i8*, i8** @optarg, align 8
  %42 = call double @atof(i8* %41) #6
  %43 = fptrunc double %42 to float
  store float %43, float* @PROB_UNIDIRECTIONAL, align 4
  br label %52

; <label>:44                                      ; preds = %10
  %45 = load i8*, i8** @optarg, align 8
  %46 = call double @atof(i8* %45) #6
  %47 = fptrunc double %46 to float
  store float %47, float* @PERC_INT_WEIGHTS, align 4
  br label %52

; <label>:48                                      ; preds = %10
  br label %49

; <label>:49                                      ; preds = %10, %48
  %50 = load i32, i32* @opterr, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @opterr, align 4
  br label %52

; <label>:52                                      ; preds = %49, %44, %40, %37, %34, %31, %28, %27, %12
  br label %3

; <label>:53                                      ; preds = %3
  %54 = load i32, i32* @optind, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %i, align 8
  br label %56

; <label>:56                                      ; preds = %69, %53
  %57 = load i64, i64* %i, align 8
  %58 = load i64, i64* %1, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %72

; <label>:60                                      ; preds = %56
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = load i64, i64* %i, align 8
  %63 = load i8**, i8*** %2, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 %62
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* %65)
  %67 = load i32, i32* @opterr, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @opterr, align 4
  br label %69

; <label>:69                                      ; preds = %60
  %70 = load i64, i64* %i, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %i, align 8
  br label %56

; <label>:72                                      ; preds = %56
  %73 = load i32, i32* @opterr, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

; <label>:75                                      ; preds = %72
  %76 = load i8**, i8*** %2, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  call void @displayUsage(i8* %78)
  br label %79

; <label>:79                                      ; preds = %75, %72
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare double @atof(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal void @displayUsage(i8* %appName) #0 {
  %1 = alloca i8*, align 8
  store i8* %appName, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* %2)
  %4 = call i32 @puts(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i32 0, i32 0))
  %5 = load float, float* @PROB_INTERCL_EDGES, align 4
  %6 = fpext float %5 to double
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i32 0, i32 0), double %6)
  %8 = load i64, i64* @K3_DS, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i64 %8)
  %10 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i64 %10)
  %12 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i64 %12)
  %14 = load i64, i64* @SCALE, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i64 %14)
  %16 = load i64, i64* @THREADS, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i64 %16)
  %18 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %19 = fpext float %18 to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i32 0, i32 0), double %19)
  %21 = load float, float* @PERC_INT_WEIGHTS, align 4
  %22 = fpext float %21 to double
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i32 0, i32 0), double %22)
  call void @profiler_print_stats()
  call void @exit(i32 1) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #4

declare i32 @puts(i8*) #4

; Function Attrs: noreturn nounwind
declare void @profiler_print_stats()
declare void @exit(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
