; ModuleID = '../bin/STAMP-labyrinth.tm-arg.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.point = type { i64, i64, i64, i64, i32 }
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
%struct.coordinate = type { i64, i64, i64 }
%struct.grid = type { i64, i64, i64, i64*, i64* }
%struct.vector = type { i64, i64, i8** }
%struct.router_solve_arg = type { %struct.router*, %struct.maze*, %struct.list* }
%struct.router = type { i64, i64, i64, i64 }
%struct.maze = type { %struct.grid*, %struct.queue*, %struct.vector*, %struct.vector*, %struct.vector* }
%struct.queue = type { i64, i64, i64, i8** }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.pair = type { i8*, i8* }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.cpu_set_t = type { [16 x i64] }
%union.pthread_mutexattr_t = type { i32 }

@CACHE_LINE_SIZE = constant i64 32, align 8
@.str = private unnamed_addr constant [17 x i8] c"points_unaligned\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"grid.c\00", align 1
@__PRETTY_FUNCTION__.grid_alloc = private unnamed_addr constant [37 x i8] c"grid_t *grid_alloc(long, long, long)\00", align 1
@__PRETTY_FUNCTION__.Pgrid_alloc = private unnamed_addr constant [38 x i8] c"grid_t *Pgrid_alloc(long, long, long)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"srcGridPtr->width == dstGridPtr->width\00", align 1
@__PRETTY_FUNCTION__.grid_copy = private unnamed_addr constant [35 x i8] c"void grid_copy(grid_t *, grid_t *)\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"srcGridPtr->height == dstGridPtr->height\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"srcGridPtr->depth == dstGridPtr->depth\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"[z = %li]\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%4li\00", align 1
@global_doPrint = global i64 0, align 8
@global_inputFile = global i8* null, align 8
@global_params = common global [256 x i64] zeroinitializer, align 16
@opterr = external global i32, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"b:i:pt:x:y:z:\00", align 1
@optarg = external global i8*, align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"\0AOptions:                            (defaults)\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"    b <INT>    [b]end cost          (%i)\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"    i <FILE>   [i]nput file name    (%s)\0A\00", align 1
@str = private unnamed_addr constant [44 x i8] c"    p          [p]rint routed maze  (false)\00"
@.str.20 = private unnamed_addr constant [42 x i8] c"    t <UINT>   Number of [t]hreads  (%i)\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"    x <UINT>   [x] movement cost    (%i)\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"    y <UINT>   [y] movement cost    (%i)\0A\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"    z <UINT>   [z] movement cost    (%i)\0A\00", align 1
@.str.1.1 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@.str.2.2 = private unnamed_addr constant [12 x i8] c"labyrinth.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.3.3 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.4.4 = private unnamed_addr constant [8 x i8] c"mazePtr\00", align 1
@.str.5.5 = private unnamed_addr constant [10 x i8] c"routerPtr\00", align 1
@.str.6.6 = private unnamed_addr constant [18 x i8] c"pathVectorListPtr\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Paths routed    = %li\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Elapsed time    = %f seconds\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"numPathRouted <= numPathToRoute\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"status == TRUE\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Verification passed.\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@.str.19 = private unnamed_addr constant [98 x i8] c"mazePtr->workQueuePtr && mazePtr->wallVectorPtr && mazePtr->srcVectorPtr && mazePtr->dstVectorPtr\00", align 1
@.str.1.20 = private unnamed_addr constant [7 x i8] c"maze.c\00", align 1
@__PRETTY_FUNCTION__.maze_alloc = private unnamed_addr constant [21 x i8] c"maze_t *maze_alloc()\00", align 1
@.str.2.25 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.3.26 = private unnamed_addr constant [26 x i8] c"Error: Could not read %s\0A\00", align 1
@.str.4.27 = private unnamed_addr constant [28 x i8] c" %c %li %li %li %li %li %li\00", align 1
@.str.5.28 = private unnamed_addr constant [7 x i8] c"srcPtr\00", align 1
@__PRETTY_FUNCTION__.maze_read = private unnamed_addr constant [33 x i8] c"long maze_read(maze_t *, char *)\00", align 1
@.str.6.29 = private unnamed_addr constant [7 x i8] c"dstPtr\00", align 1
@.str.7.30 = private unnamed_addr constant [18 x i8] c"coordinatePairPtr\00", align 1
@.str.8.31 = private unnamed_addr constant [15 x i8] c"status == TRUE\00", align 1
@.str.9.32 = private unnamed_addr constant [31 x i8] c"Error: line %li of %s invalid\0A\00", align 1
@.str.10.33 = private unnamed_addr constant [43 x i8] c"Error: Invalid dimensions (%li, %li, %li)\0A\00", align 1
@.str.11.34 = private unnamed_addr constant [8 x i8] c"gridPtr\00", align 1
@.str.12.35 = private unnamed_addr constant [5 x i8] c"wall\00", align 1
@.str.18.36 = private unnamed_addr constant [35 x i8] c"Error: %s (%li, %li, %li) invalid\0A\00", align 1
@.str.13.37 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.14.38 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@.str.15.39 = private unnamed_addr constant [35 x i8] c"Maze dimensions = %li x %li x %li\0A\00", align 1
@.str.16.40 = private unnamed_addr constant [23 x i8] c"Paths to route  = %li\0A\00", align 1
@.str.17.43 = private unnamed_addr constant [14 x i8] c"\0ARouted Maze:\00", align 1
@MOVE_POSX = global %struct.point { i64 1, i64 0, i64 0, i64 0, i32 1 }, align 8
@MOVE_POSY = global %struct.point { i64 0, i64 1, i64 0, i64 0, i32 2 }, align 8
@MOVE_POSZ = global %struct.point { i64 0, i64 0, i64 1, i64 0, i32 3 }, align 8
@MOVE_NEGX = global %struct.point { i64 -1, i64 0, i64 0, i64 0, i32 4 }, align 8
@MOVE_NEGY = global %struct.point { i64 0, i64 -1, i64 0, i64 0, i32 5 }, align 8
@MOVE_NEGZ = global %struct.point { i64 0, i64 0, i64 -1, i64 0, i32 6 }, align 8
@.str.50 = private unnamed_addr constant [16 x i8] c"myPathVectorPtr\00", align 1
@.str.1.51 = private unnamed_addr constant [9 x i8] c"router.c\00", align 1
@__PRETTY_FUNCTION__.router_solve = private unnamed_addr constant [26 x i8] c"void router_solve(void *)\00", align 1
@.str.2.52 = private unnamed_addr constant [10 x i8] c"myGridPtr\00", align 1
@.str.4.53 = private unnamed_addr constant [15 x i8] c"pointVectorPtr\00", align 1
@__PRETTY_FUNCTION__.PdoTraceback = private unnamed_addr constant [65 x i8] c"vector_t *PdoTraceback(grid_t *, grid_t *, coordinate_t *, long)\00", align 1
@.str.3.54 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"listPtr->size >= 0\00", align 1
@.str.1.72 = private unnamed_addr constant [7 x i8] c"list.c\00", align 1
@__PRETTY_FUNCTION__.list_remove = private unnamed_addr constant [37 x i8] c"bool_t list_remove(list_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.Plist_remove = private unnamed_addr constant [38 x i8] c"bool_t Plist_remove(list_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.TMlist_remove = private unnamed_addr constant [39 x i8] c"bool_t TMlist_remove(list_t *, void *)\00", align 1
@genrand_int32.mag01 = internal global [2 x i64] [i64 0, i64 2567483615], align 16
@.str.91 = private unnamed_addr constant [12 x i8] c"pop != push\00", align 1
@.str.1.92 = private unnamed_addr constant [8 x i8] c"queue.c\00", align 1
@__PRETTY_FUNCTION__.queue_push = private unnamed_addr constant [37 x i8] c"bool_t queue_push(queue_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.Pqueue_push = private unnamed_addr constant [38 x i8] c"bool_t Pqueue_push(queue_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.TMqueue_push = private unnamed_addr constant [39 x i8] c"bool_t TMqueue_push(queue_t *, void *)\00", align 1
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
@.str.105 = private unnamed_addr constant [11 x i8] c"offset > 0\00", align 1
@.str.1.106 = private unnamed_addr constant [9 x i8] c"thread.c\00", align 1
@__PRETTY_FUNCTION__.init_one_perfcounter = private unnamed_addr constant [46 x i8] c"void init_one_perfcounter(int, unsigned long)\00", align 1
@.str.2.107 = private unnamed_addr constant [8 x i8] c"ret > 0\00", align 1
@.str.3.108 = private unnamed_addr constant [9 x i8] c"offset>0\00", align 1
@__PRETTY_FUNCTION__.read_one_perfcounter = private unnamed_addr constant [47 x i8] c"void read_one_perfcounter(int, unsigned int *)\00", align 1
@M5_inSimulator = external global i32, align 4
@.str.4.117 = private unnamed_addr constant [9 x i8] c"err == 0\00", align 1
@__PRETTY_FUNCTION__.determineNumProcs = private unnamed_addr constant [25 x i8] c"long determineNumProcs()\00", align 1
@global_numThread = internal global i64 1, align 8
@global_doShutdown = internal global i64 0, align 8
@__PRETTY_FUNCTION__.thread_startup = private unnamed_addr constant [26 x i8] c"void thread_startup(long)\00", align 1
@global_barrierPtr = internal global %struct.thread_barrier* null, align 8
@.str.5.120 = private unnamed_addr constant [26 x i8] c"global_barrierPtr == NULL\00", align 1
@.str.11.121 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@__PRETTY_FUNCTION__.thread_barrier_alloc = private unnamed_addr constant [45 x i8] c"thread_barrier_t *thread_barrier_alloc(long)\00", align 1
@.str.12.122 = private unnamed_addr constant [35 x i8] c"(numThread & (numThread - 1)) == 0\00", align 1
@.str.6.123 = private unnamed_addr constant [18 x i8] c"global_barrierPtr\00", align 1
@global_threadId = internal global i32 0, align 4
@global_threadIds = internal global i64* null, align 8
@.str.7.124 = private unnamed_addr constant [25 x i8] c"global_threadIds == NULL\00", align 1
@.str.8.125 = private unnamed_addr constant [17 x i8] c"global_threadIds\00", align 1
@global_threads = internal global i64* null, align 8
@.str.9.126 = private unnamed_addr constant [23 x i8] c"global_threads == NULL\00", align 1
@.str.10.127 = private unnamed_addr constant [15 x i8] c"global_threads\00", align 1
@global_threadAttr = internal global %union.pthread_attr_t zeroinitializer, align 8
@global_funcPtr = internal global void (i8*)* null, align 8
@global_argPtr = internal global i8* null, align 8
@global_memoryPtr = global %struct.memory* null, align 8
@.str.150 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@.str.1.151 = private unnamed_addr constant [9 x i8] c"memory.c\00", align 1
@__PRETTY_FUNCTION__.memory_init = private unnamed_addr constant [39 x i8] c"bool_t memory_init(long, size_t, long)\00", align 1
@.str.2.152 = private unnamed_addr constant [13 x i8] c"capacity > 0\00", align 1
@__PRETTY_FUNCTION__.allocBlock = private unnamed_addr constant [28 x i8] c"block_t *allocBlock(size_t)\00", align 1
@.str.3.153 = private unnamed_addr constant [29 x i8] c"(size + numByte) <= capacity\00", align 1
@__PRETTY_FUNCTION__.getMemoryFromBlock = private unnamed_addr constant [44 x i8] c"void *getMemoryFromBlock(block_t *, size_t)\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.coordinate* @coordinate_alloc(i64 %x, i64 %y, i64 %z) #0 {
  %1 = tail call noalias i8* @malloc(i64 24) #8
  %2 = bitcast i8* %1 to %struct.coordinate*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i64*
  store i64 %x, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 %y, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %z, i64* %9, align 8
  br label %10

; <label>:10                                      ; preds = %4, %0
  ret %struct.coordinate* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @coordinate_free(%struct.coordinate* nocapture %coordinatePtr) #0 {
  %1 = bitcast %struct.coordinate* %coordinatePtr to i8*
  tail call void @free(i8* %1) #8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @coordinate_isEqual(%struct.coordinate* nocapture readonly %aPtr, %struct.coordinate* nocapture readonly %bPtr) #2 {
  %1 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %2, %4
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %18

; <label>:12                                      ; preds = %6
  %13 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %19, label %18

; <label>:18                                      ; preds = %12, %6, %0
  br label %19

; <label>:19                                      ; preds = %18, %12
  %.0 = phi i64 [ 0, %18 ], [ 1, %12 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @coordinate_comparePair(i8* nocapture readonly %aPtr, i8* nocapture readonly %bPtr) #0 {
  %1 = bitcast i8* %aPtr to %struct.coordinate**
  %2 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %3 = getelementptr inbounds i8, i8* %aPtr, i64 8
  %4 = bitcast i8* %3 to %struct.coordinate**
  %5 = load %struct.coordinate*, %struct.coordinate** %4, align 8
  %6 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i64 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %7, %9
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i64 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %12, %14
  %16 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i64 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %17, %19
  %21 = mul nsw i64 %10, %10
  %22 = mul nsw i64 %15, %15
  %23 = mul nsw i64 %20, %20
  %24 = add nuw nsw i64 %22, %21
  %25 = add nuw nsw i64 %24, %23
  %26 = sitofp i64 %25 to double
  %27 = tail call double @sqrt(double %26) #8
  %28 = bitcast i8* %bPtr to %struct.coordinate**
  %29 = load %struct.coordinate*, %struct.coordinate** %28, align 8
  %30 = getelementptr inbounds i8, i8* %bPtr, i64 8
  %31 = bitcast i8* %30 to %struct.coordinate**
  %32 = load %struct.coordinate*, %struct.coordinate** %31, align 8
  %33 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %29, i64 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %32, i64 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %34, %36
  %38 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %29, i64 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %32, i64 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %39, %41
  %43 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %29, i64 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %32, i64 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %44, %46
  %48 = mul nsw i64 %37, %37
  %49 = mul nsw i64 %42, %42
  %50 = mul nsw i64 %47, %47
  %51 = add nuw nsw i64 %49, %48
  %52 = add nuw nsw i64 %51, %50
  %53 = sitofp i64 %52 to double
  %54 = tail call double @sqrt(double %53) #8
  %55 = fcmp olt double %27, %54
  %56 = fcmp ogt double %27, %54
  %. = sext i1 %56 to i64
  %.0 = select i1 %55, i64 1, i64 %.
  ret i64 %.0
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @coordinate_areAdjacent(%struct.coordinate* nocapture readonly %aPtr, %struct.coordinate* nocapture readonly %bPtr) #2 {
  %1 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = sub nsw i64 %2, %4
  %6 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %7, %9
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %12, %14
  %16 = mul nsw i64 %5, %5
  %17 = mul nsw i64 %10, %10
  %18 = mul nsw i64 %15, %15
  %19 = add nuw nsw i64 %17, %16
  %20 = add nuw nsw i64 %19, %18
  %21 = icmp eq i64 %20, 1
  %22 = zext i1 %21 to i64
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define noalias %struct.grid* @grid_alloc(i64 %width, i64 %height, i64 %depth) #0 {
  %1 = tail call noalias i8* @malloc(i64 40) #8
  %2 = bitcast i8* %1 to %struct.grid*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %26, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i64*
  store i64 %width, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 %height, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %depth, i64* %9, align 8
  %10 = shl i64 %width, 3
  %11 = mul i64 %10, %height
  %12 = mul i64 %11, %depth
  %13 = add i64 %12, 32
  %14 = tail call noalias i8* @malloc(i64 %13) #8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 102, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.grid_alloc, i64 0, i64 0)) #15
  unreachable

; <label>:17                                      ; preds = %4
  %18 = getelementptr inbounds i8, i8* %1, i64 32
  %19 = bitcast i8* %18 to i8**
  store i8* %14, i8** %19, align 8
  %20 = ptrtoint i8* %14 to i64
  %21 = and i64 %20, -32
  %22 = inttoptr i64 %21 to i8*
  %23 = getelementptr inbounds i8, i8* %22, i64 32
  %24 = getelementptr inbounds i8, i8* %1, i64 24
  %25 = bitcast i8* %24 to i8**
  store i8* %23, i8** %25, align 8
  tail call void @llvm.memset.p0i8.i64(i8* %23, i8 -1, i64 %12, i32 32, i1 false)
  br label %26

; <label>:26                                      ; preds = %17, %0
  ret %struct.grid* %2
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define noalias %struct.grid* @Pgrid_alloc(i64 %width, i64 %height, i64 %depth) #0 {
  %1 = tail call noalias i8* @malloc(i64 40) #8
  %2 = bitcast i8* %1 to %struct.grid*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %26, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i64*
  store i64 %width, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 %height, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %depth, i64* %9, align 8
  %10 = shl i64 %width, 3
  %11 = mul i64 %10, %height
  %12 = mul i64 %11, %depth
  %13 = add i64 %12, 32
  %14 = tail call noalias i8* @malloc(i64 %13) #8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 130, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Pgrid_alloc, i64 0, i64 0)) #15
  unreachable

; <label>:17                                      ; preds = %4
  %18 = getelementptr inbounds i8, i8* %1, i64 32
  %19 = bitcast i8* %18 to i8**
  store i8* %14, i8** %19, align 8
  %20 = ptrtoint i8* %14 to i64
  %21 = and i64 %20, -32
  %22 = inttoptr i64 %21 to i8*
  %23 = getelementptr inbounds i8, i8* %22, i64 32
  %24 = getelementptr inbounds i8, i8* %1, i64 24
  %25 = bitcast i8* %24 to i8**
  store i8* %23, i8** %25, align 8
  tail call void @llvm.memset.p0i8.i64(i8* %23, i8 -1, i64 %12, i32 32, i1 false)
  br label %26

; <label>:26                                      ; preds = %17, %0
  ret %struct.grid* %2
}

; Function Attrs: nounwind uwtable
define void @grid_free(%struct.grid* nocapture %gridPtr) #0 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 4
  %2 = bitcast i64** %1 to i8**
  %3 = load i8*, i8** %2, align 8
  tail call void @free(i8* %3) #8
  %4 = bitcast %struct.grid* %gridPtr to i8*
  tail call void @free(i8* %4) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Pgrid_free(%struct.grid* nocapture %gridPtr) #0 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 4
  %2 = bitcast i64** %1 to i8**
  %3 = load i8*, i8** %2, align 8
  tail call void @free(i8* %3) #8
  %4 = bitcast %struct.grid* %gridPtr to i8*
  tail call void @free(i8* %4) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @grid_copy(%struct.grid* nocapture readonly %dstGridPtr, %struct.grid* nocapture readonly %srcGridPtr) #0 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %dstGridPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %2, %4
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 173, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.grid_copy, i64 0, i64 0)) #15
  unreachable

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i64 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.grid, %struct.grid* %dstGridPtr, i64 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %14, label %13

; <label>:13                                      ; preds = %7
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 174, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.grid_copy, i64 0, i64 0)) #15
  unreachable

; <label>:14                                      ; preds = %7
  %15 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i64 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.grid, %struct.grid* %dstGridPtr, i64 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %21, label %20

; <label>:20                                      ; preds = %14
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 175, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.grid_copy, i64 0, i64 0)) #15
  unreachable

; <label>:21                                      ; preds = %14
  %22 = mul nsw i64 %9, %2
  %23 = mul nsw i64 %22, %16
  %24 = getelementptr inbounds %struct.grid, %struct.grid* %dstGridPtr, i64 0, i32 3
  %25 = bitcast i64** %24 to i8**
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i64 0, i32 3
  %28 = bitcast i64** %27 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = shl i64 %23, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %29, i64 %30, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @grid_isPointValid(%struct.grid* nocapture readonly %gridPtr, i64 %x, i64 %y, i64 %z) #2 {
  %1 = icmp slt i64 %x, 0
  br i1 %1, label %16, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp sle i64 %4, %x
  %6 = icmp slt i64 %y, 0
  %or.cond = or i1 %6, %5
  br i1 %or.cond, label %16, label %7

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp sle i64 %9, %y
  %11 = icmp slt i64 %z, 0
  %or.cond3 = or i1 %11, %10
  br i1 %or.cond3, label %16, label %12

; <label>:12                                      ; preds = %7
  %13 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, %z
  %. = zext i1 %15 to i64
  ret i64 %.

; <label>:16                                      ; preds = %7, %2, %0
  ret i64 0
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64* @grid_getPointRef(%struct.grid* nocapture readonly %gridPtr, i64 %x, i64 %y, i64 %z) #2 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = mul nsw i64 %2, %z
  %4 = add nsw i64 %3, %y
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = mul nsw i64 %4, %6
  %8 = add nsw i64 %7, %x
  %9 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 %8
  ret i64* %11
}

; Function Attrs: norecurse nounwind uwtable
define void @grid_getPointIndices(%struct.grid* nocapture readonly %gridPtr, i64* %gridPointPtr, i64* nocapture %xPtr, i64* nocapture %yPtr, i64* nocapture %zPtr) #5 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, %2
  %6 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  %7 = bitcast i64** %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = ptrtoint i64* %gridPointPtr to i64
  %10 = sub i64 %9, %8
  %11 = ashr exact i64 %10, 3
  %12 = sdiv i64 %11, %5
  store i64 %12, i64* %zPtr, align 8
  %13 = srem i64 %11, %5
  %14 = sdiv i64 %13, %4
  store i64 %14, i64* %yPtr, align 8
  %15 = srem i64 %13, %4
  store i64 %15, i64* %xPtr, align 8
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @grid_getPoint(%struct.grid* nocapture readonly %gridPtr, i64 %x, i64 %y, i64 %z) #2 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = mul nsw i64 %2, %z
  %4 = add nsw i64 %3, %y
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = mul nsw i64 %4, %6
  %8 = add nsw i64 %7, %x
  %9 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 %8
  %12 = load i64, i64* %11, align 8
  ret i64 %12
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @grid_isPointEmpty(%struct.grid* nocapture readonly %gridPtr, i64 %x, i64 %y, i64 %z) #2 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = mul nsw i64 %2, %z
  %4 = add nsw i64 %3, %y
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = mul nsw i64 %4, %6
  %8 = add nsw i64 %7, %x
  %9 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 %8
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, -1
  %14 = zext i1 %13 to i64
  ret i64 %14
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @grid_isPointFull(%struct.grid* nocapture readonly %gridPtr, i64 %x, i64 %y, i64 %z) #2 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = mul nsw i64 %2, %z
  %4 = add nsw i64 %3, %y
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = mul nsw i64 %4, %6
  %8 = add nsw i64 %7, %x
  %9 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 %8
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, -2
  %14 = zext i1 %13 to i64
  ret i64 %14
}

; Function Attrs: norecurse nounwind uwtable
define void @grid_setPoint(%struct.grid* nocapture readonly %gridPtr, i64 %x, i64 %y, i64 %z, i64 %value) #5 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = mul nsw i64 %2, %z
  %4 = add nsw i64 %3, %y
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = mul nsw i64 %4, %6
  %8 = add nsw i64 %7, %x
  %9 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 %8
  store i64 %value, i64* %11, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @grid_addPath(%struct.grid* nocapture readonly %gridPtr, %struct.vector* %pointVectorPtr) #0 {
  %1 = tail call i64 @vector_getSize(%struct.vector* %pointVectorPtr) #8
  %2 = icmp sgt i64 %1, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %4 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph
  %i.01 = phi i64 [ 0, %.lr.ph ], [ %24, %6 ]
  %7 = tail call i8* @vector_at(%struct.vector* %pointVectorPtr, i64 %i.01) #8
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i8, i8* %7, i64 8
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i8, i8* %7, i64 16
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = mul nsw i64 %16, %15
  %18 = add nsw i64 %17, %12
  %19 = load i64, i64* %4, align 8
  %20 = mul nsw i64 %18, %19
  %21 = add nsw i64 %20, %9
  %22 = load i64*, i64** %5, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 %21
  store i64 -2, i64* %23, align 8
  %24 = add nuw nsw i64 %i.01, 1
  %exitcond = icmp eq i64 %24, %1
  br i1 %exitcond, label %._crit_edge.loopexit, label %6

._crit_edge.loopexit:                             ; preds = %6
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMgrid_addPath(%struct.grid* nocapture readnone %gridPtr, %struct.vector* %pointVectorPtr) #0 {
  %1 = tail call i64 @vector_getSize(%struct.vector* %pointVectorPtr) #8
  %2 = add i64 %1, -1
  %3 = icmp sgt i64 %2, 1
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %9, %.lr.ph.preheader
  %i.01 = phi i64 [ %10, %9 ], [ 1, %.lr.ph.preheader ]
  %4 = tail call i8* @vector_at(%struct.vector* %pointVectorPtr, i64 %i.01) #8
  %5 = bitcast i8* %4 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, -1
  br i1 %7, label %9, label %8

; <label>:8                                       ; preds = %.lr.ph
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #8, !srcloc !1
  br label %9

; <label>:9                                       ; preds = %8, %.lr.ph
  store i64 -2, i64* %5, align 8
  %10 = add nuw nsw i64 %i.01, 1
  %exitcond = icmp eq i64 %10, %2
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !2

._crit_edge.loopexit:                             ; preds = %9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @grid_print(%struct.grid* nocapture readonly %gridPtr) #0 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %0
  %8 = icmp sgt i64 %2, 0
  %9 = icmp sgt i64 %4, 0
  %10 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  br i1 %8, label %.lr.ph9.split.us.preheader, label %.lr.ph9.split.preheader

.lr.ph9.split.preheader:                          ; preds = %.lr.ph9
  br label %.lr.ph9.split

.lr.ph9.split.us.preheader:                       ; preds = %.lr.ph9
  br label %.lr.ph9.split.us

.lr.ph9.split.us:                                 ; preds = %._crit_edge5.us, %.lr.ph9.split.us.preheader
  %z.06.us = phi i64 [ %13, %._crit_edge5.us ], [ 0, %.lr.ph9.split.us.preheader ]
  %11 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %z.06.us)
  br i1 %9, label %.lr.ph.us.us.preheader, label %.preheader.us14.preheader

.preheader.us14.preheader:                        ; preds = %.lr.ph9.split.us
  br label %.preheader.us14

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph9.split.us
  br label %.lr.ph.us.us

.preheader.us14:                                  ; preds = %.preheader.us14, %.preheader.us14.preheader
  %x.03.us15 = phi i64 [ %12, %.preheader.us14 ], [ 0, %.preheader.us14.preheader ]
  %putchar1.us12 = tail call i32 @putchar(i32 10) #8
  %12 = add nuw nsw i64 %x.03.us15, 1
  %exitcond = icmp eq i64 %12, %2
  br i1 %exitcond, label %._crit_edge5.us.loopexit30, label %.preheader.us14

._crit_edge5.us.loopexit:                         ; preds = %._crit_edge.us.us
  br label %._crit_edge5.us

._crit_edge5.us.loopexit30:                       ; preds = %.preheader.us14
  br label %._crit_edge5.us

._crit_edge5.us:                                  ; preds = %._crit_edge5.us.loopexit30, %._crit_edge5.us.loopexit
  %putchar.us = tail call i32 @putchar(i32 10) #8
  %13 = add nuw nsw i64 %z.06.us, 1
  %exitcond24 = icmp eq i64 %13, %6
  br i1 %exitcond24, label %._crit_edge10.loopexit, label %.lr.ph9.split.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph.us.us.preheader
  %x.03.us.us = phi i64 [ %14, %._crit_edge.us.us ], [ 0, %.lr.ph.us.us.preheader ]
  br label %15

._crit_edge.us.us:                                ; preds = %15
  %putchar1.us.us = tail call i32 @putchar(i32 10) #8
  %14 = add nuw nsw i64 %x.03.us.us, 1
  %exitcond23 = icmp eq i64 %14, %2
  br i1 %exitcond23, label %._crit_edge5.us.loopexit, label %.lr.ph.us.us

; <label>:15                                      ; preds = %15, %.lr.ph.us.us
  %y.02.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %26, %15 ]
  %16 = load i64, i64* %3, align 8
  %17 = mul nsw i64 %16, %z.06.us
  %18 = add nsw i64 %17, %y.02.us.us
  %19 = load i64, i64* %1, align 8
  %20 = mul nsw i64 %18, %19
  %21 = add nsw i64 %20, %x.03.us.us
  %22 = load i64*, i64** %10, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 %21
  %24 = load i64, i64* %23, align 8
  %25 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %24)
  %26 = add nuw nsw i64 %y.02.us.us, 1
  %exitcond22 = icmp eq i64 %26, %4
  br i1 %exitcond22, label %._crit_edge.us.us, label %15

.lr.ph9.split:                                    ; preds = %.lr.ph9.split, %.lr.ph9.split.preheader
  %z.06 = phi i64 [ %28, %.lr.ph9.split ], [ 0, %.lr.ph9.split.preheader ]
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %z.06)
  %putchar = tail call i32 @putchar(i32 10) #8
  %28 = add nuw nsw i64 %z.06, 1
  %exitcond25 = icmp eq i64 %28, %6
  br i1 %exitcond25, label %._crit_edge10.loopexit31, label %.lr.ph9.split

._crit_edge10.loopexit:                           ; preds = %._crit_edge5.us
  br label %._crit_edge10

._crit_edge10.loopexit31:                         ; preds = %.lr.ph9.split
  br label %._crit_edge10

._crit_edge10:                                    ; preds = %._crit_edge10.loopexit31, %._crit_edge10.loopexit, %0
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

declare i32 @putchar(i32)

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %routerArg = alloca %struct.router_solve_arg, align 8
  %startTime = alloca %struct.timeval, align 8
  %stopTime = alloca %struct.timeval, align 8
  %it = alloca %struct.list_node*, align 8
  %1 = sext i32 %argc to i64
  store i32 0, i32* @opterr, align 4
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 98), align 16
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* bitcast (i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 120) to <2 x i64>*), align 16
  store i64 2, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 122), align 16
  %2 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #8
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %._crit_edge4.i, label %.lr.ph3.i.preheader

.lr.ph3.i.preheader:                              ; preds = %0
  br label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.backedge.i, %.lr.ph3.i.preheader
  %4 = phi i32 [ %18, %.backedge.i ], [ %2, %.lr.ph3.i.preheader ]
  %5 = sext i32 %4 to i64
  switch i64 %5, label %15 [
    i64 98, label %6
    i64 116, label %6
    i64 120, label %6
    i64 121, label %6
    i64 122, label %6
    i64 105, label %12
    i64 112, label %14
  ]

; <label>:6                                       ; preds = %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i
  %7 = load i8*, i8** @optarg, align 8
  %8 = tail call i64 @atol(i8* %7) #16
  %9 = zext i32 %4 to i64
  %10 = and i64 %9, 255
  %11 = getelementptr inbounds [256 x i64], [256 x i64]* @global_params, i64 0, i64 %10
  store i64 %8, i64* %11, align 8
  br label %.backedge.i

; <label>:12                                      ; preds = %.lr.ph3.i
  %13 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store i64 %13, i64* bitcast (i8** @global_inputFile to i64*), align 8
  br label %.backedge.i

; <label>:14                                      ; preds = %.lr.ph3.i
  store i64 1, i64* @global_doPrint, align 8
  br label %.backedge.i

; <label>:15                                      ; preds = %.lr.ph3.i
  %16 = load i32, i32* @opterr, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @opterr, align 4
  br label %.backedge.i

.backedge.i:                                      ; preds = %15, %14, %12, %6
  %18 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #8
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %._crit_edge4.i.loopexit, label %.lr.ph3.i

._crit_edge4.i.loopexit:                          ; preds = %.backedge.i
  br label %._crit_edge4.i

._crit_edge4.i:                                   ; preds = %._crit_edge4.i.loopexit, %0
  %20 = load i32, i32* @optind, align 4
  %21 = icmp slt i32 %20, %argc
  br i1 %21, label %.lr.ph.i.preheader, label %._crit_edge4.._crit_edge_crit_edge.i

.lr.ph.i.preheader:                               ; preds = %._crit_edge4.i
  %22 = sext i32 %20 to i64
  br label %.lr.ph.i

._crit_edge4.._crit_edge_crit_edge.i:             ; preds = %._crit_edge4.i
  %.pre.i = load i32, i32* @opterr, align 4
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %i.01.i = phi i64 [ %29, %.lr.ph.i ], [ %22, %.lr.ph.i.preheader ]
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = getelementptr inbounds i8*, i8** %argv, i64 %i.01.i
  %25 = load i8*, i8** %24, align 8
  %26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %25) #17
  %27 = load i32, i32* @opterr, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @opterr, align 4
  %29 = add nsw i64 %i.01.i, 1
  %exitcond.i = icmp eq i64 %29, %1
  br i1 %exitcond.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.lcssa6 = phi i32 [ %28, %.lr.ph.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %._crit_edge4.._crit_edge_crit_edge.i
  %30 = phi i32 [ %.pre.i, %._crit_edge4.._crit_edge_crit_edge.i ], [ %.lcssa6, %._crit_edge.i.loopexit ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %parseArgs.exit, label %32

; <label>:32                                      ; preds = %._crit_edge.i
  %33 = load i8*, i8** %argv, align 8
  %34 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* %33) #8
  %35 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0)) #8
  %36 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 1) #8
  %37 = load i8*, i8** @global_inputFile, align 8
  %38 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i8* %37) #8
  %puts.i.i = tail call i32 @puts(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @str, i64 0, i64 0)) #8
  %39 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i32 1) #8
  %40 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i32 1) #8
  %41 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0), i32 1) #8
  %42 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0), i32 2) #8
  tail call void @exit(i32 1) #15
  unreachable

parseArgs.exit:                                   ; preds = %._crit_edge.i
  %43 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  %44 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #18, !srcloc !4
  %45 = extractvalue { i32, i32, i32, i32 } %44, 0
  %46 = icmp sgt i32 %45, 6
  br i1 %46, label %48, label %47

; <label>:47                                      ; preds = %parseArgs.exit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1.1, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.2, i64 0, i64 0), i32 200, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

; <label>:48                                      ; preds = %parseArgs.exit
  %49 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #18, !srcloc !5
  %50 = extractvalue { i32, i32, i32, i32 } %49, 1
  %51 = and i32 %50, 2048
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %48
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.2, i64 0, i64 0), i32 200, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

; <label>:54                                      ; preds = %48
  tail call void (...) bitcast (void ()* @RTM_spinlock_init to void (...)*)() #8
  tail call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %43) #8
  tail call void @thread_startup(i64 %43) #8
  %55 = tail call %struct.maze* (...) bitcast (%struct.maze* ()* @maze_alloc to %struct.maze* (...)*)() #8
  %56 = icmp eq %struct.maze* %55, null
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %54
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.2, i64 0, i64 0), i32 204, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

; <label>:58                                      ; preds = %54
  %59 = load i8*, i8** @global_inputFile, align 8
  %60 = tail call i64 @maze_read(%struct.maze* nonnull %55, i8* %59) #8
  %61 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 120), align 16
  %62 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 121), align 8
  %63 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 122), align 16
  %64 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 98), align 16
  %65 = tail call %struct.router* @router_alloc(i64 %61, i64 %62, i64 %63, i64 %64) #8
  %66 = icmp eq %struct.router* %65, null
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %58
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.2, i64 0, i64 0), i32 210, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

; <label>:68                                      ; preds = %58
  %69 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* null) #8
  %70 = icmp eq %struct.list* %69, null
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %68
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.2, i64 0, i64 0), i32 212, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

; <label>:72                                      ; preds = %68
  %73 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %routerArg, i64 0, i32 0
  store %struct.router* %65, %struct.router** %73, align 8
  %74 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %routerArg, i64 0, i32 1
  store %struct.maze* %55, %struct.maze** %74, align 8
  %75 = getelementptr inbounds %struct.router_solve_arg, %struct.router_solve_arg* %routerArg, i64 0, i32 2
  store %struct.list* %69, %struct.list** %75, align 8
  %76 = call i32 @gettimeofday(%struct.timeval* nonnull %startTime, %struct.timezone* null) #8
  %77 = bitcast %struct.router_solve_arg* %routerArg to i8*
  call void @thread_start(void (i8*)* nonnull @router_solve, i8* %77) #8
  %78 = call i32 @gettimeofday(%struct.timeval* nonnull %stopTime, %struct.timezone* null) #8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* nonnull %69) #8
  %79 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* nonnull %69) #16
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %72
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %numPathRouted.01 = phi i64 [ %84, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %81 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* nonnull %69) #8
  %82 = bitcast i8* %81 to %struct.vector*
  %83 = call i64 @vector_getSize(%struct.vector* %82) #8
  %84 = add nsw i64 %83, %numPathRouted.01
  %85 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* nonnull %69) #16
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %84, %.lr.ph ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %72
  %numPathRouted.0.lcssa = phi i64 [ 0, %72 ], [ %.lcssa, %._crit_edge.loopexit ]
  %87 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 %numPathRouted.0.lcssa)
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i64 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sitofp i64 %89 to double
  %91 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i64 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sitofp i64 %92 to double
  %94 = fdiv double %93, 1.000000e+06
  %95 = fadd double %90, %94
  %96 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i64 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sitofp i64 %97 to double
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i64 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sitofp i64 %100 to double
  %102 = fdiv double %101, 1.000000e+06
  %103 = fadd double %98, %102
  %104 = fsub double %95, %103
  %105 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), double %104)
  %106 = icmp sgt i64 %numPathRouted.0.lcssa, %60
  br i1 %106, label %107, label %108

; <label>:107                                     ; preds = %._crit_edge
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.2, i64 0, i64 0), i32 246, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

; <label>:108                                     ; preds = %._crit_edge
  %109 = load i64, i64* @global_doPrint, align 8
  %110 = call i64 @maze_checkPaths(%struct.maze* nonnull %55, %struct.list* nonnull %69, i64 %109) #8
  %111 = icmp eq i64 %110, 1
  br i1 %111, label %113, label %112

; <label>:112                                     ; preds = %108
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.2, i64 0, i64 0), i32 248, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

; <label>:113                                     ; preds = %108
  %114 = call i32 @puts(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  call void @maze_free(%struct.maze* nonnull %55) #8
  call void @router_free(%struct.router* nonnull %65) #8
  %115 = call i64 (...) @getWorkItemCount() #8
  %116 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i64 %115)
  %117 = call i32 @fflush(%struct._IO_FILE* null)
  call void (...) bitcast (void ()* @thread_shutdown to void (...)*)() #8
  call void (...) bitcast (void ()* @RTM_output_stats to void (...)*)() #8
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @atol(i8* nocapture) #6

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @SimStartup(...) #7

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

declare i64 @getWorkItemCount(...) #7

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind uwtable
define noalias %struct.maze* @maze_alloc() #0 {
  %1 = tail call noalias i8* @malloc(i64 40) #8
  %2 = bitcast i8* %1 to %struct.maze*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %24, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to %struct.grid**
  store %struct.grid* null, %struct.grid** %5, align 8
  %6 = tail call %struct.queue* @queue_alloc(i64 1024) #8
  %7 = getelementptr inbounds i8, i8* %1, i64 8
  %8 = bitcast i8* %7 to %struct.queue**
  store %struct.queue* %6, %struct.queue** %8, align 8
  %9 = tail call %struct.vector* @vector_alloc(i64 1) #8
  %10 = getelementptr inbounds i8, i8* %1, i64 16
  %11 = bitcast i8* %10 to %struct.vector**
  store %struct.vector* %9, %struct.vector** %11, align 8
  %12 = tail call %struct.vector* @vector_alloc(i64 1) #8
  %13 = getelementptr inbounds i8, i8* %1, i64 24
  %14 = bitcast i8* %13 to %struct.vector**
  store %struct.vector* %12, %struct.vector** %14, align 8
  %15 = tail call %struct.vector* @vector_alloc(i64 1) #8
  %16 = getelementptr inbounds i8, i8* %1, i64 32
  %17 = bitcast i8* %16 to %struct.vector**
  store %struct.vector* %15, %struct.vector** %17, align 8
  %18 = icmp eq %struct.queue* %6, null
  %19 = icmp eq %struct.vector* %9, null
  %or.cond1 = or i1 %18, %19
  br i1 %or.cond1, label %23, label %20

; <label>:20                                      ; preds = %4
  %21 = icmp eq %struct.vector* %12, null
  %22 = icmp eq %struct.vector* %15, null
  %or.cond = or i1 %22, %21
  br i1 %or.cond, label %23, label %24

; <label>:23                                      ; preds = %20, %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([98 x i8], [98 x i8]* @.str.19, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.20, i64 0, i64 0), i32 103, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.maze_alloc, i64 0, i64 0)) #15
  unreachable

; <label>:24                                      ; preds = %20, %0
  ret %struct.maze* %2
}

; Function Attrs: nounwind uwtable
define void @maze_free(%struct.maze* nocapture %mazePtr) #0 {
  %1 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 0
  %2 = load %struct.grid*, %struct.grid** %1, align 8
  %3 = icmp eq %struct.grid* %2, null
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  tail call void @grid_free(%struct.grid* nonnull %2) #8
  br label %5

; <label>:5                                       ; preds = %4, %0
  %6 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 1
  %7 = load %struct.queue*, %struct.queue** %6, align 8
  tail call void @queue_free(%struct.queue* %7) #8
  %8 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 2
  %9 = load %struct.vector*, %struct.vector** %8, align 8
  tail call void @vector_free(%struct.vector* %9) #8
  %10 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 3
  %11 = load %struct.vector*, %struct.vector** %10, align 8
  tail call void @vector_free(%struct.vector* %11) #8
  %12 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 4
  %13 = load %struct.vector*, %struct.vector** %12, align 8
  tail call void @vector_free(%struct.vector* %13) #8
  %14 = bitcast %struct.maze* %mazePtr to i8*
  tail call void @free(i8* %14) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @maze_read(%struct.maze* nocapture %mazePtr, i8* %inputFileName) #0 {
  %line = alloca [256 x i8], align 16
  %code = alloca i8, align 1
  %x1 = alloca i64, align 8
  %y1 = alloca i64, align 8
  %z1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %y2 = alloca i64, align 8
  %z2 = alloca i64, align 8
  %it = alloca %struct.list_node*, align 8
  %1 = tail call %struct._IO_FILE* @fopen(i8* %inputFileName, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.25, i64 0, i64 0))
  %2 = icmp eq %struct._IO_FILE* %1, null
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3.26, i64 0, i64 0), i8* %inputFileName) #19
  tail call void @exit(i32 1) #15
  unreachable

; <label>:6                                       ; preds = %0
  %7 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* nonnull @coordinate_comparePair) #8
  %8 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 2
  %9 = load %struct.vector*, %struct.vector** %8, align 8
  %10 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 3
  %11 = load %struct.vector*, %struct.vector** %10, align 8
  %12 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 4
  %13 = load %struct.vector*, %struct.vector** %12, align 8
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %line, i64 0, i64 0
  br label %.outer

.outer:                                           ; preds = %27, %6
  %depth.0.ph = phi i64 [ %30, %27 ], [ -1, %6 ]
  %width.0.ph = phi i64 [ %28, %27 ], [ -1, %6 ]
  %height.0.ph = phi i64 [ %29, %27 ], [ -1, %6 ]
  %lineNumber.0.ph = phi i64 [ %.lcssa203, %27 ], [ 0, %6 ]
  %15 = call i8* @fgets(i8* %14, i32 256, %struct._IO_FILE* nonnull %1)
  %16 = icmp eq i8* %15, null
  br i1 %16, label %.outer._crit_edge.loopexit159, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %.outer
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.backedge, %.lr.ph38.preheader
  %lineNumber.037 = phi i64 [ %18, %.backedge ], [ %lineNumber.0.ph, %.lr.ph38.preheader ]
  %17 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %14, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4.27, i64 0, i64 0), i8* nonnull %code, i64* nonnull %x1, i64* nonnull %y1, i64* nonnull %z1, i64* nonnull %x2, i64* nonnull %y2, i64* nonnull %z2) #8
  %18 = add nsw i64 %lineNumber.037, 1
  %19 = icmp slt i32 %17, 1
  br i1 %19, label %.backedge, label %22

.backedge:                                        ; preds = %69, %64, %22, %.lr.ph38
  %20 = call i8* @fgets(i8* %14, i32 256, %struct._IO_FILE* nonnull %1)
  %21 = icmp eq i8* %20, null
  br i1 %21, label %.outer._crit_edge.loopexit, label %.lr.ph38

; <label>:22                                      ; preds = %.lr.ph38
  %23 = load i8, i8* %code, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %.loopexit.loopexit [
    i32 35, label %.backedge
    i32 100, label %25
    i32 112, label %34
    i32 119, label %67
  ]

; <label>:25                                      ; preds = %22
  %.lcssa203 = phi i64 [ %18, %22 ]
  %.lcssa197 = phi i32 [ %17, %22 ]
  %26 = icmp eq i32 %.lcssa197, 4
  br i1 %26, label %27, label %.loopexit.loopexit160

; <label>:27                                      ; preds = %25
  %28 = load i64, i64* %x1, align 8
  %29 = load i64, i64* %y1, align 8
  %30 = load i64, i64* %z1, align 8
  %31 = icmp slt i64 %28, 1
  %32 = icmp slt i64 %29, 1
  %or.cond = or i1 %31, %32
  %33 = icmp slt i64 %30, 1
  %or.cond3 = or i1 %or.cond, %33
  br i1 %or.cond3, label %.loopexit.loopexit160, label %.outer

; <label>:34                                      ; preds = %22
  %35 = icmp eq i32 %17, 7
  br i1 %35, label %36, label %.loopexit.loopexit

; <label>:36                                      ; preds = %34
  %37 = load i64, i64* %x1, align 8
  %38 = load i64, i64* %y1, align 8
  %39 = load i64, i64* %z1, align 8
  %40 = call %struct.coordinate* @coordinate_alloc(i64 %37, i64 %38, i64 %39) #8
  %41 = load i64, i64* %x2, align 8
  %42 = load i64, i64* %y2, align 8
  %43 = load i64, i64* %z2, align 8
  %44 = call %struct.coordinate* @coordinate_alloc(i64 %41, i64 %42, i64 %43) #8
  %45 = icmp eq %struct.coordinate* %40, null
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %36
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.28, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.20, i64 0, i64 0), i32 216, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i64 0, i64 0)) #15
  unreachable

; <label>:47                                      ; preds = %36
  %48 = icmp eq %struct.coordinate* %44, null
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %47
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.29, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.20, i64 0, i64 0), i32 217, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i64 0, i64 0)) #15
  unreachable

; <label>:50                                      ; preds = %47
  %51 = call i64 @coordinate_isEqual(%struct.coordinate* nonnull %40, %struct.coordinate* nonnull %44) #8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %.loopexit.loopexit

; <label>:53                                      ; preds = %50
  %54 = bitcast %struct.coordinate* %40 to i8*
  %55 = bitcast %struct.coordinate* %44 to i8*
  %56 = call %struct.pair* @pair_alloc(i8* %54, i8* %55) #8
  %57 = icmp eq %struct.pair* %56, null
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %53
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7.30, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.20, i64 0, i64 0), i32 222, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i64 0, i64 0)) #15
  unreachable

; <label>:59                                      ; preds = %53
  %60 = bitcast %struct.pair* %56 to i8*
  %61 = call i64 @list_insert(%struct.list* %7, i8* %60) #8
  %62 = icmp eq i64 %61, 1
  br i1 %62, label %64, label %63

; <label>:63                                      ; preds = %59
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8.31, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.20, i64 0, i64 0), i32 224, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i64 0, i64 0)) #15
  unreachable

; <label>:64                                      ; preds = %59
  %65 = call i64 @vector_pushBack(%struct.vector* %11, i8* %54) #8
  %66 = call i64 @vector_pushBack(%struct.vector* %13, i8* %55) #8
  br label %.backedge

; <label>:67                                      ; preds = %22
  %68 = icmp eq i32 %17, 4
  br i1 %68, label %69, label %.loopexit.loopexit

; <label>:69                                      ; preds = %67
  %70 = load i64, i64* %x1, align 8
  %71 = load i64, i64* %y1, align 8
  %72 = load i64, i64* %z1, align 8
  %73 = call %struct.coordinate* @coordinate_alloc(i64 %70, i64 %71, i64 %72) #8
  %74 = bitcast %struct.coordinate* %73 to i8*
  %75 = call i64 @vector_pushBack(%struct.vector* %9, i8* %74) #8
  br label %.backedge

.loopexit.loopexit:                               ; preds = %67, %50, %34, %22
  %.lcssa = phi i64 [ %18, %22 ], [ %18, %67 ], [ %18, %34 ], [ %18, %50 ]
  br label %.loopexit

.loopexit.loopexit160:                            ; preds = %27, %25
  %.lcssa203.lcssa = phi i64 [ %.lcssa203, %27 ], [ %.lcssa203, %25 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit160, %.loopexit.loopexit
  %76 = phi i64 [ %.lcssa203.lcssa, %.loopexit.loopexit160 ], [ %.lcssa, %.loopexit.loopexit ]
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9.32, i64 0, i64 0), i64 %76, i8* %inputFileName) #19
  call void @exit(i32 1) #15
  unreachable

.outer._crit_edge.loopexit:                       ; preds = %.backedge
  %height.0.ph.lcssa231 = phi i64 [ %height.0.ph, %.backedge ]
  %width.0.ph.lcssa223 = phi i64 [ %width.0.ph, %.backedge ]
  %depth.0.ph.lcssa215 = phi i64 [ %depth.0.ph, %.backedge ]
  br label %.outer._crit_edge

.outer._crit_edge.loopexit159:                    ; preds = %.outer
  %height.0.ph.lcssa = phi i64 [ %height.0.ph, %.outer ]
  %width.0.ph.lcssa = phi i64 [ %width.0.ph, %.outer ]
  %depth.0.ph.lcssa = phi i64 [ %depth.0.ph, %.outer ]
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer._crit_edge.loopexit159, %.outer._crit_edge.loopexit
  %height.0.ph232 = phi i64 [ %height.0.ph.lcssa, %.outer._crit_edge.loopexit159 ], [ %height.0.ph.lcssa231, %.outer._crit_edge.loopexit ]
  %width.0.ph224 = phi i64 [ %width.0.ph.lcssa, %.outer._crit_edge.loopexit159 ], [ %width.0.ph.lcssa223, %.outer._crit_edge.loopexit ]
  %depth.0.ph216 = phi i64 [ %depth.0.ph.lcssa, %.outer._crit_edge.loopexit159 ], [ %depth.0.ph.lcssa215, %.outer._crit_edge.loopexit ]
  %79 = icmp slt i64 %width.0.ph224, 1
  %80 = icmp slt i64 %height.0.ph232, 1
  %or.cond5 = or i1 %79, %80
  %81 = icmp slt i64 %depth.0.ph216, 1
  %or.cond7 = or i1 %81, %or.cond5
  br i1 %or.cond7, label %82, label %85

; <label>:82                                      ; preds = %.outer._crit_edge
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10.33, i64 0, i64 0), i64 %width.0.ph224, i64 %height.0.ph232, i64 %depth.0.ph216) #19
  call void @exit(i32 1) #15
  unreachable

; <label>:85                                      ; preds = %.outer._crit_edge
  %86 = call %struct.grid* @grid_alloc(i64 %width.0.ph224, i64 %height.0.ph232, i64 %depth.0.ph216) #8
  %87 = icmp eq %struct.grid* %86, null
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %85
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11.34, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.20, i64 0, i64 0), i32 256, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.maze_read, i64 0, i64 0)) #15
  unreachable

; <label>:89                                      ; preds = %85
  %90 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 0
  store %struct.grid* %86, %struct.grid** %90, align 8
  call fastcc void @addToGrid(%struct.grid* nonnull %86, %struct.vector* %9, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12.35, i64 0, i64 0))
  call fastcc void @addToGrid(%struct.grid* nonnull %86, %struct.vector* %11, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.37, i64 0, i64 0))
  call fastcc void @addToGrid(%struct.grid* nonnull %86, %struct.vector* %13, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14.38, i64 0, i64 0))
  %91 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15.39, i64 0, i64 0), i64 %width.0.ph224, i64 %height.0.ph232, i64 %depth.0.ph216)
  %92 = call i64 @list_getSize(%struct.list* %7) #8
  %93 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16.40, i64 0, i64 0), i64 %92)
  %94 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 1
  %95 = load %struct.queue*, %struct.queue** %94, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %7) #8
  %96 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %7) #16
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %89
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %98 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %7) #8
  %99 = call i64 @queue_push(%struct.queue* %95, i8* %98) #8
  %100 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %7) #16
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %89
  call void @list_free(%struct.list* %7) #8
  %102 = call i64 @vector_getSize(%struct.vector* %11) #8
  ret i64 %102
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @addToGrid(%struct.grid* %gridPtr, %struct.vector* %vectorPtr, i8* %type) unnamed_addr #0 {
  %1 = tail call i64 @vector_getSize(%struct.vector* %vectorPtr) #8
  %2 = icmp sgt i64 %1, 0
  br i1 %2, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

; <label>:3                                       ; preds = %.lr.ph
  %4 = icmp slt i64 %16, %1
  br i1 %4, label %.lr.ph, label %._crit_edge.loopexit

.lr.ph:                                           ; preds = %3, %.lr.ph.preheader
  %i.03 = phi i64 [ %16, %3 ], [ 0, %.lr.ph.preheader ]
  %5 = tail call i8* @vector_at(%struct.vector* %vectorPtr, i64 %i.03) #8
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i8, i8* %5, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %5, i64 16
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = tail call i64 @grid_isPointValid(%struct.grid* %gridPtr, i64 %7, i64 %10, i64 %13) #8
  %15 = icmp eq i64 %14, 0
  %16 = add nuw nsw i64 %i.03, 1
  br i1 %15, label %17, label %3

; <label>:17                                      ; preds = %.lr.ph
  %.lcssa27 = phi i64* [ %12, %.lr.ph ]
  %.lcssa25 = phi i64* [ %9, %.lr.ph ]
  %.lcssa = phi i64* [ %6, %.lr.ph ]
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i64, i64* %.lcssa, align 8
  %20 = load i64, i64* %.lcssa25, align 8
  %21 = load i64, i64* %.lcssa27, align 8
  %22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18.36, i64 0, i64 0), i8* %type, i64 %19, i64 %20, i64 %21) #19
  tail call void @exit(i32 1) #15
  unreachable

._crit_edge.loopexit:                             ; preds = %3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  tail call void @grid_addPath(%struct.grid* %gridPtr, %struct.vector* %vectorPtr) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @maze_checkPaths(%struct.maze* nocapture readonly %mazePtr, %struct.list* %pathVectorListPtr, i64 %doPrintPaths) #0 {
  %it = alloca %struct.list_node*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %z = alloca i64, align 8
  %prevCoordinate = alloca %struct.coordinate, align 8
  %currCoordinate = alloca %struct.coordinate, align 8
  %1 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 0
  %2 = load %struct.grid*, %struct.grid** %1, align 8
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %2, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %2, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.grid, %struct.grid* %2, i64 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = tail call %struct.grid* @grid_alloc(i64 %4, i64 %6, i64 %8) #8
  %10 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 2
  %11 = load %struct.vector*, %struct.vector** %10, align 8
  tail call void @grid_addPath(%struct.grid* %9, %struct.vector* %11) #8
  %12 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 3
  %13 = load %struct.vector*, %struct.vector** %12, align 8
  %14 = tail call i64 @vector_getSize(%struct.vector* %13) #8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %.lr.ph23.preheader, label %._crit_edge24

.lr.ph23.preheader:                               ; preds = %0
  br label %.lr.ph23

.lr.ph23:                                         ; preds = %.lr.ph23, %.lr.ph23.preheader
  %i.021 = phi i64 [ %25, %.lr.ph23 ], [ 0, %.lr.ph23.preheader ]
  %16 = tail call i8* @vector_at(%struct.vector* %13, i64 %i.021) #8
  %17 = bitcast i8* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8, i8* %16, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* %16, i64 16
  %23 = bitcast i8* %22 to i64*
  %24 = load i64, i64* %23, align 8
  tail call void @grid_setPoint(%struct.grid* %9, i64 %18, i64 %21, i64 %24, i64 0) #8
  %25 = add nuw nsw i64 %i.021, 1
  %exitcond31 = icmp eq i64 %25, %14
  br i1 %exitcond31, label %._crit_edge24.loopexit, label %.lr.ph23

._crit_edge24.loopexit:                           ; preds = %.lr.ph23
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %._crit_edge24.loopexit, %0
  %26 = getelementptr inbounds %struct.maze, %struct.maze* %mazePtr, i64 0, i32 4
  %27 = load %struct.vector*, %struct.vector** %26, align 8
  %28 = tail call i64 @vector_getSize(%struct.vector* %27) #8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %.lr.ph19.preheader, label %._crit_edge20

.lr.ph19.preheader:                               ; preds = %._crit_edge24
  br label %.lr.ph19

.lr.ph19:                                         ; preds = %.lr.ph19, %.lr.ph19.preheader
  %i.117 = phi i64 [ %39, %.lr.ph19 ], [ 0, %.lr.ph19.preheader ]
  %30 = tail call i8* @vector_at(%struct.vector* %27, i64 %i.117) #8
  %31 = bitcast i8* %30 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8, i8* %30, i64 8
  %34 = bitcast i8* %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8, i8* %30, i64 16
  %37 = bitcast i8* %36 to i64*
  %38 = load i64, i64* %37, align 8
  tail call void @grid_setPoint(%struct.grid* %9, i64 %32, i64 %35, i64 %38, i64 0) #8
  %39 = add nuw nsw i64 %i.117, 1
  %exitcond = icmp eq i64 %39, %28
  br i1 %exitcond, label %._crit_edge20.loopexit, label %.lr.ph19

._crit_edge20.loopexit:                           ; preds = %.lr.ph19
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge20.loopexit, %._crit_edge24
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %pathVectorListPtr) #8
  %40 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %pathVectorListPtr) #16
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %._crit_edge16, label %.lr.ph15

.lr.ph15:                                         ; preds = %._crit_edge20
  %42 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %prevCoordinate, i64 0, i32 0
  %43 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %prevCoordinate, i64 0, i32 1
  %44 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %prevCoordinate, i64 0, i32 2
  %45 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %currCoordinate, i64 0, i32 0
  %46 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %currCoordinate, i64 0, i32 1
  %47 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %currCoordinate, i64 0, i32 2
  %48 = bitcast %struct.coordinate* %prevCoordinate to i8*
  %49 = bitcast %struct.coordinate* %currCoordinate to i8*
  br label %52

.loopexit.loopexit:                               ; preds = %57
  %.lcssa55 = phi i64 [ %59, %57 ]
  br label %.loopexit

.loopexit:                                        ; preds = %52, %.loopexit.loopexit
  %id.1.lcssa = phi i64 [ %id.013, %52 ], [ %.lcssa55, %.loopexit.loopexit ]
  %50 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %pathVectorListPtr) #16
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %._crit_edge16.loopexit, label %52

; <label>:52                                      ; preds = %.loopexit, %.lr.ph15
  %id.013 = phi i64 [ 0, %.lr.ph15 ], [ %id.1.lcssa, %.loopexit ]
  %53 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %pathVectorListPtr) #8
  %54 = bitcast i8* %53 to %struct.vector*
  %55 = call i64 @vector_getSize(%struct.vector* %54) #8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %.lr.ph11.preheader, label %.loopexit

.lr.ph11.preheader:                               ; preds = %52
  br label %.lr.ph11

; <label>:57                                      ; preds = %._crit_edge
  %58 = icmp slt i64 %97, %55
  br i1 %58, label %.lr.ph11, label %.loopexit.loopexit

.lr.ph11:                                         ; preds = %57, %.lr.ph11.preheader
  %id.19 = phi i64 [ %59, %57 ], [ %id.013, %.lr.ph11.preheader ]
  %i1.08 = phi i64 [ %97, %57 ], [ 0, %.lr.ph11.preheader ]
  %59 = add nsw i64 %id.19, 1
  %60 = call i8* @vector_at(%struct.vector* %54, i64 %i1.08) #8
  %61 = bitcast i8* %60 to %struct.vector*
  %62 = call i8* @vector_at(%struct.vector* %61, i64 0) #8
  %63 = bitcast i8* %62 to i64*
  call void @grid_getPointIndices(%struct.grid* %2, i64* %63, i64* nonnull %x, i64* nonnull %y, i64* nonnull %z) #8
  %64 = load i64, i64* %x, align 8
  %65 = load i64, i64* %y, align 8
  %66 = load i64, i64* %z, align 8
  %67 = call i64 @grid_getPoint(%struct.grid* %9, i64 %64, i64 %65, i64 %66) #8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %70, label %69

; <label>:69                                      ; preds = %.lr.ph11
  call void @grid_free(%struct.grid* %9) #8
  br label %103

; <label>:70                                      ; preds = %.lr.ph11
  call void @grid_getPointIndices(%struct.grid* %2, i64* %63, i64* %42, i64* %43, i64* %44) #8
  %71 = call i64 @vector_getSize(%struct.vector* %61) #8
  %72 = add nsw i64 %71, -1
  %73 = icmp sgt i64 %72, 1
  %74 = call i8* @vector_at(%struct.vector* %61, i64 1) #8
  %75 = bitcast i8* %74 to i64*
  br i1 %73, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %70
  br label %.lr.ph

.lr.ph:                                           ; preds = %87, %.lr.ph.preheader
  %76 = phi i64* [ %91, %87 ], [ %75, %.lr.ph.preheader ]
  %j.07 = phi i64 [ %88, %87 ], [ 1, %.lr.ph.preheader ]
  call void @grid_getPointIndices(%struct.grid* %2, i64* %76, i64* %45, i64* %46, i64* %47) #8
  %77 = call i64 @coordinate_areAdjacent(%struct.coordinate* nonnull %currCoordinate, %struct.coordinate* nonnull %prevCoordinate) #8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

; <label>:79                                      ; preds = %.lr.ph
  call void @grid_free(%struct.grid* %9) #8
  br label %103

; <label>:80                                      ; preds = %.lr.ph
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 24, i32 8, i1 false)
  %81 = load i64, i64* %45, align 8
  %82 = load i64, i64* %46, align 8
  %83 = load i64, i64* %47, align 8
  %84 = call i64 @grid_getPoint(%struct.grid* %9, i64 %81, i64 %82, i64 %83) #8
  %85 = icmp eq i64 %84, -1
  br i1 %85, label %87, label %86

; <label>:86                                      ; preds = %80
  call void @grid_free(%struct.grid* %9) #8
  br label %103

; <label>:87                                      ; preds = %80
  call void @grid_setPoint(%struct.grid* %9, i64 %81, i64 %82, i64 %83, i64 %59) #8
  %88 = add nuw nsw i64 %j.07, 1
  %89 = icmp slt i64 %88, %72
  %90 = call i8* @vector_at(%struct.vector* %61, i64 %88) #8
  %91 = bitcast i8* %90 to i64*
  br i1 %89, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %87
  %.lcssa50 = phi i64* [ %91, %87 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %70
  %.lcssa = phi i64* [ %75, %70 ], [ %.lcssa50, %._crit_edge.loopexit ]
  call void @grid_getPointIndices(%struct.grid* %2, i64* %.lcssa, i64* nonnull %x, i64* nonnull %y, i64* nonnull %z) #8
  %92 = load i64, i64* %x, align 8
  %93 = load i64, i64* %y, align 8
  %94 = load i64, i64* %z, align 8
  %95 = call i64 @grid_getPoint(%struct.grid* %9, i64 %92, i64 %93, i64 %94) #8
  %96 = icmp eq i64 %95, 0
  %97 = add nuw nsw i64 %i1.08, 1
  br i1 %96, label %57, label %98

; <label>:98                                      ; preds = %._crit_edge
  call void @grid_free(%struct.grid* %9) #8
  br label %103

._crit_edge16.loopexit:                           ; preds = %.loopexit
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %._crit_edge16.loopexit, %._crit_edge20
  %99 = icmp eq i64 %doPrintPaths, 0
  br i1 %99, label %102, label %100

; <label>:100                                     ; preds = %._crit_edge16
  %101 = call i32 @puts(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.43, i64 0, i64 0))
  call void @grid_print(%struct.grid* %9) #8
  br label %102

; <label>:102                                     ; preds = %100, %._crit_edge16
  call void @grid_free(%struct.grid* %9) #8
  br label %103

; <label>:103                                     ; preds = %102, %98, %86, %79, %69
  %.0 = phi i64 [ 0, %69 ], [ 0, %86 ], [ 0, %79 ], [ 0, %98 ], [ 1, %102 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define noalias %struct.router* @router_alloc(i64 %xCost, i64 %yCost, i64 %zCost, i64 %bendCost) #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #8
  %2 = bitcast i8* %1 to %struct.router*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %12, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i64*
  store i64 %xCost, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 %yCost, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %zCost, i64* %9, align 8
  %10 = getelementptr inbounds i8, i8* %1, i64 24
  %11 = bitcast i8* %10 to i64*
  store i64 %bendCost, i64* %11, align 8
  br label %12

; <label>:12                                      ; preds = %4, %0
  ret %struct.router* %2
}

; Function Attrs: nounwind uwtable
define void @router_free(%struct.router* nocapture %routerPtr) #0 {
  %1 = bitcast %struct.router* %routerPtr to i8*
  tail call void @free(i8* %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @router_solve(i8* nocapture readonly %argPtr) #0 {
  %x.i = alloca i64, align 8
  %y.i = alloca i64, align 8
  %z.i = alloca i64, align 8
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #8
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #8
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #8
  %5 = bitcast i8* %argPtr to %struct.router**
  %6 = load %struct.router*, %struct.router** %5, align 8
  %7 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %8 = bitcast i8* %7 to %struct.maze**
  %9 = load %struct.maze*, %struct.maze** %8, align 8
  %10 = tail call %struct.vector* @Pvector_alloc(i64 1) #8
  %11 = icmp eq %struct.vector* %10, null
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.51, i64 0, i64 0), i32 362, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.router_solve, i64 0, i64 0)) #15
  unreachable

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.maze, %struct.maze* %9, i64 0, i32 1
  %15 = load %struct.queue*, %struct.queue** %14, align 8
  %16 = getelementptr inbounds %struct.maze, %struct.maze* %9, i64 0, i32 0
  %17 = load %struct.grid*, %struct.grid** %16, align 8
  %18 = getelementptr inbounds %struct.grid, %struct.grid* %17, i64 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.grid, %struct.grid* %17, i64 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.grid, %struct.grid* %17, i64 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = tail call %struct.grid* @Pgrid_alloc(i64 %19, i64 %21, i64 %23) #8
  %25 = icmp eq %struct.grid* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %13
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.52, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.51, i64 0, i64 0), i32 368, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.router_solve, i64 0, i64 0)) #15
  unreachable

; <label>:27                                      ; preds = %13
  %28 = getelementptr inbounds %struct.router, %struct.router* %6, i64 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = tail call %struct.queue* @Pqueue_alloc(i64 -1) #8
  %.idx = getelementptr %struct.router, %struct.router* %6, i64 0, i32 0
  %.idx1 = getelementptr %struct.router, %struct.router* %6, i64 0, i32 1
  %.idx2 = getelementptr %struct.router, %struct.router* %6, i64 0, i32 2
  %31 = bitcast i64* %x.i to i8*
  %32 = bitcast i64* %y.i to i8*
  %33 = bitcast i64* %z.i to i8*
  br label %.outer8

.outer8:                                          ; preds = %.outer8.backedge, %27
  %tries.0.ph = phi i32 [ 9, %27 ], [ %tries.0.ph.be, %.outer8.backedge ]
  %34 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #8
  %35 = icmp eq i64 %34, 0
  %36 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %36, i32 0, i32 3, i32 1)
  br i1 %35, label %._crit_edge12, label %.lr.ph11.preheader

.lr.ph11.preheader:                               ; preds = %.outer8
  br label %.lr.ph11

.lr.ph11:                                         ; preds = %.lr.ph11, %.lr.ph11.preheader
  call void @llvm.x86.sse2.pause() #8
  %37 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %._crit_edge12.loopexit, label %.lr.ph11

._crit_edge12.loopexit:                           ; preds = %.lr.ph11
  br label %._crit_edge12

._crit_edge12:                                    ; preds = %._crit_edge12.loopexit, %.outer8
  %39 = icmp slt i32 %tries.0.ph, 2
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %._crit_edge12
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #8
  br label %50

; <label>:41                                      ; preds = %._crit_edge12
  %42 = add nsw i32 %tries.0.ph, -1
  %43 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #8, !srcloc !6
  %44 = trunc i64 %43 to i32
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %.outer8.backedge

.outer8.backedge:                                 ; preds = %520, %518, %41
  %tries.0.ph.be = phi i32 [ 9, %518 ], [ 9, %520 ], [ %42, %41 ]
  br label %.outer8

; <label>:46                                      ; preds = %41
  %47 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %50, label %49

; <label>:49                                      ; preds = %46
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #8, !srcloc !7
  br label %50

; <label>:50                                      ; preds = %49, %46, %40
  %51 = call i64 @TMqueue_isEmpty(%struct.queue* %15) #8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

; <label>:53                                      ; preds = %50
  %54 = call i8* @TMqueue_pop(%struct.queue* %15) #8
  %55 = bitcast i8* %54 to %struct.pair*
  br label %56

; <label>:56                                      ; preds = %53, %50
  %coordinatePairPtr.0 = phi %struct.pair* [ %55, %53 ], [ null, %50 ]
  %57 = icmp sgt i32 %tries.0.ph, 1
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %56
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #8, !srcloc !8
  br label %60

; <label>:59                                      ; preds = %56
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #8
  br label %60

; <label>:60                                      ; preds = %59, %58
  %61 = icmp eq %struct.pair* %coordinatePairPtr.0, null
  br i1 %61, label %525, label %62

; <label>:62                                      ; preds = %60
  %63 = bitcast %struct.pair* %coordinatePairPtr.0 to %struct.coordinate**
  %64 = load %struct.coordinate*, %struct.coordinate** %63, align 8
  %65 = getelementptr inbounds %struct.pair, %struct.pair* %coordinatePairPtr.0, i64 0, i32 1
  %66 = bitcast i8** %65 to %struct.coordinate**
  %67 = load %struct.coordinate*, %struct.coordinate** %66, align 8
  br label %.outer7

.outer7:                                          ; preds = %117, %62
  %tries2.0.ph = phi i32 [ %118, %117 ], [ 9, %62 ]
  %68 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #8
  %69 = icmp eq i64 %68, 0
  %70 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %70, i32 0, i32 3, i32 1)
  %71 = bitcast i64* %.idx to i8*
  call void @llvm.prefetch(i8* %71, i32 0, i32 3, i32 1)
  %72 = bitcast i64* %.idx1 to i8*
  call void @llvm.prefetch(i8* %72, i32 0, i32 3, i32 1)
  %73 = bitcast i64* %.idx2 to i8*
  call void @llvm.prefetch(i8* %73, i32 0, i32 3, i32 1)
  %74 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %64, i64 0, i32 0
  %75 = bitcast i64* %74 to i8*
  call void @llvm.prefetch(i8* %75, i32 0, i32 3, i32 1)
  %76 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %64, i64 0, i32 1
  %77 = bitcast i64* %76 to i8*
  call void @llvm.prefetch(i8* %77, i32 0, i32 3, i32 1)
  %78 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %64, i64 0, i32 2
  %79 = bitcast i64* %78 to i8*
  call void @llvm.prefetch(i8* %79, i32 0, i32 3, i32 1)
  %80 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %67, i64 0, i32 0
  %81 = bitcast i64* %80 to i8*
  call void @llvm.prefetch(i8* %81, i32 0, i32 3, i32 1)
  %82 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %67, i64 0, i32 1
  %83 = bitcast i64* %82 to i8*
  call void @llvm.prefetch(i8* %83, i32 0, i32 3, i32 1)
  %84 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %67, i64 0, i32 2
  %85 = bitcast i64* %84 to i8*
  call void @llvm.prefetch(i8* %85, i32 0, i32 3, i32 1)
  %86 = bitcast i64* %x.i to i8*
  call void @llvm.prefetch(i8* %86, i32 0, i32 3, i32 1)
  %87 = bitcast i64* %y.i to i8*
  call void @llvm.prefetch(i8* %87, i32 0, i32 3, i32 1)
  %88 = bitcast i64* %z.i to i8*
  call void @llvm.prefetch(i8* %88, i32 0, i32 3, i32 1)
  %89 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 0) to i8*
  call void @llvm.prefetch(i8* %89, i32 0, i32 3, i32 1)
  %90 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 1) to i8*
  call void @llvm.prefetch(i8* %90, i32 0, i32 3, i32 1)
  %91 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 2) to i8*
  call void @llvm.prefetch(i8* %91, i32 0, i32 3, i32 1)
  %92 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 0) to i8*
  call void @llvm.prefetch(i8* %92, i32 0, i32 3, i32 1)
  %93 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 1) to i8*
  call void @llvm.prefetch(i8* %93, i32 0, i32 3, i32 1)
  %94 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 2) to i8*
  call void @llvm.prefetch(i8* %94, i32 0, i32 3, i32 1)
  %95 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 0) to i8*
  call void @llvm.prefetch(i8* %95, i32 0, i32 3, i32 1)
  %96 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 1) to i8*
  call void @llvm.prefetch(i8* %96, i32 0, i32 3, i32 1)
  %97 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 2) to i8*
  call void @llvm.prefetch(i8* %97, i32 0, i32 3, i32 1)
  %98 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 0) to i8*
  call void @llvm.prefetch(i8* %98, i32 0, i32 3, i32 1)
  %99 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 1) to i8*
  call void @llvm.prefetch(i8* %99, i32 0, i32 3, i32 1)
  %100 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 2) to i8*
  call void @llvm.prefetch(i8* %100, i32 0, i32 3, i32 1)
  %101 = bitcast i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 4) to i8*
  call void @llvm.prefetch(i8* %101, i32 0, i32 3, i32 1)
  %102 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 0) to i8*
  call void @llvm.prefetch(i8* %102, i32 0, i32 3, i32 1)
  %103 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 1) to i8*
  call void @llvm.prefetch(i8* %103, i32 0, i32 3, i32 1)
  %104 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 2) to i8*
  call void @llvm.prefetch(i8* %104, i32 0, i32 3, i32 1)
  %105 = bitcast i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 4) to i8*
  call void @llvm.prefetch(i8* %105, i32 0, i32 3, i32 1)
  %106 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 0) to i8*
  call void @llvm.prefetch(i8* %106, i32 0, i32 3, i32 1)
  %107 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 1) to i8*
  call void @llvm.prefetch(i8* %107, i32 0, i32 3, i32 1)
  %108 = bitcast i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 2) to i8*
  call void @llvm.prefetch(i8* %108, i32 0, i32 3, i32 1)
  %109 = bitcast i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 4) to i8*
  call void @llvm.prefetch(i8* %109, i32 0, i32 3, i32 1)
  %110 = bitcast i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 4) to i8*
  call void @llvm.prefetch(i8* %110, i32 0, i32 3, i32 1)
  %111 = bitcast i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 4) to i8*
  call void @llvm.prefetch(i8* %111, i32 0, i32 3, i32 1)
  %112 = bitcast i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 4) to i8*
  call void @llvm.prefetch(i8* %112, i32 0, i32 3, i32 1)
  br i1 %69, label %._crit_edge14, label %.lr.ph13.preheader

.lr.ph13.preheader:                               ; preds = %.outer7
  br label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13, %.lr.ph13.preheader
  call void @llvm.x86.sse2.pause() #8
  %113 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %._crit_edge14.loopexit, label %.lr.ph13

._crit_edge14.loopexit:                           ; preds = %.lr.ph13
  br label %._crit_edge14

._crit_edge14:                                    ; preds = %._crit_edge14.loopexit, %.outer7
  %115 = icmp slt i32 %tries2.0.ph, 2
  br i1 %115, label %116, label %117

; <label>:116                                     ; preds = %._crit_edge14
  %tries2.0.ph.lcssa = phi i32 [ %tries2.0.ph, %._crit_edge14 ]
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #8
  br label %126

; <label>:117                                     ; preds = %._crit_edge14
  %118 = add nsw i32 %tries2.0.ph, -1
  %119 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #8, !srcloc !6
  %120 = trunc i64 %119 to i32
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %.outer7

; <label>:122                                     ; preds = %117
  %tries2.0.ph.lcssa23 = phi i32 [ %tries2.0.ph, %117 ]
  %123 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %126, label %125

; <label>:125                                     ; preds = %122
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #8, !srcloc !7
  br label %126

; <label>:126                                     ; preds = %125, %122, %116
  %tries2.0.ph24 = phi i32 [ %tries2.0.ph.lcssa23, %122 ], [ %tries2.0.ph.lcssa23, %125 ], [ %tries2.0.ph.lcssa, %116 ]
  call void @grid_copy(%struct.grid* nonnull %24, %struct.grid* %17) #8
  %.idx.val = load i64, i64* %.idx, align 8
  %.idx1.val = load i64, i64* %.idx1, align 8
  %.idx2.val = load i64, i64* %.idx2, align 8
  call void @llvm.lifetime.start(i64 8, i8* %31)
  call void @llvm.lifetime.start(i64 8, i8* %32)
  call void @llvm.lifetime.start(i64 8, i8* %33)
  call void @queue_clear(%struct.queue* %30) #8
  %127 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %64, i64 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %64, i64 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %64, i64 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %128, i64 %130, i64 %132) #8
  %134 = bitcast i64* %133 to i8*
  %135 = call i64 @Pqueue_push(%struct.queue* %30, i8* %134) #8
  %136 = load i64, i64* %127, align 8
  %137 = load i64, i64* %129, align 8
  %138 = load i64, i64* %131, align 8
  call void @grid_setPoint(%struct.grid* %24, i64 %136, i64 %137, i64 %138, i64 0) #8
  %139 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %67, i64 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %67, i64 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %67, i64 0, i32 2
  %144 = load i64, i64* %143, align 8
  call void @grid_setPoint(%struct.grid* %24, i64 %140, i64 %142, i64 %144, i64 -1) #8
  %145 = load i64, i64* %139, align 8
  %146 = load i64, i64* %141, align 8
  %147 = load i64, i64* %143, align 8
  %148 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %145, i64 %146, i64 %147) #8
  %149 = call i64 @queue_isEmpty(%struct.queue* %30) #8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %.lr.ph.i.preheader, label %.critedge

.lr.ph.i.preheader:                               ; preds = %126
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %PexpandToNeighbor.exit5.backedge.i, %.lr.ph.i.preheader
  %151 = call i8* @queue_pop(%struct.queue* %30) #8
  %152 = bitcast i8* %151 to i64*
  %153 = icmp eq i64* %152, %148
  br i1 %153, label %.critedge6, label %154

; <label>:154                                     ; preds = %.lr.ph.i
  call void @grid_getPointIndices(%struct.grid* %24, i64* %152, i64* nonnull %x.i, i64* nonnull %y.i, i64* nonnull %z.i) #8
  %155 = load i64, i64* %152, align 8
  %156 = load i64, i64* %x.i, align 8
  %157 = add nsw i64 %156, 1
  %158 = load i64, i64* %y.i, align 8
  %159 = load i64, i64* %z.i, align 8
  %160 = add nsw i64 %155, %.idx.val
  %161 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %157, i64 %158, i64 %159) #8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %PexpandToNeighbor.exit.i, label %163

; <label>:163                                     ; preds = %154
  %164 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %157, i64 %158, i64 %159) #8
  %165 = load i64, i64* %164, align 8
  switch i64 %165, label %169 [
    i64 -1, label %166
    i64 -2, label %PexpandToNeighbor.exit.i
  ]

; <label>:166                                     ; preds = %163
  store i64 %160, i64* %164, align 8
  %167 = bitcast i64* %164 to i8*
  %168 = call i64 @Pqueue_push(%struct.queue* %30, i8* %167) #8
  br label %PexpandToNeighbor.exit.i

; <label>:169                                     ; preds = %163
  %170 = icmp sgt i64 %165, %160
  br i1 %170, label %171, label %PexpandToNeighbor.exit.i

; <label>:171                                     ; preds = %169
  store i64 %160, i64* %164, align 8
  %172 = bitcast i64* %164 to i8*
  %173 = call i64 @Pqueue_push(%struct.queue* %30, i8* %172) #8
  br label %PexpandToNeighbor.exit.i

PexpandToNeighbor.exit.i:                         ; preds = %171, %169, %166, %163, %154
  %174 = load i64, i64* %x.i, align 8
  %175 = add nsw i64 %174, -1
  %176 = load i64, i64* %y.i, align 8
  %177 = load i64, i64* %z.i, align 8
  %178 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %175, i64 %176, i64 %177) #8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %PexpandToNeighbor.exit1.i, label %180

; <label>:180                                     ; preds = %PexpandToNeighbor.exit.i
  %181 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %175, i64 %176, i64 %177) #8
  %182 = load i64, i64* %181, align 8
  switch i64 %182, label %186 [
    i64 -1, label %183
    i64 -2, label %PexpandToNeighbor.exit1.i
  ]

; <label>:183                                     ; preds = %180
  store i64 %160, i64* %181, align 8
  %184 = bitcast i64* %181 to i8*
  %185 = call i64 @Pqueue_push(%struct.queue* %30, i8* %184) #8
  br label %PexpandToNeighbor.exit1.i

; <label>:186                                     ; preds = %180
  %187 = icmp sgt i64 %182, %160
  br i1 %187, label %188, label %PexpandToNeighbor.exit1.i

; <label>:188                                     ; preds = %186
  store i64 %160, i64* %181, align 8
  %189 = bitcast i64* %181 to i8*
  %190 = call i64 @Pqueue_push(%struct.queue* %30, i8* %189) #8
  br label %PexpandToNeighbor.exit1.i

PexpandToNeighbor.exit1.i:                        ; preds = %188, %186, %183, %180, %PexpandToNeighbor.exit.i
  %191 = load i64, i64* %x.i, align 8
  %192 = load i64, i64* %y.i, align 8
  %193 = add nsw i64 %192, 1
  %194 = load i64, i64* %z.i, align 8
  %195 = add nsw i64 %155, %.idx1.val
  %196 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %191, i64 %193, i64 %194) #8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %PexpandToNeighbor.exit2.i, label %198

; <label>:198                                     ; preds = %PexpandToNeighbor.exit1.i
  %199 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %191, i64 %193, i64 %194) #8
  %200 = load i64, i64* %199, align 8
  switch i64 %200, label %204 [
    i64 -1, label %201
    i64 -2, label %PexpandToNeighbor.exit2.i
  ]

; <label>:201                                     ; preds = %198
  store i64 %195, i64* %199, align 8
  %202 = bitcast i64* %199 to i8*
  %203 = call i64 @Pqueue_push(%struct.queue* %30, i8* %202) #8
  br label %PexpandToNeighbor.exit2.i

; <label>:204                                     ; preds = %198
  %205 = icmp sgt i64 %200, %195
  br i1 %205, label %206, label %PexpandToNeighbor.exit2.i

; <label>:206                                     ; preds = %204
  store i64 %195, i64* %199, align 8
  %207 = bitcast i64* %199 to i8*
  %208 = call i64 @Pqueue_push(%struct.queue* %30, i8* %207) #8
  br label %PexpandToNeighbor.exit2.i

PexpandToNeighbor.exit2.i:                        ; preds = %206, %204, %201, %198, %PexpandToNeighbor.exit1.i
  %209 = load i64, i64* %x.i, align 8
  %210 = load i64, i64* %y.i, align 8
  %211 = add nsw i64 %210, -1
  %212 = load i64, i64* %z.i, align 8
  %213 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %209, i64 %211, i64 %212) #8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %PexpandToNeighbor.exit3.i, label %215

; <label>:215                                     ; preds = %PexpandToNeighbor.exit2.i
  %216 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %209, i64 %211, i64 %212) #8
  %217 = load i64, i64* %216, align 8
  switch i64 %217, label %221 [
    i64 -1, label %218
    i64 -2, label %PexpandToNeighbor.exit3.i
  ]

; <label>:218                                     ; preds = %215
  store i64 %195, i64* %216, align 8
  %219 = bitcast i64* %216 to i8*
  %220 = call i64 @Pqueue_push(%struct.queue* %30, i8* %219) #8
  br label %PexpandToNeighbor.exit3.i

; <label>:221                                     ; preds = %215
  %222 = icmp sgt i64 %217, %195
  br i1 %222, label %223, label %PexpandToNeighbor.exit3.i

; <label>:223                                     ; preds = %221
  store i64 %195, i64* %216, align 8
  %224 = bitcast i64* %216 to i8*
  %225 = call i64 @Pqueue_push(%struct.queue* %30, i8* %224) #8
  br label %PexpandToNeighbor.exit3.i

PexpandToNeighbor.exit3.i:                        ; preds = %223, %221, %218, %215, %PexpandToNeighbor.exit2.i
  %226 = load i64, i64* %x.i, align 8
  %227 = load i64, i64* %y.i, align 8
  %228 = load i64, i64* %z.i, align 8
  %229 = add nsw i64 %228, 1
  %230 = add nsw i64 %155, %.idx2.val
  %231 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %226, i64 %227, i64 %229) #8
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %PexpandToNeighbor.exit4.i, label %233

; <label>:233                                     ; preds = %PexpandToNeighbor.exit3.i
  %234 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %226, i64 %227, i64 %229) #8
  %235 = load i64, i64* %234, align 8
  switch i64 %235, label %239 [
    i64 -1, label %236
    i64 -2, label %PexpandToNeighbor.exit4.i
  ]

; <label>:236                                     ; preds = %233
  store i64 %230, i64* %234, align 8
  %237 = bitcast i64* %234 to i8*
  %238 = call i64 @Pqueue_push(%struct.queue* %30, i8* %237) #8
  br label %PexpandToNeighbor.exit4.i

; <label>:239                                     ; preds = %233
  %240 = icmp sgt i64 %235, %230
  br i1 %240, label %241, label %PexpandToNeighbor.exit4.i

; <label>:241                                     ; preds = %239
  store i64 %230, i64* %234, align 8
  %242 = bitcast i64* %234 to i8*
  %243 = call i64 @Pqueue_push(%struct.queue* %30, i8* %242) #8
  br label %PexpandToNeighbor.exit4.i

PexpandToNeighbor.exit4.i:                        ; preds = %241, %239, %236, %233, %PexpandToNeighbor.exit3.i
  %244 = load i64, i64* %x.i, align 8
  %245 = load i64, i64* %y.i, align 8
  %246 = load i64, i64* %z.i, align 8
  %247 = add nsw i64 %246, -1
  %248 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %244, i64 %245, i64 %247) #8
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %PexpandToNeighbor.exit5.backedge.i, label %252

PexpandToNeighbor.exit5.backedge.i:               ; preds = %260, %258, %255, %252, %PexpandToNeighbor.exit4.i
  %250 = call i64 @queue_isEmpty(%struct.queue* %30) #8
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %.lr.ph.i, label %PdoExpansion.exit

; <label>:252                                     ; preds = %PexpandToNeighbor.exit4.i
  %253 = call i64* @grid_getPointRef(%struct.grid* %24, i64 %244, i64 %245, i64 %247) #8
  %254 = load i64, i64* %253, align 8
  switch i64 %254, label %258 [
    i64 -1, label %255
    i64 -2, label %PexpandToNeighbor.exit5.backedge.i
  ]

; <label>:255                                     ; preds = %252
  store i64 %230, i64* %253, align 8
  %256 = bitcast i64* %253 to i8*
  %257 = call i64 @Pqueue_push(%struct.queue* %30, i8* %256) #8
  br label %PexpandToNeighbor.exit5.backedge.i

; <label>:258                                     ; preds = %252
  %259 = icmp sgt i64 %254, %230
  br i1 %259, label %260, label %PexpandToNeighbor.exit5.backedge.i

; <label>:260                                     ; preds = %258
  store i64 %230, i64* %253, align 8
  %261 = bitcast i64* %253 to i8*
  %262 = call i64 @Pqueue_push(%struct.queue* %30, i8* %261) #8
  br label %PexpandToNeighbor.exit5.backedge.i

PdoExpansion.exit:                                ; preds = %PexpandToNeighbor.exit5.backedge.i
  call void @llvm.lifetime.end(i64 8, i8* nonnull %31)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %32)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33)
  br label %514

.critedge6:                                       ; preds = %.lr.ph.i
  call void @llvm.lifetime.end(i64 8, i8* %31)
  call void @llvm.lifetime.end(i64 8, i8* %32)
  call void @llvm.lifetime.end(i64 8, i8* %33)
  %263 = call %struct.vector* @Pvector_alloc(i64 1) #8
  %264 = icmp eq %struct.vector* %263, null
  br i1 %264, label %265, label %266

; <label>:265                                     ; preds = %.critedge6
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.53, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.51, i64 0, i64 0), i32 276, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.PdoTraceback, i64 0, i64 0)) #15
  unreachable

; <label>:266                                     ; preds = %.critedge6
  %267 = load i64, i64* %139, align 8
  %268 = load i64, i64* %141, align 8
  %269 = load i64, i64* %143, align 8
  %270 = call i64 @grid_getPoint(%struct.grid* %24, i64 %267, i64 %268, i64 %269) #8
  %271 = call i64* @grid_getPointRef(%struct.grid* %17, i64 %267, i64 %268, i64 %269) #8
  %272 = bitcast i64* %271 to i8*
  %273 = call i64 @Pvector_pushBack(%struct.vector* nonnull %263, i8* %272) #8
  call void @grid_setPoint(%struct.grid* %24, i64 %267, i64 %268, i64 %269, i64 -2) #8
  %274 = icmp eq i64 %270, 0
  br i1 %274, label %PdoTraceback.exit.thread4, label %.lr.ph.i3.preheader

.lr.ph.i3.preheader:                              ; preds = %266
  br label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %.backedge.i, %.lr.ph.i3.preheader
  %next.sroa.83.025.i = phi i32 [ %next.sroa.83.0.be.i, %.backedge.i ], [ 0, %.lr.ph.i3.preheader ]
  %next.sroa.55.024.i = phi i64 [ %next.sroa.55.0.be.i, %.backedge.i ], [ %270, %.lr.ph.i3.preheader ]
  %next.sroa.37.023.i = phi i64 [ %next.sroa.37.0.be.i, %.backedge.i ], [ %269, %.lr.ph.i3.preheader ]
  %next.sroa.19.022.i = phi i64 [ %next.sroa.19.0.be.i, %.backedge.i ], [ %268, %.lr.ph.i3.preheader ]
  %next.sroa.0.021.i = phi i64 [ %next.sroa.0.0.be.i, %.backedge.i ], [ %267, %.lr.ph.i3.preheader ]
  %275 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 0), align 8
  %276 = add nsw i64 %275, %next.sroa.0.021.i
  %277 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 1), align 8
  %278 = add nsw i64 %277, %next.sroa.19.022.i
  %279 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 2), align 8
  %280 = add nsw i64 %279, %next.sroa.37.023.i
  %281 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %276, i64 %278, i64 %280) #8
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %traceToNeighbor.exit.i, label %283

; <label>:283                                     ; preds = %.lr.ph.i3
  %284 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %276, i64 %278, i64 %280) #8
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %traceToNeighbor.exit.i

; <label>:286                                     ; preds = %283
  %287 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %276, i64 %278, i64 %280) #8
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %traceToNeighbor.exit.i

; <label>:289                                     ; preds = %286
  %290 = call i64 @grid_getPoint(%struct.grid* %24, i64 %276, i64 %278, i64 %280) #8
  %291 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 4), align 8
  %292 = icmp eq i32 %next.sroa.83.025.i, %291
  %.bendCost.i.i = select i1 %292, i64 0, i64 %29
  %293 = add nsw i64 %.bendCost.i.i, %290
  %294 = icmp sgt i64 %293, %next.sroa.55.024.i
  %next.sroa.0.0..i = select i1 %294, i64 %next.sroa.0.021.i, i64 %276
  %next.sroa.19.0..i = select i1 %294, i64 %next.sroa.19.022.i, i64 %278
  %next.sroa.37.0..i = select i1 %294, i64 %next.sroa.37.023.i, i64 %280
  %next.sroa.55.0..i = select i1 %294, i64 %next.sroa.55.024.i, i64 %290
  %next.sroa.83.0..i = select i1 %294, i32 %next.sroa.83.025.i, i32 %291
  br label %traceToNeighbor.exit.i

traceToNeighbor.exit.i:                           ; preds = %289, %286, %283, %.lr.ph.i3
  %next.sroa.0.1.i = phi i64 [ %next.sroa.0.021.i, %.lr.ph.i3 ], [ %next.sroa.0.021.i, %286 ], [ %next.sroa.0.021.i, %283 ], [ %next.sroa.0.0..i, %289 ]
  %next.sroa.19.1.i = phi i64 [ %next.sroa.19.022.i, %.lr.ph.i3 ], [ %next.sroa.19.022.i, %286 ], [ %next.sroa.19.022.i, %283 ], [ %next.sroa.19.0..i, %289 ]
  %next.sroa.37.1.i = phi i64 [ %next.sroa.37.023.i, %.lr.ph.i3 ], [ %next.sroa.37.023.i, %286 ], [ %next.sroa.37.023.i, %283 ], [ %next.sroa.37.0..i, %289 ]
  %next.sroa.55.1.i = phi i64 [ %next.sroa.55.024.i, %.lr.ph.i3 ], [ %next.sroa.55.024.i, %286 ], [ %next.sroa.55.024.i, %283 ], [ %next.sroa.55.0..i, %289 ]
  %next.sroa.83.1.i = phi i32 [ %next.sroa.83.025.i, %.lr.ph.i3 ], [ %next.sroa.83.025.i, %286 ], [ %next.sroa.83.025.i, %283 ], [ %next.sroa.83.0..i, %289 ]
  %295 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 0), align 8
  %296 = add nsw i64 %295, %next.sroa.0.021.i
  %297 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 1), align 8
  %298 = add nsw i64 %297, %next.sroa.19.022.i
  %299 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 2), align 8
  %300 = add nsw i64 %299, %next.sroa.37.023.i
  %301 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %296, i64 %298, i64 %300) #8
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %traceToNeighbor.exit2.i, label %303

; <label>:303                                     ; preds = %traceToNeighbor.exit.i
  %304 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %296, i64 %298, i64 %300) #8
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %traceToNeighbor.exit2.i

; <label>:306                                     ; preds = %303
  %307 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %296, i64 %298, i64 %300) #8
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %traceToNeighbor.exit2.i

; <label>:309                                     ; preds = %306
  %310 = call i64 @grid_getPoint(%struct.grid* %24, i64 %296, i64 %298, i64 %300) #8
  %311 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 4), align 8
  %312 = icmp eq i32 %next.sroa.83.025.i, %311
  %.bendCost.i1.i = select i1 %312, i64 0, i64 %29
  %313 = add nsw i64 %.bendCost.i1.i, %310
  %314 = icmp sgt i64 %313, %next.sroa.55.1.i
  %next.sroa.0.1..i = select i1 %314, i64 %next.sroa.0.1.i, i64 %296
  %next.sroa.19.1..i = select i1 %314, i64 %next.sroa.19.1.i, i64 %298
  %next.sroa.37.1..i = select i1 %314, i64 %next.sroa.37.1.i, i64 %300
  %next.sroa.55.1..i = select i1 %314, i64 %next.sroa.55.1.i, i64 %310
  %next.sroa.83.1..i = select i1 %314, i32 %next.sroa.83.1.i, i32 %311
  br label %traceToNeighbor.exit2.i

traceToNeighbor.exit2.i:                          ; preds = %309, %306, %303, %traceToNeighbor.exit.i
  %next.sroa.0.2.i = phi i64 [ %next.sroa.0.1.i, %traceToNeighbor.exit.i ], [ %next.sroa.0.1.i, %306 ], [ %next.sroa.0.1.i, %303 ], [ %next.sroa.0.1..i, %309 ]
  %next.sroa.19.2.i = phi i64 [ %next.sroa.19.1.i, %traceToNeighbor.exit.i ], [ %next.sroa.19.1.i, %306 ], [ %next.sroa.19.1.i, %303 ], [ %next.sroa.19.1..i, %309 ]
  %next.sroa.37.2.i = phi i64 [ %next.sroa.37.1.i, %traceToNeighbor.exit.i ], [ %next.sroa.37.1.i, %306 ], [ %next.sroa.37.1.i, %303 ], [ %next.sroa.37.1..i, %309 ]
  %next.sroa.55.2.i = phi i64 [ %next.sroa.55.1.i, %traceToNeighbor.exit.i ], [ %next.sroa.55.1.i, %306 ], [ %next.sroa.55.1.i, %303 ], [ %next.sroa.55.1..i, %309 ]
  %next.sroa.83.2.i = phi i32 [ %next.sroa.83.1.i, %traceToNeighbor.exit.i ], [ %next.sroa.83.1.i, %306 ], [ %next.sroa.83.1.i, %303 ], [ %next.sroa.83.1..i, %309 ]
  %315 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 0), align 8
  %316 = add nsw i64 %315, %next.sroa.0.021.i
  %317 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 1), align 8
  %318 = add nsw i64 %317, %next.sroa.19.022.i
  %319 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 2), align 8
  %320 = add nsw i64 %319, %next.sroa.37.023.i
  %321 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %316, i64 %318, i64 %320) #8
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %traceToNeighbor.exit4.i, label %323

; <label>:323                                     ; preds = %traceToNeighbor.exit2.i
  %324 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %316, i64 %318, i64 %320) #8
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %traceToNeighbor.exit4.i

; <label>:326                                     ; preds = %323
  %327 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %316, i64 %318, i64 %320) #8
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %329, label %traceToNeighbor.exit4.i

; <label>:329                                     ; preds = %326
  %330 = call i64 @grid_getPoint(%struct.grid* %24, i64 %316, i64 %318, i64 %320) #8
  %331 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 4), align 8
  %332 = icmp eq i32 %next.sroa.83.025.i, %331
  %.bendCost.i3.i = select i1 %332, i64 0, i64 %29
  %333 = add nsw i64 %.bendCost.i3.i, %330
  %334 = icmp sgt i64 %333, %next.sroa.55.2.i
  %next.sroa.0.2..i = select i1 %334, i64 %next.sroa.0.2.i, i64 %316
  %next.sroa.19.2..i = select i1 %334, i64 %next.sroa.19.2.i, i64 %318
  %next.sroa.37.2..i = select i1 %334, i64 %next.sroa.37.2.i, i64 %320
  %next.sroa.55.2..i = select i1 %334, i64 %next.sroa.55.2.i, i64 %330
  %next.sroa.83.2..i = select i1 %334, i32 %next.sroa.83.2.i, i32 %331
  br label %traceToNeighbor.exit4.i

traceToNeighbor.exit4.i:                          ; preds = %329, %326, %323, %traceToNeighbor.exit2.i
  %next.sroa.0.3.i = phi i64 [ %next.sroa.0.2.i, %traceToNeighbor.exit2.i ], [ %next.sroa.0.2.i, %326 ], [ %next.sroa.0.2.i, %323 ], [ %next.sroa.0.2..i, %329 ]
  %next.sroa.19.3.i = phi i64 [ %next.sroa.19.2.i, %traceToNeighbor.exit2.i ], [ %next.sroa.19.2.i, %326 ], [ %next.sroa.19.2.i, %323 ], [ %next.sroa.19.2..i, %329 ]
  %next.sroa.37.3.i = phi i64 [ %next.sroa.37.2.i, %traceToNeighbor.exit2.i ], [ %next.sroa.37.2.i, %326 ], [ %next.sroa.37.2.i, %323 ], [ %next.sroa.37.2..i, %329 ]
  %next.sroa.55.3.i = phi i64 [ %next.sroa.55.2.i, %traceToNeighbor.exit2.i ], [ %next.sroa.55.2.i, %326 ], [ %next.sroa.55.2.i, %323 ], [ %next.sroa.55.2..i, %329 ]
  %next.sroa.83.3.i = phi i32 [ %next.sroa.83.2.i, %traceToNeighbor.exit2.i ], [ %next.sroa.83.2.i, %326 ], [ %next.sroa.83.2.i, %323 ], [ %next.sroa.83.2..i, %329 ]
  %335 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 0), align 8
  %336 = add nsw i64 %335, %next.sroa.0.021.i
  %337 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 1), align 8
  %338 = add nsw i64 %337, %next.sroa.19.022.i
  %339 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 2), align 8
  %340 = add nsw i64 %339, %next.sroa.37.023.i
  %341 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %336, i64 %338, i64 %340) #8
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %traceToNeighbor.exit6.i, label %343

; <label>:343                                     ; preds = %traceToNeighbor.exit4.i
  %344 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %336, i64 %338, i64 %340) #8
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %346, label %traceToNeighbor.exit6.i

; <label>:346                                     ; preds = %343
  %347 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %336, i64 %338, i64 %340) #8
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %traceToNeighbor.exit6.i

; <label>:349                                     ; preds = %346
  %350 = call i64 @grid_getPoint(%struct.grid* %24, i64 %336, i64 %338, i64 %340) #8
  %351 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 4), align 8
  %352 = icmp eq i32 %next.sroa.83.025.i, %351
  %.bendCost.i5.i = select i1 %352, i64 0, i64 %29
  %353 = add nsw i64 %.bendCost.i5.i, %350
  %354 = icmp sgt i64 %353, %next.sroa.55.3.i
  %next.sroa.0.3..i = select i1 %354, i64 %next.sroa.0.3.i, i64 %336
  %next.sroa.19.3..i = select i1 %354, i64 %next.sroa.19.3.i, i64 %338
  %next.sroa.37.3..i = select i1 %354, i64 %next.sroa.37.3.i, i64 %340
  %next.sroa.55.3..i = select i1 %354, i64 %next.sroa.55.3.i, i64 %350
  %next.sroa.83.3..i = select i1 %354, i32 %next.sroa.83.3.i, i32 %351
  br label %traceToNeighbor.exit6.i

traceToNeighbor.exit6.i:                          ; preds = %349, %346, %343, %traceToNeighbor.exit4.i
  %next.sroa.0.4.i = phi i64 [ %next.sroa.0.3.i, %traceToNeighbor.exit4.i ], [ %next.sroa.0.3.i, %346 ], [ %next.sroa.0.3.i, %343 ], [ %next.sroa.0.3..i, %349 ]
  %next.sroa.19.4.i = phi i64 [ %next.sroa.19.3.i, %traceToNeighbor.exit4.i ], [ %next.sroa.19.3.i, %346 ], [ %next.sroa.19.3.i, %343 ], [ %next.sroa.19.3..i, %349 ]
  %next.sroa.37.4.i = phi i64 [ %next.sroa.37.3.i, %traceToNeighbor.exit4.i ], [ %next.sroa.37.3.i, %346 ], [ %next.sroa.37.3.i, %343 ], [ %next.sroa.37.3..i, %349 ]
  %next.sroa.55.4.i = phi i64 [ %next.sroa.55.3.i, %traceToNeighbor.exit4.i ], [ %next.sroa.55.3.i, %346 ], [ %next.sroa.55.3.i, %343 ], [ %next.sroa.55.3..i, %349 ]
  %next.sroa.83.4.i = phi i32 [ %next.sroa.83.3.i, %traceToNeighbor.exit4.i ], [ %next.sroa.83.3.i, %346 ], [ %next.sroa.83.3.i, %343 ], [ %next.sroa.83.3..i, %349 ]
  %355 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 0), align 8
  %356 = add nsw i64 %355, %next.sroa.0.021.i
  %357 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 1), align 8
  %358 = add nsw i64 %357, %next.sroa.19.022.i
  %359 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 2), align 8
  %360 = add nsw i64 %359, %next.sroa.37.023.i
  %361 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %356, i64 %358, i64 %360) #8
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %traceToNeighbor.exit8.i, label %363

; <label>:363                                     ; preds = %traceToNeighbor.exit6.i
  %364 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %356, i64 %358, i64 %360) #8
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %366, label %traceToNeighbor.exit8.i

; <label>:366                                     ; preds = %363
  %367 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %356, i64 %358, i64 %360) #8
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %traceToNeighbor.exit8.i

; <label>:369                                     ; preds = %366
  %370 = call i64 @grid_getPoint(%struct.grid* %24, i64 %356, i64 %358, i64 %360) #8
  %371 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 4), align 8
  %372 = icmp eq i32 %next.sroa.83.025.i, %371
  %.bendCost.i7.i = select i1 %372, i64 0, i64 %29
  %373 = add nsw i64 %.bendCost.i7.i, %370
  %374 = icmp sgt i64 %373, %next.sroa.55.4.i
  %next.sroa.0.4..i = select i1 %374, i64 %next.sroa.0.4.i, i64 %356
  %next.sroa.19.4..i = select i1 %374, i64 %next.sroa.19.4.i, i64 %358
  %next.sroa.37.4..i = select i1 %374, i64 %next.sroa.37.4.i, i64 %360
  %next.sroa.55.4..i = select i1 %374, i64 %next.sroa.55.4.i, i64 %370
  %next.sroa.83.4..i = select i1 %374, i32 %next.sroa.83.4.i, i32 %371
  br label %traceToNeighbor.exit8.i

traceToNeighbor.exit8.i:                          ; preds = %369, %366, %363, %traceToNeighbor.exit6.i
  %next.sroa.0.5.i = phi i64 [ %next.sroa.0.4.i, %traceToNeighbor.exit6.i ], [ %next.sroa.0.4.i, %366 ], [ %next.sroa.0.4.i, %363 ], [ %next.sroa.0.4..i, %369 ]
  %next.sroa.19.5.i = phi i64 [ %next.sroa.19.4.i, %traceToNeighbor.exit6.i ], [ %next.sroa.19.4.i, %366 ], [ %next.sroa.19.4.i, %363 ], [ %next.sroa.19.4..i, %369 ]
  %next.sroa.37.5.i = phi i64 [ %next.sroa.37.4.i, %traceToNeighbor.exit6.i ], [ %next.sroa.37.4.i, %366 ], [ %next.sroa.37.4.i, %363 ], [ %next.sroa.37.4..i, %369 ]
  %next.sroa.55.5.i = phi i64 [ %next.sroa.55.4.i, %traceToNeighbor.exit6.i ], [ %next.sroa.55.4.i, %366 ], [ %next.sroa.55.4.i, %363 ], [ %next.sroa.55.4..i, %369 ]
  %next.sroa.83.5.i = phi i32 [ %next.sroa.83.4.i, %traceToNeighbor.exit6.i ], [ %next.sroa.83.4.i, %366 ], [ %next.sroa.83.4.i, %363 ], [ %next.sroa.83.4..i, %369 ]
  %375 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 0), align 8
  %376 = add nsw i64 %375, %next.sroa.0.021.i
  %377 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 1), align 8
  %378 = add nsw i64 %377, %next.sroa.19.022.i
  %379 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 2), align 8
  %380 = add nsw i64 %379, %next.sroa.37.023.i
  %381 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %376, i64 %378, i64 %380) #8
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %traceToNeighbor.exit10.i, label %383

; <label>:383                                     ; preds = %traceToNeighbor.exit8.i
  %384 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %376, i64 %378, i64 %380) #8
  %385 = icmp eq i64 %384, 0
  br i1 %385, label %386, label %traceToNeighbor.exit10.i

; <label>:386                                     ; preds = %383
  %387 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %376, i64 %378, i64 %380) #8
  %388 = icmp eq i64 %387, 0
  br i1 %388, label %389, label %traceToNeighbor.exit10.i

; <label>:389                                     ; preds = %386
  %390 = call i64 @grid_getPoint(%struct.grid* %24, i64 %376, i64 %378, i64 %380) #8
  %391 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 4), align 8
  %392 = icmp eq i32 %next.sroa.83.025.i, %391
  %.bendCost.i9.i = select i1 %392, i64 0, i64 %29
  %393 = add nsw i64 %.bendCost.i9.i, %390
  %394 = icmp sgt i64 %393, %next.sroa.55.5.i
  %next.sroa.0.5..i = select i1 %394, i64 %next.sroa.0.5.i, i64 %376
  %next.sroa.19.5..i = select i1 %394, i64 %next.sroa.19.5.i, i64 %378
  %next.sroa.37.5..i = select i1 %394, i64 %next.sroa.37.5.i, i64 %380
  %next.sroa.55.5..i = select i1 %394, i64 %next.sroa.55.5.i, i64 %390
  %next.sroa.83.5..i = select i1 %394, i32 %next.sroa.83.5.i, i32 %391
  br label %traceToNeighbor.exit10.i

traceToNeighbor.exit10.i:                         ; preds = %389, %386, %383, %traceToNeighbor.exit8.i
  %next.sroa.0.6.i = phi i64 [ %next.sroa.0.5.i, %traceToNeighbor.exit8.i ], [ %next.sroa.0.5.i, %386 ], [ %next.sroa.0.5.i, %383 ], [ %next.sroa.0.5..i, %389 ]
  %next.sroa.19.6.i = phi i64 [ %next.sroa.19.5.i, %traceToNeighbor.exit8.i ], [ %next.sroa.19.5.i, %386 ], [ %next.sroa.19.5.i, %383 ], [ %next.sroa.19.5..i, %389 ]
  %next.sroa.37.6.i = phi i64 [ %next.sroa.37.5.i, %traceToNeighbor.exit8.i ], [ %next.sroa.37.5.i, %386 ], [ %next.sroa.37.5.i, %383 ], [ %next.sroa.37.5..i, %389 ]
  %next.sroa.55.6.i = phi i64 [ %next.sroa.55.5.i, %traceToNeighbor.exit8.i ], [ %next.sroa.55.5.i, %386 ], [ %next.sroa.55.5.i, %383 ], [ %next.sroa.55.5..i, %389 ]
  %next.sroa.83.6.i = phi i32 [ %next.sroa.83.5.i, %traceToNeighbor.exit8.i ], [ %next.sroa.83.5.i, %386 ], [ %next.sroa.83.5.i, %383 ], [ %next.sroa.83.5..i, %389 ]
  %395 = icmp eq i64 %next.sroa.0.021.i, %next.sroa.0.6.i
  %396 = icmp eq i64 %next.sroa.19.022.i, %next.sroa.19.6.i
  %or.cond.i = and i1 %395, %396
  %397 = icmp eq i64 %next.sroa.37.023.i, %next.sroa.37.6.i
  %or.cond17.i = and i1 %or.cond.i, %397
  br i1 %or.cond17.i, label %398, label %.backedge.i

; <label>:398                                     ; preds = %traceToNeighbor.exit10.i
  %399 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 0), align 8
  %400 = add nsw i64 %399, %next.sroa.0.021.i
  %401 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 1), align 8
  %402 = add nsw i64 %401, %next.sroa.19.022.i
  %403 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 2), align 8
  %404 = add nsw i64 %403, %next.sroa.37.023.i
  %405 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %400, i64 %402, i64 %404) #8
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %traceToNeighbor.exit11.i, label %407

; <label>:407                                     ; preds = %398
  %408 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %400, i64 %402, i64 %404) #8
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %410, label %traceToNeighbor.exit11.i

; <label>:410                                     ; preds = %407
  %411 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %400, i64 %402, i64 %404) #8
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %413, label %traceToNeighbor.exit11.i

; <label>:413                                     ; preds = %410
  %414 = call i64 @grid_getPoint(%struct.grid* %24, i64 %400, i64 %402, i64 %404) #8
  %415 = icmp sgt i64 %414, %next.sroa.55.024.i
  %416 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSX, i64 0, i32 4), align 8
  %next.sroa.0.6..i = select i1 %415, i64 %next.sroa.0.021.i, i64 %400
  %next.sroa.19.6..i = select i1 %415, i64 %next.sroa.19.022.i, i64 %402
  %next.sroa.37.6..i = select i1 %415, i64 %next.sroa.37.023.i, i64 %404
  %next.sroa.55.0.18.i = select i1 %415, i64 %next.sroa.55.024.i, i64 %414
  %next.sroa.83.6..i = select i1 %415, i32 %next.sroa.83.6.i, i32 %416
  br label %traceToNeighbor.exit11.i

traceToNeighbor.exit11.i:                         ; preds = %413, %410, %407, %398
  %next.sroa.0.7.i = phi i64 [ %next.sroa.0.021.i, %398 ], [ %next.sroa.0.021.i, %410 ], [ %next.sroa.0.021.i, %407 ], [ %next.sroa.0.6..i, %413 ]
  %next.sroa.19.7.i = phi i64 [ %next.sroa.19.022.i, %398 ], [ %next.sroa.19.022.i, %410 ], [ %next.sroa.19.022.i, %407 ], [ %next.sroa.19.6..i, %413 ]
  %next.sroa.37.7.i = phi i64 [ %next.sroa.37.023.i, %398 ], [ %next.sroa.37.023.i, %410 ], [ %next.sroa.37.023.i, %407 ], [ %next.sroa.37.6..i, %413 ]
  %next.sroa.55.7.i = phi i64 [ %next.sroa.55.024.i, %398 ], [ %next.sroa.55.024.i, %410 ], [ %next.sroa.55.024.i, %407 ], [ %next.sroa.55.0.18.i, %413 ]
  %next.sroa.83.7.i = phi i32 [ %next.sroa.83.6.i, %398 ], [ %next.sroa.83.6.i, %410 ], [ %next.sroa.83.6.i, %407 ], [ %next.sroa.83.6..i, %413 ]
  %417 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 0), align 8
  %418 = add nsw i64 %417, %next.sroa.0.021.i
  %419 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 1), align 8
  %420 = add nsw i64 %419, %next.sroa.19.022.i
  %421 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 2), align 8
  %422 = add nsw i64 %421, %next.sroa.37.023.i
  %423 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %418, i64 %420, i64 %422) #8
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %traceToNeighbor.exit12.i, label %425

; <label>:425                                     ; preds = %traceToNeighbor.exit11.i
  %426 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %418, i64 %420, i64 %422) #8
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %428, label %traceToNeighbor.exit12.i

; <label>:428                                     ; preds = %425
  %429 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %418, i64 %420, i64 %422) #8
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %431, label %traceToNeighbor.exit12.i

; <label>:431                                     ; preds = %428
  %432 = call i64 @grid_getPoint(%struct.grid* %24, i64 %418, i64 %420, i64 %422) #8
  %433 = icmp sgt i64 %432, %next.sroa.55.7.i
  %434 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSY, i64 0, i32 4), align 8
  %next.sroa.0.7..i = select i1 %433, i64 %next.sroa.0.7.i, i64 %418
  %next.sroa.19.7..i = select i1 %433, i64 %next.sroa.19.7.i, i64 %420
  %next.sroa.37.7..i = select i1 %433, i64 %next.sroa.37.7.i, i64 %422
  %next.sroa.55.7..i = select i1 %433, i64 %next.sroa.55.7.i, i64 %432
  %next.sroa.83.7..i = select i1 %433, i32 %next.sroa.83.7.i, i32 %434
  br label %traceToNeighbor.exit12.i

traceToNeighbor.exit12.i:                         ; preds = %431, %428, %425, %traceToNeighbor.exit11.i
  %next.sroa.0.8.i = phi i64 [ %next.sroa.0.7.i, %traceToNeighbor.exit11.i ], [ %next.sroa.0.7.i, %428 ], [ %next.sroa.0.7.i, %425 ], [ %next.sroa.0.7..i, %431 ]
  %next.sroa.19.8.i = phi i64 [ %next.sroa.19.7.i, %traceToNeighbor.exit11.i ], [ %next.sroa.19.7.i, %428 ], [ %next.sroa.19.7.i, %425 ], [ %next.sroa.19.7..i, %431 ]
  %next.sroa.37.8.i = phi i64 [ %next.sroa.37.7.i, %traceToNeighbor.exit11.i ], [ %next.sroa.37.7.i, %428 ], [ %next.sroa.37.7.i, %425 ], [ %next.sroa.37.7..i, %431 ]
  %next.sroa.55.8.i = phi i64 [ %next.sroa.55.7.i, %traceToNeighbor.exit11.i ], [ %next.sroa.55.7.i, %428 ], [ %next.sroa.55.7.i, %425 ], [ %next.sroa.55.7..i, %431 ]
  %next.sroa.83.8.i = phi i32 [ %next.sroa.83.7.i, %traceToNeighbor.exit11.i ], [ %next.sroa.83.7.i, %428 ], [ %next.sroa.83.7.i, %425 ], [ %next.sroa.83.7..i, %431 ]
  %435 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 0), align 8
  %436 = add nsw i64 %435, %next.sroa.0.021.i
  %437 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 1), align 8
  %438 = add nsw i64 %437, %next.sroa.19.022.i
  %439 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 2), align 8
  %440 = add nsw i64 %439, %next.sroa.37.023.i
  %441 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %436, i64 %438, i64 %440) #8
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %traceToNeighbor.exit13.i, label %443

; <label>:443                                     ; preds = %traceToNeighbor.exit12.i
  %444 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %436, i64 %438, i64 %440) #8
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %446, label %traceToNeighbor.exit13.i

; <label>:446                                     ; preds = %443
  %447 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %436, i64 %438, i64 %440) #8
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %traceToNeighbor.exit13.i

; <label>:449                                     ; preds = %446
  %450 = call i64 @grid_getPoint(%struct.grid* %24, i64 %436, i64 %438, i64 %440) #8
  %451 = icmp sgt i64 %450, %next.sroa.55.8.i
  %452 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_POSZ, i64 0, i32 4), align 8
  %next.sroa.0.8..i = select i1 %451, i64 %next.sroa.0.8.i, i64 %436
  %next.sroa.19.8..i = select i1 %451, i64 %next.sroa.19.8.i, i64 %438
  %next.sroa.37.8..i = select i1 %451, i64 %next.sroa.37.8.i, i64 %440
  %next.sroa.55.8..i = select i1 %451, i64 %next.sroa.55.8.i, i64 %450
  %next.sroa.83.8..i = select i1 %451, i32 %next.sroa.83.8.i, i32 %452
  br label %traceToNeighbor.exit13.i

traceToNeighbor.exit13.i:                         ; preds = %449, %446, %443, %traceToNeighbor.exit12.i
  %next.sroa.0.9.i = phi i64 [ %next.sroa.0.8.i, %traceToNeighbor.exit12.i ], [ %next.sroa.0.8.i, %446 ], [ %next.sroa.0.8.i, %443 ], [ %next.sroa.0.8..i, %449 ]
  %next.sroa.19.9.i = phi i64 [ %next.sroa.19.8.i, %traceToNeighbor.exit12.i ], [ %next.sroa.19.8.i, %446 ], [ %next.sroa.19.8.i, %443 ], [ %next.sroa.19.8..i, %449 ]
  %next.sroa.37.9.i = phi i64 [ %next.sroa.37.8.i, %traceToNeighbor.exit12.i ], [ %next.sroa.37.8.i, %446 ], [ %next.sroa.37.8.i, %443 ], [ %next.sroa.37.8..i, %449 ]
  %next.sroa.55.9.i = phi i64 [ %next.sroa.55.8.i, %traceToNeighbor.exit12.i ], [ %next.sroa.55.8.i, %446 ], [ %next.sroa.55.8.i, %443 ], [ %next.sroa.55.8..i, %449 ]
  %next.sroa.83.9.i = phi i32 [ %next.sroa.83.8.i, %traceToNeighbor.exit12.i ], [ %next.sroa.83.8.i, %446 ], [ %next.sroa.83.8.i, %443 ], [ %next.sroa.83.8..i, %449 ]
  %453 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 0), align 8
  %454 = add nsw i64 %453, %next.sroa.0.021.i
  %455 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 1), align 8
  %456 = add nsw i64 %455, %next.sroa.19.022.i
  %457 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 2), align 8
  %458 = add nsw i64 %457, %next.sroa.37.023.i
  %459 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %454, i64 %456, i64 %458) #8
  %460 = icmp eq i64 %459, 0
  br i1 %460, label %traceToNeighbor.exit14.i, label %461

; <label>:461                                     ; preds = %traceToNeighbor.exit13.i
  %462 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %454, i64 %456, i64 %458) #8
  %463 = icmp eq i64 %462, 0
  br i1 %463, label %464, label %traceToNeighbor.exit14.i

; <label>:464                                     ; preds = %461
  %465 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %454, i64 %456, i64 %458) #8
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %467, label %traceToNeighbor.exit14.i

; <label>:467                                     ; preds = %464
  %468 = call i64 @grid_getPoint(%struct.grid* %24, i64 %454, i64 %456, i64 %458) #8
  %469 = icmp sgt i64 %468, %next.sroa.55.9.i
  %470 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGX, i64 0, i32 4), align 8
  %next.sroa.0.9..i = select i1 %469, i64 %next.sroa.0.9.i, i64 %454
  %next.sroa.19.9..i = select i1 %469, i64 %next.sroa.19.9.i, i64 %456
  %next.sroa.37.9..i = select i1 %469, i64 %next.sroa.37.9.i, i64 %458
  %next.sroa.55.9..i = select i1 %469, i64 %next.sroa.55.9.i, i64 %468
  %next.sroa.83.9..i = select i1 %469, i32 %next.sroa.83.9.i, i32 %470
  br label %traceToNeighbor.exit14.i

traceToNeighbor.exit14.i:                         ; preds = %467, %464, %461, %traceToNeighbor.exit13.i
  %next.sroa.0.10.i = phi i64 [ %next.sroa.0.9.i, %traceToNeighbor.exit13.i ], [ %next.sroa.0.9.i, %464 ], [ %next.sroa.0.9.i, %461 ], [ %next.sroa.0.9..i, %467 ]
  %next.sroa.19.10.i = phi i64 [ %next.sroa.19.9.i, %traceToNeighbor.exit13.i ], [ %next.sroa.19.9.i, %464 ], [ %next.sroa.19.9.i, %461 ], [ %next.sroa.19.9..i, %467 ]
  %next.sroa.37.10.i = phi i64 [ %next.sroa.37.9.i, %traceToNeighbor.exit13.i ], [ %next.sroa.37.9.i, %464 ], [ %next.sroa.37.9.i, %461 ], [ %next.sroa.37.9..i, %467 ]
  %next.sroa.55.10.i = phi i64 [ %next.sroa.55.9.i, %traceToNeighbor.exit13.i ], [ %next.sroa.55.9.i, %464 ], [ %next.sroa.55.9.i, %461 ], [ %next.sroa.55.9..i, %467 ]
  %next.sroa.83.10.i = phi i32 [ %next.sroa.83.9.i, %traceToNeighbor.exit13.i ], [ %next.sroa.83.9.i, %464 ], [ %next.sroa.83.9.i, %461 ], [ %next.sroa.83.9..i, %467 ]
  %471 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 0), align 8
  %472 = add nsw i64 %471, %next.sroa.0.021.i
  %473 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 1), align 8
  %474 = add nsw i64 %473, %next.sroa.19.022.i
  %475 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 2), align 8
  %476 = add nsw i64 %475, %next.sroa.37.023.i
  %477 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %472, i64 %474, i64 %476) #8
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %traceToNeighbor.exit15.i, label %479

; <label>:479                                     ; preds = %traceToNeighbor.exit14.i
  %480 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %472, i64 %474, i64 %476) #8
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %482, label %traceToNeighbor.exit15.i

; <label>:482                                     ; preds = %479
  %483 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %472, i64 %474, i64 %476) #8
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %485, label %traceToNeighbor.exit15.i

; <label>:485                                     ; preds = %482
  %486 = call i64 @grid_getPoint(%struct.grid* %24, i64 %472, i64 %474, i64 %476) #8
  %487 = icmp sgt i64 %486, %next.sroa.55.10.i
  %488 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGY, i64 0, i32 4), align 8
  %next.sroa.0.10..i = select i1 %487, i64 %next.sroa.0.10.i, i64 %472
  %next.sroa.19.10..i = select i1 %487, i64 %next.sroa.19.10.i, i64 %474
  %next.sroa.37.10..i = select i1 %487, i64 %next.sroa.37.10.i, i64 %476
  %next.sroa.55.10..i = select i1 %487, i64 %next.sroa.55.10.i, i64 %486
  %next.sroa.83.10..i = select i1 %487, i32 %next.sroa.83.10.i, i32 %488
  br label %traceToNeighbor.exit15.i

traceToNeighbor.exit15.i:                         ; preds = %485, %482, %479, %traceToNeighbor.exit14.i
  %next.sroa.0.11.i = phi i64 [ %next.sroa.0.10.i, %traceToNeighbor.exit14.i ], [ %next.sroa.0.10.i, %482 ], [ %next.sroa.0.10.i, %479 ], [ %next.sroa.0.10..i, %485 ]
  %next.sroa.19.11.i = phi i64 [ %next.sroa.19.10.i, %traceToNeighbor.exit14.i ], [ %next.sroa.19.10.i, %482 ], [ %next.sroa.19.10.i, %479 ], [ %next.sroa.19.10..i, %485 ]
  %next.sroa.37.11.i = phi i64 [ %next.sroa.37.10.i, %traceToNeighbor.exit14.i ], [ %next.sroa.37.10.i, %482 ], [ %next.sroa.37.10.i, %479 ], [ %next.sroa.37.10..i, %485 ]
  %next.sroa.55.11.i = phi i64 [ %next.sroa.55.10.i, %traceToNeighbor.exit14.i ], [ %next.sroa.55.10.i, %482 ], [ %next.sroa.55.10.i, %479 ], [ %next.sroa.55.10..i, %485 ]
  %next.sroa.83.11.i = phi i32 [ %next.sroa.83.10.i, %traceToNeighbor.exit14.i ], [ %next.sroa.83.10.i, %482 ], [ %next.sroa.83.10.i, %479 ], [ %next.sroa.83.10..i, %485 ]
  %489 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 0), align 8
  %490 = add nsw i64 %489, %next.sroa.0.021.i
  %491 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 1), align 8
  %492 = add nsw i64 %491, %next.sroa.19.022.i
  %493 = load i64, i64* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 2), align 8
  %494 = add nsw i64 %493, %next.sroa.37.023.i
  %495 = call i64 @grid_isPointValid(%struct.grid* %24, i64 %490, i64 %492, i64 %494) #8
  %496 = icmp eq i64 %495, 0
  br i1 %496, label %traceToNeighbor.exit16.i, label %497

; <label>:497                                     ; preds = %traceToNeighbor.exit15.i
  %498 = call i64 @grid_isPointEmpty(%struct.grid* %24, i64 %490, i64 %492, i64 %494) #8
  %499 = icmp eq i64 %498, 0
  br i1 %499, label %500, label %traceToNeighbor.exit16.i

; <label>:500                                     ; preds = %497
  %501 = call i64 @grid_isPointFull(%struct.grid* %24, i64 %490, i64 %492, i64 %494) #8
  %502 = icmp eq i64 %501, 0
  br i1 %502, label %503, label %traceToNeighbor.exit16.i

; <label>:503                                     ; preds = %500
  %504 = call i64 @grid_getPoint(%struct.grid* %24, i64 %490, i64 %492, i64 %494) #8
  %505 = icmp sgt i64 %504, %next.sroa.55.11.i
  %506 = load i32, i32* getelementptr inbounds (%struct.point, %struct.point* @MOVE_NEGZ, i64 0, i32 4), align 8
  %next.sroa.0.11..i = select i1 %505, i64 %next.sroa.0.11.i, i64 %490
  %next.sroa.19.11..i = select i1 %505, i64 %next.sroa.19.11.i, i64 %492
  %next.sroa.37.11..i = select i1 %505, i64 %next.sroa.37.11.i, i64 %494
  %next.sroa.55.11..i = select i1 %505, i64 %next.sroa.55.11.i, i64 %504
  %next.sroa.83.11..i = select i1 %505, i32 %next.sroa.83.11.i, i32 %506
  br label %traceToNeighbor.exit16.i

traceToNeighbor.exit16.i:                         ; preds = %503, %500, %497, %traceToNeighbor.exit15.i
  %next.sroa.0.12.i = phi i64 [ %next.sroa.0.11.i, %traceToNeighbor.exit15.i ], [ %next.sroa.0.11.i, %500 ], [ %next.sroa.0.11.i, %497 ], [ %next.sroa.0.11..i, %503 ]
  %next.sroa.19.12.i = phi i64 [ %next.sroa.19.11.i, %traceToNeighbor.exit15.i ], [ %next.sroa.19.11.i, %500 ], [ %next.sroa.19.11.i, %497 ], [ %next.sroa.19.11..i, %503 ]
  %next.sroa.37.12.i = phi i64 [ %next.sroa.37.11.i, %traceToNeighbor.exit15.i ], [ %next.sroa.37.11.i, %500 ], [ %next.sroa.37.11.i, %497 ], [ %next.sroa.37.11..i, %503 ]
  %next.sroa.55.12.i = phi i64 [ %next.sroa.55.11.i, %traceToNeighbor.exit15.i ], [ %next.sroa.55.11.i, %500 ], [ %next.sroa.55.11.i, %497 ], [ %next.sroa.55.11..i, %503 ]
  %next.sroa.83.12.i = phi i32 [ %next.sroa.83.11.i, %traceToNeighbor.exit15.i ], [ %next.sroa.83.11.i, %500 ], [ %next.sroa.83.11.i, %497 ], [ %next.sroa.83.11..i, %503 ]
  %507 = icmp eq i64 %next.sroa.0.021.i, %next.sroa.0.12.i
  %508 = icmp eq i64 %next.sroa.19.022.i, %next.sroa.19.12.i
  %or.cond19.i = and i1 %507, %508
  %509 = icmp eq i64 %next.sroa.37.023.i, %next.sroa.37.12.i
  %or.cond20.i = and i1 %or.cond19.i, %509
  br i1 %or.cond20.i, label %PdoTraceback.exit.thread, label %.backedge.i

.backedge.i:                                      ; preds = %traceToNeighbor.exit16.i, %traceToNeighbor.exit10.i
  %next.sroa.0.0.be.i = phi i64 [ %next.sroa.0.12.i, %traceToNeighbor.exit16.i ], [ %next.sroa.0.6.i, %traceToNeighbor.exit10.i ]
  %next.sroa.19.0.be.i = phi i64 [ %next.sroa.19.12.i, %traceToNeighbor.exit16.i ], [ %next.sroa.19.6.i, %traceToNeighbor.exit10.i ]
  %next.sroa.37.0.be.i = phi i64 [ %next.sroa.37.12.i, %traceToNeighbor.exit16.i ], [ %next.sroa.37.6.i, %traceToNeighbor.exit10.i ]
  %next.sroa.55.0.be.i = phi i64 [ %next.sroa.55.12.i, %traceToNeighbor.exit16.i ], [ %next.sroa.55.6.i, %traceToNeighbor.exit10.i ]
  %next.sroa.83.0.be.i = phi i32 [ %next.sroa.83.12.i, %traceToNeighbor.exit16.i ], [ %next.sroa.83.6.i, %traceToNeighbor.exit10.i ]
  %510 = call i64* @grid_getPointRef(%struct.grid* %17, i64 %next.sroa.0.0.be.i, i64 %next.sroa.19.0.be.i, i64 %next.sroa.37.0.be.i) #8
  %511 = bitcast i64* %510 to i8*
  %512 = call i64 @Pvector_pushBack(%struct.vector* nonnull %263, i8* %511) #8
  call void @grid_setPoint(%struct.grid* %24, i64 %next.sroa.0.0.be.i, i64 %next.sroa.19.0.be.i, i64 %next.sroa.37.0.be.i, i64 -2) #8
  %513 = icmp eq i64 %next.sroa.55.0.be.i, 0
  br i1 %513, label %PdoTraceback.exit.thread4.loopexit, label %.lr.ph.i3

PdoTraceback.exit.thread:                         ; preds = %traceToNeighbor.exit16.i
  call void @Pvector_free(%struct.vector* nonnull %263) #8
  br label %514

PdoTraceback.exit.thread4.loopexit:               ; preds = %.backedge.i
  br label %PdoTraceback.exit.thread4

PdoTraceback.exit.thread4:                        ; preds = %PdoTraceback.exit.thread4.loopexit, %266
  call void @TMgrid_addPath(%struct.grid* %17, %struct.vector* nonnull %263) #8
  br label %514

.critedge:                                        ; preds = %126
  call void @llvm.lifetime.end(i64 8, i8* %31)
  call void @llvm.lifetime.end(i64 8, i8* %32)
  call void @llvm.lifetime.end(i64 8, i8* %33)
  br label %514

; <label>:514                                     ; preds = %.critedge, %PdoTraceback.exit.thread4, %PdoTraceback.exit.thread, %PdoExpansion.exit
  %success.0 = phi i64 [ 1, %PdoTraceback.exit.thread4 ], [ 0, %PdoExpansion.exit ], [ 0, %PdoTraceback.exit.thread ], [ 0, %.critedge ]
  %pointVectorPtr.0 = phi %struct.vector* [ %263, %PdoTraceback.exit.thread4 ], [ null, %PdoExpansion.exit ], [ null, %PdoTraceback.exit.thread ], [ null, %.critedge ]
  %515 = icmp sgt i32 %tries2.0.ph24, 1
  br i1 %515, label %516, label %517

; <label>:516                                     ; preds = %514
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #8, !srcloc !8
  br label %518

; <label>:517                                     ; preds = %514
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #8
  br label %518

; <label>:518                                     ; preds = %517, %516
  %519 = icmp eq i64 %success.0, 0
  br i1 %519, label %.outer8.backedge, label %520

; <label>:520                                     ; preds = %518
  %521 = bitcast %struct.vector* %pointVectorPtr.0 to i8*
  %522 = call i64 @Pvector_pushBack(%struct.vector* nonnull %10, i8* %521) #8
  %523 = icmp eq i64 %522, 0
  br i1 %523, label %524, label %.outer8.backedge

; <label>:524                                     ; preds = %520
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.54, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.51, i64 0, i64 0), i32 416, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.router_solve, i64 0, i64 0)) #15
  unreachable

; <label>:525                                     ; preds = %60
  %526 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %527 = bitcast i8* %526 to %struct.list**
  %528 = load %struct.list*, %struct.list** %527, align 8
  br label %.outer

.outer:                                           ; preds = %535, %525
  %tries4.0.ph = phi i32 [ %536, %535 ], [ 9, %525 ]
  %529 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #8
  %530 = icmp eq i64 %529, 0
  %531 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %531, i32 0, i32 3, i32 1)
  br i1 %530, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.outer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  call void @llvm.x86.sse2.pause() #8
  %532 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #8
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.outer
  %534 = icmp slt i32 %tries4.0.ph, 2
  br i1 %534, label %547, label %535

; <label>:535                                     ; preds = %._crit_edge
  %536 = add nsw i32 %tries4.0.ph, -1
  %537 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #8, !srcloc !6
  %538 = trunc i64 %537 to i32
  %539 = icmp eq i32 %538, -1
  br i1 %539, label %540, label %.outer

; <label>:540                                     ; preds = %535
  %541 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #8
  %542 = icmp eq i64 %541, 0
  br i1 %542, label %544, label %543

; <label>:543                                     ; preds = %540
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #8, !srcloc !7
  br label %544

; <label>:544                                     ; preds = %543, %540
  %545 = bitcast %struct.vector* %10 to i8*
  %546 = call i64 @TMlist_insert(%struct.list* %528, i8* %545) #8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #8, !srcloc !8
  br label %550

; <label>:547                                     ; preds = %._crit_edge
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #8
  %548 = bitcast %struct.vector* %10 to i8*
  %549 = call i64 @TMlist_insert(%struct.list* %528, i8* %548) #8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #8
  br label %550

; <label>:550                                     ; preds = %547, %544
  call void @Pgrid_free(%struct.grid* nonnull %24) #8
  call void @Pqueue_free(%struct.queue* %30) #8
  %551 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #8
  %552 = trunc i64 %551 to i32
  %553 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %554 = load i32, i32* %553, align 4
  call void @SimRoiEnd(i32 %552, i32 %554) #8
  ret void
}

declare void @SimRoiStart(i32) #7

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

declare void @SimRoiEnd(i32, i32) #7

; Function Attrs: nounwind uwtable
define void @list_iter_reset(%struct.list_node** %itPtr, %struct.list* %listPtr) #9 {
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
define void @TMlist_iter_reset(%struct.list_node** %itPtr, %struct.list* %listPtr) #9 {
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
define i64 @list_iter_hasNext(%struct.list_node** %itPtr, %struct.list* %listPtr) #10 {
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
define i64 @TMlist_iter_hasNext(%struct.list_node** %itPtr, %struct.list* %listPtr) #10 {
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
define i8* @list_iter_next(%struct.list_node** %itPtr, %struct.list* %listPtr) #9 {
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
define i8* @TMlist_iter_next(%struct.list_node** %itPtr, %struct.list* %listPtr) #9 {
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
define %struct.list* @list_alloc(i64 (i8*, i8*)* %compare) #9 {
  %1 = alloca %struct.list*, align 8
  %2 = alloca i64 (i8*, i8*)*, align 8
  %listPtr = alloca %struct.list*, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #8
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
define internal i64 @compareDataPtrAddresses(i8* %a, i8* %b) #9 {
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
define %struct.list* @Plist_alloc(i64 (i8*, i8*)* %compare) #9 {
  %1 = alloca %struct.list*, align 8
  %2 = alloca i64 (i8*, i8*)*, align 8
  %listPtr = alloca %struct.list*, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #8
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
define %struct.list* @TMlist_alloc(i64 (i8*, i8*)* %compare) #9 {
  %1 = alloca %struct.list*, align 8
  %2 = alloca i64 (i8*, i8*)*, align 8
  %listPtr = alloca %struct.list*, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #8
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
define void @list_free(%struct.list* %listPtr) #9 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.list_node, %struct.list_node* %3, i32 0, i32 1
  %5 = load %struct.list_node*, %struct.list_node** %4, align 8
  call void @freeList(%struct.list_node* %5)
  %6 = load %struct.list*, %struct.list** %1, align 8
  %7 = bitcast %struct.list* %6 to i8*
  call void @free(i8* %7) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeList(%struct.list_node* %nodePtr) #9 {
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
define internal void @freeNode(%struct.list_node* %nodePtr) #9 {
  %1 = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = bitcast %struct.list_node* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plist_free(%struct.list* %listPtr) #9 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.list_node, %struct.list_node* %3, i32 0, i32 1
  %5 = load %struct.list_node*, %struct.list_node** %4, align 8
  call void @PfreeList(%struct.list_node* %5)
  %6 = load %struct.list*, %struct.list** %1, align 8
  %7 = bitcast %struct.list* %6 to i8*
  call void @free(i8* %7) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PfreeList(%struct.list_node* %nodePtr) #9 {
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
define internal void @PfreeNode(%struct.list_node* %nodePtr) #9 {
  %1 = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = bitcast %struct.list_node* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMlist_free(%struct.list* %listPtr) #9 {
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
  call void @free(i8* %8) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMfreeList(%struct.list_node* %nodePtr) #9 {
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
define internal void @TMfreeNode(%struct.list_node* %nodePtr) #9 {
  %1 = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = bitcast %struct.list_node* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @list_isEmpty(%struct.list* %listPtr) #9 {
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
define i64 @TMlist_isEmpty(%struct.list* %listPtr) #9 {
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
define i64 @list_getSize(%struct.list* %listPtr) #9 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 2
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @TMlist_getSize(%struct.list* %listPtr) #9 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 2
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind readonly uwtable
define i8* @list_find(%struct.list* %listPtr, i8* %dataPtr) #10 {
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
define internal %struct.list_node* @findPrevious(%struct.list* %listPtr, i8* %dataPtr) #9 {
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
define i8* @TMlist_find(%struct.list* %listPtr, i8* %dataPtr) #9 {
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
define internal %struct.list_node* @TMfindPrevious(%struct.list* %listPtr, i8* %dataPtr) #9 {
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
define i64 @list_insert(%struct.list* %listPtr, i8* %dataPtr) #9 {
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
define internal %struct.list_node* @allocNode(i8* %dataPtr) #9 {
  %1 = alloca %struct.list_node*, align 8
  %2 = alloca i8*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  store i8* %dataPtr, i8** %2, align 8
  %3 = call noalias i8* @malloc(i64 16) #8
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
define i64 @Plist_insert(%struct.list* %listPtr, i8* %dataPtr) #9 {
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
define internal %struct.list_node* @PallocNode(i8* %dataPtr) #9 {
  %1 = alloca %struct.list_node*, align 8
  %2 = alloca i8*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  store i8* %dataPtr, i8** %2, align 8
  %3 = call noalias i8* @malloc(i64 16) #8
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
define i64 @TMlist_insert(%struct.list* %listPtr, i8* %dataPtr) #9 {
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
define internal %struct.list_node* @TMallocNode(i8* %dataPtr) #9 {
  %1 = alloca %struct.list_node*, align 8
  %2 = alloca i8*, align 8
  %nodePtr = alloca %struct.list_node*, align 8
  store i8* %dataPtr, i8** %2, align 8
  %3 = call noalias i8* @malloc(i64 16) #8
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
define i64 @list_remove(%struct.list* %listPtr, i8* %dataPtr) #9 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.72, i32 0, i32 0), i32 703, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.list_remove, i32 0, i32 0)) #15
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
define i64 @Plist_remove(%struct.list* %listPtr, i8* %dataPtr) #9 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.72, i32 0, i32 0), i32 732, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Plist_remove, i32 0, i32 0)) #15
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
define i64 @TMlist_remove(%struct.list* %listPtr, i8* %dataPtr) #9 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.72, i32 0, i32 0), i32 761, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMlist_remove, i32 0, i32 0)) #15
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
define void @list_clear(%struct.list* %listPtr) #9 {
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
define void @Plist_clear(%struct.list* %listPtr) #9 {
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
define void @init_genrand(i64* %mt, i64* %mtiPtr, i64 %s) #9 {
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
define void @init_by_array(i64* %mt, i64* %mtiPtr, i64* %init_key, i64 %key_length) #9 {
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
define i64 @genrand_int32(i64* %mt, i64* %mtiPtr) #9 {
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
define i64 @genrand_int31(i64* %mt, i64* %mtiPtr) #9 {
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
define double @genrand_real1(i64* %mt, i64* %mtiPtr) #9 {
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
define double @genrand_real2(i64* %mt, i64* %mtiPtr) #9 {
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
define double @genrand_real3(i64* %mt, i64* %mtiPtr) #9 {
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
define double @genrand_res53(i64* %mt, i64* %mtiPtr) #9 {
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
define %struct.pair* @pair_alloc(i8* %firstPtr, i8* %secondPtr) #9 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  store i8* %firstPtr, i8** %1, align 8
  store i8* %secondPtr, i8** %2, align 8
  %3 = call noalias i8* @malloc(i64 16) #8
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
define %struct.pair* @Ppair_alloc(i8* %firstPtr, i8* %secondPtr) #9 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  store i8* %firstPtr, i8** %1, align 8
  store i8* %secondPtr, i8** %2, align 8
  %3 = call noalias i8* @malloc(i64 16) #8
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
define %struct.pair* @TMpair_alloc(i8* %firstPtr, i8* %secondPtr) #9 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  store i8* %firstPtr, i8** %1, align 8
  store i8* %secondPtr, i8** %2, align 8
  %3 = call noalias i8* @malloc(i64 16) #8
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
define void @pair_free(%struct.pair* %pairPtr) #9 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppair_free(%struct.pair* %pairPtr) #9 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMpair_free(%struct.pair* %pairPtr) #9 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @pair_swap(%struct.pair* %pairPtr) #9 {
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
define %struct.queue* @queue_alloc(i64 %initCapacity) #9 {
  %1 = alloca %struct.queue*, align 8
  %2 = alloca i64, align 8
  %queuePtr = alloca %struct.queue*, align 8
  %capacity = alloca i64, align 8
  store i64 %initCapacity, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #8
  %4 = bitcast i8* %3 to %struct.queue*
  store %struct.queue* %4, %struct.queue** %queuePtr, align 8
  %5 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %6 = icmp ne %struct.queue* %5, null
  br i1 %6, label %7, label %38

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %2, align 8
  %9 = icmp slt i64 %8, 2
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  br label %13

; <label>:11                                      ; preds = %7
  %12 = load i64, i64* %2, align 8
  br label %13

; <label>:13                                      ; preds = %11, %10
  %14 = phi i64 [ 2, %10 ], [ %12, %11 ]
  store i64 %14, i64* %capacity, align 8
  %15 = load i64, i64* %capacity, align 8
  %16 = mul i64 %15, 8
  %17 = call noalias i8* @malloc(i64 %16) #8
  %18 = bitcast i8* %17 to i8**
  %19 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %20 = getelementptr inbounds %struct.queue, %struct.queue* %19, i32 0, i32 3
  store i8** %18, i8*** %20, align 8
  %21 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %22 = getelementptr inbounds %struct.queue, %struct.queue* %21, i32 0, i32 3
  %23 = load i8**, i8*** %22, align 8
  %24 = icmp eq i8** %23, null
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %13
  %26 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %27 = bitcast %struct.queue* %26 to i8*
  call void @free(i8* %27) #8
  store %struct.queue* null, %struct.queue** %1, align 8
  br label %40

; <label>:28                                      ; preds = %13
  %29 = load i64, i64* %capacity, align 8
  %30 = sub nsw i64 %29, 1
  %31 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %32 = getelementptr inbounds %struct.queue, %struct.queue* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %34 = getelementptr inbounds %struct.queue, %struct.queue* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* %capacity, align 8
  %36 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %37 = getelementptr inbounds %struct.queue, %struct.queue* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  br label %38

; <label>:38                                      ; preds = %28, %0
  %39 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  store %struct.queue* %39, %struct.queue** %1, align 8
  br label %40

; <label>:40                                      ; preds = %38, %25
  %41 = load %struct.queue*, %struct.queue** %1, align 8
  ret %struct.queue* %41
}

; Function Attrs: nounwind uwtable
define %struct.queue* @Pqueue_alloc(i64 %initCapacity) #9 {
  %1 = alloca %struct.queue*, align 8
  %2 = alloca i64, align 8
  %queuePtr = alloca %struct.queue*, align 8
  %capacity = alloca i64, align 8
  store i64 %initCapacity, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #8
  %4 = bitcast i8* %3 to %struct.queue*
  store %struct.queue* %4, %struct.queue** %queuePtr, align 8
  %5 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %6 = icmp ne %struct.queue* %5, null
  br i1 %6, label %7, label %38

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %2, align 8
  %9 = icmp slt i64 %8, 2
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  br label %13

; <label>:11                                      ; preds = %7
  %12 = load i64, i64* %2, align 8
  br label %13

; <label>:13                                      ; preds = %11, %10
  %14 = phi i64 [ 2, %10 ], [ %12, %11 ]
  store i64 %14, i64* %capacity, align 8
  %15 = load i64, i64* %capacity, align 8
  %16 = mul i64 %15, 8
  %17 = call noalias i8* @malloc(i64 %16) #8
  %18 = bitcast i8* %17 to i8**
  %19 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %20 = getelementptr inbounds %struct.queue, %struct.queue* %19, i32 0, i32 3
  store i8** %18, i8*** %20, align 8
  %21 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %22 = getelementptr inbounds %struct.queue, %struct.queue* %21, i32 0, i32 3
  %23 = load i8**, i8*** %22, align 8
  %24 = icmp eq i8** %23, null
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %13
  %26 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %27 = bitcast %struct.queue* %26 to i8*
  call void @free(i8* %27) #8
  store %struct.queue* null, %struct.queue** %1, align 8
  br label %40

; <label>:28                                      ; preds = %13
  %29 = load i64, i64* %capacity, align 8
  %30 = sub nsw i64 %29, 1
  %31 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %32 = getelementptr inbounds %struct.queue, %struct.queue* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %34 = getelementptr inbounds %struct.queue, %struct.queue* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* %capacity, align 8
  %36 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %37 = getelementptr inbounds %struct.queue, %struct.queue* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  br label %38

; <label>:38                                      ; preds = %28, %0
  %39 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  store %struct.queue* %39, %struct.queue** %1, align 8
  br label %40

; <label>:40                                      ; preds = %38, %25
  %41 = load %struct.queue*, %struct.queue** %1, align 8
  ret %struct.queue* %41
}

; Function Attrs: nounwind uwtable
define %struct.queue* @TMqueue_alloc(i64 %initCapacity) #9 {
  %1 = alloca %struct.queue*, align 8
  %2 = alloca i64, align 8
  %queuePtr = alloca %struct.queue*, align 8
  %capacity = alloca i64, align 8
  store i64 %initCapacity, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #8
  %4 = bitcast i8* %3 to %struct.queue*
  store %struct.queue* %4, %struct.queue** %queuePtr, align 8
  %5 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %6 = icmp ne %struct.queue* %5, null
  br i1 %6, label %7, label %38

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %2, align 8
  %9 = icmp slt i64 %8, 2
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  br label %13

; <label>:11                                      ; preds = %7
  %12 = load i64, i64* %2, align 8
  br label %13

; <label>:13                                      ; preds = %11, %10
  %14 = phi i64 [ 2, %10 ], [ %12, %11 ]
  store i64 %14, i64* %capacity, align 8
  %15 = load i64, i64* %capacity, align 8
  %16 = mul i64 %15, 8
  %17 = call noalias i8* @malloc(i64 %16) #8
  %18 = bitcast i8* %17 to i8**
  %19 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %20 = getelementptr inbounds %struct.queue, %struct.queue* %19, i32 0, i32 3
  store i8** %18, i8*** %20, align 8
  %21 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %22 = getelementptr inbounds %struct.queue, %struct.queue* %21, i32 0, i32 3
  %23 = load i8**, i8*** %22, align 8
  %24 = icmp eq i8** %23, null
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %13
  %26 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %27 = bitcast %struct.queue* %26 to i8*
  call void @free(i8* %27) #8
  store %struct.queue* null, %struct.queue** %1, align 8
  br label %40

; <label>:28                                      ; preds = %13
  %29 = load i64, i64* %capacity, align 8
  %30 = sub nsw i64 %29, 1
  %31 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %32 = getelementptr inbounds %struct.queue, %struct.queue* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %34 = getelementptr inbounds %struct.queue, %struct.queue* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* %capacity, align 8
  %36 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  %37 = getelementptr inbounds %struct.queue, %struct.queue* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  br label %38

; <label>:38                                      ; preds = %28, %0
  %39 = load %struct.queue*, %struct.queue** %queuePtr, align 8
  store %struct.queue* %39, %struct.queue** %1, align 8
  br label %40

; <label>:40                                      ; preds = %38, %25
  %41 = load %struct.queue*, %struct.queue** %1, align 8
  ret %struct.queue* %41
}

; Function Attrs: nounwind uwtable
define void @queue_free(%struct.queue* %queuePtr) #9 {
  %1 = alloca %struct.queue*, align 8
  store %struct.queue* %queuePtr, %struct.queue** %1, align 8
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = getelementptr inbounds %struct.queue, %struct.queue* %2, i32 0, i32 3
  %4 = load i8**, i8*** %3, align 8
  %5 = bitcast i8** %4 to i8*
  call void @free(i8* %5) #8
  %6 = load %struct.queue*, %struct.queue** %1, align 8
  %7 = bitcast %struct.queue* %6 to i8*
  call void @free(i8* %7) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Pqueue_free(%struct.queue* %queuePtr) #9 {
  %1 = alloca %struct.queue*, align 8
  store %struct.queue* %queuePtr, %struct.queue** %1, align 8
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = getelementptr inbounds %struct.queue, %struct.queue* %2, i32 0, i32 3
  %4 = load i8**, i8*** %3, align 8
  %5 = bitcast i8** %4 to i8*
  call void @free(i8* %5) #8
  %6 = load %struct.queue*, %struct.queue** %1, align 8
  %7 = bitcast %struct.queue* %6 to i8*
  call void @free(i8* %7) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMqueue_free(%struct.queue* %queuePtr) #9 {
  %1 = alloca %struct.queue*, align 8
  store %struct.queue* %queuePtr, %struct.queue** %1, align 8
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = getelementptr inbounds %struct.queue, %struct.queue* %2, i32 0, i32 3
  %4 = load i8**, i8*** %3, align 8
  %5 = bitcast i8** %4 to i8*
  call void @free(i8* %5) #8
  %6 = load %struct.queue*, %struct.queue** %1, align 8
  %7 = bitcast %struct.queue* %6 to i8*
  call void @free(i8* %7) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @queue_isEmpty(%struct.queue* %queuePtr) #9 {
  %1 = alloca %struct.queue*, align 8
  %pop = alloca i64, align 8
  %push = alloca i64, align 8
  %capacity = alloca i64, align 8
  store %struct.queue* %queuePtr, %struct.queue** %1, align 8
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = getelementptr inbounds %struct.queue, %struct.queue* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %pop, align 8
  %5 = load %struct.queue*, %struct.queue** %1, align 8
  %6 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %push, align 8
  %8 = load %struct.queue*, %struct.queue** %1, align 8
  %9 = getelementptr inbounds %struct.queue, %struct.queue* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %capacity, align 8
  %11 = load i64, i64* %pop, align 8
  %12 = add nsw i64 %11, 1
  %13 = load i64, i64* %capacity, align 8
  %14 = srem i64 %12, %13
  %15 = load i64, i64* %push, align 8
  %16 = icmp eq i64 %14, %15
  %17 = select i1 %16, i32 1, i32 0
  %18 = sext i32 %17 to i64
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define void @queue_clear(%struct.queue* %queuePtr) #9 {
  %1 = alloca %struct.queue*, align 8
  store %struct.queue* %queuePtr, %struct.queue** %1, align 8
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = getelementptr inbounds %struct.queue, %struct.queue* %2, i32 0, i32 2
  %4 = load i64, i64* %3, align 8
  %5 = sub nsw i64 %4, 1
  %6 = load %struct.queue*, %struct.queue** %1, align 8
  %7 = getelementptr inbounds %struct.queue, %struct.queue* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load %struct.queue*, %struct.queue** %1, align 8
  %9 = getelementptr inbounds %struct.queue, %struct.queue* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @TMqueue_isEmpty(%struct.queue* %queuePtr) #9 {
  %1 = alloca %struct.queue*, align 8
  %pop = alloca i64, align 8
  %push = alloca i64, align 8
  %capacity = alloca i64, align 8
  store %struct.queue* %queuePtr, %struct.queue** %1, align 8
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = getelementptr inbounds %struct.queue, %struct.queue* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %pop, align 8
  %5 = load %struct.queue*, %struct.queue** %1, align 8
  %6 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %push, align 8
  %8 = load %struct.queue*, %struct.queue** %1, align 8
  %9 = getelementptr inbounds %struct.queue, %struct.queue* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %capacity, align 8
  %11 = load i64, i64* %pop, align 8
  %12 = add nsw i64 %11, 1
  %13 = load i64, i64* %capacity, align 8
  %14 = srem i64 %12, %13
  %15 = load i64, i64* %push, align 8
  %16 = icmp eq i64 %14, %15
  %17 = select i1 %16, i32 1, i32 0
  %18 = sext i32 %17 to i64
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define void @queue_shuffle(%struct.queue* %queuePtr, %struct.random* %randomPtr) #9 {
  %1 = alloca %struct.queue*, align 8
  %2 = alloca %struct.random*, align 8
  %pop = alloca i64, align 8
  %push = alloca i64, align 8
  %capacity = alloca i64, align 8
  %numElement = alloca i64, align 8
  %elements = alloca i8**, align 8
  %i = alloca i64, align 8
  %base = alloca i64, align 8
  %r1 = alloca i64, align 8
  %r2 = alloca i64, align 8
  %i1 = alloca i64, align 8
  %i2 = alloca i64, align 8
  %tmp = alloca i8*, align 8
  store %struct.queue* %queuePtr, %struct.queue** %1, align 8
  store %struct.random* %randomPtr, %struct.random** %2, align 8
  %3 = load %struct.queue*, %struct.queue** %1, align 8
  %4 = getelementptr inbounds %struct.queue, %struct.queue* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %pop, align 8
  %6 = load %struct.queue*, %struct.queue** %1, align 8
  %7 = getelementptr inbounds %struct.queue, %struct.queue* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %push, align 8
  %9 = load %struct.queue*, %struct.queue** %1, align 8
  %10 = getelementptr inbounds %struct.queue, %struct.queue* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %capacity, align 8
  %12 = load i64, i64* %pop, align 8
  %13 = load i64, i64* %push, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %20

; <label>:15                                      ; preds = %0
  %16 = load i64, i64* %push, align 8
  %17 = load i64, i64* %pop, align 8
  %18 = add nsw i64 %17, 1
  %19 = sub nsw i64 %16, %18
  store i64 %19, i64* %numElement, align 8
  br label %27

; <label>:20                                      ; preds = %0
  %21 = load i64, i64* %capacity, align 8
  %22 = load i64, i64* %pop, align 8
  %23 = load i64, i64* %push, align 8
  %24 = sub nsw i64 %22, %23
  %25 = add nsw i64 %24, 1
  %26 = sub nsw i64 %21, %25
  store i64 %26, i64* %numElement, align 8
  br label %27

; <label>:27                                      ; preds = %20, %15
  %28 = load %struct.queue*, %struct.queue** %1, align 8
  %29 = getelementptr inbounds %struct.queue, %struct.queue* %28, i32 0, i32 3
  %30 = load i8**, i8*** %29, align 8
  store i8** %30, i8*** %elements, align 8
  %31 = load i64, i64* %pop, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %base, align 8
  store i64 0, i64* %i, align 8
  br label %33

; <label>:33                                      ; preds = %71, %27
  %34 = load i64, i64* %i, align 8
  %35 = load i64, i64* %numElement, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %74

; <label>:37                                      ; preds = %33
  %38 = load %struct.random*, %struct.random** %2, align 8
  %39 = call i64 @random_generate(%struct.random* %38)
  %40 = load i64, i64* %numElement, align 8
  %41 = urem i64 %39, %40
  store i64 %41, i64* %r1, align 8
  %42 = load %struct.random*, %struct.random** %2, align 8
  %43 = call i64 @random_generate(%struct.random* %42)
  %44 = load i64, i64* %numElement, align 8
  %45 = urem i64 %43, %44
  store i64 %45, i64* %r2, align 8
  %46 = load i64, i64* %base, align 8
  %47 = load i64, i64* %r1, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* %capacity, align 8
  %50 = srem i64 %48, %49
  store i64 %50, i64* %i1, align 8
  %51 = load i64, i64* %base, align 8
  %52 = load i64, i64* %r2, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* %capacity, align 8
  %55 = srem i64 %53, %54
  store i64 %55, i64* %i2, align 8
  %56 = load i64, i64* %i1, align 8
  %57 = load i8**, i8*** %elements, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 %56
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %tmp, align 8
  %60 = load i64, i64* %i2, align 8
  %61 = load i8**, i8*** %elements, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 %60
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %i1, align 8
  %65 = load i8**, i8*** %elements, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 %64
  store i8* %63, i8** %66, align 8
  %67 = load i8*, i8** %tmp, align 8
  %68 = load i64, i64* %i2, align 8
  %69 = load i8**, i8*** %elements, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 %68
  store i8* %67, i8** %70, align 8
  br label %71

; <label>:71                                      ; preds = %37
  %72 = load i64, i64* %i, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %i, align 8
  br label %33

; <label>:74                                      ; preds = %33
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @queue_push(%struct.queue* %queuePtr, i8* %dataPtr) #9 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.queue*, align 8
  %3 = alloca i8*, align 8
  %pop = alloca i64, align 8
  %push = alloca i64, align 8
  %capacity = alloca i64, align 8
  %newPush = alloca i64, align 8
  %newCapacity = alloca i64, align 8
  %newElements = alloca i8**, align 8
  %dst = alloca i64, align 8
  %elements = alloca i8**, align 8
  %src = alloca i64, align 8
  %src1 = alloca i64, align 8
  store %struct.queue* %queuePtr, %struct.queue** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %4 = load %struct.queue*, %struct.queue** %2, align 8
  %5 = getelementptr inbounds %struct.queue, %struct.queue* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %pop, align 8
  %7 = load %struct.queue*, %struct.queue** %2, align 8
  %8 = getelementptr inbounds %struct.queue, %struct.queue* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %push, align 8
  %10 = load %struct.queue*, %struct.queue** %2, align 8
  %11 = getelementptr inbounds %struct.queue, %struct.queue* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %capacity, align 8
  %13 = load i64, i64* %pop, align 8
  %14 = load i64, i64* %push, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %0
  br label %19

; <label>:17                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.92, i32 0, i32 0), i32 290, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.queue_push, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %19

; <label>:19                                      ; preds = %18, %16
  %20 = load i64, i64* %push, align 8
  %21 = add nsw i64 %20, 1
  %22 = load i64, i64* %capacity, align 8
  %23 = srem i64 %21, %22
  store i64 %23, i64* %newPush, align 8
  %24 = load i64, i64* %newPush, align 8
  %25 = load i64, i64* %pop, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %120

; <label>:27                                      ; preds = %19
  %28 = load i64, i64* %capacity, align 8
  %29 = mul nsw i64 %28, 2
  store i64 %29, i64* %newCapacity, align 8
  %30 = load i64, i64* %newCapacity, align 8
  %31 = mul i64 %30, 8
  %32 = call noalias i8* @malloc(i64 %31) #8
  %33 = bitcast i8* %32 to i8**
  store i8** %33, i8*** %newElements, align 8
  %34 = load i8**, i8*** %newElements, align 8
  %35 = icmp eq i8** %34, null
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %27
  store i64 0, i64* %1, align 8
  br label %130

; <label>:37                                      ; preds = %27
  store i64 0, i64* %dst, align 8
  %38 = load %struct.queue*, %struct.queue** %2, align 8
  %39 = getelementptr inbounds %struct.queue, %struct.queue* %38, i32 0, i32 3
  %40 = load i8**, i8*** %39, align 8
  store i8** %40, i8*** %elements, align 8
  %41 = load i64, i64* %pop, align 8
  %42 = load i64, i64* %push, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %65

; <label>:44                                      ; preds = %37
  %45 = load i64, i64* %pop, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %src, align 8
  br label %47

; <label>:47                                      ; preds = %59, %44
  %48 = load i64, i64* %src, align 8
  %49 = load i64, i64* %push, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %64

; <label>:51                                      ; preds = %47
  %52 = load i64, i64* %src, align 8
  %53 = load i8**, i8*** %elements, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 %52
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* %dst, align 8
  %57 = load i8**, i8*** %newElements, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 %56
  store i8* %55, i8** %58, align 8
  br label %59

; <label>:59                                      ; preds = %51
  %60 = load i64, i64* %src, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %src, align 8
  %62 = load i64, i64* %dst, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %dst, align 8
  br label %47

; <label>:64                                      ; preds = %47
  br label %104

; <label>:65                                      ; preds = %37
  %66 = load i64, i64* %pop, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %src1, align 8
  br label %68

; <label>:68                                      ; preds = %80, %65
  %69 = load i64, i64* %src1, align 8
  %70 = load i64, i64* %capacity, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %85

; <label>:72                                      ; preds = %68
  %73 = load i64, i64* %src1, align 8
  %74 = load i8**, i8*** %elements, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 %73
  %76 = load i8*, i8** %75, align 8
  %77 = load i64, i64* %dst, align 8
  %78 = load i8**, i8*** %newElements, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 %77
  store i8* %76, i8** %79, align 8
  br label %80

; <label>:80                                      ; preds = %72
  %81 = load i64, i64* %src1, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %src1, align 8
  %83 = load i64, i64* %dst, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %dst, align 8
  br label %68

; <label>:85                                      ; preds = %68
  store i64 0, i64* %src1, align 8
  br label %86

; <label>:86                                      ; preds = %98, %85
  %87 = load i64, i64* %src1, align 8
  %88 = load i64, i64* %push, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %103

; <label>:90                                      ; preds = %86
  %91 = load i64, i64* %src1, align 8
  %92 = load i8**, i8*** %elements, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 %91
  %94 = load i8*, i8** %93, align 8
  %95 = load i64, i64* %dst, align 8
  %96 = load i8**, i8*** %newElements, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 %95
  store i8* %94, i8** %97, align 8
  br label %98

; <label>:98                                      ; preds = %90
  %99 = load i64, i64* %src1, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %src1, align 8
  %101 = load i64, i64* %dst, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %dst, align 8
  br label %86

; <label>:103                                     ; preds = %86
  br label %104

; <label>:104                                     ; preds = %103, %64
  %105 = load i8**, i8*** %elements, align 8
  %106 = bitcast i8** %105 to i8*
  call void @free(i8* %106) #8
  %107 = load i8**, i8*** %newElements, align 8
  %108 = load %struct.queue*, %struct.queue** %2, align 8
  %109 = getelementptr inbounds %struct.queue, %struct.queue* %108, i32 0, i32 3
  store i8** %107, i8*** %109, align 8
  %110 = load i64, i64* %newCapacity, align 8
  %111 = sub nsw i64 %110, 1
  %112 = load %struct.queue*, %struct.queue** %2, align 8
  %113 = getelementptr inbounds %struct.queue, %struct.queue* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %newCapacity, align 8
  %115 = load %struct.queue*, %struct.queue** %2, align 8
  %116 = getelementptr inbounds %struct.queue, %struct.queue* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %dst, align 8
  store i64 %117, i64* %push, align 8
  %118 = load i64, i64* %push, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %newPush, align 8
  br label %120

; <label>:120                                     ; preds = %104, %19
  %121 = load i8*, i8** %3, align 8
  %122 = load i64, i64* %push, align 8
  %123 = load %struct.queue*, %struct.queue** %2, align 8
  %124 = getelementptr inbounds %struct.queue, %struct.queue* %123, i32 0, i32 3
  %125 = load i8**, i8*** %124, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 %122
  store i8* %121, i8** %126, align 8
  %127 = load i64, i64* %newPush, align 8
  %128 = load %struct.queue*, %struct.queue** %2, align 8
  %129 = getelementptr inbounds %struct.queue, %struct.queue* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  store i64 1, i64* %1, align 8
  br label %130

; <label>:130                                     ; preds = %120, %36
  %131 = load i64, i64* %1, align 8
  ret i64 %131
}

; Function Attrs: nounwind uwtable
define i64 @Pqueue_push(%struct.queue* %queuePtr, i8* %dataPtr) #9 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.queue*, align 8
  %3 = alloca i8*, align 8
  %pop = alloca i64, align 8
  %push = alloca i64, align 8
  %capacity = alloca i64, align 8
  %newPush = alloca i64, align 8
  %newCapacity = alloca i64, align 8
  %newElements = alloca i8**, align 8
  %dst = alloca i64, align 8
  %elements = alloca i8**, align 8
  %src = alloca i64, align 8
  %src1 = alloca i64, align 8
  store %struct.queue* %queuePtr, %struct.queue** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %4 = load %struct.queue*, %struct.queue** %2, align 8
  %5 = getelementptr inbounds %struct.queue, %struct.queue* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %pop, align 8
  %7 = load %struct.queue*, %struct.queue** %2, align 8
  %8 = getelementptr inbounds %struct.queue, %struct.queue* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %push, align 8
  %10 = load %struct.queue*, %struct.queue** %2, align 8
  %11 = getelementptr inbounds %struct.queue, %struct.queue* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %capacity, align 8
  %13 = load i64, i64* %pop, align 8
  %14 = load i64, i64* %push, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %0
  br label %19

; <label>:17                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.92, i32 0, i32 0), i32 345, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Pqueue_push, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %19

; <label>:19                                      ; preds = %18, %16
  %20 = load i64, i64* %push, align 8
  %21 = add nsw i64 %20, 1
  %22 = load i64, i64* %capacity, align 8
  %23 = srem i64 %21, %22
  store i64 %23, i64* %newPush, align 8
  %24 = load i64, i64* %newPush, align 8
  %25 = load i64, i64* %pop, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %120

; <label>:27                                      ; preds = %19
  %28 = load i64, i64* %capacity, align 8
  %29 = mul nsw i64 %28, 2
  store i64 %29, i64* %newCapacity, align 8
  %30 = load i64, i64* %newCapacity, align 8
  %31 = mul i64 %30, 8
  %32 = call noalias i8* @malloc(i64 %31) #8
  %33 = bitcast i8* %32 to i8**
  store i8** %33, i8*** %newElements, align 8
  %34 = load i8**, i8*** %newElements, align 8
  %35 = icmp eq i8** %34, null
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %27
  store i64 0, i64* %1, align 8
  br label %130

; <label>:37                                      ; preds = %27
  store i64 0, i64* %dst, align 8
  %38 = load %struct.queue*, %struct.queue** %2, align 8
  %39 = getelementptr inbounds %struct.queue, %struct.queue* %38, i32 0, i32 3
  %40 = load i8**, i8*** %39, align 8
  store i8** %40, i8*** %elements, align 8
  %41 = load i64, i64* %pop, align 8
  %42 = load i64, i64* %push, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %65

; <label>:44                                      ; preds = %37
  %45 = load i64, i64* %pop, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %src, align 8
  br label %47

; <label>:47                                      ; preds = %59, %44
  %48 = load i64, i64* %src, align 8
  %49 = load i64, i64* %push, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %64

; <label>:51                                      ; preds = %47
  %52 = load i64, i64* %src, align 8
  %53 = load i8**, i8*** %elements, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 %52
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* %dst, align 8
  %57 = load i8**, i8*** %newElements, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 %56
  store i8* %55, i8** %58, align 8
  br label %59

; <label>:59                                      ; preds = %51
  %60 = load i64, i64* %src, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %src, align 8
  %62 = load i64, i64* %dst, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %dst, align 8
  br label %47

; <label>:64                                      ; preds = %47
  br label %104

; <label>:65                                      ; preds = %37
  %66 = load i64, i64* %pop, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %src1, align 8
  br label %68

; <label>:68                                      ; preds = %80, %65
  %69 = load i64, i64* %src1, align 8
  %70 = load i64, i64* %capacity, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %85

; <label>:72                                      ; preds = %68
  %73 = load i64, i64* %src1, align 8
  %74 = load i8**, i8*** %elements, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 %73
  %76 = load i8*, i8** %75, align 8
  %77 = load i64, i64* %dst, align 8
  %78 = load i8**, i8*** %newElements, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 %77
  store i8* %76, i8** %79, align 8
  br label %80

; <label>:80                                      ; preds = %72
  %81 = load i64, i64* %src1, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %src1, align 8
  %83 = load i64, i64* %dst, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %dst, align 8
  br label %68

; <label>:85                                      ; preds = %68
  store i64 0, i64* %src1, align 8
  br label %86

; <label>:86                                      ; preds = %98, %85
  %87 = load i64, i64* %src1, align 8
  %88 = load i64, i64* %push, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %103

; <label>:90                                      ; preds = %86
  %91 = load i64, i64* %src1, align 8
  %92 = load i8**, i8*** %elements, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 %91
  %94 = load i8*, i8** %93, align 8
  %95 = load i64, i64* %dst, align 8
  %96 = load i8**, i8*** %newElements, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 %95
  store i8* %94, i8** %97, align 8
  br label %98

; <label>:98                                      ; preds = %90
  %99 = load i64, i64* %src1, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %src1, align 8
  %101 = load i64, i64* %dst, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %dst, align 8
  br label %86

; <label>:103                                     ; preds = %86
  br label %104

; <label>:104                                     ; preds = %103, %64
  %105 = load i8**, i8*** %elements, align 8
  %106 = bitcast i8** %105 to i8*
  call void @free(i8* %106) #8
  %107 = load i8**, i8*** %newElements, align 8
  %108 = load %struct.queue*, %struct.queue** %2, align 8
  %109 = getelementptr inbounds %struct.queue, %struct.queue* %108, i32 0, i32 3
  store i8** %107, i8*** %109, align 8
  %110 = load i64, i64* %newCapacity, align 8
  %111 = sub nsw i64 %110, 1
  %112 = load %struct.queue*, %struct.queue** %2, align 8
  %113 = getelementptr inbounds %struct.queue, %struct.queue* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %newCapacity, align 8
  %115 = load %struct.queue*, %struct.queue** %2, align 8
  %116 = getelementptr inbounds %struct.queue, %struct.queue* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %dst, align 8
  store i64 %117, i64* %push, align 8
  %118 = load i64, i64* %push, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %newPush, align 8
  br label %120

; <label>:120                                     ; preds = %104, %19
  %121 = load i8*, i8** %3, align 8
  %122 = load i64, i64* %push, align 8
  %123 = load %struct.queue*, %struct.queue** %2, align 8
  %124 = getelementptr inbounds %struct.queue, %struct.queue* %123, i32 0, i32 3
  %125 = load i8**, i8*** %124, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 %122
  store i8* %121, i8** %126, align 8
  %127 = load i64, i64* %newPush, align 8
  %128 = load %struct.queue*, %struct.queue** %2, align 8
  %129 = getelementptr inbounds %struct.queue, %struct.queue* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  store i64 1, i64* %1, align 8
  br label %130

; <label>:130                                     ; preds = %120, %36
  %131 = load i64, i64* %1, align 8
  ret i64 %131
}

; Function Attrs: nounwind uwtable
define i64 @TMqueue_push(%struct.queue* %queuePtr, i8* %dataPtr) #9 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.queue*, align 8
  %3 = alloca i8*, align 8
  %pop = alloca i64, align 8
  %push = alloca i64, align 8
  %capacity = alloca i64, align 8
  %newPush = alloca i64, align 8
  %newCapacity = alloca i64, align 8
  %newElements = alloca i8**, align 8
  %dst = alloca i64, align 8
  %elements = alloca i8**, align 8
  %src = alloca i64, align 8
  %src1 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %elements2 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.queue* %queuePtr, %struct.queue** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %9 = load %struct.queue*, %struct.queue** %2, align 8
  %10 = getelementptr inbounds %struct.queue, %struct.queue* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %pop, align 8
  %12 = load %struct.queue*, %struct.queue** %2, align 8
  %13 = getelementptr inbounds %struct.queue, %struct.queue* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %push, align 8
  %15 = load %struct.queue*, %struct.queue** %2, align 8
  %16 = getelementptr inbounds %struct.queue, %struct.queue* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %capacity, align 8
  %18 = load i64, i64* %pop, align 8
  %19 = load i64, i64* %push, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %0
  br label %24

; <label>:22                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.92, i32 0, i32 0), i32 401, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMqueue_push, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %24

; <label>:24                                      ; preds = %23, %21
  %25 = load i64, i64* %push, align 8
  %26 = add nsw i64 %25, 1
  %27 = load i64, i64* %capacity, align 8
  %28 = srem i64 %26, %27
  store i64 %28, i64* %newPush, align 8
  %29 = load i64, i64* %newPush, align 8
  %30 = load i64, i64* %pop, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %137

; <label>:32                                      ; preds = %24
  %33 = load i64, i64* %capacity, align 8
  %34 = mul nsw i64 %33, 2
  store i64 %34, i64* %newCapacity, align 8
  %35 = load i64, i64* %newCapacity, align 8
  %36 = mul i64 %35, 8
  %37 = call noalias i8* @malloc(i64 %36) #8
  %38 = bitcast i8* %37 to i8**
  store i8** %38, i8*** %newElements, align 8
  %39 = load i8**, i8*** %newElements, align 8
  %40 = icmp eq i8** %39, null
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %32
  store i64 0, i64* %1, align 8
  br label %157

; <label>:42                                      ; preds = %32
  store i64 0, i64* %dst, align 8
  %43 = load %struct.queue*, %struct.queue** %2, align 8
  %44 = getelementptr inbounds %struct.queue, %struct.queue* %43, i32 0, i32 3
  %45 = load i8**, i8*** %44, align 8
  store i8** %45, i8*** %elements, align 8
  %46 = load i64, i64* %pop, align 8
  %47 = load i64, i64* %push, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %70

; <label>:49                                      ; preds = %42
  %50 = load i64, i64* %pop, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %src, align 8
  br label %52

; <label>:52                                      ; preds = %64, %49
  %53 = load i64, i64* %src, align 8
  %54 = load i64, i64* %push, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %69

; <label>:56                                      ; preds = %52
  %57 = load i64, i64* %src, align 8
  %58 = load i8**, i8*** %elements, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 %57
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %dst, align 8
  %62 = load i8**, i8*** %newElements, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 %61
  store i8* %60, i8** %63, align 8
  br label %64

; <label>:64                                      ; preds = %56
  %65 = load i64, i64* %src, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %src, align 8
  %67 = load i64, i64* %dst, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %dst, align 8
  br label %52

; <label>:69                                      ; preds = %52
  br label %109

; <label>:70                                      ; preds = %42
  %71 = load i64, i64* %pop, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %src1, align 8
  br label %73

; <label>:73                                      ; preds = %85, %70
  %74 = load i64, i64* %src1, align 8
  %75 = load i64, i64* %capacity, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %90

; <label>:77                                      ; preds = %73
  %78 = load i64, i64* %src1, align 8
  %79 = load i8**, i8*** %elements, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 %78
  %81 = load i8*, i8** %80, align 8
  %82 = load i64, i64* %dst, align 8
  %83 = load i8**, i8*** %newElements, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 %82
  store i8* %81, i8** %84, align 8
  br label %85

; <label>:85                                      ; preds = %77
  %86 = load i64, i64* %src1, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %src1, align 8
  %88 = load i64, i64* %dst, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %dst, align 8
  br label %73

; <label>:90                                      ; preds = %73
  store i64 0, i64* %src1, align 8
  br label %91

; <label>:91                                      ; preds = %103, %90
  %92 = load i64, i64* %src1, align 8
  %93 = load i64, i64* %push, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %108

; <label>:95                                      ; preds = %91
  %96 = load i64, i64* %src1, align 8
  %97 = load i8**, i8*** %elements, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 %96
  %99 = load i8*, i8** %98, align 8
  %100 = load i64, i64* %dst, align 8
  %101 = load i8**, i8*** %newElements, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 %100
  store i8* %99, i8** %102, align 8
  br label %103

; <label>:103                                     ; preds = %95
  %104 = load i64, i64* %src1, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %src1, align 8
  %106 = load i64, i64* %dst, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %dst, align 8
  br label %91

; <label>:108                                     ; preds = %91
  br label %109

; <label>:109                                     ; preds = %108, %69
  %110 = load i8**, i8*** %elements, align 8
  %111 = bitcast i8** %110 to i8*
  call void @free(i8* %111) #8
  %112 = load i8**, i8*** %newElements, align 8
  %113 = load %struct.queue*, %struct.queue** %2, align 8
  %114 = getelementptr inbounds %struct.queue, %struct.queue* %113, i32 0, i32 3
  store i8** %112, i8*** %114, align 8
  %115 = load %struct.queue*, %struct.queue** %2, align 8
  %116 = getelementptr inbounds %struct.queue, %struct.queue* %115, i32 0, i32 3
  %117 = load i8**, i8*** %116, align 8
  store i8** %117, i8*** %4, align 8
  %118 = load i8**, i8*** %4, align 8
  %119 = load i64, i64* %newCapacity, align 8
  %120 = sub nsw i64 %119, 1
  %121 = load %struct.queue*, %struct.queue** %2, align 8
  %122 = getelementptr inbounds %struct.queue, %struct.queue* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.queue*, %struct.queue** %2, align 8
  %124 = getelementptr inbounds %struct.queue, %struct.queue* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %5, align 8
  %126 = load i64, i64* %5, align 8
  %127 = load i64, i64* %newCapacity, align 8
  %128 = load %struct.queue*, %struct.queue** %2, align 8
  %129 = getelementptr inbounds %struct.queue, %struct.queue* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  %130 = load %struct.queue*, %struct.queue** %2, align 8
  %131 = getelementptr inbounds %struct.queue, %struct.queue* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %6, align 8
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* %dst, align 8
  store i64 %134, i64* %push, align 8
  %135 = load i64, i64* %push, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %newPush, align 8
  br label %137

; <label>:137                                     ; preds = %109, %24
  %138 = load %struct.queue*, %struct.queue** %2, align 8
  %139 = getelementptr inbounds %struct.queue, %struct.queue* %138, i32 0, i32 3
  %140 = load i8**, i8*** %139, align 8
  store i8** %140, i8*** %elements2, align 8
  %141 = load i8*, i8** %3, align 8
  %142 = load i64, i64* %push, align 8
  %143 = load i8**, i8*** %elements2, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 %142
  store i8* %141, i8** %144, align 8
  %145 = load i64, i64* %push, align 8
  %146 = load i8**, i8*** %elements2, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 %145
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %7, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = load i64, i64* %newPush, align 8
  %151 = load %struct.queue*, %struct.queue** %2, align 8
  %152 = getelementptr inbounds %struct.queue, %struct.queue* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load %struct.queue*, %struct.queue** %2, align 8
  %154 = getelementptr inbounds %struct.queue, %struct.queue* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %8, align 8
  %156 = load i64, i64* %8, align 8
  store i64 1, i64* %1, align 8
  br label %157

; <label>:157                                     ; preds = %137, %41
  %158 = load i64, i64* %1, align 8
  ret i64 %158
}

; Function Attrs: nounwind uwtable
define i8* @queue_pop(%struct.queue* %queuePtr) #9 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.queue*, align 8
  %pop = alloca i64, align 8
  %push = alloca i64, align 8
  %capacity = alloca i64, align 8
  %newPop = alloca i64, align 8
  %dataPtr = alloca i8*, align 8
  store %struct.queue* %queuePtr, %struct.queue** %2, align 8
  %3 = load %struct.queue*, %struct.queue** %2, align 8
  %4 = getelementptr inbounds %struct.queue, %struct.queue* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %pop, align 8
  %6 = load %struct.queue*, %struct.queue** %2, align 8
  %7 = getelementptr inbounds %struct.queue, %struct.queue* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %push, align 8
  %9 = load %struct.queue*, %struct.queue** %2, align 8
  %10 = getelementptr inbounds %struct.queue, %struct.queue* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %capacity, align 8
  %12 = load i64, i64* %pop, align 8
  %13 = add nsw i64 %12, 1
  %14 = load i64, i64* %capacity, align 8
  %15 = srem i64 %13, %14
  store i64 %15, i64* %newPop, align 8
  %16 = load i64, i64* %newPop, align 8
  %17 = load i64, i64* %push, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %0
  store i8* null, i8** %1, align 8
  br label %31

; <label>:20                                      ; preds = %0
  %21 = load i64, i64* %newPop, align 8
  %22 = load %struct.queue*, %struct.queue** %2, align 8
  %23 = getelementptr inbounds %struct.queue, %struct.queue* %22, i32 0, i32 3
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 %21
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %dataPtr, align 8
  %27 = load i64, i64* %newPop, align 8
  %28 = load %struct.queue*, %struct.queue** %2, align 8
  %29 = getelementptr inbounds %struct.queue, %struct.queue* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i8*, i8** %dataPtr, align 8
  store i8* %30, i8** %1, align 8
  br label %31

; <label>:31                                      ; preds = %20, %19
  %32 = load i8*, i8** %1, align 8
  ret i8* %32
}

; Function Attrs: nounwind uwtable
define i8* @TMqueue_pop(%struct.queue* %queuePtr) #9 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.queue*, align 8
  %pop = alloca i64, align 8
  %push = alloca i64, align 8
  %capacity = alloca i64, align 8
  %newPop = alloca i64, align 8
  %elements = alloca i8**, align 8
  %dataPtr = alloca i8*, align 8
  %3 = alloca i64, align 8
  store %struct.queue* %queuePtr, %struct.queue** %2, align 8
  %4 = load %struct.queue*, %struct.queue** %2, align 8
  %5 = getelementptr inbounds %struct.queue, %struct.queue* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %pop, align 8
  %7 = load %struct.queue*, %struct.queue** %2, align 8
  %8 = getelementptr inbounds %struct.queue, %struct.queue* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %push, align 8
  %10 = load %struct.queue*, %struct.queue** %2, align 8
  %11 = getelementptr inbounds %struct.queue, %struct.queue* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %capacity, align 8
  %13 = load i64, i64* %pop, align 8
  %14 = add nsw i64 %13, 1
  %15 = load i64, i64* %capacity, align 8
  %16 = srem i64 %14, %15
  store i64 %16, i64* %newPop, align 8
  %17 = load i64, i64* %newPop, align 8
  %18 = load i64, i64* %push, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %0
  store i8* null, i8** %1, align 8
  br label %37

; <label>:21                                      ; preds = %0
  %22 = load %struct.queue*, %struct.queue** %2, align 8
  %23 = getelementptr inbounds %struct.queue, %struct.queue* %22, i32 0, i32 3
  %24 = load i8**, i8*** %23, align 8
  store i8** %24, i8*** %elements, align 8
  %25 = load i64, i64* %newPop, align 8
  %26 = load i8**, i8*** %elements, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 %25
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %dataPtr, align 8
  %29 = load i64, i64* %newPop, align 8
  %30 = load %struct.queue*, %struct.queue** %2, align 8
  %31 = getelementptr inbounds %struct.queue, %struct.queue* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.queue*, %struct.queue** %2, align 8
  %33 = getelementptr inbounds %struct.queue, %struct.queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i8*, i8** %dataPtr, align 8
  store i8* %36, i8** %1, align 8
  br label %37

; <label>:37                                      ; preds = %21, %20
  %38 = load i8*, i8** %1, align 8
  ret i8* %38
}

; Function Attrs: nounwind uwtable
define %struct.random* @random_alloc() #9 {
  %randomPtr = alloca %struct.random*, align 8
  %1 = call noalias i8* @malloc(i64 5008) #8
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
define %struct.random* @Prandom_alloc() #9 {
  %randomPtr = alloca %struct.random*, align 8
  %1 = call noalias i8* @malloc(i64 5008) #8
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
define void @random_free(%struct.random* %randomPtr) #9 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Prandom_free(%struct.random* %randomPtr) #9 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @random_seed(%struct.random* %randomPtr, i64 %seed) #9 {
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
define i64 @random_generate(%struct.random* %randomPtr) #9 {
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
define void @RTM_output_stats() #9 {
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @init_one_perfcounter(i32 %number, i64 %whatToMeasure) #11 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %ret = alloca i32, align 4
  %offset = alloca i64, align 8
  %zeros = alloca i8*, align 8
  store i32 %number, i32* %1, align 4
  store i64 %whatToMeasure, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 8) #8
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
  %16 = call i64 @lseek(i32 %12, i64 %15, i32 0) #8
  store i64 %16, i64* %offset, align 8
  %17 = load i64, i64* %offset, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %11
  br label %22

; <label>:20                                      ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.107, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %32

; <label>:32                                      ; preds = %31, %29
  %33 = load i32, i32* @FD, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 193, %34
  %36 = sext i32 %35 to i64
  %37 = call i64 @lseek(i32 %33, i64 %36, i32 0) #8
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.107, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %47

; <label>:47                                      ; preds = %46, %44
  %48 = load i8*, i8** %zeros, align 8
  call void @free(i8* %48) #8
  br label %49

; <label>:49                                      ; preds = %47, %10
  ret void
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #12

declare i64 @write(i32, i8*, i64) #13

; Function Attrs: inlinehint nounwind uwtable
define void @read_one_perfcounter(i32 %number, i32* %whereToPut) #11 {
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
  %14 = call i64 @lseek(i32 %10, i64 %13, i32 0) #8
  store i64 %14, i64* %offset, align 8
  %15 = load i64, i64* %offset, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %9
  br label %20

; <label>:18                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.108, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 189, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.107, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #15
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

declare i64 @read(i32, i8*, i64) #13

; Function Attrs: nounwind uwtable
define void @RTM_init_perfcounters() #9 {
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
define void @RTM_update_perfcounters(i32 %i) #9 {
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
define void @RTM_spinlock_init() #11 {
  store i64* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @RTM_lock_array, i64 0, i64 64) to i64*), i64** @RTM_fallBackLock, align 8
  %1 = load i64*, i64** @RTM_fallBackLock, align 8
  store volatile i64 0, i64* %1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @RTM_fallback_isLocked() #11 {
  %1 = load i64*, i64** @RTM_fallBackLock, align 8
  %2 = load volatile i64, i64* %1, align 8
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = sext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: inlinehint nounwind uwtable
define void @RTM_fallback_whileIsLocked() #11 {
  br label %1

; <label>:1                                       ; preds = %4, %0
  %2 = call i64 @RTM_fallback_isLocked()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %1
  call void @llvm.x86.sse2.pause() #8
  br label %1

; <label>:5                                       ; preds = %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @RTM_fallback_lock() #11 {
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
define void @RTM_fallback_unlock() #11 {
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !9
  %1 = load i64*, i64** @RTM_fallBackLock, align 8
  store volatile i64 0, i64* %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @update_reasons(i32 %status, i32 %i) #9 {
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
define i64 @determineNumProcs() #9 {
  %bitmask = alloca i64, align 8
  %num_procs = alloca i32, align 4
  %err = alloca i32, align 4
  %available_procs = alloca %struct.cpu_set_t, align 8
  %1 = call i64 @pthread_self() #18
  %2 = call i32 @pthread_getaffinity_np(i64 %1, i64 128, %struct.cpu_set_t* %available_procs) #8
  store i32 %2, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.117, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.determineNumProcs, i32 0, i32 0)) #15
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
declare i64 @pthread_self() #14

; Function Attrs: nounwind
declare i32 @pthread_getaffinity_np(i64, i64, %struct.cpu_set_t*) #12

; Function Attrs: nounwind uwtable
define void @thread_startup(i64 %numThread) #9 {
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
  %3 = call i64 @pthread_self() #18
  %4 = call i32 @pthread_getaffinity_np(i64 %3, i64 128, %struct.cpu_set_t* %available_procs) #8
  store i32 %4, i32* %err, align 4
  %5 = load i32, i32* %err, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.117, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.120, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 463, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.123, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 465, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  call void @thread_barrier_init(%struct.thread_barrier* %39)
  %40 = load i64, i64* %1, align 8
  %41 = mul i64 %40, 72
  %42 = call noalias i8* @malloc(i64 %41) #8
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
  %78 = call i32 @pthread_key_create(i32* @global_threadId, void (i8*)* null) #8
  %79 = load i64*, i64** @global_threadIds, align 8
  %80 = icmp eq i64* %79, null
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %77
  br label %84

; <label>:82                                      ; preds = %77
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7.124, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %84

; <label>:84                                      ; preds = %83, %81
  %85 = load i64, i64* %1, align 8
  %86 = mul i64 %85, 8
  %87 = call noalias i8* @malloc(i64 %86) #8
  %88 = bitcast i8* %87 to i64*
  store i64* %88, i64** @global_threadIds, align 8
  %89 = load i64*, i64** @global_threadIds, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %84
  br label %94

; <label>:92                                      ; preds = %84
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8.125, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 486, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9.126, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 492, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %113

; <label>:113                                     ; preds = %112, %110
  %114 = load i64, i64* %1, align 8
  %115 = mul i64 %114, 8
  %116 = call noalias i8* @malloc(i64 %115) #8
  %117 = bitcast i8* %116 to i64*
  store i64* %117, i64** @global_threads, align 8
  %118 = load i64*, i64** @global_threads, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %121

; <label>:120                                     ; preds = %113
  br label %123

; <label>:121                                     ; preds = %113
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10.127, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 494, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %123

; <label>:123                                     ; preds = %122, %120
  %124 = call i32 @pthread_attr_init(%union.pthread_attr_t* @global_threadAttr) #8
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
  %137 = call i32 @pthread_create(i64* %132, %union.pthread_attr_t* @global_threadAttr, i8* (i8*)* bitcast (void (i8*)* @threadWait to i8* (i8*)*), i8* %136) #8
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
define %struct.thread_barrier* @thread_barrier_alloc(i64 %numThread) #9 {
  %1 = alloca i64, align 8
  %barrierPtr = alloca %struct.thread_barrier*, align 8
  store i64 %numThread, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %7

; <label>:5                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.121, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 570, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12.122, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.106, i32 0, i32 0), i32 571, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = load i64, i64* %1, align 8
  %18 = mul i64 %17, 152
  %19 = call noalias i8* @malloc(i64 %18) #8
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
define void @thread_barrier_init(%struct.thread_barrier* %barrierPtr) #9 {
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
  %18 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %17, %union.pthread_mutexattr_t* null) #8
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %21 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %20, i64 %19
  %22 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %21, i32 0, i32 1
  %23 = call i32 @pthread_cond_init(%union.pthread_cond_t* %22, %union.pthread_mutexattr_t* null) #8
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %26 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %25, i64 %24
  %27 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %26, i32 0, i32 2
  %28 = call i32 @pthread_cond_init(%union.pthread_cond_t* %27, %union.pthread_mutexattr_t* null) #8
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
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #12

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_mutexattr_t*) #12

; Function Attrs: nounwind
declare i32 @pthread_key_create(i32*, void (i8*)*) #12

; Function Attrs: nounwind
declare i32 @pthread_attr_init(%union.pthread_attr_t*) #12

; Function Attrs: nounwind uwtable
define internal void @threadWait(i8* %argPtr) #9 {
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
  %8 = call i32 @pthread_setspecific(i32 %5, i8* %7) #8
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
declare i32 @pthread_setspecific(i32, i8*) #12

; Function Attrs: nounwind uwtable
define void @thread_barrier(%struct.thread_barrier* %barrierPtr, i64 %threadId) #9 {
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
  %25 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %24) #8
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
  %54 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %53) #8
  br label %98

; <label>:55                                      ; preds = %10
  %56 = load i64, i64* %index, align 8
  %57 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %58 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %57, i64 %56
  %59 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %58, i32 0, i32 0
  %60 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %59) #8
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
  %78 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %77) #8
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
  %97 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %96) #8
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
  %131 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %130) #8
  %132 = load i64, i64* %index, align 8
  %133 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %134 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %133, i64 %132
  %135 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %134, i32 0, i32 3
  store i64 0, i64* %135, align 8
  %136 = load i64, i64* %index, align 8
  %137 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %138 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %137, i64 %136
  %139 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %138, i32 0, i32 2
  %140 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %139) #8
  %141 = load i64, i64* %index, align 8
  %142 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %143 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %142, i64 %141
  %144 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %143, i32 0, i32 0
  %145 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %144) #8
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
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #12

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #13

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #12

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(%union.pthread_cond_t*) #12

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #12

; Function Attrs: nounwind uwtable
define void @thread_start(void (i8*)* %funcPtr, i8* %argPtr) #9 {
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
define void @thread_shutdown() #9 {
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
  call void @free(i8* %19) #8
  store i64* null, i64** @global_threadIds, align 8
  %20 = load i64*, i64** @global_threads, align 8
  %21 = bitcast i64* %20 to i8*
  call void @free(i8* %21) #8
  store i64* null, i64** @global_threads, align 8
  store i64 1, i64* @global_numThread, align 8
  ret void
}

declare i32 @pthread_join(i64, i8**) #13

; Function Attrs: nounwind uwtable
define void @thread_barrier_free(%struct.thread_barrier* %barrierPtr) #9 {
  %1 = alloca %struct.thread_barrier*, align 8
  store %struct.thread_barrier* %barrierPtr, %struct.thread_barrier** %1, align 8
  %2 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %3 = bitcast %struct.thread_barrier* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @thread_getId() #9 {
  %1 = load i32, i32* @global_threadId, align 4
  %2 = call i8* @pthread_getspecific(i32 %1) #8
  %3 = ptrtoint i8* %2 to i64
  ret i64 %3
}

; Function Attrs: nounwind
declare i8* @pthread_getspecific(i32) #12

; Function Attrs: nounwind uwtable
define i64 @thread_getNumThread() #9 {
  %1 = load i64, i64* @global_numThread, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define void @thread_barrier_wait() #9 {
  %threadId = alloca i64, align 8
  %1 = call i64 @thread_getId()
  store i64 %1, i64* %threadId, align 8
  %2 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  %3 = load i64, i64* %threadId, align 8
  call void @thread_barrier(%struct.thread_barrier* %2, i64 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.vector* @vector_alloc(i64 %initCapacity) #9 {
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
  %17 = call noalias i8* @malloc(i64 24) #8
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
  %29 = call noalias i8* @malloc(i64 %28) #8
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
define %struct.vector* @Pvector_alloc(i64 %initCapacity) #9 {
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
  %17 = call noalias i8* @malloc(i64 24) #8
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
  %29 = call noalias i8* @malloc(i64 %28) #8
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
define void @vector_free(%struct.vector* %vectorPtr) #9 {
  %1 = alloca %struct.vector*, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %1, align 8
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 2
  %4 = load i8**, i8*** %3, align 8
  %5 = bitcast i8** %4 to i8*
  call void @free(i8* %5) #8
  %6 = load %struct.vector*, %struct.vector** %1, align 8
  %7 = bitcast %struct.vector* %6 to i8*
  call void @free(i8* %7) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Pvector_free(%struct.vector* %vectorPtr) #9 {
  %1 = alloca %struct.vector*, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %1, align 8
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 2
  %4 = load i8**, i8*** %3, align 8
  %5 = bitcast i8** %4 to i8*
  call void @free(i8* %5) #8
  %6 = load %struct.vector*, %struct.vector** %1, align 8
  %7 = bitcast %struct.vector* %6 to i8*
  call void @free(i8* %7) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @vector_at(%struct.vector* %vectorPtr, i64 %i) #9 {
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
define i64 @vector_pushBack(%struct.vector* %vectorPtr, i8* %dataPtr) #9 {
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
  %18 = call noalias i8* @malloc(i64 %17) #8
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
  call void @free(i8* %50) #8
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
define i64 @Pvector_pushBack(%struct.vector* %vectorPtr, i8* %dataPtr) #9 {
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
  %18 = call noalias i8* @malloc(i64 %17) #8
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
  call void @free(i8* %50) #8
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
define i8* @vector_popBack(%struct.vector* %vectorPtr) #9 {
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
define i64 @vector_getSize(%struct.vector* %vectorPtr) #9 {
  %1 = alloca %struct.vector*, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %1, align 8
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @vector_clear(%struct.vector* %vectorPtr) #9 {
  %1 = alloca %struct.vector*, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %1, align 8
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 0
  store i64 0, i64* %3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @vector_sort(%struct.vector* %vectorPtr, i32 (i8*, i8*)* %compare) #9 {
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

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #13

; Function Attrs: nounwind uwtable
define i64 @vector_copy(%struct.vector* %dstVectorPtr, %struct.vector* %srcVectorPtr) #9 {
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
  %19 = call noalias i8* @malloc(i64 %18) #8
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
  call void @free(i8* %28) #8
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
define i64 @Pvector_copy(%struct.vector* %dstVectorPtr, %struct.vector* %srcVectorPtr) #9 {
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
  %19 = call noalias i8* @malloc(i64 %18) #8
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
  call void @free(i8* %28) #8
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
define i64 @memory_init(i64 %numThread, i64 %initBlockCapacity, i64 %blockGrowthFactor) #9 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.151, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.memory_init, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = call noalias i8* @malloc(i64 16) #8
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
  %19 = call noalias i8* @malloc(i64 %18) #8
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
define internal %struct.pool* @allocPool(i64 %initBlockCapacity, i64 %blockGrowthFactor) #9 {
  %1 = alloca %struct.pool*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %poolPtr = alloca %struct.pool*, align 8
  store i64 %initBlockCapacity, i64* %2, align 8
  store i64 %blockGrowthFactor, i64* %3, align 8
  %4 = call noalias i8* @malloc(i64 32) #8
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
define internal %struct.block* @allocBlock(i64 %capacity) #9 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.152, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.151, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.allocBlock, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %8

; <label>:8                                       ; preds = %7, %5
  %9 = call noalias i8* @malloc(i64 160) #8
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
  %23 = call noalias i8* @malloc(i64 %22) #8
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
define void @memory_destroy() #9 {
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
  call void @free(i8* %22) #8
  %23 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %24 = bitcast %struct.memory* %23 to i8*
  call void @free(i8* %24) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freePool(%struct.pool* %poolPtr) #9 {
  %1 = alloca %struct.pool*, align 8
  store %struct.pool* %poolPtr, %struct.pool** %1, align 8
  %2 = load %struct.pool*, %struct.pool** %1, align 8
  %3 = getelementptr inbounds %struct.pool, %struct.pool* %2, i32 0, i32 0
  %4 = load %struct.block*, %struct.block** %3, align 8
  call void @freeBlocks(%struct.block* %4)
  %5 = load %struct.pool*, %struct.pool** %1, align 8
  %6 = bitcast %struct.pool* %5 to i8*
  call void @free(i8* %6) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeBlocks(%struct.block* %blockPtr) #9 {
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
define internal void @freeBlock(%struct.block* %blockPtr) #9 {
  %1 = alloca %struct.block*, align 8
  store %struct.block* %blockPtr, %struct.block** %1, align 8
  %2 = load %struct.block*, %struct.block** %1, align 8
  %3 = getelementptr inbounds %struct.block, %struct.block* %2, i32 0, i32 3
  %4 = load i8*, i8** %3, align 8
  call void @free(i8* %4) #8
  %5 = load %struct.block*, %struct.block** %1, align 8
  %6 = bitcast %struct.block* %5 to i8*
  call void @free(i8* %6) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @memory_get(i64 %threadId, i64 %numByte) #9 {
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
define internal i8* @getMemoryFromPool(%struct.pool* %poolPtr, i64 %numByte) #9 {
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
define internal %struct.block* @addBlockToPool(%struct.pool* %poolPtr, i64 %numByte) #9 {
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
define internal i8* @getMemoryFromBlock(%struct.block* %blockPtr, i64 %numByte) #9 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.153, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.151, i32 0, i32 0), i32 304, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getMemoryFromBlock, i32 0, i32 0)) #15
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
declare void @llvm.prefetch(i8* nocapture, i32, i32, i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind readonly }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { cold }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145912288}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.vectorize.width", i32 1337}
!4 = !{i32 -2146008595, i32 -2146008559, i32 -2146008535}
!5 = !{i32 -2145797022, i32 -2145796986, i32 -2145796962}
!6 = !{i32 1419884, i32 1419900, i32 1419936, i32 1419972, i32 1420008}
!7 = !{i32 1420485, i32 1420500, i32 1420534}
!8 = !{i32 1420256, i32 1420271, i32 1420299}
!9 = !{i32 11658}