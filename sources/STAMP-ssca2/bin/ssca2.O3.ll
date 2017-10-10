; ModuleID = '../bin/ssca2.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.computeGragh_arg = type { %struct.graph*, %struct.graphSDG* }
%struct.graph = type { i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i8* }
%struct.graphSDG = type { i64*, i64*, i64*, i8*, i64 }
%struct.timezone = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [55 x i8] c"\0AHPCS SSCA #2 Graph Analysis Executable Specification:\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ssca2.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@THREADS = external global i64, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"Number of processors:       %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Problem Scale:              %ld\0A\00", align 1
@SCALE = external global i64, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"Max parallel edges:         %ld\0A\00", align 1
@MAX_PARAL_EDGES = external global i64, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"Percent int weights:        %f\0A\00", align 1
@PERC_INT_WEIGHTS = external global float, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"Probability unidirectional: %f\0A\00", align 1
@PROB_UNIDIRECTIONAL = external global float, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"Probability inter-clique:   %f\0A\00", align 1
@PROB_INTERCL_EDGES = external global float, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"Subgraph edge length:       %ld\0A\00", align 1
@SUBGR_EDGE_LENGTH = external global i64, align 8
@.str.14 = private unnamed_addr constant [33 x i8] c"Kernel 3 data structure:    %ld\0A\00", align 1
@K3_DS = external global i64, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"SDGdata\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"\0ATime taken for Scalable Data Generation is %9.6f sec.\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"\0ATime taken for kernel 1 is %9.6f sec.\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"\0ATime taken for all is %9.6f sec.\0A\0A\00", align 1
@SOUGHT_STRING = external global i8*, align 8
@.str.24 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@str = private unnamed_addr constant [13 x i8] c"\0ARunning...\0A\00"
@str.1 = private unnamed_addr constant [64 x i8] c"\0AScalable Data Generator - genScalData() beginning execution...\00"
@str.2 = private unnamed_addr constant [37 x i8] c"\0A\09genScalData() completed execution.\00"
@str.3 = private unnamed_addr constant [50 x i8] c"\0AKernel 1 - computeGraph() beginning execution...\00"
@str.4 = private unnamed_addr constant [38 x i8] c"\0A\09computeGraph() completed execution.\00"

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %computeGraphArgs = alloca %struct.computeGragh_arg, align 8
  %1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str, i64 0, i64 0))
  %2 = sext i32 %argc to i64
  tail call void @getUserParameters(i64 %2, i8** %argv) #4
  %3 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #5, !srcloc !1
  %4 = extractvalue { i32, i32, i32, i32 } %3, 0
  %5 = icmp sgt i32 %4, 6
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 145, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:7                                       ; preds = %0
  %8 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #5, !srcloc !2
  %9 = extractvalue { i32, i32, i32, i32 } %8, 1
  %10 = and i32 %9, 2048
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %7
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 145, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:13                                      ; preds = %7
  tail call void (...) @RTM_spinlock_init() #4
  %14 = load i64, i64* @THREADS, align 8
  tail call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %14) #4
  %15 = load i64, i64* @THREADS, align 8
  tail call void @thread_startup(i64 %15) #4
  %putchar = tail call i32 @putchar(i32 10) #4
  %16 = load i64, i64* @THREADS, align 8
  %17 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* @SCALE, align 8
  %19 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %21 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i64 %20)
  %22 = load float, float* @PERC_INT_WEIGHTS, align 4
  %23 = fpext float %22 to double
  %24 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), double %23)
  %25 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %26 = fpext float %25 to double
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), double %26)
  %28 = load float, float* @PROB_INTERCL_EDGES, align 4
  %29 = fpext float %28 to double
  %30 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), double %29)
  %31 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %32 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* @K3_DS, align 8
  %34 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i64 %33)
  %putchar1 = tail call i32 @putchar(i32 10) #4
  %puts2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @str.1, i64 0, i64 0))
  %35 = tail call noalias i8* @malloc(i64 40) #4
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %13
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 167, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:38                                      ; preds = %13
  %39 = bitcast i8* %35 to %struct.graphSDG*
  %40 = call i32 @gettimeofday(%struct.timeval* nonnull %start, %struct.timezone* null) #4
  tail call void @genScalData_seq(%struct.graphSDG* %39) #4
  %41 = call i32 @gettimeofday(%struct.timeval* nonnull %stop, %struct.timezone* null) #4
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sitofp i64 %43 to double
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sitofp i64 %46 to double
  %48 = fdiv double %47, 1.000000e+06
  %49 = fadd double %44, %48
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sitofp i64 %51 to double
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sitofp i64 %54 to double
  %56 = fdiv double %55, 1.000000e+06
  %57 = fadd double %52, %56
  %58 = fsub double %49, %57
  %59 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i64 0, i64 0), double %58)
  %puts3 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @str.2, i64 0, i64 0))
  %puts4 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @str.3, i64 0, i64 0))
  %60 = tail call noalias i8* @malloc(i64 120) #4
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

; <label>:62                                      ; preds = %38
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 209, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

; <label>:63                                      ; preds = %38
  %64 = fadd double %58, 0.000000e+00
  %65 = bitcast %struct.computeGragh_arg* %computeGraphArgs to i8**
  store i8* %60, i8** %65, align 8
  %66 = getelementptr inbounds %struct.computeGragh_arg, %struct.computeGragh_arg* %computeGraphArgs, i64 0, i32 1
  %67 = bitcast %struct.graphSDG** %66 to i8**
  store i8* %35, i8** %67, align 8
  %68 = call i32 @gettimeofday(%struct.timeval* nonnull %start, %struct.timezone* null) #4
  %69 = bitcast %struct.computeGragh_arg* %computeGraphArgs to i8*
  call void @thread_start(void (i8*)* nonnull @computeGraph, i8* %69) #4
  %70 = call i32 @gettimeofday(%struct.timeval* nonnull %stop, %struct.timezone* null) #4
  %71 = load i64, i64* %42, align 8
  %72 = sitofp i64 %71 to double
  %73 = load i64, i64* %45, align 8
  %74 = sitofp i64 %73 to double
  %75 = fdiv double %74, 1.000000e+06
  %76 = fadd double %72, %75
  %77 = load i64, i64* %50, align 8
  %78 = sitofp i64 %77 to double
  %79 = load i64, i64* %53, align 8
  %80 = sitofp i64 %79 to double
  %81 = fdiv double %80, 1.000000e+06
  %82 = fadd double %78, %81
  %83 = fsub double %76, %82
  %84 = fadd double %64, %83
  %puts5 = call i32 @puts(i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @str.4, i64 0, i64 0))
  %85 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), double %83)
  %86 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), double %84)
  %87 = getelementptr inbounds i8, i8* %60, i64 48
  %88 = bitcast i8* %87 to i8**
  %89 = load i8*, i8** %88, align 8
  call void @free(i8* %89) #4
  %90 = getelementptr inbounds i8, i8* %60, i64 56
  %91 = bitcast i8* %90 to i8**
  %92 = load i8*, i8** %91, align 8
  call void @free(i8* %92) #4
  %93 = getelementptr inbounds i8, i8* %60, i64 64
  %94 = bitcast i8* %93 to i8**
  %95 = load i8*, i8** %94, align 8
  call void @free(i8* %95) #4
  %96 = getelementptr inbounds i8, i8* %60, i64 72
  %97 = bitcast i8* %96 to i8**
  %98 = load i8*, i8** %97, align 8
  call void @free(i8* %98) #4
  %99 = getelementptr inbounds i8, i8* %60, i64 80
  %100 = bitcast i8* %99 to i8**
  %101 = load i8*, i8** %100, align 8
  call void @free(i8* %101) #4
  %102 = getelementptr inbounds i8, i8* %60, i64 88
  %103 = bitcast i8* %102 to i8**
  %104 = load i8*, i8** %103, align 8
  call void @free(i8* %104) #4
  %105 = getelementptr inbounds i8, i8* %60, i64 96
  %106 = bitcast i8* %105 to i8**
  %107 = load i8*, i8** %106, align 8
  call void @free(i8* %107) #4
  %108 = getelementptr inbounds i8, i8* %60, i64 104
  %109 = bitcast i8* %108 to i8**
  %110 = load i8*, i8** %109, align 8
  call void @free(i8* %110) #4
  %111 = getelementptr inbounds i8, i8* %60, i64 112
  %112 = bitcast i8* %111 to i8**
  %113 = load i8*, i8** %112, align 8
  call void @free(i8* %113) #4
  %114 = load i8*, i8** @SOUGHT_STRING, align 8
  call void @free(i8* %114) #4
  call void @free(i8* nonnull %60) #4
  call void @free(i8* nonnull %35) #4
  %115 = call i64 (...) @getWorkItemCount() #4
  %116 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i64 %115)
  %117 = call i32 @fflush(%struct._IO_FILE* null)
  call void (...) @thread_shutdown() #4
  call void (...) @RTM_output_stats() #4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

declare void @getUserParameters(i64, i8**) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare void @RTM_spinlock_init(...) #2

declare void @SimStartup(...) #2

declare void @thread_startup(i64) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

declare void @genScalData_seq(%struct.graphSDG*) #2

declare void @thread_start(void (i8*)*, i8*) #2

declare void @computeGraph(i8*) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

declare i64 @getWorkItemCount(...) #2

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

declare void @thread_shutdown(...) #2

declare void @RTM_output_stats(...) #2

declare i32 @putchar(i32)

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145962469, i32 -2145962433, i32 -2145962409}
!2 = !{i32 -2145956738, i32 -2145956702, i32 -2145956678}
