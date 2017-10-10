; ModuleID = '../bin/genome.tm-gran.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.gene = type { i64, i8*, %struct.bitmap* }
%struct.bitmap = type { i64, i64, i64* }
%struct.segments = type { i64, i64, %struct.vector*, i8** }
%struct.vector = type { i64, i64, i8** }
%struct.sequencer = type { i8*, %struct.segments*, %struct.hashtable*, %struct.endInfoEntry*, %struct.table**, %struct.constructEntry*, %struct.table*, i64 }
%struct.hashtable = type { %struct.list**, i64, i64 (i8*)*, i64 (%struct.pair*, %struct.pair*)*, i64, i64 }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.pair = type { i8*, i8* }
%struct.endInfoEntry = type opaque
%struct.constructEntry = type opaque
%struct.table = type { %struct.list**, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Creating gene and segments... \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@global_params = common global [256 x i64] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"RTM is not present\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"genome.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"randomPtr != NULL\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"genePtr != NULL\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"segmentsPtr != NULL\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"sequencerPtr != NULL\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"done.\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Gene length     = %li\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Segment length  = %li\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Number segments = %li\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Sequencing gene... \00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Time = %lf\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Sequence matches gene: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"gene     = %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"sequence = %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"strlen(sequence) >= strlen(gene)\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Deallocating memory... \00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@opterr = external global i32, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"g:n:s:t:\00", align 1
@optarg = external global i8*, align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.24 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"\0AOptions:                                (defaults)\0A\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"    g <UINT>   Length of [g]ene         (%li)\0A\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"    n <UINT>   Min [n]umber of segments (%li)\0A\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"    s <UINT>   Length of [s]egment      (%li)\0A\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"    t <UINT>   Number of [t]hreads      (%li)\0A\00", align 1
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [61 x i8] c"The actual number of segments created may be greater than -n\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"in order to completely cover the gene.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sext i32 %argc to i64
  call void @parseArgs(i64 %1, i8** %argv)
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i32 @fflush(%struct._IO_FILE* %3)
  %5 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 103), align 8
  %6 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  %7 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  %8 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  br label %9

; <label>:9                                       ; preds = %0
  %10 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %11 = icmp sge i32 %10, 7
  br i1 %11, label %12, label %._crit_edge

._crit_edge:                                      ; preds = %9
  br label %14

; <label>:12                                      ; preds = %9
  br i1 true, label %13, label %._crit_edge1

._crit_edge1:                                     ; preds = %12
  br label %14

; <label>:13                                      ; preds = %12
  br label %16

; <label>:14                                      ; preds = %._crit_edge1, %._crit_edge
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #7, !srcloc !1
  %18 = extractvalue { i32, i32, i32, i32 } %17, 0
  %19 = extractvalue { i32, i32, i32, i32 } %17, 1
  %20 = extractvalue { i32, i32, i32, i32 } %17, 2
  %21 = extractvalue { i32, i32, i32, i32 } %17, 3
  %22 = and i32 %19, 2048
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %._crit_edge2

._crit_edge2:                                     ; preds = %16
  br label %26

; <label>:24                                      ; preds = %16
  br i1 true, label %25, label %._crit_edge3

._crit_edge3:                                     ; preds = %24
  br label %26

; <label>:25                                      ; preds = %24
  br label %28

; <label>:26                                      ; preds = %._crit_edge3, %._crit_edge2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %28

; <label>:28                                      ; preds = %27, %25
  call void (...) @RTM_spinlock_init()
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %8)
  br label %29

; <label>:29                                      ; preds = %28
  call void @thread_startup(i64 %8)
  %30 = call %struct.random* (...) @random_alloc()
  %31 = icmp ne %struct.random* %30, null
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %29
  br label %35

; <label>:33                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 206, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %35

; <label>:35                                      ; preds = %34, %32
  call void @random_seed(%struct.random* %30, i64 0)
  %36 = call %struct.gene* @gene_alloc(i64 %5)
  %37 = icmp ne %struct.gene* %36, null
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %35
  br label %41

; <label>:39                                      ; preds = %35
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %41

; <label>:41                                      ; preds = %40, %38
  call void @gene_create(%struct.gene* %36, %struct.random* %30)
  %42 = getelementptr inbounds %struct.gene, %struct.gene* %36, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call %struct.segments* @segments_alloc(i64 %6, i64 %7)
  %45 = icmp ne %struct.segments* %44, null
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %41
  br label %49

; <label>:47                                      ; preds = %41
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 215, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %49

; <label>:49                                      ; preds = %48, %46
  call void @segments_create(%struct.segments* %44, %struct.gene* %36, %struct.random* %30)
  %50 = call %struct.sequencer* @sequencer_alloc(i64 %5, i64 %6, %struct.segments* %44)
  %51 = icmp ne %struct.sequencer* %50, null
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %49
  br label %55

; <label>:53                                      ; preds = %49
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 218, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:55                                      ; preds = %54, %52
  %56 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %57 = getelementptr inbounds %struct.gene, %struct.gene* %36, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i64 %58)
  %60 = getelementptr inbounds %struct.segments, %struct.segments* %44, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i64 %61)
  %63 = getelementptr inbounds %struct.segments, %struct.segments* %44, i32 0, i32 2
  %64 = load %struct.vector*, %struct.vector** %63, align 8
  %65 = call i64 @vector_getSize(%struct.vector* %64)
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i64 %65)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %68 = call i32 @fflush(%struct._IO_FILE* %67)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %71 = call i32 @fflush(%struct._IO_FILE* %70)
  %72 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #8
  %73 = bitcast %struct.sequencer* %50 to i8*
  call void @thread_start(void (i8*)* @sequencer_run, i8* %73)
  %74 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #8
  %75 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sitofp i64 %77 to double
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sitofp i64 %80 to double
  %82 = fdiv double %81, 1.000000e+06
  %83 = fadd double %78, %82
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sitofp i64 %85 to double
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sitofp i64 %88 to double
  %90 = fdiv double %89, 1.000000e+06
  %91 = fadd double %86, %90
  %92 = fsub double %83, %91
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), double %92)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %95 = call i32 @fflush(%struct._IO_FILE* %94)
  %96 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %50, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strcmp(i8* %43, i8* %97) #9
  %99 = icmp ne i32 %98, 0
  %100 = select i1 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), i8* %100)
  %102 = icmp ne i32 %98, 0
  br i1 %102, label %103, label %._crit_edge4

._crit_edge4:                                     ; preds = %55
  br label %106

; <label>:103                                     ; preds = %55
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* %43)
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8* %97)
  br label %106

; <label>:106                                     ; preds = %103, %._crit_edge4
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %108 = call i32 @fflush(%struct._IO_FILE* %107)
  %109 = call i64 @strlen(i8* %97) #9
  %110 = call i64 @strlen(i8* %43) #9
  %111 = icmp uge i64 %109, %110
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %106
  br label %115

; <label>:113                                     ; preds = %106
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 255, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %115

; <label>:115                                     ; preds = %114, %112
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0))
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %118 = call i32 @fflush(%struct._IO_FILE* %117)
  call void @sequencer_free(%struct.sequencer* %50)
  call void @segments_free(%struct.segments* %44)
  call void @gene_free(%struct.gene* %36)
  call void @random_free(%struct.random* %30)
  %119 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %121 = call i32 @fflush(%struct._IO_FILE* %120)
  br label %122

; <label>:122                                     ; preds = %115
  %123 = call i64 (...) @getWorkItemCount()
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i64 %123)
  %125 = call i32 @fflush(%struct._IO_FILE* null)
  br label %126

; <label>:126                                     ; preds = %122
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

; <label>:2                                       ; preds = %17, %0
  %3 = call i32 @getopt(i32 %1, i8** %argv, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)) #8
  %4 = sext i32 %3 to i64
  %5 = icmp ne i64 %4, -1
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %2
  switch i64 %4, label %._crit_edge [
    i64 103, label %._crit_edge1
    i64 110, label %._crit_edge2
    i64 115, label %._crit_edge3
    i64 116, label %._crit_edge4
    i64 63, label %13
  ]

._crit_edge4:                                     ; preds = %6
  br label %7

._crit_edge3:                                     ; preds = %6
  br label %7

._crit_edge2:                                     ; preds = %6
  br label %7

._crit_edge1:                                     ; preds = %6
  br label %7

._crit_edge:                                      ; preds = %6
  br label %14

; <label>:7                                       ; preds = %._crit_edge1, %._crit_edge2, %._crit_edge3, %._crit_edge4
  %8 = load i8*, i8** @optarg, align 8
  %9 = call i64 @atol(i8* %8) #9
  %10 = trunc i64 %4 to i8
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [256 x i64], [256 x i64]* @global_params, i64 0, i64 %11
  store i64 %9, i64* %12, align 8
  br label %17

; <label>:13                                      ; preds = %6
  br label %14

; <label>:14                                      ; preds = %13, %._crit_edge
  %15 = load i32, i32* @opterr, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @opterr, align 4
  br label %17

; <label>:17                                      ; preds = %14, %7
  br label %2

; <label>:18                                      ; preds = %2
  %.lcssa = phi i64 [ %4, %2 ]
  %19 = load i32, i32* @optind, align 4
  %20 = sext i32 %19 to i64
  br label %21

; <label>:21                                      ; preds = %30, %18
  %i.0 = phi i64 [ %20, %18 ], [ %31, %30 ]
  %22 = icmp slt i64 %i.0, %argc
  br i1 %22, label %23, label %32

; <label>:23                                      ; preds = %21
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = getelementptr inbounds i8*, i8** %argv, i64 %i.0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* %26)
  %28 = load i32, i32* @opterr, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @opterr, align 4
  br label %30

; <label>:30                                      ; preds = %23
  %31 = add nsw i64 %i.0, 1
  br label %21

; <label>:32                                      ; preds = %21
  %33 = load i32, i32* @opterr, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %._crit_edge5

._crit_edge5:                                     ; preds = %32
  br label %38

; <label>:35                                      ; preds = %32
  %36 = getelementptr inbounds i8*, i8** %argv, i64 0
  %37 = load i8*, i8** %36, align 8
  call void @displayUsage(i8* %37)
  br label %38

; <label>:38                                      ; preds = %35, %._crit_edge5
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #2 {
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
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare void @RTM_spinlock_init(...) #1

declare void @SimStartup(...) #1

declare void @thread_startup(i64) #1

declare %struct.random* @random_alloc(...) #1

declare void @random_seed(%struct.random*, i64) #1

declare %struct.gene* @gene_alloc(i64) #1

declare void @gene_create(%struct.gene*, %struct.random*) #1

declare %struct.segments* @segments_alloc(i64, i64) #1

declare void @segments_create(%struct.segments*, %struct.gene*, %struct.random*) #1

declare %struct.sequencer* @sequencer_alloc(i64, i64, %struct.segments*) #1

declare i32 @puts(i8*) #1

declare i64 @vector_getSize(%struct.vector*) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #4

declare void @thread_start(void (i8*)*, i8*) #1

declare void @sequencer_run(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare void @sequencer_free(%struct.sequencer*) #1

declare void @segments_free(%struct.segments*) #1

declare void @gene_free(%struct.gene*) #1

declare void @random_free(%struct.random*) #1

declare i64 @getWorkItemCount(...) #1

declare void @thread_shutdown(...) #1

declare void @RTM_output_stats(...) #1

; Function Attrs: nounwind uwtable
define internal void @setDefaultParams() #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 16384, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 103), align 8
  store i64 4194304, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  store i64 64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @displayUsage(i8* %appName) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i8* %appName)
  %2 = call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i32 0, i32 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0), i64 16384)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i32 0, i32 0), i64 4194304)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i32 0, i32 0), i64 64)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i32 0, i32 0), i64 1)
  %7 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0))
  %8 = call i32 @puts(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.32, i32 0, i32 0))
  %9 = call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0))
  call void @profiler_print_stats()
  call void @exit(i32 1) #6
  unreachable
                                                  ; No predecessors!
  ret void
}

declare void @profiler_print_stats()

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145755229, i32 -2145755193, i32 -2145755169}
!2 = !{i32 -2145953083, i32 -2145953047, i32 -2145953023}
