; ModuleID = '../bin/STAMP-genome.tm-arg.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.thread_barrier = type { %union.pthread_mutex_t, %union.pthread_cond_t, %union.pthread_cond_t, i64, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.memory = type { %struct.pool**, i64 }
%struct.pool = type { %struct.block*, i64, i64, i64 }
%struct.block = type { [8 x i64], i64, i64, i8*, %struct.block*, [8 x i64] }
%struct.gene = type { i64, i8*, %struct.bitmap* }
%struct.bitmap = type { i64, i64, i64* }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.timeval = type { i64, i64 }
%struct.segments = type { i64, i64, %struct.vector*, i8** }
%struct.vector = type { i64, i64, i8** }
%struct.sequencer = type { i8*, %struct.segments*, %struct.hashtable*, %struct.endInfoEntry*, %struct.table**, %struct.constructEntry*, %struct.table*, i64 }
%struct.hashtable = type { %struct.list**, i64, i64 (i8*)*, i64 (%struct.pair*, %struct.pair*)*, i64, i64 }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.pair = type { i8*, i8* }
%struct.endInfoEntry = type { i64, i64 }
%struct.constructEntry = type { i64, i8*, i64, %struct.constructEntry*, %struct.constructEntry*, %struct.constructEntry*, i64, i64 }
%struct.table = type { %struct.list**, i64 }
%struct.timezone = type { i32, i32 }
%struct.hashtable_iter = type { i64, %struct.list_node* }
%struct.cpu_set_t = type { [16 x i64] }
%union.pthread_mutexattr_t = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"length > 1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"gene.c\00", align 1
@__PRETTY_FUNCTION__.gene_alloc = private unnamed_addr constant [25 x i8] c"gene_t *gene_alloc(long)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"genePtr != NULL\00", align 1
@__PRETTY_FUNCTION__.gene_create = private unnamed_addr constant [39 x i8] c"void gene_create(gene_t *, random_t *)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"randomPtr != NULL\00", align 1
@gene_create.nucleotides = internal unnamed_addr constant [4 x i8] c"acgt", align 1
@global_params = common global [256 x i64] zeroinitializer, align 16
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
@.str.4 = private unnamed_addr constant [31 x i8] c"Creating gene and segments... \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.2.5 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@.str.3.6 = private unnamed_addr constant [9 x i8] c"genome.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.4.7 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
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
@.str.16 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Sequence matches gene: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"gene     = %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"sequence = %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"strlen(sequence) >= strlen(gene)\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Deallocating memory... \00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"segmentsPtr != NULL\00", align 1
@.str.1.32 = private unnamed_addr constant [11 x i8] c"segments.c\00", align 1
@__PRETTY_FUNCTION__.segments_create = private unnamed_addr constant [57 x i8] c"void segments_create(segments_t *, gene_t *, random_t *)\00", align 1
@.str.2.33 = private unnamed_addr constant [16 x i8] c"genePtr != NULL\00", align 1
@.str.3.34 = private unnamed_addr constant [18 x i8] c"randomPtr != NULL\00", align 1
@.str.4.35 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"segmentsPtr\00", align 1
@.str.1.43 = private unnamed_addr constant [12 x i8] c"sequencer.c\00", align 1
@__PRETTY_FUNCTION__.sequencer_run = private unnamed_addr constant [27 x i8] c"void sequencer_run(void *)\00", align 1
@.str.2.44 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3.45 = private unnamed_addr constant [27 x i8] c"startConstructEntry_endPtr\00", align 1
@.str.4.46 = private unnamed_addr constant [27 x i8] c"endConstructEntry_startPtr\00", align 1
@.str.5.47 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.6.48 = private unnamed_addr constant [33 x i8] c"newSequenceLength <= totalLength\00", align 1
@str = private unnamed_addr constant [40 x i8] c"ERROR: sequence length != actual length\00"
@.str.8.49 = private unnamed_addr constant [39 x i8] c"copyPtr <= (sequence + sequenceLength)\00", align 1
@.str.66 = private unnamed_addr constant [33 x i8] c"dstPtr->numBit == srcPtr->numBit\00", align 1
@.str.1.67 = private unnamed_addr constant [9 x i8] c"bitmap.c\00", align 1
@__PRETTY_FUNCTION__.bitmap_copy = private unnamed_addr constant [41 x i8] c"void bitmap_copy(bitmap_t *, bitmap_t *)\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1.77 = private unnamed_addr constant [12 x i8] c"hashtable.c\00", align 1
@__PRETTY_FUNCTION__.hashtable_remove = private unnamed_addr constant [47 x i8] c"bool_t hashtable_remove(hashtable_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.TMhashtable_remove = private unnamed_addr constant [49 x i8] c"bool_t TMhashtable_remove(hashtable_t *, void *)\00", align 1
@.str.132 = private unnamed_addr constant [19 x i8] c"listPtr->size >= 0\00", align 1
@.str.1.133 = private unnamed_addr constant [7 x i8] c"list.c\00", align 1
@__PRETTY_FUNCTION__.list_remove = private unnamed_addr constant [37 x i8] c"bool_t list_remove(list_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.Plist_remove = private unnamed_addr constant [38 x i8] c"bool_t Plist_remove(list_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.TMlist_remove = private unnamed_addr constant [39 x i8] c"bool_t TMlist_remove(list_t *, void *)\00", align 1
@genrand_int32.mag01 = internal global [2 x i64] [i64 0, i64 2567483615], align 16
@g_locks = global [15 x i32] zeroinitializer, align 16
@g_aborts = global [15 x i32] zeroinitializer, align 16
@g_accesses = global [15 x i32] zeroinitializer, align 16
@g_succeed = global [15 x i32] zeroinitializer, align 16
@g_misses = global [15 x i32] zeroinitializer, align 16
@abort_reasons = global [15 x [6 x i32]] zeroinitializer, align 16
@thread_contexts = global %struct._tm_thread_context_t* null, align 8
@FD = thread_local global i32 0, align 4
@RTM_lock_array = common global [256 x i8] zeroinitializer, align 64
@RTM_fallBackLock = common global i64* null, align 8
@.str.144 = private unnamed_addr constant [11 x i8] c"offset > 0\00", align 1
@.str.1.145 = private unnamed_addr constant [9 x i8] c"thread.c\00", align 1
@__PRETTY_FUNCTION__.init_one_perfcounter = private unnamed_addr constant [46 x i8] c"void init_one_perfcounter(int, unsigned long)\00", align 1
@.str.2.146 = private unnamed_addr constant [8 x i8] c"ret > 0\00", align 1
@.str.3.147 = private unnamed_addr constant [9 x i8] c"offset>0\00", align 1
@__PRETTY_FUNCTION__.read_one_perfcounter = private unnamed_addr constant [47 x i8] c"void read_one_perfcounter(int, unsigned int *)\00", align 1
@M5_inSimulator = external global i32, align 4
@.str.4.156 = private unnamed_addr constant [9 x i8] c"err == 0\00", align 1
@__PRETTY_FUNCTION__.determineNumProcs = private unnamed_addr constant [25 x i8] c"long determineNumProcs()\00", align 1
@global_numThread = internal global i64 1, align 8
@global_doShutdown = internal global i64 0, align 8
@__PRETTY_FUNCTION__.thread_startup = private unnamed_addr constant [26 x i8] c"void thread_startup(long)\00", align 1
@global_barrierPtr = internal global %struct.thread_barrier* null, align 8
@.str.5.159 = private unnamed_addr constant [26 x i8] c"global_barrierPtr == NULL\00", align 1
@.str.11.160 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@__PRETTY_FUNCTION__.thread_barrier_alloc = private unnamed_addr constant [45 x i8] c"thread_barrier_t *thread_barrier_alloc(long)\00", align 1
@.str.12.161 = private unnamed_addr constant [35 x i8] c"(numThread & (numThread - 1)) == 0\00", align 1
@.str.6.162 = private unnamed_addr constant [18 x i8] c"global_barrierPtr\00", align 1
@global_threadId = internal global i32 0, align 4
@global_threadIds = internal global i64* null, align 8
@.str.7.163 = private unnamed_addr constant [25 x i8] c"global_threadIds == NULL\00", align 1
@.str.8.164 = private unnamed_addr constant [17 x i8] c"global_threadIds\00", align 1
@global_threads = internal global i64* null, align 8
@.str.9.165 = private unnamed_addr constant [23 x i8] c"global_threads == NULL\00", align 1
@.str.10.166 = private unnamed_addr constant [15 x i8] c"global_threads\00", align 1
@global_threadAttr = internal global %union.pthread_attr_t zeroinitializer, align 8
@global_funcPtr = internal global void (i8*)* null, align 8
@global_argPtr = internal global i8* null, align 8
@global_memoryPtr = global %struct.memory* null, align 8
@.str.187 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@.str.1.188 = private unnamed_addr constant [9 x i8] c"memory.c\00", align 1
@__PRETTY_FUNCTION__.memory_init = private unnamed_addr constant [39 x i8] c"bool_t memory_init(long, size_t, long)\00", align 1
@.str.2.189 = private unnamed_addr constant [13 x i8] c"capacity > 0\00", align 1
@__PRETTY_FUNCTION__.allocBlock = private unnamed_addr constant [28 x i8] c"block_t *allocBlock(size_t)\00", align 1
@.str.3.190 = private unnamed_addr constant [29 x i8] c"(size + numByte) <= capacity\00", align 1
@__PRETTY_FUNCTION__.getMemoryFromBlock = private unnamed_addr constant [44 x i8] c"void *getMemoryFromBlock(block_t *, size_t)\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.gene* @gene_alloc(i64 %length) #0 {
  %1 = icmp sgt i64 %length, 1
  br i1 %1, label %3, label %2

; <label>:2                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 92, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.gene_alloc, i64 0, i64 0)) #14
  unreachable

; <label>:3                                       ; preds = %0
  %4 = tail call noalias i8* @malloc(i64 24) #7
  %5 = bitcast i8* %4 to %struct.gene*
  %6 = icmp eq i8* %4, null
  br i1 %6, label %20, label %7

; <label>:7                                       ; preds = %3
  %8 = add nsw i64 %length, 1
  %9 = tail call noalias i8* @malloc(i64 %8) #7
  %10 = getelementptr inbounds i8, i8* %4, i64 8
  %11 = bitcast i8* %10 to i8**
  store i8* %9, i8** %11, align 8
  %12 = icmp eq i8* %9, null
  br i1 %12, label %20, label %13

; <label>:13                                      ; preds = %7
  %14 = getelementptr inbounds i8, i8* %9, i64 %length
  store i8 0, i8* %14, align 1
  %15 = bitcast i8* %4 to i64*
  store i64 %length, i64* %15, align 8
  %16 = tail call %struct.bitmap* @bitmap_alloc(i64 %length) #7
  %17 = getelementptr inbounds i8, i8* %4, i64 16
  %18 = bitcast i8* %17 to %struct.bitmap**
  store %struct.bitmap* %16, %struct.bitmap** %18, align 8
  %19 = icmp eq %struct.bitmap* %16, null
  %. = select i1 %19, %struct.gene* null, %struct.gene* %5
  br label %20

; <label>:20                                      ; preds = %13, %7, %3
  %.0 = phi %struct.gene* [ null, %3 ], [ null, %7 ], [ %., %13 ]
  ret %struct.gene* %.0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @gene_create(%struct.gene* readonly %genePtr, %struct.random* %randomPtr) #0 {
  %1 = icmp eq %struct.gene* %genePtr, null
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 133, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.gene_create, i64 0, i64 0)) #14
  unreachable

; <label>:3                                       ; preds = %0
  %4 = icmp eq %struct.random* %randomPtr, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 134, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.gene_create, i64 0, i64 0)) #14
  unreachable

; <label>:6                                       ; preds = %3
  %7 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = icmp sgt i64 %8, 0
  br i1 %11, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %6
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %i.01 = phi i64 [ %17, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %12 = tail call i64 @random_generate(%struct.random* nonnull %randomPtr) #7
  %13 = and i64 %12, 3
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* @gene_create.nucleotides, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = getelementptr inbounds i8, i8* %10, i64 %i.01
  store i8 %15, i8* %16, align 1
  %17 = add nuw nsw i64 %i.01, 1
  %exitcond = icmp eq i64 %17, %8
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %6
  ret void
}

; Function Attrs: nounwind uwtable
define void @gene_free(%struct.gene* nocapture %genePtr) #0 {
  %1 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 2
  %2 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  tail call void @bitmap_free(%struct.bitmap* %2) #7
  %3 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 1
  %4 = load i8*, i8** %3, align 8
  tail call void @free(i8* %4) #7
  %5 = bitcast %struct.gene* %genePtr to i8*
  tail call void @free(i8* %5) #7
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %1 = sext i32 %argc to i64
  store i32 0, i32* @opterr, align 4
  store i64 16384, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 103), align 8
  store i64 4194304, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  store <2 x i64> <i64 64, i64 1>, <2 x i64>* bitcast (i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115) to <2 x i64>*), align 8
  %2 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #7
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %._crit_edge4.i, label %.lr.ph3.i.preheader

.lr.ph3.i.preheader:                              ; preds = %0
  br label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.backedge.i, %.lr.ph3.i.preheader
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
  %8 = tail call i64 @atol(i8* %7) #15
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
  %15 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #7
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

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %i.01.i = phi i64 [ %26, %.lr.ph.i ], [ %19, %.lr.ph.i.preheader ]
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = getelementptr inbounds i8*, i8** %argv, i64 %i.01.i
  %22 = load i8*, i8** %21, align 8
  %23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i8* %22) #16
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
  %31 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* %30) #7
  %32 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i64 0, i64 0)) #7
  %33 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i64 0, i64 0), i64 16384) #7
  %34 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), i64 4194304) #7
  %35 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i64 0, i64 0), i64 64) #7
  %36 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i64 0, i64 0), i64 1) #7
  %putchar.i.i = tail call i32 @putchar(i32 10) #7
  %37 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([61 x i8], [61 x i8]* @.str.32, i64 0, i64 0)) #7
  %38 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0)) #7
  tail call void @exit(i32 1) #14
  unreachable

parseArgs.exit:                                   ; preds = %._crit_edge.i
  %39 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = tail call i32 @fflush(%struct._IO_FILE* %40)
  %42 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 103), align 8
  %43 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  %44 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  %45 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  %46 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #17, !srcloc !1
  %47 = extractvalue { i32, i32, i32, i32 } %46, 0
  %48 = icmp sgt i32 %47, 6
  br i1 %48, label %50, label %49

; <label>:49                                      ; preds = %parseArgs.exit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.6, i64 0, i64 0), i32 201, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:50                                      ; preds = %parseArgs.exit
  %51 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #17, !srcloc !2
  %52 = extractvalue { i32, i32, i32, i32 } %51, 1
  %53 = and i32 %52, 2048
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %50
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.6, i64 0, i64 0), i32 201, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:56                                      ; preds = %50
  tail call void (...) bitcast (void ()* @RTM_spinlock_init to void (...)*)() #7
  tail call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %45) #7
  tail call void @thread_startup(i64 %45) #7
  %57 = tail call %struct.random* (...) bitcast (%struct.random* ()* @random_alloc to %struct.random* (...)*)() #7
  %58 = icmp eq %struct.random* %57, null
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %56
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.6, i64 0, i64 0), i32 206, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:60                                      ; preds = %56
  tail call void @random_seed(%struct.random* nonnull %57, i64 0) #7
  %61 = tail call %struct.gene* @gene_alloc(i64 %42) #7
  %62 = icmp eq %struct.gene* %61, null
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %60
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.6, i64 0, i64 0), i32 210, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:64                                      ; preds = %60
  tail call void @gene_create(%struct.gene* nonnull %61, %struct.random* nonnull %57) #7
  %65 = getelementptr inbounds %struct.gene, %struct.gene* %61, i64 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = tail call %struct.segments* @segments_alloc(i64 %43, i64 %44) #7
  %68 = icmp eq %struct.segments* %67, null
  br i1 %68, label %69, label %70

; <label>:69                                      ; preds = %64
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.6, i64 0, i64 0), i32 215, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:70                                      ; preds = %64
  tail call void @segments_create(%struct.segments* nonnull %67, %struct.gene* nonnull %61, %struct.random* nonnull %57) #7
  %71 = tail call %struct.sequencer* @sequencer_alloc(i64 %42, i64 %43, %struct.segments* nonnull %67) #7
  %72 = icmp eq %struct.sequencer* %71, null
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %70
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.6, i64 0, i64 0), i32 218, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
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
  %84 = tail call i64 @vector_getSize(%struct.vector* %83) #7
  %85 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 %84)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %87 = tail call i32 @fflush(%struct._IO_FILE* %86)
  %88 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %90 = tail call i32 @fflush(%struct._IO_FILE* %89)
  %91 = call i32 @gettimeofday(%struct.timeval* nonnull %start, %struct.timezone* null) #7
  %92 = bitcast %struct.sequencer* %71 to i8*
  tail call void @thread_start(void (i8*)* nonnull @sequencer_run, i8* %92) #7
  %93 = call i32 @gettimeofday(%struct.timeval* nonnull %stop, %struct.timezone* null) #7
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
  %117 = tail call i32 @strcmp(i8* %66, i8* %116) #15
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
  %127 = tail call i64 @strlen(i8* %116) #15
  %128 = tail call i64 @strlen(i8* %66) #15
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %131

; <label>:130                                     ; preds = %124
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.6, i64 0, i64 0), i32 255, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:131                                     ; preds = %124
  %132 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %134 = tail call i32 @fflush(%struct._IO_FILE* %133)
  tail call void @sequencer_free(%struct.sequencer* nonnull %71) #7
  tail call void @segments_free(%struct.segments* nonnull %67) #7
  tail call void @gene_free(%struct.gene* nonnull %61) #7
  tail call void @random_free(%struct.random* nonnull %57) #7
  %135 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %137 = tail call i32 @fflush(%struct._IO_FILE* %136)
  %138 = tail call i64 (...) @getWorkItemCount() #7
  %139 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i64 %138)
  %140 = tail call i32 @fflush(%struct._IO_FILE* null)
  tail call void (...) bitcast (void ()* @thread_shutdown to void (...)*)() #7
  tail call void (...) bitcast (void ()* @RTM_output_stats to void (...)*)() #7
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @atol(i8* nocapture) #3

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #2

declare i32 @putchar(i32)

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

declare void @SimStartup(...) #4

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #3

declare i64 @getWorkItemCount(...) #4

; Function Attrs: nounwind uwtable
define noalias %struct.segments* @segments_alloc(i64 %length, i64 %minNum) #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #7
  %2 = bitcast i8* %1 to %struct.segments*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %51, label %4

; <label>:4                                       ; preds = %0
  %5 = shl i64 %minNum, 3
  %6 = tail call noalias i8* @malloc(i64 %5) #7
  %7 = getelementptr inbounds i8, i8* %1, i64 24
  %8 = bitcast i8* %7 to i8**
  store i8* %6, i8** %8, align 8
  %9 = icmp eq i8* %6, null
  %10 = bitcast i8* %6 to i8**
  br i1 %9, label %51, label %11

; <label>:11                                      ; preds = %4
  %12 = add nsw i64 %length, 1
  %13 = mul nsw i64 %12, %minNum
  %14 = tail call noalias i8* @malloc(i64 %13) #7
  %15 = icmp eq i8* %14, null
  br i1 %15, label %51, label %.preheader

.preheader:                                       ; preds = %11
  %16 = icmp sgt i64 %minNum, 0
  br i1 %16, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %17 = add i64 %minNum, -1
  %xtraiter = and i64 %minNum, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.preheader.split, label %.lr.ph.prol.preheader

.lr.ph.prol.preheader:                            ; preds = %.lr.ph.preheader
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.prol.preheader
  %i.01.prol = phi i64 [ %22, %.lr.ph.prol ], [ 0, %.lr.ph.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %.lr.ph.prol ], [ %xtraiter, %.lr.ph.prol.preheader ]
  %18 = mul nsw i64 %i.01.prol, %12
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  %20 = getelementptr inbounds i8*, i8** %10, i64 %i.01.prol
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %length
  store i8 0, i8* %21, align 1
  %22 = add nuw nsw i64 %i.01.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph.preheader.split.loopexit, label %.lr.ph.prol, !llvm.loop !3

.lr.ph.preheader.split.loopexit:                  ; preds = %.lr.ph.prol
  %.lcssa = phi i64 [ %22, %.lr.ph.prol ]
  br label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.preheader.split.loopexit, %.lr.ph.preheader
  %i.01.unr = phi i64 [ 0, %.lr.ph.preheader ], [ %.lcssa, %.lr.ph.preheader.split.loopexit ]
  %23 = icmp ult i64 %17, 3
  br i1 %23, label %._crit_edge.loopexit, label %.lr.ph.preheader.split.split

.lr.ph.preheader.split.split:                     ; preds = %.lr.ph.preheader.split
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.split.split
  %i.01 = phi i64 [ %i.01.unr, %.lr.ph.preheader.split.split ], [ %43, %.lr.ph ]
  %24 = mul nsw i64 %i.01, %12
  %25 = getelementptr inbounds i8, i8* %14, i64 %24
  %26 = getelementptr inbounds i8*, i8** %10, i64 %i.01
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %length
  store i8 0, i8* %27, align 1
  %28 = add nuw nsw i64 %i.01, 1
  %29 = mul nsw i64 %28, %12
  %30 = getelementptr inbounds i8, i8* %14, i64 %29
  %31 = getelementptr inbounds i8*, i8** %10, i64 %28
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %length
  store i8 0, i8* %32, align 1
  %33 = add nsw i64 %i.01, 2
  %34 = mul nsw i64 %33, %12
  %35 = getelementptr inbounds i8, i8* %14, i64 %34
  %36 = getelementptr inbounds i8*, i8** %10, i64 %33
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %length
  store i8 0, i8* %37, align 1
  %38 = add nsw i64 %i.01, 3
  %39 = mul nsw i64 %38, %12
  %40 = getelementptr inbounds i8, i8* %14, i64 %39
  %41 = getelementptr inbounds i8*, i8** %10, i64 %38
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %length
  store i8 0, i8* %42, align 1
  %43 = add nsw i64 %i.01, 4
  %exitcond.3 = icmp eq i64 %43, %minNum
  br i1 %exitcond.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader.split
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %44 = getelementptr inbounds i8, i8* %1, i64 8
  %45 = bitcast i8* %44 to i64*
  store i64 %minNum, i64* %45, align 8
  %46 = bitcast i8* %1 to i64*
  store i64 %length, i64* %46, align 8
  %47 = tail call %struct.vector* @vector_alloc(i64 %minNum) #7
  %48 = getelementptr inbounds i8, i8* %1, i64 16
  %49 = bitcast i8* %48 to %struct.vector**
  store %struct.vector* %47, %struct.vector** %49, align 8
  %50 = icmp eq %struct.vector* %47, null
  %. = select i1 %50, %struct.segments* null, %struct.segments* %2
  br label %51

; <label>:51                                      ; preds = %._crit_edge, %11, %4, %0
  %.0 = phi %struct.segments* [ null, %0 ], [ null, %4 ], [ null, %11 ], [ %., %._crit_edge ]
  ret %struct.segments* %.0
}

; Function Attrs: nounwind uwtable
define void @segments_create(%struct.segments* readonly %segmentsPtr, %struct.gene* readonly %genePtr, %struct.random* %randomPtr) #0 {
  %1 = icmp eq %struct.segments* %segmentsPtr, null
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.32, i64 0, i64 0), i32 148, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

; <label>:3                                       ; preds = %0
  %4 = icmp eq %struct.gene* %genePtr, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2.33, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.32, i64 0, i64 0), i32 149, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

; <label>:6                                       ; preds = %3
  %7 = icmp eq %struct.random* %randomPtr, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %6
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.34, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.32, i64 0, i64 0), i32 150, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

; <label>:9                                       ; preds = %6
  %10 = getelementptr inbounds %struct.segments, %struct.segments* %segmentsPtr, i64 0, i32 2
  %11 = load %struct.vector*, %struct.vector** %10, align 8
  %12 = getelementptr inbounds %struct.segments, %struct.segments* %segmentsPtr, i64 0, i32 3
  %13 = load i8**, i8*** %12, align 8
  %14 = getelementptr inbounds %struct.segments, %struct.segments* %segmentsPtr, i64 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.segments, %struct.segments* %segmentsPtr, i64 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 2
  %23 = load %struct.bitmap*, %struct.bitmap** %22, align 8
  %24 = sub nsw i64 %21, %15
  %25 = add nsw i64 %24, 1
  %26 = icmp sgt i64 %17, 0
  br i1 %26, label %.lr.ph10.preheader, label %._crit_edge11

.lr.ph10.preheader:                               ; preds = %9
  br label %.lr.ph10

; <label>:27                                      ; preds = %34
  %28 = icmp slt i64 %41, %17
  br i1 %28, label %.lr.ph10, label %._crit_edge11.loopexit

.lr.ph10:                                         ; preds = %27, %.lr.ph10.preheader
  %i.08 = phi i64 [ %41, %27 ], [ 0, %.lr.ph10.preheader ]
  %29 = tail call i64 @random_generate(%struct.random* nonnull %randomPtr) #7
  %30 = urem i64 %29, %25
  %31 = tail call i64 @bitmap_set(%struct.bitmap* %23, i64 %30) #7
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %.lr.ph10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.35, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.32, i64 0, i64 0), i32 166, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

; <label>:34                                      ; preds = %.lr.ph10
  %35 = getelementptr inbounds i8*, i8** %13, i64 %i.08
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %19, i64 %30
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 %15, i32 1, i1 false)
  %38 = load i8*, i8** %35, align 8
  %39 = tail call i64 @vector_pushBack(%struct.vector* %11, i8* %38) #7
  %40 = icmp eq i64 %39, 0
  %41 = add nuw nsw i64 %i.08, 1
  br i1 %40, label %42, label %27

; <label>:42                                      ; preds = %34
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.35, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.32, i64 0, i64 0), i32 169, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

._crit_edge11.loopexit:                           ; preds = %27
  br label %._crit_edge11

._crit_edge11:                                    ; preds = %._crit_edge11.loopexit, %9
  %43 = tail call i64 @bitmap_isSet(%struct.bitmap* %23, i64 0) #7
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %56

; <label>:45                                      ; preds = %._crit_edge11
  %46 = add nsw i64 %15, 1
  %47 = tail call noalias i8* @malloc(i64 %46) #7
  %48 = getelementptr inbounds i8, i8* %47, i64 %15
  store i8 0, i8* %48, align 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %19, i64 %15, i32 1, i1 false)
  %49 = tail call i64 @vector_pushBack(%struct.vector* %11, i8* %47) #7
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %45
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.35, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.32, i64 0, i64 0), i32 179, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

; <label>:52                                      ; preds = %45
  %53 = tail call i64 @bitmap_set(%struct.bitmap* %23, i64 0) #7
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %52
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.35, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.32, i64 0, i64 0), i32 181, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

; <label>:56                                      ; preds = %52, %._crit_edge11
  %57 = add nsw i64 %15, -1
  %58 = icmp slt i64 %24, 0
  br i1 %58, label %._crit_edge7, label %.lr.ph6

.lr.ph6:                                          ; preds = %56
  %59 = add nsw i64 %15, 1
  br label %60

; <label>:60                                      ; preds = %83, %.lr.ph6
  %i.14 = phi i64 [ 0, %.lr.ph6 ], [ %84, %83 ]
  %61 = add nsw i64 %57, %i.14
  %62 = icmp slt i64 %61, %25
  %63 = select i1 %62, i64 %61, i64 %25
  %64 = icmp slt i64 %i.14, %63
  br i1 %64, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %60
  br label %.lr.ph

.lr.ph:                                           ; preds = %67, %.lr.ph.preheader
  %i.21 = phi i64 [ %68, %67 ], [ %i.14, %.lr.ph.preheader ]
  %65 = tail call i64 @bitmap_isSet(%struct.bitmap* %23, i64 %i.21) #7
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %._crit_edge.loopexit

; <label>:67                                      ; preds = %.lr.ph
  %68 = add nsw i64 %i.21, 1
  %69 = icmp slt i64 %68, %63
  br i1 %69, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %67, %.lr.ph
  %i.2.lcssa.ph = phi i64 [ %i.21, %.lr.ph ], [ %68, %67 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %60
  %i.2.lcssa = phi i64 [ %i.14, %60 ], [ %i.2.lcssa.ph, %._crit_edge.loopexit ]
  %70 = icmp eq i64 %i.2.lcssa, %63
  br i1 %70, label %71, label %83

; <label>:71                                      ; preds = %._crit_edge
  %72 = tail call noalias i8* @malloc(i64 %59) #7
  %73 = getelementptr inbounds i8, i8* %72, i64 %15
  store i8 0, i8* %73, align 1
  %74 = add nsw i64 %63, -1
  %75 = getelementptr inbounds i8, i8* %19, i64 %74
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %75, i64 %15, i32 1, i1 false)
  %76 = tail call i64 @vector_pushBack(%struct.vector* %11, i8* %72) #7
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %71
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.35, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.32, i64 0, i64 0), i32 200, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

; <label>:79                                      ; preds = %71
  %80 = tail call i64 @bitmap_set(%struct.bitmap* %23, i64 %74) #7
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %79
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.35, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.32, i64 0, i64 0), i32 202, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

; <label>:83                                      ; preds = %79, %._crit_edge
  %i.3 = phi i64 [ %74, %79 ], [ %i.2.lcssa, %._crit_edge ]
  %84 = add nsw i64 %i.3, 1
  %85 = icmp slt i64 %i.3, %24
  br i1 %85, label %60, label %._crit_edge7.loopexit

._crit_edge7.loopexit:                            ; preds = %83
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %._crit_edge7.loopexit, %56
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @segments_free(%struct.segments* nocapture %segmentsPtr) #0 {
  %1 = getelementptr inbounds %struct.segments, %struct.segments* %segmentsPtr, i64 0, i32 2
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i8* @vector_at(%struct.vector* %2, i64 0) #7
  tail call void @free(i8* %3) #7
  %4 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @vector_free(%struct.vector* %4) #7
  %5 = getelementptr inbounds %struct.segments, %struct.segments* %segmentsPtr, i64 0, i32 3
  %6 = bitcast i8*** %5 to i8**
  %7 = load i8*, i8** %6, align 8
  tail call void @free(i8* %7) #7
  %8 = bitcast %struct.segments* %segmentsPtr to i8*
  tail call void @free(i8* %8) #7
  ret void
}

; Function Attrs: nounwind uwtable
define noalias %struct.sequencer* @sequencer_alloc(i64 %geneLength, i64 %segmentLength, %struct.segments* %segmentsPtr) #0 {
  %1 = sub nsw i64 %geneLength, %segmentLength
  %2 = add nsw i64 %1, 1
  %3 = tail call noalias i8* @malloc(i64 64) #7
  %4 = bitcast i8* %3 to %struct.sequencer*
  %5 = icmp eq i8* %3, null
  br i1 %5, label %.loopexit, label %6

; <label>:6                                       ; preds = %0
  %7 = tail call %struct.hashtable* @hashtable_alloc(i64 %geneLength, i64 (i8*)* nonnull @hashSegment, i64 (%struct.pair*, %struct.pair*)* nonnull @compareSegment, i64 -1, i64 -1) #7
  %8 = getelementptr inbounds i8, i8* %3, i64 16
  %9 = bitcast i8* %8 to %struct.hashtable**
  store %struct.hashtable* %7, %struct.hashtable** %9, align 8
  %10 = icmp eq %struct.hashtable* %7, null
  br i1 %10, label %.loopexit, label %11

; <label>:11                                      ; preds = %6
  %12 = shl i64 %2, 4
  %13 = tail call noalias i8* @malloc(i64 %12) #7
  %14 = getelementptr inbounds i8, i8* %3, i64 24
  %15 = bitcast i8* %14 to i8**
  store i8* %13, i8** %15, align 8
  %16 = icmp slt i64 %1, 0
  %17 = bitcast i8* %13 to %struct.endInfoEntry*
  br i1 %16, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %11
  %18 = add i64 %geneLength, 1
  %19 = sub i64 %18, %segmentLength
  %20 = sub i64 %geneLength, %segmentLength
  %xtraiter = and i64 %19, 7
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph8.split, label %.preheader11

.preheader11:                                     ; preds = %.lr.ph8
  br label %21

; <label>:21                                      ; preds = %21, %.preheader11
  %i.06.prol = phi i64 [ %24, %21 ], [ 0, %.preheader11 ]
  %prol.iter = phi i64 [ %prol.iter.sub, %21 ], [ %xtraiter, %.preheader11 ]
  %22 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %i.06.prol, i32 0
  %23 = bitcast i64* %22 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %23, align 8
  %24 = add nuw nsw i64 %i.06.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph8.split.loopexit, label %21, !llvm.loop !5

.lr.ph8.split.loopexit:                           ; preds = %21
  %.lcssa = phi i64 [ %24, %21 ]
  br label %.lr.ph8.split

.lr.ph8.split:                                    ; preds = %.lr.ph8.split.loopexit, %.lr.ph8
  %i.06.unr = phi i64 [ 0, %.lr.ph8 ], [ %.lcssa, %.lr.ph8.split.loopexit ]
  %25 = icmp ult i64 %20, 7
  br i1 %25, label %._crit_edge9.loopexit, label %.lr.ph8.split.split

.lr.ph8.split.split:                              ; preds = %.lr.ph8.split
  br label %26

; <label>:26                                      ; preds = %26, %.lr.ph8.split.split
  %i.06 = phi i64 [ %i.06.unr, %.lr.ph8.split.split ], [ %50, %26 ]
  %27 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %i.06, i32 0
  %28 = bitcast i64* %27 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %28, align 8
  %29 = add nuw nsw i64 %i.06, 1
  %30 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %29, i32 0
  %31 = bitcast i64* %30 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %31, align 8
  %32 = add nsw i64 %i.06, 2
  %33 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %32, i32 0
  %34 = bitcast i64* %33 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %34, align 8
  %35 = add nsw i64 %i.06, 3
  %36 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %35, i32 0
  %37 = bitcast i64* %36 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %37, align 8
  %38 = add nsw i64 %i.06, 4
  %39 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %38, i32 0
  %40 = bitcast i64* %39 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %40, align 8
  %41 = add nsw i64 %i.06, 5
  %42 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %41, i32 0
  %43 = bitcast i64* %42 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %43, align 8
  %44 = add nsw i64 %i.06, 6
  %45 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %44, i32 0
  %46 = bitcast i64* %45 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %46, align 8
  %47 = add nsw i64 %i.06, 7
  %48 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %47, i32 0
  %49 = bitcast i64* %48 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %49, align 8
  %50 = add nsw i64 %i.06, 8
  %exitcond10.7 = icmp eq i64 %50, %19
  br i1 %exitcond10.7, label %._crit_edge9.loopexit.unr-lcssa, label %26

._crit_edge9.loopexit.unr-lcssa:                  ; preds = %26
  br label %._crit_edge9.loopexit

._crit_edge9.loopexit:                            ; preds = %._crit_edge9.loopexit.unr-lcssa, %.lr.ph8.split
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %._crit_edge9.loopexit, %11
  %51 = shl i64 %segmentLength, 3
  %52 = tail call noalias i8* @malloc(i64 %51) #7
  %53 = getelementptr inbounds i8, i8* %3, i64 32
  %54 = bitcast i8* %53 to i8**
  store i8* %52, i8** %54, align 8
  %55 = icmp eq i8* %52, null
  %56 = bitcast i8* %52 to %struct.table**
  br i1 %55, label %.loopexit, label %.preheader1

.preheader1:                                      ; preds = %._crit_edge9
  %57 = icmp sgt i64 %segmentLength, 1
  br i1 %57, label %.lr.ph4.preheader, label %._crit_edge5

.lr.ph4.preheader:                                ; preds = %.preheader1
  br label %.lr.ph4

; <label>:58                                      ; preds = %.lr.ph4
  %59 = icmp slt i64 %63, %segmentLength
  br i1 %59, label %.lr.ph4, label %._crit_edge5.loopexit

.lr.ph4:                                          ; preds = %58, %.lr.ph4.preheader
  %i.13 = phi i64 [ %63, %58 ], [ 1, %.lr.ph4.preheader ]
  %60 = tail call %struct.table* @table_alloc(i64 %geneLength, i64 (i8*, i8*)* null) #7
  %61 = getelementptr inbounds %struct.table*, %struct.table** %56, i64 %i.13
  store %struct.table* %60, %struct.table** %61, align 8
  %62 = icmp eq %struct.table* %60, null
  %63 = add nuw nsw i64 %i.13, 1
  br i1 %62, label %.loopexit.loopexit, label %58

._crit_edge5.loopexit:                            ; preds = %58
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge5.loopexit, %.preheader1
  %64 = getelementptr inbounds i8, i8* %3, i64 56
  %65 = bitcast i8* %64 to i64*
  store i64 %segmentLength, i64* %65, align 8
  %66 = shl i64 %2, 6
  %67 = tail call noalias i8* @malloc(i64 %66) #7
  %68 = getelementptr inbounds i8, i8* %3, i64 40
  %69 = bitcast i8* %68 to i8**
  store i8* %67, i8** %69, align 8
  %70 = icmp eq i8* %67, null
  %71 = bitcast i8* %67 to %struct.constructEntry*
  br i1 %70, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge5
  br i1 %16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %72 = add i64 %geneLength, 1
  %73 = sub i64 %72, %segmentLength
  br label %74

; <label>:74                                      ; preds = %74, %.lr.ph
  %i.22 = phi i64 [ 0, %.lr.ph ], [ %84, %74 ]
  %75 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i64 %i.22
  %76 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %75, i64 0, i32 0
  store i64 1, i64* %76, align 8
  %77 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i64 %i.22, i32 1
  %78 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i64 %i.22, i32 3
  %79 = bitcast i8** %77 to i8*
  call void @llvm.memset.p0i8.i64(i8* %79, i8 0, i64 16, i32 8, i1 false)
  store %struct.constructEntry* %75, %struct.constructEntry** %78, align 8
  %80 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i64 %i.22, i32 4
  store %struct.constructEntry* null, %struct.constructEntry** %80, align 8
  %81 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i64 %i.22, i32 5
  store %struct.constructEntry* %75, %struct.constructEntry** %81, align 8
  %82 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i64 %i.22, i32 6
  store i64 0, i64* %82, align 8
  %83 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i64 %i.22, i32 7
  store i64 %segmentLength, i64* %83, align 8
  %84 = add nuw nsw i64 %i.22, 1
  %exitcond = icmp eq i64 %84, %73
  br i1 %exitcond, label %._crit_edge.loopexit, label %74

._crit_edge.loopexit:                             ; preds = %74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %85 = tail call %struct.table* @table_alloc(i64 %geneLength, i64 (i8*, i8*)* null) #7
  %86 = getelementptr inbounds i8, i8* %3, i64 48
  %87 = bitcast i8* %86 to %struct.table**
  store %struct.table* %85, %struct.table** %87, align 8
  %88 = icmp eq %struct.table* %85, null
  br i1 %88, label %.loopexit, label %89

; <label>:89                                      ; preds = %._crit_edge
  %90 = getelementptr inbounds i8, i8* %3, i64 8
  %91 = bitcast i8* %90 to %struct.segments**
  store %struct.segments* %segmentsPtr, %struct.segments** %91, align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %89, %._crit_edge, %._crit_edge5, %._crit_edge9, %6, %0
  %.0 = phi %struct.sequencer* [ %4, %89 ], [ null, %0 ], [ null, %6 ], [ null, %._crit_edge9 ], [ null, %._crit_edge5 ], [ null, %._crit_edge ], [ null, %.loopexit.loopexit ]
  ret %struct.sequencer* %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @hashSegment(i8* %keyPtr) #0 {
  %1 = tail call i64 @hash_sdbm(i8* %keyPtr) #7
  ret i64 %1
}

; Function Attrs: nounwind readonly uwtable
define internal i64 @compareSegment(%struct.pair* nocapture readonly %a, %struct.pair* nocapture readonly %b) #6 {
  %1 = getelementptr inbounds %struct.pair, %struct.pair* %a, i64 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds %struct.pair, %struct.pair* %b, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = tail call i32 @strcmp(i8* %2, i8* %4) #15
  %6 = sext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @sequencer_run(i8* nocapture %argPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %it16 = alloca %struct.list_node*, align 8
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #7
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1
  %4 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #7
  %5 = trunc i64 %4 to i32
  tail call void @SimRoiStart(i32 %5) #7
  %6 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #7
  %7 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %8 = bitcast i8* %7 to %struct.hashtable**
  %9 = load %struct.hashtable*, %struct.hashtable** %8, align 8
  %10 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %11 = bitcast i8* %10 to %struct.endInfoEntry**
  %12 = load %struct.endInfoEntry*, %struct.endInfoEntry** %11, align 8
  %13 = getelementptr inbounds i8, i8* %argPtr, i64 32
  %14 = bitcast i8* %13 to %struct.table***
  %15 = load %struct.table**, %struct.table*** %14, align 8
  %16 = getelementptr inbounds i8, i8* %argPtr, i64 40
  %17 = bitcast i8* %16 to %struct.constructEntry**
  %18 = load %struct.constructEntry*, %struct.constructEntry** %17, align 8
  %19 = getelementptr inbounds i8, i8* %argPtr, i64 48
  %20 = bitcast i8* %19 to %struct.table**
  %21 = load %struct.table*, %struct.table** %20, align 8
  %22 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %23 = bitcast i8* %22 to %struct.segments**
  %24 = load %struct.segments*, %struct.segments** %23, align 8
  %25 = icmp eq %struct.segments* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.43, i64 0, i64 0), i32 257, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #14
  unreachable

; <label>:27                                      ; preds = %0
  %28 = getelementptr inbounds %struct.segments, %struct.segments* %24, i64 0, i32 2
  %29 = load %struct.vector*, %struct.vector** %28, align 8
  %30 = tail call i64 @vector_getSize(%struct.vector* %29) #7
  %31 = getelementptr inbounds %struct.segments, %struct.segments* %24, i64 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #7
  %34 = sdiv i64 %33, 2
  %35 = add nsw i64 %34, %30
  %36 = sdiv i64 %35, %33
  %37 = mul nsw i64 %36, %6
  %38 = add nsw i64 %33, -1
  %39 = icmp eq i64 %6, %38
  %40 = add nsw i64 %37, %36
  %i_stop.0 = select i1 %39, i64 %30, i64 %40
  %41 = icmp slt i64 %37, %i_stop.0
  br i1 %41, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %27
  %42 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i64 0, i32 0
  %43 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  br label %44

; <label>:44                                      ; preds = %75, %.lr.ph101
  %i.099 = phi i64 [ %37, %.lr.ph101 ], [ %64, %75 ]
  %45 = load i32, i32* %42, align 8
  %46 = tail call i32 @workBegin(i32 0, i32 %45) #7
  store i32 %46, i32* %43, align 4
  br label %.outer22

.outer22:                                         ; preds = %54, %44
  %tries.0.ph = phi i32 [ %55, %54 ], [ 9, %44 ]
  %47 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %48 = icmp eq i64 %47, 0
  %49 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %49, i32 0, i32 3, i32 1)
  br i1 %48, label %._crit_edge94, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %.outer22
  br label %.lr.ph93

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader
  tail call void @llvm.x86.sse2.pause() #7
  %50 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %._crit_edge94.loopexit, label %.lr.ph93

._crit_edge94.loopexit:                           ; preds = %.lr.ph93
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %._crit_edge94.loopexit, %.outer22
  %52 = icmp slt i32 %tries.0.ph, 2
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %._crit_edge94
  %tries.0.ph.lcssa = phi i32 [ %tries.0.ph, %._crit_edge94 ]
  tail call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #7
  br label %63

; <label>:54                                      ; preds = %._crit_edge94
  %55 = add nsw i32 %tries.0.ph, -1
  %56 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #7, !srcloc !6
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %.outer22

; <label>:59                                      ; preds = %54
  %tries.0.ph.lcssa198 = phi i32 [ %tries.0.ph, %54 ]
  %60 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %63, label %62

; <label>:62                                      ; preds = %59
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #7, !srcloc !7
  br label %63

; <label>:63                                      ; preds = %62, %59, %53
  %tries.0.ph199 = phi i32 [ %tries.0.ph.lcssa198, %59 ], [ %tries.0.ph.lcssa198, %62 ], [ %tries.0.ph.lcssa, %53 ]
  %64 = add nsw i64 %i.099, 12
  %65 = icmp slt i64 %i_stop.0, %64
  %66 = select i1 %65, i64 %i_stop.0, i64 %64
  %67 = icmp slt i64 %i.099, %66
  br i1 %67, label %.lr.ph97.preheader, label %._crit_edge98

.lr.ph97.preheader:                               ; preds = %63
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97, %.lr.ph97.preheader
  %ii.095 = phi i64 [ %70, %.lr.ph97 ], [ %i.099, %.lr.ph97.preheader ]
  %68 = tail call i8* @vector_at(%struct.vector* %29, i64 %ii.095) #7
  %69 = tail call i64 @TMhashtable_insert(%struct.hashtable* %9, i8* %68, i8* %68) #7
  %70 = add nsw i64 %ii.095, 1
  %71 = icmp slt i64 %70, %66
  br i1 %71, label %.lr.ph97, label %._crit_edge98.loopexit, !llvm.loop !8

._crit_edge98.loopexit:                           ; preds = %.lr.ph97
  br label %._crit_edge98

._crit_edge98:                                    ; preds = %._crit_edge98.loopexit, %63
  %72 = icmp sgt i32 %tries.0.ph199, 1
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %._crit_edge98
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #7, !srcloc !10
  br label %75

; <label>:74                                      ; preds = %._crit_edge98
  tail call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #7
  br label %75

; <label>:75                                      ; preds = %74, %73
  tail call void @workEnd(i32 0, i32 0) #7
  %76 = icmp slt i64 %64, %i_stop.0
  br i1 %76, label %44, label %._crit_edge102.loopexit

._crit_edge102.loopexit:                          ; preds = %75
  br label %._crit_edge102

._crit_edge102:                                   ; preds = %._crit_edge102.loopexit, %27
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #7
  %77 = tail call i64 @hashtable_getSize(%struct.hashtable* %9) #7
  %78 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i64 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %34
  %81 = sdiv i64 %80, %33
  %82 = mul nsw i64 %81, %6
  %83 = add nsw i64 %82, %81
  %i_stop.1 = select i1 %39, i64 %79, i64 %83
  %84 = add nsw i64 %77, %34
  %85 = sdiv i64 %84, %33
  %86 = mul nsw i64 %85, %6
  %87 = icmp slt i64 %82, %i_stop.1
  br i1 %87, label %.lr.ph91, label %._crit_edge92

.lr.ph91:                                         ; preds = %._crit_edge102
  %88 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i64 0, i32 0
  %89 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %90 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i64 0, i32 0
  %91 = icmp sgt i64 %32, 1
  br label %92

; <label>:92                                      ; preds = %217, %.lr.ph91
  %i.189 = phi i64 [ %82, %.lr.ph91 ], [ %218, %217 ]
  %entryIndex.088 = phi i64 [ %86, %.lr.ph91 ], [ %entryIndex.1.lcssa, %217 ]
  %93 = load i32, i32* %88, align 8
  %94 = call i32 @workBegin(i32 0, i32 %93) #7
  store i32 %94, i32* %89, align 4
  %95 = load %struct.list**, %struct.list*** %90, align 8
  %96 = getelementptr inbounds %struct.list*, %struct.list** %95, i64 %i.189
  %97 = load %struct.list*, %struct.list** %96, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %97) #7
  br label %98

; <label>:98                                      ; preds = %213, %92
  %entryIndex.1 = phi i64 [ %entryIndex.088, %92 ], [ %140, %213 ]
  %99 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %97) #15
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %217, label %101

; <label>:101                                     ; preds = %98
  %102 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %97) #7
  %103 = bitcast i8* %102 to i8**
  %104 = load i8*, i8** %103, align 8
  br label %.outer21

.outer21:                                         ; preds = %118, %101
  %tries8.0.ph = phi i32 [ %119, %118 ], [ 9, %101 ]
  %105 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %106 = icmp eq i64 %105, 0
  %107 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %107, i32 0, i32 3, i32 1)
  %108 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %entryIndex.1, i32 1
  %109 = bitcast i8** %108 to i8*
  call void @llvm.prefetch(i8* %109, i32 0, i32 3, i32 1)
  %110 = add nsw i64 %entryIndex.1, 1
  %111 = srem i64 %110, %77
  %112 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %111, i32 1
  %113 = bitcast i8** %112 to i8*
  call void @llvm.prefetch(i8* %113, i32 0, i32 3, i32 1)
  br i1 %106, label %._crit_edge75, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %.outer21
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74, %.lr.ph74.preheader
  call void @llvm.x86.sse2.pause() #7
  %114 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %._crit_edge75.loopexit, label %.lr.ph74

._crit_edge75.loopexit:                           ; preds = %.lr.ph74
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %._crit_edge75.loopexit, %.outer21
  %116 = icmp slt i32 %tries8.0.ph, 2
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %._crit_edge75
  %tries8.0.ph.lcssa = phi i32 [ %tries8.0.ph, %._crit_edge75 ]
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #7
  br label %.preheader20

; <label>:118                                     ; preds = %._crit_edge75
  %119 = add nsw i32 %tries8.0.ph, -1
  %120 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #7, !srcloc !6
  %121 = trunc i64 %120 to i32
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %.outer21

; <label>:123                                     ; preds = %118
  %tries8.0.ph.lcssa188 = phi i32 [ %tries8.0.ph, %118 ]
  %124 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %.preheader20, label %126

; <label>:126                                     ; preds = %123
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #7, !srcloc !7
  br label %.preheader20

.preheader20:                                     ; preds = %126, %123, %117
  %tries8.0.ph189 = phi i32 [ %tries8.0.ph.lcssa188, %126 ], [ %tries8.0.ph.lcssa, %117 ], [ %tries8.0.ph.lcssa188, %123 ]
  %127 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %entryIndex.1, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %._crit_edge78, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %.preheader20
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77, %.lr.ph77.preheader
  %entryIndex.276 = phi i64 [ %131, %.lr.ph77 ], [ %entryIndex.1, %.lr.ph77.preheader ]
  %130 = add nsw i64 %entryIndex.276, 1
  %131 = srem i64 %130, %77
  %132 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %131, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %._crit_edge78.loopexit, label %.lr.ph77, !llvm.loop !11

._crit_edge78.loopexit:                           ; preds = %.lr.ph77
  %.lcssa191 = phi i8** [ %132, %.lr.ph77 ]
  %.lcssa190 = phi i64 [ %131, %.lr.ph77 ]
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %.preheader20
  %.lcssa35 = phi i8** [ %127, %.preheader20 ], [ %.lcssa191, %._crit_edge78.loopexit ]
  %.pn = phi i64 [ %entryIndex.1, %.preheader20 ], [ %.lcssa190, %._crit_edge78.loopexit ]
  %.lcssa34 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %.pn
  store i8* %104, i8** %.lcssa35, align 8
  %135 = icmp sgt i32 %tries8.0.ph189, 1
  br i1 %135, label %136, label %137

; <label>:136                                     ; preds = %._crit_edge78
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #7, !srcloc !10
  br label %138

; <label>:137                                     ; preds = %._crit_edge78
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #7
  br label %138

; <label>:138                                     ; preds = %137, %136
  %139 = add nsw i64 %.pn, 1
  %140 = srem i64 %139, %77
  %141 = getelementptr inbounds i8, i8* %104, i64 1
  %142 = load i8, i8* %141, align 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %hashString.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %138
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %144 = phi i8 [ %149, %.lr.ph.i ], [ %142, %.lr.ph.i.preheader ]
  %.03.i = phi i8* [ %146, %.lr.ph.i ], [ %141, %.lr.ph.i.preheader ]
  %hash.02.i = phi i64 [ %148, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %145 = sext i8 %144 to i64
  %146 = getelementptr inbounds i8, i8* %.03.i, i64 1
  %147 = mul i64 %hash.02.i, 65599
  %148 = add i64 %147, %145
  %149 = load i8, i8* %146, align 1
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %hashString.exit.loopexit, label %.lr.ph.i

hashString.exit.loopexit:                         ; preds = %.lr.ph.i
  %.lcssa192 = phi i64 [ %148, %.lr.ph.i ]
  br label %hashString.exit

hashString.exit:                                  ; preds = %hashString.exit.loopexit, %138
  %hash.0.lcssa.i = phi i64 [ 0, %138 ], [ %.lcssa192, %hashString.exit.loopexit ]
  %151 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %.pn, i32 2
  store i64 %hash.0.lcssa.i, i64* %151, align 8
  %152 = load i8, i8* %104, align 1
  %153 = sext i8 %152 to i64
  br i1 %91, label %.preheader16.lr.ph, label %.preheader18

.preheader16.lr.ph:                               ; preds = %hashString.exit
  %154 = bitcast %struct.constructEntry* %.lcssa34 to i8*
  br label %.preheader16

; <label>:155                                     ; preds = %188
  %156 = icmp slt i64 %190, %32
  %157 = getelementptr inbounds i8, i8* %104, i64 %j6.084
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i64
  %160 = mul i64 %162, 65599
  %161 = add i64 %160, %159
  br i1 %156, label %.preheader16, label %.preheader18.loopexit

.preheader18.loopexit:                            ; preds = %155
  %.lcssa195 = phi i64 [ %161, %155 ]
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.loopexit, %hashString.exit
  %.lcssa39 = phi i64 [ %153, %hashString.exit ], [ %.lcssa195, %.preheader18.loopexit ]
  br label %.outer19

.preheader16:                                     ; preds = %155, %.preheader16.lr.ph
  %162 = phi i64 [ %153, %.preheader16.lr.ph ], [ %161, %155 ]
  %j6.084 = phi i64 [ 1, %.preheader16.lr.ph ], [ %190, %155 ]
  br label %.outer17

.outer17:                                         ; preds = %172, %.preheader16
  %tries10.0.ph = phi i32 [ 9, %.preheader16 ], [ %173, %172 ]
  %163 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %164 = icmp eq i64 %163, 0
  %165 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %165, i32 0, i32 3, i32 1)
  %166 = getelementptr inbounds %struct.table*, %struct.table** %15, i64 %j6.084
  %167 = bitcast %struct.table** %166 to i8*
  call void @llvm.prefetch(i8* %167, i32 0, i32 3, i32 1)
  br i1 %164, label %._crit_edge83, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.outer17
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82, %.lr.ph82.preheader
  call void @llvm.x86.sse2.pause() #7
  %168 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %._crit_edge83.loopexit, label %.lr.ph82

._crit_edge83.loopexit:                           ; preds = %.lr.ph82
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %._crit_edge83.loopexit, %.outer17
  %170 = icmp slt i32 %tries10.0.ph, 2
  br i1 %170, label %171, label %172

; <label>:171                                     ; preds = %._crit_edge83
  %tries10.0.ph.lcssa = phi i32 [ %tries10.0.ph, %._crit_edge83 ]
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #7
  br label %181

; <label>:172                                     ; preds = %._crit_edge83
  %173 = add nsw i32 %tries10.0.ph, -1
  %174 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #7, !srcloc !6
  %175 = trunc i64 %174 to i32
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %177, label %.outer17

; <label>:177                                     ; preds = %172
  %tries10.0.ph.lcssa193 = phi i32 [ %tries10.0.ph, %172 ]
  %178 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %181, label %180

; <label>:180                                     ; preds = %177
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #7, !srcloc !7
  br label %181

; <label>:181                                     ; preds = %180, %177, %171
  %tries10.0.ph194 = phi i32 [ %tries10.0.ph.lcssa193, %177 ], [ %tries10.0.ph.lcssa193, %180 ], [ %tries10.0.ph.lcssa, %171 ]
  %182 = getelementptr inbounds %struct.table*, %struct.table** %15, i64 %j6.084
  %183 = load %struct.table*, %struct.table** %182, align 8
  %184 = call i64 @TMtable_insert(%struct.table* %183, i64 %162, i8* %154) #7
  %185 = icmp sgt i32 %tries10.0.ph194, 1
  br i1 %185, label %186, label %187

; <label>:186                                     ; preds = %181
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #7, !srcloc !10
  br label %188

; <label>:187                                     ; preds = %181
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #7
  br label %188

; <label>:188                                     ; preds = %187, %186
  %189 = icmp eq i64 %184, 0
  %190 = add nuw nsw i64 %j6.084, 1
  br i1 %189, label %191, label %155

; <label>:191                                     ; preds = %188
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.44, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.43, i64 0, i64 0), i32 405, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #14
  unreachable

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %.lr.ph86
  call void @llvm.x86.sse2.pause() #7
  %192 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %._crit_edge87.loopexit, label %.lr.ph86

._crit_edge87.loopexit:                           ; preds = %.lr.ph86
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %.outer19, %._crit_edge87.loopexit
  %194 = icmp slt i32 %tries12.0.ph, 2
  br i1 %194, label %210, label %195

; <label>:195                                     ; preds = %._crit_edge87
  %196 = add nsw i32 %tries12.0.ph, -1
  %197 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 0, i64 3, i64 4294967295) #7, !srcloc !6
  %198 = trunc i64 %197 to i32
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %203, label %.outer19

.outer19:                                         ; preds = %195, %.preheader18
  %tries12.0.ph = phi i32 [ 9, %.preheader18 ], [ %196, %195 ]
  %200 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %201 = icmp eq i64 %200, 0
  %202 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %202, i32 0, i32 3, i32 1)
  br i1 %201, label %._crit_edge87, label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %.outer19
  br label %.lr.ph86

; <label>:203                                     ; preds = %195
  %204 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %207, label %206

; <label>:206                                     ; preds = %203
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #7, !srcloc !7
  br label %207

; <label>:207                                     ; preds = %206, %203
  %208 = bitcast %struct.constructEntry* %.lcssa34 to i8*
  %209 = call i64 @TMtable_insert(%struct.table* %21, i64 %.lcssa39, i8* %208) #7
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 3) #7, !srcloc !10
  br label %213

; <label>:210                                     ; preds = %._crit_edge87
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #7
  %211 = bitcast %struct.constructEntry* %.lcssa34 to i8*
  %212 = call i64 @TMtable_insert(%struct.table* %21, i64 %.lcssa39, i8* %211) #7
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #7
  br label %213

; <label>:213                                     ; preds = %210, %207
  %214 = phi i64 [ %212, %210 ], [ %209, %207 ]
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %98

; <label>:216                                     ; preds = %213
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.44, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.43, i64 0, i64 0), i32 418, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #14
  unreachable

; <label>:217                                     ; preds = %98
  %entryIndex.1.lcssa = phi i64 [ %entryIndex.1, %98 ]
  call void @workEnd(i32 0, i32 0) #7
  %218 = add nsw i64 %i.189, 1
  %219 = icmp slt i64 %218, %i_stop.1
  br i1 %219, label %92, label %._crit_edge92.loopexit

._crit_edge92.loopexit:                           ; preds = %217
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %._crit_edge92.loopexit, %._crit_edge102
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #7
  %220 = icmp sgt i64 %32, 1
  br i1 %220, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %._crit_edge92
  %221 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i64 0, i32 0
  %222 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %223 = add nsw i64 %86, %85
  %index_stop.0 = select i1 %39, i64 %77, i64 %223
  %224 = icmp slt i64 %86, %index_stop.0
  %225 = icmp eq i64 %6, 0
  %226 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 1, i32 0
  %227 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 0, i32 1
  %228 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 0, i32 0
  %229 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 0, i32 1
  %230 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 0, i32 2
  br label %231

; <label>:231                                     ; preds = %388, %.lr.ph72
  %substringLength.070.in = phi i64 [ %32, %.lr.ph72 ], [ %substringLength.070, %388 ]
  %substringLength.070 = add nsw i64 %substringLength.070.in, -1
  %232 = load i32, i32* %221, align 8
  %233 = call i32 @workBegin(i32 0, i32 %232) #7
  store i32 %233, i32* %222, align 4
  %234 = getelementptr inbounds %struct.table*, %struct.table** %15, i64 %substringLength.070
  %235 = load %struct.table*, %struct.table** %234, align 8
  %236 = getelementptr inbounds %struct.table, %struct.table* %235, i64 0, i32 0
  %237 = load %struct.list**, %struct.list*** %236, align 8
  %238 = getelementptr inbounds %struct.table, %struct.table* %235, i64 0, i32 1
  %239 = load i64, i64* %238, align 8
  br i1 %224, label %.lr.ph56, label %._crit_edge57

.lr.ph56:                                         ; preds = %231
  %240 = sub nsw i64 %32, %substringLength.070
  %substringLength.0.neg = sub i64 1, %substringLength.070.in
  br label %241

; <label>:241                                     ; preds = %.loopexit14, %.lr.ph56
  %entryIndex.354 = phi i64 [ %86, %.lr.ph56 ], [ %331, %.loopexit14 ]
  %242 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %entryIndex.354, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %.loopexit14, label %245

; <label>:245                                     ; preds = %241
  %246 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %entryIndex.354, i32 1
  %247 = load i8*, i8** %246, align 8
  %248 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %entryIndex.354, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = urem i64 %249, %239
  %251 = getelementptr inbounds %struct.list*, %struct.list** %237, i64 %250
  %252 = load %struct.list*, %struct.list** %251, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it16, %struct.list* %252) #7
  %253 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %entryIndex.354, i32 3
  %254 = getelementptr inbounds i8, i8* %247, i64 %240
  %255 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %entryIndex.354, i32 4
  %256 = bitcast %struct.constructEntry** %255 to i8**
  %257 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %entryIndex.354, i32 6
  br label %258

; <label>:258                                     ; preds = %326, %245
  %259 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it16, %struct.list* %252) #15
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %.loopexit14.loopexit, label %261

; <label>:261                                     ; preds = %258
  %262 = call i8* @list_iter_next(%struct.list_node** nonnull %it16, %struct.list* %252) #7
  %263 = bitcast i8* %262 to %struct.constructEntry*
  %264 = getelementptr inbounds i8, i8* %262, i64 8
  %265 = bitcast i8* %264 to i8**
  %266 = load i8*, i8** %265, align 8
  br label %.outer

.outer:                                           ; preds = %283, %261
  %tries18.0.ph = phi i32 [ %284, %283 ], [ 9, %261 ]
  %267 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %268 = icmp eq i64 %267, 0
  %269 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %269, i32 0, i32 3, i32 1)
  %270 = bitcast i8* %262 to i64*
  %271 = bitcast i64* %270 to i8*
  call void @llvm.prefetch(i8* %271, i32 0, i32 3, i32 1)
  %272 = bitcast %struct.constructEntry** %253 to i8*
  call void @llvm.prefetch(i8* %272, i32 0, i32 3, i32 1)
  %273 = getelementptr inbounds i8, i8* %262, i64 40
  %274 = bitcast i8* %273 to %struct.constructEntry**
  %275 = bitcast %struct.constructEntry** %274 to i8*
  call void @llvm.prefetch(i8* %275, i32 0, i32 3, i32 1)
  %276 = getelementptr inbounds i8, i8* %262, i64 56
  %277 = bitcast i8* %276 to i64*
  %278 = bitcast i64* %277 to i8*
  call void @llvm.prefetch(i8* %278, i32 0, i32 3, i32 1)
  br i1 %268, label %._crit_edge53, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %.outer
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52, %.lr.ph52.preheader
  call void @llvm.x86.sse2.pause() #7
  %279 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %._crit_edge53.loopexit, label %.lr.ph52

._crit_edge53.loopexit:                           ; preds = %.lr.ph52
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %._crit_edge53.loopexit, %.outer
  %281 = icmp slt i32 %tries18.0.ph, 2
  br i1 %281, label %282, label %283

; <label>:282                                     ; preds = %._crit_edge53
  %tries18.0.ph.lcssa = phi i32 [ %tries18.0.ph, %._crit_edge53 ]
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #7
  br label %292

; <label>:283                                     ; preds = %._crit_edge53
  %284 = add nsw i32 %tries18.0.ph, -1
  %285 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 4, i64 0, i64 4, i64 4294967295) #7, !srcloc !6
  %286 = trunc i64 %285 to i32
  %287 = icmp eq i32 %286, -1
  br i1 %287, label %288, label %.outer

; <label>:288                                     ; preds = %283
  %tries18.0.ph.lcssa183 = phi i32 [ %tries18.0.ph, %283 ]
  %289 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #7
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %292, label %291

; <label>:291                                     ; preds = %288
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #7, !srcloc !7
  br label %292

; <label>:292                                     ; preds = %291, %288, %282
  %tries18.0.ph184 = phi i32 [ %tries18.0.ph.lcssa183, %288 ], [ %tries18.0.ph.lcssa183, %291 ], [ %tries18.0.ph.lcssa, %282 ]
  %293 = bitcast i8* %262 to i64*
  %294 = load i64, i64* %293, align 8
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %322, label %296

; <label>:296                                     ; preds = %292
  %297 = load %struct.constructEntry*, %struct.constructEntry** %253, align 8
  %298 = icmp eq %struct.constructEntry* %297, %263
  br i1 %298, label %322, label %299

; <label>:299                                     ; preds = %296
  %300 = call i32 @strncmp(i8* %266, i8* %254, i64 %substringLength.070) #15
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %322

; <label>:302                                     ; preds = %299
  store i64 0, i64* %293, align 8
  store i64 0, i64* %242, align 8
  %303 = getelementptr inbounds i8, i8* %262, i64 40
  %304 = bitcast i8* %303 to %struct.constructEntry**
  %305 = load %struct.constructEntry*, %struct.constructEntry** %304, align 8
  %306 = load %struct.constructEntry*, %struct.constructEntry** %253, align 8
  %307 = icmp eq %struct.constructEntry* %305, null
  br i1 %307, label %308, label %309

; <label>:308                                     ; preds = %302
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3.45, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.43, i64 0, i64 0), i32 506, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #14
  unreachable

; <label>:309                                     ; preds = %302
  %310 = icmp eq %struct.constructEntry* %306, null
  br i1 %310, label %311, label %312

; <label>:311                                     ; preds = %309
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.46, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.43, i64 0, i64 0), i32 507, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #14
  unreachable

; <label>:312                                     ; preds = %309
  %313 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %305, i64 0, i32 3
  store %struct.constructEntry* %306, %struct.constructEntry** %313, align 8
  store i8* %262, i8** %256, align 8
  %314 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %306, i64 0, i32 5
  store %struct.constructEntry* %305, %struct.constructEntry** %314, align 8
  store i64 %substringLength.070, i64* %257, align 8
  %315 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %306, i64 0, i32 7
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds i8, i8* %262, i64 56
  %318 = bitcast i8* %317 to i64*
  %319 = load i64, i64* %318, align 8
  %320 = add i64 %316, %substringLength.0.neg
  %321 = add i64 %320, %319
  store i64 %321, i64* %315, align 8
  br label %322

; <label>:322                                     ; preds = %312, %299, %296, %292
  %323 = icmp sgt i32 %tries18.0.ph184, 1
  br i1 %323, label %324, label %325

; <label>:324                                     ; preds = %322
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 4) #7, !srcloc !10
  br label %326

; <label>:325                                     ; preds = %322
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #7
  br label %326

; <label>:326                                     ; preds = %325, %324
  %327 = load i64, i64* %242, align 8
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %.loopexit14.loopexit, label %258

.loopexit14.loopexit:                             ; preds = %326, %258
  br label %.loopexit14

.loopexit14:                                      ; preds = %.loopexit14.loopexit, %241
  %329 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %entryIndex.354, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = add nsw i64 %330, %entryIndex.354
  %332 = icmp slt i64 %331, %index_stop.0
  br i1 %332, label %241, label %._crit_edge57.loopexit

._crit_edge57.loopexit:                           ; preds = %.loopexit14
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %._crit_edge57.loopexit, %231
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #7
  %333 = icmp sgt i64 %substringLength.070, 1
  %or.cond = and i1 %225, %333
  br i1 %or.cond, label %334, label %388

; <label>:334                                     ; preds = %._crit_edge57
  %335 = sub nsw i64 %32, %substringLength.070
  %336 = add nuw nsw i64 %335, 1
  %337 = load i64, i64* %226, align 8
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %.lr.ph60.preheader, label %._crit_edge61

.lr.ph60.preheader:                               ; preds = %334
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60, %.lr.ph60.preheader
  %i.258 = phi i64 [ %341, %.lr.ph60 ], [ 1, %.lr.ph60.preheader ]
  %339 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %i.258, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = add nsw i64 %340, %i.258
  %342 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %341, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %.lr.ph60, label %._crit_edge61.loopexit

._crit_edge61.loopexit:                           ; preds = %.lr.ph60
  %.lcssa = phi i64 [ %341, %.lr.ph60 ]
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %._crit_edge61.loopexit, %334
  %i.2.lcssa = phi i64 [ 1, %334 ], [ %.lcssa, %._crit_edge61.loopexit ]
  store i64 %i.2.lcssa, i64* %227, align 8
  %345 = load i64, i64* %228, align 8
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %.preheader15, label %347

; <label>:347                                     ; preds = %._crit_edge61
  %348 = load i8*, i8** %229, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 %336
  %350 = load i8, i8* %349, align 1
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %hashString.exit11, label %.lr.ph.i9.preheader

.lr.ph.i9.preheader:                              ; preds = %347
  br label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph.i9, %.lr.ph.i9.preheader
  %352 = phi i8 [ %357, %.lr.ph.i9 ], [ %350, %.lr.ph.i9.preheader ]
  %.03.i7 = phi i8* [ %354, %.lr.ph.i9 ], [ %349, %.lr.ph.i9.preheader ]
  %hash.02.i8 = phi i64 [ %356, %.lr.ph.i9 ], [ 0, %.lr.ph.i9.preheader ]
  %353 = sext i8 %352 to i64
  %354 = getelementptr inbounds i8, i8* %.03.i7, i64 1
  %355 = mul i64 %hash.02.i8, 65599
  %356 = add i64 %355, %353
  %357 = load i8, i8* %354, align 1
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %hashString.exit11.loopexit, label %.lr.ph.i9

hashString.exit11.loopexit:                       ; preds = %.lr.ph.i9
  %.lcssa185 = phi i64 [ %356, %.lr.ph.i9 ]
  br label %hashString.exit11

hashString.exit11:                                ; preds = %hashString.exit11.loopexit, %347
  %hash.0.lcssa.i10 = phi i64 [ 0, %347 ], [ %.lcssa185, %hashString.exit11.loopexit ]
  store i64 %hash.0.lcssa.i10, i64* %230, align 8
  br label %.preheader15

.preheader15:                                     ; preds = %hashString.exit11, %._crit_edge61
  %359 = icmp slt i64 %i.2.lcssa, %77
  br i1 %359, label %.lr.ph65.preheader, label %._crit_edge66

.lr.ph65.preheader:                               ; preds = %.preheader15
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %381, %.lr.ph65.preheader
  %i.364 = phi i64 [ %384, %381 ], [ %i.2.lcssa, %.lr.ph65.preheader ]
  %j.063 = phi i64 [ %j.1, %381 ], [ 0, %.lr.ph65.preheader ]
  %360 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %i.364, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %381, label %363

; <label>:363                                     ; preds = %.lr.ph65
  %364 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %i.364, i32 1
  %365 = load i8*, i8** %364, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 %336
  %367 = load i8, i8* %366, align 1
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %hashString.exit6, label %.lr.ph.i4.preheader

.lr.ph.i4.preheader:                              ; preds = %363
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %.lr.ph.i4.preheader
  %369 = phi i8 [ %374, %.lr.ph.i4 ], [ %367, %.lr.ph.i4.preheader ]
  %.03.i2 = phi i8* [ %371, %.lr.ph.i4 ], [ %366, %.lr.ph.i4.preheader ]
  %hash.02.i3 = phi i64 [ %373, %.lr.ph.i4 ], [ 0, %.lr.ph.i4.preheader ]
  %370 = sext i8 %369 to i64
  %371 = getelementptr inbounds i8, i8* %.03.i2, i64 1
  %372 = mul i64 %hash.02.i3, 65599
  %373 = add i64 %372, %370
  %374 = load i8, i8* %371, align 1
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %hashString.exit6.loopexit, label %.lr.ph.i4

hashString.exit6.loopexit:                        ; preds = %.lr.ph.i4
  %.lcssa186 = phi i64 [ %373, %.lr.ph.i4 ]
  br label %hashString.exit6

hashString.exit6:                                 ; preds = %hashString.exit6.loopexit, %363
  %hash.0.lcssa.i5 = phi i64 [ 0, %363 ], [ %.lcssa186, %hashString.exit6.loopexit ]
  %376 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %i.364, i32 2
  store i64 %hash.0.lcssa.i5, i64* %376, align 8
  %377 = sub nsw i64 %i.364, %j.063
  %378 = icmp slt i64 %377, 1
  %379 = select i1 %378, i64 1, i64 %377
  %380 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %j.063, i32 1
  store i64 %379, i64* %380, align 8
  br label %381

; <label>:381                                     ; preds = %hashString.exit6, %.lr.ph65
  %j.1 = phi i64 [ %i.364, %hashString.exit6 ], [ %j.063, %.lr.ph65 ]
  %382 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %i.364, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = add nsw i64 %383, %i.364
  %385 = icmp slt i64 %384, %77
  br i1 %385, label %.lr.ph65, label %._crit_edge66.loopexit

._crit_edge66.loopexit:                           ; preds = %381
  %.lcssa187 = phi i64 [ %384, %381 ]
  %j.1.lcssa = phi i64 [ %j.1, %381 ]
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %._crit_edge66.loopexit, %.preheader15
  %i.3.lcssa = phi i64 [ %i.2.lcssa, %.preheader15 ], [ %.lcssa187, %._crit_edge66.loopexit ]
  %j.0.lcssa = phi i64 [ 0, %.preheader15 ], [ %j.1.lcssa, %._crit_edge66.loopexit ]
  %386 = sub nsw i64 %i.3.lcssa, %j.0.lcssa
  %387 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %j.0.lcssa, i32 1
  store i64 %386, i64* %387, align 8
  br label %388

; <label>:388                                     ; preds = %._crit_edge66, %._crit_edge57
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #7
  call void @workEnd(i32 0, i32 0) #7
  br i1 %333, label %231, label %._crit_edge73.loopexit

._crit_edge73.loopexit:                           ; preds = %388
  br label %._crit_edge73

._crit_edge73:                                    ; preds = %._crit_edge73.loopexit, %._crit_edge92
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #7
  %389 = icmp eq i64 %6, 0
  br i1 %389, label %.preheader13, label %447

.preheader13:                                     ; preds = %._crit_edge73
  %390 = icmp sgt i64 %77, 0
  br i1 %390, label %.lr.ph49.preheader, label %._crit_edge50

.lr.ph49.preheader:                               ; preds = %.preheader13
  %xtraiter = and i64 %77, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph49.preheader.split, label %.lr.ph49.prol

.lr.ph49.prol:                                    ; preds = %.lr.ph49.preheader
  %391 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %397, label %394

; <label>:394                                     ; preds = %.lr.ph49.prol
  %395 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 0, i32 7
  %396 = load i64, i64* %395, align 8
  br label %397

; <label>:397                                     ; preds = %394, %.lr.ph49.prol
  %totalLength.1.prol = phi i64 [ %396, %394 ], [ 0, %.lr.ph49.prol ]
  br label %.lr.ph49.preheader.split

.lr.ph49.preheader.split:                         ; preds = %397, %.lr.ph49.preheader
  %totalLength.1.lcssa.unr = phi i64 [ undef, %.lr.ph49.preheader ], [ %totalLength.1.prol, %397 ]
  %i.448.unr = phi i64 [ 0, %.lr.ph49.preheader ], [ 1, %397 ]
  %totalLength.047.unr = phi i64 [ 0, %.lr.ph49.preheader ], [ %totalLength.1.prol, %397 ]
  %398 = icmp eq i64 %77, 1
  br i1 %398, label %._crit_edge50.loopexit, label %.lr.ph49.preheader.split.split

.lr.ph49.preheader.split.split:                   ; preds = %.lr.ph49.preheader.split
  br label %.lr.ph49

.lr.ph49:                                         ; preds = %456, %.lr.ph49.preheader.split.split
  %i.448 = phi i64 [ %i.448.unr, %.lr.ph49.preheader.split.split ], [ %457, %456 ]
  %totalLength.047 = phi i64 [ %totalLength.047.unr, %.lr.ph49.preheader.split.split ], [ %totalLength.1.1, %456 ]
  %399 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %i.448, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %.lr.ph49.1180, label %402

; <label>:402                                     ; preds = %.lr.ph49
  %403 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %i.448, i32 7
  %404 = load i64, i64* %403, align 8
  %405 = add nsw i64 %404, %totalLength.047
  br label %.lr.ph49.1180

.lr.ph49.1180:                                    ; preds = %402, %.lr.ph49
  %totalLength.1 = phi i64 [ %405, %402 ], [ %totalLength.047, %.lr.ph49 ]
  %406 = add nuw nsw i64 %i.448, 1
  %407 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %406, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %456, label %452

._crit_edge50.loopexit.unr-lcssa:                 ; preds = %456
  %totalLength.1.1.lcssa = phi i64 [ %totalLength.1.1, %456 ]
  br label %._crit_edge50.loopexit

._crit_edge50.loopexit:                           ; preds = %._crit_edge50.loopexit.unr-lcssa, %.lr.ph49.preheader.split
  %totalLength.1.lcssa = phi i64 [ %totalLength.1.lcssa.unr, %.lr.ph49.preheader.split ], [ %totalLength.1.1.lcssa, %._crit_edge50.loopexit.unr-lcssa ]
  br label %._crit_edge50

._crit_edge50:                                    ; preds = %._crit_edge50.loopexit, %.preheader13
  %totalLength.0.lcssa = phi i64 [ 0, %.preheader13 ], [ %totalLength.1.lcssa, %._crit_edge50.loopexit ]
  %410 = add nsw i64 %totalLength.0.lcssa, 1
  %411 = call noalias i8* @malloc(i64 %410) #7
  %412 = bitcast i8* %argPtr to i8**
  store i8* %411, i8** %412, align 8
  %413 = icmp eq i8* %411, null
  br i1 %413, label %414, label %.preheader

.preheader:                                       ; preds = %._crit_edge50
  br i1 %390, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

; <label>:414                                     ; preds = %._crit_edge50
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5.47, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.43, i64 0, i64 0), i32 593, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #14
  unreachable

.lr.ph:                                           ; preds = %443, %.lr.ph.preheader
  %i.546 = phi i64 [ %444, %443 ], [ 0, %.lr.ph.preheader ]
  %sequenceLength.045 = phi i64 [ %sequenceLength.1, %443 ], [ 0, %.lr.ph.preheader ]
  %415 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %i.546
  %416 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %415, i64 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %443, label %419

; <label>:419                                     ; preds = %.lr.ph
  %420 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %i.546, i32 7
  %421 = load i64, i64* %420, align 8
  %422 = add nsw i64 %421, %sequenceLength.045
  %423 = icmp sgt i64 %422, %totalLength.0.lcssa
  br i1 %423, label %424, label %425

; <label>:424                                     ; preds = %419
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6.48, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.43, i64 0, i64 0), i32 603, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #14
  unreachable

; <label>:425                                     ; preds = %419
  %426 = getelementptr inbounds i8, i8* %411, i64 %sequenceLength.045
  %427 = getelementptr inbounds i8, i8* %411, i64 %422
  br label %428

; <label>:428                                     ; preds = %435, %425
  %copyPtr.0 = phi i8* [ %426, %425 ], [ %432, %435 ]
  %constructEntryPtr26.0 = phi %struct.constructEntry* [ %415, %425 ], [ %439, %435 ]
  %429 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i64 0, i32 6
  %430 = load i64, i64* %429, align 8
  %431 = sub nsw i64 %32, %430
  %432 = getelementptr inbounds i8, i8* %copyPtr.0, i64 %431
  %433 = icmp ugt i8* %432, %427
  br i1 %433, label %434, label %435

; <label>:434                                     ; preds = %428
  %copyPtr.0.lcssa = phi i8* [ %copyPtr.0, %428 ]
  %puts = call i32 @puts(i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @str, i64 0, i64 0))
  br label %.loopexit

; <label>:435                                     ; preds = %428
  %436 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i64 0, i32 1
  %437 = load i8*, i8** %436, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %copyPtr.0, i8* %437, i64 %431, i32 1, i1 false)
  %438 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i64 0, i32 4
  %439 = load %struct.constructEntry*, %struct.constructEntry** %438, align 8
  %440 = icmp eq %struct.constructEntry* %439, null
  br i1 %440, label %.loopexit.loopexit, label %428

.loopexit.loopexit:                               ; preds = %435
  %.lcssa182 = phi i8* [ %432, %435 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %434
  %copyPtr.1 = phi i8* [ %copyPtr.0.lcssa, %434 ], [ %.lcssa182, %.loopexit.loopexit ]
  %441 = icmp ugt i8* %copyPtr.1, %427
  br i1 %441, label %442, label %443

; <label>:442                                     ; preds = %.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8.49, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.43, i64 0, i64 0), i32 617, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #14
  unreachable

; <label>:443                                     ; preds = %.loopexit, %.lr.ph
  %sequenceLength.1 = phi i64 [ %422, %.loopexit ], [ %sequenceLength.045, %.lr.ph ]
  %444 = add nuw nsw i64 %i.546, 1
  %445 = icmp slt i64 %444, %77
  br i1 %445, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %443
  %sequenceLength.1.lcssa = phi i64 [ %sequenceLength.1, %443 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %sequenceLength.0.lcssa = phi i64 [ 0, %.preheader ], [ %sequenceLength.1.lcssa, %._crit_edge.loopexit ]
  %446 = getelementptr inbounds i8, i8* %411, i64 %sequenceLength.0.lcssa
  store i8 0, i8* %446, align 1
  br label %447

; <label>:447                                     ; preds = %._crit_edge, %._crit_edge73
  %448 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #7
  %449 = trunc i64 %448 to i32
  %450 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %451 = load i32, i32* %450, align 4
  call void @SimRoiEnd(i32 %449, i32 %451) #7
  ret void

; <label>:452                                     ; preds = %.lr.ph49.1180
  %453 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %406, i32 7
  %454 = load i64, i64* %453, align 8
  %455 = add nsw i64 %454, %totalLength.1
  br label %456

; <label>:456                                     ; preds = %452, %.lr.ph49.1180
  %totalLength.1.1 = phi i64 [ %455, %452 ], [ %totalLength.1, %.lr.ph49.1180 ]
  %457 = add nsw i64 %i.448, 2
  %exitcond.1 = icmp eq i64 %457, %77
  br i1 %exitcond.1, label %._crit_edge50.loopexit.unr-lcssa, label %.lr.ph49
}

declare void @SimRoiStart(i32) #4

declare i32 @workBegin(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #7

declare void @workEnd(i32, i32) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

declare void @SimRoiEnd(i32, i32) #4

; Function Attrs: nounwind uwtable
define void @sequencer_free(%struct.sequencer* nocapture %sequencerPtr) #0 {
  %1 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i64 0, i32 6
  %2 = load %struct.table*, %struct.table** %1, align 8
  tail call void @table_free(%struct.table* %2) #7
  %3 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i64 0, i32 5
  %4 = bitcast %struct.constructEntry** %3 to i8**
  %5 = load i8*, i8** %4, align 8
  tail call void @free(i8* %5) #7
  %6 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i64 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 1
  %9 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i64 0, i32 4
  br i1 %8, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %i.01 = phi i64 [ %13, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  %10 = load %struct.table**, %struct.table*** %9, align 8
  %11 = getelementptr inbounds %struct.table*, %struct.table** %10, i64 %i.01
  %12 = load %struct.table*, %struct.table** %11, align 8
  tail call void @table_free(%struct.table* %12) #7
  %13 = add nuw nsw i64 %i.01, 1
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %16 = bitcast %struct.table*** %9 to i8**
  %17 = load i8*, i8** %16, align 8
  tail call void @free(i8* %17) #7
  %18 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i64 0, i32 3
  %19 = bitcast %struct.endInfoEntry** %18 to i8**
  %20 = load i8*, i8** %19, align 8
  tail call void @free(i8* %20) #7
  %21 = bitcast %struct.sequencer* %sequencerPtr to i8*
  tail call void @free(i8* %21) #7
  ret void
}

; Function Attrs: nounwind uwtable
define noalias %struct.table* @table_alloc(i64 %numBucket, i64 (i8*, i8*)* %compare) #0 {
  %1 = tail call noalias i8* @malloc(i64 16) #7
  %2 = bitcast i8* %1 to %struct.table*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %.loopexit, label %4

; <label>:4                                       ; preds = %0
  %5 = shl i64 %numBucket, 3
  %6 = tail call noalias i8* @malloc(i64 %5) #7
  %7 = bitcast i8* %1 to i8**
  store i8* %6, i8** %7, align 8
  %8 = icmp eq i8* %6, null
  %9 = bitcast i8* %6 to %struct.list**
  br i1 %8, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %4
  %10 = icmp sgt i64 %numBucket, 0
  br i1 %10, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

; <label>:11                                      ; preds = %.lr.ph
  %12 = icmp slt i64 %16, %numBucket
  br i1 %12, label %.lr.ph, label %._crit_edge.loopexit

.lr.ph:                                           ; preds = %11, %.lr.ph.preheader
  %i.01 = phi i64 [ %16, %11 ], [ 0, %.lr.ph.preheader ]
  %13 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* %compare) #7
  %14 = getelementptr inbounds %struct.list*, %struct.list** %9, i64 %i.01
  store %struct.list* %13, %struct.list** %14, align 8
  %15 = icmp eq %struct.list* %13, null
  %16 = add nuw nsw i64 %i.01, 1
  br i1 %15, label %.loopexit.loopexit, label %11

._crit_edge.loopexit:                             ; preds = %11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %17 = getelementptr inbounds i8, i8* %1, i64 8
  %18 = bitcast i8* %17 to i64*
  store i64 %numBucket, i64* %18, align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge, %4, %0
  %.0 = phi %struct.table* [ %2, %._crit_edge ], [ null, %0 ], [ null, %4 ], [ null, %.loopexit.loopexit ]
  ret %struct.table* %.0
}

; Function Attrs: nounwind uwtable
define i64 @table_insert(%struct.table* nocapture readonly %tablePtr, i64 %hash, i8* %dataPtr) #0 {
  %1 = getelementptr inbounds %struct.table, %struct.table* %tablePtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = urem i64 %hash, %2
  %4 = getelementptr inbounds %struct.table, %struct.table* %tablePtr, i64 0, i32 0
  %5 = load %struct.list**, %struct.list*** %4, align 8
  %6 = getelementptr inbounds %struct.list*, %struct.list** %5, i64 %3
  %7 = load %struct.list*, %struct.list** %6, align 8
  %8 = tail call i64 @list_insert(%struct.list* %7, i8* %dataPtr) #7
  %not. = icmp ne i64 %8, 0
  %. = zext i1 %not. to i64
  ret i64 %.
}

; Function Attrs: nounwind uwtable
define i64 @TMtable_insert(%struct.table* nocapture readonly %tablePtr, i64 %hash, i8* %dataPtr) #0 {
  %1 = getelementptr inbounds %struct.table, %struct.table* %tablePtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = urem i64 %hash, %2
  %4 = getelementptr inbounds %struct.table, %struct.table* %tablePtr, i64 0, i32 0
  %5 = load %struct.list**, %struct.list*** %4, align 8
  %6 = getelementptr inbounds %struct.list*, %struct.list** %5, i64 %3
  %7 = load %struct.list*, %struct.list** %6, align 8
  %8 = tail call i64 @TMlist_insert(%struct.list* %7, i8* %dataPtr) #7
  %not. = icmp ne i64 %8, 0
  %. = zext i1 %not. to i64
  ret i64 %.
}

; Function Attrs: nounwind uwtable
define i64 @table_remove(%struct.table* nocapture readonly %tablePtr, i64 %hash, i8* %dataPtr) #0 {
  %1 = getelementptr inbounds %struct.table, %struct.table* %tablePtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = urem i64 %hash, %2
  %4 = getelementptr inbounds %struct.table, %struct.table* %tablePtr, i64 0, i32 0
  %5 = load %struct.list**, %struct.list*** %4, align 8
  %6 = getelementptr inbounds %struct.list*, %struct.list** %5, i64 %3
  %7 = load %struct.list*, %struct.list** %6, align 8
  %8 = tail call i64 @list_remove(%struct.list* %7, i8* %dataPtr) #7
  %not. = icmp ne i64 %8, 0
  %. = zext i1 %not. to i64
  ret i64 %.
}

; Function Attrs: nounwind uwtable
define void @table_free(%struct.table* nocapture %tablePtr) #0 {
  %1 = bitcast %struct.table* %tablePtr to i8*
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.bitmap* @bitmap_alloc(i64 %numBit) #8 {
  %1 = alloca %struct.bitmap*, align 8
  %2 = alloca i64, align 8
  %bitmapPtr = alloca %struct.bitmap*, align 8
  %numWord = alloca i64, align 8
  %_a = alloca i64, align 8
  %_b = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %numBit, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 24) #7
  %5 = bitcast i8* %4 to %struct.bitmap*
  store %struct.bitmap* %5, %struct.bitmap** %bitmapPtr, align 8
  %6 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %7 = icmp eq %struct.bitmap* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store %struct.bitmap* null, %struct.bitmap** %1, align 8
  br label %47

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %12 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i64, i64* %2, align 8
  store i64 %13, i64* %_a, align 8
  store i64 64, i64* %_b, align 8
  %14 = load i64, i64* %_a, align 8
  %15 = load i64, i64* %_b, align 8
  %16 = udiv i64 %14, %15
  %17 = load i64, i64* %_a, align 8
  %18 = load i64, i64* %_b, align 8
  %19 = urem i64 %17, %18
  %20 = icmp ugt i64 %19, 0
  %21 = select i1 %20, i32 1, i32 0
  %22 = sext i32 %21 to i64
  %23 = add i64 %16, %22
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  store i64 %24, i64* %numWord, align 8
  %25 = load i64, i64* %numWord, align 8
  %26 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %27 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %numWord, align 8
  %29 = mul i64 %28, 8
  %30 = call noalias i8* @malloc(i64 %29) #7
  %31 = bitcast i8* %30 to i64*
  %32 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %33 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %32, i32 0, i32 2
  store i64* %31, i64** %33, align 8
  %34 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %35 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = icmp eq i64* %36, null
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %9
  store %struct.bitmap* null, %struct.bitmap** %1, align 8
  br label %47

; <label>:39                                      ; preds = %9
  %40 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %41 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = bitcast i64* %42 to i8*
  %44 = load i64, i64* %numWord, align 8
  %45 = mul i64 %44, 8
  call void @llvm.memset.p0i8.i64(i8* %43, i8 0, i64 %45, i32 8, i1 false)
  %46 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  store %struct.bitmap* %46, %struct.bitmap** %1, align 8
  br label %47

; <label>:47                                      ; preds = %39, %38, %8
  %48 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  ret %struct.bitmap* %48
}

; Function Attrs: nounwind uwtable
define %struct.bitmap* @Pbitmap_alloc(i64 %numBit) #8 {
  %1 = alloca %struct.bitmap*, align 8
  %2 = alloca i64, align 8
  %bitmapPtr = alloca %struct.bitmap*, align 8
  %numWord = alloca i64, align 8
  %_a = alloca i64, align 8
  %_b = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %numBit, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 24) #7
  %5 = bitcast i8* %4 to %struct.bitmap*
  store %struct.bitmap* %5, %struct.bitmap** %bitmapPtr, align 8
  %6 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %7 = icmp eq %struct.bitmap* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store %struct.bitmap* null, %struct.bitmap** %1, align 8
  br label %49

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %12 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i64, i64* %2, align 8
  store i64 %13, i64* %_a, align 8
  store i64 64, i64* %_b, align 8
  %14 = load i64, i64* %_a, align 8
  %15 = load i64, i64* %_b, align 8
  %16 = udiv i64 %14, %15
  %17 = load i64, i64* %_a, align 8
  %18 = load i64, i64* %_b, align 8
  %19 = urem i64 %17, %18
  %20 = icmp ugt i64 %19, 0
  %21 = select i1 %20, i32 1, i32 0
  %22 = sext i32 %21 to i64
  %23 = add i64 %16, %22
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  store i64 %24, i64* %numWord, align 8
  %25 = load i64, i64* %numWord, align 8
  %26 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %27 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %numWord, align 8
  %29 = mul i64 %28, 8
  %30 = call noalias i8* @malloc(i64 %29) #7
  %31 = bitcast i8* %30 to i64*
  %32 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %33 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %32, i32 0, i32 2
  store i64* %31, i64** %33, align 8
  %34 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %35 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = icmp eq i64* %36, null
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %9
  %39 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %40 = bitcast %struct.bitmap* %39 to i8*
  call void @free(i8* %40) #7
  store %struct.bitmap* null, %struct.bitmap** %1, align 8
  br label %49

; <label>:41                                      ; preds = %9
  %42 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %43 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = bitcast i64* %44 to i8*
  %46 = load i64, i64* %numWord, align 8
  %47 = mul i64 %46, 8
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 %47, i32 8, i1 false)
  %48 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  store %struct.bitmap* %48, %struct.bitmap** %1, align 8
  br label %49

; <label>:49                                      ; preds = %41, %38, %8
  %50 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  ret %struct.bitmap* %50
}

; Function Attrs: nounwind uwtable
define void @bitmap_free(%struct.bitmap* %bitmapPtr) #8 {
  %1 = alloca %struct.bitmap*, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %1, align 8
  %2 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %2, i32 0, i32 2
  %4 = load i64*, i64** %3, align 8
  %5 = bitcast i64* %4 to i8*
  call void @free(i8* %5) #7
  %6 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %7 = bitcast %struct.bitmap* %6 to i8*
  call void @free(i8* %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @Pbitmap_free(%struct.bitmap* %bitmapPtr) #8 {
  %1 = alloca %struct.bitmap*, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %1, align 8
  %2 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %2, i32 0, i32 2
  %4 = load i64*, i64** %3, align 8
  %5 = bitcast i64* %4 to i8*
  call void @free(i8* %5) #7
  %6 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %7 = bitcast %struct.bitmap* %6 to i8*
  call void @free(i8* %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_set(%struct.bitmap* %bitmapPtr, i64 %i) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %2, align 8
  store i64 %i, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %6, %0
  store i64 0, i64* %1, align 8
  br label %25

; <label>:13                                      ; preds = %6
  %14 = load i64, i64* %3, align 8
  %15 = urem i64 %14, 64
  %16 = shl i64 1, %15
  %17 = load i64, i64* %3, align 8
  %18 = udiv i64 %17, 64
  %19 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %20 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 %18
  %23 = load i64, i64* %22, align 8
  %24 = or i64 %23, %16
  store i64 %24, i64* %22, align 8
  store i64 1, i64* %1, align 8
  br label %25

; <label>:25                                      ; preds = %13, %12
  %26 = load i64, i64* %1, align 8
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_clear(%struct.bitmap* %bitmapPtr, i64 %i) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %2, align 8
  store i64 %i, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %6, %0
  store i64 0, i64* %1, align 8
  br label %26

; <label>:13                                      ; preds = %6
  %14 = load i64, i64* %3, align 8
  %15 = urem i64 %14, 64
  %16 = shl i64 1, %15
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %3, align 8
  %19 = udiv i64 %18, 64
  %20 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %21 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 %19
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, %17
  store i64 %25, i64* %23, align 8
  store i64 1, i64* %1, align 8
  br label %26

; <label>:26                                      ; preds = %13, %12
  %27 = load i64, i64* %1, align 8
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define void @bitmap_clearAll(%struct.bitmap* %bitmapPtr) #8 {
  %1 = alloca %struct.bitmap*, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %1, align 8
  %2 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %2, i32 0, i32 2
  %4 = load i64*, i64** %3, align 8
  %5 = bitcast i64* %4 to i8*
  %6 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %7 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = mul i64 %8, 8
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 %9, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_isClear(%struct.bitmap* %bitmapPtr, i64 %i) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %2, align 8
  store i64 %i, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %26

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %26

; <label>:12                                      ; preds = %6
  %13 = load i64, i64* %3, align 8
  %14 = udiv i64 %13, 64
  %15 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %16 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 %14
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = urem i64 %20, 64
  %22 = shl i64 1, %21
  %23 = and i64 %19, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

; <label>:25                                      ; preds = %12
  store i64 1, i64* %1, align 8
  br label %27

; <label>:26                                      ; preds = %12, %6, %0
  store i64 0, i64* %1, align 8
  br label %27

; <label>:27                                      ; preds = %26, %25
  %28 = load i64, i64* %1, align 8
  ret i64 %28
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_isSet(%struct.bitmap* %bitmapPtr, i64 %i) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %2, align 8
  store i64 %i, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %26

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %26

; <label>:12                                      ; preds = %6
  %13 = load i64, i64* %3, align 8
  %14 = udiv i64 %13, 64
  %15 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %16 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 %14
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = urem i64 %20, 64
  %22 = shl i64 1, %21
  %23 = and i64 %19, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %12
  store i64 1, i64* %1, align 8
  br label %27

; <label>:26                                      ; preds = %12, %6, %0
  store i64 0, i64* %1, align 8
  br label %27

; <label>:27                                      ; preds = %26, %25
  %28 = load i64, i64* %1, align 8
  ret i64 %28
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_findClear(%struct.bitmap* %bitmapPtr, i64 %startIndex) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  %i = alloca i64, align 8
  %numBit = alloca i64, align 8
  %bits = alloca i64*, align 8
  %_a = alloca i64, align 8
  %_b = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %2, align 8
  store i64 %startIndex, i64* %3, align 8
  %5 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %6 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %numBit, align 8
  %8 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %8, i32 0, i32 2
  %10 = load i64*, i64** %9, align 8
  store i64* %10, i64** %bits, align 8
  %11 = load i64, i64* %3, align 8
  store i64 %11, i64* %_a, align 8
  store i32 0, i32* %_b, align 4
  %12 = load i64, i64* %_a, align 8
  %13 = load i32, i32* %_b, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp sgt i64 %12, %14
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %0
  %17 = load i64, i64* %_a, align 8
  br label %21

; <label>:18                                      ; preds = %0
  %19 = load i32, i32* %_b, align 4
  %20 = sext i32 %19 to i64
  br label %21

; <label>:21                                      ; preds = %18, %16
  %22 = phi i64 [ %17, %16 ], [ %20, %18 ]
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %i, align 8
  br label %24

; <label>:24                                      ; preds = %42, %21
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %numBit, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %45

; <label>:28                                      ; preds = %24
  %29 = load i64, i64* %i, align 8
  %30 = udiv i64 %29, 64
  %31 = load i64*, i64** %bits, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 %30
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %i, align 8
  %35 = urem i64 %34, 64
  %36 = shl i64 1, %35
  %37 = and i64 %33, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

; <label>:39                                      ; preds = %28
  %40 = load i64, i64* %i, align 8
  store i64 %40, i64* %1, align 8
  br label %46

; <label>:41                                      ; preds = %28
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load i64, i64* %i, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %i, align 8
  br label %24

; <label>:45                                      ; preds = %24
  store i64 -1, i64* %1, align 8
  br label %46

; <label>:46                                      ; preds = %45, %39
  %47 = load i64, i64* %1, align 8
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_findSet(%struct.bitmap* %bitmapPtr, i64 %startIndex) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  %i = alloca i64, align 8
  %numBit = alloca i64, align 8
  %bits = alloca i64*, align 8
  %_a = alloca i64, align 8
  %_b = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %2, align 8
  store i64 %startIndex, i64* %3, align 8
  %5 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %6 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %numBit, align 8
  %8 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %8, i32 0, i32 2
  %10 = load i64*, i64** %9, align 8
  store i64* %10, i64** %bits, align 8
  %11 = load i64, i64* %3, align 8
  store i64 %11, i64* %_a, align 8
  store i32 0, i32* %_b, align 4
  %12 = load i64, i64* %_a, align 8
  %13 = load i32, i32* %_b, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp sgt i64 %12, %14
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %0
  %17 = load i64, i64* %_a, align 8
  br label %21

; <label>:18                                      ; preds = %0
  %19 = load i32, i32* %_b, align 4
  %20 = sext i32 %19 to i64
  br label %21

; <label>:21                                      ; preds = %18, %16
  %22 = phi i64 [ %17, %16 ], [ %20, %18 ]
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %i, align 8
  br label %24

; <label>:24                                      ; preds = %42, %21
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %numBit, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %45

; <label>:28                                      ; preds = %24
  %29 = load i64, i64* %i, align 8
  %30 = udiv i64 %29, 64
  %31 = load i64*, i64** %bits, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 %30
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %i, align 8
  %35 = urem i64 %34, 64
  %36 = shl i64 1, %35
  %37 = and i64 %33, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

; <label>:39                                      ; preds = %28
  %40 = load i64, i64* %i, align 8
  store i64 %40, i64* %1, align 8
  br label %46

; <label>:41                                      ; preds = %28
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load i64, i64* %i, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %i, align 8
  br label %24

; <label>:45                                      ; preds = %24
  store i64 -1, i64* %1, align 8
  br label %46

; <label>:46                                      ; preds = %45, %39
  %47 = load i64, i64* %1, align 8
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_getNumClear(%struct.bitmap* %bitmapPtr) #8 {
  %1 = alloca %struct.bitmap*, align 8
  %numBit = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %1, align 8
  %2 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %numBit, align 8
  %5 = load i64, i64* %numBit, align 8
  %6 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %7 = call i64 @bitmap_getNumSet(%struct.bitmap* %6)
  %8 = sub nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_getNumSet(%struct.bitmap* %bitmapPtr) #8 {
  %1 = alloca %struct.bitmap*, align 8
  %i = alloca i64, align 8
  %numBit = alloca i64, align 8
  %bits = alloca i64*, align 8
  %count = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %1, align 8
  %2 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %numBit, align 8
  %5 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %6 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %5, i32 0, i32 2
  %7 = load i64*, i64** %6, align 8
  store i64* %7, i64** %bits, align 8
  store i64 0, i64* %count, align 8
  store i64 0, i64* %i, align 8
  br label %8

; <label>:8                                       ; preds = %27, %0
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %numBit, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %30

; <label>:12                                      ; preds = %8
  %13 = load i64, i64* %i, align 8
  %14 = udiv i64 %13, 64
  %15 = load i64*, i64** %bits, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 %14
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %i, align 8
  %19 = urem i64 %18, 64
  %20 = shl i64 1, %19
  %21 = and i64 %17, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %12
  %24 = load i64, i64* %count, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %count, align 8
  br label %26

; <label>:26                                      ; preds = %23, %12
  br label %27

; <label>:27                                      ; preds = %26
  %28 = load i64, i64* %i, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %i, align 8
  br label %8

; <label>:30                                      ; preds = %8
  %31 = load i64, i64* %count, align 8
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define void @bitmap_copy(%struct.bitmap* %dstPtr, %struct.bitmap* %srcPtr) #8 {
  %1 = alloca %struct.bitmap*, align 8
  %2 = alloca %struct.bitmap*, align 8
  store %struct.bitmap* %dstPtr, %struct.bitmap** %1, align 8
  store %struct.bitmap* %srcPtr, %struct.bitmap** %2, align 8
  %3 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %4 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %7 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %13

; <label>:11                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.67, i32 0, i32 0), i32 343, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.bitmap_copy, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %15 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = bitcast i64* %16 to i8*
  %18 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %19 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %18, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  %21 = bitcast i64* %20 to i8*
  %22 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %23 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = mul i64 %24, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %21, i64 %25, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @bitmap_toggleAll(%struct.bitmap* %bitmapPtr) #8 {
  %1 = alloca %struct.bitmap*, align 8
  %bits = alloca i64*, align 8
  %numWord = alloca i64, align 8
  %w = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %1, align 8
  %2 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %2, i32 0, i32 2
  %4 = load i64*, i64** %3, align 8
  store i64* %4, i64** %bits, align 8
  %5 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %6 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %numWord, align 8
  store i64 0, i64* %w, align 8
  br label %8

; <label>:8                                       ; preds = %18, %0
  %9 = load i64, i64* %w, align 8
  %10 = load i64, i64* %numWord, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %21

; <label>:12                                      ; preds = %8
  %13 = load i64, i64* %w, align 8
  %14 = load i64*, i64** %bits, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 %13
  %16 = load i64, i64* %15, align 8
  %17 = xor i64 %16, -1
  store i64 %17, i64* %15, align 8
  br label %18

; <label>:18                                      ; preds = %12
  %19 = load i64, i64* %w, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %w, align 8
  br label %8

; <label>:21                                      ; preds = %8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @hash_dbj2(i8* %str) #8 {
  %1 = alloca i8*, align 8
  %hash = alloca i64, align 8
  %c = alloca i64, align 8
  store i8* %str, i8** %1, align 8
  store i64 5381, i64* %hash, align 8
  br label %2

; <label>:2                                       ; preds = %8, %0
  %3 = load i8*, i8** %1, align 8
  %4 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %4, i8** %1, align 8
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i64
  store i64 %6, i64* %c, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %2
  %9 = load i64, i64* %hash, align 8
  %10 = shl i64 %9, 5
  %11 = load i64, i64* %hash, align 8
  %12 = add i64 %10, %11
  %13 = load i64, i64* %c, align 8
  %14 = add i64 %12, %13
  store i64 %14, i64* %hash, align 8
  br label %2

; <label>:15                                      ; preds = %2
  %16 = load i64, i64* %hash, align 8
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define i64 @hash_sdbm(i8* %str) #8 {
  %1 = alloca i8*, align 8
  %hash = alloca i64, align 8
  %c = alloca i64, align 8
  store i8* %str, i8** %1, align 8
  store i64 0, i64* %hash, align 8
  br label %2

; <label>:2                                       ; preds = %8, %0
  %3 = load i8*, i8** %1, align 8
  %4 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %4, i8** %1, align 8
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i64
  store i64 %6, i64* %c, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %2
  %9 = load i64, i64* %c, align 8
  %10 = load i64, i64* %hash, align 8
  %11 = shl i64 %10, 6
  %12 = add i64 %9, %11
  %13 = load i64, i64* %hash, align 8
  %14 = shl i64 %13, 16
  %15 = add i64 %12, %14
  %16 = load i64, i64* %hash, align 8
  %17 = sub i64 %15, %16
  store i64 %17, i64* %hash, align 8
  br label %2

; <label>:18                                      ; preds = %2
  %19 = load i64, i64* %hash, align 8
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define void @hashtable_iter_reset(%struct.hashtable_iter* %itPtr, %struct.hashtable* %hashtablePtr) #8 {
  %1 = alloca %struct.hashtable_iter*, align 8
  %2 = alloca %struct.hashtable*, align 8
  store %struct.hashtable_iter* %itPtr, %struct.hashtable_iter** %1, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  %3 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %4 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %6 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %5, i32 0, i32 1
  %7 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 0
  %9 = load %struct.list**, %struct.list*** %8, align 8
  %10 = getelementptr inbounds %struct.list*, %struct.list** %9, i64 0
  %11 = load %struct.list*, %struct.list** %10, align 8
  call void @list_iter_reset(%struct.list_node** %6, %struct.list* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMhashtable_iter_reset(%struct.hashtable_iter* %itPtr, %struct.hashtable* %hashtablePtr) #8 {
  %1 = alloca %struct.hashtable_iter*, align 8
  %2 = alloca %struct.hashtable*, align 8
  store %struct.hashtable_iter* %itPtr, %struct.hashtable_iter** %1, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  %3 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %4 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %6 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %5, i32 0, i32 1
  %7 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 0
  %9 = load %struct.list**, %struct.list*** %8, align 8
  %10 = getelementptr inbounds %struct.list*, %struct.list** %9, i64 0
  %11 = load %struct.list*, %struct.list** %10, align 8
  call void @TMlist_iter_reset(%struct.list_node** %6, %struct.list* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @hashtable_iter_hasNext(%struct.hashtable_iter* %itPtr, %struct.hashtable* %hashtablePtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable_iter*, align 8
  %3 = alloca %struct.hashtable*, align 8
  %bucket = alloca i64, align 8
  %numBucket = alloca i64, align 8
  %buckets = alloca %struct.list**, align 8
  %it = alloca %struct.list_node*, align 8
  %chainPtr = alloca %struct.list*, align 8
  store %struct.hashtable_iter* %itPtr, %struct.hashtable_iter** %2, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %3, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %numBucket, align 8
  %7 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 0
  %9 = load %struct.list**, %struct.list*** %8, align 8
  store %struct.list** %9, %struct.list*** %buckets, align 8
  %10 = load %struct.hashtable_iter*, %struct.hashtable_iter** %2, align 8
  %11 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %10, i32 0, i32 1
  %12 = load %struct.list_node*, %struct.list_node** %11, align 8
  store %struct.list_node* %12, %struct.list_node** %it, align 8
  %13 = load %struct.hashtable_iter*, %struct.hashtable_iter** %2, align 8
  %14 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %bucket, align 8
  br label %16

; <label>:16                                      ; preds = %29, %0
  %17 = load i64, i64* %bucket, align 8
  %18 = load i64, i64* %numBucket, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %35

; <label>:20                                      ; preds = %16
  %21 = load i64, i64* %bucket, align 8
  %22 = load %struct.list**, %struct.list*** %buckets, align 8
  %23 = getelementptr inbounds %struct.list*, %struct.list** %22, i64 %21
  %24 = load %struct.list*, %struct.list** %23, align 8
  store %struct.list* %24, %struct.list** %chainPtr, align 8
  %25 = load %struct.list*, %struct.list** %chainPtr, align 8
  %26 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %25) #15
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %20
  store i64 1, i64* %1, align 8
  br label %36

; <label>:29                                      ; preds = %20
  %30 = load i64, i64* %bucket, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %bucket, align 8
  %32 = load %struct.list**, %struct.list*** %buckets, align 8
  %33 = getelementptr inbounds %struct.list*, %struct.list** %32, i64 %31
  %34 = load %struct.list*, %struct.list** %33, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %34)
  br label %16

; <label>:35                                      ; preds = %16
  store i64 0, i64* %1, align 8
  br label %36

; <label>:36                                      ; preds = %35, %28
  %37 = load i64, i64* %1, align 8
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define i64 @TMhashtable_iter_hasNext(%struct.hashtable_iter* %itPtr, %struct.hashtable* %hashtablePtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable_iter*, align 8
  %3 = alloca %struct.hashtable*, align 8
  %bucket = alloca i64, align 8
  %numBucket = alloca i64, align 8
  %buckets = alloca %struct.list**, align 8
  %it = alloca %struct.list_node*, align 8
  %chainPtr = alloca %struct.list*, align 8
  store %struct.hashtable_iter* %itPtr, %struct.hashtable_iter** %2, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %3, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %numBucket, align 8
  %7 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 0
  %9 = load %struct.list**, %struct.list*** %8, align 8
  store %struct.list** %9, %struct.list*** %buckets, align 8
  %10 = load %struct.hashtable_iter*, %struct.hashtable_iter** %2, align 8
  %11 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %10, i32 0, i32 1
  %12 = load %struct.list_node*, %struct.list_node** %11, align 8
  store %struct.list_node* %12, %struct.list_node** %it, align 8
  %13 = load %struct.hashtable_iter*, %struct.hashtable_iter** %2, align 8
  %14 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %bucket, align 8
  br label %16

; <label>:16                                      ; preds = %29, %0
  %17 = load i64, i64* %bucket, align 8
  %18 = load i64, i64* %numBucket, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %35

; <label>:20                                      ; preds = %16
  %21 = load i64, i64* %bucket, align 8
  %22 = load %struct.list**, %struct.list*** %buckets, align 8
  %23 = getelementptr inbounds %struct.list*, %struct.list** %22, i64 %21
  %24 = load %struct.list*, %struct.list** %23, align 8
  store %struct.list* %24, %struct.list** %chainPtr, align 8
  %25 = load %struct.list*, %struct.list** %chainPtr, align 8
  %26 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %25) #15
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %20
  store i64 1, i64* %1, align 8
  br label %36

; <label>:29                                      ; preds = %20
  %30 = load i64, i64* %bucket, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %bucket, align 8
  %32 = load %struct.list**, %struct.list*** %buckets, align 8
  %33 = getelementptr inbounds %struct.list*, %struct.list** %32, i64 %31
  %34 = load %struct.list*, %struct.list** %33, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %34)
  br label %16

; <label>:35                                      ; preds = %16
  store i64 0, i64* %1, align 8
  br label %36

; <label>:36                                      ; preds = %35, %28
  %37 = load i64, i64* %1, align 8
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define i8* @hashtable_iter_next(%struct.hashtable_iter* %itPtr, %struct.hashtable* %hashtablePtr) #8 {
  %1 = alloca %struct.hashtable_iter*, align 8
  %2 = alloca %struct.hashtable*, align 8
  %bucket = alloca i64, align 8
  %numBucket = alloca i64, align 8
  %buckets = alloca %struct.list**, align 8
  %it = alloca %struct.list_node*, align 8
  %dataPtr = alloca i8*, align 8
  %chainPtr = alloca %struct.list*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  store %struct.hashtable_iter* %itPtr, %struct.hashtable_iter** %1, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  %3 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %numBucket, align 8
  %6 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %7 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 0
  %8 = load %struct.list**, %struct.list*** %7, align 8
  store %struct.list** %8, %struct.list*** %buckets, align 8
  %9 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %10 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %9, i32 0, i32 1
  %11 = load %struct.list_node*, %struct.list_node** %10, align 8
  store %struct.list_node* %11, %struct.list_node** %it, align 8
  store i8* null, i8** %dataPtr, align 8
  %12 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %13 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %bucket, align 8
  br label %15

; <label>:15                                      ; preds = %36, %0
  %16 = load i64, i64* %bucket, align 8
  %17 = load i64, i64* %numBucket, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %42

; <label>:19                                      ; preds = %15
  %20 = load i64, i64* %bucket, align 8
  %21 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %22 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %21, i32 0, i32 0
  %23 = load %struct.list**, %struct.list*** %22, align 8
  %24 = getelementptr inbounds %struct.list*, %struct.list** %23, i64 %20
  %25 = load %struct.list*, %struct.list** %24, align 8
  store %struct.list* %25, %struct.list** %chainPtr, align 8
  %26 = load %struct.list*, %struct.list** %chainPtr, align 8
  %27 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %26) #15
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %19
  %30 = load %struct.list*, %struct.list** %chainPtr, align 8
  %31 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %30)
  %32 = bitcast i8* %31 to %struct.pair*
  store %struct.pair* %32, %struct.pair** %pairPtr, align 8
  %33 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %34 = getelementptr inbounds %struct.pair, %struct.pair* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %dataPtr, align 8
  br label %42

; <label>:36                                      ; preds = %19
  %37 = load i64, i64* %bucket, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %bucket, align 8
  %39 = load %struct.list**, %struct.list*** %buckets, align 8
  %40 = getelementptr inbounds %struct.list*, %struct.list** %39, i64 %38
  %41 = load %struct.list*, %struct.list** %40, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %41)
  br label %15

; <label>:42                                      ; preds = %29, %15
  %43 = load i64, i64* %bucket, align 8
  %44 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %45 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.list_node*, %struct.list_node** %it, align 8
  %47 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %48 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %47, i32 0, i32 1
  store %struct.list_node* %46, %struct.list_node** %48, align 8
  %49 = load i8*, i8** %dataPtr, align 8
  ret i8* %49
}

; Function Attrs: nounwind uwtable
define i8* @TMhashtable_iter_next(%struct.hashtable_iter* %itPtr, %struct.hashtable* %hashtablePtr) #8 {
  %1 = alloca %struct.hashtable_iter*, align 8
  %2 = alloca %struct.hashtable*, align 8
  %bucket = alloca i64, align 8
  %numBucket = alloca i64, align 8
  %buckets = alloca %struct.list**, align 8
  %it = alloca %struct.list_node*, align 8
  %dataPtr = alloca i8*, align 8
  %chainPtr = alloca %struct.list*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  store %struct.hashtable_iter* %itPtr, %struct.hashtable_iter** %1, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  %3 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %numBucket, align 8
  %6 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %7 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 0
  %8 = load %struct.list**, %struct.list*** %7, align 8
  store %struct.list** %8, %struct.list*** %buckets, align 8
  %9 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %10 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %9, i32 0, i32 1
  %11 = load %struct.list_node*, %struct.list_node** %10, align 8
  store %struct.list_node* %11, %struct.list_node** %it, align 8
  store i8* null, i8** %dataPtr, align 8
  %12 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %13 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %bucket, align 8
  br label %15

; <label>:15                                      ; preds = %36, %0
  %16 = load i64, i64* %bucket, align 8
  %17 = load i64, i64* %numBucket, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %42

; <label>:19                                      ; preds = %15
  %20 = load i64, i64* %bucket, align 8
  %21 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %22 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %21, i32 0, i32 0
  %23 = load %struct.list**, %struct.list*** %22, align 8
  %24 = getelementptr inbounds %struct.list*, %struct.list** %23, i64 %20
  %25 = load %struct.list*, %struct.list** %24, align 8
  store %struct.list* %25, %struct.list** %chainPtr, align 8
  %26 = load %struct.list*, %struct.list** %chainPtr, align 8
  %27 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %26) #15
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %19
  %30 = load %struct.list*, %struct.list** %chainPtr, align 8
  %31 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %30)
  %32 = bitcast i8* %31 to %struct.pair*
  store %struct.pair* %32, %struct.pair** %pairPtr, align 8
  %33 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %34 = getelementptr inbounds %struct.pair, %struct.pair* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %dataPtr, align 8
  br label %42

; <label>:36                                      ; preds = %19
  %37 = load i64, i64* %bucket, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %bucket, align 8
  %39 = load %struct.list**, %struct.list*** %buckets, align 8
  %40 = getelementptr inbounds %struct.list*, %struct.list** %39, i64 %38
  %41 = load %struct.list*, %struct.list** %40, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %41)
  br label %15

; <label>:42                                      ; preds = %29, %15
  %43 = load i64, i64* %bucket, align 8
  %44 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %45 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.list_node*, %struct.list_node** %it, align 8
  %47 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %48 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %47, i32 0, i32 1
  store %struct.list_node* %46, %struct.list_node** %48, align 8
  %49 = load i8*, i8** %dataPtr, align 8
  ret i8* %49
}

; Function Attrs: nounwind uwtable
define %struct.hashtable* @hashtable_alloc(i64 %initNumBucket, i64 (i8*)* %hash, i64 (%struct.pair*, %struct.pair*)* %comparePairs, i64 %resizeRatio, i64 %growthFactor) #8 {
  %1 = alloca %struct.hashtable*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64 (i8*)*, align 8
  %4 = alloca i64 (%struct.pair*, %struct.pair*)*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %hashtablePtr = alloca %struct.hashtable*, align 8
  store i64 %initNumBucket, i64* %2, align 8
  store i64 (i8*)* %hash, i64 (i8*)** %3, align 8
  store i64 (%struct.pair*, %struct.pair*)* %comparePairs, i64 (%struct.pair*, %struct.pair*)** %4, align 8
  store i64 %resizeRatio, i64* %5, align 8
  store i64 %growthFactor, i64* %6, align 8
  %7 = call noalias i8* @malloc(i64 48) #7
  %8 = bitcast i8* %7 to %struct.hashtable*
  store %struct.hashtable* %8, %struct.hashtable** %hashtablePtr, align 8
  %9 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %10 = icmp eq %struct.hashtable* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store %struct.hashtable* null, %struct.hashtable** %1, align 8
  br label %54

; <label>:12                                      ; preds = %0
  %13 = load i64, i64* %2, align 8
  %14 = load i64 (%struct.pair*, %struct.pair*)*, i64 (%struct.pair*, %struct.pair*)** %4, align 8
  %15 = call %struct.list** @allocBuckets(i64 %13, i64 (%struct.pair*, %struct.pair*)* %14)
  %16 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %17 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 0
  store %struct.list** %15, %struct.list*** %17, align 8
  %18 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %19 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 0
  %20 = load %struct.list**, %struct.list*** %19, align 8
  %21 = icmp eq %struct.list** %20, null
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %12
  %23 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %24 = bitcast %struct.hashtable* %23 to i8*
  call void @free(i8* %24) #7
  store %struct.hashtable* null, %struct.hashtable** %1, align 8
  br label %54

; <label>:25                                      ; preds = %12
  %26 = load i64, i64* %2, align 8
  %27 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %28 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %30 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %31 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %30, i32 0, i32 2
  store i64 (i8*)* %29, i64 (i8*)** %31, align 8
  %32 = load i64 (%struct.pair*, %struct.pair*)*, i64 (%struct.pair*, %struct.pair*)** %4, align 8
  %33 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %34 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %33, i32 0, i32 3
  store i64 (%struct.pair*, %struct.pair*)* %32, i64 (%struct.pair*, %struct.pair*)** %34, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %25
  br label %40

; <label>:38                                      ; preds = %25
  %39 = load i64, i64* %5, align 8
  br label %40

; <label>:40                                      ; preds = %38, %37
  %41 = phi i64 [ 3, %37 ], [ %39, %38 ]
  %42 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %43 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %40
  br label %49

; <label>:47                                      ; preds = %40
  %48 = load i64, i64* %6, align 8
  br label %49

; <label>:49                                      ; preds = %47, %46
  %50 = phi i64 [ 3, %46 ], [ %48, %47 ]
  %51 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %52 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %51, i32 0, i32 5
  store i64 %50, i64* %52, align 8
  %53 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  store %struct.hashtable* %53, %struct.hashtable** %1, align 8
  br label %54

; <label>:54                                      ; preds = %49, %22, %11
  %55 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  ret %struct.hashtable* %55
}

; Function Attrs: nounwind uwtable
define internal %struct.list** @allocBuckets(i64 %numBucket, i64 (%struct.pair*, %struct.pair*)* %comparePairs) #8 {
  %1 = alloca %struct.list**, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64 (%struct.pair*, %struct.pair*)*, align 8
  %i = alloca i64, align 8
  %buckets = alloca %struct.list**, align 8
  %chainPtr = alloca %struct.list*, align 8
  store i64 %numBucket, i64* %2, align 8
  store i64 (%struct.pair*, %struct.pair*)* %comparePairs, i64 (%struct.pair*, %struct.pair*)** %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = add nsw i64 %4, 1
  %6 = mul i64 %5, 8
  %7 = call noalias i8* @malloc(i64 %6) #7
  %8 = bitcast i8* %7 to %struct.list**
  store %struct.list** %8, %struct.list*** %buckets, align 8
  %9 = load %struct.list**, %struct.list*** %buckets, align 8
  %10 = icmp eq %struct.list** %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store %struct.list** null, %struct.list*** %1, align 8
  br label %45

; <label>:12                                      ; preds = %0
  store i64 0, i64* %i, align 8
  br label %13

; <label>:13                                      ; preds = %40, %12
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %2, align 8
  %16 = add nsw i64 %15, 1
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %43

; <label>:18                                      ; preds = %13
  %19 = load i64 (%struct.pair*, %struct.pair*)*, i64 (%struct.pair*, %struct.pair*)** %3, align 8
  %20 = bitcast i64 (%struct.pair*, %struct.pair*)* %19 to i64 (i8*, i8*)*
  %21 = call %struct.list* @list_alloc(i64 (i8*, i8*)* %20)
  store %struct.list* %21, %struct.list** %chainPtr, align 8
  %22 = load %struct.list*, %struct.list** %chainPtr, align 8
  %23 = icmp eq %struct.list* %22, null
  br i1 %23, label %24, label %35

; <label>:24                                      ; preds = %18
  br label %25

; <label>:25                                      ; preds = %29, %24
  %26 = load i64, i64* %i, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %i, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %34

; <label>:29                                      ; preds = %25
  %30 = load i64, i64* %i, align 8
  %31 = load %struct.list**, %struct.list*** %buckets, align 8
  %32 = getelementptr inbounds %struct.list*, %struct.list** %31, i64 %30
  %33 = load %struct.list*, %struct.list** %32, align 8
  call void @list_free(%struct.list* %33)
  br label %25

; <label>:34                                      ; preds = %25
  store %struct.list** null, %struct.list*** %1, align 8
  br label %45

; <label>:35                                      ; preds = %18
  %36 = load %struct.list*, %struct.list** %chainPtr, align 8
  %37 = load i64, i64* %i, align 8
  %38 = load %struct.list**, %struct.list*** %buckets, align 8
  %39 = getelementptr inbounds %struct.list*, %struct.list** %38, i64 %37
  store %struct.list* %36, %struct.list** %39, align 8
  br label %40

; <label>:40                                      ; preds = %35
  %41 = load i64, i64* %i, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %i, align 8
  br label %13

; <label>:43                                      ; preds = %13
  %44 = load %struct.list**, %struct.list*** %buckets, align 8
  store %struct.list** %44, %struct.list*** %1, align 8
  br label %45

; <label>:45                                      ; preds = %43, %34, %11
  %46 = load %struct.list**, %struct.list*** %1, align 8
  ret %struct.list** %46
}

; Function Attrs: nounwind uwtable
define %struct.hashtable* @TMhashtable_alloc(i64 %initNumBucket, i64 (i8*)* %hash, i64 (%struct.pair*, %struct.pair*)* %comparePairs, i64 %resizeRatio, i64 %growthFactor) #8 {
  %1 = alloca %struct.hashtable*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64 (i8*)*, align 8
  %4 = alloca i64 (%struct.pair*, %struct.pair*)*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %hashtablePtr = alloca %struct.hashtable*, align 8
  store i64 %initNumBucket, i64* %2, align 8
  store i64 (i8*)* %hash, i64 (i8*)** %3, align 8
  store i64 (%struct.pair*, %struct.pair*)* %comparePairs, i64 (%struct.pair*, %struct.pair*)** %4, align 8
  store i64 %resizeRatio, i64* %5, align 8
  store i64 %growthFactor, i64* %6, align 8
  %7 = call noalias i8* @malloc(i64 48) #7
  %8 = bitcast i8* %7 to %struct.hashtable*
  store %struct.hashtable* %8, %struct.hashtable** %hashtablePtr, align 8
  %9 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %10 = icmp eq %struct.hashtable* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store %struct.hashtable* null, %struct.hashtable** %1, align 8
  br label %54

; <label>:12                                      ; preds = %0
  %13 = load i64, i64* %2, align 8
  %14 = load i64 (%struct.pair*, %struct.pair*)*, i64 (%struct.pair*, %struct.pair*)** %4, align 8
  %15 = call %struct.list** @TMallocBuckets(i64 %13, i64 (%struct.pair*, %struct.pair*)* %14)
  %16 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %17 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 0
  store %struct.list** %15, %struct.list*** %17, align 8
  %18 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %19 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 0
  %20 = load %struct.list**, %struct.list*** %19, align 8
  %21 = icmp eq %struct.list** %20, null
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %12
  %23 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %24 = bitcast %struct.hashtable* %23 to i8*
  call void @free(i8* %24) #7
  store %struct.hashtable* null, %struct.hashtable** %1, align 8
  br label %54

; <label>:25                                      ; preds = %12
  %26 = load i64, i64* %2, align 8
  %27 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %28 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %30 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %31 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %30, i32 0, i32 2
  store i64 (i8*)* %29, i64 (i8*)** %31, align 8
  %32 = load i64 (%struct.pair*, %struct.pair*)*, i64 (%struct.pair*, %struct.pair*)** %4, align 8
  %33 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %34 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %33, i32 0, i32 3
  store i64 (%struct.pair*, %struct.pair*)* %32, i64 (%struct.pair*, %struct.pair*)** %34, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %25
  br label %40

; <label>:38                                      ; preds = %25
  %39 = load i64, i64* %5, align 8
  br label %40

; <label>:40                                      ; preds = %38, %37
  %41 = phi i64 [ 3, %37 ], [ %39, %38 ]
  %42 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %43 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %40
  br label %49

; <label>:47                                      ; preds = %40
  %48 = load i64, i64* %6, align 8
  br label %49

; <label>:49                                      ; preds = %47, %46
  %50 = phi i64 [ 3, %46 ], [ %48, %47 ]
  %51 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %52 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %51, i32 0, i32 5
  store i64 %50, i64* %52, align 8
  %53 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  store %struct.hashtable* %53, %struct.hashtable** %1, align 8
  br label %54

; <label>:54                                      ; preds = %49, %22, %11
  %55 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  ret %struct.hashtable* %55
}

; Function Attrs: nounwind uwtable
define internal %struct.list** @TMallocBuckets(i64 %numBucket, i64 (%struct.pair*, %struct.pair*)* %comparePairs) #8 {
  %1 = alloca %struct.list**, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64 (%struct.pair*, %struct.pair*)*, align 8
  %i = alloca i64, align 8
  %buckets = alloca %struct.list**, align 8
  %chainPtr = alloca %struct.list*, align 8
  store i64 %numBucket, i64* %2, align 8
  store i64 (%struct.pair*, %struct.pair*)* %comparePairs, i64 (%struct.pair*, %struct.pair*)** %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = add nsw i64 %4, 1
  %6 = mul i64 %5, 8
  %7 = call noalias i8* @malloc(i64 %6) #7
  %8 = bitcast i8* %7 to %struct.list**
  store %struct.list** %8, %struct.list*** %buckets, align 8
  %9 = load %struct.list**, %struct.list*** %buckets, align 8
  %10 = icmp eq %struct.list** %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store %struct.list** null, %struct.list*** %1, align 8
  br label %45

; <label>:12                                      ; preds = %0
  store i64 0, i64* %i, align 8
  br label %13

; <label>:13                                      ; preds = %40, %12
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %2, align 8
  %16 = add nsw i64 %15, 1
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %43

; <label>:18                                      ; preds = %13
  %19 = load i64 (%struct.pair*, %struct.pair*)*, i64 (%struct.pair*, %struct.pair*)** %3, align 8
  %20 = bitcast i64 (%struct.pair*, %struct.pair*)* %19 to i64 (i8*, i8*)*
  %21 = call %struct.list* @TMlist_alloc(i64 (i8*, i8*)* %20)
  store %struct.list* %21, %struct.list** %chainPtr, align 8
  %22 = load %struct.list*, %struct.list** %chainPtr, align 8
  %23 = icmp eq %struct.list* %22, null
  br i1 %23, label %24, label %35

; <label>:24                                      ; preds = %18
  br label %25

; <label>:25                                      ; preds = %29, %24
  %26 = load i64, i64* %i, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %i, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %34

; <label>:29                                      ; preds = %25
  %30 = load i64, i64* %i, align 8
  %31 = load %struct.list**, %struct.list*** %buckets, align 8
  %32 = getelementptr inbounds %struct.list*, %struct.list** %31, i64 %30
  %33 = load %struct.list*, %struct.list** %32, align 8
  call void @TMlist_free(%struct.list* %33)
  br label %25

; <label>:34                                      ; preds = %25
  store %struct.list** null, %struct.list*** %1, align 8
  br label %45

; <label>:35                                      ; preds = %18
  %36 = load %struct.list*, %struct.list** %chainPtr, align 8
  %37 = load i64, i64* %i, align 8
  %38 = load %struct.list**, %struct.list*** %buckets, align 8
  %39 = getelementptr inbounds %struct.list*, %struct.list** %38, i64 %37
  store %struct.list* %36, %struct.list** %39, align 8
  br label %40

; <label>:40                                      ; preds = %35
  %41 = load i64, i64* %i, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %i, align 8
  br label %13

; <label>:43                                      ; preds = %13
  %44 = load %struct.list**, %struct.list*** %buckets, align 8
  store %struct.list** %44, %struct.list*** %1, align 8
  br label %45

; <label>:45                                      ; preds = %43, %34, %11
  %46 = load %struct.list**, %struct.list*** %1, align 8
  ret %struct.list** %46
}

; Function Attrs: nounwind uwtable
define void @hashtable_free(%struct.hashtable* %hashtablePtr) #8 {
  %1 = alloca %struct.hashtable*, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %1, align 8
  %2 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %3 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %4 = load %struct.list**, %struct.list*** %3, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  call void @freeBuckets(%struct.list** %4, i64 %7)
  %8 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %9 = bitcast %struct.hashtable* %8 to i8*
  call void @free(i8* %9) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeBuckets(%struct.list** %buckets, i64 %numBucket) #8 {
  %1 = alloca %struct.list**, align 8
  %2 = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.list** %buckets, %struct.list*** %1, align 8
  store i64 %numBucket, i64* %2, align 8
  store i64 0, i64* %i, align 8
  br label %3

; <label>:3                                       ; preds = %12, %0
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %15

; <label>:7                                       ; preds = %3
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.list**, %struct.list*** %1, align 8
  %10 = getelementptr inbounds %struct.list*, %struct.list** %9, i64 %8
  %11 = load %struct.list*, %struct.list** %10, align 8
  call void @list_free(%struct.list* %11)
  br label %12

; <label>:12                                      ; preds = %7
  %13 = load i64, i64* %i, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %i, align 8
  br label %3

; <label>:15                                      ; preds = %3
  %16 = load %struct.list**, %struct.list*** %1, align 8
  %17 = bitcast %struct.list** %16 to i8*
  call void @free(i8* %17) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMhashtable_free(%struct.hashtable* %hashtablePtr) #8 {
  %1 = alloca %struct.hashtable*, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %1, align 8
  %2 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %3 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %4 = load %struct.list**, %struct.list*** %3, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  call void @TMfreeBuckets(%struct.list** %4, i64 %7)
  %8 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %9 = bitcast %struct.hashtable* %8 to i8*
  call void @free(i8* %9) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMfreeBuckets(%struct.list** %buckets, i64 %numBucket) #8 {
  %1 = alloca %struct.list**, align 8
  %2 = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.list** %buckets, %struct.list*** %1, align 8
  store i64 %numBucket, i64* %2, align 8
  store i64 0, i64* %i, align 8
  br label %3

; <label>:3                                       ; preds = %12, %0
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %15

; <label>:7                                       ; preds = %3
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.list**, %struct.list*** %1, align 8
  %10 = getelementptr inbounds %struct.list*, %struct.list** %9, i64 %8
  %11 = load %struct.list*, %struct.list** %10, align 8
  call void @TMlist_free(%struct.list* %11)
  br label %12

; <label>:12                                      ; preds = %7
  %13 = load i64, i64* %i, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %i, align 8
  br label %3

; <label>:15                                      ; preds = %3
  %16 = load %struct.list**, %struct.list*** %1, align 8
  %17 = bitcast %struct.list** %16 to i8*
  call void @free(i8* %17) #7
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @hashtable_isEmpty(%struct.hashtable* %hashtablePtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable*, align 8
  %i = alloca i64, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i64 0, i64* %i, align 8
  br label %3

; <label>:3                                       ; preds = %20, %0
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %4, %7
  br i1 %8, label %9, label %23

; <label>:9                                       ; preds = %3
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %12 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 0
  %13 = load %struct.list**, %struct.list*** %12, align 8
  %14 = getelementptr inbounds %struct.list*, %struct.list** %13, i64 %10
  %15 = load %struct.list*, %struct.list** %14, align 8
  %16 = call i64 @list_isEmpty(%struct.list* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

; <label>:18                                      ; preds = %9
  store i64 0, i64* %1, align 8
  br label %24

; <label>:19                                      ; preds = %9
  br label %20

; <label>:20                                      ; preds = %19
  %21 = load i64, i64* %i, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %i, align 8
  br label %3

; <label>:23                                      ; preds = %3
  store i64 1, i64* %1, align 8
  br label %24

; <label>:24                                      ; preds = %23, %18
  %25 = load i64, i64* %1, align 8
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define i64 @TMhashtable_isEmpty(%struct.hashtable* %hashtablePtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable*, align 8
  %i = alloca i64, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i64 0, i64* %i, align 8
  br label %3

; <label>:3                                       ; preds = %20, %0
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %4, %7
  br i1 %8, label %9, label %23

; <label>:9                                       ; preds = %3
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %12 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 0
  %13 = load %struct.list**, %struct.list*** %12, align 8
  %14 = getelementptr inbounds %struct.list*, %struct.list** %13, i64 %10
  %15 = load %struct.list*, %struct.list** %14, align 8
  %16 = call i64 @TMlist_isEmpty(%struct.list* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

; <label>:18                                      ; preds = %9
  store i64 0, i64* %1, align 8
  br label %24

; <label>:19                                      ; preds = %9
  br label %20

; <label>:20                                      ; preds = %19
  %21 = load i64, i64* %i, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %i, align 8
  br label %3

; <label>:23                                      ; preds = %3
  store i64 1, i64* %1, align 8
  br label %24

; <label>:24                                      ; preds = %23, %18
  %25 = load i64, i64* %1, align 8
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define i64 @hashtable_getSize(%struct.hashtable* %hashtablePtr) #8 {
  %1 = alloca %struct.hashtable*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %1, align 8
  store i64 0, i64* %size, align 8
  store i64 0, i64* %i, align 8
  br label %2

; <label>:2                                       ; preds = %18, %0
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %3, %6
  br i1 %7, label %8, label %21

; <label>:8                                       ; preds = %2
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %11 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 0
  %12 = load %struct.list**, %struct.list*** %11, align 8
  %13 = getelementptr inbounds %struct.list*, %struct.list** %12, i64 %9
  %14 = load %struct.list*, %struct.list** %13, align 8
  %15 = call i64 @list_getSize(%struct.list* %14)
  %16 = load i64, i64* %size, align 8
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %size, align 8
  br label %18

; <label>:18                                      ; preds = %8
  %19 = load i64, i64* %i, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %i, align 8
  br label %2

; <label>:21                                      ; preds = %2
  %22 = load i64, i64* %size, align 8
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define i64 @TMhashtable_getSize(%struct.hashtable* %hashtablePtr) #8 {
  %1 = alloca %struct.hashtable*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %1, align 8
  store i64 0, i64* %size, align 8
  store i64 0, i64* %i, align 8
  br label %2

; <label>:2                                       ; preds = %18, %0
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %3, %6
  br i1 %7, label %8, label %21

; <label>:8                                       ; preds = %2
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %11 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 0
  %12 = load %struct.list**, %struct.list*** %11, align 8
  %13 = getelementptr inbounds %struct.list*, %struct.list** %12, i64 %9
  %14 = load %struct.list*, %struct.list** %13, align 8
  %15 = call i64 @TMlist_getSize(%struct.list* %14)
  %16 = load i64, i64* %size, align 8
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %size, align 8
  br label %18

; <label>:18                                      ; preds = %8
  %19 = load i64, i64* %i, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %i, align 8
  br label %2

; <label>:21                                      ; preds = %2
  %22 = load i64, i64* %size, align 8
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define i64 @hashtable_containsKey(%struct.hashtable* %hashtablePtr, i8* %keyPtr) #8 {
  %1 = alloca %struct.hashtable*, align 8
  %2 = alloca i8*, align 8
  %i = alloca i64, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %findPair = alloca %struct.pair, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %1, align 8
  store i8* %keyPtr, i8** %2, align 8
  %3 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 2
  %5 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 %5(i8* %6)
  %8 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %9 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = urem i64 %7, %10
  store i64 %11, i64* %i, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds %struct.pair, %struct.pair* %findPair, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %16 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %15, i32 0, i32 0
  %17 = load %struct.list**, %struct.list*** %16, align 8
  %18 = getelementptr inbounds %struct.list*, %struct.list** %17, i64 %14
  %19 = load %struct.list*, %struct.list** %18, align 8
  %20 = bitcast %struct.pair* %findPair to i8*
  %21 = call i8* @list_find(%struct.list* %19, i8* %20) #15
  %22 = bitcast i8* %21 to %struct.pair*
  store %struct.pair* %22, %struct.pair** %pairPtr, align 8
  %23 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %24 = icmp ne %struct.pair* %23, null
  %25 = select i1 %24, i32 1, i32 0
  %26 = sext i32 %25 to i64
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define i64 @TMhashtable_containsKey(%struct.hashtable* %hashtablePtr, i8* %keyPtr) #8 {
  %1 = alloca %struct.hashtable*, align 8
  %2 = alloca i8*, align 8
  %i = alloca i64, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %findPair = alloca %struct.pair, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %1, align 8
  store i8* %keyPtr, i8** %2, align 8
  %3 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 2
  %5 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 %5(i8* %6)
  %8 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %9 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = urem i64 %7, %10
  store i64 %11, i64* %i, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds %struct.pair, %struct.pair* %findPair, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %16 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %15, i32 0, i32 0
  %17 = load %struct.list**, %struct.list*** %16, align 8
  %18 = getelementptr inbounds %struct.list*, %struct.list** %17, i64 %14
  %19 = load %struct.list*, %struct.list** %18, align 8
  %20 = bitcast %struct.pair* %findPair to i8*
  %21 = call i8* @TMlist_find(%struct.list* %19, i8* %20)
  %22 = bitcast i8* %21 to %struct.pair*
  store %struct.pair* %22, %struct.pair** %pairPtr, align 8
  %23 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %24 = icmp ne %struct.pair* %23, null
  %25 = select i1 %24, i32 1, i32 0
  %26 = sext i32 %25 to i64
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define i8* @hashtable_find(%struct.hashtable* %hashtablePtr, i8* %keyPtr) #8 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca i8*, align 8
  %i = alloca i64, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %findPair = alloca %struct.pair, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i8* %keyPtr, i8** %3, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 2
  %6 = load i64 (i8*)*, i64 (i8*)** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 %6(i8* %7)
  %9 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %10 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = urem i64 %8, %11
  store i64 %12, i64* %i, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds %struct.pair, %struct.pair* %findPair, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i64, i64* %i, align 8
  %16 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %17 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 0
  %18 = load %struct.list**, %struct.list*** %17, align 8
  %19 = getelementptr inbounds %struct.list*, %struct.list** %18, i64 %15
  %20 = load %struct.list*, %struct.list** %19, align 8
  %21 = bitcast %struct.pair* %findPair to i8*
  %22 = call i8* @list_find(%struct.list* %20, i8* %21) #15
  %23 = bitcast i8* %22 to %struct.pair*
  store %struct.pair* %23, %struct.pair** %pairPtr, align 8
  %24 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %25 = icmp eq %struct.pair* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %0
  store i8* null, i8** %1, align 8
  br label %31

; <label>:27                                      ; preds = %0
  %28 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %29 = getelementptr inbounds %struct.pair, %struct.pair* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %1, align 8
  br label %31

; <label>:31                                      ; preds = %27, %26
  %32 = load i8*, i8** %1, align 8
  ret i8* %32
}

; Function Attrs: nounwind uwtable
define i8* @TMhashtable_find(%struct.hashtable* %hashtablePtr, i8* %keyPtr) #8 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca i8*, align 8
  %i = alloca i64, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %findPair = alloca %struct.pair, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i8* %keyPtr, i8** %3, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 2
  %6 = load i64 (i8*)*, i64 (i8*)** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 %6(i8* %7)
  %9 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %10 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = urem i64 %8, %11
  store i64 %12, i64* %i, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds %struct.pair, %struct.pair* %findPair, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i64, i64* %i, align 8
  %16 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %17 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 0
  %18 = load %struct.list**, %struct.list*** %17, align 8
  %19 = getelementptr inbounds %struct.list*, %struct.list** %18, i64 %15
  %20 = load %struct.list*, %struct.list** %19, align 8
  %21 = bitcast %struct.pair* %findPair to i8*
  %22 = call i8* @TMlist_find(%struct.list* %20, i8* %21)
  %23 = bitcast i8* %22 to %struct.pair*
  store %struct.pair* %23, %struct.pair** %pairPtr, align 8
  %24 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %25 = icmp eq %struct.pair* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %0
  store i8* null, i8** %1, align 8
  br label %31

; <label>:27                                      ; preds = %0
  %28 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %29 = getelementptr inbounds %struct.pair, %struct.pair* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %1, align 8
  br label %31

; <label>:31                                      ; preds = %27, %26
  %32 = load i8*, i8** %1, align 8
  ret i8* %32
}

; Function Attrs: nounwind uwtable
define i64 @hashtable_insert(%struct.hashtable* %hashtablePtr, i8* %keyPtr, i8* %dataPtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %numBucket = alloca i64, align 8
  %i = alloca i64, align 8
  %findPair = alloca %struct.pair, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %insertPtr = alloca %struct.pair*, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i8* %keyPtr, i8** %3, align 8
  store i8* %dataPtr, i8** %4, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %numBucket, align 8
  %8 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %9 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 2
  %10 = load i64 (i8*)*, i64 (i8*)** %9, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 %10(i8* %11)
  %13 = load i64, i64* %numBucket, align 8
  %14 = urem i64 %12, %13
  store i64 %14, i64* %i, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds %struct.pair, %struct.pair* %findPair, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %19 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 0
  %20 = load %struct.list**, %struct.list*** %19, align 8
  %21 = getelementptr inbounds %struct.list*, %struct.list** %20, i64 %17
  %22 = load %struct.list*, %struct.list** %21, align 8
  %23 = bitcast %struct.pair* %findPair to i8*
  %24 = call i8* @list_find(%struct.list* %22, i8* %23) #15
  %25 = bitcast i8* %24 to %struct.pair*
  store %struct.pair* %25, %struct.pair** %pairPtr, align 8
  %26 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %27 = icmp ne %struct.pair* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %50

; <label>:29                                      ; preds = %0
  %30 = load i8*, i8** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call %struct.pair* @pair_alloc(i8* %30, i8* %31)
  store %struct.pair* %32, %struct.pair** %insertPtr, align 8
  %33 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %34 = icmp eq %struct.pair* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %29
  store i64 0, i64* %1, align 8
  br label %50

; <label>:36                                      ; preds = %29
  %37 = load i64, i64* %i, align 8
  %38 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %39 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %38, i32 0, i32 0
  %40 = load %struct.list**, %struct.list*** %39, align 8
  %41 = getelementptr inbounds %struct.list*, %struct.list** %40, i64 %37
  %42 = load %struct.list*, %struct.list** %41, align 8
  %43 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %44 = bitcast %struct.pair* %43 to i8*
  %45 = call i64 @list_insert(%struct.list* %42, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

; <label>:47                                      ; preds = %36
  %48 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  call void @pair_free(%struct.pair* %48)
  store i64 0, i64* %1, align 8
  br label %50

; <label>:49                                      ; preds = %36
  store i64 1, i64* %1, align 8
  br label %50

; <label>:50                                      ; preds = %49, %47, %35, %28
  %51 = load i64, i64* %1, align 8
  ret i64 %51
}

; Function Attrs: nounwind uwtable
define i64 @TMhashtable_insert(%struct.hashtable* %hashtablePtr, i8* %keyPtr, i8* %dataPtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %numBucket = alloca i64, align 8
  %i = alloca i64, align 8
  %findPair = alloca %struct.pair, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %insertPtr = alloca %struct.pair*, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i8* %keyPtr, i8** %3, align 8
  store i8* %dataPtr, i8** %4, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %numBucket, align 8
  %8 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %9 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 2
  %10 = load i64 (i8*)*, i64 (i8*)** %9, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 %10(i8* %11)
  %13 = load i64, i64* %numBucket, align 8
  %14 = urem i64 %12, %13
  store i64 %14, i64* %i, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds %struct.pair, %struct.pair* %findPair, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %19 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 0
  %20 = load %struct.list**, %struct.list*** %19, align 8
  %21 = getelementptr inbounds %struct.list*, %struct.list** %20, i64 %17
  %22 = load %struct.list*, %struct.list** %21, align 8
  %23 = bitcast %struct.pair* %findPair to i8*
  %24 = call i8* @TMlist_find(%struct.list* %22, i8* %23)
  %25 = bitcast i8* %24 to %struct.pair*
  store %struct.pair* %25, %struct.pair** %pairPtr, align 8
  %26 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %27 = icmp ne %struct.pair* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %50

; <label>:29                                      ; preds = %0
  %30 = load i8*, i8** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call %struct.pair* @TMpair_alloc(i8* %30, i8* %31)
  store %struct.pair* %32, %struct.pair** %insertPtr, align 8
  %33 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %34 = icmp eq %struct.pair* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %29
  store i64 0, i64* %1, align 8
  br label %50

; <label>:36                                      ; preds = %29
  %37 = load i64, i64* %i, align 8
  %38 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %39 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %38, i32 0, i32 0
  %40 = load %struct.list**, %struct.list*** %39, align 8
  %41 = getelementptr inbounds %struct.list*, %struct.list** %40, i64 %37
  %42 = load %struct.list*, %struct.list** %41, align 8
  %43 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %44 = bitcast %struct.pair* %43 to i8*
  %45 = call i64 @TMlist_insert(%struct.list* %42, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

; <label>:47                                      ; preds = %36
  %48 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  call void @TMpair_free(%struct.pair* %48)
  store i64 0, i64* %1, align 8
  br label %50

; <label>:49                                      ; preds = %36
  store i64 1, i64* %1, align 8
  br label %50

; <label>:50                                      ; preds = %49, %47, %35, %28
  %51 = load i64, i64* %1, align 8
  ret i64 %51
}

; Function Attrs: nounwind uwtable
define i64 @hashtable_remove(%struct.hashtable* %hashtablePtr, i8* %keyPtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca i8*, align 8
  %numBucket = alloca i64, align 8
  %i = alloca i64, align 8
  %chainPtr = alloca %struct.list*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %removePair = alloca %struct.pair, align 8
  %status = alloca i64, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i8* %keyPtr, i8** %3, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %numBucket, align 8
  %7 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 2
  %9 = load i64 (i8*)*, i64 (i8*)** %8, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 %9(i8* %10)
  %12 = load i64, i64* %numBucket, align 8
  %13 = urem i64 %11, %12
  store i64 %13, i64* %i, align 8
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %16 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %15, i32 0, i32 0
  %17 = load %struct.list**, %struct.list*** %16, align 8
  %18 = getelementptr inbounds %struct.list*, %struct.list** %17, i64 %14
  %19 = load %struct.list*, %struct.list** %18, align 8
  store %struct.list* %19, %struct.list** %chainPtr, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds %struct.pair, %struct.pair* %removePair, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load %struct.list*, %struct.list** %chainPtr, align 8
  %23 = bitcast %struct.pair* %removePair to i8*
  %24 = call i8* @list_find(%struct.list* %22, i8* %23) #15
  %25 = bitcast i8* %24 to %struct.pair*
  store %struct.pair* %25, %struct.pair** %pairPtr, align 8
  %26 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %27 = icmp eq %struct.pair* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %40

; <label>:29                                      ; preds = %0
  %30 = load %struct.list*, %struct.list** %chainPtr, align 8
  %31 = bitcast %struct.pair* %removePair to i8*
  %32 = call i64 @list_remove(%struct.list* %30, i8* %31)
  store i64 %32, i64* %status, align 8
  %33 = load i64, i64* %status, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %29
  br label %38

; <label>:36                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.77, i32 0, i32 0), i32 778, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.hashtable_remove, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  call void @pair_free(%struct.pair* %39)
  store i64 1, i64* %1, align 8
  br label %40

; <label>:40                                      ; preds = %38, %28
  %41 = load i64, i64* %1, align 8
  ret i64 %41
}

; Function Attrs: nounwind uwtable
define i64 @TMhashtable_remove(%struct.hashtable* %hashtablePtr, i8* %keyPtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca i8*, align 8
  %numBucket = alloca i64, align 8
  %i = alloca i64, align 8
  %chainPtr = alloca %struct.list*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %removePair = alloca %struct.pair, align 8
  %status = alloca i64, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i8* %keyPtr, i8** %3, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %numBucket, align 8
  %7 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 2
  %9 = load i64 (i8*)*, i64 (i8*)** %8, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 %9(i8* %10)
  %12 = load i64, i64* %numBucket, align 8
  %13 = urem i64 %11, %12
  store i64 %13, i64* %i, align 8
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %16 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %15, i32 0, i32 0
  %17 = load %struct.list**, %struct.list*** %16, align 8
  %18 = getelementptr inbounds %struct.list*, %struct.list** %17, i64 %14
  %19 = load %struct.list*, %struct.list** %18, align 8
  store %struct.list* %19, %struct.list** %chainPtr, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds %struct.pair, %struct.pair* %removePair, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load %struct.list*, %struct.list** %chainPtr, align 8
  %23 = bitcast %struct.pair* %removePair to i8*
  %24 = call i8* @TMlist_find(%struct.list* %22, i8* %23)
  %25 = bitcast i8* %24 to %struct.pair*
  store %struct.pair* %25, %struct.pair** %pairPtr, align 8
  %26 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %27 = icmp eq %struct.pair* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %40

; <label>:29                                      ; preds = %0
  %30 = load %struct.list*, %struct.list** %chainPtr, align 8
  %31 = bitcast %struct.pair* %removePair to i8*
  %32 = call i64 @TMlist_remove(%struct.list* %30, i8* %31)
  store i64 %32, i64* %status, align 8
  %33 = load i64, i64* %status, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %29
  br label %38

; <label>:36                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.77, i32 0, i32 0), i32 811, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.TMhashtable_remove, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  call void @TMpair_free(%struct.pair* %39)
  store i64 1, i64* %1, align 8
  br label %40

; <label>:40                                      ; preds = %38, %28
  %41 = load i64, i64* %1, align 8
  ret i64 %41
}

; Function Attrs: nounwind uwtable
define %struct.pair* @pair_alloc(i8* %firstPtr, i8* %secondPtr) #8 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  store i8* %firstPtr, i8** %1, align 8
  store i8* %secondPtr, i8** %2, align 8
  %3 = call noalias i8* @malloc(i64 16) #7
  %4 = bitcast i8* %3 to %struct.pair*
  store %struct.pair* %4, %struct.pair** %pairPtr, align 8
  %5 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %6 = icmp ne %struct.pair* %5, null
  br i1 %6, label %7, label %14

; <label>:7                                       ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %10 = getelementptr inbounds %struct.pair, %struct.pair* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %13 = getelementptr inbounds %struct.pair, %struct.pair* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  br label %14

; <label>:14                                      ; preds = %7, %0
  %15 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  ret %struct.pair* %15
}

; Function Attrs: nounwind uwtable
define %struct.pair* @Ppair_alloc(i8* %firstPtr, i8* %secondPtr) #8 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  store i8* %firstPtr, i8** %1, align 8
  store i8* %secondPtr, i8** %2, align 8
  %3 = call noalias i8* @malloc(i64 16) #7
  %4 = bitcast i8* %3 to %struct.pair*
  store %struct.pair* %4, %struct.pair** %pairPtr, align 8
  %5 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %6 = icmp ne %struct.pair* %5, null
  br i1 %6, label %7, label %14

; <label>:7                                       ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %10 = getelementptr inbounds %struct.pair, %struct.pair* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %13 = getelementptr inbounds %struct.pair, %struct.pair* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  br label %14

; <label>:14                                      ; preds = %7, %0
  %15 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  ret %struct.pair* %15
}

; Function Attrs: nounwind uwtable
define %struct.pair* @TMpair_alloc(i8* %firstPtr, i8* %secondPtr) #8 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  store i8* %firstPtr, i8** %1, align 8
  store i8* %secondPtr, i8** %2, align 8
  %3 = call noalias i8* @malloc(i64 16) #7
  %4 = bitcast i8* %3 to %struct.pair*
  store %struct.pair* %4, %struct.pair** %pairPtr, align 8
  %5 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %6 = icmp ne %struct.pair* %5, null
  br i1 %6, label %7, label %14

; <label>:7                                       ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %10 = getelementptr inbounds %struct.pair, %struct.pair* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %13 = getelementptr inbounds %struct.pair, %struct.pair* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  br label %14

; <label>:14                                      ; preds = %7, %0
  %15 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  ret %struct.pair* %15
}

; Function Attrs: nounwind uwtable
define void @pair_free(%struct.pair* %pairPtr) #8 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppair_free(%struct.pair* %pairPtr) #8 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMpair_free(%struct.pair* %pairPtr) #8 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @pair_swap(%struct.pair* %pairPtr) #8 {
  %1 = alloca %struct.pair*, align 8
  %tmpPtr = alloca i8*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = getelementptr inbounds %struct.pair, %struct.pair* %2, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  store i8* %4, i8** %tmpPtr, align 8
  %5 = load %struct.pair*, %struct.pair** %1, align 8
  %6 = getelementptr inbounds %struct.pair, %struct.pair* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.pair*, %struct.pair** %1, align 8
  %9 = getelementptr inbounds %struct.pair, %struct.pair* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** %tmpPtr, align 8
  %11 = load %struct.pair*, %struct.pair** %1, align 8
  %12 = getelementptr inbounds %struct.pair, %struct.pair* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.random* @random_alloc() #8 {
  %randomPtr = alloca %struct.random*, align 8
  %1 = call noalias i8* @malloc(i64 5008) #7
  %2 = bitcast i8* %1 to %struct.random*
  store %struct.random* %2, %struct.random** %randomPtr, align 8
  %3 = load %struct.random*, %struct.random** %randomPtr, align 8
  %4 = icmp ne %struct.random* %3, null
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %0
  %6 = load %struct.random*, %struct.random** %randomPtr, align 8
  %7 = getelementptr inbounds %struct.random, %struct.random* %6, i32 0, i32 2
  store i64 624, i64* %7, align 8
  %8 = load %struct.random*, %struct.random** %randomPtr, align 8
  %9 = getelementptr inbounds %struct.random, %struct.random* %8, i32 0, i32 1
  %10 = getelementptr inbounds [624 x i64], [624 x i64]* %9, i32 0, i32 0
  %11 = load %struct.random*, %struct.random** %randomPtr, align 8
  %12 = getelementptr inbounds %struct.random, %struct.random* %11, i32 0, i32 2
  call void @init_genrand(i64* %10, i64* %12, i64 0)
  br label %13

; <label>:13                                      ; preds = %5, %0
  %14 = load %struct.random*, %struct.random** %randomPtr, align 8
  ret %struct.random* %14
}

; Function Attrs: nounwind uwtable
define %struct.random* @Prandom_alloc() #8 {
  %randomPtr = alloca %struct.random*, align 8
  %1 = call noalias i8* @malloc(i64 5008) #7
  %2 = bitcast i8* %1 to %struct.random*
  store %struct.random* %2, %struct.random** %randomPtr, align 8
  %3 = load %struct.random*, %struct.random** %randomPtr, align 8
  %4 = icmp ne %struct.random* %3, null
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %0
  %6 = load %struct.random*, %struct.random** %randomPtr, align 8
  %7 = getelementptr inbounds %struct.random, %struct.random* %6, i32 0, i32 2
  store i64 624, i64* %7, align 8
  %8 = load %struct.random*, %struct.random** %randomPtr, align 8
  %9 = getelementptr inbounds %struct.random, %struct.random* %8, i32 0, i32 1
  %10 = getelementptr inbounds [624 x i64], [624 x i64]* %9, i32 0, i32 0
  %11 = load %struct.random*, %struct.random** %randomPtr, align 8
  %12 = getelementptr inbounds %struct.random, %struct.random* %11, i32 0, i32 2
  call void @init_genrand(i64* %10, i64* %12, i64 0)
  br label %13

; <label>:13                                      ; preds = %5, %0
  %14 = load %struct.random*, %struct.random** %randomPtr, align 8
  ret %struct.random* %14
}

; Function Attrs: nounwind uwtable
define void @random_free(%struct.random* %randomPtr) #8 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @Prandom_free(%struct.random* %randomPtr) #8 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @random_seed(%struct.random* %randomPtr, i64 %seed) #8 {
  %1 = alloca %struct.random*, align 8
  %2 = alloca i64, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  store i64 %seed, i64* %2, align 8
  %3 = load %struct.random*, %struct.random** %1, align 8
  %4 = getelementptr inbounds %struct.random, %struct.random* %3, i32 0, i32 1
  %5 = getelementptr inbounds [624 x i64], [624 x i64]* %4, i32 0, i32 0
  %6 = load %struct.random*, %struct.random** %1, align 8
  %7 = getelementptr inbounds %struct.random, %struct.random* %6, i32 0, i32 2
  %8 = load i64, i64* %2, align 8
  call void @init_genrand(i64* %5, i64* %7, i64 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @random_generate(%struct.random* %randomPtr) #8 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = getelementptr inbounds %struct.random, %struct.random* %2, i32 0, i32 1
  %4 = getelementptr inbounds [624 x i64], [624 x i64]* %3, i32 0, i32 0
  %5 = load %struct.random*, %struct.random** %1, align 8
  %6 = getelementptr inbounds %struct.random, %struct.random* %5, i32 0, i32 2
  %7 = call i64 @genrand_int32(i64* %4, i64* %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define void @list_iter_reset(%struct.list_node** %itPtr, %struct.list* %listPtr) #8 {
  %1 = alloca %struct.list_node**, align 8
  %2 = alloca %struct.list*, align 8
  store %struct.list_node** %itPtr, %struct.list_node*** %1, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  %3 = load %struct.list*, %struct.list** %2, align 8
  %4 = getelementptr inbounds %struct.list, %struct.list* %3, i32 0, i32 0
  %5 = load %struct.list_node**, %struct.list_node*** %1, align 8
  store %struct.list_node* %4, %struct.list_node** %5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMlist_iter_reset(%struct.list_node** %itPtr, %struct.list* %listPtr) #8 {
  %1 = alloca %struct.list_node**, align 8
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.list_node*, align 8
  store %struct.list_node** %itPtr, %struct.list_node*** %1, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  %4 = load %struct.list*, %struct.list** %2, align 8
  %5 = getelementptr inbounds %struct.list, %struct.list* %4, i32 0, i32 0
  %6 = load %struct.list_node**, %struct.list_node*** %1, align 8
  store %struct.list_node* %5, %struct.list_node** %6, align 8
  %7 = load %struct.list_node**, %struct.list_node*** %1, align 8
  %8 = load %struct.list_node*, %struct.list_node** %7, align 8
  store %struct.list_node* %8, %struct.list_node** %3, align 8
  %9 = load %struct.list_node*, %struct.list_node** %3, align 8
  ret void
}

; Function Attrs: nounwind readonly uwtable
define i64 @list_iter_hasNext(%struct.list_node** %itPtr, %struct.list* %listPtr) #9 {
  %1 = alloca %struct.list_node**, align 8
  %2 = alloca %struct.list*, align 8
  store %struct.list_node** %itPtr, %struct.list_node*** %1, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  %3 = load %struct.list_node**, %struct.list_node*** %1, align 8
  %4 = load %struct.list_node*, %struct.list_node** %3, align 8
  %5 = getelementptr inbounds %struct.list_node, %struct.list_node* %4, i32 0, i32 1
  %6 = load %struct.list_node*, %struct.list_node** %5, align 8
  %7 = icmp ne %struct.list_node* %6, null
  %8 = select i1 %7, i32 1, i32 0
  %9 = sext i32 %8 to i64
  ret i64 %9
}

; Function Attrs: nounwind readonly uwtable
define i64 @TMlist_iter_hasNext(%struct.list_node** %itPtr, %struct.list* %listPtr) #9 {
  %1 = alloca %struct.list_node**, align 8
  %2 = alloca %struct.list*, align 8
  %next = alloca %struct.list_node*, align 8
  store %struct.list_node** %itPtr, %struct.list_node*** %1, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  %3 = load %struct.list_node**, %struct.list_node*** %1, align 8
  %4 = load %struct.list_node*, %struct.list_node** %3, align 8
  %5 = getelementptr inbounds %struct.list_node, %struct.list_node* %4, i32 0, i32 1
  %6 = load %struct.list_node*, %struct.list_node** %5, align 8
  store %struct.list_node* %6, %struct.list_node** %next, align 8
  %7 = load %struct.list_node*, %struct.list_node** %next, align 8
  %8 = icmp ne %struct.list_node* %7, null
  %9 = select i1 %8, i32 1, i32 0
  %10 = sext i32 %9 to i64
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define i8* @list_iter_next(%struct.list_node** %itPtr, %struct.list* %listPtr) #8 {
  %1 = alloca %struct.list_node**, align 8
  %2 = alloca %struct.list*, align 8
  store %struct.list_node** %itPtr, %struct.list_node*** %1, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  %3 = load %struct.list_node**, %struct.list_node*** %1, align 8
  %4 = load %struct.list_node*, %struct.list_node** %3, align 8
  %5 = getelementptr inbounds %struct.list_node, %struct.list_node* %4, i32 0, i32 1
  %6 = load %struct.list_node*, %struct.list_node** %5, align 8
  %7 = load %struct.list_node**, %struct.list_node*** %1, align 8
  store %struct.list_node* %6, %struct.list_node** %7, align 8
  %8 = load %struct.list_node**, %struct.list_node*** %1, align 8
  %9 = load %struct.list_node*, %struct.list_node** %8, align 8
  %10 = getelementptr inbounds %struct.list_node, %struct.list_node* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define i8* @TMlist_iter_next(%struct.list_node** %itPtr, %struct.list* %listPtr) #8 {
  %1 = alloca %struct.list_node**, align 8
  %2 = alloca %struct.list*, align 8
  %next = alloca %struct.list_node*, align 8
  %3 = alloca %struct.list_node*, align 8
  store %struct.list_node** %itPtr, %struct.list_node*** %1, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  %4 = load %struct.list_node**, %struct.list_node*** %1, align 8
  %5 = load %struct.list_node*, %struct.list_node** %4, align 8
  %6 = getelementptr inbounds %struct.list_node, %struct.list_node* %5, i32 0, i32 1
  %7 = load %struct.list_node*, %struct.list_node** %6, align 8
  store %struct.list_node* %7, %struct.list_node** %next, align 8
  %8 = load %struct.list_node*, %struct.list_node** %next, align 8
  %9 = load %struct.list_node**, %struct.list_node*** %1, align 8
  store %struct.list_node* %8, %struct.list_node** %9, align 8
  %10 = load %struct.list_node**, %struct.list_node*** %1, align 8
  %11 = load %struct.list_node*, %struct.list_node** %10, align 8
  store %struct.list_node* %11, %struct.list_node** %3, align 8
  %12 = load %struct.list_node*, %struct.list_node** %3, align 8
  %13 = load %struct.list_node*, %struct.list_node** %next, align 8
  %14 = getelementptr inbounds %struct.list_node, %struct.list_node* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define %struct.list* @list_alloc(i64 (i8*, i8*)* %compare) #8 {
  %1 = alloca %struct.list*, align 8
  %2 = alloca i64 (i8*, i8*)*, align 8
  %listPtr = alloca %struct.list*, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #7
  %4 = bitcast i8* %3 to %struct.list*
  store %struct.list* %4, %struct.list** %listPtr, align 8
  %5 = load %struct.list*, %struct.list** %listPtr, align 8
  %6 = icmp eq %struct.list* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store %struct.list* null, %struct.list** %1, align 8
  br label %28

; <label>:8                                       ; preds = %0
  %9 = load %struct.list*, %struct.list** %listPtr, align 8
  %10 = getelementptr inbounds %struct.list, %struct.list* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.list_node, %struct.list_node* %10, i32 0, i32 0
  store i8* null, i8** %11, align 8
  %12 = load %struct.list*, %struct.list** %listPtr, align 8
  %13 = getelementptr inbounds %struct.list, %struct.list* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.list_node, %struct.list_node* %13, i32 0, i32 1
  store %struct.list_node* null, %struct.list_node** %14, align 8
  %15 = load %struct.list*, %struct.list** %listPtr, align 8
  %16 = getelementptr inbounds %struct.list, %struct.list* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %2, align 8
  %18 = icmp eq i64 (i8*, i8*)* %17, null
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %8
  %20 = load %struct.list*, %struct.list** %listPtr, align 8
  %21 = getelementptr inbounds %struct.list, %struct.list* %20, i32 0, i32 1
  store i64 (i8*, i8*)* @compareDataPtrAddresses, i64 (i8*, i8*)** %21, align 8
  br label %26

; <label>:22                                      ; preds = %8
  %23 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %2, align 8
  %24 = load %struct.list*, %struct.list** %listPtr, align 8
  %25 = getelementptr inbounds %struct.list, %struct.list* %24, i32 0, i32 1
  store i64 (i8*, i8*)* %23, i64 (i8*, i8*)** %25, align 8
  br label %26

; <label>:26                                      ; preds = %22, %19
  %27 = load %struct.list*, %struct.list** %listPtr, align 8
  store %struct.list* %27, %struct.list** %1, align 8
  br label %28

; <label>:28                                      ; preds = %26, %7
  %29 = load %struct.list*, %struct.list** %1, align 8
  ret %struct.list* %29
}

; Function Attrs: nounwind uwtable
define internal i64 @compareDataPtrAddresses(i8* %a, i8* %b) #8 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %a, i8** %1, align 8
  store i8* %b, i8** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = ptrtoint i8* %3 to i64
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i64
  %7 = sub nsw i64 %4, %6
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define %struct.list* @Plist_alloc(i64 (i8*, i8*)* %compare) #8 {
  %1 = alloca %struct.list*, align 8
  %2 = alloca i64 (i8*, i8*)*, align 8
  %listPtr = alloca %struct.list*, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #7
  %4 = bitcast i8* %3 to %struct.list*
  store %struct.list* %4, %struct.list** %listPtr, align 8
  %5 = load %struct.list*, %struct.list** %listPtr, align 8
  %6 = icmp eq %struct.list* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store %struct.list* null, %struct.list** %1, align 8
  br label %28

; <label>:8                                       ; preds = %0
  %9 = load %struct.list*, %struct.list** %listPtr, align 8
  %10 = getelementptr inbounds %struct.list, %struct.list* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.list_node, %struct.list_node* %10, i32 0, i32 0
  store i8* null, i8** %11, align 8
  %12 = load %struct.list*, %struct.list** %listPtr, align 8
  %13 = getelementptr inbounds %struct.list, %struct.list* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.list_node, %struct.list_node* %13, i32 0, i32 1
  store %struct.list_node* null, %struct.list_node** %14, align 8
  %15 = load %struct.list*, %struct.list** %listPtr, align 8
  %16 = getelementptr inbounds %struct.list, %struct.list* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %2, align 8
  %18 = icmp eq i64 (i8*, i8*)* %17, null
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %8
  %20 = load %struct.list*, %struct.list** %listPtr, align 8
  %21 = getelementptr inbounds %struct.list, %struct.list* %20, i32 0, i32 1
  store i64 (i8*, i8*)* @compareDataPtrAddresses, i64 (i8*, i8*)** %21, align 8
  br label %26

; <label>:22                                      ; preds = %8
  %23 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %2, align 8
  %24 = load %struct.list*, %struct.list** %listPtr, align 8
  %25 = getelementptr inbounds %struct.list, %struct.list* %24, i32 0, i32 1
  store i64 (i8*, i8*)* %23, i64 (i8*, i8*)** %25, align 8
  br label %26

; <label>:26                                      ; preds = %22, %19
  %27 = load %struct.list*, %struct.list** %listPtr, align 8
  store %struct.list* %27, %struct.list** %1, align 8
  br label %28

; <label>:28                                      ; preds = %26, %7
  %29 = load %struct.list*, %struct.list** %1, align 8
  ret %struct.list* %29
}

; Function Attrs: nounwind uwtable
define %struct.list* @TMlist_alloc(i64 (i8*, i8*)* %compare) #8 {
  %1 = alloca %struct.list*, align 8
  %2 = alloca i64 (i8*, i8*)*, align 8
  %listPtr = alloca %struct.list*, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #7
  %4 = bitcast i8* %3 to %struct.list*
  store %struct.list* %4, %struct.list** %listPtr, align 8
  %5 = load %struct.list*, %struct.list** %listPtr, align 8
  %6 = icmp eq %struct.list* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store %struct.list* null, %struct.list** %1, align 8
  br label %28

; <label>:8                                       ; preds = %0
  %9 = load %struct.list*, %struct.list** %listPtr, align 8
  %10 = getelementptr inbounds %struct.list, %struct.list* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.list_node, %struct.list_node* %10, i32 0, i32 0
  store i8* null, i8** %11, align 8
  %12 = load %struct.list*, %struct.list** %listPtr, align 8
  %13 = getelementptr inbounds %struct.list, %struct.list* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.list_node, %struct.list_node* %13, i32 0, i32 1
  store %struct.list_node* null, %struct.list_node** %14, align 8
  %15 = load %struct.list*, %struct.list** %listPtr, align 8
  %16 = getelementptr inbounds %struct.list, %struct.list* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %2, align 8
  %18 = icmp eq i64 (i8*, i8*)* %17, null
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %8
  %20 = load %struct.list*, %struct.list** %listPtr, align 8
  %21 = getelementptr inbounds %struct.list, %struct.list* %20, i32 0, i32 1
  store i64 (i8*, i8*)* @compareDataPtrAddresses, i64 (i8*, i8*)** %21, align 8
  br label %26

; <label>:22                                      ; preds = %8
  %23 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %2, align 8
  %24 = load %struct.list*, %struct.list** %listPtr, align 8
  %25 = getelementptr inbounds %struct.list, %struct.list* %24, i32 0, i32 1
  store i64 (i8*, i8*)* %23, i64 (i8*, i8*)** %25, align 8
  br label %26

; <label>:26                                      ; preds = %22, %19
  %27 = load %struct.list*, %struct.list** %listPtr, align 8
  store %struct.list* %27, %struct.list** %1, align 8
  br label %28

; <label>:28                                      ; preds = %26, %7
  %29 = load %struct.list*, %struct.list** %1, align 8
  ret %struct.list* %29
}

; Function Attrs: nounwind uwtable
define void @list_free(%struct.list* %listPtr) #8 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.list_node, %struct.list_node* %3, i32 0, i32 1
  %5 = load %struct.list_node*, %struct.list_node** %4, align 8
  call void @freeList(%struct.list_node* %5)
  %6 = load %struct.list*, %struct.list** %1, align 8
  %7 = bitcast %struct.list* %6 to i8*
  call void @free(i8* %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeList(%struct.list_node* %nodePtr) #8 {
  %1 = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = icmp ne %struct.list_node* %2, null
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = load %struct.list_node*, %struct.list_node** %1, align 8
  %6 = getelementptr inbounds %struct.list_node, %struct.list_node* %5, i32 0, i32 1
  %7 = load %struct.list_node*, %struct.list_node** %6, align 8
  call void @freeList(%struct.list_node* %7)
  %8 = load %struct.list_node*, %struct.list_node** %1, align 8
  call void @freeNode(%struct.list_node* %8)
  br label %9

; <label>:9                                       ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeNode(%struct.list_node* %nodePtr) #8 {
  %1 = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = bitcast %struct.list_node* %2 to i8*
  call void @free(i8* %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plist_free(%struct.list* %listPtr) #8 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.list_node, %struct.list_node* %3, i32 0, i32 1
  %5 = load %struct.list_node*, %struct.list_node** %4, align 8
  call void @PfreeList(%struct.list_node* %5)
  %6 = load %struct.list*, %struct.list** %1, align 8
  %7 = bitcast %struct.list* %6 to i8*
  call void @free(i8* %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PfreeList(%struct.list_node* %nodePtr) #8 {
  %1 = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = icmp ne %struct.list_node* %2, null
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = load %struct.list_node*, %struct.list_node** %1, align 8
  %6 = getelementptr inbounds %struct.list_node, %struct.list_node* %5, i32 0, i32 1
  %7 = load %struct.list_node*, %struct.list_node** %6, align 8
  call void @PfreeList(%struct.list_node* %7)
  %8 = load %struct.list_node*, %struct.list_node** %1, align 8
  call void @PfreeNode(%struct.list_node* %8)
  br label %9

; <label>:9                                       ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PfreeNode(%struct.list_node* %nodePtr) #8 {
  %1 = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = bitcast %struct.list_node* %2 to i8*
  call void @free(i8* %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMlist_free(%struct.list* %listPtr) #8 {
  %1 = alloca %struct.list*, align 8
  %nextPtr = alloca %struct.list_node*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.list_node, %struct.list_node* %3, i32 0, i32 1
  %5 = load %struct.list_node*, %struct.list_node** %4, align 8
  store %struct.list_node* %5, %struct.list_node** %nextPtr, align 8
  %6 = load %struct.list_node*, %struct.list_node** %nextPtr, align 8
  call void @TMfreeList(%struct.list_node* %6)
  %7 = load %struct.list*, %struct.list** %1, align 8
  %8 = bitcast %struct.list* %7 to i8*
  call void @free(i8* %8) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMfreeList(%struct.list_node* %nodePtr) #8 {
  %1 = alloca %struct.list_node*, align 8
  %nextPtr = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = icmp ne %struct.list_node* %2, null
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = load %struct.list_node*, %struct.list_node** %1, align 8
  %6 = getelementptr inbounds %struct.list_node, %struct.list_node* %5, i32 0, i32 1
  %7 = load %struct.list_node*, %struct.list_node** %6, align 8
  store %struct.list_node* %7, %struct.list_node** %nextPtr, align 8
  %8 = load %struct.list_node*, %struct.list_node** %nextPtr, align 8
  call void @TMfreeList(%struct.list_node* %8)
  %9 = load %struct.list_node*, %struct.list_node** %1, align 8
  call void @TMfreeNode(%struct.list_node* %9)
  br label %10

; <label>:10                                      ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMfreeNode(%struct.list_node* %nodePtr) #8 {
  %1 = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = bitcast %struct.list_node* %2 to i8*
  call void @free(i8* %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @list_isEmpty(%struct.list* %listPtr) #8 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.list_node, %struct.list_node* %3, i32 0, i32 1
  %5 = load %struct.list_node*, %struct.list_node** %4, align 8
  %6 = icmp eq %struct.list_node* %5, null
  %7 = zext i1 %6 to i32
  %8 = sext i32 %7 to i64
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define i64 @TMlist_isEmpty(%struct.list* %listPtr) #8 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.list_node, %struct.list_node* %3, i32 0, i32 1
  %5 = load %struct.list_node*, %struct.list_node** %4, align 8
  %6 = bitcast %struct.list_node* %5 to i8*
  %7 = icmp eq i8* %6, null
  %8 = select i1 %7, i32 1, i32 0
  %9 = sext i32 %8 to i64
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i64 @list_getSize(%struct.list* %listPtr) #8 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 2
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @TMlist_getSize(%struct.list* %listPtr) #8 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 2
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind readonly uwtable
define i8* @list_find(%struct.list* %listPtr, i8* %dataPtr) #9 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.list*, align 8
  %3 = alloca i8*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  %prevPtr = alloca %struct.list_node*, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %4 = load %struct.list*, %struct.list** %2, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.list_node* @findPrevious(%struct.list* %4, i8* %5)
  store %struct.list_node* %6, %struct.list_node** %prevPtr, align 8
  %7 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %8 = getelementptr inbounds %struct.list_node, %struct.list_node* %7, i32 0, i32 1
  %9 = load %struct.list_node*, %struct.list_node** %8, align 8
  store %struct.list_node* %9, %struct.list_node** %nodePtr, align 8
  %10 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %11 = icmp eq %struct.list_node* %10, null
  br i1 %11, label %22, label %12

; <label>:12                                      ; preds = %0
  %13 = load %struct.list*, %struct.list** %2, align 8
  %14 = getelementptr inbounds %struct.list, %struct.list* %13, i32 0, i32 1
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %14, align 8
  %16 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %17 = getelementptr inbounds %struct.list_node, %struct.list_node* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 %15(i8* %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %12, %0
  store i8* null, i8** %1, align 8
  br label %27

; <label>:23                                      ; preds = %12
  %24 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %25 = getelementptr inbounds %struct.list_node, %struct.list_node* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %1, align 8
  br label %27

; <label>:27                                      ; preds = %23, %22
  %28 = load i8*, i8** %1, align 8
  ret i8* %28
}

; Function Attrs: nounwind uwtable
define internal %struct.list_node* @findPrevious(%struct.list* %listPtr, i8* %dataPtr) #8 {
  %1 = alloca %struct.list_node*, align 8
  %2 = alloca %struct.list*, align 8
  %3 = alloca i8*, align 8
  %prevPtr = alloca %struct.list_node*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %4 = load %struct.list*, %struct.list** %2, align 8
  %5 = getelementptr inbounds %struct.list, %struct.list* %4, i32 0, i32 0
  store %struct.list_node* %5, %struct.list_node** %prevPtr, align 8
  %6 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %7 = getelementptr inbounds %struct.list_node, %struct.list_node* %6, i32 0, i32 1
  %8 = load %struct.list_node*, %struct.list_node** %7, align 8
  store %struct.list_node* %8, %struct.list_node** %nodePtr, align 8
  br label %9

; <label>:9                                       ; preds = %26, %0
  %10 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %11 = icmp ne %struct.list_node* %10, null
  br i1 %11, label %12, label %30

; <label>:12                                      ; preds = %9
  %13 = load %struct.list*, %struct.list** %2, align 8
  %14 = getelementptr inbounds %struct.list, %struct.list* %13, i32 0, i32 1
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %14, align 8
  %16 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %17 = getelementptr inbounds %struct.list_node, %struct.list_node* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 %15(i8* %18, i8* %19)
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %24

; <label>:22                                      ; preds = %12
  %23 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  store %struct.list_node* %23, %struct.list_node** %1, align 8
  br label %32

; <label>:24                                      ; preds = %12
  %25 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  store %struct.list_node* %25, %struct.list_node** %prevPtr, align 8
  br label %26

; <label>:26                                      ; preds = %24
  %27 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %28 = getelementptr inbounds %struct.list_node, %struct.list_node* %27, i32 0, i32 1
  %29 = load %struct.list_node*, %struct.list_node** %28, align 8
  store %struct.list_node* %29, %struct.list_node** %nodePtr, align 8
  br label %9

; <label>:30                                      ; preds = %9
  %31 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  store %struct.list_node* %31, %struct.list_node** %1, align 8
  br label %32

; <label>:32                                      ; preds = %30, %22
  %33 = load %struct.list_node*, %struct.list_node** %1, align 8
  ret %struct.list_node* %33
}

; Function Attrs: nounwind uwtable
define i8* @TMlist_find(%struct.list* %listPtr, i8* %dataPtr) #8 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.list*, align 8
  %3 = alloca i8*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  %prevPtr = alloca %struct.list_node*, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %4 = load %struct.list*, %struct.list** %2, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.list_node* @TMfindPrevious(%struct.list* %4, i8* %5)
  store %struct.list_node* %6, %struct.list_node** %prevPtr, align 8
  %7 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %8 = getelementptr inbounds %struct.list_node, %struct.list_node* %7, i32 0, i32 1
  %9 = load %struct.list_node*, %struct.list_node** %8, align 8
  store %struct.list_node* %9, %struct.list_node** %nodePtr, align 8
  %10 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %11 = icmp eq %struct.list_node* %10, null
  br i1 %11, label %22, label %12

; <label>:12                                      ; preds = %0
  %13 = load %struct.list*, %struct.list** %2, align 8
  %14 = getelementptr inbounds %struct.list, %struct.list* %13, i32 0, i32 1
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %14, align 8
  %16 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %17 = getelementptr inbounds %struct.list_node, %struct.list_node* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 %15(i8* %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %12, %0
  store i8* null, i8** %1, align 8
  br label %27

; <label>:23                                      ; preds = %12
  %24 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %25 = getelementptr inbounds %struct.list_node, %struct.list_node* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %1, align 8
  br label %27

; <label>:27                                      ; preds = %23, %22
  %28 = load i8*, i8** %1, align 8
  ret i8* %28
}

; Function Attrs: nounwind uwtable
define internal %struct.list_node* @TMfindPrevious(%struct.list* %listPtr, i8* %dataPtr) #8 {
  %1 = alloca %struct.list_node*, align 8
  %2 = alloca %struct.list*, align 8
  %3 = alloca i8*, align 8
  %prevPtr = alloca %struct.list_node*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %4 = load %struct.list*, %struct.list** %2, align 8
  %5 = getelementptr inbounds %struct.list, %struct.list* %4, i32 0, i32 0
  store %struct.list_node* %5, %struct.list_node** %prevPtr, align 8
  %6 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %7 = getelementptr inbounds %struct.list_node, %struct.list_node* %6, i32 0, i32 1
  %8 = load %struct.list_node*, %struct.list_node** %7, align 8
  store %struct.list_node* %8, %struct.list_node** %nodePtr, align 8
  br label %9

; <label>:9                                       ; preds = %26, %0
  %10 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %11 = icmp ne %struct.list_node* %10, null
  br i1 %11, label %12, label %30

; <label>:12                                      ; preds = %9
  %13 = load %struct.list*, %struct.list** %2, align 8
  %14 = getelementptr inbounds %struct.list, %struct.list* %13, i32 0, i32 1
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %14, align 8
  %16 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %17 = getelementptr inbounds %struct.list_node, %struct.list_node* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 %15(i8* %18, i8* %19)
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %24

; <label>:22                                      ; preds = %12
  %23 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  store %struct.list_node* %23, %struct.list_node** %1, align 8
  br label %32

; <label>:24                                      ; preds = %12
  %25 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  store %struct.list_node* %25, %struct.list_node** %prevPtr, align 8
  br label %26

; <label>:26                                      ; preds = %24
  %27 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %28 = getelementptr inbounds %struct.list_node, %struct.list_node* %27, i32 0, i32 1
  %29 = load %struct.list_node*, %struct.list_node** %28, align 8
  store %struct.list_node* %29, %struct.list_node** %nodePtr, align 8
  br label %9

; <label>:30                                      ; preds = %9
  %31 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  store %struct.list_node* %31, %struct.list_node** %1, align 8
  br label %32

; <label>:32                                      ; preds = %30, %22
  %33 = load %struct.list_node*, %struct.list_node** %1, align 8
  ret %struct.list_node* %33
}

; Function Attrs: nounwind uwtable
define i64 @list_insert(%struct.list* %listPtr, i8* %dataPtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.list*, align 8
  %3 = alloca i8*, align 8
  %prevPtr = alloca %struct.list_node*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  %currPtr = alloca %struct.list_node*, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %4 = load %struct.list*, %struct.list** %2, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.list_node* @findPrevious(%struct.list* %4, i8* %5)
  store %struct.list_node* %6, %struct.list_node** %prevPtr, align 8
  %7 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %8 = getelementptr inbounds %struct.list_node, %struct.list_node* %7, i32 0, i32 1
  %9 = load %struct.list_node*, %struct.list_node** %8, align 8
  store %struct.list_node* %9, %struct.list_node** %currPtr, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.list_node* @allocNode(i8* %10)
  store %struct.list_node* %11, %struct.list_node** %nodePtr, align 8
  %12 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %13 = icmp eq %struct.list_node* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %26

; <label>:15                                      ; preds = %0
  %16 = load %struct.list_node*, %struct.list_node** %currPtr, align 8
  %17 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %18 = getelementptr inbounds %struct.list_node, %struct.list_node* %17, i32 0, i32 1
  store %struct.list_node* %16, %struct.list_node** %18, align 8
  %19 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %20 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %21 = getelementptr inbounds %struct.list_node, %struct.list_node* %20, i32 0, i32 1
  store %struct.list_node* %19, %struct.list_node** %21, align 8
  %22 = load %struct.list*, %struct.list** %2, align 8
  %23 = getelementptr inbounds %struct.list, %struct.list* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  store i64 1, i64* %1, align 8
  br label %26

; <label>:26                                      ; preds = %15, %14
  %27 = load i64, i64* %1, align 8
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define internal %struct.list_node* @allocNode(i8* %dataPtr) #8 {
  %1 = alloca %struct.list_node*, align 8
  %2 = alloca i8*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  store i8* %dataPtr, i8** %2, align 8
  %3 = call noalias i8* @malloc(i64 16) #7
  %4 = bitcast i8* %3 to %struct.list_node*
  store %struct.list_node* %4, %struct.list_node** %nodePtr, align 8
  %5 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %6 = icmp eq %struct.list_node* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store %struct.list_node* null, %struct.list_node** %1, align 8
  br label %15

; <label>:8                                       ; preds = %0
  %9 = load i8*, i8** %2, align 8
  %10 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %11 = getelementptr inbounds %struct.list_node, %struct.list_node* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %13 = getelementptr inbounds %struct.list_node, %struct.list_node* %12, i32 0, i32 1
  store %struct.list_node* null, %struct.list_node** %13, align 8
  %14 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  store %struct.list_node* %14, %struct.list_node** %1, align 8
  br label %15

; <label>:15                                      ; preds = %8, %7
  %16 = load %struct.list_node*, %struct.list_node** %1, align 8
  ret %struct.list_node* %16
}

; Function Attrs: nounwind uwtable
define i64 @Plist_insert(%struct.list* %listPtr, i8* %dataPtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.list*, align 8
  %3 = alloca i8*, align 8
  %prevPtr = alloca %struct.list_node*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  %currPtr = alloca %struct.list_node*, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %4 = load %struct.list*, %struct.list** %2, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.list_node* @findPrevious(%struct.list* %4, i8* %5)
  store %struct.list_node* %6, %struct.list_node** %prevPtr, align 8
  %7 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %8 = getelementptr inbounds %struct.list_node, %struct.list_node* %7, i32 0, i32 1
  %9 = load %struct.list_node*, %struct.list_node** %8, align 8
  store %struct.list_node* %9, %struct.list_node** %currPtr, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.list_node* @PallocNode(i8* %10)
  store %struct.list_node* %11, %struct.list_node** %nodePtr, align 8
  %12 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %13 = icmp eq %struct.list_node* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %26

; <label>:15                                      ; preds = %0
  %16 = load %struct.list_node*, %struct.list_node** %currPtr, align 8
  %17 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %18 = getelementptr inbounds %struct.list_node, %struct.list_node* %17, i32 0, i32 1
  store %struct.list_node* %16, %struct.list_node** %18, align 8
  %19 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %20 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %21 = getelementptr inbounds %struct.list_node, %struct.list_node* %20, i32 0, i32 1
  store %struct.list_node* %19, %struct.list_node** %21, align 8
  %22 = load %struct.list*, %struct.list** %2, align 8
  %23 = getelementptr inbounds %struct.list, %struct.list* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  store i64 1, i64* %1, align 8
  br label %26

; <label>:26                                      ; preds = %15, %14
  %27 = load i64, i64* %1, align 8
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define internal %struct.list_node* @PallocNode(i8* %dataPtr) #8 {
  %1 = alloca %struct.list_node*, align 8
  %2 = alloca i8*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  store i8* %dataPtr, i8** %2, align 8
  %3 = call noalias i8* @malloc(i64 16) #7
  %4 = bitcast i8* %3 to %struct.list_node*
  store %struct.list_node* %4, %struct.list_node** %nodePtr, align 8
  %5 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %6 = icmp eq %struct.list_node* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store %struct.list_node* null, %struct.list_node** %1, align 8
  br label %15

; <label>:8                                       ; preds = %0
  %9 = load i8*, i8** %2, align 8
  %10 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %11 = getelementptr inbounds %struct.list_node, %struct.list_node* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %13 = getelementptr inbounds %struct.list_node, %struct.list_node* %12, i32 0, i32 1
  store %struct.list_node* null, %struct.list_node** %13, align 8
  %14 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  store %struct.list_node* %14, %struct.list_node** %1, align 8
  br label %15

; <label>:15                                      ; preds = %8, %7
  %16 = load %struct.list_node*, %struct.list_node** %1, align 8
  ret %struct.list_node* %16
}

; Function Attrs: nounwind uwtable
define i64 @TMlist_insert(%struct.list* %listPtr, i8* %dataPtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.list*, align 8
  %3 = alloca i8*, align 8
  %prevPtr = alloca %struct.list_node*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  %currPtr = alloca %struct.list_node*, align 8
  %4 = alloca %struct.list_node*, align 8
  %5 = alloca i64, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %6 = load %struct.list*, %struct.list** %2, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.list_node* @TMfindPrevious(%struct.list* %6, i8* %7)
  store %struct.list_node* %8, %struct.list_node** %prevPtr, align 8
  %9 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %10 = getelementptr inbounds %struct.list_node, %struct.list_node* %9, i32 0, i32 1
  %11 = load %struct.list_node*, %struct.list_node** %10, align 8
  store %struct.list_node* %11, %struct.list_node** %currPtr, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct.list_node* @TMallocNode(i8* %12)
  store %struct.list_node* %13, %struct.list_node** %nodePtr, align 8
  %14 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %15 = icmp eq %struct.list_node* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %38

; <label>:17                                      ; preds = %0
  %18 = load %struct.list_node*, %struct.list_node** %currPtr, align 8
  %19 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %20 = getelementptr inbounds %struct.list_node, %struct.list_node* %19, i32 0, i32 1
  store %struct.list_node* %18, %struct.list_node** %20, align 8
  %21 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %22 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %23 = getelementptr inbounds %struct.list_node, %struct.list_node* %22, i32 0, i32 1
  store %struct.list_node* %21, %struct.list_node** %23, align 8
  %24 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %25 = getelementptr inbounds %struct.list_node, %struct.list_node* %24, i32 0, i32 1
  %26 = load %struct.list_node*, %struct.list_node** %25, align 8
  store %struct.list_node* %26, %struct.list_node** %4, align 8
  %27 = load %struct.list_node*, %struct.list_node** %4, align 8
  %28 = load %struct.list*, %struct.list** %2, align 8
  %29 = getelementptr inbounds %struct.list, %struct.list* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = load %struct.list*, %struct.list** %2, align 8
  %33 = getelementptr inbounds %struct.list, %struct.list* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.list*, %struct.list** %2, align 8
  %35 = getelementptr inbounds %struct.list, %struct.list* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  store i64 1, i64* %1, align 8
  br label %38

; <label>:38                                      ; preds = %17, %16
  %39 = load i64, i64* %1, align 8
  ret i64 %39
}

; Function Attrs: nounwind uwtable
define internal %struct.list_node* @TMallocNode(i8* %dataPtr) #8 {
  %1 = alloca %struct.list_node*, align 8
  %2 = alloca i8*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  store i8* %dataPtr, i8** %2, align 8
  %3 = call noalias i8* @malloc(i64 16) #7
  %4 = bitcast i8* %3 to %struct.list_node*
  store %struct.list_node* %4, %struct.list_node** %nodePtr, align 8
  %5 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %6 = icmp eq %struct.list_node* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store %struct.list_node* null, %struct.list_node** %1, align 8
  br label %15

; <label>:8                                       ; preds = %0
  %9 = load i8*, i8** %2, align 8
  %10 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %11 = getelementptr inbounds %struct.list_node, %struct.list_node* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %13 = getelementptr inbounds %struct.list_node, %struct.list_node* %12, i32 0, i32 1
  store %struct.list_node* null, %struct.list_node** %13, align 8
  %14 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  store %struct.list_node* %14, %struct.list_node** %1, align 8
  br label %15

; <label>:15                                      ; preds = %8, %7
  %16 = load %struct.list_node*, %struct.list_node** %1, align 8
  ret %struct.list_node* %16
}

; Function Attrs: nounwind uwtable
define i64 @list_remove(%struct.list* %listPtr, i8* %dataPtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.list*, align 8
  %3 = alloca i8*, align 8
  %prevPtr = alloca %struct.list_node*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %4 = load %struct.list*, %struct.list** %2, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.list_node* @findPrevious(%struct.list* %4, i8* %5)
  store %struct.list_node* %6, %struct.list_node** %prevPtr, align 8
  %7 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %8 = getelementptr inbounds %struct.list_node, %struct.list_node* %7, i32 0, i32 1
  %9 = load %struct.list_node*, %struct.list_node** %8, align 8
  store %struct.list_node* %9, %struct.list_node** %nodePtr, align 8
  %10 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %11 = icmp ne %struct.list_node* %10, null
  br i1 %11, label %12, label %43

; <label>:12                                      ; preds = %0
  %13 = load %struct.list*, %struct.list** %2, align 8
  %14 = getelementptr inbounds %struct.list, %struct.list* %13, i32 0, i32 1
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %14, align 8
  %16 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %17 = getelementptr inbounds %struct.list_node, %struct.list_node* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 %15(i8* %18, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %43

; <label>:22                                      ; preds = %12
  %23 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %24 = getelementptr inbounds %struct.list_node, %struct.list_node* %23, i32 0, i32 1
  %25 = load %struct.list_node*, %struct.list_node** %24, align 8
  %26 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %27 = getelementptr inbounds %struct.list_node, %struct.list_node* %26, i32 0, i32 1
  store %struct.list_node* %25, %struct.list_node** %27, align 8
  %28 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %29 = getelementptr inbounds %struct.list_node, %struct.list_node* %28, i32 0, i32 1
  store %struct.list_node* null, %struct.list_node** %29, align 8
  %30 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  call void @freeNode(%struct.list_node* %30)
  %31 = load %struct.list*, %struct.list** %2, align 8
  %32 = getelementptr inbounds %struct.list, %struct.list* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.list*, %struct.list** %2, align 8
  %36 = getelementptr inbounds %struct.list, %struct.list* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %22
  br label %42

; <label>:40                                      ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.133, i32 0, i32 0), i32 703, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.list_remove, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %42

; <label>:42                                      ; preds = %41, %39
  store i64 1, i64* %1, align 8
  br label %44

; <label>:43                                      ; preds = %12, %0
  store i64 0, i64* %1, align 8
  br label %44

; <label>:44                                      ; preds = %43, %42
  %45 = load i64, i64* %1, align 8
  ret i64 %45
}

; Function Attrs: nounwind uwtable
define i64 @Plist_remove(%struct.list* %listPtr, i8* %dataPtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.list*, align 8
  %3 = alloca i8*, align 8
  %prevPtr = alloca %struct.list_node*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %4 = load %struct.list*, %struct.list** %2, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.list_node* @findPrevious(%struct.list* %4, i8* %5)
  store %struct.list_node* %6, %struct.list_node** %prevPtr, align 8
  %7 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %8 = getelementptr inbounds %struct.list_node, %struct.list_node* %7, i32 0, i32 1
  %9 = load %struct.list_node*, %struct.list_node** %8, align 8
  store %struct.list_node* %9, %struct.list_node** %nodePtr, align 8
  %10 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %11 = icmp ne %struct.list_node* %10, null
  br i1 %11, label %12, label %43

; <label>:12                                      ; preds = %0
  %13 = load %struct.list*, %struct.list** %2, align 8
  %14 = getelementptr inbounds %struct.list, %struct.list* %13, i32 0, i32 1
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %14, align 8
  %16 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %17 = getelementptr inbounds %struct.list_node, %struct.list_node* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 %15(i8* %18, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %43

; <label>:22                                      ; preds = %12
  %23 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %24 = getelementptr inbounds %struct.list_node, %struct.list_node* %23, i32 0, i32 1
  %25 = load %struct.list_node*, %struct.list_node** %24, align 8
  %26 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %27 = getelementptr inbounds %struct.list_node, %struct.list_node* %26, i32 0, i32 1
  store %struct.list_node* %25, %struct.list_node** %27, align 8
  %28 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %29 = getelementptr inbounds %struct.list_node, %struct.list_node* %28, i32 0, i32 1
  store %struct.list_node* null, %struct.list_node** %29, align 8
  %30 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  call void @PfreeNode(%struct.list_node* %30)
  %31 = load %struct.list*, %struct.list** %2, align 8
  %32 = getelementptr inbounds %struct.list, %struct.list* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.list*, %struct.list** %2, align 8
  %36 = getelementptr inbounds %struct.list, %struct.list* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %22
  br label %42

; <label>:40                                      ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.133, i32 0, i32 0), i32 732, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Plist_remove, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %42

; <label>:42                                      ; preds = %41, %39
  store i64 1, i64* %1, align 8
  br label %44

; <label>:43                                      ; preds = %12, %0
  store i64 0, i64* %1, align 8
  br label %44

; <label>:44                                      ; preds = %43, %42
  %45 = load i64, i64* %1, align 8
  ret i64 %45
}

; Function Attrs: nounwind uwtable
define i64 @TMlist_remove(%struct.list* %listPtr, i8* %dataPtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.list*, align 8
  %3 = alloca i8*, align 8
  %prevPtr = alloca %struct.list_node*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  %4 = alloca %struct.list_node*, align 8
  %5 = alloca %struct.list_node*, align 8
  %6 = alloca i64, align 8
  store %struct.list* %listPtr, %struct.list** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %7 = load %struct.list*, %struct.list** %2, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.list_node* @TMfindPrevious(%struct.list* %7, i8* %8)
  store %struct.list_node* %9, %struct.list_node** %prevPtr, align 8
  %10 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %11 = getelementptr inbounds %struct.list_node, %struct.list_node* %10, i32 0, i32 1
  %12 = load %struct.list_node*, %struct.list_node** %11, align 8
  store %struct.list_node* %12, %struct.list_node** %nodePtr, align 8
  %13 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %14 = icmp ne %struct.list_node* %13, null
  br i1 %14, label %15, label %60

; <label>:15                                      ; preds = %0
  %16 = load %struct.list*, %struct.list** %2, align 8
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i32 0, i32 1
  %18 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %17, align 8
  %19 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %20 = getelementptr inbounds %struct.list_node, %struct.list_node* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 %18(i8* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %60

; <label>:25                                      ; preds = %15
  %26 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %27 = getelementptr inbounds %struct.list_node, %struct.list_node* %26, i32 0, i32 1
  %28 = load %struct.list_node*, %struct.list_node** %27, align 8
  %29 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %30 = getelementptr inbounds %struct.list_node, %struct.list_node* %29, i32 0, i32 1
  store %struct.list_node* %28, %struct.list_node** %30, align 8
  %31 = load %struct.list_node*, %struct.list_node** %prevPtr, align 8
  %32 = getelementptr inbounds %struct.list_node, %struct.list_node* %31, i32 0, i32 1
  %33 = load %struct.list_node*, %struct.list_node** %32, align 8
  store %struct.list_node* %33, %struct.list_node** %4, align 8
  %34 = load %struct.list_node*, %struct.list_node** %4, align 8
  %35 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %36 = getelementptr inbounds %struct.list_node, %struct.list_node* %35, i32 0, i32 1
  store %struct.list_node* null, %struct.list_node** %36, align 8
  %37 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  %38 = getelementptr inbounds %struct.list_node, %struct.list_node* %37, i32 0, i32 1
  %39 = load %struct.list_node*, %struct.list_node** %38, align 8
  store %struct.list_node* %39, %struct.list_node** %5, align 8
  %40 = load %struct.list_node*, %struct.list_node** %5, align 8
  %41 = load %struct.list_node*, %struct.list_node** %nodePtr, align 8
  call void @TMfreeNode(%struct.list_node* %41)
  %42 = load %struct.list*, %struct.list** %2, align 8
  %43 = getelementptr inbounds %struct.list, %struct.list* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, 1
  %46 = load %struct.list*, %struct.list** %2, align 8
  %47 = getelementptr inbounds %struct.list, %struct.list* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.list*, %struct.list** %2, align 8
  %49 = getelementptr inbounds %struct.list, %struct.list* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.list*, %struct.list** %2, align 8
  %53 = getelementptr inbounds %struct.list, %struct.list* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %54, 0
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %25
  br label %59

; <label>:57                                      ; preds = %25
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.133, i32 0, i32 0), i32 761, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMlist_remove, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  store i64 1, i64* %1, align 8
  br label %61

; <label>:60                                      ; preds = %15, %0
  store i64 0, i64* %1, align 8
  br label %61

; <label>:61                                      ; preds = %60, %59
  %62 = load i64, i64* %1, align 8
  ret i64 %62
}

; Function Attrs: nounwind uwtable
define void @list_clear(%struct.list* %listPtr) #8 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.list_node, %struct.list_node* %3, i32 0, i32 1
  %5 = load %struct.list_node*, %struct.list_node** %4, align 8
  call void @freeList(%struct.list_node* %5)
  %6 = load %struct.list*, %struct.list** %1, align 8
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.list_node, %struct.list_node* %7, i32 0, i32 1
  store %struct.list_node* null, %struct.list_node** %8, align 8
  %9 = load %struct.list*, %struct.list** %1, align 8
  %10 = getelementptr inbounds %struct.list, %struct.list* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plist_clear(%struct.list* %listPtr) #8 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.list_node, %struct.list_node* %3, i32 0, i32 1
  %5 = load %struct.list_node*, %struct.list_node** %4, align 8
  call void @PfreeList(%struct.list_node* %5)
  %6 = load %struct.list*, %struct.list** %1, align 8
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.list_node, %struct.list_node* %7, i32 0, i32 1
  store %struct.list_node* null, %struct.list_node** %8, align 8
  %9 = load %struct.list*, %struct.list** %1, align 8
  %10 = getelementptr inbounds %struct.list, %struct.list* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_genrand(i64* %mt, i64* %mtiPtr, i64 %s) #8 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %mti = alloca i64, align 8
  store i64* %mt, i64** %1, align 8
  store i64* %mtiPtr, i64** %2, align 8
  store i64 %s, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 4294967295
  %6 = load i64*, i64** %1, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  store i64 %5, i64* %7, align 8
  store i64 1, i64* %mti, align 8
  br label %8

; <label>:8                                       ; preds = %35, %0
  %9 = load i64, i64* %mti, align 8
  %10 = icmp ult i64 %9, 624
  br i1 %10, label %11, label %38

; <label>:11                                      ; preds = %8
  %12 = load i64, i64* %mti, align 8
  %13 = sub i64 %12, 1
  %14 = load i64*, i64** %1, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 %13
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %mti, align 8
  %18 = sub i64 %17, 1
  %19 = load i64*, i64** %1, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 %18
  %21 = load i64, i64* %20, align 8
  %22 = lshr i64 %21, 30
  %23 = xor i64 %16, %22
  %24 = mul i64 1812433253, %23
  %25 = load i64, i64* %mti, align 8
  %26 = add i64 %24, %25
  %27 = load i64, i64* %mti, align 8
  %28 = load i64*, i64** %1, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 %27
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* %mti, align 8
  %31 = load i64*, i64** %1, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 %30
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %33, 4294967295
  store i64 %34, i64* %32, align 8
  br label %35

; <label>:35                                      ; preds = %11
  %36 = load i64, i64* %mti, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %mti, align 8
  br label %8

; <label>:38                                      ; preds = %8
  %39 = load i64, i64* %mti, align 8
  %40 = load i64*, i64** %2, align 8
  store i64 %39, i64* %40, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_by_array(i64* %mt, i64* %mtiPtr, i64* %init_key, i64 %key_length) #8 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  store i64* %mt, i64** %1, align 8
  store i64* %mtiPtr, i64** %2, align 8
  store i64* %init_key, i64** %3, align 8
  store i64 %key_length, i64* %4, align 8
  %5 = load i64*, i64** %1, align 8
  %6 = load i64*, i64** %2, align 8
  call void @init_genrand(i64* %5, i64* %6, i64 19650218)
  store i64 1, i64* %i, align 8
  store i64 0, i64* %j, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp sgt i64 624, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %12

; <label>:10                                      ; preds = %0
  %11 = load i64, i64* %4, align 8
  br label %12

; <label>:12                                      ; preds = %10, %9
  %13 = phi i64 [ 624, %9 ], [ %11, %10 ]
  store i64 %13, i64* %k, align 8
  br label %14

; <label>:14                                      ; preds = %69, %12
  %15 = load i64, i64* %k, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %72

; <label>:17                                      ; preds = %14
  %18 = load i64, i64* %i, align 8
  %19 = load i64*, i64** %1, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 %18
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %i, align 8
  %23 = sub nsw i64 %22, 1
  %24 = load i64*, i64** %1, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 %23
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %i, align 8
  %28 = sub nsw i64 %27, 1
  %29 = load i64*, i64** %1, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 %28
  %31 = load i64, i64* %30, align 8
  %32 = lshr i64 %31, 30
  %33 = xor i64 %26, %32
  %34 = mul i64 %33, 1664525
  %35 = xor i64 %21, %34
  %36 = load i64, i64* %j, align 8
  %37 = load i64*, i64** %3, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 %36
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %35, %39
  %41 = load i64, i64* %j, align 8
  %42 = add i64 %40, %41
  %43 = load i64, i64* %i, align 8
  %44 = load i64*, i64** %1, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 %43
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* %i, align 8
  %47 = load i64*, i64** %1, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 %46
  %49 = load i64, i64* %48, align 8
  %50 = and i64 %49, 4294967295
  store i64 %50, i64* %48, align 8
  %51 = load i64, i64* %i, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %i, align 8
  %53 = load i64, i64* %j, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %j, align 8
  %55 = load i64, i64* %i, align 8
  %56 = icmp sge i64 %55, 624
  br i1 %56, label %57, label %63

; <label>:57                                      ; preds = %17
  %58 = load i64*, i64** %1, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 623
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %1, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  store i64 %60, i64* %62, align 8
  store i64 1, i64* %i, align 8
  br label %63

; <label>:63                                      ; preds = %57, %17
  %64 = load i64, i64* %j, align 8
  %65 = load i64, i64* %4, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %63
  store i64 0, i64* %j, align 8
  br label %68

; <label>:68                                      ; preds = %67, %63
  br label %69

; <label>:69                                      ; preds = %68
  %70 = load i64, i64* %k, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* %k, align 8
  br label %14

; <label>:72                                      ; preds = %14
  store i64 623, i64* %k, align 8
  br label %73

; <label>:73                                      ; preds = %116, %72
  %74 = load i64, i64* %k, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %119

; <label>:76                                      ; preds = %73
  %77 = load i64, i64* %i, align 8
  %78 = load i64*, i64** %1, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 %77
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %i, align 8
  %82 = sub nsw i64 %81, 1
  %83 = load i64*, i64** %1, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 %82
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %i, align 8
  %87 = sub nsw i64 %86, 1
  %88 = load i64*, i64** %1, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 %87
  %90 = load i64, i64* %89, align 8
  %91 = lshr i64 %90, 30
  %92 = xor i64 %85, %91
  %93 = mul i64 %92, 1566083941
  %94 = xor i64 %80, %93
  %95 = load i64, i64* %i, align 8
  %96 = sub i64 %94, %95
  %97 = load i64, i64* %i, align 8
  %98 = load i64*, i64** %1, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 %97
  store i64 %96, i64* %99, align 8
  %100 = load i64, i64* %i, align 8
  %101 = load i64*, i64** %1, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 %100
  %103 = load i64, i64* %102, align 8
  %104 = and i64 %103, 4294967295
  store i64 %104, i64* %102, align 8
  %105 = load i64, i64* %i, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %i, align 8
  %107 = load i64, i64* %i, align 8
  %108 = icmp sge i64 %107, 624
  br i1 %108, label %109, label %115

; <label>:109                                     ; preds = %76
  %110 = load i64*, i64** %1, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 623
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %1, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  store i64 %112, i64* %114, align 8
  store i64 1, i64* %i, align 8
  br label %115

; <label>:115                                     ; preds = %109, %76
  br label %116

; <label>:116                                     ; preds = %115
  %117 = load i64, i64* %k, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %k, align 8
  br label %73

; <label>:119                                     ; preds = %73
  %120 = load i64*, i64** %1, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  store i64 2147483648, i64* %121, align 8
  %122 = load i64*, i64** %2, align 8
  store i64 625, i64* %122, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @genrand_int32(i64* %mt, i64* %mtiPtr) #8 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %y = alloca i64, align 8
  %mti = alloca i64, align 8
  %kk = alloca i64, align 8
  store i64* %mt, i64** %1, align 8
  store i64* %mtiPtr, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %mti, align 8
  %5 = load i64, i64* %mti, align 8
  %6 = icmp uge i64 %5, 624
  br i1 %6, label %7, label %108

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %mti, align 8
  %9 = icmp eq i64 %8, 625
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %7
  %11 = load i64*, i64** %1, align 8
  %12 = load i64*, i64** %2, align 8
  call void @init_genrand(i64* %11, i64* %12, i64 5489)
  br label %13

; <label>:13                                      ; preds = %10, %7
  store i64 0, i64* %kk, align 8
  br label %14

; <label>:14                                      ; preds = %46, %13
  %15 = load i64, i64* %kk, align 8
  %16 = icmp slt i64 %15, 227
  br i1 %16, label %17, label %49

; <label>:17                                      ; preds = %14
  %18 = load i64, i64* %kk, align 8
  %19 = load i64*, i64** %1, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 %18
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %21, 2147483648
  %23 = load i64, i64* %kk, align 8
  %24 = add nsw i64 %23, 1
  %25 = load i64*, i64** %1, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 %24
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %27, 2147483647
  %29 = or i64 %22, %28
  store i64 %29, i64* %y, align 8
  %30 = load i64, i64* %kk, align 8
  %31 = add nsw i64 %30, 397
  %32 = load i64*, i64** %1, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 %31
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %y, align 8
  %36 = lshr i64 %35, 1
  %37 = xor i64 %34, %36
  %38 = load i64, i64* %y, align 8
  %39 = and i64 %38, 1
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* @genrand_int32.mag01, i64 0, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = xor i64 %37, %41
  %43 = load i64, i64* %kk, align 8
  %44 = load i64*, i64** %1, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 %43
  store i64 %42, i64* %45, align 8
  br label %46

; <label>:46                                      ; preds = %17
  %47 = load i64, i64* %kk, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %kk, align 8
  br label %14

; <label>:49                                      ; preds = %14
  br label %50

; <label>:50                                      ; preds = %82, %49
  %51 = load i64, i64* %kk, align 8
  %52 = icmp slt i64 %51, 623
  br i1 %52, label %53, label %85

; <label>:53                                      ; preds = %50
  %54 = load i64, i64* %kk, align 8
  %55 = load i64*, i64** %1, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 %54
  %57 = load i64, i64* %56, align 8
  %58 = and i64 %57, 2147483648
  %59 = load i64, i64* %kk, align 8
  %60 = add nsw i64 %59, 1
  %61 = load i64*, i64** %1, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 %60
  %63 = load i64, i64* %62, align 8
  %64 = and i64 %63, 2147483647
  %65 = or i64 %58, %64
  store i64 %65, i64* %y, align 8
  %66 = load i64, i64* %kk, align 8
  %67 = add nsw i64 %66, -227
  %68 = load i64*, i64** %1, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 %67
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %y, align 8
  %72 = lshr i64 %71, 1
  %73 = xor i64 %70, %72
  %74 = load i64, i64* %y, align 8
  %75 = and i64 %74, 1
  %76 = getelementptr inbounds [2 x i64], [2 x i64]* @genrand_int32.mag01, i64 0, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = xor i64 %73, %77
  %79 = load i64, i64* %kk, align 8
  %80 = load i64*, i64** %1, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 %79
  store i64 %78, i64* %81, align 8
  br label %82

; <label>:82                                      ; preds = %53
  %83 = load i64, i64* %kk, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %kk, align 8
  br label %50

; <label>:85                                      ; preds = %50
  %86 = load i64*, i64** %1, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 623
  %88 = load i64, i64* %87, align 8
  %89 = and i64 %88, 2147483648
  %90 = load i64*, i64** %1, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = and i64 %92, 2147483647
  %94 = or i64 %89, %93
  store i64 %94, i64* %y, align 8
  %95 = load i64*, i64** %1, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 396
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %y, align 8
  %99 = lshr i64 %98, 1
  %100 = xor i64 %97, %99
  %101 = load i64, i64* %y, align 8
  %102 = and i64 %101, 1
  %103 = getelementptr inbounds [2 x i64], [2 x i64]* @genrand_int32.mag01, i64 0, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = xor i64 %100, %104
  %106 = load i64*, i64** %1, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 623
  store i64 %105, i64* %107, align 8
  store i64 0, i64* %mti, align 8
  br label %108

; <label>:108                                     ; preds = %85, %0
  %109 = load i64, i64* %mti, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %mti, align 8
  %111 = load i64*, i64** %1, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 %109
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %y, align 8
  %114 = load i64, i64* %y, align 8
  %115 = lshr i64 %114, 11
  %116 = load i64, i64* %y, align 8
  %117 = xor i64 %116, %115
  store i64 %117, i64* %y, align 8
  %118 = load i64, i64* %y, align 8
  %119 = shl i64 %118, 7
  %120 = and i64 %119, 2636928640
  %121 = load i64, i64* %y, align 8
  %122 = xor i64 %121, %120
  store i64 %122, i64* %y, align 8
  %123 = load i64, i64* %y, align 8
  %124 = shl i64 %123, 15
  %125 = and i64 %124, 4022730752
  %126 = load i64, i64* %y, align 8
  %127 = xor i64 %126, %125
  store i64 %127, i64* %y, align 8
  %128 = load i64, i64* %y, align 8
  %129 = lshr i64 %128, 18
  %130 = load i64, i64* %y, align 8
  %131 = xor i64 %130, %129
  store i64 %131, i64* %y, align 8
  %132 = load i64, i64* %mti, align 8
  %133 = load i64*, i64** %2, align 8
  store i64 %132, i64* %133, align 8
  %134 = load i64, i64* %y, align 8
  ret i64 %134
}

; Function Attrs: nounwind uwtable
define i64 @genrand_int31(i64* %mt, i64* %mtiPtr) #8 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  store i64* %mt, i64** %1, align 8
  store i64* %mtiPtr, i64** %2, align 8
  %3 = load i64*, i64** %1, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = call i64 @genrand_int32(i64* %3, i64* %4)
  %6 = lshr i64 %5, 1
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define double @genrand_real1(i64* %mt, i64* %mtiPtr) #8 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  store i64* %mt, i64** %1, align 8
  store i64* %mtiPtr, i64** %2, align 8
  %3 = load i64*, i64** %1, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = call i64 @genrand_int32(i64* %3, i64* %4)
  %6 = uitofp i64 %5 to double
  %7 = fmul double %6, 0x3DF0000000100000
  ret double %7
}

; Function Attrs: nounwind uwtable
define double @genrand_real2(i64* %mt, i64* %mtiPtr) #8 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  store i64* %mt, i64** %1, align 8
  store i64* %mtiPtr, i64** %2, align 8
  %3 = load i64*, i64** %1, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = call i64 @genrand_int32(i64* %3, i64* %4)
  %6 = uitofp i64 %5 to double
  %7 = fmul double %6, 0x3DF0000000000000
  ret double %7
}

; Function Attrs: nounwind uwtable
define double @genrand_real3(i64* %mt, i64* %mtiPtr) #8 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  store i64* %mt, i64** %1, align 8
  store i64* %mtiPtr, i64** %2, align 8
  %3 = load i64*, i64** %1, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = call i64 @genrand_int32(i64* %3, i64* %4)
  %6 = uitofp i64 %5 to double
  %7 = fadd double %6, 5.000000e-01
  %8 = fmul double %7, 0x3DF0000000000000
  ret double %8
}

; Function Attrs: nounwind uwtable
define double @genrand_res53(i64* %mt, i64* %mtiPtr) #8 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  store i64* %mt, i64** %1, align 8
  store i64* %mtiPtr, i64** %2, align 8
  %3 = load i64*, i64** %1, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = call i64 @genrand_int32(i64* %3, i64* %4)
  %6 = lshr i64 %5, 5
  store i64 %6, i64* %a, align 8
  %7 = load i64*, i64** %1, align 8
  %8 = load i64*, i64** %2, align 8
  %9 = call i64 @genrand_int32(i64* %7, i64* %8)
  %10 = lshr i64 %9, 6
  store i64 %10, i64* %b, align 8
  %11 = load i64, i64* %a, align 8
  %12 = uitofp i64 %11 to double
  %13 = fmul double %12, 0x4190000000000000
  %14 = load i64, i64* %b, align 8
  %15 = uitofp i64 %14 to double
  %16 = fadd double %13, %15
  %17 = fmul double %16, 0x3CA0000000000000
  ret double %17
}

; Function Attrs: nounwind uwtable
define void @RTM_output_stats() #8 {
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @init_one_perfcounter(i32 %number, i64 %whatToMeasure) #10 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %ret = alloca i32, align 4
  %offset = alloca i64, align 8
  %zeros = alloca i8*, align 8
  store i32 %number, i32* %1, align 4
  store i64 %whatToMeasure, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 8) #7
  store i8* %3, i8** %zeros, align 8
  %4 = load i8*, i8** %zeros, align 8
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 8, i32 1, i1 false)
  %5 = load i32, i32* %1, align 4
  %6 = icmp sge i32 %5, 8
  br i1 %6, label %10, label %7

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7, %0
  br label %49

; <label>:11                                      ; preds = %7
  %12 = load i32, i32* @FD, align 4
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 390, %13
  %15 = sext i32 %14 to i64
  %16 = call i64 @lseek(i32 %12, i64 %15, i32 0) #7
  store i64 %16, i64* %offset, align 8
  %17 = load i64, i64* %offset, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %11
  br label %22

; <label>:20                                      ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = load i32, i32* @FD, align 4
  %24 = bitcast i64* %2 to i8*
  %25 = call i64 @write(i32 %23, i8* %24, i64 8)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %ret, align 4
  %27 = load i32, i32* %ret, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %22
  br label %32

; <label>:30                                      ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.146, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %32

; <label>:32                                      ; preds = %31, %29
  %33 = load i32, i32* @FD, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 193, %34
  %36 = sext i32 %35 to i64
  %37 = call i64 @lseek(i32 %33, i64 %36, i32 0) #7
  store i64 %37, i64* %offset, align 8
  %38 = load i32, i32* @FD, align 4
  %39 = load i8*, i8** %zeros, align 8
  %40 = call i64 @write(i32 %38, i8* %39, i64 8)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %ret, align 4
  %42 = load i32, i32* %ret, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %32
  br label %47

; <label>:45                                      ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.146, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %47

; <label>:47                                      ; preds = %46, %44
  %48 = load i8*, i8** %zeros, align 8
  call void @free(i8* %48) #7
  br label %49

; <label>:49                                      ; preds = %47, %10
  ret void
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #11

declare i64 @write(i32, i8*, i64) #12

; Function Attrs: inlinehint nounwind uwtable
define void @read_one_perfcounter(i32 %number, i32* %whereToPut) #10 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %ret = alloca i32, align 4
  %offset = alloca i64, align 8
  %stats = alloca i64, align 8
  store i32 %number, i32* %1, align 4
  store i32* %whereToPut, i32** %2, align 8
  %3 = load i32, i32* %1, align 4
  %4 = icmp sge i32 %3, 8
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %5, %0
  br label %35

; <label>:9                                       ; preds = %5
  %10 = load i32, i32* @FD, align 4
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 193, %11
  %13 = sext i32 %12 to i64
  %14 = call i64 @lseek(i32 %10, i64 %13, i32 0) #7
  store i64 %14, i64* %offset, align 8
  %15 = load i64, i64* %offset, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %9
  br label %20

; <label>:18                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.147, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 189, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load i32, i32* @FD, align 4
  %22 = bitcast i64* %stats to i8*
  %23 = call i64 @read(i32 %21, i8* %22, i64 8)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %ret, align 4
  %25 = load i32, i32* %ret, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %20
  br label %30

; <label>:28                                      ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.146, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load i32*, i32** %2, align 8
  %32 = load i64, i64* %stats, align 8
  %33 = trunc i64 %32 to i32
  %34 = atomicrmw add i32* %31, i32 %33 seq_cst
  br label %35

; <label>:35                                      ; preds = %30, %8
  ret void
}

declare i64 @read(i32, i8*, i64) #12

; Function Attrs: nounwind uwtable
define void @RTM_init_perfcounters() #8 {
  %1 = load i32, i32* @M5_inSimulator, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  call void @init_one_perfcounter(i32 2, i64 4262089)
  br label %5

; <label>:4                                       ; preds = %0
  call void @init_one_perfcounter(i32 3, i64 4264137)
  call void @init_one_perfcounter(i32 4, i64 4268233)
  call void @init_one_perfcounter(i32 5, i64 4276425)
  call void @init_one_perfcounter(i32 6, i64 4292809)
  call void @init_one_perfcounter(i32 0, i64 4325156)
  call void @init_one_perfcounter(i32 1, i64 4276004)
  br label %5

; <label>:5                                       ; preds = %4, %3
  ret void
}

; Function Attrs: nounwind uwtable
define void @RTM_update_perfcounters(i32 %i) #8 {
  %1 = alloca i32, align 4
  store i32 %i, i32* %1, align 4
  %2 = load i32, i32* @M5_inSimulator, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %32

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [15 x i32], [15 x i32]* @g_misses, i64 0, i64 %7
  call void @read_one_perfcounter(i32 1, i32* %8)
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [15 x i32], [15 x i32]* @g_accesses, i64 0, i64 %10
  call void @read_one_perfcounter(i32 0, i32* %11)
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [15 x [6 x i32]], [15 x [6 x i32]]* @abort_reasons, i64 0, i64 %13
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 1
  call void @read_one_perfcounter(i32 2, i32* %15)
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [15 x [6 x i32]], [15 x [6 x i32]]* @abort_reasons, i64 0, i64 %17
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 0, i64 2
  call void @read_one_perfcounter(i32 3, i32* %19)
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [15 x [6 x i32]], [15 x [6 x i32]]* @abort_reasons, i64 0, i64 %21
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %22, i64 0, i64 3
  call void @read_one_perfcounter(i32 4, i32* %23)
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [15 x [6 x i32]], [15 x [6 x i32]]* @abort_reasons, i64 0, i64 %25
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 4
  call void @read_one_perfcounter(i32 5, i32* %27)
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [15 x [6 x i32]], [15 x [6 x i32]]* @abort_reasons, i64 0, i64 %29
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %30, i64 0, i64 5
  call void @read_one_perfcounter(i32 6, i32* %31)
  br label %32

; <label>:32                                      ; preds = %5, %4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @RTM_spinlock_init() #10 {
  store i64* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @RTM_lock_array, i64 0, i64 64) to i64*), i64** @RTM_fallBackLock, align 8
  %1 = load i64*, i64** @RTM_fallBackLock, align 8
  store volatile i64 0, i64* %1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @RTM_fallback_isLocked() #10 {
  %1 = load i64*, i64** @RTM_fallBackLock, align 8
  %2 = load volatile i64, i64* %1, align 8
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = sext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: inlinehint nounwind uwtable
define void @RTM_fallback_whileIsLocked() #10 {
  br label %1

; <label>:1                                       ; preds = %4, %0
  %2 = call i64 @RTM_fallback_isLocked()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %1
  call void @llvm.x86.sse2.pause() #7
  br label %1

; <label>:5                                       ; preds = %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @RTM_fallback_lock() #10 {
  br label %1

; <label>:1                                       ; preds = %6, %0
  %2 = load i64*, i64** @RTM_fallBackLock, align 8
  %3 = cmpxchg i64* %2, i64 0, i64 1 seq_cst seq_cst
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = xor i1 %4, true
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %1
  call void @RTM_fallback_whileIsLocked()
  br label %1

; <label>:7                                       ; preds = %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @RTM_fallback_unlock() #10 {
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !12
  %1 = load i64*, i64** @RTM_fallBackLock, align 8
  store volatile i64 0, i64* %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @update_reasons(i32 %status, i32 %i) #8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %status, i32* %2, align 4
  store i32 %i, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i32 0, i32* %1, align 4
  br label %19

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [15 x i32], [15 x i32]* @g_aborts, i64 0, i64 %9
  %11 = atomicrmw add i32* %10, i32 1 seq_cst
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [15 x [6 x i32]], [15 x [6 x i32]]* @abort_reasons, i64 0, i64 %13
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, 1
  %18 = atomicrmw add i32* %15, i32 %17 seq_cst
  store i32 1, i32* %1, align 4
  br label %19

; <label>:19                                      ; preds = %7, %6
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i64 @determineNumProcs() #8 {
  %bitmask = alloca i64, align 8
  %num_procs = alloca i32, align 4
  %err = alloca i32, align 4
  %available_procs = alloca %struct.cpu_set_t, align 8
  %1 = call i64 @pthread_self() #17
  %2 = call i32 @pthread_getaffinity_np(i64 %1, i64 128, %struct.cpu_set_t* %available_procs) #7
  store i32 %2, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.156, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.determineNumProcs, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %8

; <label>:8                                       ; preds = %7, %5
  %9 = getelementptr inbounds %struct.cpu_set_t, %struct.cpu_set_t* %available_procs, i32 0, i32 0
  %10 = getelementptr inbounds [16 x i64], [16 x i64]* %9, i64 0, i64 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %bitmask, align 8
  store i32 0, i32* %num_procs, align 4
  br label %12

; <label>:12                                      ; preds = %15, %8
  %13 = load i64, i64* %bitmask, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %20

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %num_procs, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %num_procs, align 4
  %18 = load i64, i64* %bitmask, align 8
  %19 = lshr i64 %18, 1
  store i64 %19, i64* %bitmask, align 8
  br label %12

; <label>:20                                      ; preds = %12
  %21 = load i32, i32* %num_procs, align 4
  %22 = sext i32 %21 to i64
  ret i64 %22
}

; Function Attrs: nounwind readnone
declare i64 @pthread_self() #13

; Function Attrs: nounwind
declare i32 @pthread_getaffinity_np(i64, i64, %struct.cpu_set_t*) #11

; Function Attrs: nounwind uwtable
define void @thread_startup(i64 %numThread) #8 {
  %1 = alloca i64, align 8
  %i = alloca i64, align 8
  %bitmask = alloca i64, align 8
  %num_procs = alloca i32, align 4
  %err = alloca i32, align 4
  %available_procs = alloca %struct.cpu_set_t, align 8
  %mask = alloca %struct.cpu_set_t, align 8
  %check_mask = alloca %struct.cpu_set_t, align 8
  store i64 %numThread, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  store i64 %2, i64* @global_numThread, align 8
  store volatile i64 0, i64* @global_doShutdown, align 8
  %3 = call i64 @pthread_self() #17
  %4 = call i32 @pthread_getaffinity_np(i64 %3, i64 128, %struct.cpu_set_t* %available_procs) #7
  store i32 %4, i32* %err, align 4
  %5 = load i32, i32* %err, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.156, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = getelementptr inbounds %struct.cpu_set_t, %struct.cpu_set_t* %available_procs, i32 0, i32 0
  %12 = getelementptr inbounds [16 x i64], [16 x i64]* %11, i64 0, i64 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %bitmask, align 8
  store i32 0, i32* %num_procs, align 4
  br label %14

; <label>:14                                      ; preds = %17, %10
  %15 = load i64, i64* %bitmask, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %22

; <label>:17                                      ; preds = %14
  %18 = load i32, i32* %num_procs, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %num_procs, align 4
  %20 = load i64, i64* %bitmask, align 8
  %21 = lshr i64 %20, 1
  store i64 %21, i64* %bitmask, align 8
  br label %14

; <label>:22                                      ; preds = %14
  %23 = bitcast %struct.cpu_set_t* %mask to i8*
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 128, i32 8, i1 false)
  %24 = bitcast %struct.cpu_set_t* %check_mask to i8*
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 128, i32 8, i1 false)
  %25 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  %26 = icmp eq %struct.thread_barrier* %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %22
  br label %30

; <label>:28                                      ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.159, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 463, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load i64, i64* %1, align 8
  %32 = call %struct.thread_barrier* @thread_barrier_alloc(i64 %31)
  store %struct.thread_barrier* %32, %struct.thread_barrier** @global_barrierPtr, align 8
  %33 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  %34 = icmp ne %struct.thread_barrier* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %30
  br label %38

; <label>:36                                      ; preds = %30
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.162, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 465, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  call void @thread_barrier_init(%struct.thread_barrier* %39)
  %40 = load i64, i64* %1, align 8
  %41 = mul i64 %40, 72
  %42 = call noalias i8* @malloc(i64 %41) #7
  %43 = bitcast i8* %42 to %struct._tm_thread_context_t*
  store %struct._tm_thread_context_t* %43, %struct._tm_thread_context_t** @thread_contexts, align 8
  store i64 0, i64* %i, align 8
  br label %44

; <label>:44                                      ; preds = %74, %38
  %45 = load i64, i64* %i, align 8
  %46 = load i64, i64* %1, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %77

; <label>:48                                      ; preds = %44
  %49 = load i64, i64* %i, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64, i64* %i, align 8
  %52 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %53 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %52, i64 %51
  %54 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 8
  %55 = load i64, i64* %i, align 8
  %56 = load i32, i32* %num_procs, align 4
  %57 = sext i32 %56 to i64
  %58 = srem i64 %55, %57
  %59 = trunc i64 %58 to i32
  %60 = load i64, i64* %i, align 8
  %61 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %62 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %61, i64 %60
  %63 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %62, i32 0, i32 3
  store i32 %59, i32* %63, align 8
  %64 = load i64, i64* %1, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* %i, align 8
  %67 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %68 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %67, i64 %66
  %69 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 4
  %70 = load i64, i64* %i, align 8
  %71 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %72 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %71, i64 %70
  %73 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %72, i32 0, i32 4
  store i32 1, i32* %73, align 4
  br label %74

; <label>:74                                      ; preds = %48
  %75 = load i64, i64* %i, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %i, align 8
  br label %44

; <label>:77                                      ; preds = %44
  %78 = call i32 @pthread_key_create(i32* @global_threadId, void (i8*)* null) #7
  %79 = load i64*, i64** @global_threadIds, align 8
  %80 = icmp eq i64* %79, null
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %77
  br label %84

; <label>:82                                      ; preds = %77
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7.163, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %84

; <label>:84                                      ; preds = %83, %81
  %85 = load i64, i64* %1, align 8
  %86 = mul i64 %85, 8
  %87 = call noalias i8* @malloc(i64 %86) #7
  %88 = bitcast i8* %87 to i64*
  store i64* %88, i64** @global_threadIds, align 8
  %89 = load i64*, i64** @global_threadIds, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %84
  br label %94

; <label>:92                                      ; preds = %84
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8.164, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 486, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %94

; <label>:94                                      ; preds = %93, %91
  store i64 0, i64* %i, align 8
  br label %95

; <label>:95                                      ; preds = %104, %94
  %96 = load i64, i64* %i, align 8
  %97 = load i64, i64* %1, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %107

; <label>:99                                      ; preds = %95
  %100 = load i64, i64* %i, align 8
  %101 = load i64, i64* %i, align 8
  %102 = load i64*, i64** @global_threadIds, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 %101
  store i64 %100, i64* %103, align 8
  br label %104

; <label>:104                                     ; preds = %99
  %105 = load i64, i64* %i, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %i, align 8
  br label %95

; <label>:107                                     ; preds = %95
  %108 = load i64*, i64** @global_threads, align 8
  %109 = icmp eq i64* %108, null
  br i1 %109, label %110, label %111

; <label>:110                                     ; preds = %107
  br label %113

; <label>:111                                     ; preds = %107
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9.165, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 492, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %113

; <label>:113                                     ; preds = %112, %110
  %114 = load i64, i64* %1, align 8
  %115 = mul i64 %114, 8
  %116 = call noalias i8* @malloc(i64 %115) #7
  %117 = bitcast i8* %116 to i64*
  store i64* %117, i64** @global_threads, align 8
  %118 = load i64*, i64** @global_threads, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %121

; <label>:120                                     ; preds = %113
  br label %123

; <label>:121                                     ; preds = %113
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10.166, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 494, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %123

; <label>:123                                     ; preds = %122, %120
  %124 = call i32 @pthread_attr_init(%union.pthread_attr_t* @global_threadAttr) #7
  store i64 1, i64* %i, align 8
  br label %125

; <label>:125                                     ; preds = %138, %123
  %126 = load i64, i64* %i, align 8
  %127 = load i64, i64* %1, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %141

; <label>:129                                     ; preds = %125
  %130 = load i64, i64* %i, align 8
  %131 = load i64*, i64** @global_threads, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 %130
  %133 = load i64, i64* %i, align 8
  %134 = load i64*, i64** @global_threadIds, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 %133
  %136 = bitcast i64* %135 to i8*
  %137 = call i32 @pthread_create(i64* %132, %union.pthread_attr_t* @global_threadAttr, i8* (i8*)* bitcast (void (i8*)* @threadWait to i8* (i8*)*), i8* %136) #7
  br label %138

; <label>:138                                     ; preds = %129
  %139 = load i64, i64* %i, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %i, align 8
  br label %125

; <label>:141                                     ; preds = %125
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.thread_barrier* @thread_barrier_alloc(i64 %numThread) #8 {
  %1 = alloca i64, align 8
  %barrierPtr = alloca %struct.thread_barrier*, align 8
  store i64 %numThread, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %7

; <label>:5                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.160, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 570, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %6, %4
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = sub nsw i64 %9, 1
  %11 = and i64 %8, %10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %7
  br label %16

; <label>:14                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12.161, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.145, i32 0, i32 0), i32 571, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = load i64, i64* %1, align 8
  %18 = mul i64 %17, 152
  %19 = call noalias i8* @malloc(i64 %18) #7
  %20 = bitcast i8* %19 to %struct.thread_barrier*
  store %struct.thread_barrier* %20, %struct.thread_barrier** %barrierPtr, align 8
  %21 = load %struct.thread_barrier*, %struct.thread_barrier** %barrierPtr, align 8
  %22 = icmp ne %struct.thread_barrier* %21, null
  br i1 %22, label %23, label %27

; <label>:23                                      ; preds = %16
  %24 = load i64, i64* %1, align 8
  %25 = load %struct.thread_barrier*, %struct.thread_barrier** %barrierPtr, align 8
  %26 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %25, i32 0, i32 4
  store i64 %24, i64* %26, align 8
  br label %27

; <label>:27                                      ; preds = %23, %16
  %28 = load %struct.thread_barrier*, %struct.thread_barrier** %barrierPtr, align 8
  ret %struct.thread_barrier* %28
}

; Function Attrs: nounwind uwtable
define void @thread_barrier_init(%struct.thread_barrier* %barrierPtr) #8 {
  %1 = alloca %struct.thread_barrier*, align 8
  %i = alloca i64, align 8
  %numThread = alloca i64, align 8
  store %struct.thread_barrier* %barrierPtr, %struct.thread_barrier** %1, align 8
  %2 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %3 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %2, i32 0, i32 4
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %numThread, align 8
  store i64 0, i64* %i, align 8
  br label %5

; <label>:5                                       ; preds = %29, %0
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %numThread, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %32

; <label>:9                                       ; preds = %5
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %12 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %11, i64 %10
  %13 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %16 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %15, i64 %14
  %17 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %16, i32 0, i32 0
  %18 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %17, %union.pthread_mutexattr_t* null) #7
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %21 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %20, i64 %19
  %22 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %21, i32 0, i32 1
  %23 = call i32 @pthread_cond_init(%union.pthread_cond_t* %22, %union.pthread_mutexattr_t* null) #7
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %26 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %25, i64 %24
  %27 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %26, i32 0, i32 2
  %28 = call i32 @pthread_cond_init(%union.pthread_cond_t* %27, %union.pthread_mutexattr_t* null) #7
  br label %29

; <label>:29                                      ; preds = %9
  %30 = load i64, i64* %i, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %i, align 8
  br label %5

; <label>:32                                      ; preds = %5
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #11

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_mutexattr_t*) #11

; Function Attrs: nounwind
declare i32 @pthread_key_create(i32*, void (i8*)*) #11

; Function Attrs: nounwind
declare i32 @pthread_attr_init(%union.pthread_attr_t*) #11

; Function Attrs: nounwind uwtable
define internal void @threadWait(i8* %argPtr) #8 {
  %1 = alloca i8*, align 8
  %threadId = alloca i64, align 8
  %msr_path = alloca [16 x i8], align 16
  %cpusetp = alloca %struct.cpu_set_t*, align 8
  %size = alloca i64, align 8
  %ret = alloca i32, align 4
  store i8* %argPtr, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to i64*
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %threadId, align 8
  %5 = load i32, i32* @global_threadId, align 4
  %6 = load i64, i64* %threadId, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 @pthread_setspecific(i32 %5, i8* %7) #7
  br label %9

; <label>:9                                       ; preds = %23, %0
  %10 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  %11 = load i64, i64* %threadId, align 8
  call void @thread_barrier(%struct.thread_barrier* %10, i64 %11)
  %12 = load volatile i64, i64* @global_doShutdown, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %9
  br label %24

; <label>:15                                      ; preds = %9
  %16 = load void (i8*)*, void (i8*)** @global_funcPtr, align 8
  %17 = load i8*, i8** @global_argPtr, align 8
  call void %16(i8* %17)
  %18 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  %19 = load i64, i64* %threadId, align 8
  call void @thread_barrier(%struct.thread_barrier* %18, i64 %19)
  %20 = load i64, i64* %threadId, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %15
  br label %24

; <label>:23                                      ; preds = %15
  br label %9

; <label>:24                                      ; preds = %22, %14
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32, i8*) #11

; Function Attrs: nounwind uwtable
define void @thread_barrier(%struct.thread_barrier* %barrierPtr, i64 %threadId) #8 {
  %1 = alloca %struct.thread_barrier*, align 8
  %2 = alloca i64, align 8
  %i = alloca i64, align 8
  %base = alloca i64, align 8
  %index = alloca i64, align 8
  %numThread = alloca i64, align 8
  store %struct.thread_barrier* %barrierPtr, %struct.thread_barrier** %1, align 8
  store i64 %threadId, i64* %2, align 8
  store i64 2, i64* %i, align 8
  store i64 0, i64* %base, align 8
  %3 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %4 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %numThread, align 8
  %6 = load i64, i64* %numThread, align 8
  %7 = icmp slt i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %149

; <label>:9                                       ; preds = %0
  br label %10

; <label>:10                                      ; preds = %106, %9
  %11 = load i64, i64* %base, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* %i, align 8
  %14 = sdiv i64 %12, %13
  %15 = add nsw i64 %11, %14
  store i64 %15, i64* %index, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* %i, align 8
  %18 = srem i64 %16, %17
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %55

; <label>:20                                      ; preds = %10
  %21 = load i64, i64* %index, align 8
  %22 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %23 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %22, i64 %21
  %24 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %23, i32 0, i32 0
  %25 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %24) #7
  %26 = load i64, i64* %index, align 8
  %27 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %28 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %27, i64 %26
  %29 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  br label %32

; <label>:32                                      ; preds = %39, %20
  %33 = load i64, i64* %index, align 8
  %34 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %35 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %34, i64 %33
  %36 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 2
  br i1 %38, label %39, label %49

; <label>:39                                      ; preds = %32
  %40 = load i64, i64* %index, align 8
  %41 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %42 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %41, i64 %40
  %43 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %42, i32 0, i32 1
  %44 = load i64, i64* %index, align 8
  %45 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %46 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %45, i64 %44
  %47 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %46, i32 0, i32 0
  %48 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %43, %union.pthread_mutex_t* %47)
  br label %32

; <label>:49                                      ; preds = %32
  %50 = load i64, i64* %index, align 8
  %51 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %52 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %51, i64 %50
  %53 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %52, i32 0, i32 0
  %54 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %53) #7
  br label %98

; <label>:55                                      ; preds = %10
  %56 = load i64, i64* %index, align 8
  %57 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %58 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %57, i64 %56
  %59 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %58, i32 0, i32 0
  %60 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %59) #7
  %61 = load i64, i64* %index, align 8
  %62 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %63 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %62, i64 %61
  %64 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load i64, i64* %index, align 8
  %68 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %69 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %68, i64 %67
  %70 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 2
  br i1 %72, label %73, label %79

; <label>:73                                      ; preds = %55
  %74 = load i64, i64* %index, align 8
  %75 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %76 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %75, i64 %74
  %77 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %76, i32 0, i32 1
  %78 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %77) #7
  br label %79

; <label>:79                                      ; preds = %73, %55
  br label %80

; <label>:80                                      ; preds = %91, %79
  %81 = load i64, i64* %index, align 8
  %82 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %83 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %82, i64 %81
  %84 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %83, i32 0, i32 2
  %85 = load i64, i64* %index, align 8
  %86 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %87 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %86, i64 %85
  %88 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %87, i32 0, i32 0
  %89 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %84, %union.pthread_mutex_t* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %80
  br label %80

; <label>:92                                      ; preds = %80
  %93 = load i64, i64* %index, align 8
  %94 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %95 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %94, i64 %93
  %96 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %95, i32 0, i32 0
  %97 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %96) #7
  br label %110

; <label>:98                                      ; preds = %49
  %99 = load i64, i64* %base, align 8
  %100 = load i64, i64* %numThread, align 8
  %101 = load i64, i64* %i, align 8
  %102 = sdiv i64 %100, %101
  %103 = add nsw i64 %99, %102
  store i64 %103, i64* %base, align 8
  %104 = load i64, i64* %i, align 8
  %105 = mul nsw i64 %104, 2
  store i64 %105, i64* %i, align 8
  br label %106

; <label>:106                                     ; preds = %98
  %107 = load i64, i64* %i, align 8
  %108 = load i64, i64* %numThread, align 8
  %109 = icmp sle i64 %107, %108
  br i1 %109, label %10, label %110

; <label>:110                                     ; preds = %106, %92
  %111 = load i64, i64* %i, align 8
  %112 = sdiv i64 %111, 2
  store i64 %112, i64* %i, align 8
  br label %113

; <label>:113                                     ; preds = %146, %110
  %114 = load i64, i64* %i, align 8
  %115 = icmp sgt i64 %114, 1
  br i1 %115, label %116, label %149

; <label>:116                                     ; preds = %113
  %117 = load i64, i64* %base, align 8
  %118 = load i64, i64* %numThread, align 8
  %119 = load i64, i64* %i, align 8
  %120 = sdiv i64 %118, %119
  %121 = sub nsw i64 %117, %120
  store i64 %121, i64* %base, align 8
  %122 = load i64, i64* %base, align 8
  %123 = load i64, i64* %2, align 8
  %124 = load i64, i64* %i, align 8
  %125 = sdiv i64 %123, %124
  %126 = add nsw i64 %122, %125
  store i64 %126, i64* %index, align 8
  %127 = load i64, i64* %index, align 8
  %128 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %129 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %128, i64 %127
  %130 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %129, i32 0, i32 0
  %131 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %130) #7
  %132 = load i64, i64* %index, align 8
  %133 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %134 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %133, i64 %132
  %135 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %134, i32 0, i32 3
  store i64 0, i64* %135, align 8
  %136 = load i64, i64* %index, align 8
  %137 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %138 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %137, i64 %136
  %139 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %138, i32 0, i32 2
  %140 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %139) #7
  %141 = load i64, i64* %index, align 8
  %142 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %143 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %142, i64 %141
  %144 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %143, i32 0, i32 0
  %145 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %144) #7
  br label %146

; <label>:146                                     ; preds = %116
  %147 = load i64, i64* %i, align 8
  %148 = sdiv i64 %147, 2
  store i64 %148, i64* %i, align 8
  br label %113

; <label>:149                                     ; preds = %113, %8
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #11

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #11

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(%union.pthread_cond_t*) #11

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #11

; Function Attrs: nounwind uwtable
define void @thread_start(void (i8*)* %funcPtr, i8* %argPtr) #8 {
  %1 = alloca void (i8*)*, align 8
  %2 = alloca i8*, align 8
  %threadId = alloca i64, align 8
  store void (i8*)* %funcPtr, void (i8*)** %1, align 8
  store i8* %argPtr, i8** %2, align 8
  %3 = load void (i8*)*, void (i8*)** %1, align 8
  store void (i8*)* %3, void (i8*)** @global_funcPtr, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** @global_argPtr, align 8
  store i64 0, i64* %threadId, align 8
  %5 = bitcast i64* %threadId to i8*
  call void @threadWait(i8* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @thread_shutdown() #8 {
  %numThread = alloca i64, align 8
  %i = alloca i64, align 8
  store volatile i64 1, i64* @global_doShutdown, align 8
  %1 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  call void @thread_barrier(%struct.thread_barrier* %1, i64 0)
  %2 = load i64, i64* @global_numThread, align 8
  store i64 %2, i64* %numThread, align 8
  store i64 1, i64* %i, align 8
  br label %3

; <label>:3                                       ; preds = %13, %0
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %numThread, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %16

; <label>:7                                       ; preds = %3
  %8 = load i64, i64* %i, align 8
  %9 = load i64*, i64** @global_threads, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 %8
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @pthread_join(i64 %11, i8** null)
  br label %13

; <label>:13                                      ; preds = %7
  %14 = load i64, i64* %i, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %i, align 8
  br label %3

; <label>:16                                      ; preds = %3
  %17 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  call void @thread_barrier_free(%struct.thread_barrier* %17)
  store %struct.thread_barrier* null, %struct.thread_barrier** @global_barrierPtr, align 8
  %18 = load i64*, i64** @global_threadIds, align 8
  %19 = bitcast i64* %18 to i8*
  call void @free(i8* %19) #7
  store i64* null, i64** @global_threadIds, align 8
  %20 = load i64*, i64** @global_threads, align 8
  %21 = bitcast i64* %20 to i8*
  call void @free(i8* %21) #7
  store i64* null, i64** @global_threads, align 8
  store i64 1, i64* @global_numThread, align 8
  ret void
}

declare i32 @pthread_join(i64, i8**) #12

; Function Attrs: nounwind uwtable
define void @thread_barrier_free(%struct.thread_barrier* %barrierPtr) #8 {
  %1 = alloca %struct.thread_barrier*, align 8
  store %struct.thread_barrier* %barrierPtr, %struct.thread_barrier** %1, align 8
  %2 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %3 = bitcast %struct.thread_barrier* %2 to i8*
  call void @free(i8* %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @thread_getId() #8 {
  %1 = load i32, i32* @global_threadId, align 4
  %2 = call i8* @pthread_getspecific(i32 %1) #7
  %3 = ptrtoint i8* %2 to i64
  ret i64 %3
}

; Function Attrs: nounwind
declare i8* @pthread_getspecific(i32) #11

; Function Attrs: nounwind uwtable
define i64 @thread_getNumThread() #8 {
  %1 = load i64, i64* @global_numThread, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define void @thread_barrier_wait() #8 {
  %threadId = alloca i64, align 8
  %1 = call i64 @thread_getId()
  store i64 %1, i64* %threadId, align 8
  %2 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  %3 = load i64, i64* %threadId, align 8
  call void @thread_barrier(%struct.thread_barrier* %2, i64 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.vector* @vector_alloc(i64 %initCapacity) #8 {
  %1 = alloca %struct.vector*, align 8
  %2 = alloca i64, align 8
  %vectorPtr = alloca %struct.vector*, align 8
  %capacity = alloca i64, align 8
  %_a = alloca i64, align 8
  %_b = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %initCapacity, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  store i64 %4, i64* %_a, align 8
  store i32 1, i32* %_b, align 4
  %5 = load i64, i64* %_a, align 8
  %6 = load i32, i32* %_b, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp sgt i64 %5, %7
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %_a, align 8
  br label %14

; <label>:11                                      ; preds = %0
  %12 = load i32, i32* %_b, align 4
  %13 = sext i32 %12 to i64
  br label %14

; <label>:14                                      ; preds = %11, %9
  %15 = phi i64 [ %10, %9 ], [ %13, %11 ]
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  store i64 %16, i64* %capacity, align 8
  %17 = call noalias i8* @malloc(i64 24) #7
  %18 = bitcast i8* %17 to %struct.vector*
  store %struct.vector* %18, %struct.vector** %vectorPtr, align 8
  %19 = load %struct.vector*, %struct.vector** %vectorPtr, align 8
  %20 = icmp ne %struct.vector* %19, null
  br i1 %20, label %21, label %39

; <label>:21                                      ; preds = %14
  %22 = load %struct.vector*, %struct.vector** %vectorPtr, align 8
  %23 = getelementptr inbounds %struct.vector, %struct.vector* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* %capacity, align 8
  %25 = load %struct.vector*, %struct.vector** %vectorPtr, align 8
  %26 = getelementptr inbounds %struct.vector, %struct.vector* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %capacity, align 8
  %28 = mul i64 %27, 8
  %29 = call noalias i8* @malloc(i64 %28) #7
  %30 = bitcast i8* %29 to i8**
  %31 = load %struct.vector*, %struct.vector** %vectorPtr, align 8
  %32 = getelementptr inbounds %struct.vector, %struct.vector* %31, i32 0, i32 2
  store i8** %30, i8*** %32, align 8
  %33 = load %struct.vector*, %struct.vector** %vectorPtr, align 8
  %34 = getelementptr inbounds %struct.vector, %struct.vector* %33, i32 0, i32 2
  %35 = load i8**, i8*** %34, align 8
  %36 = icmp eq i8** %35, null
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %21
  store %struct.vector* null, %struct.vector** %1, align 8
  br label %41

; <label>:38                                      ; preds = %21
  br label %39

; <label>:39                                      ; preds = %38, %14
  %40 = load %struct.vector*, %struct.vector** %vectorPtr, align 8
  store %struct.vector* %40, %struct.vector** %1, align 8
  br label %41

; <label>:41                                      ; preds = %39, %37
  %42 = load %struct.vector*, %struct.vector** %1, align 8
  ret %struct.vector* %42
}

; Function Attrs: nounwind uwtable
define %struct.vector* @Pvector_alloc(i64 %initCapacity) #8 {
  %1 = alloca %struct.vector*, align 8
  %2 = alloca i64, align 8
  %vectorPtr = alloca %struct.vector*, align 8
  %capacity = alloca i64, align 8
  %_a = alloca i64, align 8
  %_b = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %initCapacity, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  store i64 %4, i64* %_a, align 8
  store i32 1, i32* %_b, align 4
  %5 = load i64, i64* %_a, align 8
  %6 = load i32, i32* %_b, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp sgt i64 %5, %7
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %_a, align 8
  br label %14

; <label>:11                                      ; preds = %0
  %12 = load i32, i32* %_b, align 4
  %13 = sext i32 %12 to i64
  br label %14

; <label>:14                                      ; preds = %11, %9
  %15 = phi i64 [ %10, %9 ], [ %13, %11 ]
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  store i64 %16, i64* %capacity, align 8
  %17 = call noalias i8* @malloc(i64 24) #7
  %18 = bitcast i8* %17 to %struct.vector*
  store %struct.vector* %18, %struct.vector** %vectorPtr, align 8
  %19 = load %struct.vector*, %struct.vector** %vectorPtr, align 8
  %20 = icmp ne %struct.vector* %19, null
  br i1 %20, label %21, label %39

; <label>:21                                      ; preds = %14
  %22 = load %struct.vector*, %struct.vector** %vectorPtr, align 8
  %23 = getelementptr inbounds %struct.vector, %struct.vector* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* %capacity, align 8
  %25 = load %struct.vector*, %struct.vector** %vectorPtr, align 8
  %26 = getelementptr inbounds %struct.vector, %struct.vector* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %capacity, align 8
  %28 = mul i64 %27, 8
  %29 = call noalias i8* @malloc(i64 %28) #7
  %30 = bitcast i8* %29 to i8**
  %31 = load %struct.vector*, %struct.vector** %vectorPtr, align 8
  %32 = getelementptr inbounds %struct.vector, %struct.vector* %31, i32 0, i32 2
  store i8** %30, i8*** %32, align 8
  %33 = load %struct.vector*, %struct.vector** %vectorPtr, align 8
  %34 = getelementptr inbounds %struct.vector, %struct.vector* %33, i32 0, i32 2
  %35 = load i8**, i8*** %34, align 8
  %36 = icmp eq i8** %35, null
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %21
  store %struct.vector* null, %struct.vector** %1, align 8
  br label %41

; <label>:38                                      ; preds = %21
  br label %39

; <label>:39                                      ; preds = %38, %14
  %40 = load %struct.vector*, %struct.vector** %vectorPtr, align 8
  store %struct.vector* %40, %struct.vector** %1, align 8
  br label %41

; <label>:41                                      ; preds = %39, %37
  %42 = load %struct.vector*, %struct.vector** %1, align 8
  ret %struct.vector* %42
}

; Function Attrs: nounwind uwtable
define void @vector_free(%struct.vector* %vectorPtr) #8 {
  %1 = alloca %struct.vector*, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %1, align 8
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 2
  %4 = load i8**, i8*** %3, align 8
  %5 = bitcast i8** %4 to i8*
  call void @free(i8* %5) #7
  %6 = load %struct.vector*, %struct.vector** %1, align 8
  %7 = bitcast %struct.vector* %6 to i8*
  call void @free(i8* %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @Pvector_free(%struct.vector* %vectorPtr) #8 {
  %1 = alloca %struct.vector*, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %1, align 8
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 2
  %4 = load i8**, i8*** %3, align 8
  %5 = bitcast i8** %4 to i8*
  call void @free(i8* %5) #7
  %6 = load %struct.vector*, %struct.vector** %1, align 8
  %7 = bitcast %struct.vector* %6 to i8*
  call void @free(i8* %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @vector_at(%struct.vector* %vectorPtr, i64 %i) #8 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.vector*, align 8
  %3 = alloca i64, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %2, align 8
  store i64 %i, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.vector*, %struct.vector** %2, align 8
  %9 = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %6, %0
  store i8* null, i8** %1, align 8
  br label %20

; <label>:13                                      ; preds = %6
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.vector*, %struct.vector** %2, align 8
  %16 = getelementptr inbounds %struct.vector, %struct.vector* %15, i32 0, i32 2
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 %14
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %1, align 8
  br label %20

; <label>:20                                      ; preds = %13, %12
  %21 = load i8*, i8** %1, align 8
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define i64 @vector_pushBack(%struct.vector* %vectorPtr, i8* %dataPtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.vector*, align 8
  %3 = alloca i8*, align 8
  %i = alloca i64, align 8
  %newCapacity = alloca i64, align 8
  %newElements = alloca i8**, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %4 = load %struct.vector*, %struct.vector** %2, align 8
  %5 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.vector*, %struct.vector** %2, align 8
  %8 = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %54

; <label>:11                                      ; preds = %0
  %12 = load %struct.vector*, %struct.vector** %2, align 8
  %13 = getelementptr inbounds %struct.vector, %struct.vector* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = mul nsw i64 %14, 2
  store i64 %15, i64* %newCapacity, align 8
  %16 = load i64, i64* %newCapacity, align 8
  %17 = mul i64 %16, 8
  %18 = call noalias i8* @malloc(i64 %17) #7
  %19 = bitcast i8* %18 to i8**
  store i8** %19, i8*** %newElements, align 8
  %20 = load i8**, i8*** %newElements, align 8
  %21 = icmp eq i8** %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %11
  store i64 0, i64* %1, align 8
  br label %64

; <label>:23                                      ; preds = %11
  %24 = load i64, i64* %newCapacity, align 8
  %25 = load %struct.vector*, %struct.vector** %2, align 8
  %26 = getelementptr inbounds %struct.vector, %struct.vector* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  store i64 0, i64* %i, align 8
  br label %27

; <label>:27                                      ; preds = %43, %23
  %28 = load i64, i64* %i, align 8
  %29 = load %struct.vector*, %struct.vector** %2, align 8
  %30 = getelementptr inbounds %struct.vector, %struct.vector* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %46

; <label>:33                                      ; preds = %27
  %34 = load i64, i64* %i, align 8
  %35 = load %struct.vector*, %struct.vector** %2, align 8
  %36 = getelementptr inbounds %struct.vector, %struct.vector* %35, i32 0, i32 2
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 %34
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %i, align 8
  %41 = load i8**, i8*** %newElements, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 %40
  store i8* %39, i8** %42, align 8
  br label %43

; <label>:43                                      ; preds = %33
  %44 = load i64, i64* %i, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %i, align 8
  br label %27

; <label>:46                                      ; preds = %27
  %47 = load %struct.vector*, %struct.vector** %2, align 8
  %48 = getelementptr inbounds %struct.vector, %struct.vector* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = bitcast i8** %49 to i8*
  call void @free(i8* %50) #7
  %51 = load i8**, i8*** %newElements, align 8
  %52 = load %struct.vector*, %struct.vector** %2, align 8
  %53 = getelementptr inbounds %struct.vector, %struct.vector* %52, i32 0, i32 2
  store i8** %51, i8*** %53, align 8
  br label %54

; <label>:54                                      ; preds = %46, %0
  %55 = load i8*, i8** %3, align 8
  %56 = load %struct.vector*, %struct.vector** %2, align 8
  %57 = getelementptr inbounds %struct.vector, %struct.vector* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.vector*, %struct.vector** %2, align 8
  %61 = getelementptr inbounds %struct.vector, %struct.vector* %60, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 %58
  store i8* %55, i8** %63, align 8
  store i64 1, i64* %1, align 8
  br label %64

; <label>:64                                      ; preds = %54, %22
  %65 = load i64, i64* %1, align 8
  ret i64 %65
}

; Function Attrs: nounwind uwtable
define i64 @Pvector_pushBack(%struct.vector* %vectorPtr, i8* %dataPtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.vector*, align 8
  %3 = alloca i8*, align 8
  %i = alloca i64, align 8
  %newCapacity = alloca i64, align 8
  %newElements = alloca i8**, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %4 = load %struct.vector*, %struct.vector** %2, align 8
  %5 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.vector*, %struct.vector** %2, align 8
  %8 = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %54

; <label>:11                                      ; preds = %0
  %12 = load %struct.vector*, %struct.vector** %2, align 8
  %13 = getelementptr inbounds %struct.vector, %struct.vector* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = mul nsw i64 %14, 2
  store i64 %15, i64* %newCapacity, align 8
  %16 = load i64, i64* %newCapacity, align 8
  %17 = mul i64 %16, 8
  %18 = call noalias i8* @malloc(i64 %17) #7
  %19 = bitcast i8* %18 to i8**
  store i8** %19, i8*** %newElements, align 8
  %20 = load i8**, i8*** %newElements, align 8
  %21 = icmp eq i8** %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %11
  store i64 0, i64* %1, align 8
  br label %64

; <label>:23                                      ; preds = %11
  %24 = load i64, i64* %newCapacity, align 8
  %25 = load %struct.vector*, %struct.vector** %2, align 8
  %26 = getelementptr inbounds %struct.vector, %struct.vector* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  store i64 0, i64* %i, align 8
  br label %27

; <label>:27                                      ; preds = %43, %23
  %28 = load i64, i64* %i, align 8
  %29 = load %struct.vector*, %struct.vector** %2, align 8
  %30 = getelementptr inbounds %struct.vector, %struct.vector* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %46

; <label>:33                                      ; preds = %27
  %34 = load i64, i64* %i, align 8
  %35 = load %struct.vector*, %struct.vector** %2, align 8
  %36 = getelementptr inbounds %struct.vector, %struct.vector* %35, i32 0, i32 2
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 %34
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %i, align 8
  %41 = load i8**, i8*** %newElements, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 %40
  store i8* %39, i8** %42, align 8
  br label %43

; <label>:43                                      ; preds = %33
  %44 = load i64, i64* %i, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %i, align 8
  br label %27

; <label>:46                                      ; preds = %27
  %47 = load %struct.vector*, %struct.vector** %2, align 8
  %48 = getelementptr inbounds %struct.vector, %struct.vector* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = bitcast i8** %49 to i8*
  call void @free(i8* %50) #7
  %51 = load i8**, i8*** %newElements, align 8
  %52 = load %struct.vector*, %struct.vector** %2, align 8
  %53 = getelementptr inbounds %struct.vector, %struct.vector* %52, i32 0, i32 2
  store i8** %51, i8*** %53, align 8
  br label %54

; <label>:54                                      ; preds = %46, %0
  %55 = load i8*, i8** %3, align 8
  %56 = load %struct.vector*, %struct.vector** %2, align 8
  %57 = getelementptr inbounds %struct.vector, %struct.vector* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.vector*, %struct.vector** %2, align 8
  %61 = getelementptr inbounds %struct.vector, %struct.vector* %60, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 %58
  store i8* %55, i8** %63, align 8
  store i64 1, i64* %1, align 8
  br label %64

; <label>:64                                      ; preds = %54, %22
  %65 = load i64, i64* %1, align 8
  ret i64 %65
}

; Function Attrs: nounwind uwtable
define i8* @vector_popBack(%struct.vector* %vectorPtr) #8 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.vector*, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %2, align 8
  %3 = load %struct.vector*, %struct.vector** %2, align 8
  %4 = getelementptr inbounds %struct.vector, %struct.vector* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i8* null, i8** %1, align 8
  br label %18

; <label>:8                                       ; preds = %0
  %9 = load %struct.vector*, %struct.vector** %2, align 8
  %10 = getelementptr inbounds %struct.vector, %struct.vector* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.vector*, %struct.vector** %2, align 8
  %14 = getelementptr inbounds %struct.vector, %struct.vector* %13, i32 0, i32 2
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 %12
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %1, align 8
  br label %18

; <label>:18                                      ; preds = %8, %7
  %19 = load i8*, i8** %1, align 8
  ret i8* %19
}

; Function Attrs: nounwind uwtable
define i64 @vector_getSize(%struct.vector* %vectorPtr) #8 {
  %1 = alloca %struct.vector*, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %1, align 8
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @vector_clear(%struct.vector* %vectorPtr) #8 {
  %1 = alloca %struct.vector*, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %1, align 8
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 0
  store i64 0, i64* %3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @vector_sort(%struct.vector* %vectorPtr, i32 (i8*, i8*)* %compare) #8 {
  %1 = alloca %struct.vector*, align 8
  %2 = alloca i32 (i8*, i8*)*, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %1, align 8
  store i32 (i8*, i8*)* %compare, i32 (i8*, i8*)** %2, align 8
  %3 = load %struct.vector*, %struct.vector** %1, align 8
  %4 = getelementptr inbounds %struct.vector, %struct.vector* %3, i32 0, i32 2
  %5 = load i8**, i8*** %4, align 8
  %6 = bitcast i8** %5 to i8*
  %7 = load %struct.vector*, %struct.vector** %1, align 8
  %8 = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %2, align 8
  call void @qsort(i8* %6, i64 %9, i64 8, i32 (i8*, i8*)* %10)
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #12

; Function Attrs: nounwind uwtable
define i64 @vector_copy(%struct.vector* %dstVectorPtr, %struct.vector* %srcVectorPtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.vector*, align 8
  %3 = alloca %struct.vector*, align 8
  %dstCapacity = alloca i64, align 8
  %srcSize = alloca i64, align 8
  %srcCapacity = alloca i64, align 8
  %elements = alloca i8**, align 8
  store %struct.vector* %dstVectorPtr, %struct.vector** %2, align 8
  store %struct.vector* %srcVectorPtr, %struct.vector** %3, align 8
  %4 = load %struct.vector*, %struct.vector** %2, align 8
  %5 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %dstCapacity, align 8
  %7 = load %struct.vector*, %struct.vector** %3, align 8
  %8 = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %srcSize, align 8
  %10 = load i64, i64* %dstCapacity, align 8
  %11 = load i64, i64* %srcSize, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %35

; <label>:13                                      ; preds = %0
  %14 = load %struct.vector*, %struct.vector** %3, align 8
  %15 = getelementptr inbounds %struct.vector, %struct.vector* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %srcCapacity, align 8
  %17 = load i64, i64* %srcCapacity, align 8
  %18 = mul i64 %17, 8
  %19 = call noalias i8* @malloc(i64 %18) #7
  %20 = bitcast i8* %19 to i8**
  store i8** %20, i8*** %elements, align 8
  %21 = load i8**, i8*** %elements, align 8
  %22 = icmp eq i8** %21, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %13
  store i64 0, i64* %1, align 8
  br label %49

; <label>:24                                      ; preds = %13
  %25 = load %struct.vector*, %struct.vector** %2, align 8
  %26 = getelementptr inbounds %struct.vector, %struct.vector* %25, i32 0, i32 2
  %27 = load i8**, i8*** %26, align 8
  %28 = bitcast i8** %27 to i8*
  call void @free(i8* %28) #7
  %29 = load i8**, i8*** %elements, align 8
  %30 = load %struct.vector*, %struct.vector** %2, align 8
  %31 = getelementptr inbounds %struct.vector, %struct.vector* %30, i32 0, i32 2
  store i8** %29, i8*** %31, align 8
  %32 = load i64, i64* %srcCapacity, align 8
  %33 = load %struct.vector*, %struct.vector** %2, align 8
  %34 = getelementptr inbounds %struct.vector, %struct.vector* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

; <label>:35                                      ; preds = %24, %0
  %36 = load %struct.vector*, %struct.vector** %2, align 8
  %37 = getelementptr inbounds %struct.vector, %struct.vector* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = bitcast i8** %38 to i8*
  %40 = load %struct.vector*, %struct.vector** %3, align 8
  %41 = getelementptr inbounds %struct.vector, %struct.vector* %40, i32 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  %43 = bitcast i8** %42 to i8*
  %44 = load i64, i64* %srcSize, align 8
  %45 = mul i64 %44, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %43, i64 %45, i32 8, i1 false)
  %46 = load i64, i64* %srcSize, align 8
  %47 = load %struct.vector*, %struct.vector** %2, align 8
  %48 = getelementptr inbounds %struct.vector, %struct.vector* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  store i64 1, i64* %1, align 8
  br label %49

; <label>:49                                      ; preds = %35, %23
  %50 = load i64, i64* %1, align 8
  ret i64 %50
}

; Function Attrs: nounwind uwtable
define i64 @Pvector_copy(%struct.vector* %dstVectorPtr, %struct.vector* %srcVectorPtr) #8 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.vector*, align 8
  %3 = alloca %struct.vector*, align 8
  %dstCapacity = alloca i64, align 8
  %srcSize = alloca i64, align 8
  %srcCapacity = alloca i64, align 8
  %elements = alloca i8**, align 8
  store %struct.vector* %dstVectorPtr, %struct.vector** %2, align 8
  store %struct.vector* %srcVectorPtr, %struct.vector** %3, align 8
  %4 = load %struct.vector*, %struct.vector** %2, align 8
  %5 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %dstCapacity, align 8
  %7 = load %struct.vector*, %struct.vector** %3, align 8
  %8 = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %srcSize, align 8
  %10 = load i64, i64* %dstCapacity, align 8
  %11 = load i64, i64* %srcSize, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %35

; <label>:13                                      ; preds = %0
  %14 = load %struct.vector*, %struct.vector** %3, align 8
  %15 = getelementptr inbounds %struct.vector, %struct.vector* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %srcCapacity, align 8
  %17 = load i64, i64* %srcCapacity, align 8
  %18 = mul i64 %17, 8
  %19 = call noalias i8* @malloc(i64 %18) #7
  %20 = bitcast i8* %19 to i8**
  store i8** %20, i8*** %elements, align 8
  %21 = load i8**, i8*** %elements, align 8
  %22 = icmp eq i8** %21, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %13
  store i64 0, i64* %1, align 8
  br label %49

; <label>:24                                      ; preds = %13
  %25 = load %struct.vector*, %struct.vector** %2, align 8
  %26 = getelementptr inbounds %struct.vector, %struct.vector* %25, i32 0, i32 2
  %27 = load i8**, i8*** %26, align 8
  %28 = bitcast i8** %27 to i8*
  call void @free(i8* %28) #7
  %29 = load i8**, i8*** %elements, align 8
  %30 = load %struct.vector*, %struct.vector** %2, align 8
  %31 = getelementptr inbounds %struct.vector, %struct.vector* %30, i32 0, i32 2
  store i8** %29, i8*** %31, align 8
  %32 = load i64, i64* %srcCapacity, align 8
  %33 = load %struct.vector*, %struct.vector** %2, align 8
  %34 = getelementptr inbounds %struct.vector, %struct.vector* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

; <label>:35                                      ; preds = %24, %0
  %36 = load %struct.vector*, %struct.vector** %2, align 8
  %37 = getelementptr inbounds %struct.vector, %struct.vector* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = bitcast i8** %38 to i8*
  %40 = load %struct.vector*, %struct.vector** %3, align 8
  %41 = getelementptr inbounds %struct.vector, %struct.vector* %40, i32 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  %43 = bitcast i8** %42 to i8*
  %44 = load i64, i64* %srcSize, align 8
  %45 = mul i64 %44, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %43, i64 %45, i32 8, i1 false)
  %46 = load i64, i64* %srcSize, align 8
  %47 = load %struct.vector*, %struct.vector** %2, align 8
  %48 = getelementptr inbounds %struct.vector, %struct.vector* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  store i64 1, i64* %1, align 8
  br label %49

; <label>:49                                      ; preds = %35, %23
  %50 = load i64, i64* %1, align 8
  ret i64 %50
}

; Function Attrs: nounwind uwtable
define i64 @memory_init(i64 %numThread, i64 %initBlockCapacity, i64 %blockGrowthFactor) #8 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %numThread, i64* %2, align 8
  store i64 %initBlockCapacity, i64* %3, align 8
  store i64 %blockGrowthFactor, i64* %4, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.188, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.memory_init, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = call noalias i8* @malloc(i64 16) #7
  %12 = bitcast i8* %11 to %struct.memory*
  store %struct.memory* %12, %struct.memory** @global_memoryPtr, align 8
  %13 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %14 = icmp eq %struct.memory* %13, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %10
  store i64 0, i64* %1, align 8
  br label %58

; <label>:16                                      ; preds = %10
  %17 = load i64, i64* %2, align 8
  %18 = mul i64 %17, 8
  %19 = call noalias i8* @malloc(i64 %18) #7
  %20 = bitcast i8* %19 to %struct.pool**
  %21 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %22 = getelementptr inbounds %struct.memory, %struct.memory* %21, i32 0, i32 0
  store %struct.pool** %20, %struct.pool*** %22, align 8
  %23 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %24 = getelementptr inbounds %struct.memory, %struct.memory* %23, i32 0, i32 0
  %25 = load %struct.pool**, %struct.pool*** %24, align 8
  %26 = icmp eq %struct.pool** %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %16
  store i64 0, i64* %1, align 8
  br label %58

; <label>:28                                      ; preds = %16
  store i64 0, i64* %i, align 8
  br label %29

; <label>:29                                      ; preds = %51, %28
  %30 = load i64, i64* %i, align 8
  %31 = load i64, i64* %2, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %54

; <label>:33                                      ; preds = %29
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call %struct.pool* @allocPool(i64 %34, i64 %35)
  %37 = load i64, i64* %i, align 8
  %38 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %39 = getelementptr inbounds %struct.memory, %struct.memory* %38, i32 0, i32 0
  %40 = load %struct.pool**, %struct.pool*** %39, align 8
  %41 = getelementptr inbounds %struct.pool*, %struct.pool** %40, i64 %37
  store %struct.pool* %36, %struct.pool** %41, align 8
  %42 = load i64, i64* %i, align 8
  %43 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %44 = getelementptr inbounds %struct.memory, %struct.memory* %43, i32 0, i32 0
  %45 = load %struct.pool**, %struct.pool*** %44, align 8
  %46 = getelementptr inbounds %struct.pool*, %struct.pool** %45, i64 %42
  %47 = load %struct.pool*, %struct.pool** %46, align 8
  %48 = icmp eq %struct.pool* %47, null
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %33
  store i64 0, i64* %1, align 8
  br label %58

; <label>:50                                      ; preds = %33
  br label %51

; <label>:51                                      ; preds = %50
  %52 = load i64, i64* %i, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %i, align 8
  br label %29

; <label>:54                                      ; preds = %29
  %55 = load i64, i64* %2, align 8
  %56 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %57 = getelementptr inbounds %struct.memory, %struct.memory* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  store i64 1, i64* %1, align 8
  br label %58

; <label>:58                                      ; preds = %54, %49, %27, %15
  %59 = load i64, i64* %1, align 8
  ret i64 %59
}

; Function Attrs: nounwind uwtable
define internal %struct.pool* @allocPool(i64 %initBlockCapacity, i64 %blockGrowthFactor) #8 {
  %1 = alloca %struct.pool*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %poolPtr = alloca %struct.pool*, align 8
  store i64 %initBlockCapacity, i64* %2, align 8
  store i64 %blockGrowthFactor, i64* %3, align 8
  %4 = call noalias i8* @malloc(i64 32) #7
  %5 = bitcast i8* %4 to %struct.pool*
  store %struct.pool* %5, %struct.pool** %poolPtr, align 8
  %6 = load %struct.pool*, %struct.pool** %poolPtr, align 8
  %7 = icmp eq %struct.pool* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store %struct.pool* null, %struct.pool** %1, align 8
  br label %50

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %14

; <label>:12                                      ; preds = %9
  %13 = load i64, i64* %2, align 8
  br label %15

; <label>:14                                      ; preds = %9
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = phi i64 [ %13, %12 ], [ 16, %14 ]
  %17 = load %struct.pool*, %struct.pool** %poolPtr, align 8
  %18 = getelementptr inbounds %struct.pool, %struct.pool* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %15
  %22 = load i64, i64* %3, align 8
  br label %24

; <label>:23                                      ; preds = %15
  br label %24

; <label>:24                                      ; preds = %23, %21
  %25 = phi i64 [ %22, %21 ], [ 2, %23 ]
  %26 = load %struct.pool*, %struct.pool** %poolPtr, align 8
  %27 = getelementptr inbounds %struct.pool, %struct.pool* %26, i32 0, i32 3
  store i64 %25, i64* %27, align 8
  %28 = load %struct.pool*, %struct.pool** %poolPtr, align 8
  %29 = getelementptr inbounds %struct.pool, %struct.pool* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.block* @allocBlock(i64 %30)
  %32 = load %struct.pool*, %struct.pool** %poolPtr, align 8
  %33 = getelementptr inbounds %struct.pool, %struct.pool* %32, i32 0, i32 0
  store %struct.block* %31, %struct.block** %33, align 8
  %34 = load %struct.pool*, %struct.pool** %poolPtr, align 8
  %35 = getelementptr inbounds %struct.pool, %struct.pool* %34, i32 0, i32 0
  %36 = load %struct.block*, %struct.block** %35, align 8
  %37 = icmp eq %struct.block* %36, null
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %24
  store %struct.pool* null, %struct.pool** %1, align 8
  br label %50

; <label>:39                                      ; preds = %24
  %40 = load %struct.pool*, %struct.pool** %poolPtr, align 8
  %41 = getelementptr inbounds %struct.pool, %struct.pool* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.pool*, %struct.pool** %poolPtr, align 8
  %44 = getelementptr inbounds %struct.pool, %struct.pool* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 %42, %45
  %47 = load %struct.pool*, %struct.pool** %poolPtr, align 8
  %48 = getelementptr inbounds %struct.pool, %struct.pool* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.pool*, %struct.pool** %poolPtr, align 8
  store %struct.pool* %49, %struct.pool** %1, align 8
  br label %50

; <label>:50                                      ; preds = %39, %38, %8
  %51 = load %struct.pool*, %struct.pool** %1, align 8
  ret %struct.pool* %51
}

; Function Attrs: nounwind uwtable
define internal %struct.block* @allocBlock(i64 %capacity) #8 {
  %1 = alloca %struct.block*, align 8
  %2 = alloca i64, align 8
  %blockPtr = alloca %struct.block*, align 8
  store i64 %capacity, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ugt i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.189, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.188, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.allocBlock, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %8

; <label>:8                                       ; preds = %7, %5
  %9 = call noalias i8* @malloc(i64 160) #7
  %10 = bitcast i8* %9 to %struct.block*
  store %struct.block* %10, %struct.block** %blockPtr, align 8
  %11 = load %struct.block*, %struct.block** %blockPtr, align 8
  %12 = icmp eq %struct.block* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %8
  store %struct.block* null, %struct.block** %1, align 8
  br label %35

; <label>:14                                      ; preds = %8
  %15 = load %struct.block*, %struct.block** %blockPtr, align 8
  %16 = getelementptr inbounds %struct.block, %struct.block* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load %struct.block*, %struct.block** %blockPtr, align 8
  %19 = getelementptr inbounds %struct.block, %struct.block* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %2, align 8
  %21 = udiv i64 %20, 1
  %22 = add i64 %21, 1
  %23 = call noalias i8* @malloc(i64 %22) #7
  %24 = load %struct.block*, %struct.block** %blockPtr, align 8
  %25 = getelementptr inbounds %struct.block, %struct.block* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.block*, %struct.block** %blockPtr, align 8
  %27 = getelementptr inbounds %struct.block, %struct.block* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %14
  store %struct.block* null, %struct.block** %1, align 8
  br label %35

; <label>:31                                      ; preds = %14
  %32 = load %struct.block*, %struct.block** %blockPtr, align 8
  %33 = getelementptr inbounds %struct.block, %struct.block* %32, i32 0, i32 4
  store %struct.block* null, %struct.block** %33, align 8
  %34 = load %struct.block*, %struct.block** %blockPtr, align 8
  store %struct.block* %34, %struct.block** %1, align 8
  br label %35

; <label>:35                                      ; preds = %31, %30, %13
  %36 = load %struct.block*, %struct.block** %1, align 8
  ret %struct.block* %36
}

; Function Attrs: nounwind uwtable
define void @memory_destroy() #8 {
  %i = alloca i64, align 8
  %numThread = alloca i64, align 8
  %1 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %2 = getelementptr inbounds %struct.memory, %struct.memory* %1, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* %numThread, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4                                       ; preds = %15, %0
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %numThread, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %4
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %11 = getelementptr inbounds %struct.memory, %struct.memory* %10, i32 0, i32 0
  %12 = load %struct.pool**, %struct.pool*** %11, align 8
  %13 = getelementptr inbounds %struct.pool*, %struct.pool** %12, i64 %9
  %14 = load %struct.pool*, %struct.pool** %13, align 8
  call void @freePool(%struct.pool* %14)
  br label %15

; <label>:15                                      ; preds = %8
  %16 = load i64, i64* %i, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %i, align 8
  br label %4

; <label>:18                                      ; preds = %4
  %19 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %20 = getelementptr inbounds %struct.memory, %struct.memory* %19, i32 0, i32 0
  %21 = load %struct.pool**, %struct.pool*** %20, align 8
  %22 = bitcast %struct.pool** %21 to i8*
  call void @free(i8* %22) #7
  %23 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %24 = bitcast %struct.memory* %23 to i8*
  call void @free(i8* %24) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freePool(%struct.pool* %poolPtr) #8 {
  %1 = alloca %struct.pool*, align 8
  store %struct.pool* %poolPtr, %struct.pool** %1, align 8
  %2 = load %struct.pool*, %struct.pool** %1, align 8
  %3 = getelementptr inbounds %struct.pool, %struct.pool* %2, i32 0, i32 0
  %4 = load %struct.block*, %struct.block** %3, align 8
  call void @freeBlocks(%struct.block* %4)
  %5 = load %struct.pool*, %struct.pool** %1, align 8
  %6 = bitcast %struct.pool* %5 to i8*
  call void @free(i8* %6) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeBlocks(%struct.block* %blockPtr) #8 {
  %1 = alloca %struct.block*, align 8
  store %struct.block* %blockPtr, %struct.block** %1, align 8
  %2 = load %struct.block*, %struct.block** %1, align 8
  %3 = icmp ne %struct.block* %2, null
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = load %struct.block*, %struct.block** %1, align 8
  %6 = getelementptr inbounds %struct.block, %struct.block* %5, i32 0, i32 4
  %7 = load %struct.block*, %struct.block** %6, align 8
  call void @freeBlocks(%struct.block* %7)
  %8 = load %struct.block*, %struct.block** %1, align 8
  call void @freeBlock(%struct.block* %8)
  br label %9

; <label>:9                                       ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeBlock(%struct.block* %blockPtr) #8 {
  %1 = alloca %struct.block*, align 8
  store %struct.block* %blockPtr, %struct.block** %1, align 8
  %2 = load %struct.block*, %struct.block** %1, align 8
  %3 = getelementptr inbounds %struct.block, %struct.block* %2, i32 0, i32 3
  %4 = load i8*, i8** %3, align 8
  call void @free(i8* %4) #7
  %5 = load %struct.block*, %struct.block** %1, align 8
  %6 = bitcast %struct.block* %5 to i8*
  call void @free(i8* %6) #7
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @memory_get(i64 %threadId, i64 %numByte) #8 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %poolPtr = alloca %struct.pool*, align 8
  %dataPtr = alloca i8*, align 8
  %addr = alloca i64, align 8
  %misalignment = alloca i64, align 8
  store i64 %threadId, i64* %1, align 8
  store i64 %numByte, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %5 = getelementptr inbounds %struct.memory, %struct.memory* %4, i32 0, i32 0
  %6 = load %struct.pool**, %struct.pool*** %5, align 8
  %7 = getelementptr inbounds %struct.pool*, %struct.pool** %6, i64 %3
  %8 = load %struct.pool*, %struct.pool** %7, align 8
  store %struct.pool* %8, %struct.pool** %poolPtr, align 8
  %9 = load %struct.pool*, %struct.pool** %poolPtr, align 8
  %10 = load i64, i64* %2, align 8
  %11 = add i64 %10, 7
  %12 = call i8* @getMemoryFromPool(%struct.pool* %9, i64 %11)
  store i8* %12, i8** %dataPtr, align 8
  %13 = load i8*, i8** %dataPtr, align 8
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %addr, align 8
  %15 = load i64, i64* %addr, align 8
  %16 = urem i64 %15, 8
  store i64 %16, i64* %misalignment, align 8
  %17 = load i64, i64* %misalignment, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %0
  %20 = load i64, i64* %misalignment, align 8
  %21 = sub i64 8, %20
  %22 = load i64, i64* %addr, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %addr, align 8
  %24 = load i64, i64* %addr, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %dataPtr, align 8
  br label %26

; <label>:26                                      ; preds = %19, %0
  %27 = load i8*, i8** %dataPtr, align 8
  ret i8* %27
}

; Function Attrs: nounwind uwtable
define internal i8* @getMemoryFromPool(%struct.pool* %poolPtr, i64 %numByte) #8 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.pool*, align 8
  %3 = alloca i64, align 8
  %blockPtr = alloca %struct.block*, align 8
  store %struct.pool* %poolPtr, %struct.pool** %2, align 8
  store i64 %numByte, i64* %3, align 8
  %4 = load %struct.pool*, %struct.pool** %2, align 8
  %5 = getelementptr inbounds %struct.pool, %struct.pool* %4, i32 0, i32 0
  %6 = load %struct.block*, %struct.block** %5, align 8
  store %struct.block* %6, %struct.block** %blockPtr, align 8
  %7 = load %struct.block*, %struct.block** %blockPtr, align 8
  %8 = getelementptr inbounds %struct.block, %struct.block* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %3, align 8
  %11 = add i64 %9, %10
  %12 = load %struct.block*, %struct.block** %blockPtr, align 8
  %13 = getelementptr inbounds %struct.block, %struct.block* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ugt i64 %11, %14
  br i1 %15, label %16, label %24

; <label>:16                                      ; preds = %0
  %17 = load %struct.pool*, %struct.pool** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call %struct.block* @addBlockToPool(%struct.pool* %17, i64 %18)
  store %struct.block* %19, %struct.block** %blockPtr, align 8
  %20 = load %struct.block*, %struct.block** %blockPtr, align 8
  %21 = icmp eq %struct.block* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %16
  store i8* null, i8** %1, align 8
  br label %28

; <label>:23                                      ; preds = %16
  br label %24

; <label>:24                                      ; preds = %23, %0
  %25 = load %struct.block*, %struct.block** %blockPtr, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i8* @getMemoryFromBlock(%struct.block* %25, i64 %26)
  store i8* %27, i8** %1, align 8
  br label %28

; <label>:28                                      ; preds = %24, %22
  %29 = load i8*, i8** %1, align 8
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define internal %struct.block* @addBlockToPool(%struct.pool* %poolPtr, i64 %numByte) #8 {
  %1 = alloca %struct.block*, align 8
  %2 = alloca %struct.pool*, align 8
  %3 = alloca i64, align 8
  %blockPtr = alloca %struct.block*, align 8
  %capacity = alloca i64, align 8
  %blockGrowthFactor = alloca i64, align 8
  store %struct.pool* %poolPtr, %struct.pool** %2, align 8
  store i64 %numByte, i64* %3, align 8
  %4 = load %struct.pool*, %struct.pool** %2, align 8
  %5 = getelementptr inbounds %struct.pool, %struct.pool* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %capacity, align 8
  %7 = load %struct.pool*, %struct.pool** %2, align 8
  %8 = getelementptr inbounds %struct.pool, %struct.pool* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %blockGrowthFactor, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %capacity, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %0
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %blockGrowthFactor, align 8
  %16 = mul nsw i64 %14, %15
  store i64 %16, i64* %capacity, align 8
  br label %17

; <label>:17                                      ; preds = %13, %0
  %18 = load i64, i64* %capacity, align 8
  %19 = call %struct.block* @allocBlock(i64 %18)
  store %struct.block* %19, %struct.block** %blockPtr, align 8
  %20 = load %struct.block*, %struct.block** %blockPtr, align 8
  %21 = icmp eq %struct.block* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %17
  store %struct.block* null, %struct.block** %1, align 8
  br label %38

; <label>:23                                      ; preds = %17
  %24 = load %struct.pool*, %struct.pool** %2, align 8
  %25 = getelementptr inbounds %struct.pool, %struct.pool* %24, i32 0, i32 0
  %26 = load %struct.block*, %struct.block** %25, align 8
  %27 = load %struct.block*, %struct.block** %blockPtr, align 8
  %28 = getelementptr inbounds %struct.block, %struct.block* %27, i32 0, i32 4
  store %struct.block* %26, %struct.block** %28, align 8
  %29 = load %struct.block*, %struct.block** %blockPtr, align 8
  %30 = load %struct.pool*, %struct.pool** %2, align 8
  %31 = getelementptr inbounds %struct.pool, %struct.pool* %30, i32 0, i32 0
  store %struct.block* %29, %struct.block** %31, align 8
  %32 = load i64, i64* %capacity, align 8
  %33 = load i64, i64* %blockGrowthFactor, align 8
  %34 = mul i64 %32, %33
  %35 = load %struct.pool*, %struct.pool** %2, align 8
  %36 = getelementptr inbounds %struct.pool, %struct.pool* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.block*, %struct.block** %blockPtr, align 8
  store %struct.block* %37, %struct.block** %1, align 8
  br label %38

; <label>:38                                      ; preds = %23, %22
  %39 = load %struct.block*, %struct.block** %1, align 8
  ret %struct.block* %39
}

; Function Attrs: nounwind uwtable
define internal i8* @getMemoryFromBlock(%struct.block* %blockPtr, i64 %numByte) #8 {
  %1 = alloca %struct.block*, align 8
  %2 = alloca i64, align 8
  %size = alloca i64, align 8
  %capacity = alloca i64, align 8
  store %struct.block* %blockPtr, %struct.block** %1, align 8
  store i64 %numByte, i64* %2, align 8
  %3 = load %struct.block*, %struct.block** %1, align 8
  %4 = getelementptr inbounds %struct.block, %struct.block* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %size, align 8
  %6 = load %struct.block*, %struct.block** %1, align 8
  %7 = getelementptr inbounds %struct.block, %struct.block* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %capacity, align 8
  %9 = load i64, i64* %size, align 8
  %10 = load i64, i64* %2, align 8
  %11 = add i64 %9, %10
  %12 = load i64, i64* %capacity, align 8
  %13 = icmp ule i64 %11, %12
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %0
  br label %17

; <label>:15                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.190, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.188, i32 0, i32 0), i32 304, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getMemoryFromBlock, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %17

; <label>:17                                      ; preds = %16, %14
  %18 = load i64, i64* %2, align 8
  %19 = load %struct.block*, %struct.block** %1, align 8
  %20 = getelementptr inbounds %struct.block, %struct.block* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load i64, i64* %size, align 8
  %24 = load %struct.block*, %struct.block** %1, align 8
  %25 = getelementptr inbounds %struct.block, %struct.block* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 %23
  ret i8* %27
}

; Function Attrs: argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture, i32, i32, i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind readonly }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145953083, i32 -2145953047, i32 -2145953023}
!2 = !{i32 -2145755229, i32 -2145755193, i32 -2145755169}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.unroll.disable"}
!5 = distinct !{!5, !4}
!6 = !{i32 1398597, i32 1398613, i32 1398649, i32 1398685, i32 1398721}
!7 = !{i32 1399198, i32 1399213, i32 1399247}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.vectorize.width", i32 1337}
!10 = !{i32 1398969, i32 1398984, i32 1399012}
!11 = distinct !{!11, !9}
!12 = !{i32 11658}
