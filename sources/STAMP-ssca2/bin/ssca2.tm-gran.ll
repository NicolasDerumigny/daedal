; ModuleID = '../bin/ssca2.marked.ll'
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
@.str.1 = private unnamed_addr constant [14 x i8] c"\0ARunning...\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"RTM is not present\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ssca2.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@THREADS = external global i64, align 8
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
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
@.str.15 = private unnamed_addr constant [65 x i8] c"\0AScalable Data Generator - genScalData() beginning execution...\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"SDGdata\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"\0ATime taken for Scalable Data Generation is %9.6f sec.\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"\0A\09genScalData() completed execution.\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"\0AKernel 1 - computeGraph() beginning execution...\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"\0A\09computeGraph() completed execution.\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"\0ATime taken for kernel 1 is %9.6f sec.\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"\0ATime taken for all is %9.6f sec.\0A\0A\00", align 1
@SOUGHT_STRING = external global i8*, align 8
@.str.24 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %computeGraphArgs = alloca %struct.computeGragh_arg, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  %3 = sext i32 %argc to i64
  call void @getUserParameters(i64 %3, i8** %argv)
  br label %4

; <label>:4                                       ; preds = %0
  %5 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %6 = icmp sge i32 %5, 7
  br i1 %6, label %7, label %._crit_edge

._crit_edge:                                      ; preds = %4
  br label %9

; <label>:7                                       ; preds = %4
  br i1 true, label %8, label %._crit_edge1

._crit_edge1:                                     ; preds = %7
  br label %9

; <label>:8                                       ; preds = %7
  br label %11

; <label>:9                                       ; preds = %._crit_edge1, %._crit_edge
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  %12 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #6, !srcloc !1
  %13 = extractvalue { i32, i32, i32, i32 } %12, 0
  %14 = extractvalue { i32, i32, i32, i32 } %12, 1
  %15 = extractvalue { i32, i32, i32, i32 } %12, 2
  %16 = extractvalue { i32, i32, i32, i32 } %12, 3
  %17 = and i32 %14, 2048
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %._crit_edge2

._crit_edge2:                                     ; preds = %11
  br label %21

; <label>:19                                      ; preds = %11
  br i1 true, label %20, label %._crit_edge3

._crit_edge3:                                     ; preds = %19
  br label %21

; <label>:20                                      ; preds = %19
  br label %23

; <label>:21                                      ; preds = %._crit_edge3, %._crit_edge2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  call void (...) @RTM_spinlock_init()
  %24 = load i64, i64* @THREADS, align 8
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %24)
  br label %25

; <label>:25                                      ; preds = %23
  %26 = load i64, i64* @THREADS, align 8
  call void @thread_startup(i64 %26)
  %27 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  %28 = load i64, i64* @THREADS, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i64 %28)
  %30 = load i64, i64* @SCALE, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i64 %30)
  %32 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i64 %32)
  %34 = load float, float* @PERC_INT_WEIGHTS, align 4
  %35 = fpext float %34 to double
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), double %35)
  %37 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %38 = fpext float %37 to double
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0), double %38)
  %40 = load float, float* @PROB_INTERCL_EDGES, align 4
  %41 = fpext float %40 to double
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), double %41)
  %43 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), i64 %43)
  %45 = load i64, i64* @K3_DS, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i64 %45)
  %47 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0))
  %49 = call noalias i8* @malloc(i64 40) #7
  %50 = bitcast i8* %49 to %struct.graphSDG*
  %51 = icmp ne %struct.graphSDG* %50, null
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %25
  br label %55

; <label>:53                                      ; preds = %25
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 167, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:55                                      ; preds = %54, %52
  %56 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #7
  call void @genScalData_seq(%struct.graphSDG* %50)
  %57 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #7
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sitofp i64 %59 to double
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sitofp i64 %62 to double
  %64 = fdiv double %63, 1.000000e+06
  %65 = fadd double %60, %64
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sitofp i64 %67 to double
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sitofp i64 %70 to double
  %72 = fdiv double %71, 1.000000e+06
  %73 = fadd double %68, %72
  %74 = fsub double %65, %73
  %75 = fadd double 0.000000e+00, %74
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i32 0, i32 0), double %74)
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i32 0, i32 0))
  %79 = call noalias i8* @malloc(i64 120) #7
  %80 = bitcast i8* %79 to %struct.graph*
  %81 = icmp ne %struct.graph* %80, null
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %55
  br label %85

; <label>:83                                      ; preds = %55
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 209, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %85

; <label>:85                                      ; preds = %84, %82
  %86 = getelementptr inbounds %struct.computeGragh_arg, %struct.computeGragh_arg* %computeGraphArgs, i32 0, i32 0
  store %struct.graph* %80, %struct.graph** %86, align 8
  %87 = getelementptr inbounds %struct.computeGragh_arg, %struct.computeGragh_arg* %computeGraphArgs, i32 0, i32 1
  store %struct.graphSDG* %50, %struct.graphSDG** %87, align 8
  %88 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #7
  %89 = bitcast %struct.computeGragh_arg* %computeGraphArgs to i8*
  call void @thread_start(void (i8*)* @computeGraph, i8* %89)
  %90 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #7
  %91 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sitofp i64 %92 to double
  %94 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = sitofp i64 %95 to double
  %97 = fdiv double %96, 1.000000e+06
  %98 = fadd double %93, %97
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sitofp i64 %100 to double
  %102 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sitofp i64 %103 to double
  %105 = fdiv double %104, 1.000000e+06
  %106 = fadd double %101, %105
  %107 = fsub double %98, %106
  %108 = fadd double %75, %107
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i32 0, i32 0))
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0), double %107)
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0), double %108)
  %112 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 6
  %113 = load i64*, i64** %112, align 8
  %114 = bitcast i64* %113 to i8*
  call void @free(i8* %114) #7
  %115 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 7
  %116 = load i64*, i64** %115, align 8
  %117 = bitcast i64* %116 to i8*
  call void @free(i8* %117) #7
  %118 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 8
  %119 = load i64*, i64** %118, align 8
  %120 = bitcast i64* %119 to i8*
  call void @free(i8* %120) #7
  %121 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 9
  %122 = load i64*, i64** %121, align 8
  %123 = bitcast i64* %122 to i8*
  call void @free(i8* %123) #7
  %124 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 10
  %125 = load i64*, i64** %124, align 8
  %126 = bitcast i64* %125 to i8*
  call void @free(i8* %126) #7
  %127 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 11
  %128 = load i64*, i64** %127, align 8
  %129 = bitcast i64* %128 to i8*
  call void @free(i8* %129) #7
  %130 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 12
  %131 = load i64*, i64** %130, align 8
  %132 = bitcast i64* %131 to i8*
  call void @free(i8* %132) #7
  %133 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 13
  %134 = load i64*, i64** %133, align 8
  %135 = bitcast i64* %134 to i8*
  call void @free(i8* %135) #7
  %136 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 14
  %137 = load i8*, i8** %136, align 8
  call void @free(i8* %137) #7
  %138 = load i8*, i8** @SOUGHT_STRING, align 8
  call void @free(i8* %138) #7
  %139 = bitcast %struct.graph* %80 to i8*
  call void @free(i8* %139) #7
  %140 = bitcast %struct.graphSDG* %50 to i8*
  call void @free(i8* %140) #7
  br label %141

; <label>:141                                     ; preds = %85
  %142 = call i64 (...) @getWorkItemCount()
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i64 %142)
  %144 = call i32 @fflush(%struct._IO_FILE* null)
  br label %145

; <label>:145                                     ; preds = %141
  call void (...) @thread_shutdown()
  call void (...) @RTM_output_stats()
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare void @getUserParameters(i64, i8**) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #2 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %__level) #6, !srcloc !2
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

; <label>:8                                       ; preds = %._crit_edge, %7
  ret i32 %2
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare void @RTM_spinlock_init(...) #1

declare void @SimStartup(...) #1

declare void @thread_startup(i64) #1

declare i32 @puts(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #4

declare void @genScalData_seq(%struct.graphSDG*) #1

declare void @thread_start(void (i8*)*, i8*) #1

declare void @computeGraph(i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i64 @getWorkItemCount(...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @thread_shutdown(...) #1

declare void @RTM_output_stats(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145956738, i32 -2145956702, i32 -2145956678}
!2 = !{i32 -2145962469, i32 -2145962433, i32 -2145962409}
