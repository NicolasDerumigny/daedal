; ModuleID = '../bin/genome.ll'
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
@.str.32 = private unnamed_addr constant [61 x i8] c"The actual number of segments created may be greater than -n\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"in order to completely cover the gene.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %1 = sext i32 %argc to i64
  store i32 0, i32* @opterr, align 4
  store i64 16384, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 103), align 8
  store i64 4194304, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  store <2 x i64> <i64 64, i64 1>, <2 x i64>* bitcast (i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115) to <2 x i64>*), align 8
  %2 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #5
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %._crit_edge4.i, label %.lr.ph3.i.preheader

.lr.ph3.i.preheader:                              ; preds = %0
  br label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.lr.ph3.i.preheader, %.backedge.i
  %4 = phi i32 [ %15, %.backedge.i ], [ %2, %.lr.ph3.i.preheader ]
  %5 = sext i32 %4 to i64
  switch i64 %5, label %12 [
    i64 103, label %6
    i64 110, label %6
    i64 115, label %6
    i64 116, label %6
  ]

; <label>:6                                       ; preds = %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i
  %7 = load i8*, i8** @optarg, align 8
  %8 = tail call i64 @atol(i8* %7) #6
  %9 = zext i32 %4 to i64
  %10 = and i64 %9, 255
  %11 = getelementptr inbounds [256 x i64], [256 x i64]* @global_params, i64 0, i64 %10
  store i64 %8, i64* %11, align 8
  br label %.backedge.i

; <label>:12                                      ; preds = %.lr.ph3.i
  %13 = load i32, i32* @opterr, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @opterr, align 4
  br label %.backedge.i

.backedge.i:                                      ; preds = %12, %6
  %15 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #5
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %._crit_edge4.i.loopexit, label %.lr.ph3.i

._crit_edge4.i.loopexit:                          ; preds = %.backedge.i
  br label %._crit_edge4.i

._crit_edge4.i:                                   ; preds = %._crit_edge4.i.loopexit, %0
  %17 = load i32, i32* @optind, align 4
  %18 = icmp slt i32 %17, %argc
  br i1 %18, label %.lr.ph.i.preheader, label %._crit_edge4.._crit_edge_crit_edge.i

.lr.ph.i.preheader:                               ; preds = %._crit_edge4.i
  %19 = sext i32 %17 to i64
  br label %.lr.ph.i

._crit_edge4.._crit_edge_crit_edge.i:             ; preds = %._crit_edge4.i
  %.pre.i = load i32, i32* @opterr, align 4
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.01.i = phi i64 [ %26, %.lr.ph.i ], [ %19, %.lr.ph.i.preheader ]
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = getelementptr inbounds i8*, i8** %argv, i64 %i.01.i
  %22 = load i8*, i8** %21, align 8
  %23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i8* %22) #7
  %24 = load i32, i32* @opterr, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @opterr, align 4
  %26 = add nsw i64 %i.01.i, 1
  %exitcond.i = icmp eq i64 %26, %1
  br i1 %exitcond.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.lcssa = phi i32 [ %25, %.lr.ph.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %._crit_edge4.._crit_edge_crit_edge.i
  %27 = phi i32 [ %.pre.i, %._crit_edge4.._crit_edge_crit_edge.i ], [ %.lcssa, %._crit_edge.i.loopexit ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %parseArgs.exit, label %29

; <label>:29                                      ; preds = %._crit_edge.i
  %30 = load i8*, i8** %argv, align 8
  %31 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* %30) #5
  %32 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i64 0, i64 0)) #5
  %33 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i64 0, i64 0), i64 16384) #5
  %34 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), i64 4194304) #5
  %35 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i64 0, i64 0), i64 64) #5
  %36 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i64 0, i64 0), i64 1) #5
  %putchar.i.i = tail call i32 @putchar(i32 10) #5
  %37 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([61 x i8], [61 x i8]* @.str.32, i64 0, i64 0)) #5
  %38 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0)) #5
  tail call void @exit(i32 1) #8
  unreachable

parseArgs.exit:                                   ; preds = %._crit_edge.i
  %39 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = tail call i32 @fflush(%struct._IO_FILE* %40)
  %42 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 103), align 8
  %43 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  %44 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  %45 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  %46 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #9, !srcloc !1
  %47 = extractvalue { i32, i32, i32, i32 } %46, 0
  %48 = icmp sgt i32 %47, 6
  br i1 %48, label %50, label %49

; <label>:49                                      ; preds = %parseArgs.exit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 201, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:50                                      ; preds = %parseArgs.exit
  %51 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #9, !srcloc !2
  %52 = extractvalue { i32, i32, i32, i32 } %51, 1
  %53 = and i32 %52, 2048
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %50
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 201, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:56                                      ; preds = %50
  tail call void (...) @RTM_spinlock_init() #5
  tail call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %45) #5
  tail call void @thread_startup(i64 %45) #5
  %57 = tail call %struct.random* (...) @random_alloc() #5
  %58 = icmp eq %struct.random* %57, null
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %56
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 206, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:60                                      ; preds = %56
  tail call void @random_seed(%struct.random* nonnull %57, i64 0) #5
  %61 = tail call %struct.gene* @gene_alloc(i64 %42) #5
  %62 = icmp eq %struct.gene* %61, null
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %60
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 210, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:64                                      ; preds = %60
  tail call void @gene_create(%struct.gene* nonnull %61, %struct.random* nonnull %57) #5
  %65 = getelementptr inbounds %struct.gene, %struct.gene* %61, i64 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = tail call %struct.segments* @segments_alloc(i64 %43, i64 %44) #5
  %68 = icmp eq %struct.segments* %67, null
  br i1 %68, label %69, label %70

; <label>:69                                      ; preds = %64
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 215, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:70                                      ; preds = %64
  tail call void @segments_create(%struct.segments* nonnull %67, %struct.gene* nonnull %61, %struct.random* nonnull %57) #5
  %71 = tail call %struct.sequencer* @sequencer_alloc(i64 %42, i64 %43, %struct.segments* nonnull %67) #5
  %72 = icmp eq %struct.sequencer* %71, null
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %70
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 218, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:74                                      ; preds = %70
  %75 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %76 = getelementptr inbounds %struct.gene, %struct.gene* %61, i64 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i64 %77)
  %79 = getelementptr inbounds %struct.segments, %struct.segments* %67, i64 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 %80)
  %82 = getelementptr inbounds %struct.segments, %struct.segments* %67, i64 0, i32 2
  %83 = load %struct.vector*, %struct.vector** %82, align 8
  %84 = tail call i64 @vector_getSize(%struct.vector* %83) #5
  %85 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 %84)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %87 = tail call i32 @fflush(%struct._IO_FILE* %86)
  %88 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %90 = tail call i32 @fflush(%struct._IO_FILE* %89)
  %91 = call i32 @gettimeofday(%struct.timeval* nonnull %start, %struct.timezone* null) #5
  %92 = bitcast %struct.sequencer* %71 to i8*
  tail call void @thread_start(void (i8*)* nonnull @sequencer_run, i8* %92) #5
  %93 = call i32 @gettimeofday(%struct.timeval* nonnull %stop, %struct.timezone* null) #5
  %94 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %95 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sitofp i64 %96 to double
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sitofp i64 %99 to double
  %101 = fdiv double %100, 1.000000e+06
  %102 = fadd double %97, %101
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sitofp i64 %104 to double
  %106 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = sitofp i64 %107 to double
  %109 = fdiv double %108, 1.000000e+06
  %110 = fadd double %105, %109
  %111 = fsub double %102, %110
  %112 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), double %111)
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %114 = tail call i32 @fflush(%struct._IO_FILE* %113)
  %115 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %71, i64 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = tail call i32 @strcmp(i8* %66, i8* %116) #6
  %118 = icmp ne i32 %117, 0
  %119 = select i1 %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %120 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %119)
  br i1 %118, label %121, label %124

; <label>:121                                     ; preds = %74
  %122 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* %66)
  %123 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* %116)
  br label %124

; <label>:124                                     ; preds = %121, %74
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %126 = tail call i32 @fflush(%struct._IO_FILE* %125)
  %127 = tail call i64 @strlen(i8* %116) #6
  %128 = tail call i64 @strlen(i8* %66) #6
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %131

; <label>:130                                     ; preds = %124
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 255, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

; <label>:131                                     ; preds = %124
  %132 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %134 = tail call i32 @fflush(%struct._IO_FILE* %133)
  tail call void @sequencer_free(%struct.sequencer* nonnull %71) #5
  tail call void @segments_free(%struct.segments* nonnull %67) #5
  tail call void @gene_free(%struct.gene* nonnull %61) #5
  tail call void @random_free(%struct.random* nonnull %57) #5
  %135 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %137 = tail call i32 @fflush(%struct._IO_FILE* %136)
  %138 = tail call i64 (...) @getWorkItemCount() #5
  %139 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i64 %138)
  %140 = tail call i32 @fflush(%struct._IO_FILE* null)
  tail call void (...) @thread_shutdown() #5
  tail call void (...) @RTM_output_stats() #5
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare void @RTM_spinlock_init(...) #3

declare void @SimStartup(...) #3

declare void @thread_startup(i64) #3

declare %struct.random* @random_alloc(...) #3

declare void @random_seed(%struct.random*, i64) #3

declare %struct.gene* @gene_alloc(i64) #3

declare void @gene_create(%struct.gene*, %struct.random*) #3

declare %struct.segments* @segments_alloc(i64, i64) #3

declare void @segments_create(%struct.segments*, %struct.gene*, %struct.random*) #3

declare %struct.sequencer* @sequencer_alloc(i64, i64, %struct.segments*) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #1

declare i64 @vector_getSize(%struct.vector*) #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

declare void @thread_start(void (i8*)*, i8*) #3

declare void @sequencer_run(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #4

declare void @sequencer_free(%struct.sequencer*) #3

declare void @segments_free(%struct.segments*) #3

declare void @gene_free(%struct.gene*) #3

declare void @random_free(%struct.random*) #3

declare i64 @getWorkItemCount(...) #3

declare void @thread_shutdown(...) #3

declare void @RTM_output_stats(...) #3

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @atol(i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i32 @putchar(i32)

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145953083, i32 -2145953047, i32 -2145953023}
!2 = !{i32 -2145755229, i32 -2145755193, i32 -2145755169}
