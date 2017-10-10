; ModuleID = '../bin/genome.stats.ll'
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %geneLength = alloca i64, align 8
  %segmentLength = alloca i64, align 8
  %minNumSegment = alloca i64, align 8
  %numThread = alloca i64, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %randomPtr = alloca %struct.random*, align 8
  %genePtr = alloca %struct.gene*, align 8
  %gene = alloca i8*, align 8
  %segmentsPtr = alloca %struct.segments*, align 8
  %sequencerPtr = alloca %struct.sequencer*, align 8
  %sequence = alloca i8*, align 8
  %result = alloca i32, align 4
  %count = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = load i8**, i8*** %3, align 8
  call void @parseArgs(i64 %5, i8** %6)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %9 = call i32 @fflush(%struct._IO_FILE* %8)
  %10 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 103), align 8
  store i64 %10, i64* %geneLength, align 8
  %11 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  store i64 %11, i64* %segmentLength, align 8
  %12 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  store i64 %12, i64* %minNumSegment, align 8
  %13 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  store i64 %13, i64* %numThread, align 8
  br label %14

; <label>:14                                      ; preds = %0
  %15 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %16 = icmp sge i32 %15, 7
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %14
  br i1 true, label %18, label %19

; <label>:18                                      ; preds = %17
  br label %21

; <label>:19                                      ; preds = %17, %14
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:21                                      ; preds = %20, %18
  %22 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #7, !srcloc !1
  %23 = extractvalue { i32, i32, i32, i32 } %22, 0
  %24 = extractvalue { i32, i32, i32, i32 } %22, 1
  %25 = extractvalue { i32, i32, i32, i32 } %22, 2
  %26 = extractvalue { i32, i32, i32, i32 } %22, 3
  store i32 %23, i32* %a, align 4
  store i32 %24, i32* %b, align 4
  store i32 %25, i32* %c, align 4
  store i32 %26, i32* %d, align 4
  %27 = load i32, i32* %b, align 4
  %28 = and i32 %27, 2048
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

; <label>:30                                      ; preds = %21
  br i1 true, label %31, label %32

; <label>:31                                      ; preds = %30
  br label %34

; <label>:32                                      ; preds = %30, %21
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %34

; <label>:34                                      ; preds = %33, %31
  call void (...) @RTM_spinlock_init()
  %35 = load i64, i64* %numThread, align 8
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %35)
  br label %36

; <label>:36                                      ; preds = %34
  %37 = load i64, i64* %numThread, align 8
  call void @thread_startup(i64 %37)
  %38 = call %struct.random* (...) @random_alloc()
  store %struct.random* %38, %struct.random** %randomPtr, align 8
  %39 = load %struct.random*, %struct.random** %randomPtr, align 8
  %40 = icmp ne %struct.random* %39, null
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %36
  br label %44

; <label>:42                                      ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 206, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %44

; <label>:44                                      ; preds = %43, %41
  %45 = load %struct.random*, %struct.random** %randomPtr, align 8
  call void @random_seed(%struct.random* %45, i64 0)
  %46 = load i64, i64* %geneLength, align 8
  %47 = call %struct.gene* @gene_alloc(i64 %46)
  store %struct.gene* %47, %struct.gene** %genePtr, align 8
  %48 = load %struct.gene*, %struct.gene** %genePtr, align 8
  %49 = icmp ne %struct.gene* %48, null
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %44
  br label %53

; <label>:51                                      ; preds = %44
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %53

; <label>:53                                      ; preds = %52, %50
  %54 = load %struct.gene*, %struct.gene** %genePtr, align 8
  %55 = load %struct.random*, %struct.random** %randomPtr, align 8
  call void @gene_create(%struct.gene* %54, %struct.random* %55)
  %56 = load %struct.gene*, %struct.gene** %genePtr, align 8
  %57 = getelementptr inbounds %struct.gene, %struct.gene* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %gene, align 8
  %59 = load i64, i64* %segmentLength, align 8
  %60 = load i64, i64* %minNumSegment, align 8
  %61 = call %struct.segments* @segments_alloc(i64 %59, i64 %60)
  store %struct.segments* %61, %struct.segments** %segmentsPtr, align 8
  %62 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %63 = icmp ne %struct.segments* %62, null
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %53
  br label %67

; <label>:65                                      ; preds = %53
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 215, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %67

; <label>:67                                      ; preds = %66, %64
  %68 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %69 = load %struct.gene*, %struct.gene** %genePtr, align 8
  %70 = load %struct.random*, %struct.random** %randomPtr, align 8
  call void @segments_create(%struct.segments* %68, %struct.gene* %69, %struct.random* %70)
  %71 = load i64, i64* %geneLength, align 8
  %72 = load i64, i64* %segmentLength, align 8
  %73 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %74 = call %struct.sequencer* @sequencer_alloc(i64 %71, i64 %72, %struct.segments* %73)
  store %struct.sequencer* %74, %struct.sequencer** %sequencerPtr, align 8
  %75 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %76 = icmp ne %struct.sequencer* %75, null
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %67
  br label %80

; <label>:78                                      ; preds = %67
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 218, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %80

; <label>:80                                      ; preds = %79, %77
  %81 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %82 = load %struct.gene*, %struct.gene** %genePtr, align 8
  %83 = getelementptr inbounds %struct.gene, %struct.gene* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i64 %84)
  %86 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %87 = getelementptr inbounds %struct.segments, %struct.segments* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i64 %88)
  %90 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  %91 = getelementptr inbounds %struct.segments, %struct.segments* %90, i32 0, i32 2
  %92 = load %struct.vector*, %struct.vector** %91, align 8
  %93 = call i64 @vector_getSize(%struct.vector* %92)
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i64 %93)
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %96 = call i32 @fflush(%struct._IO_FILE* %95)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %99 = call i32 @fflush(%struct._IO_FILE* %98)
  %100 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #8
  %101 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %102 = bitcast %struct.sequencer* %101 to i8*
  call void @thread_start(void (i8*)* @sequencer_run, i8* %102)
  %103 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #8
  %104 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
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
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), double %121)
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %124 = call i32 @fflush(%struct._IO_FILE* %123)
  %125 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  %126 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %sequence, align 8
  %128 = load i8*, i8** %gene, align 8
  %129 = load i8*, i8** %sequence, align 8
  %130 = call i32 @strcmp(i8* %128, i8* %129) #9
  store i32 %130, i32* %result, align 4
  %131 = load i32, i32* %result, align 4
  %132 = icmp ne i32 %131, 0
  %133 = select i1 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), i8* %133)
  %135 = load i32, i32* %result, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

; <label>:137                                     ; preds = %80
  %138 = load i8*, i8** %gene, align 8
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* %138)
  %140 = load i8*, i8** %sequence, align 8
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8* %140)
  br label %142

; <label>:142                                     ; preds = %137, %80
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %144 = call i32 @fflush(%struct._IO_FILE* %143)
  %145 = load i8*, i8** %sequence, align 8
  %146 = call i64 @strlen(i8* %145) #9
  %147 = load i8*, i8** %gene, align 8
  %148 = call i64 @strlen(i8* %147) #9
  %149 = icmp uge i64 %146, %148
  br i1 %149, label %150, label %151

; <label>:150                                     ; preds = %142
  br label %153

; <label>:151                                     ; preds = %142
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 255, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %153

; <label>:153                                     ; preds = %152, %150
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0))
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %156 = call i32 @fflush(%struct._IO_FILE* %155)
  %157 = load %struct.sequencer*, %struct.sequencer** %sequencerPtr, align 8
  call void @sequencer_free(%struct.sequencer* %157)
  %158 = load %struct.segments*, %struct.segments** %segmentsPtr, align 8
  call void @segments_free(%struct.segments* %158)
  %159 = load %struct.gene*, %struct.gene** %genePtr, align 8
  call void @gene_free(%struct.gene* %159)
  %160 = load %struct.random*, %struct.random** %randomPtr, align 8
  call void @random_free(%struct.random* %160)
  %161 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %163 = call i32 @fflush(%struct._IO_FILE* %162)
  br label %164

; <label>:164                                     ; preds = %153
  %165 = call i64 (...) @getWorkItemCount()
  store i64 %165, i64* %count, align 8
  %166 = load i64, i64* %count, align 8
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i64 %166)
  %168 = call i32 @fflush(%struct._IO_FILE* null)
  br label %169

; <label>:169                                     ; preds = %164
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

; <label>:3                                       ; preds = %23, %0
  %4 = load i64, i64* %1, align 8
  %5 = trunc i64 %4 to i32
  %6 = load i8**, i8*** %2, align 8
  %7 = call i32 @getopt(i32 %5, i8** %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)) #8
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %opt, align 8
  %9 = icmp ne i64 %8, -1
  br i1 %9, label %10, label %24

; <label>:10                                      ; preds = %3
  %11 = load i64, i64* %opt, align 8
  switch i64 %11, label %20 [
    i64 103, label %12
    i64 110, label %12
    i64 115, label %12
    i64 116, label %12
    i64 63, label %19
  ]

; <label>:12                                      ; preds = %10, %10, %10, %10
  %13 = load i8*, i8** @optarg, align 8
  %14 = call i64 @atol(i8* %13) #9
  %15 = load i64, i64* %opt, align 8
  %16 = trunc i64 %15 to i8
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds [256 x i64], [256 x i64]* @global_params, i64 0, i64 %17
  store i64 %14, i64* %18, align 8
  br label %23

; <label>:19                                      ; preds = %10
  br label %20

; <label>:20                                      ; preds = %19, %10
  %21 = load i32, i32* @opterr, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @opterr, align 4
  br label %23

; <label>:23                                      ; preds = %20, %12
  br label %3

; <label>:24                                      ; preds = %3
  %25 = load i32, i32* @optind, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %i, align 8
  br label %27

; <label>:27                                      ; preds = %40, %24
  %28 = load i64, i64* %i, align 8
  %29 = load i64, i64* %1, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %43

; <label>:31                                      ; preds = %27
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i64, i64* %i, align 8
  %34 = load i8**, i8*** %2, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 %33
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* %36)
  %38 = load i32, i32* @opterr, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @opterr, align 4
  br label %40

; <label>:40                                      ; preds = %31
  %41 = load i64, i64* %i, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %i, align 8
  br label %27

; <label>:43                                      ; preds = %27
  %44 = load i32, i32* @opterr, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

; <label>:46                                      ; preds = %43
  %47 = load i8**, i8*** %2, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  call void @displayUsage(i8* %49)
  br label %50

; <label>:50                                      ; preds = %46, %43
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

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
  %1 = alloca i8*, align 8
  store i8* %appName, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i8* %2)
  %4 = call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0), i64 16384)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i32 0, i32 0), i64 4194304)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i32 0, i32 0), i64 64)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i32 0, i32 0), i64 1)
  %9 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0))
  %10 = call i32 @puts(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.32, i32 0, i32 0))
  %11 = call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0))
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
