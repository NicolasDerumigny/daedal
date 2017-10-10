; ModuleID = 'ssca2.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graphSDG = type { i64*, i64*, i64*, i8*, i64 }
%struct.graph = type { i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i8* }
%struct.timeval = type { i64, i64 }
%struct.computeGragh_arg = type { %struct.graph*, %struct.graphSDG* }
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %SDGdata = alloca %struct.graphSDG*, align 8
  %G = alloca %struct.graph*, align 8
  %totalTime = alloca double, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %time = alloca double, align 8
  %computeGraphArgs = alloca %struct.computeGragh_arg, align 8
  %count = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store double 0.000000e+00, double* %totalTime, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = load i8**, i8*** %3, align 8
  call void @getUserParameters(i64 %7, i8** %8)
  br label %9

; <label>:9                                       ; preds = %0
  %10 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %11 = icmp sge i32 %10, 7
  br i1 %11, label %12, label %14

; <label>:12                                      ; preds = %9
  br i1 true, label %13, label %14

; <label>:13                                      ; preds = %12
  br label %16

; <label>:14                                      ; preds = %12, %9
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #6, !srcloc !1
  %18 = extractvalue { i32, i32, i32, i32 } %17, 0
  %19 = extractvalue { i32, i32, i32, i32 } %17, 1
  %20 = extractvalue { i32, i32, i32, i32 } %17, 2
  %21 = extractvalue { i32, i32, i32, i32 } %17, 3
  store i32 %18, i32* %a, align 4
  store i32 %19, i32* %b, align 4
  store i32 %20, i32* %c, align 4
  store i32 %21, i32* %d, align 4
  %22 = load i32, i32* %b, align 4
  %23 = and i32 %22, 2048
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

; <label>:25                                      ; preds = %16
  br i1 true, label %26, label %27

; <label>:26                                      ; preds = %25
  br label %29

; <label>:27                                      ; preds = %25, %16
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %26
  call void (...) @RTM_spinlock_init()
  %30 = load i64, i64* @THREADS, align 8
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %30)
  br label %31

; <label>:31                                      ; preds = %29
  %32 = load i64, i64* @THREADS, align 8
  call void @thread_startup(i64 %32)
  %33 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  %34 = load i64, i64* @THREADS, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i64 %34)
  %36 = load i64, i64* @SCALE, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i64 %36)
  %38 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i64 %38)
  %40 = load float, float* @PERC_INT_WEIGHTS, align 4
  %41 = fpext float %40 to double
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), double %41)
  %43 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %44 = fpext float %43 to double
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0), double %44)
  %46 = load float, float* @PROB_INTERCL_EDGES, align 4
  %47 = fpext float %46 to double
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), double %47)
  %49 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), i64 %49)
  %51 = load i64, i64* @K3_DS, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i64 %51)
  %53 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0))
  %55 = call noalias i8* @malloc(i64 40) #7
  %56 = bitcast i8* %55 to %struct.graphSDG*
  store %struct.graphSDG* %56, %struct.graphSDG** %SDGdata, align 8
  %57 = load %struct.graphSDG*, %struct.graphSDG** %SDGdata, align 8
  %58 = icmp ne %struct.graphSDG* %57, null
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %31
  br label %62

; <label>:60                                      ; preds = %31
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 167, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %62

; <label>:62                                      ; preds = %61, %59
  %63 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #7
  %64 = load %struct.graphSDG*, %struct.graphSDG** %SDGdata, align 8
  call void @genScalData_seq(%struct.graphSDG* %64)
  %65 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #7
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sitofp i64 %67 to double
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sitofp i64 %70 to double
  %72 = fdiv double %71, 1.000000e+06
  %73 = fadd double %68, %72
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sitofp i64 %75 to double
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sitofp i64 %78 to double
  %80 = fdiv double %79, 1.000000e+06
  %81 = fadd double %76, %80
  %82 = fsub double %73, %81
  store double %82, double* %time, align 8
  %83 = load double, double* %time, align 8
  %84 = load double, double* %totalTime, align 8
  %85 = fadd double %84, %83
  store double %85, double* %totalTime, align 8
  %86 = load double, double* %time, align 8
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i32 0, i32 0), double %86)
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i32 0, i32 0))
  %90 = call noalias i8* @malloc(i64 120) #7
  %91 = bitcast i8* %90 to %struct.graph*
  store %struct.graph* %91, %struct.graph** %G, align 8
  %92 = load %struct.graph*, %struct.graph** %G, align 8
  %93 = icmp ne %struct.graph* %92, null
  br i1 %93, label %94, label %95

; <label>:94                                      ; preds = %62
  br label %97

; <label>:95                                      ; preds = %62
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 209, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %97

; <label>:97                                      ; preds = %96, %94
  %98 = load %struct.graph*, %struct.graph** %G, align 8
  %99 = getelementptr inbounds %struct.computeGragh_arg, %struct.computeGragh_arg* %computeGraphArgs, i32 0, i32 0
  store %struct.graph* %98, %struct.graph** %99, align 8
  %100 = load %struct.graphSDG*, %struct.graphSDG** %SDGdata, align 8
  %101 = getelementptr inbounds %struct.computeGragh_arg, %struct.computeGragh_arg* %computeGraphArgs, i32 0, i32 1
  store %struct.graphSDG* %100, %struct.graphSDG** %101, align 8
  %102 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #7
  %103 = bitcast %struct.computeGragh_arg* %computeGraphArgs to i8*
  call void @thread_start(void (i8*)* @computeGraph, i8* %103)
  %104 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #7
  %105 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sitofp i64 %106 to double
  %108 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sitofp i64 %109 to double
  %111 = fdiv double %110, 1.000000e+06
  %112 = fadd double %107, %111
  %113 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sitofp i64 %114 to double
  %116 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = sitofp i64 %117 to double
  %119 = fdiv double %118, 1.000000e+06
  %120 = fadd double %115, %119
  %121 = fsub double %112, %120
  store double %121, double* %time, align 8
  %122 = load double, double* %time, align 8
  %123 = load double, double* %totalTime, align 8
  %124 = fadd double %123, %122
  store double %124, double* %totalTime, align 8
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i32 0, i32 0))
  %126 = load double, double* %time, align 8
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0), double %126)
  %128 = load double, double* %totalTime, align 8
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0), double %128)
  %130 = load %struct.graph*, %struct.graph** %G, align 8
  %131 = getelementptr inbounds %struct.graph, %struct.graph* %130, i32 0, i32 6
  %132 = load i64*, i64** %131, align 8
  %133 = bitcast i64* %132 to i8*
  call void @free(i8* %133) #7
  %134 = load %struct.graph*, %struct.graph** %G, align 8
  %135 = getelementptr inbounds %struct.graph, %struct.graph* %134, i32 0, i32 7
  %136 = load i64*, i64** %135, align 8
  %137 = bitcast i64* %136 to i8*
  call void @free(i8* %137) #7
  %138 = load %struct.graph*, %struct.graph** %G, align 8
  %139 = getelementptr inbounds %struct.graph, %struct.graph* %138, i32 0, i32 8
  %140 = load i64*, i64** %139, align 8
  %141 = bitcast i64* %140 to i8*
  call void @free(i8* %141) #7
  %142 = load %struct.graph*, %struct.graph** %G, align 8
  %143 = getelementptr inbounds %struct.graph, %struct.graph* %142, i32 0, i32 9
  %144 = load i64*, i64** %143, align 8
  %145 = bitcast i64* %144 to i8*
  call void @free(i8* %145) #7
  %146 = load %struct.graph*, %struct.graph** %G, align 8
  %147 = getelementptr inbounds %struct.graph, %struct.graph* %146, i32 0, i32 10
  %148 = load i64*, i64** %147, align 8
  %149 = bitcast i64* %148 to i8*
  call void @free(i8* %149) #7
  %150 = load %struct.graph*, %struct.graph** %G, align 8
  %151 = getelementptr inbounds %struct.graph, %struct.graph* %150, i32 0, i32 11
  %152 = load i64*, i64** %151, align 8
  %153 = bitcast i64* %152 to i8*
  call void @free(i8* %153) #7
  %154 = load %struct.graph*, %struct.graph** %G, align 8
  %155 = getelementptr inbounds %struct.graph, %struct.graph* %154, i32 0, i32 12
  %156 = load i64*, i64** %155, align 8
  %157 = bitcast i64* %156 to i8*
  call void @free(i8* %157) #7
  %158 = load %struct.graph*, %struct.graph** %G, align 8
  %159 = getelementptr inbounds %struct.graph, %struct.graph* %158, i32 0, i32 13
  %160 = load i64*, i64** %159, align 8
  %161 = bitcast i64* %160 to i8*
  call void @free(i8* %161) #7
  %162 = load %struct.graph*, %struct.graph** %G, align 8
  %163 = getelementptr inbounds %struct.graph, %struct.graph* %162, i32 0, i32 14
  %164 = load i8*, i8** %163, align 8
  call void @free(i8* %164) #7
  %165 = load i8*, i8** @SOUGHT_STRING, align 8
  call void @free(i8* %165) #7
  %166 = load %struct.graph*, %struct.graph** %G, align 8
  %167 = bitcast %struct.graph* %166 to i8*
  call void @free(i8* %167) #7
  %168 = load %struct.graphSDG*, %struct.graphSDG** %SDGdata, align 8
  %169 = bitcast %struct.graphSDG* %168 to i8*
  call void @free(i8* %169) #7
  br label %170

; <label>:170                                     ; preds = %97
  %171 = call i64 (...) @getWorkItemCount()
  store i64 %171, i64* %count, align 8
  %172 = load i64, i64* %count, align 8
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i64 %172)
  %174 = call i32 @fflush(%struct._IO_FILE* null)
  br label %175

; <label>:175                                     ; preds = %170
  call void (...) @thread_shutdown()
  call void (...) @RTM_output_stats()
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare void @getUserParameters(i64, i8**) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %__eax = alloca i32, align 4
  %__ebx = alloca i32, align 4
  %__ecx = alloca i32, align 4
  %__edx = alloca i32, align 4
  store i32 %__level, i32* %1, align 4
  store i32* %__sig, i32** %2, align 8
  %3 = load i32, i32* %1, align 4
  %4 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %3) #6, !srcloc !2
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
