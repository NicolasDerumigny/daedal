; ModuleID = '../bin/STAMP-genome.tm-gran1.tm-dae.ll'
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
%struct.endInfoEntry = type { i64, i64 }
%struct.constructEntry = type { i64, i8*, i64, %struct.constructEntry*, %struct.constructEntry*, %struct.constructEntry*, i64, i64 }
%struct.table = type { %struct.list**, i64 }
%struct.timezone = type { i32, i32 }
%struct.hashtable_iter = type { i64, %struct.list_node* }
%struct.cpu_set_t = type { [16 x i64] }
%union.pthread_mutexattr_t = type { i32 }

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
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [61 x i8] c"The actual number of segments created may be greater than -n\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"in order to completely cover the gene.\00", align 1
@.str = private unnamed_addr constant [31 x i8] c"Creating gene and segments... \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
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
@.str.16 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Sequence matches gene: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"gene     = %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"sequence = %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"strlen(sequence) >= strlen(gene)\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Deallocating memory... \00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"segmentsPtr\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"sequencer.c\00", align 1
@__PRETTY_FUNCTION__.sequencer_run = private unnamed_addr constant [27 x i8] c"void sequencer_run(void *)\00", align 1
@.str.2.35 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3.36 = private unnamed_addr constant [27 x i8] c"startConstructEntry_endPtr\00", align 1
@.str.4.37 = private unnamed_addr constant [27 x i8] c"endConstructEntry_startPtr\00", align 1
@.str.5.38 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.6.39 = private unnamed_addr constant [33 x i8] c"newSequenceLength <= totalLength\00", align 1
@.str.7.40 = private unnamed_addr constant [41 x i8] c"ERROR: sequence length != actual length\0A\00", align 1
@.str.8.41 = private unnamed_addr constant [39 x i8] c"copyPtr <= (sequence + sequenceLength)\00", align 1
@.str.9.42 = private unnamed_addr constant [17 x i8] c"sequence != NULL\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"length > 1\00", align 1
@.str.1.48 = private unnamed_addr constant [7 x i8] c"gene.c\00", align 1
@__PRETTY_FUNCTION__.gene_alloc = private unnamed_addr constant [25 x i8] c"gene_t *gene_alloc(long)\00", align 1
@.str.2.51 = private unnamed_addr constant [16 x i8] c"genePtr != NULL\00", align 1
@__PRETTY_FUNCTION__.gene_create = private unnamed_addr constant [39 x i8] c"void gene_create(gene_t *, random_t *)\00", align 1
@.str.3.52 = private unnamed_addr constant [18 x i8] c"randomPtr != NULL\00", align 1
@gene_create.nucleotides = internal unnamed_addr constant [4 x i8] c"acgt", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"segmentsPtr != NULL\00", align 1
@.str.1.60 = private unnamed_addr constant [11 x i8] c"segments.c\00", align 1
@__PRETTY_FUNCTION__.segments_create = private unnamed_addr constant [57 x i8] c"void segments_create(segments_t *, gene_t *, random_t *)\00", align 1
@.str.2.61 = private unnamed_addr constant [16 x i8] c"genePtr != NULL\00", align 1
@.str.3.62 = private unnamed_addr constant [18 x i8] c"randomPtr != NULL\00", align 1
@.str.4.63 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.80 = private unnamed_addr constant [33 x i8] c"dstPtr->numBit == srcPtr->numBit\00", align 1
@.str.1.81 = private unnamed_addr constant [9 x i8] c"bitmap.c\00", align 1
@__PRETTY_FUNCTION__.bitmap_copy = private unnamed_addr constant [41 x i8] c"void bitmap_copy(bitmap_t *, bitmap_t *)\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1.91 = private unnamed_addr constant [12 x i8] c"hashtable.c\00", align 1
@__PRETTY_FUNCTION__.hashtable_remove = private unnamed_addr constant [47 x i8] c"bool_t hashtable_remove(hashtable_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.TMhashtable_remove = private unnamed_addr constant [49 x i8] c"bool_t TMhashtable_remove(hashtable_t *, void *)\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"listPtr->size >= 0\00", align 1
@.str.1.147 = private unnamed_addr constant [7 x i8] c"list.c\00", align 1
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
@.str.158 = private unnamed_addr constant [11 x i8] c"offset > 0\00", align 1
@.str.1.159 = private unnamed_addr constant [9 x i8] c"thread.c\00", align 1
@__PRETTY_FUNCTION__.init_one_perfcounter = private unnamed_addr constant [46 x i8] c"void init_one_perfcounter(int, unsigned long)\00", align 1
@.str.2.160 = private unnamed_addr constant [8 x i8] c"ret > 0\00", align 1
@.str.3.161 = private unnamed_addr constant [9 x i8] c"offset>0\00", align 1
@__PRETTY_FUNCTION__.read_one_perfcounter = private unnamed_addr constant [47 x i8] c"void read_one_perfcounter(int, unsigned int *)\00", align 1
@M5_inSimulator = external global i32, align 4
@.str.4.170 = private unnamed_addr constant [9 x i8] c"err == 0\00", align 1
@__PRETTY_FUNCTION__.determineNumProcs = private unnamed_addr constant [25 x i8] c"long determineNumProcs()\00", align 1
@global_numThread = internal global i64 1, align 8
@global_doShutdown = internal global i64 0, align 8
@__PRETTY_FUNCTION__.thread_startup = private unnamed_addr constant [26 x i8] c"void thread_startup(long)\00", align 1
@global_barrierPtr = internal global %struct.thread_barrier* null, align 8
@.str.5.173 = private unnamed_addr constant [26 x i8] c"global_barrierPtr == NULL\00", align 1
@.str.11.174 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@__PRETTY_FUNCTION__.thread_barrier_alloc = private unnamed_addr constant [45 x i8] c"thread_barrier_t *thread_barrier_alloc(long)\00", align 1
@.str.12.175 = private unnamed_addr constant [35 x i8] c"(numThread & (numThread - 1)) == 0\00", align 1
@.str.6.176 = private unnamed_addr constant [18 x i8] c"global_barrierPtr\00", align 1
@global_threadId = internal global i32 0, align 4
@global_threadIds = internal global i64* null, align 8
@.str.7.177 = private unnamed_addr constant [25 x i8] c"global_threadIds == NULL\00", align 1
@.str.8.178 = private unnamed_addr constant [17 x i8] c"global_threadIds\00", align 1
@global_threads = internal global i64* null, align 8
@.str.9.179 = private unnamed_addr constant [23 x i8] c"global_threads == NULL\00", align 1
@.str.10.180 = private unnamed_addr constant [15 x i8] c"global_threads\00", align 1
@global_threadAttr = internal global %union.pthread_attr_t zeroinitializer, align 8
@global_funcPtr = internal global void (i8*)* null, align 8
@global_argPtr = internal global i8* null, align 8
@global_memoryPtr = global %struct.memory* null, align 8
@.str.201 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@.str.1.202 = private unnamed_addr constant [9 x i8] c"memory.c\00", align 1
@__PRETTY_FUNCTION__.memory_init = private unnamed_addr constant [39 x i8] c"bool_t memory_init(long, size_t, long)\00", align 1
@.str.2.203 = private unnamed_addr constant [13 x i8] c"capacity > 0\00", align 1
@__PRETTY_FUNCTION__.allocBlock = private unnamed_addr constant [28 x i8] c"block_t *allocBlock(size_t)\00", align 1
@.str.3.204 = private unnamed_addr constant [29 x i8] c"(size + numByte) <= capacity\00", align 1
@__PRETTY_FUNCTION__.getMemoryFromBlock = private unnamed_addr constant [44 x i8] c"void *getMemoryFromBlock(block_t *, size_t)\00", align 1

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
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #15, !srcloc !1
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
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %28

; <label>:28                                      ; preds = %27, %25
  call void (...) bitcast (void ()* @RTM_spinlock_init to void (...)*)()
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %8)
  br label %29

; <label>:29                                      ; preds = %28
  call void @thread_startup(i64 %8)
  %30 = call %struct.random* (...) bitcast (%struct.random* ()* @random_alloc to %struct.random* (...)*)()
  %31 = icmp ne %struct.random* %30, null
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %29
  br label %35

; <label>:33                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 206, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 215, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 218, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #14
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
  %72 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #6
  %73 = bitcast %struct.sequencer* %50 to i8*
  call void @thread_start(void (i8*)* @sequencer_run, i8* %73)
  %74 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #6
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
  %98 = call i32 @strcmp(i8* %43, i8* %97) #16
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
  %109 = call i64 @strlen(i8* %97) #16
  %110 = call i64 @strlen(i8* %43) #16
  %111 = icmp uge i64 %109, %110
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %106
  br label %115

; <label>:113                                     ; preds = %106
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 255, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #14
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
  call void (...) bitcast (void ()* @thread_shutdown to void (...)*)()
  call void (...) bitcast (void ()* @RTM_output_stats to void (...)*)()
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
  %3 = call i32 @getopt(i32 %1, i8** %argv, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)) #6
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
  %9 = call i64 @atol(i8* %8) #16
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
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

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
  call void @exit(i32 1) #14
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #3

declare i32 @puts(i8*) #3

declare void @profiler_print_stats()

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #5 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %__level) #15, !srcloc !2
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
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

declare void @SimStartup(...) #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i64 @getWorkItemCount(...) #3

; Function Attrs: nounwind uwtable
define %struct.sequencer* @sequencer_alloc(i64 %geneLength, i64 %segmentLength, %struct.segments* %segmentsPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sub nsw i64 %geneLength, %segmentLength
  %2 = add nsw i64 %1, 1
  %3 = call noalias i8* @malloc(i64 64) #6
  %4 = bitcast i8* %3 to %struct.sequencer*
  %5 = icmp eq %struct.sequencer* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %91

; <label>:7                                       ; preds = %0
  %8 = call %struct.hashtable* @hashtable_alloc(i64 %geneLength, i64 (i8*)* @hashSegment, i64 (%struct.pair*, %struct.pair*)* @compareSegment, i64 -1, i64 -1)
  %9 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 2
  store %struct.hashtable* %8, %struct.hashtable** %9, align 8
  %10 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 2
  %11 = load %struct.hashtable*, %struct.hashtable** %10, align 8
  %12 = icmp eq %struct.hashtable* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %7
  br label %91

; <label>:14                                      ; preds = %7
  %15 = mul i64 %2, 16
  %16 = call noalias i8* @malloc(i64 %15) #6
  %17 = bitcast i8* %16 to %struct.endInfoEntry*
  %18 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 3
  store %struct.endInfoEntry* %17, %struct.endInfoEntry** %18, align 8
  %19 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 3
  br label %20

; <label>:20                                      ; preds = %27, %14
  %i.0 = phi i64 [ 0, %14 ], [ %28, %27 ]
  %21 = icmp slt i64 %i.0, %2
  br i1 %21, label %22, label %29

; <label>:22                                      ; preds = %20
  %23 = load %struct.endInfoEntry*, %struct.endInfoEntry** %19, align 8
  %24 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %23, i64 %i.0
  %25 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %24, i32 0, i32 0
  store i64 1, i64* %25, align 8
  %26 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %24, i32 0, i32 1
  store i64 1, i64* %26, align 8
  br label %27

; <label>:27                                      ; preds = %22
  %28 = add nsw i64 %i.0, 1
  br label %20

; <label>:29                                      ; preds = %20
  %30 = mul i64 %segmentLength, 8
  %31 = call noalias i8* @malloc(i64 %30) #6
  %32 = bitcast i8* %31 to %struct.table**
  %33 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 4
  store %struct.table** %32, %struct.table*** %33, align 8
  %34 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 4
  %35 = load %struct.table**, %struct.table*** %34, align 8
  %36 = icmp eq %struct.table** %35, null
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %29
  br label %91

; <label>:38                                      ; preds = %29
  %39 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 4
  %40 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 4
  br label %41

; <label>:41                                      ; preds = %53, %38
  %i.1 = phi i64 [ 1, %38 ], [ %54, %53 ]
  %42 = icmp slt i64 %i.1, %segmentLength
  br i1 %42, label %43, label %55

; <label>:43                                      ; preds = %41
  %44 = call %struct.table* @table_alloc(i64 %geneLength, i64 (i8*, i8*)* null)
  %45 = load %struct.table**, %struct.table*** %39, align 8
  %46 = getelementptr inbounds %struct.table*, %struct.table** %45, i64 %i.1
  store %struct.table* %44, %struct.table** %46, align 8
  %47 = load %struct.table**, %struct.table*** %40, align 8
  %48 = getelementptr inbounds %struct.table*, %struct.table** %47, i64 %i.1
  %49 = load %struct.table*, %struct.table** %48, align 8
  %50 = icmp eq %struct.table* %49, null
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %43
  br label %91

; <label>:52                                      ; preds = %43
  br label %53

; <label>:53                                      ; preds = %52
  %54 = add nsw i64 %i.1, 1
  br label %41

; <label>:55                                      ; preds = %41
  %56 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 7
  store i64 %segmentLength, i64* %56, align 8
  %57 = mul i64 %2, 64
  %58 = call noalias i8* @malloc(i64 %57) #6
  %59 = bitcast i8* %58 to %struct.constructEntry*
  %60 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 5
  store %struct.constructEntry* %59, %struct.constructEntry** %60, align 8
  %61 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 5
  %62 = load %struct.constructEntry*, %struct.constructEntry** %61, align 8
  %63 = icmp eq %struct.constructEntry* %62, null
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %55
  br label %91

; <label>:65                                      ; preds = %55
  %66 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 5
  br label %67

; <label>:67                                      ; preds = %80, %65
  %i.2 = phi i64 [ 0, %65 ], [ %81, %80 ]
  %68 = icmp slt i64 %i.2, %2
  br i1 %68, label %69, label %82

; <label>:69                                      ; preds = %67
  %70 = load %struct.constructEntry*, %struct.constructEntry** %66, align 8
  %71 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %70, i64 %i.2
  %72 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 0
  store i64 1, i64* %72, align 8
  %73 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 1
  store i8* null, i8** %73, align 8
  %74 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 3
  store %struct.constructEntry* %71, %struct.constructEntry** %75, align 8
  %76 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 4
  store %struct.constructEntry* null, %struct.constructEntry** %76, align 8
  %77 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 5
  store %struct.constructEntry* %71, %struct.constructEntry** %77, align 8
  %78 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 6
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i32 0, i32 7
  store i64 %segmentLength, i64* %79, align 8
  br label %80

; <label>:80                                      ; preds = %69
  %81 = add nsw i64 %i.2, 1
  br label %67

; <label>:82                                      ; preds = %67
  %83 = call %struct.table* @table_alloc(i64 %geneLength, i64 (i8*, i8*)* null)
  %84 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 6
  store %struct.table* %83, %struct.table** %84, align 8
  %85 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 6
  %86 = load %struct.table*, %struct.table** %85, align 8
  %87 = icmp eq %struct.table* %86, null
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %82
  br label %91

; <label>:89                                      ; preds = %82
  %90 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %4, i32 0, i32 1
  store %struct.segments* %segmentsPtr, %struct.segments** %90, align 8
  br label %91

; <label>:91                                      ; preds = %89, %88, %64, %51, %37, %13, %6
  %.0 = phi %struct.sequencer* [ null, %6 ], [ null, %13 ], [ null, %37 ], [ null, %51 ], [ null, %64 ], [ null, %88 ], [ %4, %89 ]
  ret %struct.sequencer* %.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @hashSegment(i8* %keyPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @hash_sdbm(i8* %keyPtr)
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @compareSegment(%struct.pair* %a, %struct.pair* %b) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.pair, %struct.pair* %a, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds %struct.pair, %struct.pair* %b, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strcmp(i8* %2, i8* %4) #16
  %6 = sext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define void @sequencer_run(i8* %argPtr) #0 {
  %structArg3 = alloca { i64, i64, %struct.vector*, %struct.hashtable* }
  %structArg = alloca { i64, %struct.constructEntry*, i64, i64 }
  %it = alloca %struct.list_node*, align 8
  %it16 = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)()
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1
  br label %4

; <label>:4                                       ; preds = %0
  %5 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)()
  %6 = trunc i64 %5 to i32
  call void @SimRoiStart(i32 %6)
  br label %7

; <label>:7                                       ; preds = %4
  %8 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)()
  %9 = bitcast i8* %argPtr to %struct.sequencer*
  %10 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 2
  %11 = load %struct.hashtable*, %struct.hashtable** %10, align 8
  %12 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 3
  %13 = load %struct.endInfoEntry*, %struct.endInfoEntry** %12, align 8
  %14 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 4
  %15 = load %struct.table**, %struct.table*** %14, align 8
  %16 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 5
  %17 = load %struct.constructEntry*, %struct.constructEntry** %16, align 8
  %18 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 6
  %19 = load %struct.table*, %struct.table** %18, align 8
  %20 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 1
  %21 = load %struct.segments*, %struct.segments** %20, align 8
  %22 = icmp ne %struct.segments* %21, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %7
  br label %26

; <label>:24                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 257, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %26

; <label>:26                                      ; preds = %25, %23
  %27 = getelementptr inbounds %struct.segments, %struct.segments* %21, i32 0, i32 2
  %28 = load %struct.vector*, %struct.vector** %27, align 8
  %29 = call i64 @vector_getSize(%struct.vector* %28)
  %30 = getelementptr inbounds %struct.segments, %struct.segments* %21, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)()
  %33 = sdiv i64 %32, 2
  %34 = add nsw i64 %29, %33
  %35 = sdiv i64 %34, %32
  %36 = mul nsw i64 %8, %35
  %37 = sub nsw i64 %32, 1
  %38 = icmp eq i64 %8, %37
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %26
  br label %42

; <label>:40                                      ; preds = %26
  %41 = add nsw i64 %36, %35
  br label %42

; <label>:42                                      ; preds = %40, %39
  %i_stop.0 = phi i64 [ %29, %39 ], [ %41, %40 ]
  %43 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 0
  %44 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  br label %45

; <label>:45                                      ; preds = %98, %42
  %i.0 = phi i64 [ %36, %42 ], [ %99, %98 ]
  %46 = icmp slt i64 %i.0, %i_stop.0
  br i1 %46, label %47, label %100

; <label>:47                                      ; preds = %45
  br label %48

; <label>:48                                      ; preds = %47
  %49 = load i32, i32* %43, align 8
  %50 = call i32 @workBegin(i32 0, i32 %49)
  store i32 %50, i32* %44, align 4
  br label %51

; <label>:51                                      ; preds = %48
  br label %52

; <label>:52                                      ; preds = %74, %51
  %tries.0 = phi i32 [ 9, %51 ], [ %67, %74 ]
  br label %53

; <label>:53                                      ; preds = %65, %52
  %54 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %55 = icmp ne i64 %54, 0
  %56 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %56, i32 0, i32 3, i32 1)
  %57 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 0
  %58 = bitcast i64* %57 to i8*
  call void @llvm.prefetch(i8* %58, i32 0, i32 3, i32 1)
  %59 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 1
  %60 = bitcast i64* %59 to i8*
  call void @llvm.prefetch(i8* %60, i32 0, i32 3, i32 1)
  %61 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 2
  %62 = bitcast %struct.vector** %61 to i8*
  call void @llvm.prefetch(i8* %62, i32 0, i32 3, i32 1)
  %63 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 3
  %64 = bitcast %struct.hashtable** %63 to i8*
  call void @llvm.prefetch(i8* %64, i32 0, i32 3, i32 1)
  br i1 %55, label %65, label %66

; <label>:65                                      ; preds = %53
  call void @llvm.x86.sse2.pause() #6
  br label %53

; <label>:66                                      ; preds = %53
  %67 = add nsw i32 %tries.0, -1
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %70

; <label>:69                                      ; preds = %66
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %80

; <label>:70                                      ; preds = %66
  %71 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #6, !srcloc !3
  %72 = trunc i64 %71 to i32
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %70
  br label %52

; <label>:75                                      ; preds = %70
  %76 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %._crit_edge

._crit_edge:                                      ; preds = %75
  br label %79

; <label>:78                                      ; preds = %75
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %79

; <label>:79                                      ; preds = %78, %._crit_edge
  br label %80

; <label>:80                                      ; preds = %79, %69
  %81 = add nsw i64 %i.0, 12
  %82 = icmp slt i64 %i_stop.0, %81
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %80
  br label %85

; <label>:84                                      ; preds = %80
  br label %85

; <label>:85                                      ; preds = %84, %83
  %.reg2mem25.0 = phi i64 [ %i_stop.0, %83 ], [ %81, %84 ]
  br label %codeRepl2

codeRepl2:                                        ; preds = %85
  %gep_i.0 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 0
  store i64 %i.0, i64* %gep_i.0
  %gep_.reg2mem25.0 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 1
  store i64 %.reg2mem25.0, i64* %gep_.reg2mem25.0
  %gep_4 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 2
  store %struct.vector* %28, %struct.vector** %gep_4
  %gep_5 = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 3
  store %struct.hashtable* %11, %struct.hashtable** %gep_5
  %gep_i.0.i = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 0
  %loadgep_i.0.i = load i64, i64* %gep_i.0.i
  %gep_.reg2mem25.0.i = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 1
  %loadgep_.reg2mem25.0.i = load i64, i64* %gep_.reg2mem25.0.i
  %gep_.i = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 2
  %loadgep_.i = load %struct.vector*, %struct.vector** %gep_.i
  %gep_1.i = getelementptr { i64, i64, %struct.vector*, %struct.hashtable* }, { i64, i64, %struct.vector*, %struct.hashtable* }* %structArg3, i32 0, i32 3
  %loadgep_2.i = load %struct.hashtable*, %struct.hashtable** %gep_1.i
  br label %__kernel__sequencer_run1.i

__kernel__sequencer_run1.i:                       ; preds = %87, %codeRepl2
  %ii.0.i = phi i64 [ %loadgep_i.0.i, %codeRepl2 ], [ %90, %87 ]
  %86 = icmp slt i64 %ii.0.i, %loadgep_.reg2mem25.0.i
  br i1 %86, label %87, label %sequencer_run___kernel__sequencer_run1_clone.exit

; <label>:87                                      ; preds = %__kernel__sequencer_run1.i
  %88 = call i8* @vector_at(%struct.vector* %loadgep_.i, i64 %ii.0.i) #6
  %89 = call i64 @TMhashtable_insert(%struct.hashtable* %loadgep_2.i, i8* %88, i8* %88) #6
  %90 = add nsw i64 %ii.0.i, 1
  br label %__kernel__sequencer_run1.i, !llvm.loop !5

sequencer_run___kernel__sequencer_run1_clone.exit: ; preds = %__kernel__sequencer_run1.i
  br label %91

; <label>:91                                      ; preds = %sequencer_run___kernel__sequencer_run1_clone.exit
  %92 = icmp sgt i32 %67, 0
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %91
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #6, !srcloc !7
  br label %95

; <label>:94                                      ; preds = %91
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %95

; <label>:95                                      ; preds = %94, %93
  br label %96

; <label>:96                                      ; preds = %95
  call void @workEnd(i32 0, i32 0)
  br label %97

; <label>:97                                      ; preds = %96
  br label %98

; <label>:98                                      ; preds = %97
  %99 = add nsw i64 %i.0, 12
  br label %45

; <label>:100                                     ; preds = %45
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)()
  %101 = call i64 @hashtable_getSize(%struct.hashtable* %11)
  %102 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sdiv i64 %32, 2
  %105 = add nsw i64 %103, %104
  %106 = sdiv i64 %105, %32
  %107 = mul nsw i64 %8, %106
  %108 = sub nsw i64 %32, 1
  %109 = icmp eq i64 %8, %108
  br i1 %109, label %110, label %111

; <label>:110                                     ; preds = %100
  br label %113

; <label>:111                                     ; preds = %100
  %112 = add nsw i64 %107, %106
  br label %113

; <label>:113                                     ; preds = %111, %110
  %i_stop.1 = phi i64 [ %103, %110 ], [ %112, %111 ]
  %114 = sdiv i64 %32, 2
  %115 = add nsw i64 %101, %114
  %116 = sdiv i64 %115, %32
  %117 = mul nsw i64 %8, %116
  %118 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 0
  %119 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %120 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 0
  br label %121

; <label>:121                                     ; preds = %284, %113
  %i.1 = phi i64 [ %107, %113 ], [ %285, %284 ]
  %entryIndex.0 = phi i64 [ %117, %113 ], [ %entryIndex.1, %284 ]
  %122 = icmp slt i64 %i.1, %i_stop.1
  br i1 %122, label %123, label %286

; <label>:123                                     ; preds = %121
  br label %124

; <label>:124                                     ; preds = %123
  %125 = load i32, i32* %118, align 8
  %126 = call i32 @workBegin(i32 0, i32 %125)
  store i32 %126, i32* %119, align 4
  br label %127

; <label>:127                                     ; preds = %124
  %128 = load %struct.list**, %struct.list*** %120, align 8
  %129 = getelementptr inbounds %struct.list*, %struct.list** %128, i64 %i.1
  %130 = load %struct.list*, %struct.list** %129, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %130)
  br label %131

; <label>:131                                     ; preds = %280, %127
  %entryIndex.1 = phi i64 [ %entryIndex.0, %127 ], [ %185, %280 ]
  %132 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %130) #16
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %281

; <label>:134                                     ; preds = %131
  %135 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %130)
  %136 = bitcast i8* %135 to %struct.pair*
  %137 = getelementptr inbounds %struct.pair, %struct.pair* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  br label %139

; <label>:139                                     ; preds = %161, %134
  %tries8.0 = phi i32 [ 9, %134 ], [ %154, %161 ]
  br label %140

; <label>:140                                     ; preds = %152, %139
  %141 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %142 = icmp ne i64 %141, 0
  %143 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %143, i32 0, i32 3, i32 1)
  %144 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 0
  %145 = bitcast i64* %144 to i8*
  call void @llvm.prefetch(i8* %145, i32 0, i32 3, i32 1)
  %146 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 1
  %147 = bitcast %struct.constructEntry** %146 to i8*
  call void @llvm.prefetch(i8* %147, i32 0, i32 3, i32 1)
  %148 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 2
  %149 = bitcast i64* %148 to i8*
  call void @llvm.prefetch(i8* %149, i32 0, i32 3, i32 1)
  %150 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 3
  %151 = bitcast i64* %150 to i8*
  call void @llvm.prefetch(i8* %151, i32 0, i32 3, i32 1)
  br i1 %142, label %152, label %153

; <label>:152                                     ; preds = %140
  call void @llvm.x86.sse2.pause() #6
  br label %140

; <label>:153                                     ; preds = %140
  %154 = add nsw i32 %tries8.0, -1
  %155 = icmp sle i32 %154, 0
  br i1 %155, label %156, label %157

; <label>:156                                     ; preds = %153
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %167

; <label>:157                                     ; preds = %153
  %158 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #6, !srcloc !3
  %159 = trunc i64 %158 to i32
  %160 = icmp ne i32 %159, -1
  br i1 %160, label %161, label %162

; <label>:161                                     ; preds = %157
  br label %139

; <label>:162                                     ; preds = %157
  %163 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %._crit_edge2

._crit_edge2:                                     ; preds = %162
  br label %166

; <label>:165                                     ; preds = %162
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %166

; <label>:166                                     ; preds = %165, %._crit_edge2
  br label %167

; <label>:167                                     ; preds = %166, %156
  br label %codeRepl

codeRepl:                                         ; preds = %167
  %gep_entryIndex.1 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 0
  store i64 %entryIndex.1, i64* %gep_entryIndex.1
  %gep_ = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 1
  store %struct.constructEntry* %17, %struct.constructEntry** %gep_
  %gep_1 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 2
  store i64 %101, i64* %gep_1
  %gep_entryIndex.1.i = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 0
  %loadgep_entryIndex.1.i = load i64, i64* %gep_entryIndex.1.i
  %gep_.i1 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 1
  %loadgep_.i2 = load %struct.constructEntry*, %struct.constructEntry** %gep_.i1
  %gep_1.i3 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 2
  %loadgep_2.i4 = load i64, i64* %gep_1.i3
  br label %__kernel__sequencer_run0.i

__kernel__sequencer_run0.i:                       ; preds = %172, %codeRepl
  %entryIndex.2.i = phi i64 [ %loadgep_entryIndex.1.i, %codeRepl ], [ %174, %172 ]
  %168 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %loadgep_.i2, i64 %entryIndex.2.i
  %169 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %sequencer_run___kernel__sequencer_run0_clone.exit

; <label>:172                                     ; preds = %__kernel__sequencer_run0.i
  %173 = add nsw i64 %entryIndex.2.i, 1
  %174 = srem i64 %173, %loadgep_2.i4
  br label %__kernel__sequencer_run0.i, !llvm.loop !8

sequencer_run___kernel__sequencer_run0_clone.exit: ; preds = %__kernel__sequencer_run0.i
  %gep_entryIndex.2.i = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 3
  store i64 %entryIndex.2.i, i64* %gep_entryIndex.2.i, !GlobalAlias !9
  %gep_reload_entryIndex.2 = getelementptr { i64, %struct.constructEntry*, i64, i64 }, { i64, %struct.constructEntry*, i64, i64 }* %structArg, i32 0, i32 3
  %entryIndex.2.reload = load i64, i64* %gep_reload_entryIndex.2
  br label %175

; <label>:175                                     ; preds = %sequencer_run___kernel__sequencer_run0_clone.exit
  %176 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %entryIndex.2.reload
  %177 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %176, i32 0, i32 1
  store i8* %138, i8** %177, align 8
  %178 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %176, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = icmp sgt i32 %154, 0
  br i1 %180, label %181, label %182

; <label>:181                                     ; preds = %175
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #6, !srcloc !7
  br label %183

; <label>:182                                     ; preds = %175
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %183

; <label>:183                                     ; preds = %182, %181
  %184 = add nsw i64 %entryIndex.2.reload, 1
  %185 = srem i64 %184, %101
  %186 = getelementptr inbounds i8, i8* %138, i64 1
  %187 = call i64 @hashString(i8* %186)
  %188 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %176, i32 0, i32 2
  store i64 %187, i64* %188, align 8
  %189 = bitcast %struct.constructEntry* %176 to i8*
  br label %190

; <label>:190                                     ; preds = %237, %183
  %j6.0 = phi i64 [ 1, %183 ], [ %238, %237 ]
  %startHash.0 = phi i64 [ 0, %183 ], [ %201, %237 ]
  %191 = icmp slt i64 %j6.0, %31
  br i1 %191, label %192, label %239

; <label>:192                                     ; preds = %190
  %193 = sub nsw i64 %j6.0, 1
  %194 = getelementptr inbounds i8, i8* %138, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i64
  %197 = shl i64 %startHash.0, 6
  %198 = add i64 %196, %197
  %199 = shl i64 %startHash.0, 16
  %200 = add i64 %198, %199
  %201 = sub i64 %200, %startHash.0
  br label %202

; <label>:202                                     ; preds = %218, %192
  %tries10.0 = phi i32 [ 9, %192 ], [ %211, %218 ]
  br label %203

; <label>:203                                     ; preds = %209, %202
  %204 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %205 = icmp ne i64 %204, 0
  %206 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %206, i32 0, i32 3, i32 1)
  %207 = getelementptr inbounds %struct.table*, %struct.table** %15, i64 %j6.0
  %208 = bitcast %struct.table** %207 to i8*
  call void @llvm.prefetch(i8* %208, i32 0, i32 3, i32 1)
  br i1 %205, label %209, label %210

; <label>:209                                     ; preds = %203
  call void @llvm.x86.sse2.pause() #6
  br label %203

; <label>:210                                     ; preds = %203
  %211 = add nsw i32 %tries10.0, -1
  %212 = icmp sle i32 %211, 0
  br i1 %212, label %213, label %214

; <label>:213                                     ; preds = %210
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %224

; <label>:214                                     ; preds = %210
  %215 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #6, !srcloc !3
  %216 = trunc i64 %215 to i32
  %217 = icmp ne i32 %216, -1
  br i1 %217, label %218, label %219

; <label>:218                                     ; preds = %214
  br label %202

; <label>:219                                     ; preds = %214
  %220 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %._crit_edge3

._crit_edge3:                                     ; preds = %219
  br label %223

; <label>:222                                     ; preds = %219
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %223

; <label>:223                                     ; preds = %222, %._crit_edge3
  br label %224

; <label>:224                                     ; preds = %223, %213
  %225 = getelementptr inbounds %struct.table*, %struct.table** %15, i64 %j6.0
  %226 = load %struct.table*, %struct.table** %225, align 8
  %227 = call i64 @TMtable_insert(%struct.table* %226, i64 %201, i8* %189)
  %228 = icmp sgt i32 %211, 0
  br i1 %228, label %229, label %230

; <label>:229                                     ; preds = %224
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #6, !srcloc !7
  br label %231

; <label>:230                                     ; preds = %224
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %231

; <label>:231                                     ; preds = %230, %229
  %232 = icmp ne i64 %227, 0
  br i1 %232, label %233, label %234

; <label>:233                                     ; preds = %231
  br label %236

; <label>:234                                     ; preds = %231
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 405, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:236                                     ; preds = %233
  br label %237

; <label>:237                                     ; preds = %236
  %238 = add nsw i64 %j6.0, 1
  br label %190

; <label>:239                                     ; preds = %190
  %240 = sub nsw i64 %j6.0, 1
  %241 = getelementptr inbounds i8, i8* %138, i64 %240
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i64
  %244 = shl i64 %startHash.0, 6
  %245 = add i64 %243, %244
  %246 = shl i64 %startHash.0, 16
  %247 = add i64 %245, %246
  %248 = sub i64 %247, %startHash.0
  br label %249

; <label>:249                                     ; preds = %263, %239
  %tries12.0 = phi i32 [ 9, %239 ], [ %256, %263 ]
  br label %250

; <label>:250                                     ; preds = %254, %249
  %251 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %252 = icmp ne i64 %251, 0
  %253 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %253, i32 0, i32 3, i32 1)
  br i1 %252, label %254, label %255

; <label>:254                                     ; preds = %250
  call void @llvm.x86.sse2.pause() #6
  br label %250

; <label>:255                                     ; preds = %250
  %256 = add nsw i32 %tries12.0, -1
  %257 = icmp sle i32 %256, 0
  br i1 %257, label %258, label %259

; <label>:258                                     ; preds = %255
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %269

; <label>:259                                     ; preds = %255
  %260 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 0, i64 3, i64 4294967295) #6, !srcloc !3
  %261 = trunc i64 %260 to i32
  %262 = icmp ne i32 %261, -1
  br i1 %262, label %263, label %264

; <label>:263                                     ; preds = %259
  br label %249

; <label>:264                                     ; preds = %259
  %265 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %._crit_edge4

._crit_edge4:                                     ; preds = %264
  br label %268

; <label>:267                                     ; preds = %264
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %268

; <label>:268                                     ; preds = %267, %._crit_edge4
  br label %269

; <label>:269                                     ; preds = %268, %258
  %270 = bitcast %struct.constructEntry* %176 to i8*
  %271 = call i64 @TMtable_insert(%struct.table* %19, i64 %248, i8* %270)
  %272 = icmp sgt i32 %256, 0
  br i1 %272, label %273, label %274

; <label>:273                                     ; preds = %269
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 3) #6, !srcloc !7
  br label %275

; <label>:274                                     ; preds = %269
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %275

; <label>:275                                     ; preds = %274, %273
  %276 = icmp ne i64 %271, 0
  br i1 %276, label %277, label %278

; <label>:277                                     ; preds = %275
  br label %280

; <label>:278                                     ; preds = %275
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 418, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:280                                     ; preds = %277
  br label %131

; <label>:281                                     ; preds = %131
  br label %282

; <label>:282                                     ; preds = %281
  call void @workEnd(i32 0, i32 0)
  br label %283

; <label>:283                                     ; preds = %282
  br label %284

; <label>:284                                     ; preds = %283
  %285 = add nsw i64 %i.1, 1
  br label %121

; <label>:286                                     ; preds = %121
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)()
  %287 = sub nsw i64 %31, 1
  %288 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 0
  %289 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %290 = sdiv i64 %32, 2
  %291 = add nsw i64 %101, %290
  %292 = sub nsw i64 %32, 1
  %293 = icmp eq i64 %8, %292
  %294 = icmp eq i64 %8, 0
  %295 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 0
  %296 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 0
  %298 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 0
  br label %300

; <label>:300                                     ; preds = %514, %286
  %substringLength.0 = phi i64 [ %287, %286 ], [ %515, %514 ]
  %301 = icmp sgt i64 %substringLength.0, 0
  br i1 %301, label %302, label %516

; <label>:302                                     ; preds = %300
  br label %303

; <label>:303                                     ; preds = %302
  %304 = load i32, i32* %288, align 8
  %305 = call i32 @workBegin(i32 0, i32 %304)
  store i32 %305, i32* %289, align 4
  br label %306

; <label>:306                                     ; preds = %303
  %307 = getelementptr inbounds %struct.table*, %struct.table** %15, i64 %substringLength.0
  %308 = load %struct.table*, %struct.table** %307, align 8
  %309 = getelementptr inbounds %struct.table, %struct.table* %308, i32 0, i32 0
  %310 = load %struct.list**, %struct.list*** %309, align 8
  %311 = getelementptr inbounds %struct.table, %struct.table* %308, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = sdiv i64 %291, %32
  %314 = mul nsw i64 %8, %313
  br i1 %293, label %315, label %316

; <label>:315                                     ; preds = %306
  br label %318

; <label>:316                                     ; preds = %306
  %317 = add nsw i64 %314, %313
  br label %318

; <label>:318                                     ; preds = %316, %315
  %index_stop.0 = phi i64 [ %101, %315 ], [ %317, %316 ]
  %319 = sub nsw i64 %31, %substringLength.0
  br label %320

; <label>:320                                     ; preds = %444, %318
  %entryIndex.3 = phi i64 [ %314, %318 ], [ %448, %444 ]
  %321 = icmp slt i64 %entryIndex.3, %index_stop.0
  br i1 %321, label %322, label %449

; <label>:322                                     ; preds = %320
  %323 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.3
  %324 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %328, label %327

; <label>:327                                     ; preds = %322
  br label %444

; <label>:328                                     ; preds = %322
  %329 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %entryIndex.3
  %330 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %329, i32 0, i32 1
  %331 = load i8*, i8** %330, align 8
  %332 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %329, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = urem i64 %333, %312
  %335 = getelementptr inbounds %struct.list*, %struct.list** %310, i64 %334
  %336 = load %struct.list*, %struct.list** %335, align 8
  call void @list_iter_reset(%struct.list_node** %it16, %struct.list* %336)
  %337 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %329, i32 0, i32 3
  %338 = getelementptr inbounds i8, i8* %331, i64 %319
  %339 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.3
  %340 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.3
  %342 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %329, i32 0, i32 3
  %344 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %329, i32 0, i32 4
  %345 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %329, i32 0, i32 4
  %346 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %329, i32 0, i32 6
  %347 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %329, i32 0, i32 6
  %348 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.3
  %349 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %348, i32 0, i32 0
  br label %350

; <label>:350                                     ; preds = %442, %328
  %351 = call i64 @list_iter_hasNext(%struct.list_node** %it16, %struct.list* %336) #16
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %.loopexit1

; <label>:353                                     ; preds = %350
  %354 = call i8* @list_iter_next(%struct.list_node** %it16, %struct.list* %336)
  %355 = bitcast i8* %354 to %struct.constructEntry*
  %356 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %355, i32 0, i32 1
  %357 = load i8*, i8** %356, align 8
  br label %358

; <label>:358                                     ; preds = %383, %353
  %tries18.0 = phi i32 [ 9, %353 ], [ %376, %383 ]
  br label %359

; <label>:359                                     ; preds = %374, %358
  %360 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %361 = icmp ne i64 %360, 0
  %362 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %362, i32 0, i32 3, i32 1)
  %363 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %355, i32 0, i32 0
  %364 = bitcast i64* %363 to i8*
  call void @llvm.prefetch(i8* %364, i32 0, i32 3, i32 1)
  %365 = bitcast %struct.constructEntry** %337 to i8*
  call void @llvm.prefetch(i8* %365, i32 0, i32 3, i32 1)
  %366 = bitcast i64* %342 to i8*
  call void @llvm.prefetch(i8* %366, i32 0, i32 3, i32 1)
  %367 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %355, i32 0, i32 5
  %368 = bitcast %struct.constructEntry** %367 to i8*
  call void @llvm.prefetch(i8* %368, i32 0, i32 3, i32 1)
  %369 = bitcast %struct.constructEntry** %343 to i8*
  call void @llvm.prefetch(i8* %369, i32 0, i32 3, i32 1)
  %370 = bitcast %struct.constructEntry** %345 to i8*
  call void @llvm.prefetch(i8* %370, i32 0, i32 3, i32 1)
  %371 = bitcast i64* %347 to i8*
  call void @llvm.prefetch(i8* %371, i32 0, i32 3, i32 1)
  %372 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %355, i32 0, i32 7
  %373 = bitcast i64* %372 to i8*
  call void @llvm.prefetch(i8* %373, i32 0, i32 3, i32 1)
  br i1 %361, label %374, label %375

; <label>:374                                     ; preds = %359
  call void @llvm.x86.sse2.pause() #6
  br label %359

; <label>:375                                     ; preds = %359
  %376 = add nsw i32 %tries18.0, -1
  %377 = icmp sle i32 %376, 0
  br i1 %377, label %378, label %379

; <label>:378                                     ; preds = %375
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %389

; <label>:379                                     ; preds = %375
  %380 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 4, i64 0, i64 4, i64 4294967295) #6, !srcloc !3
  %381 = trunc i64 %380 to i32
  %382 = icmp ne i32 %381, -1
  br i1 %382, label %383, label %384

; <label>:383                                     ; preds = %379
  br label %358

; <label>:384                                     ; preds = %379
  %385 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %._crit_edge5

._crit_edge5:                                     ; preds = %384
  br label %388

; <label>:387                                     ; preds = %384
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %388

; <label>:388                                     ; preds = %387, %._crit_edge5
  br label %389

; <label>:389                                     ; preds = %388, %378
  %390 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %355, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %._crit_edge6

._crit_edge6:                                     ; preds = %389
  br label %434

; <label>:393                                     ; preds = %389
  %394 = load %struct.constructEntry*, %struct.constructEntry** %337, align 8
  %395 = icmp ne %struct.constructEntry* %394, %355
  br i1 %395, label %396, label %._crit_edge7

._crit_edge7:                                     ; preds = %393
  br label %434

; <label>:396                                     ; preds = %393
  %397 = call i32 @strncmp(i8* %357, i8* %338, i64 %substringLength.0) #16
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %._crit_edge8

._crit_edge8:                                     ; preds = %396
  br label %434

; <label>:399                                     ; preds = %396
  %400 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %355, i32 0, i32 0
  store i64 0, i64* %400, align 8
  %401 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %355, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  store i64 0, i64* %340, align 8
  %403 = load i64, i64* %342, align 8
  %404 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %355, i32 0, i32 5
  %405 = load %struct.constructEntry*, %struct.constructEntry** %404, align 8
  %406 = load %struct.constructEntry*, %struct.constructEntry** %343, align 8
  %407 = icmp ne %struct.constructEntry* %405, null
  br i1 %407, label %408, label %409

; <label>:408                                     ; preds = %399
  br label %411

; <label>:409                                     ; preds = %399
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3.36, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 506, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:411                                     ; preds = %408
  %412 = icmp ne %struct.constructEntry* %406, null
  br i1 %412, label %413, label %414

; <label>:413                                     ; preds = %411
  br label %416

; <label>:414                                     ; preds = %411
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.37, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 507, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:416                                     ; preds = %413
  %417 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %405, i32 0, i32 3
  store %struct.constructEntry* %406, %struct.constructEntry** %417, align 8
  %418 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %405, i32 0, i32 3
  %419 = load %struct.constructEntry*, %struct.constructEntry** %418, align 8
  store %struct.constructEntry* %355, %struct.constructEntry** %344, align 8
  %420 = load %struct.constructEntry*, %struct.constructEntry** %345, align 8
  %421 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %406, i32 0, i32 5
  store %struct.constructEntry* %405, %struct.constructEntry** %421, align 8
  %422 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %406, i32 0, i32 5
  %423 = load %struct.constructEntry*, %struct.constructEntry** %422, align 8
  store i64 %substringLength.0, i64* %346, align 8
  %424 = load i64, i64* %347, align 8
  %425 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %406, i32 0, i32 7
  %426 = load i64, i64* %425, align 8
  %427 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %355, i32 0, i32 7
  %428 = load i64, i64* %427, align 8
  %429 = add nsw i64 %426, %428
  %430 = sub nsw i64 %429, %substringLength.0
  %431 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %406, i32 0, i32 7
  store i64 %430, i64* %431, align 8
  %432 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %406, i32 0, i32 7
  %433 = load i64, i64* %432, align 8
  br label %434

; <label>:434                                     ; preds = %416, %._crit_edge8, %._crit_edge7, %._crit_edge6
  %435 = icmp sgt i32 %376, 0
  br i1 %435, label %436, label %437

; <label>:436                                     ; preds = %434
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 4) #6, !srcloc !7
  br label %438

; <label>:437                                     ; preds = %434
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %438

; <label>:438                                     ; preds = %437, %436
  %439 = load i64, i64* %349, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %442, label %441

; <label>:441                                     ; preds = %438
  br label %443

; <label>:442                                     ; preds = %438
  br label %350

.loopexit1:                                       ; preds = %350
  br label %443

; <label>:443                                     ; preds = %.loopexit1, %441
  br label %444

; <label>:444                                     ; preds = %443, %327
  %445 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %entryIndex.3
  %446 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  %448 = add nsw i64 %entryIndex.3, %447
  br label %320

; <label>:449                                     ; preds = %320
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)()
  br i1 %294, label %450, label %._crit_edge9

._crit_edge9:                                     ; preds = %449
  br label %511

; <label>:450                                     ; preds = %449
  %451 = icmp sgt i64 %substringLength.0, 1
  br i1 %451, label %452, label %._crit_edge10

._crit_edge10:                                    ; preds = %450
  br label %510

; <label>:452                                     ; preds = %450
  %453 = sub nsw i64 %31, %substringLength.0
  %454 = add nsw i64 %453, 1
  br label %455

; <label>:455                                     ; preds = %462, %452
  %i.2 = phi i64 [ 1, %452 ], [ %466, %462 ]
  %456 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %i.2
  %457 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = icmp ne i64 %458, 0
  %460 = xor i1 %459, true
  br i1 %460, label %461, label %467

; <label>:461                                     ; preds = %455
  br label %462

; <label>:462                                     ; preds = %461
  %463 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %i.2
  %464 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %463, i32 0, i32 1
  %465 = load i64, i64* %464, align 8
  %466 = add nsw i64 %i.2, %465
  br label %455

; <label>:467                                     ; preds = %455
  store i64 %i.2, i64* %296, align 8
  %468 = load i64, i64* %298, align 8
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %._crit_edge11

._crit_edge11:                                    ; preds = %467
  br label %476

; <label>:470                                     ; preds = %467
  %471 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %299, i32 0, i32 1
  %472 = load i8*, i8** %471, align 8
  %473 = getelementptr inbounds i8, i8* %472, i64 %454
  %474 = call i64 @hashString(i8* %473)
  %475 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %299, i32 0, i32 2
  store i64 %474, i64* %475, align 8
  br label %476

; <label>:476                                     ; preds = %470, %._crit_edge11
  br label %477

; <label>:477                                     ; preds = %501, %476
  %i.3 = phi i64 [ %i.2, %476 ], [ %505, %501 ]
  %j.0 = phi i64 [ 0, %476 ], [ %j.1, %501 ]
  %478 = icmp slt i64 %i.3, %101
  br i1 %478, label %479, label %506

; <label>:479                                     ; preds = %477
  %480 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %i.3
  %481 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %480, i32 0, i32 0
  %482 = load i64, i64* %481, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %._crit_edge12

._crit_edge12:                                    ; preds = %479
  br label %500

; <label>:484                                     ; preds = %479
  %485 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %i.3
  %486 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %485, i32 0, i32 1
  %487 = load i8*, i8** %486, align 8
  %488 = getelementptr inbounds i8, i8* %487, i64 %454
  %489 = call i64 @hashString(i8* %488)
  %490 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %485, i32 0, i32 2
  store i64 %489, i64* %490, align 8
  %491 = sub nsw i64 %i.3, %j.0
  %492 = sext i32 1 to i64
  %493 = icmp sgt i64 %492, %491
  br i1 %493, label %494, label %496

; <label>:494                                     ; preds = %484
  %495 = sext i32 1 to i64
  br label %497

; <label>:496                                     ; preds = %484
  br label %497

; <label>:497                                     ; preds = %496, %494
  %.reg2mem23.0 = phi i64 [ %495, %494 ], [ %491, %496 ]
  %498 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %j.0
  %499 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %498, i32 0, i32 1
  store i64 %.reg2mem23.0, i64* %499, align 8
  br label %500

; <label>:500                                     ; preds = %497, %._crit_edge12
  %j.1 = phi i64 [ %i.3, %497 ], [ %j.0, %._crit_edge12 ]
  br label %501

; <label>:501                                     ; preds = %500
  %502 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %i.3
  %503 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %502, i32 0, i32 1
  %504 = load i64, i64* %503, align 8
  %505 = add nsw i64 %i.3, %504
  br label %477

; <label>:506                                     ; preds = %477
  %507 = sub nsw i64 %i.3, %j.0
  %508 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %13, i64 %j.0
  %509 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %508, i32 0, i32 1
  store i64 %507, i64* %509, align 8
  br label %510

; <label>:510                                     ; preds = %506, %._crit_edge10
  br label %511

; <label>:511                                     ; preds = %510, %._crit_edge9
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)()
  br label %512

; <label>:512                                     ; preds = %511
  call void @workEnd(i32 0, i32 0)
  br label %513

; <label>:513                                     ; preds = %512
  br label %514

; <label>:514                                     ; preds = %513
  %515 = add nsw i64 %substringLength.0, -1
  br label %300

; <label>:516                                     ; preds = %300
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)()
  %517 = icmp eq i64 %8, 0
  br i1 %517, label %518, label %._crit_edge13

._crit_edge13:                                    ; preds = %516
  br label %597

; <label>:518                                     ; preds = %516
  br label %519

; <label>:519                                     ; preds = %531, %518
  %i.4 = phi i64 [ 0, %518 ], [ %532, %531 ]
  %totalLength.0 = phi i64 [ 0, %518 ], [ %totalLength.1, %531 ]
  %520 = icmp slt i64 %i.4, %101
  br i1 %520, label %521, label %533

; <label>:521                                     ; preds = %519
  %522 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %i.4
  %523 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %522, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %._crit_edge14

._crit_edge14:                                    ; preds = %521
  br label %530

; <label>:526                                     ; preds = %521
  %527 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %522, i32 0, i32 7
  %528 = load i64, i64* %527, align 8
  %529 = add nsw i64 %totalLength.0, %528
  br label %530

; <label>:530                                     ; preds = %526, %._crit_edge14
  %totalLength.1 = phi i64 [ %529, %526 ], [ %totalLength.0, %._crit_edge14 ]
  br label %531

; <label>:531                                     ; preds = %530
  %532 = add nsw i64 %i.4, 1
  br label %519

; <label>:533                                     ; preds = %519
  %534 = add nsw i64 %totalLength.0, 1
  %535 = mul i64 %534, 1
  %536 = call noalias i8* @malloc(i64 %535) #6
  %537 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 0
  store i8* %536, i8** %537, align 8
  %538 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %9, i32 0, i32 0
  %539 = load i8*, i8** %538, align 8
  %540 = icmp ne i8* %539, null
  br i1 %540, label %541, label %542

; <label>:541                                     ; preds = %533
  br label %544

; <label>:542                                     ; preds = %533
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5.38, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 593, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %544

; <label>:544                                     ; preds = %543, %541
  br label %545

; <label>:545                                     ; preds = %588, %544
  %i.5 = phi i64 [ 0, %544 ], [ %589, %588 ]
  %sequenceLength.0 = phi i64 [ 0, %544 ], [ %sequenceLength.1, %588 ]
  %546 = icmp slt i64 %i.5, %101
  br i1 %546, label %547, label %590

; <label>:547                                     ; preds = %545
  %548 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %17, i64 %i.5
  %549 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %548, i32 0, i32 0
  %550 = load i64, i64* %549, align 8
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %552, label %._crit_edge15

._crit_edge15:                                    ; preds = %547
  br label %587

; <label>:552                                     ; preds = %547
  %553 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %548, i32 0, i32 7
  %554 = load i64, i64* %553, align 8
  %555 = add nsw i64 %sequenceLength.0, %554
  %556 = icmp sle i64 %555, %totalLength.0
  br i1 %556, label %557, label %558

; <label>:557                                     ; preds = %552
  br label %560

; <label>:558                                     ; preds = %552
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6.39, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 603, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:560                                     ; preds = %557
  %561 = getelementptr inbounds i8, i8* %539, i64 %sequenceLength.0
  %562 = getelementptr inbounds i8, i8* %539, i64 %555
  br label %563

; <label>:563                                     ; preds = %._crit_edge16, %560
  %copyPtr.0 = phi i8* [ %561, %560 ], [ %575, %._crit_edge16 ]
  %constructEntryPtr26.0 = phi %struct.constructEntry* [ %548, %560 ], [ %578, %._crit_edge16 ]
  %564 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i32 0, i32 6
  %565 = load i64, i64* %564, align 8
  %566 = sub nsw i64 %31, %565
  %567 = getelementptr inbounds i8, i8* %copyPtr.0, i64 %566
  %568 = icmp ugt i8* %567, %562
  br i1 %568, label %569, label %571

; <label>:569                                     ; preds = %563
  %.lcssa = phi i64 [ %566, %563 ]
  %570 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7.40, i32 0, i32 0))
  br label %580

; <label>:571                                     ; preds = %563
  %572 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i32 0, i32 1
  %573 = load i8*, i8** %572, align 8
  %574 = mul i64 %566, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %copyPtr.0, i8* %573, i64 %574, i32 1, i1 false)
  %575 = getelementptr inbounds i8, i8* %copyPtr.0, i64 %566
  br label %576

; <label>:576                                     ; preds = %571
  %577 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i32 0, i32 4
  %578 = load %struct.constructEntry*, %struct.constructEntry** %577, align 8
  %579 = icmp ne %struct.constructEntry* %578, null
  br i1 %579, label %._crit_edge16, label %.loopexit

._crit_edge16:                                    ; preds = %576
  br label %563

.loopexit:                                        ; preds = %576
  %.lcssa27 = phi i64 [ %566, %576 ]
  br label %580

; <label>:580                                     ; preds = %.loopexit, %569
  %copyPtr.1 = phi i8* [ %copyPtr.0, %569 ], [ %575, %.loopexit ]
  %581 = getelementptr inbounds i8, i8* %539, i64 %555
  %582 = icmp ule i8* %copyPtr.1, %581
  br i1 %582, label %583, label %584

; <label>:583                                     ; preds = %580
  br label %586

; <label>:584                                     ; preds = %580
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 617, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:586                                     ; preds = %583
  br label %587

; <label>:587                                     ; preds = %586, %._crit_edge15
  %sequenceLength.1 = phi i64 [ %555, %586 ], [ %sequenceLength.0, %._crit_edge15 ]
  br label %588

; <label>:588                                     ; preds = %587
  %589 = add nsw i64 %i.5, 1
  br label %545

; <label>:590                                     ; preds = %545
  %591 = icmp ne i8* %539, null
  br i1 %591, label %592, label %593

; <label>:592                                     ; preds = %590
  br label %595

; <label>:593                                     ; preds = %590
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9.42, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 621, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %595

; <label>:595                                     ; preds = %594, %592
  %596 = getelementptr inbounds i8, i8* %539, i64 %sequenceLength.0
  store i8 0, i8* %596, align 1
  br label %597

; <label>:597                                     ; preds = %595, %._crit_edge13
  br label %598

; <label>:598                                     ; preds = %597
  %599 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)()
  %600 = trunc i64 %599 to i32
  %601 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %602 = load i32, i32* %601, align 4
  call void @SimRoiEnd(i32 %600, i32 %602)
  br label %603

; <label>:603                                     ; preds = %598
  ret void
}

declare void @SimRoiStart(i32) #3

declare i32 @workBegin(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #6

declare void @workEnd(i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i64 @hashString(i8* %str) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  br label %1

; <label>:1                                       ; preds = %7, %0
  %hash.0 = phi i64 [ 0, %0 ], [ %12, %7 ]
  %2 = phi i8* [ %3, %7 ], [ %str, %0 ]
  %3 = getelementptr inbounds i8, i8* %2, i32 1
  %4 = load i8, i8* %2, align 1
  %5 = sext i8 %4 to i64
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %1
  %8 = shl i64 %hash.0, 6
  %9 = add i64 %5, %8
  %10 = shl i64 %hash.0, 16
  %11 = add i64 %9, %10
  %12 = sub i64 %11, %hash.0
  br label %1

; <label>:13                                      ; preds = %1
  %.lcssa1 = phi i64 [ %5, %1 ]
  %.lcssa = phi i8* [ %3, %1 ]
  ret i64 %hash.0
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

declare void @SimRoiEnd(i32, i32) #3

; Function Attrs: nounwind uwtable
define void @sequencer_free(%struct.sequencer* %sequencerPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i32 0, i32 6
  %2 = load %struct.table*, %struct.table** %1, align 8
  call void @table_free(%struct.table* %2)
  %3 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i32 0, i32 5
  %4 = load %struct.constructEntry*, %struct.constructEntry** %3, align 8
  %5 = bitcast %struct.constructEntry* %4 to i8*
  call void @free(i8* %5) #6
  %6 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i32 0, i32 7
  %7 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i32 0, i32 4
  br label %8

; <label>:8                                       ; preds = %15, %0
  %i.0 = phi i64 [ 1, %0 ], [ %16, %15 ]
  %9 = load i64, i64* %6, align 8
  %10 = icmp slt i64 %i.0, %9
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %8
  %12 = load %struct.table**, %struct.table*** %7, align 8
  %13 = getelementptr inbounds %struct.table*, %struct.table** %12, i64 %i.0
  %14 = load %struct.table*, %struct.table** %13, align 8
  call void @table_free(%struct.table* %14)
  br label %15

; <label>:15                                      ; preds = %11
  %16 = add nsw i64 %i.0, 1
  br label %8

; <label>:17                                      ; preds = %8
  %18 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i32 0, i32 4
  %19 = load %struct.table**, %struct.table*** %18, align 8
  %20 = bitcast %struct.table** %19 to i8*
  call void @free(i8* %20) #6
  %21 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i32 0, i32 3
  %22 = load %struct.endInfoEntry*, %struct.endInfoEntry** %21, align 8
  %23 = bitcast %struct.endInfoEntry* %22 to i8*
  call void @free(i8* %23) #6
  %24 = bitcast %struct.sequencer* %sequencerPtr to i8*
  call void @free(i8* %24) #6
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define noalias %struct.gene* @gene_alloc(i64 %length) #0 {
  %1 = icmp sgt i64 %length, 1
  br i1 %1, label %3, label %2

; <label>:2                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.48, i64 0, i64 0), i32 92, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.gene_alloc, i64 0, i64 0)) #14
  unreachable

; <label>:3                                       ; preds = %0
  %4 = tail call noalias i8* @malloc(i64 24) #6
  %5 = bitcast i8* %4 to %struct.gene*
  %6 = icmp eq i8* %4, null
  br i1 %6, label %20, label %7

; <label>:7                                       ; preds = %3
  %8 = add nsw i64 %length, 1
  %9 = tail call noalias i8* @malloc(i64 %8) #6
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
  %16 = tail call %struct.bitmap* @bitmap_alloc(i64 %length) #6
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

; Function Attrs: nounwind uwtable
define void @gene_create(%struct.gene* readonly %genePtr, %struct.random* %randomPtr) #0 {
  %1 = icmp eq %struct.gene* %genePtr, null
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2.51, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.48, i64 0, i64 0), i32 133, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.gene_create, i64 0, i64 0)) #14
  unreachable

; <label>:3                                       ; preds = %0
  %4 = icmp eq %struct.random* %randomPtr, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.52, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.48, i64 0, i64 0), i32 134, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.gene_create, i64 0, i64 0)) #14
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
  %12 = tail call i64 @random_generate(%struct.random* nonnull %randomPtr) #6
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
  tail call void @bitmap_free(%struct.bitmap* %2) #6
  %3 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 1
  %4 = load i8*, i8** %3, align 8
  tail call void @free(i8* %4) #6
  %5 = bitcast %struct.gene* %genePtr to i8*
  tail call void @free(i8* %5) #6
  ret void
}

; Function Attrs: nounwind uwtable
define noalias %struct.segments* @segments_alloc(i64 %length, i64 %minNum) #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #6
  %2 = bitcast i8* %1 to %struct.segments*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %51, label %4

; <label>:4                                       ; preds = %0
  %5 = shl i64 %minNum, 3
  %6 = tail call noalias i8* @malloc(i64 %5) #6
  %7 = getelementptr inbounds i8, i8* %1, i64 24
  %8 = bitcast i8* %7 to i8**
  store i8* %6, i8** %8, align 8
  %9 = icmp eq i8* %6, null
  %10 = bitcast i8* %6 to i8**
  br i1 %9, label %51, label %11

; <label>:11                                      ; preds = %4
  %12 = add nsw i64 %length, 1
  %13 = mul nsw i64 %12, %minNum
  %14 = tail call noalias i8* @malloc(i64 %13) #6
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
  br i1 %prol.iter.cmp, label %.lr.ph.preheader.split.loopexit, label %.lr.ph.prol, !llvm.loop !10

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
  %47 = tail call %struct.vector* @vector_alloc(i64 %minNum) #6
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
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.60, i64 0, i64 0), i32 148, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

; <label>:3                                       ; preds = %0
  %4 = icmp eq %struct.gene* %genePtr, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2.61, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.60, i64 0, i64 0), i32 149, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

; <label>:6                                       ; preds = %3
  %7 = icmp eq %struct.random* %randomPtr, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %6
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.62, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.60, i64 0, i64 0), i32 150, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
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
  %29 = tail call i64 @random_generate(%struct.random* nonnull %randomPtr) #6
  %30 = urem i64 %29, %25
  %31 = tail call i64 @bitmap_set(%struct.bitmap* %23, i64 %30) #6
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %.lr.ph10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.63, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.60, i64 0, i64 0), i32 166, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

; <label>:34                                      ; preds = %.lr.ph10
  %35 = getelementptr inbounds i8*, i8** %13, i64 %i.08
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %19, i64 %30
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 %15, i32 1, i1 false)
  %38 = load i8*, i8** %35, align 8
  %39 = tail call i64 @vector_pushBack(%struct.vector* %11, i8* %38) #6
  %40 = icmp eq i64 %39, 0
  %41 = add nuw nsw i64 %i.08, 1
  br i1 %40, label %42, label %27

; <label>:42                                      ; preds = %34
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.63, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.60, i64 0, i64 0), i32 169, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

._crit_edge11.loopexit:                           ; preds = %27
  br label %._crit_edge11

._crit_edge11:                                    ; preds = %._crit_edge11.loopexit, %9
  %43 = tail call i64 @bitmap_isSet(%struct.bitmap* %23, i64 0) #6
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %56

; <label>:45                                      ; preds = %._crit_edge11
  %46 = add nsw i64 %15, 1
  %47 = tail call noalias i8* @malloc(i64 %46) #6
  %48 = getelementptr inbounds i8, i8* %47, i64 %15
  store i8 0, i8* %48, align 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %19, i64 %15, i32 1, i1 false)
  %49 = tail call i64 @vector_pushBack(%struct.vector* %11, i8* %47) #6
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %45
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.63, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.60, i64 0, i64 0), i32 179, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

; <label>:52                                      ; preds = %45
  %53 = tail call i64 @bitmap_set(%struct.bitmap* %23, i64 0) #6
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %52
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.63, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.60, i64 0, i64 0), i32 181, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
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
  %65 = tail call i64 @bitmap_isSet(%struct.bitmap* %23, i64 %i.21) #6
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
  %72 = tail call noalias i8* @malloc(i64 %59) #6
  %73 = getelementptr inbounds i8, i8* %72, i64 %15
  store i8 0, i8* %73, align 1
  %74 = add nsw i64 %63, -1
  %75 = getelementptr inbounds i8, i8* %19, i64 %74
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %75, i64 %15, i32 1, i1 false)
  %76 = tail call i64 @vector_pushBack(%struct.vector* %11, i8* %72) #6
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %71
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.63, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.60, i64 0, i64 0), i32 200, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
  unreachable

; <label>:79                                      ; preds = %71
  %80 = tail call i64 @bitmap_set(%struct.bitmap* %23, i64 %74) #6
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %79
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.63, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.60, i64 0, i64 0), i32 202, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #14
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

; Function Attrs: nounwind uwtable
define void @segments_free(%struct.segments* nocapture %segmentsPtr) #0 {
  %1 = getelementptr inbounds %struct.segments, %struct.segments* %segmentsPtr, i64 0, i32 2
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i8* @vector_at(%struct.vector* %2, i64 0) #6
  tail call void @free(i8* %3) #6
  %4 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @vector_free(%struct.vector* %4) #6
  %5 = getelementptr inbounds %struct.segments, %struct.segments* %segmentsPtr, i64 0, i32 3
  %6 = bitcast i8*** %5 to i8**
  %7 = load i8*, i8** %6, align 8
  tail call void @free(i8* %7) #6
  %8 = bitcast %struct.segments* %segmentsPtr to i8*
  tail call void @free(i8* %8) #6
  ret void
}

; Function Attrs: nounwind uwtable
define noalias %struct.table* @table_alloc(i64 %numBucket, i64 (i8*, i8*)* %compare) #0 {
  %1 = tail call noalias i8* @malloc(i64 16) #6
  %2 = bitcast i8* %1 to %struct.table*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %.loopexit, label %4

; <label>:4                                       ; preds = %0
  %5 = shl i64 %numBucket, 3
  %6 = tail call noalias i8* @malloc(i64 %5) #6
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
  %13 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* %compare) #6
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
  %8 = tail call i64 @list_insert(%struct.list* %7, i8* %dataPtr) #6
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
  %8 = tail call i64 @TMlist_insert(%struct.list* %7, i8* %dataPtr) #6
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
  %8 = tail call i64 @list_remove(%struct.list* %7, i8* %dataPtr) #6
  %not. = icmp ne i64 %8, 0
  %. = zext i1 %not. to i64
  ret i64 %.
}

; Function Attrs: nounwind uwtable
define void @table_free(%struct.table* nocapture %tablePtr) #0 {
  %1 = bitcast %struct.table* %tablePtr to i8*
  tail call void @free(i8* %1) #6
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
  %4 = call noalias i8* @malloc(i64 24) #6
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
  %30 = call noalias i8* @malloc(i64 %29) #6
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

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
  %4 = call noalias i8* @malloc(i64 24) #6
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
  %30 = call noalias i8* @malloc(i64 %29) #6
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
  call void @free(i8* %40) #6
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
  call void @free(i8* %5) #6
  %6 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %7 = bitcast %struct.bitmap* %6 to i8*
  call void @free(i8* %7) #6
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
  call void @free(i8* %5) #6
  %6 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %7 = bitcast %struct.bitmap* %6 to i8*
  call void @free(i8* %7) #6
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
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.81, i32 0, i32 0), i32 343, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.bitmap_copy, i32 0, i32 0)) #14
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
  %26 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %25) #16
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
  %26 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %25) #16
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
  %27 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %26) #16
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
  %27 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %26) #16
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
  %7 = call noalias i8* @malloc(i64 48) #6
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
  call void @free(i8* %24) #6
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
  %7 = call noalias i8* @malloc(i64 %6) #6
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
  %7 = call noalias i8* @malloc(i64 48) #6
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
  call void @free(i8* %24) #6
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
  %7 = call noalias i8* @malloc(i64 %6) #6
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
  call void @free(i8* %9) #6
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
  call void @free(i8* %17) #6
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
  call void @free(i8* %9) #6
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
  call void @free(i8* %17) #6
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
  %21 = call i8* @list_find(%struct.list* %19, i8* %20) #16
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
  %22 = call i8* @list_find(%struct.list* %20, i8* %21) #16
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
  %24 = call i8* @list_find(%struct.list* %22, i8* %23) #16
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
  %24 = call i8* @list_find(%struct.list* %22, i8* %23) #16
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
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.91, i32 0, i32 0), i32 778, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.hashtable_remove, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.91, i32 0, i32 0), i32 811, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.TMhashtable_remove, i32 0, i32 0)) #14
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
  %3 = call noalias i8* @malloc(i64 16) #6
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
  %3 = call noalias i8* @malloc(i64 16) #6
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
  %3 = call noalias i8* @malloc(i64 16) #6
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
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppair_free(%struct.pair* %pairPtr) #8 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMpair_free(%struct.pair* %pairPtr) #8 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #6
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
  %1 = call noalias i8* @malloc(i64 5008) #6
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
  %1 = call noalias i8* @malloc(i64 5008) #6
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
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @Prandom_free(%struct.random* %randomPtr) #8 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #6
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
  %3 = call noalias i8* @malloc(i64 32) #6
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
  %3 = call noalias i8* @malloc(i64 32) #6
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
  %3 = call noalias i8* @malloc(i64 32) #6
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
  call void @free(i8* %7) #6
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
  call void @free(i8* %3) #6
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
  call void @free(i8* %7) #6
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
  call void @free(i8* %3) #6
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
  call void @free(i8* %8) #6
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
  call void @free(i8* %3) #6
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
  %3 = call noalias i8* @malloc(i64 16) #6
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
  %3 = call noalias i8* @malloc(i64 16) #6
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
  %3 = call noalias i8* @malloc(i64 16) #6
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.147, i32 0, i32 0), i32 703, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.list_remove, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.147, i32 0, i32 0), i32 732, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Plist_remove, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.147, i32 0, i32 0), i32 761, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMlist_remove, i32 0, i32 0)) #14
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
  %3 = call noalias i8* @malloc(i64 8) #6
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
  %16 = call i64 @lseek(i32 %12, i64 %15, i32 0) #6
  store i64 %16, i64* %offset, align 8
  %17 = load i64, i64* %offset, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %11
  br label %22

; <label>:20                                      ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.160, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %32

; <label>:32                                      ; preds = %31, %29
  %33 = load i32, i32* @FD, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 193, %34
  %36 = sext i32 %35 to i64
  %37 = call i64 @lseek(i32 %33, i64 %36, i32 0) #6
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.160, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %47

; <label>:47                                      ; preds = %46, %44
  %48 = load i8*, i8** %zeros, align 8
  call void @free(i8* %48) #6
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
  %14 = call i64 @lseek(i32 %10, i64 %13, i32 0) #6
  store i64 %14, i64* %offset, align 8
  %15 = load i64, i64* %offset, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %9
  br label %20

; <label>:18                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.161, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 189, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.160, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #14
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
  call void @llvm.x86.sse2.pause() #6
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
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !12
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
  %1 = call i64 @pthread_self() #15
  %2 = call i32 @pthread_getaffinity_np(i64 %1, i64 128, %struct.cpu_set_t* %available_procs) #6
  store i32 %2, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.170, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.determineNumProcs, i32 0, i32 0)) #14
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
  %3 = call i64 @pthread_self() #15
  %4 = call i32 @pthread_getaffinity_np(i64 %3, i64 128, %struct.cpu_set_t* %available_procs) #6
  store i32 %4, i32* %err, align 4
  %5 = load i32, i32* %err, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.170, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.173, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 463, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.176, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 465, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  call void @thread_barrier_init(%struct.thread_barrier* %39)
  %40 = load i64, i64* %1, align 8
  %41 = mul i64 %40, 72
  %42 = call noalias i8* @malloc(i64 %41) #6
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
  %78 = call i32 @pthread_key_create(i32* @global_threadId, void (i8*)* null) #6
  %79 = load i64*, i64** @global_threadIds, align 8
  %80 = icmp eq i64* %79, null
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %77
  br label %84

; <label>:82                                      ; preds = %77
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7.177, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %84

; <label>:84                                      ; preds = %83, %81
  %85 = load i64, i64* %1, align 8
  %86 = mul i64 %85, 8
  %87 = call noalias i8* @malloc(i64 %86) #6
  %88 = bitcast i8* %87 to i64*
  store i64* %88, i64** @global_threadIds, align 8
  %89 = load i64*, i64** @global_threadIds, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %84
  br label %94

; <label>:92                                      ; preds = %84
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8.178, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 486, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9.179, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 492, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %113

; <label>:113                                     ; preds = %112, %110
  %114 = load i64, i64* %1, align 8
  %115 = mul i64 %114, 8
  %116 = call noalias i8* @malloc(i64 %115) #6
  %117 = bitcast i8* %116 to i64*
  store i64* %117, i64** @global_threads, align 8
  %118 = load i64*, i64** @global_threads, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %121

; <label>:120                                     ; preds = %113
  br label %123

; <label>:121                                     ; preds = %113
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10.180, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 494, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %123

; <label>:123                                     ; preds = %122, %120
  %124 = call i32 @pthread_attr_init(%union.pthread_attr_t* @global_threadAttr) #6
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
  %137 = call i32 @pthread_create(i64* %132, %union.pthread_attr_t* @global_threadAttr, i8* (i8*)* bitcast (void (i8*)* @threadWait to i8* (i8*)*), i8* %136) #6
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
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.174, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 570, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12.175, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.159, i32 0, i32 0), i32 571, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = load i64, i64* %1, align 8
  %18 = mul i64 %17, 152
  %19 = call noalias i8* @malloc(i64 %18) #6
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
  %18 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %17, %union.pthread_mutexattr_t* null) #6
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %21 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %20, i64 %19
  %22 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %21, i32 0, i32 1
  %23 = call i32 @pthread_cond_init(%union.pthread_cond_t* %22, %union.pthread_mutexattr_t* null) #6
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %26 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %25, i64 %24
  %27 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %26, i32 0, i32 2
  %28 = call i32 @pthread_cond_init(%union.pthread_cond_t* %27, %union.pthread_mutexattr_t* null) #6
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
  %8 = call i32 @pthread_setspecific(i32 %5, i8* %7) #6
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
  %25 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %24) #6
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
  %54 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %53) #6
  br label %98

; <label>:55                                      ; preds = %10
  %56 = load i64, i64* %index, align 8
  %57 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %58 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %57, i64 %56
  %59 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %58, i32 0, i32 0
  %60 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %59) #6
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
  %78 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %77) #6
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
  %97 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %96) #6
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
  %131 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %130) #6
  %132 = load i64, i64* %index, align 8
  %133 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %134 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %133, i64 %132
  %135 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %134, i32 0, i32 3
  store i64 0, i64* %135, align 8
  %136 = load i64, i64* %index, align 8
  %137 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %138 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %137, i64 %136
  %139 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %138, i32 0, i32 2
  %140 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %139) #6
  %141 = load i64, i64* %index, align 8
  %142 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %143 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %142, i64 %141
  %144 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %143, i32 0, i32 0
  %145 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %144) #6
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
  call void @free(i8* %19) #6
  store i64* null, i64** @global_threadIds, align 8
  %20 = load i64*, i64** @global_threads, align 8
  %21 = bitcast i64* %20 to i8*
  call void @free(i8* %21) #6
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
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @thread_getId() #8 {
  %1 = load i32, i32* @global_threadId, align 4
  %2 = call i8* @pthread_getspecific(i32 %1) #6
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
  %17 = call noalias i8* @malloc(i64 24) #6
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
  %29 = call noalias i8* @malloc(i64 %28) #6
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
  %17 = call noalias i8* @malloc(i64 24) #6
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
  %29 = call noalias i8* @malloc(i64 %28) #6
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
  call void @free(i8* %5) #6
  %6 = load %struct.vector*, %struct.vector** %1, align 8
  %7 = bitcast %struct.vector* %6 to i8*
  call void @free(i8* %7) #6
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
  call void @free(i8* %5) #6
  %6 = load %struct.vector*, %struct.vector** %1, align 8
  %7 = bitcast %struct.vector* %6 to i8*
  call void @free(i8* %7) #6
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
  %18 = call noalias i8* @malloc(i64 %17) #6
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
  call void @free(i8* %50) #6
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
  %18 = call noalias i8* @malloc(i64 %17) #6
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
  call void @free(i8* %50) #6
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
  %19 = call noalias i8* @malloc(i64 %18) #6
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
  call void @free(i8* %28) #6
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
  %19 = call noalias i8* @malloc(i64 %18) #6
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
  call void @free(i8* %28) #6
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
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.202, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.memory_init, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = call noalias i8* @malloc(i64 16) #6
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
  %19 = call noalias i8* @malloc(i64 %18) #6
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
  %4 = call noalias i8* @malloc(i64 32) #6
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
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.203, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.202, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.allocBlock, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %8

; <label>:8                                       ; preds = %7, %5
  %9 = call noalias i8* @malloc(i64 160) #6
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
  %23 = call noalias i8* @malloc(i64 %22) #6
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
  call void @free(i8* %22) #6
  %23 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %24 = bitcast %struct.memory* %23 to i8*
  call void @free(i8* %24) #6
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
  call void @free(i8* %6) #6
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
  call void @free(i8* %4) #6
  %5 = load %struct.block*, %struct.block** %1, align 8
  %6 = bitcast %struct.block* %5 to i8*
  call void @free(i8* %6) #6
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
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.204, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.202, i32 0, i32 0), i32 304, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getMemoryFromBlock, i32 0, i32 0)) #14
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
declare void @llvm.prefetch(i8* nocapture, i32, i32, i32) #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145755229, i32 -2145755193, i32 -2145755169}
!2 = !{i32 -2145953083, i32 -2145953047, i32 -2145953023}
!3 = !{i32 1398597, i32 1398613, i32 1398649, i32 1398685, i32 1398721}
!4 = !{i32 1399198, i32 1399213, i32 1399247}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.vectorize.width", i32 1337}
!7 = !{i32 1398969, i32 1398984, i32 1399012}
!8 = distinct !{!8, !6}
!9 = !{!"MayAlias"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{i32 11658}
