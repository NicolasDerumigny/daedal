; ModuleID = 'llvm-link'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.heap = type { i8**, i64, i64, i64 (i8*, i8*)* }
%struct.mesh = type { %struct.element*, %struct.queue*, i64, %struct.rbtree* }
%struct.element = type { [3 x %struct.coordinate], i64, %struct.coordinate, double, double, [3 x %struct.pair], i64, [3 x %struct.coordinate], [3 x double], %struct.pair*, i64, %struct.list*, i64, i64 }
%struct.coordinate = type { double, double }
%struct.pair = type { i8*, i8* }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.queue = type { i64, i64, i64, i8** }
%struct.rbtree = type { %struct.node*, i64 (i8*, i8*)* }
%struct.node = type { i8*, i8*, %struct.node*, %struct.node*, %struct.node*, i64 }
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
%struct.jsw_avltree = type { %struct.jsw_avlnode*, i64 (i8*, i8*)*, i64 }
%struct.jsw_avlnode = type { i64, i8*, [2 x %struct.jsw_avlnode*] }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.region = type { %struct.coordinate, %struct.queue*, %struct.list*, %struct.list*, %struct.vector* }
%struct.vector = type { i64, i64, i8** }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.jsw_avltrav = type { %struct.jsw_avltree*, %struct.jsw_avlnode*, [64 x %struct.jsw_avlnode*], i64 }
%struct.cpu_set_t = type { [16 x i64] }
%union.pthread_mutexattr_t = type { i32 }

@.str.7 = private unnamed_addr constant [41 x i8] c"numCoordinate == 2 || numCoordinate == 3\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"element.c\00", align 1
@__PRETTY_FUNCTION__.checkAngles = private unnamed_addr constant [30 x i8] c"void checkAngles(element_t *)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"angle > 0.0\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"angle < 180.0\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"minAngle < 180.0\00", align 1
@__PRETTY_FUNCTION__.calculateCircumCircle = private unnamed_addr constant [40 x i8] c"void calculateCircumCircle(element_t *)\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"fabs(denominator) > DBL_MIN\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"cmp != 0\00", align 1
@__PRETTY_FUNCTION__.setEdge = private unnamed_addr constant [32 x i8] c"void setEdge(element_t *, long)\00", align 1
@.str = private unnamed_addr constant [28 x i8] c"elementPtr->neighborListPtr\00", align 1
@__PRETTY_FUNCTION__.element_alloc = private unnamed_addr constant [47 x i8] c"element_t *element_alloc(coordinate_t *, long)\00", align 1
@__PRETTY_FUNCTION__.Pelement_alloc = private unnamed_addr constant [48 x i8] c"element_t *Pelement_alloc(coordinate_t *, long)\00", align 1
@__PRETTY_FUNCTION__.TMelement_alloc = private unnamed_addr constant [49 x i8] c"element_t *TMelement_alloc(coordinate_t *, long)\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"list_getSize(elementPtr->neighborListPtr) <= elementPtr->numEdge\00", align 1
@__PRETTY_FUNCTION__.element_addNeighbor = private unnamed_addr constant [51 x i8] c"void element_addNeighbor(element_t *, element_t *)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.element_getNewPoint = private unnamed_addr constant [46 x i8] c"coordinate_t element_getNewPoint(element_t *)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%0.3lf \00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"meshPtr->initBadQueuePtr\00", align 1
@.str.1.14 = private unnamed_addr constant [7 x i8] c"mesh.c\00", align 1
@__PRETTY_FUNCTION__.mesh_alloc = private unnamed_addr constant [21 x i8] c"mesh_t *mesh_alloc()\00", align 1
@.str.2.15 = private unnamed_addr constant [24 x i8] c"meshPtr->boundarySetPtr\00", align 1
@.str.3.16 = private unnamed_addr constant [10 x i8] c"isSuccess\00", align 1
@__PRETTY_FUNCTION__.mesh_insert = private unnamed_addr constant [57 x i8] c"void mesh_insert(mesh_t *, element_t *, jsw_avltree_t *)\00", align 1
@.str.4.17 = private unnamed_addr constant [10 x i8] c"sharerPtr\00", align 1
@__PRETTY_FUNCTION__.TMmesh_insert = private unnamed_addr constant [59 x i8] c"void TMmesh_insert(mesh_t *, element_t *, jsw_avltree_t *)\00", align 1
@.str.5.18 = private unnamed_addr constant [33 x i8] c"!TMELEMENT_ISGARBAGE(elementPtr)\00", align 1
@__PRETTY_FUNCTION__.TMmesh_remove = private unnamed_addr constant [42 x i8] c"void TMmesh_remove(mesh_t *, element_t *)\00", align 1
@.str.6.19 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.7.20 = private unnamed_addr constant [11 x i8] c"edgeMapPtr\00", align 1
@__PRETTY_FUNCTION__.mesh_read = private unnamed_addr constant [33 x i8] c"long mesh_read(mesh_t *, char *)\00", align 1
@.str.8.21 = private unnamed_addr constant [8 x i8] c"%s.node\00", align 1
@.str.9.22 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.10.23 = private unnamed_addr constant [10 x i8] c"inputFile\00", align 1
@.str.11.24 = private unnamed_addr constant [8 x i8] c"%li %li\00", align 1
@.str.12.25 = private unnamed_addr constant [18 x i8] c"numDimension == 2\00", align 1
@.str.13.26 = private unnamed_addr constant [12 x i8] c"coordinates\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"%li %lf %lf\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"i == numEntry\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"%s.poly\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"numEntry == 0\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%li\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"%li %li %li\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"a >= 0 && a < numCoordinate\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"b >= 0 && b < numCoordinate\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"elementPtr\00", align 1
@__PRETTY_FUNCTION__.createElement = private unnamed_addr constant [68 x i8] c"void createElement(mesh_t *, coordinate_t *, long, jsw_avltree_t *)\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%s.ele\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"numDimension == 3\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"%li %li %li %li\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"c >= 0 && c < numCoordinate\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"Checking final mesh:\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [15 x i8] c"searchQueuePtr\00", align 1
@__PRETTY_FUNCTION__.mesh_check = private unnamed_addr constant [34 x i8] c"bool_t mesh_check(mesh_t *, long)\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"visitedMapPtr\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"meshPtr->rootElementPtr\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Number of elements      = %li\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Number of bad triangles = %li\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"regionPtr->expandQueuePtr\00", align 1
@.str.1.34 = private unnamed_addr constant [9 x i8] c"region.c\00", align 1
@__PRETTY_FUNCTION__.Pregion_alloc = private unnamed_addr constant [26 x i8] c"region_t *Pregion_alloc()\00", align 1
@.str.2.35 = private unnamed_addr constant [25 x i8] c"regionPtr->beforeListPtr\00", align 1
@.str.3.36 = private unnamed_addr constant [25 x i8] c"regionPtr->borderListPtr\00", align 1
@.str.4.37 = private unnamed_addr constant [24 x i8] c"regionPtr->badVectorPtr\00", align 1
@.str.5.38 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@__PRETTY_FUNCTION__.TMaddToBadVector = private unnamed_addr constant [47 x i8] c"void TMaddToBadVector(vector_t *, element_t *)\00", align 1
@.str.6.39 = private unnamed_addr constant [11 x i8] c"edgeMapPtr\00", align 1
@__PRETTY_FUNCTION__.TMretriangulate = private unnamed_addr constant [73 x i8] c"long TMretriangulate(element_t *, region_t *, mesh_t *, jsw_avltree_t *)\00", align 1
@.str.7.40 = private unnamed_addr constant [12 x i8] c"aElementPtr\00", align 1
@.str.8.41 = private unnamed_addr constant [12 x i8] c"bElementPtr\00", align 1
@.str.9.42 = private unnamed_addr constant [14 x i8] c"borderEdgePtr\00", align 1
@.str.10.43 = private unnamed_addr constant [16 x i8] c"afterElementPtr\00", align 1
@.str.11.44 = private unnamed_addr constant [10 x i8] c"isSuccess\00", align 1
@__PRETTY_FUNCTION__.TMgrowRegion = private unnamed_addr constant [76 x i8] c"element_t *TMgrowRegion(element_t *, region_t *, mesh_t *, jsw_avltree_t *)\00", align 1
@__PRETTY_FUNCTION__.TMregion_refine = private unnamed_addr constant [56 x i8] c"long TMregion_refine(region_t *, element_t *, mesh_t *)\00", align 1
@__PRETTY_FUNCTION__.TMregion_transferBad = private unnamed_addr constant [48 x i8] c"void TMregion_transferBad(region_t *, heap_t *)\00", align 1
@global_inputPrefix = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0), align 8
@.str.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@global_numThread = global i64 1, align 8
@global_angleConstraint = global double 2.000000e+01, align 8
@global_totalNumAdded = global i64 0, align 8
@global_numProcess = global i64 0, align 8
@global_workHeapPtr = common global %struct.heap* null, align 8
@global_meshPtr = common global %struct.mesh* null, align 8
@.str.1.48 = private unnamed_addr constant [10 x i8] c"regionPtr\00", align 1
@.str.2.49 = private unnamed_addr constant [7 x i8] c"yada.c\00", align 1
@__PRETTY_FUNCTION__.process = private unnamed_addr constant [15 x i8] c"void process()\00", align 1
@opterr = external global i32, align 4
@.str.23.50 = private unnamed_addr constant [7 x i8] c"a:i:t:\00", align 1
@optarg = external global i8*, align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.24.51 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.25.52 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.26.53 = private unnamed_addr constant [51 x i8] c"\0AOptions:                              (defaults)\0A\00", align 1
@.str.27.54 = private unnamed_addr constant [45 x i8] c"    a <FLT>   Min [a]ngle constraint  (%lf)\0A\00", align 1
@.str.28.55 = private unnamed_addr constant [44 x i8] c"    i <STR>   [i]nput name prefix     (%s)\0A\00", align 1
@.str.29.56 = private unnamed_addr constant [45 x i8] c"    t <UINT>  Number of [t]hreads     (%li)\0A\00", align 1
@.str.4.57 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.5.58 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.6.59 = private unnamed_addr constant [15 x i8] c"global_meshPtr\00", align 1
@.str.7.60 = private unnamed_addr constant [24 x i8] c"Angle constraint = %lf\0A\00", align 1
@.str.8.61 = private unnamed_addr constant [18 x i8] c"Reading input... \00", align 1
@.str.9.62 = private unnamed_addr constant [6 x i8] c"done.\00", align 1
@.str.10.63 = private unnamed_addr constant [19 x i8] c"global_workHeapPtr\00", align 1
@.str.30.64 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@__PRETTY_FUNCTION__.initializeWork = private unnamed_addr constant [40 x i8] c"long initializeWork(heap_t *, mesh_t *)\00", align 1
@.str.11.65 = private unnamed_addr constant [39 x i8] c"Initial number of mesh elements = %li\0A\00", align 1
@.str.12.66 = private unnamed_addr constant [39 x i8] c"Initial number of bad elements  = %li\0A\00", align 1
@.str.13.67 = private unnamed_addr constant [26 x i8] c"Starting triangulation...\00", align 1
@.str.14.68 = private unnamed_addr constant [7 x i8] c" done.\00", align 1
@.str.15.69 = private unnamed_addr constant [42 x i8] c"Elapsed time                    = %0.3lf\0A\00", align 1
@.str.16.70 = private unnamed_addr constant [39 x i8] c"Final mesh size                 = %li\0A\00", align 1
@.str.17.71 = private unnamed_addr constant [39 x i8] c"Number of elements processed    = %li\0A\00", align 1
@.str.19.72 = private unnamed_addr constant [7 x i8] c"valid.\00", align 1
@.str.20.73 = private unnamed_addr constant [9 x i8] c"INVALID!\00", align 1
@.str.18.74 = private unnamed_addr constant [18 x i8] c"Final mesh is %s\0A\00", align 1
@.str.21.75 = private unnamed_addr constant [10 x i8] c"isSuccess\00", align 1
@.str.22.76 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"(%+0.4lg, %+0.4lg)\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"heapPtr->elements\00", align 1
@.str.1.107 = private unnamed_addr constant [7 x i8] c"heap.c\00", align 1
@__PRETTY_FUNCTION__.heap_alloc = private unnamed_addr constant [63 x i8] c"heap_t *heap_alloc(long, long (*)(const void *, const void *))\00", align 1
@.str.148 = private unnamed_addr constant [19 x i8] c"listPtr->size >= 0\00", align 1
@.str.1.149 = private unnamed_addr constant [7 x i8] c"list.c\00", align 1
@__PRETTY_FUNCTION__.list_remove = private unnamed_addr constant [37 x i8] c"bool_t list_remove(list_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.Plist_remove = private unnamed_addr constant [38 x i8] c"bool_t Plist_remove(list_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.TMlist_remove = private unnamed_addr constant [39 x i8] c"bool_t TMlist_remove(list_t *, void *)\00", align 1
@genrand_int32.mag01 = internal global [2 x i64] [i64 0, i64 2567483615], align 16
@.str.178 = private unnamed_addr constant [12 x i8] c"pop != push\00", align 1
@.str.1.179 = private unnamed_addr constant [8 x i8] c"queue.c\00", align 1
@__PRETTY_FUNCTION__.queue_push = private unnamed_addr constant [37 x i8] c"bool_t queue_push(queue_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.Pqueue_push = private unnamed_addr constant [38 x i8] c"bool_t Pqueue_push(queue_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.TMqueue_push = private unnamed_addr constant [39 x i8] c"bool_t TMqueue_push(queue_t *, void *)\00", align 1
@.str.192 = private unnamed_addr constant [18 x i8] c"Integrity check: \00", align 1
@.str.1.193 = private unnamed_addr constant [33 x i8] c"  (WARNING) root %lX parent=%lX\0A\00", align 1
@.str.2.194 = private unnamed_addr constant [32 x i8] c"  (WARNING) root %lX color=%lX\0A\00", align 1
@.str.3.195 = private unnamed_addr constant [12 x i8] c"Bad parent\0A\00", align 1
@.str.4.196 = private unnamed_addr constant [39 x i8] c"Key order %lX (%ld %ld) %lX (%ld %ld)\0A\00", align 1
@.str.6.197 = private unnamed_addr constant [33 x i8] c" Imbalance @depth=%ld : %ld %ld\0A\00", align 1
@.str.7.198 = private unnamed_addr constant [10 x i8] c" lineage\0A\00", align 1
@.str.8.199 = private unnamed_addr constant [11 x i8] c"VERIFY %d\0A\00", align 1
@.str.5.200 = private unnamed_addr constant [22 x i8] c" Nodes=%ld Depth=%ld\0A\00", align 1
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
@.str.221 = private unnamed_addr constant [11 x i8] c"offset > 0\00", align 1
@.str.1.222 = private unnamed_addr constant [9 x i8] c"thread.c\00", align 1
@__PRETTY_FUNCTION__.init_one_perfcounter = private unnamed_addr constant [46 x i8] c"void init_one_perfcounter(int, unsigned long)\00", align 1
@.str.2.223 = private unnamed_addr constant [8 x i8] c"ret > 0\00", align 1
@.str.3.224 = private unnamed_addr constant [9 x i8] c"offset>0\00", align 1
@__PRETTY_FUNCTION__.read_one_perfcounter = private unnamed_addr constant [47 x i8] c"void read_one_perfcounter(int, unsigned int *)\00", align 1
@M5_inSimulator = external global i32, align 4
@.str.4.233 = private unnamed_addr constant [9 x i8] c"err == 0\00", align 1
@__PRETTY_FUNCTION__.determineNumProcs = private unnamed_addr constant [25 x i8] c"long determineNumProcs()\00", align 1
@global_numThread.236 = internal global i64 1, align 8
@global_doShutdown = internal global i64 0, align 8
@__PRETTY_FUNCTION__.thread_startup = private unnamed_addr constant [26 x i8] c"void thread_startup(long)\00", align 1
@global_barrierPtr = internal global %struct.thread_barrier* null, align 8
@.str.5.237 = private unnamed_addr constant [26 x i8] c"global_barrierPtr == NULL\00", align 1
@.str.11.238 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@__PRETTY_FUNCTION__.thread_barrier_alloc = private unnamed_addr constant [45 x i8] c"thread_barrier_t *thread_barrier_alloc(long)\00", align 1
@.str.12.239 = private unnamed_addr constant [35 x i8] c"(numThread & (numThread - 1)) == 0\00", align 1
@.str.6.240 = private unnamed_addr constant [18 x i8] c"global_barrierPtr\00", align 1
@global_threadId = internal global i32 0, align 4
@global_threadIds = internal global i64* null, align 8
@.str.7.241 = private unnamed_addr constant [25 x i8] c"global_threadIds == NULL\00", align 1
@.str.8.242 = private unnamed_addr constant [17 x i8] c"global_threadIds\00", align 1
@global_threads = internal global i64* null, align 8
@.str.9.243 = private unnamed_addr constant [23 x i8] c"global_threads == NULL\00", align 1
@.str.10.244 = private unnamed_addr constant [15 x i8] c"global_threads\00", align 1
@global_threadAttr = internal global %union.pthread_attr_t zeroinitializer, align 8
@global_funcPtr = internal global void (i8*)* null, align 8
@global_argPtr = internal global i8* null, align 8
@global_memoryPtr = global %struct.memory* null, align 8
@.str.263 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@.str.1.264 = private unnamed_addr constant [9 x i8] c"memory.c\00", align 1
@__PRETTY_FUNCTION__.memory_init = private unnamed_addr constant [39 x i8] c"bool_t memory_init(long, size_t, long)\00", align 1
@.str.2.265 = private unnamed_addr constant [13 x i8] c"capacity > 0\00", align 1
@__PRETTY_FUNCTION__.allocBlock = private unnamed_addr constant [28 x i8] c"block_t *allocBlock(size_t)\00", align 1
@.str.3.266 = private unnamed_addr constant [29 x i8] c"(size + numByte) <= capacity\00", align 1
@__PRETTY_FUNCTION__.getMemoryFromBlock = private unnamed_addr constant [44 x i8] c"void *getMemoryFromBlock(block_t *, size_t)\00", align 1

; Function Attrs: nounwind uwtable
define i64 @element_compare(%struct.element* %aElementPtr, %struct.element* %bElementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %aElementPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %bElementPtr, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.element, %struct.element* %aElementPtr, i32 0, i32 0
  %6 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.element, %struct.element* %bElementPtr, i32 0, i32 0
  %8 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %7, i32 0, i32 0
  %9 = icmp slt i64 %2, %4
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %28

; <label>:11                                      ; preds = %0
  %12 = icmp sgt i64 %2, %4
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %11
  br label %28

; <label>:14                                      ; preds = %11
  br label %15

; <label>:15                                      ; preds = %14
  br label %16

; <label>:16                                      ; preds = %25, %15
  %i.0 = phi i64 [ 0, %15 ], [ %26, %25 ]
  %17 = icmp slt i64 %i.0, %2
  br i1 %17, label %18, label %27

; <label>:18                                      ; preds = %16
  %19 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %6, i64 %i.0
  %20 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %8, i64 %i.0
  %21 = call i64 @coordinate_compare(%struct.coordinate* %19, %struct.coordinate* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %18
  br label %28

; <label>:24                                      ; preds = %18
  br label %25

; <label>:25                                      ; preds = %24
  %26 = add nsw i64 %i.0, 1
  br label %16

; <label>:27                                      ; preds = %16
  br label %28

; <label>:28                                      ; preds = %27, %23, %13, %10
  %.0 = phi i64 [ -1, %10 ], [ 1, %13 ], [ %21, %23 ], [ 0, %27 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @element_listCompare(i8* %aPtr, i8* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast i8* %aPtr to %struct.element*
  %2 = bitcast i8* %bPtr to %struct.element*
  %3 = call i64 @element_compare(%struct.element* %1, %struct.element* %2)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @element_mapCompare(%struct.pair* %aPtr, %struct.pair* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.pair, %struct.pair* %aPtr, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.element*
  %4 = getelementptr inbounds %struct.pair, %struct.pair* %bPtr, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.element*
  %7 = call i64 @element_compare(%struct.element* %3, %struct.element* %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define %struct.element* @element_alloc(%struct.coordinate* %coordinates, i64 %numCoordinate) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 256) #8
  %2 = bitcast i8* %1 to %struct.element*
  %3 = icmp ne %struct.element* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %28

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 0
  br label %6

; <label>:6                                       ; preds = %13, %4
  %i.0 = phi i64 [ 0, %4 ], [ %14, %13 ]
  %7 = icmp slt i64 %i.0, %numCoordinate
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %5, i64 0, i64 %i.0
  %10 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %i.0
  %11 = bitcast %struct.coordinate* %9 to i8*
  %12 = bitcast %struct.coordinate* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  br label %13

; <label>:13                                      ; preds = %8
  %14 = add nsw i64 %i.0, 1
  br label %6

; <label>:15                                      ; preds = %6
  %16 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 1
  store i64 %numCoordinate, i64* %16, align 8
  call void @minimizeCoordinates(%struct.element* %2)
  call void @checkAngles(%struct.element* %2)
  call void @calculateCircumCircle(%struct.element* %2)
  call void @initEdges(%struct.element* %2, %struct.coordinate* %coordinates, i64 %numCoordinate)
  %17 = call %struct.list* @list_alloc(i64 (i8*, i8*)* @element_listCompare)
  %18 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  store %struct.list* %17, %struct.list** %18, align 8
  %19 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  %20 = load %struct.list*, %struct.list** %19, align 8
  %21 = icmp ne %struct.list* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %15
  br label %25

; <label>:23                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 393, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.element_alloc, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:25                                      ; preds = %24, %22
  %26 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 12
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 13
  store i64 0, i64* %27, align 8
  br label %28

; <label>:28                                      ; preds = %25, %._crit_edge
  ret %struct.element* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @minimizeCoordinates(%struct.element* %elementPtr) #0 {
  %tmp = alloca %struct.coordinate, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 0
  %2 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  br label %5

; <label>:5                                       ; preds = %14, %0
  %minPosition.0 = phi i64 [ 0, %0 ], [ %minPosition.1, %14 ]
  %i.0 = phi i64 [ 1, %0 ], [ %15, %14 ]
  %6 = icmp slt i64 %i.0, %4
  br i1 %6, label %7, label %16

; <label>:7                                       ; preds = %5
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 %i.0
  %9 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 %minPosition.0
  %10 = call i64 @coordinate_compare(%struct.coordinate* %8, %struct.coordinate* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %._crit_edge

._crit_edge:                                      ; preds = %7
  br label %13

; <label>:12                                      ; preds = %7
  br label %13

; <label>:13                                      ; preds = %12, %._crit_edge
  %minPosition.1 = phi i64 [ %i.0, %12 ], [ %minPosition.0, %._crit_edge ]
  br label %14

; <label>:14                                      ; preds = %13
  %15 = add nsw i64 %i.0, 1
  br label %5

; <label>:16                                      ; preds = %5
  %17 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 0
  %18 = bitcast %struct.coordinate* %tmp to i8*
  %19 = bitcast %struct.coordinate* %17 to i8*
  %20 = sub nsw i64 %4, 1
  %21 = sub nsw i64 %4, 1
  %22 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 %21
  %23 = bitcast %struct.coordinate* %22 to i8*
  %24 = bitcast %struct.coordinate* %tmp to i8*
  br label %25

; <label>:25                                      ; preds = %38, %16
  %minPosition.2 = phi i64 [ %minPosition.0, %16 ], [ %39, %38 ]
  %26 = icmp ne i64 %minPosition.2, 0
  br i1 %26, label %27, label %40

; <label>:27                                      ; preds = %25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  br label %28

; <label>:28                                      ; preds = %36, %27
  %j.0 = phi i64 [ 0, %27 ], [ %37, %36 ]
  %29 = icmp slt i64 %j.0, %20
  br i1 %29, label %30, label %38

; <label>:30                                      ; preds = %28
  %31 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 %j.0
  %32 = add nsw i64 %j.0, 1
  %33 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 %32
  %34 = bitcast %struct.coordinate* %31 to i8*
  %35 = bitcast %struct.coordinate* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false)
  br label %36

; <label>:36                                      ; preds = %30
  %37 = add nsw i64 %j.0, 1
  br label %28

; <label>:38                                      ; preds = %28
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  %39 = add nsw i64 %minPosition.2, -1
  br label %25

; <label>:40                                      ; preds = %25
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @checkAngles(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = load double, double* @global_angleConstraint, align 8
  %4 = icmp eq i64 %2, 2
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  br label %7

; <label>:5                                       ; preds = %0
  %6 = icmp eq i64 %2, 3
  br i1 %6, label %._crit_edge1, label %8

._crit_edge1:                                     ; preds = %5
  br label %7

; <label>:7                                       ; preds = %._crit_edge1, %._crit_edge
  br label %10

; <label>:8                                       ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 13
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 10
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 9
  store %struct.pair* null, %struct.pair** %13, align 8
  %14 = icmp eq i64 %2, 3
  br i1 %14, label %15, label %._crit_edge2

._crit_edge2:                                     ; preds = %10
  br label %62

; <label>:15                                      ; preds = %10
  %16 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 0
  %17 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 5
  %19 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 9
  %20 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 10
  br label %21

; <label>:21                                      ; preds = %54, %15
  %minAngle.0 = phi double [ 1.800000e+02, %15 ], [ %minAngle.1, %54 ]
  %i.0 = phi i64 [ 0, %15 ], [ %55, %54 ]
  %22 = icmp slt i64 %i.0, 3
  br i1 %22, label %23, label %56

; <label>:23                                      ; preds = %21
  %24 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %17, i64 %i.0
  %25 = add nsw i64 %i.0, 1
  %26 = srem i64 %25, 3
  %27 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %17, i64 %26
  %28 = add nsw i64 %i.0, 2
  %29 = srem i64 %28, 3
  %30 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %17, i64 %29
  %31 = call double @coordinate_angle(%struct.coordinate* %24, %struct.coordinate* %27, %struct.coordinate* %30)
  %32 = fcmp ogt double %31, 0.000000e+00
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %23
  br label %36

; <label>:34                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 164, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:36                                      ; preds = %33
  %37 = fcmp olt double %31, 1.800000e+02
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %36
  br label %41

; <label>:39                                      ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:41                                      ; preds = %38
  %42 = fcmp ogt double %31, 9.000000e+01
  br i1 %42, label %43, label %._crit_edge3

._crit_edge3:                                     ; preds = %41
  br label %47

; <label>:43                                      ; preds = %41
  %44 = add nsw i64 %i.0, 1
  %45 = srem i64 %44, 3
  %46 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %18, i64 0, i64 %45
  store %struct.pair* %46, %struct.pair** %19, align 8
  br label %47

; <label>:47                                      ; preds = %43, %._crit_edge3
  %48 = fcmp olt double %31, %3
  br i1 %48, label %49, label %._crit_edge4

._crit_edge4:                                     ; preds = %47
  br label %50

; <label>:49                                      ; preds = %47
  store i64 1, i64* %20, align 8
  br label %50

; <label>:50                                      ; preds = %49, %._crit_edge4
  %51 = fcmp olt double %31, %minAngle.0
  br i1 %51, label %52, label %._crit_edge5

._crit_edge5:                                     ; preds = %50
  br label %53

; <label>:52                                      ; preds = %50
  br label %53

; <label>:53                                      ; preds = %52, %._crit_edge5
  %minAngle.1 = phi double [ %31, %52 ], [ %minAngle.0, %._crit_edge5 ]
  br label %54

; <label>:54                                      ; preds = %53
  %55 = add nsw i64 %i.0, 1
  br label %21

; <label>:56                                      ; preds = %21
  %57 = fcmp olt double %minAngle.0, 1.800000e+02
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %56
  br label %61

; <label>:59                                      ; preds = %56
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 176, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %61

; <label>:61                                      ; preds = %60, %58
  br label %62

; <label>:62                                      ; preds = %61, %._crit_edge2
  %minAngle.2 = phi double [ %minAngle.0, %61 ], [ 1.800000e+02, %._crit_edge2 ]
  %63 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 4
  store double %minAngle.2, double* %63, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @calculateCircumCircle(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 0
  %4 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 2
  %6 = icmp eq i64 %2, 2
  br i1 %6, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  %8 = icmp eq i64 %2, 3
  br i1 %8, label %._crit_edge1, label %10

._crit_edge1:                                     ; preds = %7
  br label %9

; <label>:9                                       ; preds = %._crit_edge1, %._crit_edge
  br label %12

; <label>:10                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.calculateCircumCircle, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = icmp eq i64 %2, 2
  br i1 %13, label %14, label %33

; <label>:14                                      ; preds = %12
  %15 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 0
  %16 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 1
  %19 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fadd double %17, %20
  %22 = fdiv double %21, 2.000000e+00
  %23 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i32 0, i32 0
  store double %22, double* %23, align 8
  %24 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 0
  %25 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %24, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 1
  %28 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = fadd double %26, %29
  %31 = fdiv double %30, 2.000000e+00
  %32 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i32 0, i32 1
  store double %31, double* %32, align 8
  br label %84

; <label>:33                                      ; preds = %12
  %34 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 0
  %35 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 0
  %38 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %37, i32 0, i32 1
  %39 = load double, double* %38, align 8
  %40 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 1
  %41 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 1
  %44 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 2
  %47 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 2
  %50 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %49, i32 0, i32 1
  %51 = load double, double* %50, align 8
  %52 = fsub double %42, %36
  %53 = fsub double %45, %39
  %54 = fsub double %48, %36
  %55 = fsub double %51, %39
  %56 = fmul double %52, %52
  %57 = fmul double %53, %53
  %58 = fadd double %56, %57
  %59 = fmul double %54, %54
  %60 = fmul double %55, %55
  %61 = fadd double %59, %60
  %62 = fmul double %53, %61
  %63 = fmul double %55, %58
  %64 = fsub double %62, %63
  %65 = fmul double %52, %61
  %66 = fmul double %54, %58
  %67 = fsub double %65, %66
  %68 = fmul double %52, %55
  %69 = fmul double %54, %53
  %70 = fsub double %68, %69
  %71 = fmul double 2.000000e+00, %70
  %72 = fdiv double %64, %71
  %73 = fsub double %36, %72
  %74 = fdiv double %67, %71
  %75 = fadd double %39, %74
  %76 = call double @fabs(double %71) #19
  %77 = fcmp ogt double %76, 0x10000000000000
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %33
  br label %81

; <label>:79                                      ; preds = %33
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 244, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.calculateCircumCircle, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %81

; <label>:81                                      ; preds = %80, %78
  %82 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i32 0, i32 0
  store double %73, double* %82, align 8
  %83 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i32 0, i32 1
  store double %75, double* %83, align 8
  br label %84

; <label>:84                                      ; preds = %81, %14
  %85 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 0
  %86 = call double @coordinate_distance(%struct.coordinate* %5, %struct.coordinate* %85)
  %87 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 3
  store double %86, double* %87, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind uwtable
define internal void @initEdges(%struct.element* %elementPtr, %struct.coordinate* %coordinates, i64 %numCoordinate) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sub nsw i64 %numCoordinate, 1
  %2 = mul nsw i64 %numCoordinate, %1
  %3 = sdiv i64 %2, 2
  %4 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 6
  store i64 %3, i64* %4, align 8
  br label %5

; <label>:5                                       ; preds = %8, %0
  %e.0 = phi i64 [ 0, %0 ], [ %9, %8 ]
  %6 = icmp slt i64 %e.0, %3
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %5
  call void @setEdge(%struct.element* %elementPtr, i64 %e.0)
  br label %8

; <label>:8                                       ; preds = %7
  %9 = add nsw i64 %e.0, 1
  br label %5

; <label>:10                                      ; preds = %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setEdge(%struct.element* %elementPtr, i64 %i) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 0
  %4 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 %i
  %6 = add nsw i64 %i, 1
  %7 = srem i64 %6, %2
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 %7
  %9 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 5
  %10 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %9, i64 0, i64 %i
  %11 = call i64 @coordinate_compare(%struct.coordinate* %5, %struct.coordinate* %8)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  br label %16

; <label>:14                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 272, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.setEdge, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = icmp slt i64 %11, 0
  br i1 %17, label %18, label %23

; <label>:18                                      ; preds = %16
  %19 = bitcast %struct.coordinate* %5 to i8*
  %20 = getelementptr inbounds %struct.pair, %struct.pair* %10, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = bitcast %struct.coordinate* %8 to i8*
  %22 = getelementptr inbounds %struct.pair, %struct.pair* %10, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  br label %28

; <label>:23                                      ; preds = %16
  %24 = bitcast %struct.coordinate* %8 to i8*
  %25 = getelementptr inbounds %struct.pair, %struct.pair* %10, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = bitcast %struct.coordinate* %5 to i8*
  %27 = getelementptr inbounds %struct.pair, %struct.pair* %10, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  br label %28

; <label>:28                                      ; preds = %23, %18
  %29 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 7
  %30 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %29, i64 0, i64 %i
  %31 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i32 0, i32 0
  %32 = load double, double* %31, align 8
  %33 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %8, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = fadd double %32, %34
  %36 = fdiv double %35, 2.000000e+00
  %37 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %30, i32 0, i32 0
  store double %36, double* %37, align 8
  %38 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i32 0, i32 1
  %39 = load double, double* %38, align 8
  %40 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %8, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = fadd double %39, %41
  %43 = fdiv double %42, 2.000000e+00
  %44 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %30, i32 0, i32 1
  store double %43, double* %44, align 8
  %45 = call double @coordinate_distance(%struct.coordinate* %5, %struct.coordinate* %30)
  %46 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 8
  %47 = getelementptr inbounds [3 x double], [3 x double]* %46, i64 0, i64 %i
  store double %45, double* %47, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.element* @Pelement_alloc(%struct.coordinate* %coordinates, i64 %numCoordinate) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 256) #8
  %2 = bitcast i8* %1 to %struct.element*
  %3 = icmp ne %struct.element* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %28

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 0
  br label %6

; <label>:6                                       ; preds = %13, %4
  %i.0 = phi i64 [ 0, %4 ], [ %14, %13 ]
  %7 = icmp slt i64 %i.0, %numCoordinate
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %5, i64 0, i64 %i.0
  %10 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %i.0
  %11 = bitcast %struct.coordinate* %9 to i8*
  %12 = bitcast %struct.coordinate* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  br label %13

; <label>:13                                      ; preds = %8
  %14 = add nsw i64 %i.0, 1
  br label %6

; <label>:15                                      ; preds = %6
  %16 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 1
  store i64 %numCoordinate, i64* %16, align 8
  call void @minimizeCoordinates(%struct.element* %2)
  call void @checkAngles(%struct.element* %2)
  call void @calculateCircumCircle(%struct.element* %2)
  call void @initEdges(%struct.element* %2, %struct.coordinate* %coordinates, i64 %numCoordinate)
  %17 = call %struct.list* @Plist_alloc(i64 (i8*, i8*)* @element_listCompare)
  %18 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  store %struct.list* %17, %struct.list** %18, align 8
  %19 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  %20 = load %struct.list*, %struct.list** %19, align 8
  %21 = icmp ne %struct.list* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %15
  br label %25

; <label>:23                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 425, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.Pelement_alloc, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:25                                      ; preds = %24, %22
  %26 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 12
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 13
  store i64 0, i64* %27, align 8
  br label %28

; <label>:28                                      ; preds = %25, %._crit_edge
  ret %struct.element* %2
}

; Function Attrs: nounwind uwtable
define %struct.element* @TMelement_alloc(%struct.coordinate* %coordinates, i64 %numCoordinate) #0 {
  %structArg = alloca { i64, [3 x %struct.coordinate]*, %struct.coordinate* }
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 256) #8
  %2 = bitcast i8* %1 to %struct.element*
  %3 = icmp ne %struct.element* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %19

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 0
  br label %codeRepl

codeRepl:                                         ; preds = %4
  %gep_numCoordinate = getelementptr { i64, [3 x %struct.coordinate]*, %struct.coordinate* }, { i64, [3 x %struct.coordinate]*, %struct.coordinate* }* %structArg, i32 0, i32 0
  store i64 %numCoordinate, i64* %gep_numCoordinate
  %gep_ = getelementptr { i64, [3 x %struct.coordinate]*, %struct.coordinate* }, { i64, [3 x %struct.coordinate]*, %struct.coordinate* }* %structArg, i32 0, i32 1
  store [3 x %struct.coordinate]* %5, [3 x %struct.coordinate]** %gep_
  %gep_coordinates = getelementptr { i64, [3 x %struct.coordinate]*, %struct.coordinate* }, { i64, [3 x %struct.coordinate]*, %struct.coordinate* }* %structArg, i32 0, i32 2
  store %struct.coordinate* %coordinates, %struct.coordinate** %gep_coordinates
  call void @TMelement_alloc___kernel__TMelement_alloc0({ i64, [3 x %struct.coordinate]*, %struct.coordinate* }* %structArg)
  br label %6

; <label>:6                                       ; preds = %codeRepl
  %7 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 1
  store i64 %numCoordinate, i64* %7, align 8
  call void @minimizeCoordinates(%struct.element* %2)
  call void @checkAngles(%struct.element* %2)
  call void @calculateCircumCircle(%struct.element* %2)
  call void @initEdges(%struct.element* %2, %struct.coordinate* %coordinates, i64 %numCoordinate)
  %8 = call %struct.list* @TMlist_alloc(i64 (i8*, i8*)* @element_listCompare)
  %9 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  store %struct.list* %8, %struct.list** %9, align 8
  %10 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  %11 = load %struct.list*, %struct.list** %10, align 8
  %12 = icmp ne %struct.list* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %6
  br label %16

; <label>:14                                      ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.TMelement_alloc, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 12
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 13
  store i64 0, i64* %18, align 8
  br label %19

; <label>:19                                      ; preds = %16, %._crit_edge
  ret %struct.element* %2
}

; Function Attrs: alwaysinline nounwind
define internal void @TMelement_alloc___kernel__TMelement_alloc0({ i64, [3 x %struct.coordinate]*, %struct.coordinate* }*) #5 {
newFuncRoot:
  %gep_numCoordinate = getelementptr { i64, [3 x %struct.coordinate]*, %struct.coordinate* }, { i64, [3 x %struct.coordinate]*, %struct.coordinate* }* %0, i32 0, i32 0
  %loadgep_numCoordinate = load i64, i64* %gep_numCoordinate
  %gep_ = getelementptr { i64, [3 x %struct.coordinate]*, %struct.coordinate* }, { i64, [3 x %struct.coordinate]*, %struct.coordinate* }* %0, i32 0, i32 1
  %loadgep_ = load [3 x %struct.coordinate]*, [3 x %struct.coordinate]** %gep_
  %gep_coordinates = getelementptr { i64, [3 x %struct.coordinate]*, %struct.coordinate* }, { i64, [3 x %struct.coordinate]*, %struct.coordinate* }* %0, i32 0, i32 2
  %loadgep_coordinates = load %struct.coordinate*, %struct.coordinate** %gep_coordinates
  br label %__kernel__TMelement_alloc0

.exitStub:                                        ; preds = %__kernel__TMelement_alloc0
  ret void

__kernel__TMelement_alloc0:                       ; preds = %7, %newFuncRoot
  %i.0 = phi i64 [ 0, %newFuncRoot ], [ %8, %7 ]
  %1 = icmp slt i64 %i.0, %loadgep_numCoordinate
  br i1 %1, label %2, label %.exitStub

; <label>:2                                       ; preds = %__kernel__TMelement_alloc0
  %3 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %loadgep_, i64 0, i64 %i.0
  %4 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %loadgep_coordinates, i64 %i.0
  %5 = bitcast %struct.coordinate* %3 to i8*
  %6 = bitcast %struct.coordinate* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  br label %7

; <label>:7                                       ; preds = %2
  %8 = add nsw i64 %i.0, 1
  br label %__kernel__TMelement_alloc0, !llvm.loop !1
}

; Function Attrs: nounwind uwtable
define void @element_free(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  call void @list_free(%struct.list* %2)
  %3 = bitcast %struct.element* %elementPtr to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @Pelement_free(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  call void @Plist_free(%struct.list* %2)
  %3 = bitcast %struct.element* %elementPtr to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMelement_free(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  call void @TMlist_free(%struct.list* %2)
  %3 = bitcast %struct.element* %elementPtr to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @element_getNumEdge(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 6
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define %struct.pair* @element_getEdge(%struct.element* %elementPtr, i64 %i) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = icmp slt i64 %i, 0
  br i1 %1, label %._crit_edge, label %2

._crit_edge:                                      ; preds = %0
  br label %6

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 6
  %4 = load i64, i64* %3, align 8
  %5 = icmp sgt i64 %i, %4
  br i1 %5, label %._crit_edge1, label %7

._crit_edge1:                                     ; preds = %2
  br label %6

; <label>:6                                       ; preds = %._crit_edge1, %._crit_edge
  br label %10

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 5
  %9 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %8, i64 0, i64 %i
  br label %10

; <label>:10                                      ; preds = %7, %6
  %.0 = phi %struct.pair* [ null, %6 ], [ %9, %7 ]
  ret %struct.pair* %.0
}

; Function Attrs: nounwind uwtable
define i64 @element_listCompareEdge(i8* %aPtr, i8* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast i8* %aPtr to %struct.pair*
  %2 = bitcast i8* %bPtr to %struct.pair*
  %3 = call i64 @compareEdge(%struct.pair* %1, %struct.pair* %2)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal i64 @compareEdge(%struct.pair* %aEdgePtr, %struct.pair* %bEdgePtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.pair, %struct.pair* %aEdgePtr, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.coordinate*
  %4 = getelementptr inbounds %struct.pair, %struct.pair* %bEdgePtr, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.coordinate*
  %7 = call i64 @coordinate_compare(%struct.coordinate* %3, %struct.coordinate* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %18

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %struct.pair, %struct.pair* %aEdgePtr, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.coordinate*
  %14 = getelementptr inbounds %struct.pair, %struct.pair* %bEdgePtr, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.coordinate*
  %17 = call i64 @coordinate_compare(%struct.coordinate* %13, %struct.coordinate* %16)
  br label %18

; <label>:18                                      ; preds = %10, %9
  %.reg2mem3.0 = phi i64 [ %7, %9 ], [ %17, %10 ]
  ret i64 %.reg2mem3.0
}

; Function Attrs: nounwind uwtable
define i64 @element_mapCompareEdge(%struct.pair* %aPtr, %struct.pair* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.pair, %struct.pair* %aPtr, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.pair*
  %4 = getelementptr inbounds %struct.pair, %struct.pair* %bPtr, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.pair*
  %7 = call i64 @compareEdge(%struct.pair* %3, %struct.pair* %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @element_heapCompare(i8* %aPtr, i8* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast i8* %aPtr to %struct.element*
  %2 = bitcast i8* %bPtr to %struct.element*
  %3 = getelementptr inbounds %struct.element, %struct.element* %1, i32 0, i32 9
  %4 = load %struct.pair*, %struct.pair** %3, align 8
  %5 = icmp ne %struct.pair* %4, null
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 9
  %8 = load %struct.pair*, %struct.pair** %7, align 8
  %9 = icmp ne %struct.pair* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  br label %18

; <label>:11                                      ; preds = %6
  br label %18

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 9
  %14 = load %struct.pair*, %struct.pair** %13, align 8
  %15 = icmp ne %struct.pair* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %12
  br label %18

; <label>:17                                      ; preds = %12
  br label %18

; <label>:18                                      ; preds = %17, %16, %11, %10
  %.0 = phi i64 [ 0, %10 ], [ 1, %11 ], [ -1, %16 ], [ 0, %17 ]
  ret i64 %.0
}

; Function Attrs: nounwind readonly uwtable
define i64 @element_isInCircumCircle(%struct.element* %elementPtr, %struct.coordinate* %coordinatePtr) #6 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 2
  %2 = call double @coordinate_distance(%struct.coordinate* %coordinatePtr, %struct.coordinate* %1)
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 3
  %4 = load double, double* %3, align 8
  %5 = fcmp ole double %2, %4
  %6 = select i1 %5, i32 1, i32 0
  %7 = sext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define void @element_clearEncroached(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 9
  store %struct.pair* null, %struct.pair** %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.pair* @element_getEncroachedPtr(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 9
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  ret %struct.pair* %2
}

; Function Attrs: nounwind uwtable
define i64 @element_isSkinny(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 10
  %2 = load i64, i64* %1, align 8
  %3 = icmp ne i64 %2, 0
  %4 = select i1 %3, i32 1, i32 0
  %5 = sext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @element_isBad(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @isEncroached(%struct.element* %elementPtr)
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %0
  br label %6

; <label>:3                                       ; preds = %0
  %4 = call i64 @element_isSkinny(%struct.element* %elementPtr)
  %5 = icmp ne i64 %4, 0
  br label %6

; <label>:6                                       ; preds = %3, %._crit_edge
  %.reg2mem1.0 = phi i1 [ true, %._crit_edge ], [ %5, %3 ]
  %7 = select i1 %.reg2mem1.0, i32 1, i32 0
  %8 = sext i32 %7 to i64
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal i64 @isEncroached(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 9
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = icmp ne %struct.pair* %2, null
  %4 = select i1 %3, i32 1, i32 0
  %5 = sext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @element_isReferenced(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 13
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i64 @TMelement_isReferenced(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 13
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define void @element_setIsReferenced(%struct.element* %elementPtr, i64 %status) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 13
  store i64 %status, i64* %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMelement_setIsReferenced(%struct.element* %elementPtr, i64 %status) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 13
  store i64 %status, i64* %1, align 8
  %2 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 13
  %3 = load i64, i64* %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @element_isGarbage(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 12
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i64 @TMelement_isGarbage(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 12
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define void @element_setIsGarbage(%struct.element* %elementPtr, i64 %status) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 12
  store i64 %status, i64* %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMelement_setIsGarbage(%struct.element* %elementPtr, i64 %status) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 12
  store i64 %status, i64* %1, align 8
  %2 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 12
  %3 = load i64, i64* %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @element_addNeighbor(%struct.element* %elementPtr, %struct.element* %neighborPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = bitcast %struct.element* %neighborPtr to i8*
  %4 = call i64 @list_insert(%struct.list* %2, i8* %3)
  %5 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 11
  %6 = load %struct.list*, %struct.list** %5, align 8
  %7 = call i64 @list_getSize(%struct.list* %6)
  %8 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp sle i64 %7, %9
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  br label %14

; <label>:12                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 779, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.element_addNeighbor, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMelement_addNeighbor(%struct.element* %elementPtr, %struct.element* %neighborPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = bitcast %struct.element* %neighborPtr to i8*
  %4 = call i64 @TMlist_insert(%struct.list* %2, i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.list* @element_getNeighborListPtr(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  ret %struct.list* %2
}

; Function Attrs: nounwind readonly uwtable
define %struct.pair* @element_getCommonEdge(%struct.element* %aElementPtr, %struct.element* %bElementPtr) #6 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %aElementPtr, i32 0, i32 5
  %2 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.element, %struct.element* %bElementPtr, i32 0, i32 5
  %4 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.element, %struct.element* %aElementPtr, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.element, %struct.element* %bElementPtr, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  br label %9

; <label>:9                                       ; preds = %24, %0
  %a.0 = phi i64 [ 0, %0 ], [ %25, %24 ]
  %10 = icmp slt i64 %a.0, %6
  br i1 %10, label %11, label %26

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds %struct.pair, %struct.pair* %2, i64 %a.0
  br label %13

; <label>:13                                      ; preds = %21, %11
  %b.0 = phi i64 [ 0, %11 ], [ %22, %21 ]
  %14 = icmp slt i64 %b.0, %8
  br i1 %14, label %15, label %23

; <label>:15                                      ; preds = %13
  %16 = getelementptr inbounds %struct.pair, %struct.pair* %4, i64 %b.0
  %17 = call i64 @compareEdge(%struct.pair* %12, %struct.pair* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %15
  br label %27

; <label>:20                                      ; preds = %15
  br label %21

; <label>:21                                      ; preds = %20
  %22 = add nsw i64 %b.0, 1
  br label %13

; <label>:23                                      ; preds = %13
  br label %24

; <label>:24                                      ; preds = %23
  %25 = add nsw i64 %a.0, 1
  br label %9

; <label>:26                                      ; preds = %9
  br label %27

; <label>:27                                      ; preds = %26, %19
  %.0 = phi %struct.pair* [ %12, %19 ], [ null, %26 ]
  ret %struct.pair* %.0
}

; Function Attrs: nounwind uwtable
define { double, double } @element_getNewPoint(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.coordinate, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %2 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 9
  %3 = load %struct.pair*, %struct.pair** %2, align 8
  %4 = icmp ne %struct.pair* %3, null
  br i1 %4, label %5, label %25

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 5
  %9 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %8, i32 0, i32 0
  br label %10

; <label>:10                                      ; preds = %22, %5
  %e.0 = phi i64 [ 0, %5 ], [ %23, %22 ]
  %11 = icmp slt i64 %e.0, %7
  br i1 %11, label %12, label %24

; <label>:12                                      ; preds = %10
  %13 = getelementptr inbounds %struct.pair, %struct.pair* %9, i64 %e.0
  %14 = call i64 @compareEdge(%struct.pair* %3, %struct.pair* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %12
  %17 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 7
  %18 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %17, i64 0, i64 %e.0
  %19 = bitcast %struct.coordinate* %1 to i8*
  %20 = bitcast %struct.coordinate* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false)
  br label %29

; <label>:21                                      ; preds = %12
  br label %22

; <label>:22                                      ; preds = %21
  %23 = add nsw i64 %e.0, 1
  br label %10

; <label>:24                                      ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 854, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.element_getNewPoint, i32 0, i32 0)) #18
  unreachable

; <label>:25                                      ; preds = %0
  %26 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 2
  %27 = bitcast %struct.coordinate* %1 to i8*
  %28 = bitcast %struct.coordinate* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false)
  br label %29

; <label>:29                                      ; preds = %25, %16
  %30 = bitcast %struct.coordinate* %1 to { double, double }*
  %31 = load { double, double }, { double, double }* %30, align 8
  ret { double, double } %31
}

; Function Attrs: nounwind uwtable
define i64 @element_checkAngles(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = load double, double* @global_angleConstraint, align 8
  %4 = icmp eq i64 %2, 3
  br i1 %4, label %5, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %25

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 0
  %7 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %6, i32 0, i32 0
  br label %8

; <label>:8                                       ; preds = %22, %5
  %i.0 = phi i64 [ 0, %5 ], [ %23, %22 ]
  %9 = icmp slt i64 %i.0, 3
  br i1 %9, label %10, label %24

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %7, i64 %i.0
  %12 = add nsw i64 %i.0, 1
  %13 = srem i64 %12, 3
  %14 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %7, i64 %13
  %15 = add nsw i64 %i.0, 2
  %16 = srem i64 %15, 3
  %17 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %7, i64 %16
  %18 = call double @coordinate_angle(%struct.coordinate* %11, %struct.coordinate* %14, %struct.coordinate* %17)
  %19 = fcmp olt double %18, %3
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %10
  br label %26

; <label>:21                                      ; preds = %10
  br label %22

; <label>:22                                      ; preds = %21
  %23 = add nsw i64 %i.0, 1
  br label %8

; <label>:24                                      ; preds = %8
  br label %25

; <label>:25                                      ; preds = %24, %._crit_edge
  br label %26

; <label>:26                                      ; preds = %25, %20
  %.0 = phi i64 [ 0, %20 ], [ 1, %25 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define void @element_print(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 0
  %4 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %3, i32 0, i32 0
  br label %5

; <label>:5                                       ; preds = %10, %0
  %c.0 = phi i64 [ 0, %0 ], [ %11, %10 ]
  %6 = icmp slt i64 %c.0, %2
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %5
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 %c.0
  call void @coordinate_print(%struct.coordinate* %8)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %7
  %11 = add nsw i64 %c.0, 1
  br label %5

; <label>:12                                      ; preds = %5
  ret void
}

declare i32 @printf(i8*, ...) #7

; Function Attrs: nounwind uwtable
define void @element_printEdge(%struct.pair* %edgePtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.pair, %struct.pair* %edgePtr, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.coordinate*
  call void @coordinate_print(%struct.coordinate* %3)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  %5 = getelementptr inbounds %struct.pair, %struct.pair* %edgePtr, i32 0, i32 1
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.coordinate*
  call void @coordinate_print(%struct.coordinate* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @element_printAngles(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = icmp eq i64 %2, 3
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %22

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 0
  %6 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %5, i32 0, i32 0
  br label %7

; <label>:7                                       ; preds = %19, %4
  %i.0 = phi i64 [ 0, %4 ], [ %20, %19 ]
  %8 = icmp slt i64 %i.0, 3
  br i1 %8, label %9, label %21

; <label>:9                                       ; preds = %7
  %10 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %6, i64 %i.0
  %11 = add nsw i64 %i.0, 1
  %12 = srem i64 %11, 3
  %13 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %6, i64 %12
  %14 = add nsw i64 %i.0, 2
  %15 = srem i64 %14, 3
  %16 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %6, i64 %15
  %17 = call double @coordinate_angle(%struct.coordinate* %10, %struct.coordinate* %13, %struct.coordinate* %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double %17)
  br label %19

; <label>:19                                      ; preds = %9
  %20 = add nsw i64 %i.0, 1
  br label %7

; <label>:21                                      ; preds = %7
  br label %22

; <label>:22                                      ; preds = %21, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.mesh* @mesh_alloc() #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 32) #8
  %2 = bitcast i8* %1 to %struct.mesh*
  %3 = icmp ne %struct.mesh* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %25

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.mesh, %struct.mesh* %2, i32 0, i32 0
  store %struct.element* null, %struct.element** %5, align 8
  %6 = call %struct.queue* @queue_alloc(i64 -1)
  %7 = getelementptr inbounds %struct.mesh, %struct.mesh* %2, i32 0, i32 1
  store %struct.queue* %6, %struct.queue** %7, align 8
  %8 = getelementptr inbounds %struct.mesh, %struct.mesh* %2, i32 0, i32 1
  %9 = load %struct.queue*, %struct.queue** %8, align 8
  %10 = icmp ne %struct.queue* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %4
  br label %14

; <label>:12                                      ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.mesh_alloc, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = getelementptr inbounds %struct.mesh, %struct.mesh* %2, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* @element_listCompareEdge)
  %17 = getelementptr inbounds %struct.mesh, %struct.mesh* %2, i32 0, i32 3
  store %struct.rbtree* %16, %struct.rbtree** %17, align 8
  %18 = getelementptr inbounds %struct.mesh, %struct.mesh* %2, i32 0, i32 3
  %19 = load %struct.rbtree*, %struct.rbtree** %18, align 8
  %20 = icmp ne %struct.rbtree* %19, null
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %14
  br label %24

; <label>:22                                      ; preds = %14
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.mesh_alloc, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %24

; <label>:24                                      ; preds = %23, %21
  br label %25

; <label>:25                                      ; preds = %24, %._crit_edge
  ret %struct.mesh* %2
}

; Function Attrs: nounwind uwtable
define void @mesh_free(%struct.mesh* %meshPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  call void @queue_free(%struct.queue* %2)
  %3 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  call void @rbtree_free(%struct.rbtree* %4)
  %5 = bitcast %struct.mesh* %meshPtr to i8*
  call void @free(i8* %5) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @mesh_insert(%struct.mesh* %meshPtr, %struct.element* %elementPtr, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %searchPair = alloca %struct.pair, align 8
  %searchPair3 = alloca %struct.pair, align 8
  %searchPair5 = alloca %struct.pair, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = icmp ne %struct.element* %2, null
  br i1 %3, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  store %struct.element* %elementPtr, %struct.element** %5, align 8
  br label %6

; <label>:6                                       ; preds = %4, %._crit_edge
  %7 = call i64 @element_getNumEdge(%struct.element* %elementPtr)
  %8 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair, i32 0, i32 0
  %9 = bitcast %struct.pair* %searchPair to i8*
  %10 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair3, i32 0, i32 0
  %11 = bitcast %struct.pair* %searchPair3 to i8*
  %12 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair5, i32 0, i32 0
  %13 = bitcast %struct.pair* %searchPair5 to i8*
  %14 = bitcast %struct.pair* %searchPair5 to i8*
  %15 = bitcast %struct.element* %elementPtr to i8*
  br label %16

; <label>:16                                      ; preds = %85, %6
  %i.0 = phi i64 [ 0, %6 ], [ %86, %85 ]
  %17 = icmp slt i64 %i.0, %7
  br i1 %17, label %18, label %87

; <label>:18                                      ; preds = %16
  %19 = call %struct.pair* @element_getEdge(%struct.element* %elementPtr, i64 %i.0)
  %20 = bitcast %struct.pair* %19 to i8*
  store i8* %20, i8** %8, align 8
  %21 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %9)
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %._crit_edge1

._crit_edge1:                                     ; preds = %18
  br label %24

; <label>:23                                      ; preds = %18
  br label %24

; <label>:24                                      ; preds = %23, %._crit_edge1
  %success.0 = phi i64 [ 1, %23 ], [ 0, %._crit_edge1 ]
  %25 = icmp ne i64 %success.0, 0
  br i1 %25, label %42, label %26

; <label>:26                                      ; preds = %24
  %27 = bitcast %struct.pair* %19 to i8*
  %28 = call %struct.pair* @pair_alloc(i8* %27, i8* %15)
  %29 = icmp ne %struct.pair* %28, null
  br i1 %29, label %30, label %._crit_edge2

._crit_edge2:                                     ; preds = %26
  br label %36

; <label>:30                                      ; preds = %26
  %31 = bitcast %struct.pair* %28 to i8*
  %32 = call i64 @jsw_avlinsert(%struct.jsw_avltree* %edgeMapPtr, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %._crit_edge3

._crit_edge3:                                     ; preds = %30
  br label %35

; <label>:34                                      ; preds = %30
  br label %35

; <label>:35                                      ; preds = %34, %._crit_edge3
  %success1.0 = phi i64 [ 1, %34 ], [ 0, %._crit_edge3 ]
  br label %36

; <label>:36                                      ; preds = %35, %._crit_edge2
  %success1.1 = phi i64 [ %success1.0, %35 ], [ 0, %._crit_edge2 ]
  %37 = icmp ne i64 %success1.1, 0
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %36
  br label %41

; <label>:39                                      ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 161, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:41                                      ; preds = %38
  br label %84

; <label>:42                                      ; preds = %24
  %43 = bitcast %struct.pair* %19 to i8*
  store i8* %43, i8** %10, align 8
  %44 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %11)
  %45 = bitcast i8* %44 to %struct.pair*
  %46 = icmp ne %struct.pair* %45, null
  br i1 %46, label %47, label %._crit_edge4

._crit_edge4:                                     ; preds = %42
  br label %50

; <label>:47                                      ; preds = %42
  %48 = getelementptr inbounds %struct.pair, %struct.pair* %45, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  br label %50

; <label>:50                                      ; preds = %47, %._crit_edge4
  %dataPtr.0 = phi i8* [ %49, %47 ], [ null, %._crit_edge4 ]
  %51 = bitcast i8* %dataPtr.0 to %struct.element*
  %52 = icmp ne %struct.element* %51, null
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %50
  br label %56

; <label>:54                                      ; preds = %50
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 168, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:56                                      ; preds = %53
  call void @element_addNeighbor(%struct.element* %elementPtr, %struct.element* %51)
  call void @element_addNeighbor(%struct.element* %51, %struct.element* %elementPtr)
  %57 = bitcast %struct.pair* %19 to i8*
  store i8* %57, i8** %12, align 8
  %58 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %13)
  %59 = bitcast i8* %58 to %struct.pair*
  %60 = call i64 @jsw_avlerase(%struct.jsw_avltree* %edgeMapPtr, i8* %14)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %._crit_edge5

._crit_edge5:                                     ; preds = %56
  br label %63

; <label>:62                                      ; preds = %56
  call void @pair_free(%struct.pair* %59)
  br label %63

; <label>:63                                      ; preds = %62, %._crit_edge5
  %success4.0 = phi i64 [ 1, %62 ], [ 0, %._crit_edge5 ]
  %64 = icmp ne i64 %success4.0, 0
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %63
  br label %68

; <label>:66                                      ; preds = %63
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 172, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:68                                      ; preds = %65
  %69 = bitcast %struct.pair* %19 to i8*
  %70 = call %struct.pair* @pair_alloc(i8* %69, i8* null)
  %71 = icmp ne %struct.pair* %70, null
  br i1 %71, label %72, label %._crit_edge6

._crit_edge6:                                     ; preds = %68
  br label %78

; <label>:72                                      ; preds = %68
  %73 = bitcast %struct.pair* %70 to i8*
  %74 = call i64 @jsw_avlinsert(%struct.jsw_avltree* %edgeMapPtr, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %._crit_edge7

._crit_edge7:                                     ; preds = %72
  br label %77

; <label>:76                                      ; preds = %72
  br label %77

; <label>:77                                      ; preds = %76, %._crit_edge7
  %success7.0 = phi i64 [ 1, %76 ], [ 0, %._crit_edge7 ]
  br label %78

; <label>:78                                      ; preds = %77, %._crit_edge6
  %success7.1 = phi i64 [ %success7.0, %77 ], [ 0, %._crit_edge6 ]
  %79 = icmp ne i64 %success7.1, 0
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %78
  br label %83

; <label>:81                                      ; preds = %78
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 176, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:83                                      ; preds = %80
  br label %84

; <label>:84                                      ; preds = %83, %41
  br label %85

; <label>:85                                      ; preds = %84
  %86 = add nsw i64 %i.0, 1
  br label %16

; <label>:87                                      ; preds = %16
  %88 = call %struct.pair* @element_getEncroachedPtr(%struct.element* %elementPtr)
  %89 = icmp ne %struct.pair* %88, null
  br i1 %89, label %90, label %._crit_edge8

._crit_edge8:                                     ; preds = %87
  br label %98

; <label>:90                                      ; preds = %87
  %91 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 3
  %92 = load %struct.rbtree*, %struct.rbtree** %91, align 8
  %93 = bitcast %struct.pair* %88 to i8*
  %94 = call i64 @rbtree_contains(%struct.rbtree* %92, i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %._crit_edge9, label %96

._crit_edge9:                                     ; preds = %90
  br label %97

; <label>:96                                      ; preds = %90
  call void @element_clearEncroached(%struct.element* %elementPtr)
  br label %97

; <label>:97                                      ; preds = %96, %._crit_edge9
  br label %98

; <label>:98                                      ; preds = %97, %._crit_edge8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMmesh_insert(%struct.mesh* %meshPtr, %struct.element* %elementPtr, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %structArg = alloca { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }
  %searchPair = alloca %struct.pair, align 8
  %searchPair3 = alloca %struct.pair, align 8
  %searchPair5 = alloca %struct.pair, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = icmp ne %struct.element* %2, null
  br i1 %3, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %0
  br label %8

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  store %struct.element* %elementPtr, %struct.element** %5, align 8
  %6 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  %7 = load %struct.element*, %struct.element** %6, align 8
  br label %8

; <label>:8                                       ; preds = %4, %._crit_edge
  %9 = call i64 @element_getNumEdge(%struct.element* %elementPtr)
  %10 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair, i32 0, i32 0
  %11 = bitcast %struct.pair* %searchPair to i8*
  %12 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair3, i32 0, i32 0
  %13 = bitcast %struct.pair* %searchPair3 to i8*
  %14 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair5, i32 0, i32 0
  %15 = bitcast %struct.pair* %searchPair5 to i8*
  %16 = bitcast %struct.pair* %searchPair5 to i8*
  %17 = bitcast %struct.element* %elementPtr to i8*
  br label %codeRepl

codeRepl:                                         ; preds = %8
  %gep_ = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %structArg, i32 0, i32 0
  store i64 %9, i64* %gep_
  %gep_elementPtr = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %structArg, i32 0, i32 1
  store %struct.element* %elementPtr, %struct.element** %gep_elementPtr
  %gep_1 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %structArg, i32 0, i32 2
  store i8** %10, i8*** %gep_1
  %gep_edgeMapPtr = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %structArg, i32 0, i32 3
  store %struct.jsw_avltree* %edgeMapPtr, %struct.jsw_avltree** %gep_edgeMapPtr
  %gep_2 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %structArg, i32 0, i32 4
  store i8* %11, i8** %gep_2
  %gep_3 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %structArg, i32 0, i32 5
  store i8* %17, i8** %gep_3
  %gep_4 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %structArg, i32 0, i32 6
  store i8** %12, i8*** %gep_4
  %gep_5 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %structArg, i32 0, i32 7
  store i8* %13, i8** %gep_5
  %gep_6 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %structArg, i32 0, i32 8
  store i8** %14, i8*** %gep_6
  %gep_7 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %structArg, i32 0, i32 9
  store i8* %15, i8** %gep_7
  %gep_8 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %structArg, i32 0, i32 10
  store i8* %16, i8** %gep_8
  %targetBlock = call i16 @TMmesh_insert___kernel__TMmesh_insert0({ i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %structArg)
  switch i16 %targetBlock, label %24 [
    i16 0, label %26
    i16 1, label %18
    i16 2, label %20
    i16 3, label %22
  ]

; <label>:18                                      ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 224, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:20                                      ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 231, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:22                                      ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 235, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:24                                      ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:26                                      ; preds = %codeRepl
  %27 = call %struct.pair* @element_getEncroachedPtr(%struct.element* %elementPtr)
  %28 = icmp ne %struct.pair* %27, null
  br i1 %28, label %29, label %._crit_edge8

._crit_edge8:                                     ; preds = %26
  br label %37

; <label>:29                                      ; preds = %26
  %30 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 3
  %31 = load %struct.rbtree*, %struct.rbtree** %30, align 8
  %32 = bitcast %struct.pair* %27 to i8*
  %33 = call i64 @TMrbtree_contains(%struct.rbtree* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %._crit_edge9, label %35

._crit_edge9:                                     ; preds = %29
  br label %36

; <label>:35                                      ; preds = %29
  call void @element_clearEncroached(%struct.element* %elementPtr)
  br label %36

; <label>:36                                      ; preds = %35, %._crit_edge9
  br label %37

; <label>:37                                      ; preds = %36, %._crit_edge8
  ret void
}

; Function Attrs: alwaysinline nounwind
define internal i16 @TMmesh_insert___kernel__TMmesh_insert0({ i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }*) #5 {
newFuncRoot:
  %gep_ = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %0, i32 0, i32 0
  %loadgep_ = load i64, i64* %gep_
  %gep_elementPtr = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %0, i32 0, i32 1
  %loadgep_elementPtr = load %struct.element*, %struct.element** %gep_elementPtr
  %gep_1 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %0, i32 0, i32 2
  %loadgep_2 = load i8**, i8*** %gep_1
  %gep_edgeMapPtr = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %0, i32 0, i32 3
  %loadgep_edgeMapPtr = load %struct.jsw_avltree*, %struct.jsw_avltree** %gep_edgeMapPtr
  %gep_3 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %0, i32 0, i32 4
  %loadgep_4 = load i8*, i8** %gep_3
  %gep_5 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %0, i32 0, i32 5
  %loadgep_6 = load i8*, i8** %gep_5
  %gep_7 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %0, i32 0, i32 6
  %loadgep_8 = load i8**, i8*** %gep_7
  %gep_9 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %0, i32 0, i32 7
  %loadgep_10 = load i8*, i8** %gep_9
  %gep_11 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %0, i32 0, i32 8
  %loadgep_12 = load i8**, i8*** %gep_11
  %gep_13 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %0, i32 0, i32 9
  %loadgep_14 = load i8*, i8** %gep_13
  %gep_15 = getelementptr { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }, { i64, %struct.element*, i8**, %struct.jsw_avltree*, i8*, i8*, i8**, i8*, i8**, i8*, i8* }* %0, i32 0, i32 10
  %loadgep_16 = load i8*, i8** %gep_15
  br label %__kernel__TMmesh_insert0

.exitStub:                                        ; preds = %__kernel__TMmesh_insert0
  ret i16 0

.exitStub17:                                      ; preds = %20
  ret i16 1

.exitStub18:                                      ; preds = %32
  ret i16 2

.exitStub19:                                      ; preds = %43
  ret i16 3

.exitStub20:                                      ; preds = %56
  ret i16 4

__kernel__TMmesh_insert0:                         ; preds = %61, %newFuncRoot
  %i.0 = phi i64 [ 0, %newFuncRoot ], [ %62, %61 ]
  %1 = icmp slt i64 %i.0, %loadgep_
  br i1 %1, label %2, label %.exitStub

; <label>:2                                       ; preds = %__kernel__TMmesh_insert0
  %3 = call %struct.pair* @element_getEdge(%struct.element* %loadgep_elementPtr, i64 %i.0)
  %4 = bitcast %struct.pair* %3 to i8*
  store i8* %4, i8** %loadgep_2, align 8
  %5 = call i8* @jsw_avlfind(%struct.jsw_avltree* %loadgep_edgeMapPtr, i8* %loadgep_4)
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %._crit_edge1

._crit_edge1:                                     ; preds = %2
  br label %8

; <label>:7                                       ; preds = %2
  br label %8

; <label>:8                                       ; preds = %7, %._crit_edge1
  %success.0 = phi i64 [ 1, %7 ], [ 0, %._crit_edge1 ]
  %9 = icmp ne i64 %success.0, 0
  br i1 %9, label %24, label %10

; <label>:10                                      ; preds = %8
  %11 = bitcast %struct.pair* %3 to i8*
  %12 = call %struct.pair* @Ppair_alloc(i8* %11, i8* %loadgep_6)
  %13 = icmp ne %struct.pair* %12, null
  br i1 %13, label %14, label %._crit_edge2

._crit_edge2:                                     ; preds = %10
  br label %20

; <label>:14                                      ; preds = %10
  %15 = bitcast %struct.pair* %12 to i8*
  %16 = call i64 @Pjsw_avlinsert(%struct.jsw_avltree* %loadgep_edgeMapPtr, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %._crit_edge3

._crit_edge3:                                     ; preds = %14
  br label %19

; <label>:18                                      ; preds = %14
  br label %19

; <label>:19                                      ; preds = %18, %._crit_edge3
  %success1.0 = phi i64 [ 1, %18 ], [ 0, %._crit_edge3 ]
  br label %20

; <label>:20                                      ; preds = %19, %._crit_edge2
  %success1.1 = phi i64 [ %success1.0, %19 ], [ 0, %._crit_edge2 ]
  %21 = icmp ne i64 %success1.1, 0
  br i1 %21, label %22, label %.exitStub17

; <label>:22                                      ; preds = %20
  br label %23

; <label>:23                                      ; preds = %22
  br label %60

; <label>:24                                      ; preds = %8
  %25 = bitcast %struct.pair* %3 to i8*
  store i8* %25, i8** %loadgep_8, align 8
  %26 = call i8* @jsw_avlfind(%struct.jsw_avltree* %loadgep_edgeMapPtr, i8* %loadgep_10)
  %27 = bitcast i8* %26 to %struct.pair*
  %28 = icmp ne %struct.pair* %27, null
  br i1 %28, label %29, label %._crit_edge4

._crit_edge4:                                     ; preds = %24
  br label %32

; <label>:29                                      ; preds = %24
  %30 = getelementptr inbounds %struct.pair, %struct.pair* %27, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  br label %32

; <label>:32                                      ; preds = %29, %._crit_edge4
  %dataPtr.0 = phi i8* [ %31, %29 ], [ null, %._crit_edge4 ]
  %33 = bitcast i8* %dataPtr.0 to %struct.element*
  %34 = icmp ne %struct.element* %33, null
  br i1 %34, label %35, label %.exitStub18

; <label>:35                                      ; preds = %32
  br label %36

; <label>:36                                      ; preds = %35
  call void @TMelement_addNeighbor(%struct.element* %loadgep_elementPtr, %struct.element* %33)
  call void @TMelement_addNeighbor(%struct.element* %33, %struct.element* %loadgep_elementPtr)
  %37 = bitcast %struct.pair* %3 to i8*
  store i8* %37, i8** %loadgep_12, align 8
  %38 = call i8* @jsw_avlfind(%struct.jsw_avltree* %loadgep_edgeMapPtr, i8* %loadgep_14)
  %39 = bitcast i8* %38 to %struct.pair*
  %40 = call i64 @Pjsw_avlerase(%struct.jsw_avltree* %loadgep_edgeMapPtr, i8* %loadgep_16)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %._crit_edge5

._crit_edge5:                                     ; preds = %36
  br label %43

; <label>:42                                      ; preds = %36
  call void @Ppair_free(%struct.pair* %39)
  br label %43

; <label>:43                                      ; preds = %42, %._crit_edge5
  %success4.0 = phi i64 [ 1, %42 ], [ 0, %._crit_edge5 ]
  %44 = icmp ne i64 %success4.0, 0
  br i1 %44, label %45, label %.exitStub19

; <label>:45                                      ; preds = %43
  br label %46

; <label>:46                                      ; preds = %45
  %47 = bitcast %struct.pair* %3 to i8*
  %48 = call %struct.pair* @Ppair_alloc(i8* %47, i8* null)
  %49 = icmp ne %struct.pair* %48, null
  br i1 %49, label %50, label %._crit_edge6

._crit_edge6:                                     ; preds = %46
  br label %56

; <label>:50                                      ; preds = %46
  %51 = bitcast %struct.pair* %48 to i8*
  %52 = call i64 @Pjsw_avlinsert(%struct.jsw_avltree* %loadgep_edgeMapPtr, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %._crit_edge7

._crit_edge7:                                     ; preds = %50
  br label %55

; <label>:54                                      ; preds = %50
  br label %55

; <label>:55                                      ; preds = %54, %._crit_edge7
  %success7.0 = phi i64 [ 1, %54 ], [ 0, %._crit_edge7 ]
  br label %56

; <label>:56                                      ; preds = %55, %._crit_edge6
  %success7.1 = phi i64 [ %success7.0, %55 ], [ 0, %._crit_edge6 ]
  %57 = icmp ne i64 %success7.1, 0
  br i1 %57, label %58, label %.exitStub20

; <label>:58                                      ; preds = %56
  br label %59

; <label>:59                                      ; preds = %58
  br label %60

; <label>:60                                      ; preds = %59, %23
  br label %61

; <label>:61                                      ; preds = %60
  %62 = add nsw i64 %i.0, 1
  br label %__kernel__TMmesh_insert0, !llvm.loop !3
}

; Function Attrs: nounwind uwtable
define void @TMmesh_remove(%struct.mesh* %meshPtr, %struct.element* %elementPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @TMelement_isGarbage(%struct.element* %elementPtr)
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %4, label %3

; <label>:3                                       ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 264, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.TMmesh_remove, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %6

; <label>:6                                       ; preds = %5, %3
  %7 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  %8 = load %struct.element*, %struct.element** %7, align 8
  %9 = icmp eq %struct.element* %8, %elementPtr
  br i1 %9, label %10, label %._crit_edge

._crit_edge:                                      ; preds = %6
  br label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  store %struct.element* null, %struct.element** %11, align 8
  %12 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  %13 = load %struct.element*, %struct.element** %12, align 8
  br label %14

; <label>:14                                      ; preds = %10, %._crit_edge
  %15 = call %struct.list* @element_getNeighborListPtr(%struct.element* %elementPtr)
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %15)
  %16 = bitcast %struct.element* %elementPtr to i8*
  br label %17

; <label>:17                                      ; preds = %29, %14
  %18 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %15) #20
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

; <label>:20                                      ; preds = %17
  %21 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %15)
  %22 = bitcast i8* %21 to %struct.element*
  %23 = call %struct.list* @element_getNeighborListPtr(%struct.element* %22)
  %24 = call i64 @TMlist_remove(%struct.list* %23, i8* %16)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %20
  br label %29

; <label>:27                                      ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 285, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.TMmesh_remove, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:29                                      ; preds = %26
  br label %17

; <label>:30                                      ; preds = %17
  call void @TMelement_setIsGarbage(%struct.element* %elementPtr, i64 1)
  %31 = call i64 @TMelement_isReferenced(%struct.element* %elementPtr)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %._crit_edge1, label %33

._crit_edge1:                                     ; preds = %30
  br label %34

; <label>:33                                      ; preds = %30
  br label %34

; <label>:34                                      ; preds = %33, %._crit_edge1
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @TMmesh_insertBoundary(%struct.mesh* %meshPtr, %struct.pair* %boundaryPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = bitcast %struct.pair* %boundaryPtr to i8*
  %4 = call i64 @TMrbtree_insert(%struct.rbtree* %2, i8* %3, i8* null)
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @TMmesh_removeBoundary(%struct.mesh* %meshPtr, %struct.pair* %boundaryPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = bitcast %struct.pair* %boundaryPtr to i8*
  %4 = call i64 @TMrbtree_delete(%struct.rbtree* %2, i8* %3)
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @mesh_read(%struct.mesh* %meshPtr, i8* %fileNamePrefix) #0 {
  %fileName = alloca [256 x i8], align 16
  %inputBuff = alloca [256 x i8], align 16
  %numEntry = alloca i64, align 8
  %numDimension = alloca i64, align 8
  %id = alloca i64, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %id1 = alloca i64, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %insertCoordinates = alloca [2 x %struct.coordinate], align 16
  %id2 = alloca i64, align 8
  %a3 = alloca i64, align 8
  %b4 = alloca i64, align 8
  %c = alloca i64, align 8
  %insertCoordinates5 = alloca [3 x %struct.coordinate], align 16
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call %struct.jsw_avltree* @jsw_avlnew(i64 (i8*, i8*)* bitcast (i64 (%struct.pair*, %struct.pair*)* @element_mapCompareEdge to i64 (i8*, i8*)*))
  %2 = icmp ne %struct.jsw_avltree* %1, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 370, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %6

; <label>:6                                       ; preds = %5, %3
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %8 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %7, i64 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.21, i32 0, i32 0), i8* %fileNamePrefix) #8
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %10 = call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.22, i32 0, i32 0))
  %11 = icmp ne %struct._IO_FILE* %10, null
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %6
  br label %15

; <label>:13                                      ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 377, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %17 = trunc i64 256 to i32
  %18 = call i8* @fgets(i8* %16, i32 %17, %struct._IO_FILE* %10)
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11.24, i32 0, i32 0), i64* %numEntry, i64* %numDimension) #8
  %21 = load i64, i64* %numDimension, align 8
  %22 = icmp eq i64 %21, 2
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %15
  br label %26

; <label>:24                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 380, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %26

; <label>:26                                      ; preds = %25, %23
  %27 = load i64, i64* %numEntry, align 8
  %28 = add nsw i64 %27, 1
  %29 = mul i64 %28, 16
  %30 = call noalias i8* @malloc(i64 %29) #8
  %31 = bitcast i8* %30 to %struct.coordinate*
  %32 = icmp ne %struct.coordinate* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %26
  br label %36

; <label>:34                                      ; preds = %26
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 383, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %38 = trunc i64 256 to i32
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i64 0, i64 0
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  br label %41

; <label>:41                                      ; preds = %63, %36
  %i.0 = phi i64 [ 0, %36 ], [ %64, %63 ]
  %42 = load i64, i64* %numEntry, align 8
  %43 = icmp slt i64 %i.0, %42
  br i1 %43, label %44, label %.loopexit2

; <label>:44                                      ; preds = %41
  %45 = call i8* @fgets(i8* %37, i32 %38, %struct._IO_FILE* %10)
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

; <label>:47                                      ; preds = %44
  br label %65

; <label>:48                                      ; preds = %44
  %49 = load i8, i8* %39, align 16
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 35
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %48
  br label %63

; <label>:53                                      ; preds = %48
  %54 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i64* %id, double* %x, double* %y) #8
  %55 = load double, double* %x, align 8
  %56 = load i64, i64* %id, align 8
  %57 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i64 %56
  %58 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %57, i32 0, i32 0
  store double %55, double* %58, align 8
  %59 = load double, double* %y, align 8
  %60 = load i64, i64* %id, align 8
  %61 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i64 %60
  %62 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %61, i32 0, i32 1
  store double %59, double* %62, align 8
  br label %63

; <label>:63                                      ; preds = %53, %52
  %64 = add nsw i64 %i.0, 1
  br label %41

.loopexit2:                                       ; preds = %41
  br label %65

; <label>:65                                      ; preds = %.loopexit2, %47
  %66 = load i64, i64* %numEntry, align 8
  %67 = icmp eq i64 %i.0, %66
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %65
  br label %71

; <label>:69                                      ; preds = %65
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 398, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %71

; <label>:71                                      ; preds = %70, %68
  %72 = call i32 @fclose(%struct._IO_FILE* %10)
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %74 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %73, i64 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* %fileNamePrefix) #8
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %76 = call %struct._IO_FILE* @fopen(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.22, i32 0, i32 0))
  %77 = icmp ne %struct._IO_FILE* %76, null
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %71
  br label %81

; <label>:79                                      ; preds = %71
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 406, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %81

; <label>:81                                      ; preds = %80, %78
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %83 = trunc i64 256 to i32
  %84 = call i8* @fgets(i8* %82, i32 %83, %struct._IO_FILE* %76)
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %86 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11.24, i32 0, i32 0), i64* %numEntry, i64* %numDimension) #8
  %87 = load i64, i64* %numEntry, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

; <label>:89                                      ; preds = %81
  br label %92

; <label>:90                                      ; preds = %81
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 409, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %92

; <label>:92                                      ; preds = %91, %89
  %93 = load i64, i64* %numDimension, align 8
  %94 = icmp eq i64 %93, 2
  br i1 %94, label %95, label %96

; <label>:95                                      ; preds = %92
  br label %98

; <label>:96                                      ; preds = %92
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 410, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %98

; <label>:98                                      ; preds = %97, %95
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %100 = trunc i64 256 to i32
  %101 = call i8* @fgets(i8* %99, i32 %100, %struct._IO_FILE* %76)
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %103 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64* %numEntry) #8
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %105 = trunc i64 256 to i32
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i64 0, i64 0
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %108 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %insertCoordinates, i64 0, i64 0
  %109 = bitcast %struct.coordinate* %108 to i8*
  %110 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %insertCoordinates, i64 0, i64 1
  %111 = bitcast %struct.coordinate* %110 to i8*
  %112 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %insertCoordinates, i32 0, i32 0
  br label %113

; <label>:113                                     ; preds = %151, %98
  %i.1 = phi i64 [ 0, %98 ], [ %152, %151 ]
  %114 = load i64, i64* %numEntry, align 8
  %115 = icmp slt i64 %i.1, %114
  br i1 %115, label %116, label %.loopexit1

; <label>:116                                     ; preds = %113
  %117 = call i8* @fgets(i8* %104, i32 %105, %struct._IO_FILE* %76)
  %118 = icmp ne i8* %117, null
  br i1 %118, label %120, label %119

; <label>:119                                     ; preds = %116
  br label %153

; <label>:120                                     ; preds = %116
  %121 = load i8, i8* %106, align 16
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 35
  br i1 %123, label %124, label %125

; <label>:124                                     ; preds = %120
  br label %151

; <label>:125                                     ; preds = %120
  %126 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i64* %id1, i64* %a, i64* %b) #8
  %127 = load i64, i64* %a, align 8
  %128 = icmp sge i64 %127, 0
  br i1 %128, label %129, label %._crit_edge

._crit_edge:                                      ; preds = %125
  br label %133

; <label>:129                                     ; preds = %125
  %130 = load i64, i64* %a, align 8
  %131 = icmp slt i64 %130, %28
  br i1 %131, label %132, label %._crit_edge3

._crit_edge3:                                     ; preds = %129
  br label %133

; <label>:132                                     ; preds = %129
  br label %135

; <label>:133                                     ; preds = %._crit_edge3, %._crit_edge
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 425, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:135                                     ; preds = %132
  %136 = load i64, i64* %b, align 8
  %137 = icmp sge i64 %136, 0
  br i1 %137, label %138, label %._crit_edge4

._crit_edge4:                                     ; preds = %135
  br label %142

; <label>:138                                     ; preds = %135
  %139 = load i64, i64* %b, align 8
  %140 = icmp slt i64 %139, %28
  br i1 %140, label %141, label %._crit_edge5

._crit_edge5:                                     ; preds = %138
  br label %142

; <label>:141                                     ; preds = %138
  br label %144

; <label>:142                                     ; preds = %._crit_edge5, %._crit_edge4
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 426, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:144                                     ; preds = %141
  %145 = load i64, i64* %a, align 8
  %146 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i64 %145
  %147 = bitcast %struct.coordinate* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %147, i64 16, i32 8, i1 false)
  %148 = load i64, i64* %b, align 8
  %149 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i64 %148
  %150 = bitcast %struct.coordinate* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %150, i64 16, i32 8, i1 false)
  call void @createElement(%struct.mesh* %meshPtr, %struct.coordinate* %112, i64 2, %struct.jsw_avltree* %1)
  br label %151

; <label>:151                                     ; preds = %144, %124
  %152 = add nsw i64 %i.1, 1
  br label %113

.loopexit1:                                       ; preds = %113
  br label %153

; <label>:153                                     ; preds = %.loopexit1, %119
  %154 = load i64, i64* %numEntry, align 8
  %155 = icmp eq i64 %i.1, %154
  br i1 %155, label %156, label %157

; <label>:156                                     ; preds = %153
  br label %159

; <label>:157                                     ; preds = %153
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 431, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %159

; <label>:159                                     ; preds = %158, %156
  %160 = load i64, i64* %numEntry, align 8
  %161 = add nsw i64 0, %160
  %162 = call i32 @fclose(%struct._IO_FILE* %76)
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %164 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %163, i64 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* %fileNamePrefix) #8
  %165 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %166 = call %struct._IO_FILE* @fopen(i8* %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.22, i32 0, i32 0))
  %167 = icmp ne %struct._IO_FILE* %166, null
  br i1 %167, label %168, label %169

; <label>:168                                     ; preds = %159
  br label %171

; <label>:169                                     ; preds = %159
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 440, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %171

; <label>:171                                     ; preds = %170, %168
  %172 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %173 = trunc i64 256 to i32
  %174 = call i8* @fgets(i8* %172, i32 %173, %struct._IO_FILE* %166)
  %175 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %176 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11.24, i32 0, i32 0), i64* %numEntry, i64* %numDimension) #8
  %177 = load i64, i64* %numDimension, align 8
  %178 = icmp eq i64 %177, 3
  br i1 %178, label %179, label %180

; <label>:179                                     ; preds = %171
  br label %182

; <label>:180                                     ; preds = %171
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 443, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %182

; <label>:182                                     ; preds = %181, %179
  %183 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %184 = trunc i64 256 to i32
  %185 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i64 0, i64 0
  %186 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %187 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i64 0, i64 0
  %188 = bitcast %struct.coordinate* %187 to i8*
  %189 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i64 0, i64 1
  %190 = bitcast %struct.coordinate* %189 to i8*
  %191 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i64 0, i64 2
  %192 = bitcast %struct.coordinate* %191 to i8*
  %193 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i32 0, i32 0
  br label %194

; <label>:194                                     ; preds = %244, %182
  %i.2 = phi i64 [ 0, %182 ], [ %245, %244 ]
  %195 = load i64, i64* %numEntry, align 8
  %196 = icmp slt i64 %i.2, %195
  br i1 %196, label %197, label %.loopexit

; <label>:197                                     ; preds = %194
  %198 = call i8* @fgets(i8* %183, i32 %184, %struct._IO_FILE* %166)
  %199 = icmp ne i8* %198, null
  br i1 %199, label %201, label %200

; <label>:200                                     ; preds = %197
  br label %246

; <label>:201                                     ; preds = %197
  %202 = load i8, i8* %185, align 16
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 35
  br i1 %204, label %205, label %206

; <label>:205                                     ; preds = %201
  br label %244

; <label>:206                                     ; preds = %201
  %207 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %186, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i64* %id2, i64* %a3, i64* %b4, i64* %c) #8
  %208 = load i64, i64* %a3, align 8
  %209 = icmp sge i64 %208, 0
  br i1 %209, label %210, label %._crit_edge6

._crit_edge6:                                     ; preds = %206
  br label %214

; <label>:210                                     ; preds = %206
  %211 = load i64, i64* %a3, align 8
  %212 = icmp slt i64 %211, %28
  br i1 %212, label %213, label %._crit_edge7

._crit_edge7:                                     ; preds = %210
  br label %214

; <label>:213                                     ; preds = %210
  br label %216

; <label>:214                                     ; preds = %._crit_edge7, %._crit_edge6
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 457, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:216                                     ; preds = %213
  %217 = load i64, i64* %b4, align 8
  %218 = icmp sge i64 %217, 0
  br i1 %218, label %219, label %._crit_edge8

._crit_edge8:                                     ; preds = %216
  br label %223

; <label>:219                                     ; preds = %216
  %220 = load i64, i64* %b4, align 8
  %221 = icmp slt i64 %220, %28
  br i1 %221, label %222, label %._crit_edge9

._crit_edge9:                                     ; preds = %219
  br label %223

; <label>:222                                     ; preds = %219
  br label %225

; <label>:223                                     ; preds = %._crit_edge9, %._crit_edge8
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:225                                     ; preds = %222
  %226 = load i64, i64* %c, align 8
  %227 = icmp sge i64 %226, 0
  br i1 %227, label %228, label %._crit_edge10

._crit_edge10:                                    ; preds = %225
  br label %232

; <label>:228                                     ; preds = %225
  %229 = load i64, i64* %c, align 8
  %230 = icmp slt i64 %229, %28
  br i1 %230, label %231, label %._crit_edge11

._crit_edge11:                                    ; preds = %228
  br label %232

; <label>:231                                     ; preds = %228
  br label %234

; <label>:232                                     ; preds = %._crit_edge11, %._crit_edge10
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 459, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:234                                     ; preds = %231
  %235 = load i64, i64* %a3, align 8
  %236 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i64 %235
  %237 = bitcast %struct.coordinate* %236 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %188, i8* %237, i64 16, i32 8, i1 false)
  %238 = load i64, i64* %b4, align 8
  %239 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i64 %238
  %240 = bitcast %struct.coordinate* %239 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %240, i64 16, i32 8, i1 false)
  %241 = load i64, i64* %c, align 8
  %242 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i64 %241
  %243 = bitcast %struct.coordinate* %242 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %192, i8* %243, i64 16, i32 8, i1 false)
  call void @createElement(%struct.mesh* %meshPtr, %struct.coordinate* %193, i64 3, %struct.jsw_avltree* %1)
  br label %244

; <label>:244                                     ; preds = %234, %205
  %245 = add nsw i64 %i.2, 1
  br label %194

.loopexit:                                        ; preds = %194
  br label %246

; <label>:246                                     ; preds = %.loopexit, %200
  %247 = load i64, i64* %numEntry, align 8
  %248 = icmp eq i64 %i.2, %247
  br i1 %248, label %249, label %250

; <label>:249                                     ; preds = %246
  br label %252

; <label>:250                                     ; preds = %246
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 465, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %252

; <label>:252                                     ; preds = %251, %249
  %253 = load i64, i64* %numEntry, align 8
  %254 = add nsw i64 %161, %253
  %255 = call i32 @fclose(%struct._IO_FILE* %166)
  %256 = bitcast %struct.coordinate* %31 to i8*
  call void @free(i8* %256) #8
  call void @jsw_avldelete(%struct.jsw_avltree* %1)
  ret i64 %254
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #7

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #7

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #7

; Function Attrs: nounwind uwtable
define internal void @createElement(%struct.mesh* %meshPtr, %struct.coordinate* %coordinates, i64 %numCoordinate, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call %struct.element* @element_alloc(%struct.coordinate* %coordinates, i64 %numCoordinate)
  %2 = icmp ne %struct.element* %1, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 329, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.createElement, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %6

; <label>:6                                       ; preds = %5, %3
  %7 = icmp eq i64 %numCoordinate, 2
  br i1 %7, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %6
  br label %19

; <label>:8                                       ; preds = %6
  %9 = call %struct.pair* @element_getEdge(%struct.element* %1, i64 0)
  %10 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 3
  %11 = load %struct.rbtree*, %struct.rbtree** %10, align 8
  %12 = bitcast %struct.pair* %9 to i8*
  %13 = call i64 @rbtree_insert(%struct.rbtree* %11, i8* %12, i8* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %8
  br label %18

; <label>:16                                      ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 334, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.createElement, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  br label %19

; <label>:19                                      ; preds = %18, %._crit_edge
  call void @mesh_insert(%struct.mesh* %meshPtr, %struct.element* %1, %struct.jsw_avltree* %edgeMapPtr)
  %20 = call i64 @element_isBad(%struct.element* %1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %._crit_edge1

._crit_edge1:                                     ; preds = %19
  br label %32

; <label>:22                                      ; preds = %19
  %23 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 1
  %24 = load %struct.queue*, %struct.queue** %23, align 8
  %25 = bitcast %struct.element* %1 to i8*
  %26 = call i64 @queue_push(%struct.queue* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %22
  br label %31

; <label>:29                                      ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 341, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.createElement, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %31

; <label>:31                                      ; preds = %30, %28
  br label %32

; <label>:32                                      ; preds = %31, %._crit_edge1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.element* @mesh_getBad(%struct.mesh* %meshPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = call i8* @queue_pop(%struct.queue* %2)
  %4 = bitcast i8* %3 to %struct.element*
  ret %struct.element* %4
}

; Function Attrs: nounwind uwtable
define void @mesh_shuffleBad(%struct.mesh* %meshPtr, %struct.random* %randomPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  call void @queue_shuffle(%struct.queue* %2, %struct.random* %randomPtr)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @mesh_check(%struct.mesh* %meshPtr, i64 %expectedNumElement) #0 {
  %it = alloca %struct.list_node*, align 8
  %searchPair = alloca %struct.pair, align 8
  %searchPair3 = alloca %struct.pair, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %3 = call i32 @fflush(%struct._IO_FILE* %2)
  %4 = call %struct.queue* @queue_alloc(i64 -1)
  %5 = icmp ne %struct.queue* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 516, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %8, %6
  %10 = call %struct.jsw_avltree* @jsw_avlnew(i64 (i8*, i8*)* bitcast (i64 (%struct.pair*, %struct.pair*)* @element_mapCompare to i64 (i8*, i8*)*))
  %11 = icmp ne %struct.jsw_avltree* %10, null
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %9
  br label %15

; <label>:13                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 518, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  %17 = load %struct.element*, %struct.element** %16, align 8
  %18 = icmp ne %struct.element* %17, null
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %15
  br label %22

; <label>:20                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 523, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  %24 = load %struct.element*, %struct.element** %23, align 8
  %25 = bitcast %struct.element* %24 to i8*
  %26 = call i64 @queue_push(%struct.queue* %4, i8* %25)
  %27 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair, i32 0, i32 0
  %28 = bitcast %struct.pair* %searchPair to i8*
  %29 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair3, i32 0, i32 0
  %30 = bitcast %struct.pair* %searchPair3 to i8*
  br label %31

; <label>:31                                      ; preds = %.backedge, %22
  %numElement.0 = phi i64 [ 0, %22 ], [ %numElement.1, %.backedge ]
  %numBadTriangle.0 = phi i64 [ 0, %22 ], [ %numBadTriangle.1, %.backedge ]
  %32 = call i64 @queue_isEmpty(%struct.queue* %4)
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %90

; <label>:35                                      ; preds = %31
  %36 = call i8* @queue_pop(%struct.queue* %4)
  %37 = bitcast i8* %36 to %struct.element*
  %38 = bitcast %struct.element* %37 to i8*
  store i8* %38, i8** %27, align 8
  %39 = call i8* @jsw_avlfind(%struct.jsw_avltree* %10, i8* %28)
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %._crit_edge

._crit_edge:                                      ; preds = %35
  br label %42

; <label>:41                                      ; preds = %35
  br label %42

; <label>:42                                      ; preds = %41, %._crit_edge
  %success.0 = phi i64 [ 1, %41 ], [ 0, %._crit_edge ]
  %43 = icmp ne i64 %success.0, 0
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %42
  br label %.backedge

.backedge:                                        ; preds = %88, %44
  %numElement.1 = phi i64 [ %numElement.0, %44 ], [ %89, %88 ]
  %numBadTriangle.1 = phi i64 [ %numBadTriangle.0, %44 ], [ %numBadTriangle.2, %88 ]
  br label %31

; <label>:45                                      ; preds = %42
  %46 = bitcast %struct.element* %37 to i8*
  %47 = call %struct.pair* @pair_alloc(i8* %46, i8* null)
  %48 = icmp ne %struct.pair* %47, null
  br i1 %48, label %49, label %._crit_edge1

._crit_edge1:                                     ; preds = %45
  br label %55

; <label>:49                                      ; preds = %45
  %50 = bitcast %struct.pair* %47 to i8*
  %51 = call i64 @jsw_avlinsert(%struct.jsw_avltree* %10, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %._crit_edge2

._crit_edge2:                                     ; preds = %49
  br label %54

; <label>:53                                      ; preds = %49
  br label %54

; <label>:54                                      ; preds = %53, %._crit_edge2
  %success1.0 = phi i64 [ 1, %53 ], [ 0, %._crit_edge2 ]
  br label %55

; <label>:55                                      ; preds = %54, %._crit_edge1
  %success1.1 = phi i64 [ %success1.0, %54 ], [ 0, %._crit_edge1 ]
  %56 = icmp ne i64 %success1.1, 0
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %55
  br label %60

; <label>:58                                      ; preds = %55
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 537, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:60                                      ; preds = %57
  %61 = call i64 @element_checkAngles(%struct.element* %37)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %._crit_edge3, label %63

._crit_edge3:                                     ; preds = %60
  br label %65

; <label>:63                                      ; preds = %60
  %64 = add nsw i64 %numBadTriangle.0, 1
  br label %65

; <label>:65                                      ; preds = %63, %._crit_edge3
  %numBadTriangle.2 = phi i64 [ %numBadTriangle.0, %._crit_edge3 ], [ %64, %63 ]
  %66 = call %struct.list* @element_getNeighborListPtr(%struct.element* %37)
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %66)
  br label %67

; <label>:67                                      ; preds = %87, %65
  %68 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %66) #20
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %88

; <label>:70                                      ; preds = %67
  %71 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %66)
  %72 = bitcast i8* %71 to %struct.element*
  %73 = bitcast %struct.element* %72 to i8*
  store i8* %73, i8** %29, align 8
  %74 = call i8* @jsw_avlfind(%struct.jsw_avltree* %10, i8* %30)
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %._crit_edge4

._crit_edge4:                                     ; preds = %70
  br label %77

; <label>:76                                      ; preds = %70
  br label %77

; <label>:77                                      ; preds = %76, %._crit_edge4
  %success2.0 = phi i64 [ 1, %76 ], [ 0, %._crit_edge4 ]
  %78 = icmp ne i64 %success2.0, 0
  br i1 %78, label %._crit_edge5, label %79

._crit_edge5:                                     ; preds = %77
  br label %87

; <label>:79                                      ; preds = %77
  %80 = bitcast %struct.element* %72 to i8*
  %81 = call i64 @queue_push(%struct.queue* %4, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %79
  br label %86

; <label>:84                                      ; preds = %79
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.14, i32 0, i32 0), i32 554, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:86                                      ; preds = %83
  br label %87

; <label>:87                                      ; preds = %86, %._crit_edge5
  br label %67

; <label>:88                                      ; preds = %67
  %89 = add nsw i64 %numElement.0, 1
  br label %.backedge

; <label>:90                                      ; preds = %31
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0), i64 %numElement.0)
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0), i64 %numBadTriangle.0)
  call void @queue_free(%struct.queue* %4)
  call void @jsw_avldelete(%struct.jsw_avltree* %10)
  %93 = icmp sgt i64 %numBadTriangle.0, 0
  br i1 %93, label %._crit_edge6, label %94

._crit_edge6:                                     ; preds = %90
  br label %98

; <label>:94                                      ; preds = %90
  %95 = icmp sgt i64 0, 0
  br i1 %95, label %._crit_edge7, label %96

._crit_edge7:                                     ; preds = %94
  br label %98

; <label>:96                                      ; preds = %94
  %97 = icmp ne i64 %numElement.0, %expectedNumElement
  br label %98

; <label>:98                                      ; preds = %96, %._crit_edge7, %._crit_edge6
  %.reg2mem8.0 = phi i1 [ true, %._crit_edge6 ], [ true, %._crit_edge7 ], [ %97, %96 ]
  %99 = select i1 %.reg2mem8.0, i32 0, i32 1
  %100 = sext i32 %99 to i64
  ret i64 %100
}

declare i32 @puts(i8*) #7

declare i32 @fflush(%struct._IO_FILE*) #7

; Function Attrs: nounwind uwtable
define %struct.region* @Pregion_alloc() #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 48) #8
  %2 = bitcast i8* %1 to %struct.region*
  %3 = icmp ne %struct.region* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %41

; <label>:4                                       ; preds = %0
  %5 = call %struct.queue* @Pqueue_alloc(i64 -1)
  %6 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 1
  store %struct.queue* %5, %struct.queue** %6, align 8
  %7 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 1
  %8 = load %struct.queue*, %struct.queue** %7, align 8
  %9 = icmp ne %struct.queue* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %4
  br label %13

; <label>:11                                      ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = call %struct.list* @Plist_alloc(i64 (i8*, i8*)* @element_listCompare)
  %15 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 2
  store %struct.list* %14, %struct.list** %15, align 8
  %16 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 2
  %17 = load %struct.list*, %struct.list** %16, align 8
  %18 = icmp ne %struct.list* %17, null
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %13
  br label %22

; <label>:20                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = call %struct.list* @Plist_alloc(i64 (i8*, i8*)* @element_listCompareEdge)
  %24 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 3
  store %struct.list* %23, %struct.list** %24, align 8
  %25 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 3
  %26 = load %struct.list*, %struct.list** %25, align 8
  %27 = icmp ne %struct.list* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %22
  br label %31

; <label>:29                                      ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %31

; <label>:31                                      ; preds = %30, %28
  %32 = call %struct.vector* @Pvector_alloc(i64 1)
  %33 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 4
  store %struct.vector* %32, %struct.vector** %33, align 8
  %34 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 4
  %35 = load %struct.vector*, %struct.vector** %34, align 8
  %36 = icmp ne %struct.vector* %35, null
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %31
  br label %40

; <label>:38                                      ; preds = %31
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:40                                      ; preds = %39, %37
  br label %41

; <label>:41                                      ; preds = %40, %._crit_edge
  ret %struct.region* %2
}

; Function Attrs: nounwind uwtable
define void @Pregion_free(%struct.region* %regionPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 4
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  call void @Pvector_free(%struct.vector* %2)
  %3 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 3
  %4 = load %struct.list*, %struct.list** %3, align 8
  call void @Plist_free(%struct.list* %4)
  %5 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 2
  %6 = load %struct.list*, %struct.list** %5, align 8
  call void @Plist_free(%struct.list* %6)
  %7 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 1
  %8 = load %struct.queue*, %struct.queue** %7, align 8
  call void @Pqueue_free(%struct.queue* %8)
  %9 = bitcast %struct.region* %regionPtr to i8*
  call void @free(i8* %9) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMaddToBadVector(%struct.vector* %badVectorPtr, %struct.element* %badElementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast %struct.element* %badElementPtr to i8*
  %2 = call i64 @Pvector_pushBack(%struct.vector* %badVectorPtr, i8* %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %7

; <label>:5                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 141, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.TMaddToBadVector, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %6, %4
  call void @TMelement_setIsReferenced(%struct.element* %badElementPtr, i64 1)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @TMretriangulate(%struct.element* %elementPtr, %struct.region* %regionPtr, %struct.mesh* %meshPtr, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %centerCoordinate = alloca %struct.coordinate, align 8
  %coordinates = alloca [2 x %struct.coordinate], align 16
  %coordinates1 = alloca [3 x %struct.coordinate], align 16
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 4
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 2
  %4 = load %struct.list*, %struct.list** %3, align 8
  %5 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 3
  %6 = load %struct.list*, %struct.list** %5, align 8
  %7 = icmp ne %struct.jsw_avltree* %edgeMapPtr, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %11

; <label>:9                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6.39, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 164, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  %12 = call { double, double } @element_getNewPoint(%struct.element* %elementPtr)
  %13 = bitcast %struct.coordinate* %centerCoordinate to { double, double }*
  %14 = getelementptr inbounds { double, double }, { double, double }* %13, i32 0, i32 0
  %15 = extractvalue { double, double } %12, 0
  store double %15, double* %14, align 8
  %16 = getelementptr inbounds { double, double }, { double, double }* %13, i32 0, i32 1
  %17 = extractvalue { double, double } %12, 1
  store double %17, double* %16, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %4)
  br label %18

; <label>:18                                      ; preds = %21, %11
  %19 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %4) #20
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %18
  %22 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %4)
  %23 = bitcast i8* %22 to %struct.element*
  call void @TMmesh_remove(%struct.mesh* %meshPtr, %struct.element* %23)
  br label %18

; <label>:24                                      ; preds = %18
  %25 = call i64 @list_getSize(%struct.list* %4)
  %26 = sub nsw i64 0, %25
  %27 = call i64 @element_getNumEdge(%struct.element* %elementPtr)
  %28 = icmp eq i64 %27, 1
  br i1 %28, label %29, label %._crit_edge

._crit_edge:                                      ; preds = %24
  br label %82

; <label>:29                                      ; preds = %24
  %30 = call %struct.pair* @element_getEdge(%struct.element* %elementPtr, i64 0)
  %31 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i64 0, i64 0
  %32 = bitcast %struct.coordinate* %31 to i8*
  %33 = bitcast %struct.coordinate* %centerCoordinate to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false)
  %34 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i64 0, i64 1
  %35 = getelementptr inbounds %struct.pair, %struct.pair* %30, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.coordinate*
  %38 = bitcast %struct.coordinate* %34 to i8*
  %39 = bitcast %struct.coordinate* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 16, i32 8, i1 false)
  %40 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i32 0, i32 0
  %41 = call %struct.element* @TMelement_alloc(%struct.coordinate* %40, i64 2)
  %42 = icmp ne %struct.element* %41, null
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %29
  br label %46

; <label>:44                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7.40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %46

; <label>:46                                      ; preds = %45, %43
  call void @TMmesh_insert(%struct.mesh* %meshPtr, %struct.element* %41, %struct.jsw_avltree* %edgeMapPtr)
  %47 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i64 0, i64 1
  %48 = getelementptr inbounds %struct.pair, %struct.pair* %30, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = bitcast i8* %49 to %struct.coordinate*
  %51 = bitcast %struct.coordinate* %47 to i8*
  %52 = bitcast %struct.coordinate* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 16, i32 8, i1 false)
  %53 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i32 0, i32 0
  %54 = call %struct.element* @TMelement_alloc(%struct.coordinate* %53, i64 2)
  %55 = icmp ne %struct.element* %54, null
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %46
  br label %59

; <label>:57                                      ; preds = %46
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8.41, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 199, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  call void @TMmesh_insert(%struct.mesh* %meshPtr, %struct.element* %54, %struct.jsw_avltree* %edgeMapPtr)
  %60 = call %struct.pair* @element_getEdge(%struct.element* %elementPtr, i64 0)
  %61 = call i64 @TMmesh_removeBoundary(%struct.mesh* %meshPtr, %struct.pair* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %59
  br label %66

; <label>:64                                      ; preds = %59
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 204, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %66

; <label>:66                                      ; preds = %65, %63
  %67 = call %struct.pair* @element_getEdge(%struct.element* %41, i64 0)
  %68 = call i64 @TMmesh_insertBoundary(%struct.mesh* %meshPtr, %struct.pair* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %66
  br label %73

; <label>:71                                      ; preds = %66
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 206, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %73

; <label>:73                                      ; preds = %72, %70
  %74 = call %struct.pair* @element_getEdge(%struct.element* %54, i64 0)
  %75 = call i64 @TMmesh_insertBoundary(%struct.mesh* %meshPtr, %struct.pair* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %73
  br label %80

; <label>:78                                      ; preds = %73
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 208, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %80

; <label>:80                                      ; preds = %79, %77
  %81 = add nsw i64 %26, 2
  br label %82

; <label>:82                                      ; preds = %80, %._crit_edge
  %numDelta.0 = phi i64 [ %81, %80 ], [ %26, %._crit_edge ]
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %6)
  %83 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i64 0, i64 0
  %84 = bitcast %struct.coordinate* %83 to i8*
  %85 = bitcast %struct.coordinate* %centerCoordinate to i8*
  %86 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i64 0, i64 1
  %87 = bitcast %struct.coordinate* %86 to i8*
  %88 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i64 0, i64 2
  %89 = bitcast %struct.coordinate* %88 to i8*
  %90 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i32 0, i32 0
  br label %91

; <label>:91                                      ; preds = %119, %82
  %92 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %6) #20
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %120

; <label>:94                                      ; preds = %91
  %95 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %6)
  %96 = bitcast i8* %95 to %struct.pair*
  %97 = icmp ne %struct.pair* %96, null
  br i1 %97, label %98, label %99

; <label>:98                                      ; preds = %94
  br label %101

; <label>:99                                      ; preds = %94
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9.42, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 223, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:101                                     ; preds = %98
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 16, i32 8, i1 false)
  %102 = getelementptr inbounds %struct.pair, %struct.pair* %96, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = bitcast i8* %103 to %struct.coordinate*
  %105 = bitcast %struct.coordinate* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %105, i64 16, i32 8, i1 false)
  %106 = getelementptr inbounds %struct.pair, %struct.pair* %96, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = bitcast i8* %107 to %struct.coordinate*
  %109 = bitcast %struct.coordinate* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %109, i64 16, i32 8, i1 false)
  %110 = call %struct.element* @TMelement_alloc(%struct.coordinate* %90, i64 3)
  %111 = icmp ne %struct.element* %110, null
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %101
  br label %115

; <label>:113                                     ; preds = %101
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 228, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:115                                     ; preds = %112
  call void @TMmesh_insert(%struct.mesh* %meshPtr, %struct.element* %110, %struct.jsw_avltree* %edgeMapPtr)
  %116 = call i64 @element_isBad(%struct.element* %110)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %._crit_edge1

._crit_edge1:                                     ; preds = %115
  br label %119

; <label>:118                                     ; preds = %115
  call void @TMaddToBadVector(%struct.vector* %2, %struct.element* %110)
  br label %119

; <label>:119                                     ; preds = %118, %._crit_edge1
  br label %91

; <label>:120                                     ; preds = %91
  %121 = call i64 @list_getSize(%struct.list* %6)
  %122 = add nsw i64 %numDelta.0, %121
  ret i64 %122
}

; Function Attrs: nounwind uwtable
define %struct.element* @TMgrowRegion(%struct.element* %centerElementPtr, %struct.region* %regionPtr, %struct.mesh* %meshPtr, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %centerCoordinate = alloca %struct.coordinate, align 8
  %it = alloca %struct.list_node*, align 8
  %searchPair = alloca %struct.pair, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @element_getNumEdge(%struct.element* %centerElementPtr)
  %2 = icmp eq i64 %1, 1
  br i1 %2, label %3, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %4

; <label>:3                                       ; preds = %0
  br label %4

; <label>:4                                       ; preds = %3, %._crit_edge
  %isBoundary.0 = phi i64 [ 1, %3 ], [ 0, %._crit_edge ]
  %5 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 2
  %6 = load %struct.list*, %struct.list** %5, align 8
  %7 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 3
  %8 = load %struct.list*, %struct.list** %7, align 8
  %9 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 1
  %10 = load %struct.queue*, %struct.queue** %9, align 8
  call void @Plist_clear(%struct.list* %6)
  call void @Plist_clear(%struct.list* %8)
  call void @queue_clear(%struct.queue* %10)
  %11 = call { double, double } @element_getNewPoint(%struct.element* %centerElementPtr)
  %12 = bitcast %struct.coordinate* %centerCoordinate to { double, double }*
  %13 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  %14 = extractvalue { double, double } %11, 0
  store double %14, double* %13, align 8
  %15 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  %16 = extractvalue { double, double } %11, 1
  store double %16, double* %15, align 8
  %17 = bitcast %struct.element* %centerElementPtr to i8*
  %18 = call i64 @Pqueue_push(%struct.queue* %10, i8* %17)
  %19 = icmp ne i64 %isBoundary.0, 0
  %20 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair, i32 0, i32 0
  %21 = bitcast %struct.pair* %searchPair to i8*
  br label %22

; <label>:22                                      ; preds = %87, %4
  %23 = call i64 @queue_isEmpty(%struct.queue* %10)
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %88

; <label>:26                                      ; preds = %22
  %27 = call i8* @queue_pop(%struct.queue* %10)
  %28 = bitcast i8* %27 to %struct.element*
  %29 = bitcast %struct.element* %28 to i8*
  %30 = call i64 @Plist_insert(%struct.list* %6, i8* %29)
  %31 = call %struct.list* @element_getNeighborListPtr(%struct.element* %28)
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %31)
  br label %32

; <label>:32                                      ; preds = %86, %26
  %33 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %31) #20
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %87

; <label>:35                                      ; preds = %32
  %36 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %31)
  %37 = bitcast i8* %36 to %struct.element*
  %38 = call i64 @TMelement_isGarbage(%struct.element* %37)
  %39 = bitcast %struct.element* %37 to i8*
  %40 = call i8* @list_find(%struct.list* %6, i8* %39) #20
  %41 = icmp ne i8* %40, null
  br i1 %41, label %._crit_edge1, label %42

._crit_edge1:                                     ; preds = %35
  br label %86

; <label>:42                                      ; preds = %35
  %43 = call i64 @element_isInCircumCircle(%struct.element* %37, %struct.coordinate* %centerCoordinate) #20
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

; <label>:45                                      ; preds = %42
  br i1 %19, label %._crit_edge2, label %46

._crit_edge2:                                     ; preds = %45
  br label %50

; <label>:46                                      ; preds = %45
  %47 = call i64 @element_getNumEdge(%struct.element* %37)
  %48 = icmp eq i64 %47, 1
  br i1 %48, label %49, label %._crit_edge3

._crit_edge3:                                     ; preds = %46
  br label %50

; <label>:49                                      ; preds = %46
  br label %89

; <label>:50                                      ; preds = %._crit_edge3, %._crit_edge2
  %51 = bitcast %struct.element* %37 to i8*
  %52 = call i64 @Pqueue_push(%struct.queue* %10, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %50
  br label %57

; <label>:55                                      ; preds = %50
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11.44, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 295, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.TMgrowRegion, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:57                                      ; preds = %54
  br label %58

; <label>:58                                      ; preds = %57
  br label %85

; <label>:59                                      ; preds = %42
  %60 = call %struct.pair* @element_getCommonEdge(%struct.element* %37, %struct.element* %28) #20
  %61 = icmp ne %struct.pair* %60, null
  br i1 %61, label %._crit_edge4, label %62

._crit_edge4:                                     ; preds = %59
  br label %63

; <label>:62                                      ; preds = %59
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #8, !srcloc !4
  br label %63

; <label>:63                                      ; preds = %62, %._crit_edge4
  %64 = bitcast %struct.pair* %60 to i8*
  %65 = call i64 @Plist_insert(%struct.list* %8, i8* %64)
  %66 = bitcast %struct.pair* %60 to i8*
  store i8* %66, i8** %20, align 8
  %67 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %21)
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %._crit_edge5

._crit_edge5:                                     ; preds = %63
  br label %70

; <label>:69                                      ; preds = %63
  br label %70

; <label>:70                                      ; preds = %69, %._crit_edge5
  %success.0 = phi i64 [ 1, %69 ], [ 0, %._crit_edge5 ]
  %71 = icmp ne i64 %success.0, 0
  br i1 %71, label %._crit_edge6, label %72

._crit_edge6:                                     ; preds = %70
  br label %84

; <label>:72                                      ; preds = %70
  %73 = bitcast %struct.pair* %60 to i8*
  %74 = bitcast %struct.element* %37 to i8*
  %75 = call %struct.pair* @Ppair_alloc(i8* %73, i8* %74)
  %76 = icmp ne %struct.pair* %75, null
  br i1 %76, label %77, label %._crit_edge7

._crit_edge7:                                     ; preds = %72
  br label %83

; <label>:77                                      ; preds = %72
  %78 = bitcast %struct.pair* %75 to i8*
  %79 = call i64 @Pjsw_avlinsert(%struct.jsw_avltree* %edgeMapPtr, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %._crit_edge8

._crit_edge8:                                     ; preds = %77
  br label %82

; <label>:81                                      ; preds = %77
  br label %82

; <label>:82                                      ; preds = %81, %._crit_edge8
  %success1.0 = phi i64 [ 1, %81 ], [ 0, %._crit_edge8 ]
  br label %83

; <label>:83                                      ; preds = %82, %._crit_edge7
  %success1.1 = phi i64 [ %success1.0, %82 ], [ 0, %._crit_edge7 ]
  br label %84

; <label>:84                                      ; preds = %83, %._crit_edge6
  br label %85

; <label>:85                                      ; preds = %84, %58
  br label %86

; <label>:86                                      ; preds = %85, %._crit_edge1
  br label %32

; <label>:87                                      ; preds = %32
  br label %22

; <label>:88                                      ; preds = %22
  br label %89

; <label>:89                                      ; preds = %88, %49
  %.0 = phi %struct.element* [ %37, %49 ], [ null, %88 ]
  ret %struct.element* %.0
}

; Function Attrs: nounwind uwtable
define i64 @TMregion_refine(%struct.region* %regionPtr, %struct.element* %elementPtr, %struct.mesh* %meshPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @TMelement_isGarbage(%struct.element* %elementPtr)
  br label %2

; <label>:2                                       ; preds = %19, %0
  %numDelta.0 = phi i64 [ 0, %0 ], [ %13, %19 ]
  %3 = call %struct.jsw_avltree* @Pjsw_avlnew(i64 (i8*, i8*)* bitcast (i64 (%struct.pair*, %struct.pair*)* @element_mapCompareEdge to i64 (i8*, i8*)*))
  %4 = icmp ne %struct.jsw_avltree* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %2
  br label %8

; <label>:6                                       ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6.39, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 337, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.TMregion_refine, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:8                                       ; preds = %5
  %9 = call %struct.element* @TMgrowRegion(%struct.element* %elementPtr, %struct.region* %regionPtr, %struct.mesh* %meshPtr, %struct.jsw_avltree* %3)
  %10 = icmp ne %struct.element* %9, null
  br i1 %10, label %11, label %18

; <label>:11                                      ; preds = %8
  call void @TMelement_setIsReferenced(%struct.element* %9, i64 1)
  %12 = call i64 @TMregion_refine(%struct.region* %regionPtr, %struct.element* %9, %struct.mesh* %meshPtr)
  %13 = add nsw i64 %numDelta.0, %12
  %14 = call i64 @TMelement_isGarbage(%struct.element* %elementPtr)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %11
  br label %20

; <label>:17                                      ; preds = %11
  br label %19

; <label>:18                                      ; preds = %8
  br label %20

; <label>:19                                      ; preds = %17
  call void @Pjsw_avldelete(%struct.jsw_avltree* %3)
  br label %2

; <label>:20                                      ; preds = %18, %16
  %numDelta.1 = phi i64 [ %13, %16 ], [ %numDelta.0, %18 ]
  %21 = call i64 @TMelement_isGarbage(%struct.element* %elementPtr)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %._crit_edge, label %23

._crit_edge:                                      ; preds = %20
  br label %26

; <label>:23                                      ; preds = %20
  %24 = call i64 @TMretriangulate(%struct.element* %elementPtr, %struct.region* %regionPtr, %struct.mesh* %meshPtr, %struct.jsw_avltree* %3)
  %25 = add nsw i64 %numDelta.1, %24
  br label %26

; <label>:26                                      ; preds = %23, %._crit_edge
  %numDelta.2 = phi i64 [ %numDelta.1, %._crit_edge ], [ %25, %23 ]
  call void @Pjsw_avldelete(%struct.jsw_avltree* %3)
  ret i64 %numDelta.2
}

; Function Attrs: nounwind uwtable
define void @Pregion_clearBad(%struct.region* %regionPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 4
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  call void @vector_clear(%struct.vector* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMregion_transferBad(%struct.region* %regionPtr, %struct.heap* %workHeapPtr) #0 {
  %structArg = alloca { i64, %struct.vector*, %struct.heap* }
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 4
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = call i64 @vector_getSize(%struct.vector* %2)
  br label %codeRepl

codeRepl:                                         ; preds = %0
  %gep_ = getelementptr { i64, %struct.vector*, %struct.heap* }, { i64, %struct.vector*, %struct.heap* }* %structArg, i32 0, i32 0
  store i64 %3, i64* %gep_
  %gep_1 = getelementptr { i64, %struct.vector*, %struct.heap* }, { i64, %struct.vector*, %struct.heap* }* %structArg, i32 0, i32 1
  store %struct.vector* %2, %struct.vector** %gep_1
  %gep_workHeapPtr = getelementptr { i64, %struct.vector*, %struct.heap* }, { i64, %struct.vector*, %struct.heap* }* %structArg, i32 0, i32 2
  store %struct.heap* %workHeapPtr, %struct.heap** %gep_workHeapPtr
  %targetBlock = call i1 @TMregion_transferBad___kernel__TMregion_transferBad0({ i64, %struct.vector*, %struct.heap* }* %structArg)
  br i1 %targetBlock, label %6, label %4

; <label>:4                                       ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.34, i32 0, i32 0), i32 406, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.TMregion_transferBad, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:6                                       ; preds = %codeRepl
  ret void
}

; Function Attrs: alwaysinline nounwind
define internal i1 @TMregion_transferBad___kernel__TMregion_transferBad0({ i64, %struct.vector*, %struct.heap* }*) #5 {
newFuncRoot:
  %gep_ = getelementptr { i64, %struct.vector*, %struct.heap* }, { i64, %struct.vector*, %struct.heap* }* %0, i32 0, i32 0
  %loadgep_ = load i64, i64* %gep_
  %gep_1 = getelementptr { i64, %struct.vector*, %struct.heap* }, { i64, %struct.vector*, %struct.heap* }* %0, i32 0, i32 1
  %loadgep_2 = load %struct.vector*, %struct.vector** %gep_1
  %gep_workHeapPtr = getelementptr { i64, %struct.vector*, %struct.heap* }, { i64, %struct.vector*, %struct.heap* }* %0, i32 0, i32 2
  %loadgep_workHeapPtr = load %struct.heap*, %struct.heap** %gep_workHeapPtr
  br label %__kernel__TMregion_transferBad0

.exitStub:                                        ; preds = %__kernel__TMregion_transferBad0
  ret i1 true

.exitStub3:                                       ; preds = %7
  ret i1 false

__kernel__TMregion_transferBad0:                  ; preds = %15, %newFuncRoot
  %i.0 = phi i64 [ 0, %newFuncRoot ], [ %16, %15 ]
  %1 = icmp slt i64 %i.0, %loadgep_
  br i1 %1, label %2, label %.exitStub

; <label>:2                                       ; preds = %__kernel__TMregion_transferBad0
  %3 = call i8* @vector_at(%struct.vector* %loadgep_2, i64 %i.0)
  %4 = bitcast i8* %3 to %struct.element*
  %5 = call i64 @TMelement_isGarbage(%struct.element* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %13, label %7

; <label>:7                                       ; preds = %2
  %8 = bitcast %struct.element* %4 to i8*
  %9 = call i64 @TMheap_insert(%struct.heap* %loadgep_workHeapPtr, i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %.exitStub3

; <label>:11                                      ; preds = %7
  br label %12

; <label>:12                                      ; preds = %11
  br label %14

; <label>:13                                      ; preds = %2
  br label %14

; <label>:14                                      ; preds = %13, %12
  br label %15

; <label>:15                                      ; preds = %14
  %16 = add nsw i64 %i.0, 1
  br label %__kernel__TMregion_transferBad0, !llvm.loop !5
}

; Function Attrs: nounwind uwtable
define void @process() #0 {
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
  %8 = load %struct.heap*, %struct.heap** @global_workHeapPtr, align 8
  %9 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  %10 = call %struct.region* (...) bitcast (%struct.region* ()* @Pregion_alloc to %struct.region* (...)*)()
  %11 = icmp ne %struct.region* %10, null
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %7
  br label %15

; <label>:13                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i32 0, i32 0), i32 201, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.process, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  br label %18

; <label>:18                                      ; preds = %.backedge, %15
  %totalNumAdded.0 = phi i64 [ 0, %15 ], [ %totalNumAdded.1, %.backedge ]
  %numProcess.0 = phi i64 [ 0, %15 ], [ %numProcess.1, %.backedge ]
  br label %19

; <label>:19                                      ; preds = %18
  %20 = load i32, i32* %16, align 8
  %21 = call i32 @workBegin(i32 0, i32 %20)
  store i32 %21, i32* %17, align 4
  br label %22

; <label>:22                                      ; preds = %19
  br label %23

; <label>:23                                      ; preds = %36, %22
  %tries.0 = phi i32 [ 9, %22 ], [ %29, %36 ]
  br label %24

; <label>:24                                      ; preds = %27, %23
  %25 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %24
  call void @llvm.x86.sse2.pause() #8
  br label %24

; <label>:28                                      ; preds = %24
  %29 = add nsw i32 %tries.0, -1
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %28
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %42

; <label>:32                                      ; preds = %28
  %33 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #8, !srcloc !6
  %34 = trunc i64 %33 to i32
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %32
  br label %23

; <label>:37                                      ; preds = %32
  %38 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %._crit_edge

._crit_edge:                                      ; preds = %37
  br label %41

; <label>:40                                      ; preds = %37
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #8, !srcloc !7
  br label %41

; <label>:41                                      ; preds = %40, %._crit_edge
  br label %42

; <label>:42                                      ; preds = %41, %31
  %43 = call i8* @TMheap_remove(%struct.heap* %8)
  %44 = bitcast i8* %43 to %struct.element*
  %45 = icmp sgt i32 %29, 0
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %42
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #8, !srcloc !8
  br label %48

; <label>:47                                      ; preds = %42
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %48

; <label>:48                                      ; preds = %47, %46
  %49 = icmp eq %struct.element* %44, null
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %48
  br label %161

; <label>:51                                      ; preds = %48
  br label %52

; <label>:52                                      ; preds = %65, %51
  %tries2.0 = phi i32 [ 9, %51 ], [ %58, %65 ]
  br label %53

; <label>:53                                      ; preds = %56, %52
  %54 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %53
  call void @llvm.x86.sse2.pause() #8
  br label %53

; <label>:57                                      ; preds = %53
  %58 = add nsw i32 %tries2.0, -1
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %57
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %71

; <label>:61                                      ; preds = %57
  %62 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #8, !srcloc !6
  %63 = trunc i64 %62 to i32
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %61
  br label %52

; <label>:66                                      ; preds = %61
  %67 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %._crit_edge1

._crit_edge1:                                     ; preds = %66
  br label %70

; <label>:69                                      ; preds = %66
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #8, !srcloc !7
  br label %70

; <label>:70                                      ; preds = %69, %._crit_edge1
  br label %71

; <label>:71                                      ; preds = %70, %60
  %72 = call i64 @TMelement_isGarbage(%struct.element* %44)
  %73 = icmp sgt i32 %58, 0
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %71
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #8, !srcloc !8
  br label %76

; <label>:75                                      ; preds = %71
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %76

; <label>:76                                      ; preds = %75, %74
  %77 = icmp ne i64 %72, 0
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %76
  br label %.backedge

.backedge:                                        ; preds = %160, %78
  %totalNumAdded.1 = phi i64 [ %totalNumAdded.0, %78 ], [ %133, %160 ]
  %numProcess.1 = phi i64 [ %numProcess.0, %78 ], [ %158, %160 ]
  br label %18

; <label>:79                                      ; preds = %76
  br label %80

; <label>:80                                      ; preds = %93, %79
  %tries4.0 = phi i32 [ 9, %79 ], [ %86, %93 ]
  br label %81

; <label>:81                                      ; preds = %84, %80
  %82 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %81
  call void @llvm.x86.sse2.pause() #8
  br label %81

; <label>:85                                      ; preds = %81
  %86 = add nsw i32 %tries4.0, -1
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %85
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %99

; <label>:89                                      ; preds = %85
  %90 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #8, !srcloc !6
  %91 = trunc i64 %90 to i32
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %89
  br label %80

; <label>:94                                      ; preds = %89
  %95 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %._crit_edge2

._crit_edge2:                                     ; preds = %94
  br label %98

; <label>:97                                      ; preds = %94
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #8, !srcloc !7
  br label %98

; <label>:98                                      ; preds = %97, %._crit_edge2
  br label %99

; <label>:99                                      ; preds = %98, %88
  call void @Pregion_clearBad(%struct.region* %10)
  %100 = call i64 @TMregion_refine(%struct.region* %10, %struct.element* %44, %struct.mesh* %9)
  %101 = icmp sgt i32 %86, 0
  br i1 %101, label %102, label %103

; <label>:102                                     ; preds = %99
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #8, !srcloc !8
  br label %104

; <label>:103                                     ; preds = %99
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %104

; <label>:104                                     ; preds = %103, %102
  br label %105

; <label>:105                                     ; preds = %118, %104
  %tries6.0 = phi i32 [ 9, %104 ], [ %111, %118 ]
  br label %106

; <label>:106                                     ; preds = %109, %105
  %107 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

; <label>:109                                     ; preds = %106
  call void @llvm.x86.sse2.pause() #8
  br label %106

; <label>:110                                     ; preds = %106
  %111 = add nsw i32 %tries6.0, -1
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %113, label %114

; <label>:113                                     ; preds = %110
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %124

; <label>:114                                     ; preds = %110
  %115 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 0, i64 3, i64 4294967295) #8, !srcloc !6
  %116 = trunc i64 %115 to i32
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %119

; <label>:118                                     ; preds = %114
  br label %105

; <label>:119                                     ; preds = %114
  %120 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %._crit_edge3

._crit_edge3:                                     ; preds = %119
  br label %123

; <label>:122                                     ; preds = %119
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #8, !srcloc !7
  br label %123

; <label>:123                                     ; preds = %122, %._crit_edge3
  br label %124

; <label>:124                                     ; preds = %123, %113
  call void @TMelement_setIsReferenced(%struct.element* %44, i64 0)
  %125 = call i64 @TMelement_isGarbage(%struct.element* %44)
  %126 = icmp sgt i32 %111, 0
  br i1 %126, label %127, label %128

; <label>:127                                     ; preds = %124
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 3) #8, !srcloc !8
  br label %129

; <label>:128                                     ; preds = %124
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %129

; <label>:129                                     ; preds = %128, %127
  %130 = icmp ne i64 %125, 0
  br i1 %130, label %131, label %._crit_edge4

._crit_edge4:                                     ; preds = %129
  br label %132

; <label>:131                                     ; preds = %129
  br label %132

; <label>:132                                     ; preds = %131, %._crit_edge4
  %133 = add nsw i64 %totalNumAdded.0, %100
  br label %134

; <label>:134                                     ; preds = %147, %132
  %tries8.0 = phi i32 [ 9, %132 ], [ %140, %147 ]
  br label %135

; <label>:135                                     ; preds = %138, %134
  %136 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

; <label>:138                                     ; preds = %135
  call void @llvm.x86.sse2.pause() #8
  br label %135

; <label>:139                                     ; preds = %135
  %140 = add nsw i32 %tries8.0, -1
  %141 = icmp sle i32 %140, 0
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %139
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %153

; <label>:143                                     ; preds = %139
  %144 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 4, i64 0, i64 4, i64 4294967295) #8, !srcloc !6
  %145 = trunc i64 %144 to i32
  %146 = icmp ne i32 %145, -1
  br i1 %146, label %147, label %148

; <label>:147                                     ; preds = %143
  br label %134

; <label>:148                                     ; preds = %143
  %149 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %._crit_edge5

._crit_edge5:                                     ; preds = %148
  br label %152

; <label>:151                                     ; preds = %148
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #8, !srcloc !7
  br label %152

; <label>:152                                     ; preds = %151, %._crit_edge5
  br label %153

; <label>:153                                     ; preds = %152, %142
  call void @TMregion_transferBad(%struct.region* %10, %struct.heap* %8)
  %154 = icmp sgt i32 %140, 0
  br i1 %154, label %155, label %156

; <label>:155                                     ; preds = %153
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 4) #8, !srcloc !8
  br label %157

; <label>:156                                     ; preds = %153
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %157

; <label>:157                                     ; preds = %156, %155
  %158 = add nsw i64 %numProcess.0, 1
  br label %159

; <label>:159                                     ; preds = %157
  call void @workEnd(i32 0, i32 0)
  br label %160

; <label>:160                                     ; preds = %159
  br label %.backedge

; <label>:161                                     ; preds = %50
  br label %162

; <label>:162                                     ; preds = %175, %161
  %tries10.0 = phi i32 [ 9, %161 ], [ %168, %175 ]
  br label %163

; <label>:163                                     ; preds = %166, %162
  %164 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

; <label>:166                                     ; preds = %163
  call void @llvm.x86.sse2.pause() #8
  br label %163

; <label>:167                                     ; preds = %163
  %168 = add nsw i32 %tries10.0, -1
  %169 = icmp sle i32 %168, 0
  br i1 %169, label %170, label %171

; <label>:170                                     ; preds = %167
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %181

; <label>:171                                     ; preds = %167
  %172 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 5, i64 0, i64 5, i64 4294967295) #8, !srcloc !6
  %173 = trunc i64 %172 to i32
  %174 = icmp ne i32 %173, -1
  br i1 %174, label %175, label %176

; <label>:175                                     ; preds = %171
  br label %162

; <label>:176                                     ; preds = %171
  %177 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %._crit_edge6

._crit_edge6:                                     ; preds = %176
  br label %180

; <label>:179                                     ; preds = %176
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #8, !srcloc !7
  br label %180

; <label>:180                                     ; preds = %179, %._crit_edge6
  br label %181

; <label>:181                                     ; preds = %180, %170
  %182 = load i64, i64* @global_totalNumAdded, align 8
  %183 = add nsw i64 %182, %totalNumAdded.0
  store i64 %183, i64* @global_totalNumAdded, align 8
  %184 = load i64, i64* @global_totalNumAdded, align 8
  %185 = load i64, i64* @global_numProcess, align 8
  %186 = add nsw i64 %185, %numProcess.0
  store i64 %186, i64* @global_numProcess, align 8
  %187 = load i64, i64* @global_numProcess, align 8
  %188 = icmp sgt i32 %168, 0
  br i1 %188, label %189, label %190

; <label>:189                                     ; preds = %181
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 5) #8, !srcloc !8
  br label %191

; <label>:190                                     ; preds = %181
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %191

; <label>:191                                     ; preds = %190, %189
  call void @Pregion_free(%struct.region* %10)
  br label %192

; <label>:192                                     ; preds = %191
  %193 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)()
  %194 = trunc i64 %193 to i32
  %195 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  call void @SimRoiEnd(i32 %194, i32 %196)
  br label %197

; <label>:197                                     ; preds = %192
  ret void
}

declare void @SimRoiStart(i32) #7

declare i32 @workBegin(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #8

declare void @workEnd(i32, i32) #7

declare void @SimRoiEnd(i32, i32) #7

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sext i32 %argc to i64
  call void @parseArgs(i64 %1, i8** %argv)
  br label %2

; <label>:2                                       ; preds = %0
  %3 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %4 = icmp sge i32 %3, 7
  br i1 %4, label %5, label %._crit_edge

._crit_edge:                                      ; preds = %2
  br label %7

; <label>:5                                       ; preds = %2
  br i1 true, label %6, label %._crit_edge1

._crit_edge1:                                     ; preds = %5
  br label %7

; <label>:6                                       ; preds = %5
  br label %9

; <label>:7                                       ; preds = %._crit_edge1, %._crit_edge
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i32 0, i32 0), i32 283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %8, %6
  %10 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #19, !srcloc !9
  %11 = extractvalue { i32, i32, i32, i32 } %10, 0
  %12 = extractvalue { i32, i32, i32, i32 } %10, 1
  %13 = extractvalue { i32, i32, i32, i32 } %10, 2
  %14 = extractvalue { i32, i32, i32, i32 } %10, 3
  %15 = and i32 %12, 2048
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %._crit_edge2

._crit_edge2:                                     ; preds = %9
  br label %19

; <label>:17                                      ; preds = %9
  br i1 true, label %18, label %._crit_edge3

._crit_edge3:                                     ; preds = %17
  br label %19

; <label>:18                                      ; preds = %17
  br label %21

; <label>:19                                      ; preds = %._crit_edge3, %._crit_edge2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i32 0, i32 0), i32 283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:21                                      ; preds = %20, %18
  call void (...) bitcast (void ()* @RTM_spinlock_init to void (...)*)()
  %22 = load i64, i64* @global_numThread, align 8
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %22)
  br label %23

; <label>:23                                      ; preds = %21
  %24 = load i64, i64* @global_numThread, align 8
  call void @thread_startup(i64 %24)
  %25 = call %struct.mesh* (...) bitcast (%struct.mesh* ()* @mesh_alloc to %struct.mesh* (...)*)()
  store %struct.mesh* %25, %struct.mesh** @global_meshPtr, align 8
  %26 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  %27 = icmp ne %struct.mesh* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %23
  br label %31

; <label>:29                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i32 0, i32 0), i32 287, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %31

; <label>:31                                      ; preds = %30, %28
  %32 = load double, double* @global_angleConstraint, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7.60, i32 0, i32 0), double %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8.61, i32 0, i32 0))
  %35 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  %36 = load i8*, i8** @global_inputPrefix, align 8
  %37 = call i64 @mesh_read(%struct.mesh* %35, i8* %36)
  %38 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.62, i32 0, i32 0))
  %39 = call %struct.heap* @heap_alloc(i64 1, i64 (i8*, i8*)* @element_heapCompare)
  store %struct.heap* %39, %struct.heap** @global_workHeapPtr, align 8
  %40 = load %struct.heap*, %struct.heap** @global_workHeapPtr, align 8
  %41 = icmp ne %struct.heap* %40, null
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %31
  br label %45

; <label>:43                                      ; preds = %31
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i32 0, i32 0), i32 293, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = load %struct.heap*, %struct.heap** @global_workHeapPtr, align 8
  %47 = load %struct.mesh*, %struct.mesh** @global_meshPtr, align 8
  %48 = call i64 @initializeWork(%struct.heap* %46, %struct.mesh* %47)
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11.65, i32 0, i32 0), i64 %37)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12.66, i32 0, i32 0), i64 %48)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13.67, i32 0, i32 0))
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = call i32 @fflush(%struct._IO_FILE* %52)
  %54 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #8
  call void @thread_start(void (i8*)* bitcast (void ()* @process to void (i8*)*), i8* null)
  %55 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #8
  %56 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14.68, i32 0, i32 0))
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sitofp i64 %58 to double
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sitofp i64 %61 to double
  %63 = fdiv double %62, 1.000000e+06
  %64 = fadd double %59, %63
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sitofp i64 %66 to double
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sitofp i64 %69 to double
  %71 = fdiv double %70, 1.000000e+06
  %72 = fadd double %67, %71
  %73 = fsub double %64, %72
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15.69, i32 0, i32 0), double %73)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %76 = call i32 @fflush(%struct._IO_FILE* %75)
  %77 = load i64, i64* @global_totalNumAdded, align 8
  %78 = add nsw i64 %37, %77
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16.70, i32 0, i32 0), i64 %78)
  %80 = load i64, i64* @global_numProcess, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17.71, i32 0, i32 0), i64 %80)
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %83 = call i32 @fflush(%struct._IO_FILE* %82)
  %84 = icmp ne i64 1, 0
  %85 = select i1 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19.72, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20.73, i32 0, i32 0)
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18.74, i32 0, i32 0), i8* %85)
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %88 = call i32 @fflush(%struct._IO_FILE* %87)
  %89 = icmp ne i64 1, 0
  br i1 %89, label %90, label %91

; <label>:90                                      ; preds = %45
  br label %93

; <label>:91                                      ; preds = %45
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i32 0, i32 0), i32 341, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %93

; <label>:93                                      ; preds = %92, %90
  br label %94

; <label>:94                                      ; preds = %93
  %95 = call i64 (...) @getWorkItemCount()
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22.76, i32 0, i32 0), i64 %95)
  %97 = call i32 @fflush(%struct._IO_FILE* null)
  br label %98

; <label>:98                                      ; preds = %94
  call void (...) bitcast (void ()* @thread_shutdown to void (...)*)()
  call void (...) bitcast (void ()* @RTM_output_stats to void (...)*)()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @parseArgs(i64 %argc, i8** %argv) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 0, i32* @opterr, align 4
  %1 = trunc i64 %argc to i32
  br label %2

; <label>:2                                       ; preds = %19, %0
  %3 = call i32 @getopt(i32 %1, i8** %argv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23.50, i32 0, i32 0)) #8
  %4 = sext i32 %3 to i64
  %5 = icmp ne i64 %4, -1
  br i1 %5, label %6, label %20

; <label>:6                                       ; preds = %2
  switch i64 %4, label %._crit_edge [
    i64 97, label %7
    i64 105, label %10
    i64 116, label %12
    i64 63, label %15
  ]

._crit_edge:                                      ; preds = %6
  br label %16

; <label>:7                                       ; preds = %6
  %8 = load i8*, i8** @optarg, align 8
  %9 = call double @atof(i8* %8) #20
  store double %9, double* @global_angleConstraint, align 8
  br label %19

; <label>:10                                      ; preds = %6
  %11 = load i8*, i8** @optarg, align 8
  store i8* %11, i8** @global_inputPrefix, align 8
  br label %19

; <label>:12                                      ; preds = %6
  %13 = load i8*, i8** @optarg, align 8
  %14 = call i64 @atol(i8* %13) #20
  store i64 %14, i64* @global_numThread, align 8
  br label %19

; <label>:15                                      ; preds = %6
  br label %16

; <label>:16                                      ; preds = %15, %._crit_edge
  %17 = load i32, i32* @opterr, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @opterr, align 4
  br label %19

; <label>:19                                      ; preds = %16, %12, %10, %7
  br label %2

; <label>:20                                      ; preds = %2
  %.lcssa = phi i64 [ %4, %2 ]
  %21 = load i32, i32* @optind, align 4
  %22 = sext i32 %21 to i64
  br label %23

; <label>:23                                      ; preds = %32, %20
  %i.0 = phi i64 [ %22, %20 ], [ %33, %32 ]
  %24 = icmp slt i64 %i.0, %argc
  br i1 %24, label %25, label %34

; <label>:25                                      ; preds = %23
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = getelementptr inbounds i8*, i8** %argv, i64 %i.0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24.51, i32 0, i32 0), i8* %28)
  %30 = load i32, i32* @opterr, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @opterr, align 4
  br label %32

; <label>:32                                      ; preds = %25
  %33 = add nsw i64 %i.0, 1
  br label %23

; <label>:34                                      ; preds = %23
  %35 = load i32, i32* @opterr, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %._crit_edge1

._crit_edge1:                                     ; preds = %34
  br label %40

; <label>:37                                      ; preds = %34
  %38 = getelementptr inbounds i8*, i8** %argv, i64 0
  %39 = load i8*, i8** %38, align 8
  call void @displayUsage(i8* %39)
  br label %40

; <label>:40                                      ; preds = %37, %._crit_edge1
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare double @atof(i8*) #9

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #9

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #7

; Function Attrs: nounwind uwtable
define internal void @displayUsage(i8* %appName) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25.52, i32 0, i32 0), i8* %appName)
  %2 = call i32 @puts(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26.53, i32 0, i32 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27.54, i32 0, i32 0), double 2.000000e+01)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28.55, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29.56, i32 0, i32 0), i64 1)
  call void @profiler_print_stats()
  call void @exit(i32 1) #18
  unreachable
                                                  ; No predecessors!
  ret void
}

declare void @profiler_print_stats()

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #10 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %__level) #19, !srcloc !10
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

declare void @SimStartup(...) #7

; Function Attrs: nounwind uwtable
define internal i64 @initializeWork(%struct.heap* %workHeapPtr, %struct.mesh* %meshPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call %struct.random* (...) bitcast (%struct.random* ()* @random_alloc to %struct.random* (...)*)()
  call void @random_seed(%struct.random* %1, i64 0)
  call void @mesh_shuffleBad(%struct.mesh* %meshPtr, %struct.random* %1)
  call void @random_free(%struct.random* %1)
  br label %2

; <label>:2                                       ; preds = %14, %0
  %numBad.0 = phi i64 [ 0, %0 ], [ %7, %14 ]
  %3 = call %struct.element* @mesh_getBad(%struct.mesh* %meshPtr)
  %4 = icmp ne %struct.element* %3, null
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %2
  br label %15

; <label>:6                                       ; preds = %2
  %7 = add nsw i64 %numBad.0, 1
  %8 = bitcast %struct.element* %3 to i8*
  %9 = call i64 @heap_insert(%struct.heap* %workHeapPtr, i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %6
  br label %14

; <label>:12                                      ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i32 0, i32 0), i32 177, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.initializeWork, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:14                                      ; preds = %11
  call void @element_setIsReferenced(%struct.element* %3, i64 1)
  br label %2

; <label>:15                                      ; preds = %5
  ret i64 %numBad.0
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare i64 @getWorkItemCount(...) #7

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @coordinate_compare(%struct.coordinate* nocapture readonly %aPtr, %struct.coordinate* nocapture readonly %bPtr) #11 {
  %1 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 0
  %2 = load double, double* %1, align 8
  %3 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = fcmp olt double %2, %4
  br i1 %5, label %16, label %6

; <label>:6                                       ; preds = %0
  %7 = fcmp ogt double %2, %4
  br i1 %7, label %16, label %8

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 1
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = fcmp olt double %10, %12
  br i1 %13, label %16, label %14

; <label>:14                                      ; preds = %8
  %15 = fcmp ogt double %10, %12
  %. = zext i1 %15 to i64
  br label %16

; <label>:16                                      ; preds = %14, %8, %6, %0
  %.0 = phi i64 [ -1, %0 ], [ 1, %6 ], [ -1, %8 ], [ %., %14 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define double @coordinate_distance(%struct.coordinate* nocapture readonly %coordinatePtr, %struct.coordinate* nocapture readonly %aPtr) #0 {
  %1 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinatePtr, i64 0, i32 0
  %2 = load double, double* %1, align 8
  %3 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = fsub double %2, %4
  %6 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinatePtr, i64 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = fsub double %7, %9
  %11 = fmul double %5, %5
  %12 = fmul double %10, %10
  %13 = fadd double %11, %12
  %14 = tail call double @sqrt(double %13) #8
  ret double %14
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define double @coordinate_angle(%struct.coordinate* nocapture readonly %aPtr, %struct.coordinate* nocapture readonly %bPtr, %struct.coordinate* nocapture readonly %cPtr) #0 {
  %1 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 0
  %2 = load double, double* %1, align 8
  %3 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = fsub double %2, %4
  %6 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %bPtr, i64 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %aPtr, i64 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = fsub double %7, %9
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %cPtr, i64 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = fsub double %12, %4
  %14 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %cPtr, i64 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = fsub double %15, %9
  %17 = fmul double %5, %13
  %18 = fmul double %10, %16
  %19 = fadd double %17, %18
  %20 = fsub double %4, %2
  %21 = fsub double %9, %7
  %22 = fmul double %20, %20
  %23 = fmul double %21, %21
  %24 = fadd double %22, %23
  %25 = tail call double @sqrt(double %24) #8
  %26 = load double, double* %3, align 8
  %27 = load double, double* %11, align 8
  %28 = fsub double %26, %27
  %29 = load double, double* %8, align 8
  %30 = load double, double* %14, align 8
  %31 = fsub double %29, %30
  %32 = fmul double %28, %28
  %33 = fmul double %31, %31
  %34 = fadd double %32, %33
  %35 = tail call double @sqrt(double %34) #8
  %36 = fmul double %25, %35
  %37 = fdiv double %19, %36
  %38 = tail call double @acos(double %37) #8
  %39 = fmul double %38, 1.800000e+02
  %40 = fdiv double %39, 0x400921FB54442D18
  ret double %40
}

; Function Attrs: nounwind
declare double @acos(double) #1

; Function Attrs: nounwind uwtable
define void @coordinate_print(%struct.coordinate* nocapture readonly %coordinatePtr) #0 {
  %1 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinatePtr, i64 0, i32 0
  %2 = load double, double* %1, align 8
  %3 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinatePtr, i64 0, i32 1
  %4 = load double, double* %3, align 8
  %5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.85, i64 0, i64 0), double %2, double %4)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.jsw_avltree* @jsw_avlnew(i64 (i8*, i8*)* %cmp) #12 {
  %1 = alloca %struct.jsw_avltree*, align 8
  %2 = alloca i64 (i8*, i8*)*, align 8
  %rt = alloca %struct.jsw_avltree*, align 8
  store i64 (i8*, i8*)* %cmp, i64 (i8*, i8*)** %2, align 8
  %3 = call noalias i8* @malloc(i64 24) #8
  %4 = bitcast i8* %3 to %struct.jsw_avltree*
  store %struct.jsw_avltree* %4, %struct.jsw_avltree** %rt, align 8
  %5 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %6 = icmp eq %struct.jsw_avltree* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store %struct.jsw_avltree* null, %struct.jsw_avltree** %1, align 8
  br label %17

; <label>:8                                       ; preds = %0
  %9 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %10 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %9, i32 0, i32 0
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %10, align 8
  %11 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %2, align 8
  %12 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %13 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %12, i32 0, i32 1
  store i64 (i8*, i8*)* %11, i64 (i8*, i8*)** %13, align 8
  %14 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %15 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  store %struct.jsw_avltree* %16, %struct.jsw_avltree** %1, align 8
  br label %17

; <label>:17                                      ; preds = %8, %7
  %18 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  ret %struct.jsw_avltree* %18
}

; Function Attrs: nounwind uwtable
define %struct.jsw_avltree* @Pjsw_avlnew(i64 (i8*, i8*)* %cmp) #12 {
  %1 = alloca %struct.jsw_avltree*, align 8
  %2 = alloca i64 (i8*, i8*)*, align 8
  %rt = alloca %struct.jsw_avltree*, align 8
  store i64 (i8*, i8*)* %cmp, i64 (i8*, i8*)** %2, align 8
  %3 = call noalias i8* @malloc(i64 24) #8
  %4 = bitcast i8* %3 to %struct.jsw_avltree*
  store %struct.jsw_avltree* %4, %struct.jsw_avltree** %rt, align 8
  %5 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %6 = icmp eq %struct.jsw_avltree* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store %struct.jsw_avltree* null, %struct.jsw_avltree** %1, align 8
  br label %17

; <label>:8                                       ; preds = %0
  %9 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %10 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %9, i32 0, i32 0
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %10, align 8
  %11 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %2, align 8
  %12 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %13 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %12, i32 0, i32 1
  store i64 (i8*, i8*)* %11, i64 (i8*, i8*)** %13, align 8
  %14 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  %15 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.jsw_avltree*, %struct.jsw_avltree** %rt, align 8
  store %struct.jsw_avltree* %16, %struct.jsw_avltree** %1, align 8
  br label %17

; <label>:17                                      ; preds = %8, %7
  %18 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  ret %struct.jsw_avltree* %18
}

; Function Attrs: nounwind uwtable
define void @jsw_avldelete(%struct.jsw_avltree* %tree) #12 {
  %1 = alloca %struct.jsw_avltree*, align 8
  %it = alloca %struct.jsw_avlnode*, align 8
  %save = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %1, align 8
  %2 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  %3 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %2, i32 0, i32 0
  %4 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %3, align 8
  store %struct.jsw_avlnode* %4, %struct.jsw_avlnode** %it, align 8
  br label %5

; <label>:5                                       ; preds = %37, %0
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %7 = icmp ne %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %39

; <label>:8                                       ; preds = %5
  %9 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %10 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %9, i32 0, i32 2
  %11 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %10, i64 0, i64 0
  %12 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %11, align 8
  %13 = icmp eq %struct.jsw_avlnode* %12, null
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %8
  %15 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %16 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %15, i32 0, i32 2
  %17 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %16, i64 0, i64 1
  %18 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %17, align 8
  store %struct.jsw_avlnode* %18, %struct.jsw_avlnode** %save, align 8
  %19 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %20 = bitcast %struct.jsw_avlnode* %19 to i8*
  call void @free(i8* %20) #8
  br label %37

; <label>:21                                      ; preds = %8
  %22 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %23 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %22, i32 0, i32 2
  %24 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %23, i64 0, i64 0
  %25 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %24, align 8
  store %struct.jsw_avlnode* %25, %struct.jsw_avlnode** %save, align 8
  %26 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %27 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %26, i32 0, i32 2
  %28 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %27, i64 0, i64 1
  %29 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %28, align 8
  %30 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %31 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %30, i32 0, i32 2
  %32 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %31, i64 0, i64 0
  store %struct.jsw_avlnode* %29, %struct.jsw_avlnode** %32, align 8
  %33 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %34 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %35 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %34, i32 0, i32 2
  %36 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %35, i64 0, i64 1
  store %struct.jsw_avlnode* %33, %struct.jsw_avlnode** %36, align 8
  br label %37

; <label>:37                                      ; preds = %21, %14
  %38 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  store %struct.jsw_avlnode* %38, %struct.jsw_avlnode** %it, align 8
  br label %5

; <label>:39                                      ; preds = %5
  %40 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  %41 = bitcast %struct.jsw_avltree* %40 to i8*
  call void @free(i8* %41) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Pjsw_avldelete(%struct.jsw_avltree* %tree) #12 {
  %1 = alloca %struct.jsw_avltree*, align 8
  %it = alloca %struct.jsw_avlnode*, align 8
  %save = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %1, align 8
  %2 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  %3 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %2, i32 0, i32 0
  %4 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %3, align 8
  store %struct.jsw_avlnode* %4, %struct.jsw_avlnode** %it, align 8
  br label %5

; <label>:5                                       ; preds = %37, %0
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %7 = icmp ne %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %39

; <label>:8                                       ; preds = %5
  %9 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %10 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %9, i32 0, i32 2
  %11 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %10, i64 0, i64 0
  %12 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %11, align 8
  %13 = icmp eq %struct.jsw_avlnode* %12, null
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %8
  %15 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %16 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %15, i32 0, i32 2
  %17 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %16, i64 0, i64 1
  %18 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %17, align 8
  store %struct.jsw_avlnode* %18, %struct.jsw_avlnode** %save, align 8
  %19 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %20 = bitcast %struct.jsw_avlnode* %19 to i8*
  call void @free(i8* %20) #8
  br label %37

; <label>:21                                      ; preds = %8
  %22 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %23 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %22, i32 0, i32 2
  %24 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %23, i64 0, i64 0
  %25 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %24, align 8
  store %struct.jsw_avlnode* %25, %struct.jsw_avlnode** %save, align 8
  %26 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %27 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %26, i32 0, i32 2
  %28 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %27, i64 0, i64 1
  %29 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %28, align 8
  %30 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %31 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %30, i32 0, i32 2
  %32 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %31, i64 0, i64 0
  store %struct.jsw_avlnode* %29, %struct.jsw_avlnode** %32, align 8
  %33 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %34 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %35 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %34, i32 0, i32 2
  %36 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %35, i64 0, i64 1
  store %struct.jsw_avlnode* %33, %struct.jsw_avlnode** %36, align 8
  br label %37

; <label>:37                                      ; preds = %21, %14
  %38 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  store %struct.jsw_avlnode* %38, %struct.jsw_avlnode** %it, align 8
  br label %5

; <label>:39                                      ; preds = %5
  %40 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  %41 = bitcast %struct.jsw_avltree* %40 to i8*
  call void @free(i8* %41) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @jsw_avlfind(%struct.jsw_avltree* %tree, i8* %data) #12 {
  %1 = alloca %struct.jsw_avltree*, align 8
  %2 = alloca i8*, align 8
  %it = alloca %struct.jsw_avlnode*, align 8
  %cmp = alloca i64, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %1, align 8
  store i8* %data, i8** %2, align 8
  %3 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  %4 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %3, i32 0, i32 0
  %5 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %4, align 8
  store %struct.jsw_avlnode* %5, %struct.jsw_avlnode** %it, align 8
  br label %6

; <label>:6                                       ; preds = %21, %0
  %7 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %8 = icmp ne %struct.jsw_avlnode* %7, null
  br i1 %8, label %9, label %30

; <label>:9                                       ; preds = %6
  %10 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  %11 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %10, i32 0, i32 1
  %12 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %11, align 8
  %13 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %14 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 %12(i8* %15, i8* %16)
  store i64 %17, i64* %cmp, align 8
  %18 = load i64, i64* %cmp, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %9
  br label %30

; <label>:21                                      ; preds = %9
  %22 = load i64, i64* %cmp, align 8
  %23 = icmp slt i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %27 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %26, i32 0, i32 2
  %28 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %27, i64 0, i64 %25
  %29 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %28, align 8
  store %struct.jsw_avlnode* %29, %struct.jsw_avlnode** %it, align 8
  br label %6

; <label>:30                                      ; preds = %20, %6
  %31 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %32 = icmp eq %struct.jsw_avlnode* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %30
  br label %38

; <label>:34                                      ; preds = %30
  %35 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %36 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  br label %38

; <label>:38                                      ; preds = %34, %33
  %39 = phi i8* [ null, %33 ], [ %37, %34 ]
  ret i8* %39
}

; Function Attrs: nounwind uwtable
define i64 @jsw_avlinsert(%struct.jsw_avltree* %tree, i8* %data) #12 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  %3 = alloca i8*, align 8
  %head = alloca %struct.jsw_avlnode, align 8
  %s = alloca %struct.jsw_avlnode*, align 8
  %t = alloca %struct.jsw_avlnode*, align 8
  %p = alloca %struct.jsw_avlnode*, align 8
  %q = alloca %struct.jsw_avlnode*, align 8
  %dir = alloca i64, align 8
  %n = alloca %struct.jsw_avlnode*, align 8
  %bal = alloca i64, align 8
  %save = alloca %struct.jsw_avlnode*, align 8
  %n1 = alloca %struct.jsw_avlnode*, align 8
  %nn = alloca %struct.jsw_avlnode*, align 8
  %save2 = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  store i8* %data, i8** %3, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %5 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %4, i32 0, i32 0
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %5, align 8
  %7 = icmp eq %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %20

; <label>:8                                       ; preds = %0
  %9 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.jsw_avlnode* @new_node(%struct.jsw_avltree* %9, i8* %10)
  %12 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %13 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %12, i32 0, i32 0
  store %struct.jsw_avlnode* %11, %struct.jsw_avlnode** %13, align 8
  %14 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %15 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %14, i32 0, i32 0
  %16 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %15, align 8
  %17 = icmp eq %struct.jsw_avlnode* %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %8
  store i64 0, i64* %1, align 8
  br label %380

; <label>:19                                      ; preds = %8
  br label %375

; <label>:20                                      ; preds = %0
  %21 = bitcast %struct.jsw_avlnode* %head to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 32, i32 8, i1 false)
  store %struct.jsw_avlnode* %head, %struct.jsw_avlnode** %t, align 8
  %22 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %23 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %22, i32 0, i32 0
  %24 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %23, align 8
  %25 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %26 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %25, i32 0, i32 2
  %27 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %26, i64 0, i64 1
  store %struct.jsw_avlnode* %24, %struct.jsw_avlnode** %27, align 8
  %28 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %29 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %28, i32 0, i32 2
  %30 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %29, i64 0, i64 1
  %31 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %30, align 8
  store %struct.jsw_avlnode* %31, %struct.jsw_avlnode** %p, align 8
  store %struct.jsw_avlnode* %31, %struct.jsw_avlnode** %s, align 8
  br label %32

; <label>:32                                      ; preds = %61, %20
  %33 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %34 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %33, i32 0, i32 1
  %35 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %34, align 8
  %36 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %37 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 %35(i8* %38, i8* %39)
  %41 = icmp slt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %dir, align 8
  %44 = load i64, i64* %dir, align 8
  %45 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %46 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %45, i32 0, i32 2
  %47 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %46, i64 0, i64 %44
  %48 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %47, align 8
  store %struct.jsw_avlnode* %48, %struct.jsw_avlnode** %q, align 8
  %49 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %50 = icmp eq %struct.jsw_avlnode* %49, null
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %32
  br label %63

; <label>:52                                      ; preds = %32
  %53 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %54 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

; <label>:57                                      ; preds = %52
  %58 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  store %struct.jsw_avlnode* %58, %struct.jsw_avlnode** %t, align 8
  %59 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  store %struct.jsw_avlnode* %59, %struct.jsw_avlnode** %s, align 8
  br label %60

; <label>:60                                      ; preds = %57, %52
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  store %struct.jsw_avlnode* %62, %struct.jsw_avlnode** %p, align 8
  br label %32

; <label>:63                                      ; preds = %51
  %64 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = call %struct.jsw_avlnode* @new_node(%struct.jsw_avltree* %64, i8* %65)
  store %struct.jsw_avlnode* %66, %struct.jsw_avlnode** %q, align 8
  %67 = load i64, i64* %dir, align 8
  %68 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %69 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %68, i32 0, i32 2
  %70 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %69, i64 0, i64 %67
  store %struct.jsw_avlnode* %66, %struct.jsw_avlnode** %70, align 8
  %71 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %72 = icmp eq %struct.jsw_avlnode* %71, null
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %63
  store i64 0, i64* %1, align 8
  br label %380

; <label>:74                                      ; preds = %63
  %75 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  store %struct.jsw_avlnode* %75, %struct.jsw_avlnode** %p, align 8
  br label %76

; <label>:76                                      ; preds = %100, %74
  %77 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %78 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %79 = icmp ne %struct.jsw_avlnode* %77, %78
  br i1 %79, label %80, label %106

; <label>:80                                      ; preds = %76
  %81 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %82 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %81, i32 0, i32 1
  %83 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %82, align 8
  %84 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %85 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = call i64 %83(i8* %86, i8* %87)
  %89 = icmp slt i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %dir, align 8
  %92 = load i64, i64* %dir, align 8
  %93 = icmp eq i64 %92, 0
  %94 = select i1 %93, i32 -1, i32 1
  %95 = sext i32 %94 to i64
  %96 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %97 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  br label %100

; <label>:100                                     ; preds = %80
  %101 = load i64, i64* %dir, align 8
  %102 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %103 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %102, i32 0, i32 2
  %104 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %103, i64 0, i64 %101
  %105 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %104, align 8
  store %struct.jsw_avlnode* %105, %struct.jsw_avlnode** %p, align 8
  br label %76

; <label>:106                                     ; preds = %76
  %107 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  store %struct.jsw_avlnode* %107, %struct.jsw_avlnode** %q, align 8
  %108 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %109 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @abs(i32 %111) #19
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %351

; <label>:114                                     ; preds = %106
  %115 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %116 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %115, i32 0, i32 1
  %117 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %116, align 8
  %118 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %119 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %3, align 8
  %122 = call i64 %117(i8* %120, i8* %121)
  %123 = icmp slt i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %dir, align 8
  br label %126

; <label>:126                                     ; preds = %114
  %127 = load i64, i64* %dir, align 8
  %128 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %129 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %128, i32 0, i32 2
  %130 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %129, i64 0, i64 %127
  %131 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %130, align 8
  store %struct.jsw_avlnode* %131, %struct.jsw_avlnode** %n, align 8
  %132 = load i64, i64* %dir, align 8
  %133 = icmp eq i64 %132, 0
  %134 = select i1 %133, i32 -1, i32 1
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %bal, align 8
  %136 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %137 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %bal, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %186

; <label>:141                                     ; preds = %126
  %142 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %143 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %145 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  br label %146

; <label>:146                                     ; preds = %141
  %147 = load i64, i64* %dir, align 8
  %148 = icmp ne i64 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %154 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %153, i32 0, i32 2
  %155 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %154, i64 0, i64 %152
  %156 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %155, align 8
  store %struct.jsw_avlnode* %156, %struct.jsw_avlnode** %save, align 8
  %157 = load i64, i64* %dir, align 8
  %158 = icmp ne i64 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = sext i32 %160 to i64
  %162 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %163 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %162, i32 0, i32 2
  %164 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %163, i64 0, i64 %161
  %165 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %164, align 8
  %166 = load i64, i64* %dir, align 8
  %167 = icmp ne i64 %166, 0
  %168 = xor i1 %167, true
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = sext i32 %170 to i64
  %172 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %173 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %172, i32 0, i32 2
  %174 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %173, i64 0, i64 %171
  store %struct.jsw_avlnode* %165, %struct.jsw_avlnode** %174, align 8
  %175 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %176 = load i64, i64* %dir, align 8
  %177 = icmp ne i64 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = sext i32 %179 to i64
  %181 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %182 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %181, i32 0, i32 2
  %183 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %182, i64 0, i64 %180
  store %struct.jsw_avlnode* %175, %struct.jsw_avlnode** %183, align 8
  %184 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  store %struct.jsw_avlnode* %184, %struct.jsw_avlnode** %s, align 8
  br label %185

; <label>:185                                     ; preds = %146
  br label %349

; <label>:186                                     ; preds = %126
  br label %187

; <label>:187                                     ; preds = %186
  %188 = load i64, i64* %dir, align 8
  %189 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %190 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %189, i32 0, i32 2
  %191 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %190, i64 0, i64 %188
  %192 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %191, align 8
  store %struct.jsw_avlnode* %192, %struct.jsw_avlnode** %n1, align 8
  %193 = load i64, i64* %dir, align 8
  %194 = icmp ne i64 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = sext i32 %196 to i64
  %198 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %199 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %198, i32 0, i32 2
  %200 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %199, i64 0, i64 %197
  %201 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %200, align 8
  store %struct.jsw_avlnode* %201, %struct.jsw_avlnode** %nn, align 8
  %202 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %203 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %211

; <label>:206                                     ; preds = %187
  %207 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %208 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %207, i32 0, i32 0
  store i64 0, i64* %208, align 8
  %209 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %210 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %209, i32 0, i32 0
  store i64 0, i64* %210, align 8
  br label %231

; <label>:211                                     ; preds = %187
  %212 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %213 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %bal, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %224

; <label>:217                                     ; preds = %211
  %218 = load i64, i64* %bal, align 8
  %219 = sub nsw i64 0, %218
  %220 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %221 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %220, i32 0, i32 0
  store i64 %219, i64* %221, align 8
  %222 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %223 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %222, i32 0, i32 0
  store i64 0, i64* %223, align 8
  br label %230

; <label>:224                                     ; preds = %211
  %225 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %226 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  %227 = load i64, i64* %bal, align 8
  %228 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %229 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %228, i32 0, i32 0
  store i64 %227, i64* %229, align 8
  br label %230

; <label>:230                                     ; preds = %224, %217
  br label %231

; <label>:231                                     ; preds = %230, %206
  %232 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %233 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %232, i32 0, i32 0
  store i64 0, i64* %233, align 8
  br label %234

; <label>:234                                     ; preds = %231
  br label %235

; <label>:235                                     ; preds = %234
  %236 = load i64, i64* %dir, align 8
  %237 = icmp ne i64 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* %dir, align 8
  %242 = icmp ne i64 %241, 0
  %243 = xor i1 %242, true
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = sext i32 %245 to i64
  %247 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %248 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %247, i32 0, i32 2
  %249 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %248, i64 0, i64 %246
  %250 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %249, align 8
  %251 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %250, i32 0, i32 2
  %252 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %251, i64 0, i64 %240
  %253 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %252, align 8
  store %struct.jsw_avlnode* %253, %struct.jsw_avlnode** %save2, align 8
  %254 = load i64, i64* %dir, align 8
  %255 = icmp ne i64 %254, 0
  %256 = xor i1 %255, true
  %257 = xor i1 %256, true
  %258 = zext i1 %257 to i32
  %259 = sext i32 %258 to i64
  %260 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %261 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %260, i32 0, i32 2
  %262 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %261, i64 0, i64 %259
  %263 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %262, align 8
  %264 = load i64, i64* %dir, align 8
  %265 = icmp ne i64 %264, 0
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* %dir, align 8
  %270 = icmp ne i64 %269, 0
  %271 = xor i1 %270, true
  %272 = xor i1 %271, true
  %273 = zext i1 %272 to i32
  %274 = sext i32 %273 to i64
  %275 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %276 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %275, i32 0, i32 2
  %277 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %276, i64 0, i64 %274
  %278 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %277, align 8
  %279 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %278, i32 0, i32 2
  %280 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %279, i64 0, i64 %268
  store %struct.jsw_avlnode* %263, %struct.jsw_avlnode** %280, align 8
  %281 = load i64, i64* %dir, align 8
  %282 = icmp ne i64 %281, 0
  %283 = xor i1 %282, true
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  %286 = sext i32 %285 to i64
  %287 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %288 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %287, i32 0, i32 2
  %289 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %288, i64 0, i64 %286
  %290 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %289, align 8
  %291 = load i64, i64* %dir, align 8
  %292 = icmp ne i64 %291, 0
  %293 = xor i1 %292, true
  %294 = xor i1 %293, true
  %295 = zext i1 %294 to i32
  %296 = sext i32 %295 to i64
  %297 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %298 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %297, i32 0, i32 2
  %299 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %298, i64 0, i64 %296
  store %struct.jsw_avlnode* %290, %struct.jsw_avlnode** %299, align 8
  %300 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %301 = load i64, i64* %dir, align 8
  %302 = icmp ne i64 %301, 0
  %303 = xor i1 %302, true
  %304 = xor i1 %303, true
  %305 = zext i1 %304 to i32
  %306 = sext i32 %305 to i64
  %307 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %308 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %307, i32 0, i32 2
  %309 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %308, i64 0, i64 %306
  store %struct.jsw_avlnode* %300, %struct.jsw_avlnode** %309, align 8
  %310 = load i64, i64* %dir, align 8
  %311 = icmp ne i64 %310, 0
  %312 = xor i1 %311, true
  %313 = xor i1 %312, true
  %314 = zext i1 %313 to i32
  %315 = sext i32 %314 to i64
  %316 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %317 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %316, i32 0, i32 2
  %318 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %317, i64 0, i64 %315
  %319 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %318, align 8
  store %struct.jsw_avlnode* %319, %struct.jsw_avlnode** %save2, align 8
  %320 = load i64, i64* %dir, align 8
  %321 = icmp ne i64 %320, 0
  %322 = xor i1 %321, true
  %323 = zext i1 %322 to i32
  %324 = sext i32 %323 to i64
  %325 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %326 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %325, i32 0, i32 2
  %327 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %326, i64 0, i64 %324
  %328 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %327, align 8
  %329 = load i64, i64* %dir, align 8
  %330 = icmp ne i64 %329, 0
  %331 = xor i1 %330, true
  %332 = xor i1 %331, true
  %333 = zext i1 %332 to i32
  %334 = sext i32 %333 to i64
  %335 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %336 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %335, i32 0, i32 2
  %337 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %336, i64 0, i64 %334
  store %struct.jsw_avlnode* %328, %struct.jsw_avlnode** %337, align 8
  %338 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %339 = load i64, i64* %dir, align 8
  %340 = icmp ne i64 %339, 0
  %341 = xor i1 %340, true
  %342 = zext i1 %341 to i32
  %343 = sext i32 %342 to i64
  %344 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %345 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %344, i32 0, i32 2
  %346 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %345, i64 0, i64 %343
  store %struct.jsw_avlnode* %338, %struct.jsw_avlnode** %346, align 8
  %347 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  store %struct.jsw_avlnode* %347, %struct.jsw_avlnode** %s, align 8
  br label %348

; <label>:348                                     ; preds = %235
  br label %349

; <label>:349                                     ; preds = %348, %185
  br label %350

; <label>:350                                     ; preds = %349
  br label %351

; <label>:351                                     ; preds = %350, %106
  %352 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %353 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %head, i32 0, i32 2
  %354 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %353, i64 0, i64 1
  %355 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %354, align 8
  %356 = icmp eq %struct.jsw_avlnode* %352, %355
  br i1 %356, label %357, label %361

; <label>:357                                     ; preds = %351
  %358 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %359 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %360 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %359, i32 0, i32 0
  store %struct.jsw_avlnode* %358, %struct.jsw_avlnode** %360, align 8
  br label %374

; <label>:361                                     ; preds = %351
  %362 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %363 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %364 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %365 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %364, i32 0, i32 2
  %366 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %365, i64 0, i64 1
  %367 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %366, align 8
  %368 = icmp eq %struct.jsw_avlnode* %363, %367
  %369 = zext i1 %368 to i32
  %370 = sext i32 %369 to i64
  %371 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %372 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %371, i32 0, i32 2
  %373 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %372, i64 0, i64 %370
  store %struct.jsw_avlnode* %362, %struct.jsw_avlnode** %373, align 8
  br label %374

; <label>:374                                     ; preds = %361, %357
  br label %375

; <label>:375                                     ; preds = %374, %19
  %376 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %377 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %376, i32 0, i32 2
  %378 = load i64, i64* %377, align 8
  %379 = add i64 %378, 1
  store i64 %379, i64* %377, align 8
  store i64 1, i64* %1, align 8
  br label %380

; <label>:380                                     ; preds = %375, %73, %18
  %381 = load i64, i64* %1, align 8
  ret i64 %381
}

; Function Attrs: nounwind uwtable
define internal %struct.jsw_avlnode* @new_node(%struct.jsw_avltree* %tree, i8* %data) #12 {
  %1 = alloca %struct.jsw_avlnode*, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  %3 = alloca i8*, align 8
  %rn = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  store i8* %data, i8** %3, align 8
  %4 = call noalias i8* @malloc(i64 32) #8
  %5 = bitcast i8* %4 to %struct.jsw_avlnode*
  store %struct.jsw_avlnode* %5, %struct.jsw_avlnode** %rn, align 8
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %7 = icmp eq %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %1, align 8
  br label %22

; <label>:9                                       ; preds = %0
  %10 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %11 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %14 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %16 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %15, i32 0, i32 2
  %17 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %16, i64 0, i64 1
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %17, align 8
  %18 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %19 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %18, i32 0, i32 2
  %20 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %19, i64 0, i64 0
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %20, align 8
  %21 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  store %struct.jsw_avlnode* %21, %struct.jsw_avlnode** %1, align 8
  br label %22

; <label>:22                                      ; preds = %9, %8
  %23 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %1, align 8
  ret %struct.jsw_avlnode* %23
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #13

; Function Attrs: nounwind uwtable
define i64 @Pjsw_avlinsert(%struct.jsw_avltree* %tree, i8* %data) #12 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  %3 = alloca i8*, align 8
  %head = alloca %struct.jsw_avlnode, align 8
  %s = alloca %struct.jsw_avlnode*, align 8
  %t = alloca %struct.jsw_avlnode*, align 8
  %p = alloca %struct.jsw_avlnode*, align 8
  %q = alloca %struct.jsw_avlnode*, align 8
  %dir = alloca i64, align 8
  %n = alloca %struct.jsw_avlnode*, align 8
  %bal = alloca i64, align 8
  %save = alloca %struct.jsw_avlnode*, align 8
  %n1 = alloca %struct.jsw_avlnode*, align 8
  %nn = alloca %struct.jsw_avlnode*, align 8
  %save2 = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  store i8* %data, i8** %3, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %5 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %4, i32 0, i32 0
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %5, align 8
  %7 = icmp eq %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %20

; <label>:8                                       ; preds = %0
  %9 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.jsw_avlnode* @Pnew_node(%struct.jsw_avltree* %9, i8* %10)
  %12 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %13 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %12, i32 0, i32 0
  store %struct.jsw_avlnode* %11, %struct.jsw_avlnode** %13, align 8
  %14 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %15 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %14, i32 0, i32 0
  %16 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %15, align 8
  %17 = icmp eq %struct.jsw_avlnode* %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %8
  store i64 0, i64* %1, align 8
  br label %380

; <label>:19                                      ; preds = %8
  br label %375

; <label>:20                                      ; preds = %0
  %21 = bitcast %struct.jsw_avlnode* %head to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 32, i32 8, i1 false)
  store %struct.jsw_avlnode* %head, %struct.jsw_avlnode** %t, align 8
  %22 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %23 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %22, i32 0, i32 0
  %24 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %23, align 8
  %25 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %26 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %25, i32 0, i32 2
  %27 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %26, i64 0, i64 1
  store %struct.jsw_avlnode* %24, %struct.jsw_avlnode** %27, align 8
  %28 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %29 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %28, i32 0, i32 2
  %30 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %29, i64 0, i64 1
  %31 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %30, align 8
  store %struct.jsw_avlnode* %31, %struct.jsw_avlnode** %p, align 8
  store %struct.jsw_avlnode* %31, %struct.jsw_avlnode** %s, align 8
  br label %32

; <label>:32                                      ; preds = %61, %20
  %33 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %34 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %33, i32 0, i32 1
  %35 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %34, align 8
  %36 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %37 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 %35(i8* %38, i8* %39)
  %41 = icmp slt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %dir, align 8
  %44 = load i64, i64* %dir, align 8
  %45 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %46 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %45, i32 0, i32 2
  %47 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %46, i64 0, i64 %44
  %48 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %47, align 8
  store %struct.jsw_avlnode* %48, %struct.jsw_avlnode** %q, align 8
  %49 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %50 = icmp eq %struct.jsw_avlnode* %49, null
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %32
  br label %63

; <label>:52                                      ; preds = %32
  %53 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %54 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

; <label>:57                                      ; preds = %52
  %58 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  store %struct.jsw_avlnode* %58, %struct.jsw_avlnode** %t, align 8
  %59 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  store %struct.jsw_avlnode* %59, %struct.jsw_avlnode** %s, align 8
  br label %60

; <label>:60                                      ; preds = %57, %52
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  store %struct.jsw_avlnode* %62, %struct.jsw_avlnode** %p, align 8
  br label %32

; <label>:63                                      ; preds = %51
  %64 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = call %struct.jsw_avlnode* @Pnew_node(%struct.jsw_avltree* %64, i8* %65)
  store %struct.jsw_avlnode* %66, %struct.jsw_avlnode** %q, align 8
  %67 = load i64, i64* %dir, align 8
  %68 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %69 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %68, i32 0, i32 2
  %70 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %69, i64 0, i64 %67
  store %struct.jsw_avlnode* %66, %struct.jsw_avlnode** %70, align 8
  %71 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %72 = icmp eq %struct.jsw_avlnode* %71, null
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %63
  store i64 0, i64* %1, align 8
  br label %380

; <label>:74                                      ; preds = %63
  %75 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  store %struct.jsw_avlnode* %75, %struct.jsw_avlnode** %p, align 8
  br label %76

; <label>:76                                      ; preds = %100, %74
  %77 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %78 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %79 = icmp ne %struct.jsw_avlnode* %77, %78
  br i1 %79, label %80, label %106

; <label>:80                                      ; preds = %76
  %81 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %82 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %81, i32 0, i32 1
  %83 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %82, align 8
  %84 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %85 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = call i64 %83(i8* %86, i8* %87)
  %89 = icmp slt i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %dir, align 8
  %92 = load i64, i64* %dir, align 8
  %93 = icmp eq i64 %92, 0
  %94 = select i1 %93, i32 -1, i32 1
  %95 = sext i32 %94 to i64
  %96 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %97 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  br label %100

; <label>:100                                     ; preds = %80
  %101 = load i64, i64* %dir, align 8
  %102 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %p, align 8
  %103 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %102, i32 0, i32 2
  %104 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %103, i64 0, i64 %101
  %105 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %104, align 8
  store %struct.jsw_avlnode* %105, %struct.jsw_avlnode** %p, align 8
  br label %76

; <label>:106                                     ; preds = %76
  %107 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  store %struct.jsw_avlnode* %107, %struct.jsw_avlnode** %q, align 8
  %108 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %109 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @abs(i32 %111) #19
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %351

; <label>:114                                     ; preds = %106
  %115 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %116 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %115, i32 0, i32 1
  %117 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %116, align 8
  %118 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %119 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %3, align 8
  %122 = call i64 %117(i8* %120, i8* %121)
  %123 = icmp slt i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %dir, align 8
  br label %126

; <label>:126                                     ; preds = %114
  %127 = load i64, i64* %dir, align 8
  %128 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %129 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %128, i32 0, i32 2
  %130 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %129, i64 0, i64 %127
  %131 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %130, align 8
  store %struct.jsw_avlnode* %131, %struct.jsw_avlnode** %n, align 8
  %132 = load i64, i64* %dir, align 8
  %133 = icmp eq i64 %132, 0
  %134 = select i1 %133, i32 -1, i32 1
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %bal, align 8
  %136 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %137 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %bal, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %186

; <label>:141                                     ; preds = %126
  %142 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %143 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %145 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  br label %146

; <label>:146                                     ; preds = %141
  %147 = load i64, i64* %dir, align 8
  %148 = icmp ne i64 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %154 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %153, i32 0, i32 2
  %155 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %154, i64 0, i64 %152
  %156 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %155, align 8
  store %struct.jsw_avlnode* %156, %struct.jsw_avlnode** %save, align 8
  %157 = load i64, i64* %dir, align 8
  %158 = icmp ne i64 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = sext i32 %160 to i64
  %162 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %163 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %162, i32 0, i32 2
  %164 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %163, i64 0, i64 %161
  %165 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %164, align 8
  %166 = load i64, i64* %dir, align 8
  %167 = icmp ne i64 %166, 0
  %168 = xor i1 %167, true
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = sext i32 %170 to i64
  %172 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %173 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %172, i32 0, i32 2
  %174 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %173, i64 0, i64 %171
  store %struct.jsw_avlnode* %165, %struct.jsw_avlnode** %174, align 8
  %175 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %176 = load i64, i64* %dir, align 8
  %177 = icmp ne i64 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = sext i32 %179 to i64
  %181 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  %182 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %181, i32 0, i32 2
  %183 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %182, i64 0, i64 %180
  store %struct.jsw_avlnode* %175, %struct.jsw_avlnode** %183, align 8
  %184 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save, align 8
  store %struct.jsw_avlnode* %184, %struct.jsw_avlnode** %s, align 8
  br label %185

; <label>:185                                     ; preds = %146
  br label %349

; <label>:186                                     ; preds = %126
  br label %187

; <label>:187                                     ; preds = %186
  %188 = load i64, i64* %dir, align 8
  %189 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %190 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %189, i32 0, i32 2
  %191 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %190, i64 0, i64 %188
  %192 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %191, align 8
  store %struct.jsw_avlnode* %192, %struct.jsw_avlnode** %n1, align 8
  %193 = load i64, i64* %dir, align 8
  %194 = icmp ne i64 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = sext i32 %196 to i64
  %198 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %199 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %198, i32 0, i32 2
  %200 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %199, i64 0, i64 %197
  %201 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %200, align 8
  store %struct.jsw_avlnode* %201, %struct.jsw_avlnode** %nn, align 8
  %202 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %203 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %211

; <label>:206                                     ; preds = %187
  %207 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %208 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %207, i32 0, i32 0
  store i64 0, i64* %208, align 8
  %209 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %210 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %209, i32 0, i32 0
  store i64 0, i64* %210, align 8
  br label %231

; <label>:211                                     ; preds = %187
  %212 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %213 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %bal, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %224

; <label>:217                                     ; preds = %211
  %218 = load i64, i64* %bal, align 8
  %219 = sub nsw i64 0, %218
  %220 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %221 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %220, i32 0, i32 0
  store i64 %219, i64* %221, align 8
  %222 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %223 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %222, i32 0, i32 0
  store i64 0, i64* %223, align 8
  br label %230

; <label>:224                                     ; preds = %211
  %225 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %226 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  %227 = load i64, i64* %bal, align 8
  %228 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n1, align 8
  %229 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %228, i32 0, i32 0
  store i64 %227, i64* %229, align 8
  br label %230

; <label>:230                                     ; preds = %224, %217
  br label %231

; <label>:231                                     ; preds = %230, %206
  %232 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %233 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %232, i32 0, i32 0
  store i64 0, i64* %233, align 8
  br label %234

; <label>:234                                     ; preds = %231
  br label %235

; <label>:235                                     ; preds = %234
  %236 = load i64, i64* %dir, align 8
  %237 = icmp ne i64 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* %dir, align 8
  %242 = icmp ne i64 %241, 0
  %243 = xor i1 %242, true
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = sext i32 %245 to i64
  %247 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %248 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %247, i32 0, i32 2
  %249 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %248, i64 0, i64 %246
  %250 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %249, align 8
  %251 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %250, i32 0, i32 2
  %252 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %251, i64 0, i64 %240
  %253 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %252, align 8
  store %struct.jsw_avlnode* %253, %struct.jsw_avlnode** %save2, align 8
  %254 = load i64, i64* %dir, align 8
  %255 = icmp ne i64 %254, 0
  %256 = xor i1 %255, true
  %257 = xor i1 %256, true
  %258 = zext i1 %257 to i32
  %259 = sext i32 %258 to i64
  %260 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %261 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %260, i32 0, i32 2
  %262 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %261, i64 0, i64 %259
  %263 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %262, align 8
  %264 = load i64, i64* %dir, align 8
  %265 = icmp ne i64 %264, 0
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* %dir, align 8
  %270 = icmp ne i64 %269, 0
  %271 = xor i1 %270, true
  %272 = xor i1 %271, true
  %273 = zext i1 %272 to i32
  %274 = sext i32 %273 to i64
  %275 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %276 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %275, i32 0, i32 2
  %277 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %276, i64 0, i64 %274
  %278 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %277, align 8
  %279 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %278, i32 0, i32 2
  %280 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %279, i64 0, i64 %268
  store %struct.jsw_avlnode* %263, %struct.jsw_avlnode** %280, align 8
  %281 = load i64, i64* %dir, align 8
  %282 = icmp ne i64 %281, 0
  %283 = xor i1 %282, true
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  %286 = sext i32 %285 to i64
  %287 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %288 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %287, i32 0, i32 2
  %289 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %288, i64 0, i64 %286
  %290 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %289, align 8
  %291 = load i64, i64* %dir, align 8
  %292 = icmp ne i64 %291, 0
  %293 = xor i1 %292, true
  %294 = xor i1 %293, true
  %295 = zext i1 %294 to i32
  %296 = sext i32 %295 to i64
  %297 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %298 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %297, i32 0, i32 2
  %299 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %298, i64 0, i64 %296
  store %struct.jsw_avlnode* %290, %struct.jsw_avlnode** %299, align 8
  %300 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %301 = load i64, i64* %dir, align 8
  %302 = icmp ne i64 %301, 0
  %303 = xor i1 %302, true
  %304 = xor i1 %303, true
  %305 = zext i1 %304 to i32
  %306 = sext i32 %305 to i64
  %307 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %308 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %307, i32 0, i32 2
  %309 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %308, i64 0, i64 %306
  store %struct.jsw_avlnode* %300, %struct.jsw_avlnode** %309, align 8
  %310 = load i64, i64* %dir, align 8
  %311 = icmp ne i64 %310, 0
  %312 = xor i1 %311, true
  %313 = xor i1 %312, true
  %314 = zext i1 %313 to i32
  %315 = sext i32 %314 to i64
  %316 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %317 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %316, i32 0, i32 2
  %318 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %317, i64 0, i64 %315
  %319 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %318, align 8
  store %struct.jsw_avlnode* %319, %struct.jsw_avlnode** %save2, align 8
  %320 = load i64, i64* %dir, align 8
  %321 = icmp ne i64 %320, 0
  %322 = xor i1 %321, true
  %323 = zext i1 %322 to i32
  %324 = sext i32 %323 to i64
  %325 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %326 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %325, i32 0, i32 2
  %327 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %326, i64 0, i64 %324
  %328 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %327, align 8
  %329 = load i64, i64* %dir, align 8
  %330 = icmp ne i64 %329, 0
  %331 = xor i1 %330, true
  %332 = xor i1 %331, true
  %333 = zext i1 %332 to i32
  %334 = sext i32 %333 to i64
  %335 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %336 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %335, i32 0, i32 2
  %337 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %336, i64 0, i64 %334
  store %struct.jsw_avlnode* %328, %struct.jsw_avlnode** %337, align 8
  %338 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %339 = load i64, i64* %dir, align 8
  %340 = icmp ne i64 %339, 0
  %341 = xor i1 %340, true
  %342 = zext i1 %341 to i32
  %343 = sext i32 %342 to i64
  %344 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  %345 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %344, i32 0, i32 2
  %346 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %345, i64 0, i64 %343
  store %struct.jsw_avlnode* %338, %struct.jsw_avlnode** %346, align 8
  %347 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save2, align 8
  store %struct.jsw_avlnode* %347, %struct.jsw_avlnode** %s, align 8
  br label %348

; <label>:348                                     ; preds = %235
  br label %349

; <label>:349                                     ; preds = %348, %185
  br label %350

; <label>:350                                     ; preds = %349
  br label %351

; <label>:351                                     ; preds = %350, %106
  %352 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %353 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %head, i32 0, i32 2
  %354 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %353, i64 0, i64 1
  %355 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %354, align 8
  %356 = icmp eq %struct.jsw_avlnode* %352, %355
  br i1 %356, label %357, label %361

; <label>:357                                     ; preds = %351
  %358 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %359 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %360 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %359, i32 0, i32 0
  store %struct.jsw_avlnode* %358, %struct.jsw_avlnode** %360, align 8
  br label %374

; <label>:361                                     ; preds = %351
  %362 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %s, align 8
  %363 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %q, align 8
  %364 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %365 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %364, i32 0, i32 2
  %366 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %365, i64 0, i64 1
  %367 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %366, align 8
  %368 = icmp eq %struct.jsw_avlnode* %363, %367
  %369 = zext i1 %368 to i32
  %370 = sext i32 %369 to i64
  %371 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %t, align 8
  %372 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %371, i32 0, i32 2
  %373 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %372, i64 0, i64 %370
  store %struct.jsw_avlnode* %362, %struct.jsw_avlnode** %373, align 8
  br label %374

; <label>:374                                     ; preds = %361, %357
  br label %375

; <label>:375                                     ; preds = %374, %19
  %376 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %377 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %376, i32 0, i32 2
  %378 = load i64, i64* %377, align 8
  %379 = add i64 %378, 1
  store i64 %379, i64* %377, align 8
  store i64 1, i64* %1, align 8
  br label %380

; <label>:380                                     ; preds = %375, %73, %18
  %381 = load i64, i64* %1, align 8
  ret i64 %381
}

; Function Attrs: nounwind uwtable
define internal %struct.jsw_avlnode* @Pnew_node(%struct.jsw_avltree* %tree, i8* %data) #12 {
  %1 = alloca %struct.jsw_avlnode*, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  %3 = alloca i8*, align 8
  %rn = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  store i8* %data, i8** %3, align 8
  %4 = call noalias i8* @malloc(i64 32) #8
  %5 = bitcast i8* %4 to %struct.jsw_avlnode*
  store %struct.jsw_avlnode* %5, %struct.jsw_avlnode** %rn, align 8
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %7 = icmp eq %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %1, align 8
  br label %22

; <label>:9                                       ; preds = %0
  %10 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %11 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %14 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %16 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %15, i32 0, i32 2
  %17 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %16, i64 0, i64 1
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %17, align 8
  %18 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  %19 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %18, i32 0, i32 2
  %20 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %19, i64 0, i64 0
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %20, align 8
  %21 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %rn, align 8
  store %struct.jsw_avlnode* %21, %struct.jsw_avlnode** %1, align 8
  br label %22

; <label>:22                                      ; preds = %9, %8
  %23 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %1, align 8
  ret %struct.jsw_avlnode* %23
}

; Function Attrs: nounwind uwtable
define i64 @jsw_avlerase(%struct.jsw_avltree* %tree, i8* %data) #12 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  %3 = alloca i8*, align 8
  %it = alloca %struct.jsw_avlnode*, align 8
  %up = alloca [64 x %struct.jsw_avlnode*], align 16
  %upd = alloca [64 x i64], align 16
  %top = alloca i64, align 8
  %done = alloca i64, align 8
  %dir = alloca i64, align 8
  %heir = alloca %struct.jsw_avlnode*, align 8
  %save = alloca i8*, align 8
  %n = alloca %struct.jsw_avlnode*, align 8
  %bal = alloca i64, align 8
  %save1 = alloca %struct.jsw_avlnode*, align 8
  %n2 = alloca %struct.jsw_avlnode*, align 8
  %nn = alloca %struct.jsw_avlnode*, align 8
  %save3 = alloca %struct.jsw_avlnode*, align 8
  %save4 = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  store i8* %data, i8** %3, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %5 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %4, i32 0, i32 0
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %5, align 8
  %7 = icmp ne %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %574

; <label>:8                                       ; preds = %0
  store i64 0, i64* %top, align 8
  store i64 0, i64* %done, align 8
  %9 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %10 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %9, i32 0, i32 0
  %11 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %10, align 8
  store %struct.jsw_avlnode* %11, %struct.jsw_avlnode** %it, align 8
  br label %12

; <label>:12                                      ; preds = %28, %8
  %13 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %14 = icmp eq %struct.jsw_avlnode* %13, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %12
  store i64 0, i64* %1, align 8
  br label %579

; <label>:16                                      ; preds = %12
  %17 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %18 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %17, i32 0, i32 1
  %19 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %18, align 8
  %20 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %21 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 %19(i8* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %16
  br label %54

; <label>:27                                      ; preds = %16
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %30 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %29, i32 0, i32 1
  %31 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %30, align 8
  %32 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %33 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 %31(i8* %34, i8* %35)
  %37 = icmp slt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %top, align 8
  %41 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %40
  store i64 %39, i64* %41, align 8
  %42 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %43 = load i64, i64* %top, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %top, align 8
  %45 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %43
  store %struct.jsw_avlnode* %42, %struct.jsw_avlnode** %45, align 8
  %46 = load i64, i64* %top, align 8
  %47 = sub nsw i64 %46, 1
  %48 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %51 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %50, i32 0, i32 2
  %52 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %51, i64 0, i64 %49
  %53 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %52, align 8
  store %struct.jsw_avlnode* %53, %struct.jsw_avlnode** %it, align 8
  br label %12

; <label>:54                                      ; preds = %26
  %55 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %56 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %55, i32 0, i32 2
  %57 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %56, i64 0, i64 0
  %58 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %57, align 8
  %59 = icmp eq %struct.jsw_avlnode* %58, null
  br i1 %59, label %66, label %60

; <label>:60                                      ; preds = %54
  %61 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %62 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %61, i32 0, i32 2
  %63 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %62, i64 0, i64 1
  %64 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %63, align 8
  %65 = icmp eq %struct.jsw_avlnode* %64, null
  br i1 %65, label %66, label %103

; <label>:66                                      ; preds = %60, %54
  %67 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %68 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %67, i32 0, i32 2
  %69 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %68, i64 0, i64 0
  %70 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %69, align 8
  %71 = icmp eq %struct.jsw_avlnode* %70, null
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %dir, align 8
  %74 = load i64, i64* %top, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

; <label>:76                                      ; preds = %66
  %77 = load i64, i64* %dir, align 8
  %78 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %79 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %78, i32 0, i32 2
  %80 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %79, i64 0, i64 %77
  %81 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %80, align 8
  %82 = load i64, i64* %top, align 8
  %83 = sub nsw i64 %82, 1
  %84 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %top, align 8
  %87 = sub nsw i64 %86, 1
  %88 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %87
  %89 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %88, align 8
  %90 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %89, i32 0, i32 2
  %91 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %90, i64 0, i64 %85
  store %struct.jsw_avlnode* %81, %struct.jsw_avlnode** %91, align 8
  br label %100

; <label>:92                                      ; preds = %66
  %93 = load i64, i64* %dir, align 8
  %94 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %95 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %94, i32 0, i32 2
  %96 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %95, i64 0, i64 %93
  %97 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %96, align 8
  %98 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %99 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %98, i32 0, i32 0
  store %struct.jsw_avlnode* %97, %struct.jsw_avlnode** %99, align 8
  br label %100

; <label>:100                                     ; preds = %92, %76
  %101 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %102 = bitcast %struct.jsw_avlnode* %101 to i8*
  call void @free(i8* %102) #8
  br label %163

; <label>:103                                     ; preds = %60
  %104 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %105 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %104, i32 0, i32 2
  %106 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %105, i64 0, i64 1
  %107 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %106, align 8
  store %struct.jsw_avlnode* %107, %struct.jsw_avlnode** %heir, align 8
  %108 = load i64, i64* %top, align 8
  %109 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %108
  store i64 1, i64* %109, align 8
  %110 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %111 = load i64, i64* %top, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %top, align 8
  %113 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %111
  store %struct.jsw_avlnode* %110, %struct.jsw_avlnode** %113, align 8
  br label %114

; <label>:114                                     ; preds = %120, %103
  %115 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %116 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %115, i32 0, i32 2
  %117 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %116, i64 0, i64 0
  %118 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %117, align 8
  %119 = icmp ne %struct.jsw_avlnode* %118, null
  br i1 %119, label %120, label %131

; <label>:120                                     ; preds = %114
  %121 = load i64, i64* %top, align 8
  %122 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %121
  store i64 0, i64* %122, align 8
  %123 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %124 = load i64, i64* %top, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %top, align 8
  %126 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %124
  store %struct.jsw_avlnode* %123, %struct.jsw_avlnode** %126, align 8
  %127 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %128 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %127, i32 0, i32 2
  %129 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %128, i64 0, i64 0
  %130 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %129, align 8
  store %struct.jsw_avlnode* %130, %struct.jsw_avlnode** %heir, align 8
  br label %114

; <label>:131                                     ; preds = %114
  %132 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %133 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %save, align 8
  %135 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %136 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %139 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load i8*, i8** %save, align 8
  %141 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %142 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %144 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %143, i32 0, i32 2
  %145 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %144, i64 0, i64 1
  %146 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %145, align 8
  %147 = load i64, i64* %top, align 8
  %148 = sub nsw i64 %147, 1
  %149 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %148
  %150 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %149, align 8
  %151 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %152 = icmp eq %struct.jsw_avlnode* %150, %151
  %153 = zext i1 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %top, align 8
  %156 = sub nsw i64 %155, 1
  %157 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %156
  %158 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %157, align 8
  %159 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %158, i32 0, i32 2
  %160 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %159, i64 0, i64 %154
  store %struct.jsw_avlnode* %146, %struct.jsw_avlnode** %160, align 8
  %161 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %162 = bitcast %struct.jsw_avlnode* %161 to i8*
  call void @free(i8* %162) #8
  br label %163

; <label>:163                                     ; preds = %131, %100
  br label %164

; <label>:164                                     ; preds = %572, %163
  %165 = load i64, i64* %top, align 8
  %166 = add nsw i64 %165, -1
  store i64 %166, i64* %top, align 8
  %167 = icmp sge i64 %166, 0
  br i1 %167, label %168, label %172

; <label>:168                                     ; preds = %164
  %169 = load i64, i64* %done, align 8
  %170 = icmp ne i64 %169, 0
  %171 = xor i1 %170, true
  br label %172

; <label>:172                                     ; preds = %168, %164
  %173 = phi i1 [ false, %164 ], [ %171, %168 ]
  br i1 %173, label %174, label %573

; <label>:174                                     ; preds = %172
  %175 = load i64, i64* %top, align 8
  %176 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  %179 = select i1 %178, i32 -1, i32 1
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %top, align 8
  %182 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %181
  %183 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %182, align 8
  %184 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, %180
  store i64 %186, i64* %184, align 8
  %187 = load i64, i64* %top, align 8
  %188 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %187
  %189 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %188, align 8
  %190 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = call i32 @abs(i32 %192) #19
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %196

; <label>:195                                     ; preds = %174
  br label %573

; <label>:196                                     ; preds = %174
  %197 = load i64, i64* %top, align 8
  %198 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %197
  %199 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %198, align 8
  %200 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @abs(i32 %202) #19
  %204 = icmp sgt i32 %203, 1
  br i1 %204, label %205, label %571

; <label>:205                                     ; preds = %196
  br label %206

; <label>:206                                     ; preds = %205
  %207 = load i64, i64* %top, align 8
  %208 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %top, align 8
  %215 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %214
  %216 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %215, align 8
  %217 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %216, i32 0, i32 2
  %218 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %217, i64 0, i64 %213
  %219 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %218, align 8
  store %struct.jsw_avlnode* %219, %struct.jsw_avlnode** %n, align 8
  %220 = load i64, i64* %top, align 8
  %221 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = icmp eq i64 %222, 0
  %224 = select i1 %223, i32 -1, i32 1
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %bal, align 8
  %226 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %227 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* %bal, align 8
  %230 = sub nsw i64 0, %229
  %231 = icmp eq i64 %228, %230
  br i1 %231, label %232, label %285

; <label>:232                                     ; preds = %206
  %233 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %234 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  %235 = load i64, i64* %top, align 8
  %236 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %235
  %237 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %236, align 8
  %238 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %237, i32 0, i32 0
  store i64 0, i64* %238, align 8
  br label %239

; <label>:239                                     ; preds = %232
  %240 = load i64, i64* %top, align 8
  %241 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = sext i32 %245 to i64
  %247 = load i64, i64* %top, align 8
  %248 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %247
  %249 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %248, align 8
  %250 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %249, i32 0, i32 2
  %251 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %250, i64 0, i64 %246
  %252 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %251, align 8
  store %struct.jsw_avlnode* %252, %struct.jsw_avlnode** %save1, align 8
  %253 = load i64, i64* %top, align 8
  %254 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save1, align 8
  %257 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %256, i32 0, i32 2
  %258 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %257, i64 0, i64 %255
  %259 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %258, align 8
  %260 = load i64, i64* %top, align 8
  %261 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  %266 = sext i32 %265 to i64
  %267 = load i64, i64* %top, align 8
  %268 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %267
  %269 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %268, align 8
  %270 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %269, i32 0, i32 2
  %271 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %270, i64 0, i64 %266
  store %struct.jsw_avlnode* %259, %struct.jsw_avlnode** %271, align 8
  %272 = load i64, i64* %top, align 8
  %273 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %272
  %274 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %273, align 8
  %275 = load i64, i64* %top, align 8
  %276 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save1, align 8
  %279 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %278, i32 0, i32 2
  %280 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %279, i64 0, i64 %277
  store %struct.jsw_avlnode* %274, %struct.jsw_avlnode** %280, align 8
  %281 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save1, align 8
  %282 = load i64, i64* %top, align 8
  %283 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %282
  store %struct.jsw_avlnode* %281, %struct.jsw_avlnode** %283, align 8
  br label %284

; <label>:284                                     ; preds = %239
  br label %547

; <label>:285                                     ; preds = %206
  %286 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %287 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %bal, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %490

; <label>:291                                     ; preds = %285
  br label %292

; <label>:292                                     ; preds = %291
  %293 = load i64, i64* %top, align 8
  %294 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  %297 = xor i1 %296, true
  %298 = zext i1 %297 to i32
  %299 = sext i32 %298 to i64
  %300 = load i64, i64* %top, align 8
  %301 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %300
  %302 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %301, align 8
  %303 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %302, i32 0, i32 2
  %304 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %303, i64 0, i64 %299
  %305 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %304, align 8
  store %struct.jsw_avlnode* %305, %struct.jsw_avlnode** %n2, align 8
  %306 = load i64, i64* %top, align 8
  %307 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  %310 = xor i1 %309, true
  %311 = xor i1 %310, true
  %312 = zext i1 %311 to i32
  %313 = sext i32 %312 to i64
  %314 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %315 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %314, i32 0, i32 2
  %316 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %315, i64 0, i64 %313
  %317 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %316, align 8
  store %struct.jsw_avlnode* %317, %struct.jsw_avlnode** %nn, align 8
  %318 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %319 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %329

; <label>:322                                     ; preds = %292
  %323 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %324 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %323, i32 0, i32 0
  store i64 0, i64* %324, align 8
  %325 = load i64, i64* %top, align 8
  %326 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %325
  %327 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %326, align 8
  %328 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %327, i32 0, i32 0
  store i64 0, i64* %328, align 8
  br label %356

; <label>:329                                     ; preds = %292
  %330 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %331 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* %bal, align 8
  %334 = sub nsw i64 0, %333
  %335 = icmp eq i64 %332, %334
  br i1 %335, label %336, label %346

; <label>:336                                     ; preds = %329
  %337 = load i64, i64* %bal, align 8
  %338 = sub nsw i64 0, %337
  %339 = sub nsw i64 0, %338
  %340 = load i64, i64* %top, align 8
  %341 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %340
  %342 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %341, align 8
  %343 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %342, i32 0, i32 0
  store i64 %339, i64* %343, align 8
  %344 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %345 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %344, i32 0, i32 0
  store i64 0, i64* %345, align 8
  br label %355

; <label>:346                                     ; preds = %329
  %347 = load i64, i64* %top, align 8
  %348 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %347
  %349 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %348, align 8
  %350 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %349, i32 0, i32 0
  store i64 0, i64* %350, align 8
  %351 = load i64, i64* %bal, align 8
  %352 = sub nsw i64 0, %351
  %353 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %354 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %353, i32 0, i32 0
  store i64 %352, i64* %354, align 8
  br label %355

; <label>:355                                     ; preds = %346, %336
  br label %356

; <label>:356                                     ; preds = %355, %322
  %357 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %358 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %357, i32 0, i32 0
  store i64 0, i64* %358, align 8
  br label %359

; <label>:359                                     ; preds = %356
  br label %360

; <label>:360                                     ; preds = %359
  %361 = load i64, i64* %top, align 8
  %362 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* %top, align 8
  %365 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %364
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  %368 = xor i1 %367, true
  %369 = zext i1 %368 to i32
  %370 = sext i32 %369 to i64
  %371 = load i64, i64* %top, align 8
  %372 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %371
  %373 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %372, align 8
  %374 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %373, i32 0, i32 2
  %375 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %374, i64 0, i64 %370
  %376 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %375, align 8
  %377 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %376, i32 0, i32 2
  %378 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %377, i64 0, i64 %363
  %379 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %378, align 8
  store %struct.jsw_avlnode* %379, %struct.jsw_avlnode** %save3, align 8
  %380 = load i64, i64* %top, align 8
  %381 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  %384 = xor i1 %383, true
  %385 = zext i1 %384 to i32
  %386 = sext i32 %385 to i64
  %387 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %388 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %387, i32 0, i32 2
  %389 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %388, i64 0, i64 %386
  %390 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %389, align 8
  %391 = load i64, i64* %top, align 8
  %392 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* %top, align 8
  %395 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %394
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  %398 = xor i1 %397, true
  %399 = zext i1 %398 to i32
  %400 = sext i32 %399 to i64
  %401 = load i64, i64* %top, align 8
  %402 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %401
  %403 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %402, align 8
  %404 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %403, i32 0, i32 2
  %405 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %404, i64 0, i64 %400
  %406 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %405, align 8
  %407 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %406, i32 0, i32 2
  %408 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %407, i64 0, i64 %393
  store %struct.jsw_avlnode* %390, %struct.jsw_avlnode** %408, align 8
  %409 = load i64, i64* %top, align 8
  %410 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %409
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  %413 = xor i1 %412, true
  %414 = zext i1 %413 to i32
  %415 = sext i32 %414 to i64
  %416 = load i64, i64* %top, align 8
  %417 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %416
  %418 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %417, align 8
  %419 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %418, i32 0, i32 2
  %420 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %419, i64 0, i64 %415
  %421 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %420, align 8
  %422 = load i64, i64* %top, align 8
  %423 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  %426 = xor i1 %425, true
  %427 = zext i1 %426 to i32
  %428 = sext i32 %427 to i64
  %429 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %430 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %429, i32 0, i32 2
  %431 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %430, i64 0, i64 %428
  store %struct.jsw_avlnode* %421, %struct.jsw_avlnode** %431, align 8
  %432 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %433 = load i64, i64* %top, align 8
  %434 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %433
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  %437 = xor i1 %436, true
  %438 = zext i1 %437 to i32
  %439 = sext i32 %438 to i64
  %440 = load i64, i64* %top, align 8
  %441 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %440
  %442 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %441, align 8
  %443 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %442, i32 0, i32 2
  %444 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %443, i64 0, i64 %439
  store %struct.jsw_avlnode* %432, %struct.jsw_avlnode** %444, align 8
  %445 = load i64, i64* %top, align 8
  %446 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %445
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  %449 = xor i1 %448, true
  %450 = zext i1 %449 to i32
  %451 = sext i32 %450 to i64
  %452 = load i64, i64* %top, align 8
  %453 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %452
  %454 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %453, align 8
  %455 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %454, i32 0, i32 2
  %456 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %455, i64 0, i64 %451
  %457 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %456, align 8
  store %struct.jsw_avlnode* %457, %struct.jsw_avlnode** %save3, align 8
  %458 = load i64, i64* %top, align 8
  %459 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %458
  %460 = load i64, i64* %459, align 8
  %461 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %462 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %461, i32 0, i32 2
  %463 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %462, i64 0, i64 %460
  %464 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %463, align 8
  %465 = load i64, i64* %top, align 8
  %466 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %465
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  %469 = xor i1 %468, true
  %470 = zext i1 %469 to i32
  %471 = sext i32 %470 to i64
  %472 = load i64, i64* %top, align 8
  %473 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %472
  %474 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %473, align 8
  %475 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %474, i32 0, i32 2
  %476 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %475, i64 0, i64 %471
  store %struct.jsw_avlnode* %464, %struct.jsw_avlnode** %476, align 8
  %477 = load i64, i64* %top, align 8
  %478 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %477
  %479 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %478, align 8
  %480 = load i64, i64* %top, align 8
  %481 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %480
  %482 = load i64, i64* %481, align 8
  %483 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %484 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %483, i32 0, i32 2
  %485 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %484, i64 0, i64 %482
  store %struct.jsw_avlnode* %479, %struct.jsw_avlnode** %485, align 8
  %486 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %487 = load i64, i64* %top, align 8
  %488 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %487
  store %struct.jsw_avlnode* %486, %struct.jsw_avlnode** %488, align 8
  br label %489

; <label>:489                                     ; preds = %360
  br label %546

; <label>:490                                     ; preds = %285
  %491 = load i64, i64* %bal, align 8
  %492 = sub nsw i64 0, %491
  %493 = load i64, i64* %top, align 8
  %494 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %493
  %495 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %494, align 8
  %496 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %495, i32 0, i32 0
  store i64 %492, i64* %496, align 8
  %497 = load i64, i64* %bal, align 8
  %498 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %499 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %498, i32 0, i32 0
  store i64 %497, i64* %499, align 8
  br label %500

; <label>:500                                     ; preds = %490
  %501 = load i64, i64* %top, align 8
  %502 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %501
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  %505 = xor i1 %504, true
  %506 = zext i1 %505 to i32
  %507 = sext i32 %506 to i64
  %508 = load i64, i64* %top, align 8
  %509 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %508
  %510 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %509, align 8
  %511 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %510, i32 0, i32 2
  %512 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %511, i64 0, i64 %507
  %513 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %512, align 8
  store %struct.jsw_avlnode* %513, %struct.jsw_avlnode** %save4, align 8
  %514 = load i64, i64* %top, align 8
  %515 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %514
  %516 = load i64, i64* %515, align 8
  %517 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save4, align 8
  %518 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %517, i32 0, i32 2
  %519 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %518, i64 0, i64 %516
  %520 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %519, align 8
  %521 = load i64, i64* %top, align 8
  %522 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %521
  %523 = load i64, i64* %522, align 8
  %524 = icmp ne i64 %523, 0
  %525 = xor i1 %524, true
  %526 = zext i1 %525 to i32
  %527 = sext i32 %526 to i64
  %528 = load i64, i64* %top, align 8
  %529 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %528
  %530 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %529, align 8
  %531 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %530, i32 0, i32 2
  %532 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %531, i64 0, i64 %527
  store %struct.jsw_avlnode* %520, %struct.jsw_avlnode** %532, align 8
  %533 = load i64, i64* %top, align 8
  %534 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %533
  %535 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %534, align 8
  %536 = load i64, i64* %top, align 8
  %537 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %536
  %538 = load i64, i64* %537, align 8
  %539 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save4, align 8
  %540 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %539, i32 0, i32 2
  %541 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %540, i64 0, i64 %538
  store %struct.jsw_avlnode* %535, %struct.jsw_avlnode** %541, align 8
  %542 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save4, align 8
  %543 = load i64, i64* %top, align 8
  %544 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %543
  store %struct.jsw_avlnode* %542, %struct.jsw_avlnode** %544, align 8
  br label %545

; <label>:545                                     ; preds = %500
  store i64 1, i64* %done, align 8
  br label %546

; <label>:546                                     ; preds = %545, %489
  br label %547

; <label>:547                                     ; preds = %546, %284
  br label %548

; <label>:548                                     ; preds = %547
  %549 = load i64, i64* %top, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %565

; <label>:551                                     ; preds = %548
  %552 = load i64, i64* %top, align 8
  %553 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %552
  %554 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %553, align 8
  %555 = load i64, i64* %top, align 8
  %556 = sub nsw i64 %555, 1
  %557 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %556
  %558 = load i64, i64* %557, align 8
  %559 = load i64, i64* %top, align 8
  %560 = sub nsw i64 %559, 1
  %561 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %560
  %562 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %561, align 8
  %563 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %562, i32 0, i32 2
  %564 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %563, i64 0, i64 %558
  store %struct.jsw_avlnode* %554, %struct.jsw_avlnode** %564, align 8
  br label %570

; <label>:565                                     ; preds = %548
  %566 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 0
  %567 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %566, align 16
  %568 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %569 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %568, i32 0, i32 0
  store %struct.jsw_avlnode* %567, %struct.jsw_avlnode** %569, align 8
  br label %570

; <label>:570                                     ; preds = %565, %551
  br label %571

; <label>:571                                     ; preds = %570, %196
  br label %572

; <label>:572                                     ; preds = %571
  br label %164

; <label>:573                                     ; preds = %195, %172
  br label %574

; <label>:574                                     ; preds = %573, %0
  %575 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %576 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %575, i32 0, i32 2
  %577 = load i64, i64* %576, align 8
  %578 = add i64 %577, -1
  store i64 %578, i64* %576, align 8
  store i64 1, i64* %1, align 8
  br label %579

; <label>:579                                     ; preds = %574, %15
  %580 = load i64, i64* %1, align 8
  ret i64 %580
}

; Function Attrs: nounwind uwtable
define i64 @Pjsw_avlerase(%struct.jsw_avltree* %tree, i8* %data) #12 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  %3 = alloca i8*, align 8
  %it = alloca %struct.jsw_avlnode*, align 8
  %up = alloca [64 x %struct.jsw_avlnode*], align 16
  %upd = alloca [64 x i64], align 16
  %top = alloca i64, align 8
  %done = alloca i64, align 8
  %dir = alloca i64, align 8
  %heir = alloca %struct.jsw_avlnode*, align 8
  %save = alloca i8*, align 8
  %n = alloca %struct.jsw_avlnode*, align 8
  %bal = alloca i64, align 8
  %save1 = alloca %struct.jsw_avlnode*, align 8
  %n2 = alloca %struct.jsw_avlnode*, align 8
  %nn = alloca %struct.jsw_avlnode*, align 8
  %save3 = alloca %struct.jsw_avlnode*, align 8
  %save4 = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  store i8* %data, i8** %3, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %5 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %4, i32 0, i32 0
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %5, align 8
  %7 = icmp ne %struct.jsw_avlnode* %6, null
  br i1 %7, label %8, label %574

; <label>:8                                       ; preds = %0
  store i64 0, i64* %top, align 8
  store i64 0, i64* %done, align 8
  %9 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %10 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %9, i32 0, i32 0
  %11 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %10, align 8
  store %struct.jsw_avlnode* %11, %struct.jsw_avlnode** %it, align 8
  br label %12

; <label>:12                                      ; preds = %28, %8
  %13 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %14 = icmp eq %struct.jsw_avlnode* %13, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %12
  store i64 0, i64* %1, align 8
  br label %579

; <label>:16                                      ; preds = %12
  %17 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %18 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %17, i32 0, i32 1
  %19 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %18, align 8
  %20 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %21 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 %19(i8* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %16
  br label %54

; <label>:27                                      ; preds = %16
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %30 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %29, i32 0, i32 1
  %31 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %30, align 8
  %32 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %33 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 %31(i8* %34, i8* %35)
  %37 = icmp slt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %top, align 8
  %41 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %40
  store i64 %39, i64* %41, align 8
  %42 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %43 = load i64, i64* %top, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %top, align 8
  %45 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %43
  store %struct.jsw_avlnode* %42, %struct.jsw_avlnode** %45, align 8
  %46 = load i64, i64* %top, align 8
  %47 = sub nsw i64 %46, 1
  %48 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %51 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %50, i32 0, i32 2
  %52 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %51, i64 0, i64 %49
  %53 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %52, align 8
  store %struct.jsw_avlnode* %53, %struct.jsw_avlnode** %it, align 8
  br label %12

; <label>:54                                      ; preds = %26
  %55 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %56 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %55, i32 0, i32 2
  %57 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %56, i64 0, i64 0
  %58 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %57, align 8
  %59 = icmp eq %struct.jsw_avlnode* %58, null
  br i1 %59, label %66, label %60

; <label>:60                                      ; preds = %54
  %61 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %62 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %61, i32 0, i32 2
  %63 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %62, i64 0, i64 1
  %64 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %63, align 8
  %65 = icmp eq %struct.jsw_avlnode* %64, null
  br i1 %65, label %66, label %103

; <label>:66                                      ; preds = %60, %54
  %67 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %68 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %67, i32 0, i32 2
  %69 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %68, i64 0, i64 0
  %70 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %69, align 8
  %71 = icmp eq %struct.jsw_avlnode* %70, null
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %dir, align 8
  %74 = load i64, i64* %top, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

; <label>:76                                      ; preds = %66
  %77 = load i64, i64* %dir, align 8
  %78 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %79 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %78, i32 0, i32 2
  %80 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %79, i64 0, i64 %77
  %81 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %80, align 8
  %82 = load i64, i64* %top, align 8
  %83 = sub nsw i64 %82, 1
  %84 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %top, align 8
  %87 = sub nsw i64 %86, 1
  %88 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %87
  %89 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %88, align 8
  %90 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %89, i32 0, i32 2
  %91 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %90, i64 0, i64 %85
  store %struct.jsw_avlnode* %81, %struct.jsw_avlnode** %91, align 8
  br label %100

; <label>:92                                      ; preds = %66
  %93 = load i64, i64* %dir, align 8
  %94 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %95 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %94, i32 0, i32 2
  %96 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %95, i64 0, i64 %93
  %97 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %96, align 8
  %98 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %99 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %98, i32 0, i32 0
  store %struct.jsw_avlnode* %97, %struct.jsw_avlnode** %99, align 8
  br label %100

; <label>:100                                     ; preds = %92, %76
  %101 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %102 = bitcast %struct.jsw_avlnode* %101 to i8*
  call void @free(i8* %102) #8
  br label %163

; <label>:103                                     ; preds = %60
  %104 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %105 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %104, i32 0, i32 2
  %106 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %105, i64 0, i64 1
  %107 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %106, align 8
  store %struct.jsw_avlnode* %107, %struct.jsw_avlnode** %heir, align 8
  %108 = load i64, i64* %top, align 8
  %109 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %108
  store i64 1, i64* %109, align 8
  %110 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %111 = load i64, i64* %top, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %top, align 8
  %113 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %111
  store %struct.jsw_avlnode* %110, %struct.jsw_avlnode** %113, align 8
  br label %114

; <label>:114                                     ; preds = %120, %103
  %115 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %116 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %115, i32 0, i32 2
  %117 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %116, i64 0, i64 0
  %118 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %117, align 8
  %119 = icmp ne %struct.jsw_avlnode* %118, null
  br i1 %119, label %120, label %131

; <label>:120                                     ; preds = %114
  %121 = load i64, i64* %top, align 8
  %122 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %121
  store i64 0, i64* %122, align 8
  %123 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %124 = load i64, i64* %top, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %top, align 8
  %126 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %124
  store %struct.jsw_avlnode* %123, %struct.jsw_avlnode** %126, align 8
  %127 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %128 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %127, i32 0, i32 2
  %129 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %128, i64 0, i64 0
  %130 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %129, align 8
  store %struct.jsw_avlnode* %130, %struct.jsw_avlnode** %heir, align 8
  br label %114

; <label>:131                                     ; preds = %114
  %132 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %133 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %save, align 8
  %135 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %136 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %139 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load i8*, i8** %save, align 8
  %141 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %142 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %144 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %143, i32 0, i32 2
  %145 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %144, i64 0, i64 1
  %146 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %145, align 8
  %147 = load i64, i64* %top, align 8
  %148 = sub nsw i64 %147, 1
  %149 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %148
  %150 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %149, align 8
  %151 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %it, align 8
  %152 = icmp eq %struct.jsw_avlnode* %150, %151
  %153 = zext i1 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %top, align 8
  %156 = sub nsw i64 %155, 1
  %157 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %156
  %158 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %157, align 8
  %159 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %158, i32 0, i32 2
  %160 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %159, i64 0, i64 %154
  store %struct.jsw_avlnode* %146, %struct.jsw_avlnode** %160, align 8
  %161 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %heir, align 8
  %162 = bitcast %struct.jsw_avlnode* %161 to i8*
  call void @free(i8* %162) #8
  br label %163

; <label>:163                                     ; preds = %131, %100
  br label %164

; <label>:164                                     ; preds = %572, %163
  %165 = load i64, i64* %top, align 8
  %166 = add nsw i64 %165, -1
  store i64 %166, i64* %top, align 8
  %167 = icmp sge i64 %166, 0
  br i1 %167, label %168, label %172

; <label>:168                                     ; preds = %164
  %169 = load i64, i64* %done, align 8
  %170 = icmp ne i64 %169, 0
  %171 = xor i1 %170, true
  br label %172

; <label>:172                                     ; preds = %168, %164
  %173 = phi i1 [ false, %164 ], [ %171, %168 ]
  br i1 %173, label %174, label %573

; <label>:174                                     ; preds = %172
  %175 = load i64, i64* %top, align 8
  %176 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  %179 = select i1 %178, i32 -1, i32 1
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %top, align 8
  %182 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %181
  %183 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %182, align 8
  %184 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, %180
  store i64 %186, i64* %184, align 8
  %187 = load i64, i64* %top, align 8
  %188 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %187
  %189 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %188, align 8
  %190 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = call i32 @abs(i32 %192) #19
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %196

; <label>:195                                     ; preds = %174
  br label %573

; <label>:196                                     ; preds = %174
  %197 = load i64, i64* %top, align 8
  %198 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %197
  %199 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %198, align 8
  %200 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @abs(i32 %202) #19
  %204 = icmp sgt i32 %203, 1
  br i1 %204, label %205, label %571

; <label>:205                                     ; preds = %196
  br label %206

; <label>:206                                     ; preds = %205
  %207 = load i64, i64* %top, align 8
  %208 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %top, align 8
  %215 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %214
  %216 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %215, align 8
  %217 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %216, i32 0, i32 2
  %218 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %217, i64 0, i64 %213
  %219 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %218, align 8
  store %struct.jsw_avlnode* %219, %struct.jsw_avlnode** %n, align 8
  %220 = load i64, i64* %top, align 8
  %221 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = icmp eq i64 %222, 0
  %224 = select i1 %223, i32 -1, i32 1
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %bal, align 8
  %226 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %227 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* %bal, align 8
  %230 = sub nsw i64 0, %229
  %231 = icmp eq i64 %228, %230
  br i1 %231, label %232, label %285

; <label>:232                                     ; preds = %206
  %233 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %234 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  %235 = load i64, i64* %top, align 8
  %236 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %235
  %237 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %236, align 8
  %238 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %237, i32 0, i32 0
  store i64 0, i64* %238, align 8
  br label %239

; <label>:239                                     ; preds = %232
  %240 = load i64, i64* %top, align 8
  %241 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = sext i32 %245 to i64
  %247 = load i64, i64* %top, align 8
  %248 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %247
  %249 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %248, align 8
  %250 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %249, i32 0, i32 2
  %251 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %250, i64 0, i64 %246
  %252 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %251, align 8
  store %struct.jsw_avlnode* %252, %struct.jsw_avlnode** %save1, align 8
  %253 = load i64, i64* %top, align 8
  %254 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save1, align 8
  %257 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %256, i32 0, i32 2
  %258 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %257, i64 0, i64 %255
  %259 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %258, align 8
  %260 = load i64, i64* %top, align 8
  %261 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  %266 = sext i32 %265 to i64
  %267 = load i64, i64* %top, align 8
  %268 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %267
  %269 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %268, align 8
  %270 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %269, i32 0, i32 2
  %271 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %270, i64 0, i64 %266
  store %struct.jsw_avlnode* %259, %struct.jsw_avlnode** %271, align 8
  %272 = load i64, i64* %top, align 8
  %273 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %272
  %274 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %273, align 8
  %275 = load i64, i64* %top, align 8
  %276 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save1, align 8
  %279 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %278, i32 0, i32 2
  %280 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %279, i64 0, i64 %277
  store %struct.jsw_avlnode* %274, %struct.jsw_avlnode** %280, align 8
  %281 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save1, align 8
  %282 = load i64, i64* %top, align 8
  %283 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %282
  store %struct.jsw_avlnode* %281, %struct.jsw_avlnode** %283, align 8
  br label %284

; <label>:284                                     ; preds = %239
  br label %547

; <label>:285                                     ; preds = %206
  %286 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %287 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %bal, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %490

; <label>:291                                     ; preds = %285
  br label %292

; <label>:292                                     ; preds = %291
  %293 = load i64, i64* %top, align 8
  %294 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  %297 = xor i1 %296, true
  %298 = zext i1 %297 to i32
  %299 = sext i32 %298 to i64
  %300 = load i64, i64* %top, align 8
  %301 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %300
  %302 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %301, align 8
  %303 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %302, i32 0, i32 2
  %304 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %303, i64 0, i64 %299
  %305 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %304, align 8
  store %struct.jsw_avlnode* %305, %struct.jsw_avlnode** %n2, align 8
  %306 = load i64, i64* %top, align 8
  %307 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  %310 = xor i1 %309, true
  %311 = xor i1 %310, true
  %312 = zext i1 %311 to i32
  %313 = sext i32 %312 to i64
  %314 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %315 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %314, i32 0, i32 2
  %316 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %315, i64 0, i64 %313
  %317 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %316, align 8
  store %struct.jsw_avlnode* %317, %struct.jsw_avlnode** %nn, align 8
  %318 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %319 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %329

; <label>:322                                     ; preds = %292
  %323 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %324 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %323, i32 0, i32 0
  store i64 0, i64* %324, align 8
  %325 = load i64, i64* %top, align 8
  %326 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %325
  %327 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %326, align 8
  %328 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %327, i32 0, i32 0
  store i64 0, i64* %328, align 8
  br label %356

; <label>:329                                     ; preds = %292
  %330 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %331 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* %bal, align 8
  %334 = sub nsw i64 0, %333
  %335 = icmp eq i64 %332, %334
  br i1 %335, label %336, label %346

; <label>:336                                     ; preds = %329
  %337 = load i64, i64* %bal, align 8
  %338 = sub nsw i64 0, %337
  %339 = sub nsw i64 0, %338
  %340 = load i64, i64* %top, align 8
  %341 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %340
  %342 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %341, align 8
  %343 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %342, i32 0, i32 0
  store i64 %339, i64* %343, align 8
  %344 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %345 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %344, i32 0, i32 0
  store i64 0, i64* %345, align 8
  br label %355

; <label>:346                                     ; preds = %329
  %347 = load i64, i64* %top, align 8
  %348 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %347
  %349 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %348, align 8
  %350 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %349, i32 0, i32 0
  store i64 0, i64* %350, align 8
  %351 = load i64, i64* %bal, align 8
  %352 = sub nsw i64 0, %351
  %353 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n2, align 8
  %354 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %353, i32 0, i32 0
  store i64 %352, i64* %354, align 8
  br label %355

; <label>:355                                     ; preds = %346, %336
  br label %356

; <label>:356                                     ; preds = %355, %322
  %357 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %nn, align 8
  %358 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %357, i32 0, i32 0
  store i64 0, i64* %358, align 8
  br label %359

; <label>:359                                     ; preds = %356
  br label %360

; <label>:360                                     ; preds = %359
  %361 = load i64, i64* %top, align 8
  %362 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* %top, align 8
  %365 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %364
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  %368 = xor i1 %367, true
  %369 = zext i1 %368 to i32
  %370 = sext i32 %369 to i64
  %371 = load i64, i64* %top, align 8
  %372 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %371
  %373 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %372, align 8
  %374 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %373, i32 0, i32 2
  %375 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %374, i64 0, i64 %370
  %376 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %375, align 8
  %377 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %376, i32 0, i32 2
  %378 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %377, i64 0, i64 %363
  %379 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %378, align 8
  store %struct.jsw_avlnode* %379, %struct.jsw_avlnode** %save3, align 8
  %380 = load i64, i64* %top, align 8
  %381 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  %384 = xor i1 %383, true
  %385 = zext i1 %384 to i32
  %386 = sext i32 %385 to i64
  %387 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %388 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %387, i32 0, i32 2
  %389 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %388, i64 0, i64 %386
  %390 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %389, align 8
  %391 = load i64, i64* %top, align 8
  %392 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* %top, align 8
  %395 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %394
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  %398 = xor i1 %397, true
  %399 = zext i1 %398 to i32
  %400 = sext i32 %399 to i64
  %401 = load i64, i64* %top, align 8
  %402 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %401
  %403 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %402, align 8
  %404 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %403, i32 0, i32 2
  %405 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %404, i64 0, i64 %400
  %406 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %405, align 8
  %407 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %406, i32 0, i32 2
  %408 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %407, i64 0, i64 %393
  store %struct.jsw_avlnode* %390, %struct.jsw_avlnode** %408, align 8
  %409 = load i64, i64* %top, align 8
  %410 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %409
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  %413 = xor i1 %412, true
  %414 = zext i1 %413 to i32
  %415 = sext i32 %414 to i64
  %416 = load i64, i64* %top, align 8
  %417 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %416
  %418 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %417, align 8
  %419 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %418, i32 0, i32 2
  %420 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %419, i64 0, i64 %415
  %421 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %420, align 8
  %422 = load i64, i64* %top, align 8
  %423 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  %426 = xor i1 %425, true
  %427 = zext i1 %426 to i32
  %428 = sext i32 %427 to i64
  %429 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %430 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %429, i32 0, i32 2
  %431 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %430, i64 0, i64 %428
  store %struct.jsw_avlnode* %421, %struct.jsw_avlnode** %431, align 8
  %432 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %433 = load i64, i64* %top, align 8
  %434 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %433
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  %437 = xor i1 %436, true
  %438 = zext i1 %437 to i32
  %439 = sext i32 %438 to i64
  %440 = load i64, i64* %top, align 8
  %441 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %440
  %442 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %441, align 8
  %443 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %442, i32 0, i32 2
  %444 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %443, i64 0, i64 %439
  store %struct.jsw_avlnode* %432, %struct.jsw_avlnode** %444, align 8
  %445 = load i64, i64* %top, align 8
  %446 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %445
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  %449 = xor i1 %448, true
  %450 = zext i1 %449 to i32
  %451 = sext i32 %450 to i64
  %452 = load i64, i64* %top, align 8
  %453 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %452
  %454 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %453, align 8
  %455 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %454, i32 0, i32 2
  %456 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %455, i64 0, i64 %451
  %457 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %456, align 8
  store %struct.jsw_avlnode* %457, %struct.jsw_avlnode** %save3, align 8
  %458 = load i64, i64* %top, align 8
  %459 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %458
  %460 = load i64, i64* %459, align 8
  %461 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %462 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %461, i32 0, i32 2
  %463 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %462, i64 0, i64 %460
  %464 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %463, align 8
  %465 = load i64, i64* %top, align 8
  %466 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %465
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  %469 = xor i1 %468, true
  %470 = zext i1 %469 to i32
  %471 = sext i32 %470 to i64
  %472 = load i64, i64* %top, align 8
  %473 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %472
  %474 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %473, align 8
  %475 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %474, i32 0, i32 2
  %476 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %475, i64 0, i64 %471
  store %struct.jsw_avlnode* %464, %struct.jsw_avlnode** %476, align 8
  %477 = load i64, i64* %top, align 8
  %478 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %477
  %479 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %478, align 8
  %480 = load i64, i64* %top, align 8
  %481 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %480
  %482 = load i64, i64* %481, align 8
  %483 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %484 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %483, i32 0, i32 2
  %485 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %484, i64 0, i64 %482
  store %struct.jsw_avlnode* %479, %struct.jsw_avlnode** %485, align 8
  %486 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save3, align 8
  %487 = load i64, i64* %top, align 8
  %488 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %487
  store %struct.jsw_avlnode* %486, %struct.jsw_avlnode** %488, align 8
  br label %489

; <label>:489                                     ; preds = %360
  br label %546

; <label>:490                                     ; preds = %285
  %491 = load i64, i64* %bal, align 8
  %492 = sub nsw i64 0, %491
  %493 = load i64, i64* %top, align 8
  %494 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %493
  %495 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %494, align 8
  %496 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %495, i32 0, i32 0
  store i64 %492, i64* %496, align 8
  %497 = load i64, i64* %bal, align 8
  %498 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %n, align 8
  %499 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %498, i32 0, i32 0
  store i64 %497, i64* %499, align 8
  br label %500

; <label>:500                                     ; preds = %490
  %501 = load i64, i64* %top, align 8
  %502 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %501
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  %505 = xor i1 %504, true
  %506 = zext i1 %505 to i32
  %507 = sext i32 %506 to i64
  %508 = load i64, i64* %top, align 8
  %509 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %508
  %510 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %509, align 8
  %511 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %510, i32 0, i32 2
  %512 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %511, i64 0, i64 %507
  %513 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %512, align 8
  store %struct.jsw_avlnode* %513, %struct.jsw_avlnode** %save4, align 8
  %514 = load i64, i64* %top, align 8
  %515 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %514
  %516 = load i64, i64* %515, align 8
  %517 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save4, align 8
  %518 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %517, i32 0, i32 2
  %519 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %518, i64 0, i64 %516
  %520 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %519, align 8
  %521 = load i64, i64* %top, align 8
  %522 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %521
  %523 = load i64, i64* %522, align 8
  %524 = icmp ne i64 %523, 0
  %525 = xor i1 %524, true
  %526 = zext i1 %525 to i32
  %527 = sext i32 %526 to i64
  %528 = load i64, i64* %top, align 8
  %529 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %528
  %530 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %529, align 8
  %531 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %530, i32 0, i32 2
  %532 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %531, i64 0, i64 %527
  store %struct.jsw_avlnode* %520, %struct.jsw_avlnode** %532, align 8
  %533 = load i64, i64* %top, align 8
  %534 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %533
  %535 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %534, align 8
  %536 = load i64, i64* %top, align 8
  %537 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %536
  %538 = load i64, i64* %537, align 8
  %539 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save4, align 8
  %540 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %539, i32 0, i32 2
  %541 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %540, i64 0, i64 %538
  store %struct.jsw_avlnode* %535, %struct.jsw_avlnode** %541, align 8
  %542 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %save4, align 8
  %543 = load i64, i64* %top, align 8
  %544 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %543
  store %struct.jsw_avlnode* %542, %struct.jsw_avlnode** %544, align 8
  br label %545

; <label>:545                                     ; preds = %500
  store i64 1, i64* %done, align 8
  br label %546

; <label>:546                                     ; preds = %545, %489
  br label %547

; <label>:547                                     ; preds = %546, %284
  br label %548

; <label>:548                                     ; preds = %547
  %549 = load i64, i64* %top, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %565

; <label>:551                                     ; preds = %548
  %552 = load i64, i64* %top, align 8
  %553 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %552
  %554 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %553, align 8
  %555 = load i64, i64* %top, align 8
  %556 = sub nsw i64 %555, 1
  %557 = getelementptr inbounds [64 x i64], [64 x i64]* %upd, i64 0, i64 %556
  %558 = load i64, i64* %557, align 8
  %559 = load i64, i64* %top, align 8
  %560 = sub nsw i64 %559, 1
  %561 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 %560
  %562 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %561, align 8
  %563 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %562, i32 0, i32 2
  %564 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %563, i64 0, i64 %558
  store %struct.jsw_avlnode* %554, %struct.jsw_avlnode** %564, align 8
  br label %570

; <label>:565                                     ; preds = %548
  %566 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %up, i64 0, i64 0
  %567 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %566, align 16
  %568 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %569 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %568, i32 0, i32 0
  store %struct.jsw_avlnode* %567, %struct.jsw_avlnode** %569, align 8
  br label %570

; <label>:570                                     ; preds = %565, %551
  br label %571

; <label>:571                                     ; preds = %570, %196
  br label %572

; <label>:572                                     ; preds = %571
  br label %164

; <label>:573                                     ; preds = %195, %172
  br label %574

; <label>:574                                     ; preds = %573, %0
  %575 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %576 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %575, i32 0, i32 2
  %577 = load i64, i64* %576, align 8
  %578 = add i64 %577, -1
  store i64 %578, i64* %576, align 8
  store i64 1, i64* %1, align 8
  br label %579

; <label>:579                                     ; preds = %574, %15
  %580 = load i64, i64* %1, align 8
  ret i64 %580
}

; Function Attrs: nounwind uwtable
define i64 @jsw_avlsize(%struct.jsw_avltree* %tree) #12 {
  %1 = alloca %struct.jsw_avltree*, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %1, align 8
  %2 = load %struct.jsw_avltree*, %struct.jsw_avltree** %1, align 8
  %3 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %2, i32 0, i32 2
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define %struct.jsw_avltrav* @jsw_avltnew() #12 {
  %1 = call noalias i8* @malloc(i64 536) #8
  %2 = bitcast i8* %1 to %struct.jsw_avltrav*
  ret %struct.jsw_avltrav* %2
}

; Function Attrs: nounwind uwtable
define void @jsw_avltdelete(%struct.jsw_avltrav* %trav) #12 {
  %1 = alloca %struct.jsw_avltrav*, align 8
  store %struct.jsw_avltrav* %trav, %struct.jsw_avltrav** %1, align 8
  %2 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %3 = bitcast %struct.jsw_avltrav* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @jsw_avltfirst(%struct.jsw_avltrav* %trav, %struct.jsw_avltree* %tree) #12 {
  %1 = alloca %struct.jsw_avltrav*, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  store %struct.jsw_avltrav* %trav, %struct.jsw_avltrav** %1, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  %3 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %5 = call i8* @start(%struct.jsw_avltrav* %3, %struct.jsw_avltree* %4, i64 0)
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal i8* @start(%struct.jsw_avltrav* %trav, %struct.jsw_avltree* %tree, i64 %dir) #12 {
  %1 = alloca %struct.jsw_avltrav*, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  %3 = alloca i64, align 8
  store %struct.jsw_avltrav* %trav, %struct.jsw_avltrav** %1, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  store i64 %dir, i64* %3, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %5 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %6 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %5, i32 0, i32 0
  store %struct.jsw_avltree* %4, %struct.jsw_avltree** %6, align 8
  %7 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %8 = getelementptr inbounds %struct.jsw_avltree, %struct.jsw_avltree* %7, i32 0, i32 0
  %9 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %8, align 8
  %10 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %11 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %10, i32 0, i32 1
  store %struct.jsw_avlnode* %9, %struct.jsw_avlnode** %11, align 8
  %12 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %13 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %15 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %14, i32 0, i32 1
  %16 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %15, align 8
  %17 = icmp ne %struct.jsw_avlnode* %16, null
  br i1 %17, label %18, label %49

; <label>:18                                      ; preds = %0
  br label %19

; <label>:19                                      ; preds = %28, %18
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %22 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %21, i32 0, i32 1
  %23 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %22, align 8
  %24 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %23, i32 0, i32 2
  %25 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %24, i64 0, i64 %20
  %26 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %25, align 8
  %27 = icmp ne %struct.jsw_avlnode* %26, null
  br i1 %27, label %28, label %48

; <label>:28                                      ; preds = %19
  %29 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %30 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %29, i32 0, i32 1
  %31 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %30, align 8
  %32 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %33 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %37 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %36, i32 0, i32 2
  %38 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %37, i64 0, i64 %34
  store %struct.jsw_avlnode* %31, %struct.jsw_avlnode** %38, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %41 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %40, i32 0, i32 1
  %42 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %41, align 8
  %43 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %42, i32 0, i32 2
  %44 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %43, i64 0, i64 %39
  %45 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %44, align 8
  %46 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %47 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %46, i32 0, i32 1
  store %struct.jsw_avlnode* %45, %struct.jsw_avlnode** %47, align 8
  br label %19

; <label>:48                                      ; preds = %19
  br label %49

; <label>:49                                      ; preds = %48, %0
  %50 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %51 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %50, i32 0, i32 1
  %52 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %51, align 8
  %53 = icmp eq %struct.jsw_avlnode* %52, null
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %49
  br label %61

; <label>:55                                      ; preds = %49
  %56 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %57 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %56, i32 0, i32 1
  %58 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %57, align 8
  %59 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  br label %61

; <label>:61                                      ; preds = %55, %54
  %62 = phi i8* [ null, %54 ], [ %60, %55 ]
  ret i8* %62
}

; Function Attrs: nounwind uwtable
define i8* @jsw_avltlast(%struct.jsw_avltrav* %trav, %struct.jsw_avltree* %tree) #12 {
  %1 = alloca %struct.jsw_avltrav*, align 8
  %2 = alloca %struct.jsw_avltree*, align 8
  store %struct.jsw_avltrav* %trav, %struct.jsw_avltrav** %1, align 8
  store %struct.jsw_avltree* %tree, %struct.jsw_avltree** %2, align 8
  %3 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %2, align 8
  %5 = call i8* @start(%struct.jsw_avltrav* %3, %struct.jsw_avltree* %4, i64 1)
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define i8* @jsw_avltnext(%struct.jsw_avltrav* %trav) #12 {
  %1 = alloca %struct.jsw_avltrav*, align 8
  store %struct.jsw_avltrav* %trav, %struct.jsw_avltrav** %1, align 8
  %2 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %3 = call i8* @move(%struct.jsw_avltrav* %2, i64 1)
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal i8* @move(%struct.jsw_avltrav* %trav, i64 %dir) #12 {
  %1 = alloca %struct.jsw_avltrav*, align 8
  %2 = alloca i64, align 8
  %last = alloca %struct.jsw_avlnode*, align 8
  store %struct.jsw_avltrav* %trav, %struct.jsw_avltrav** %1, align 8
  store i64 %dir, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %5 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %4, i32 0, i32 1
  %6 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %5, align 8
  %7 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %6, i32 0, i32 2
  %8 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %7, i64 0, i64 %3
  %9 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %8, align 8
  %10 = icmp ne %struct.jsw_avlnode* %9, null
  br i1 %10, label %11, label %69

; <label>:11                                      ; preds = %0
  %12 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %13 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %12, i32 0, i32 1
  %14 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %13, align 8
  %15 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %16 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %20 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %19, i32 0, i32 2
  %21 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %20, i64 0, i64 %17
  store %struct.jsw_avlnode* %14, %struct.jsw_avlnode** %21, align 8
  %22 = load i64, i64* %2, align 8
  %23 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %24 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %23, i32 0, i32 1
  %25 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %24, align 8
  %26 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %25, i32 0, i32 2
  %27 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %26, i64 0, i64 %22
  %28 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %27, align 8
  %29 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %30 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %29, i32 0, i32 1
  store %struct.jsw_avlnode* %28, %struct.jsw_avlnode** %30, align 8
  br label %31

; <label>:31                                      ; preds = %44, %11
  %32 = load i64, i64* %2, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %38 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %37, i32 0, i32 1
  %39 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %38, align 8
  %40 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %39, i32 0, i32 2
  %41 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %40, i64 0, i64 %36
  %42 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %41, align 8
  %43 = icmp ne %struct.jsw_avlnode* %42, null
  br i1 %43, label %44, label %68

; <label>:44                                      ; preds = %31
  %45 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %46 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %45, i32 0, i32 1
  %47 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %46, align 8
  %48 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %49 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %53 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %52, i32 0, i32 2
  %54 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %53, i64 0, i64 %50
  store %struct.jsw_avlnode* %47, %struct.jsw_avlnode** %54, align 8
  %55 = load i64, i64* %2, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %61 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %60, i32 0, i32 1
  %62 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %61, align 8
  %63 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %62, i32 0, i32 2
  %64 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %63, i64 0, i64 %59
  %65 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %64, align 8
  %66 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %67 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %66, i32 0, i32 1
  store %struct.jsw_avlnode* %65, %struct.jsw_avlnode** %67, align 8
  br label %31

; <label>:68                                      ; preds = %31
  br label %103

; <label>:69                                      ; preds = %0
  br label %70

; <label>:70                                      ; preds = %92, %69
  %71 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %72 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

; <label>:75                                      ; preds = %70
  %76 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %77 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %76, i32 0, i32 1
  store %struct.jsw_avlnode* null, %struct.jsw_avlnode** %77, align 8
  br label %102

; <label>:78                                      ; preds = %70
  %79 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %80 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %79, i32 0, i32 1
  %81 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %80, align 8
  store %struct.jsw_avlnode* %81, %struct.jsw_avlnode** %last, align 8
  %82 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %83 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, -1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %87 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %86, i32 0, i32 2
  %88 = getelementptr inbounds [64 x %struct.jsw_avlnode*], [64 x %struct.jsw_avlnode*]* %87, i64 0, i64 %85
  %89 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %88, align 8
  %90 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %91 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %90, i32 0, i32 1
  store %struct.jsw_avlnode* %89, %struct.jsw_avlnode** %91, align 8
  br label %92

; <label>:92                                      ; preds = %78
  %93 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %last, align 8
  %94 = load i64, i64* %2, align 8
  %95 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %96 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %95, i32 0, i32 1
  %97 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %96, align 8
  %98 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %97, i32 0, i32 2
  %99 = getelementptr inbounds [2 x %struct.jsw_avlnode*], [2 x %struct.jsw_avlnode*]* %98, i64 0, i64 %94
  %100 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %99, align 8
  %101 = icmp eq %struct.jsw_avlnode* %93, %100
  br i1 %101, label %70, label %102

; <label>:102                                     ; preds = %92, %75
  br label %103

; <label>:103                                     ; preds = %102, %68
  %104 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %105 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %104, i32 0, i32 1
  %106 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %105, align 8
  %107 = icmp eq %struct.jsw_avlnode* %106, null
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %103
  br label %115

; <label>:109                                     ; preds = %103
  %110 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %111 = getelementptr inbounds %struct.jsw_avltrav, %struct.jsw_avltrav* %110, i32 0, i32 1
  %112 = load %struct.jsw_avlnode*, %struct.jsw_avlnode** %111, align 8
  %113 = getelementptr inbounds %struct.jsw_avlnode, %struct.jsw_avlnode* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  br label %115

; <label>:115                                     ; preds = %109, %108
  %116 = phi i8* [ null, %108 ], [ %114, %109 ]
  ret i8* %116
}

; Function Attrs: nounwind uwtable
define i8* @jsw_avltprev(%struct.jsw_avltrav* %trav) #12 {
  %1 = alloca %struct.jsw_avltrav*, align 8
  store %struct.jsw_avltrav* %trav, %struct.jsw_avltrav** %1, align 8
  %2 = load %struct.jsw_avltrav*, %struct.jsw_avltrav** %1, align 8
  %3 = call i8* @move(%struct.jsw_avltrav* %2, i64 0)
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define %struct.heap* @heap_alloc(i64 %initCapacity, i64 (i8*, i8*)* %compare) #12 {
  %1 = alloca i64, align 8
  %2 = alloca i64 (i8*, i8*)*, align 8
  %heapPtr = alloca %struct.heap*, align 8
  %capacity = alloca i64, align 8
  store i64 %initCapacity, i64* %1, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #8
  %4 = bitcast i8* %3 to %struct.heap*
  store %struct.heap* %4, %struct.heap** %heapPtr, align 8
  %5 = load %struct.heap*, %struct.heap** %heapPtr, align 8
  %6 = icmp ne %struct.heap* %5, null
  br i1 %6, label %7, label %37

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %1, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %7
  %11 = load i64, i64* %1, align 8
  br label %13

; <label>:12                                      ; preds = %7
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = phi i64 [ %11, %10 ], [ 1, %12 ]
  store i64 %14, i64* %capacity, align 8
  %15 = load i64, i64* %capacity, align 8
  %16 = mul i64 %15, 8
  %17 = call noalias i8* @malloc(i64 %16) #8
  %18 = bitcast i8* %17 to i8**
  %19 = load %struct.heap*, %struct.heap** %heapPtr, align 8
  %20 = getelementptr inbounds %struct.heap, %struct.heap* %19, i32 0, i32 0
  store i8** %18, i8*** %20, align 8
  %21 = load %struct.heap*, %struct.heap** %heapPtr, align 8
  %22 = getelementptr inbounds %struct.heap, %struct.heap* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %13
  br label %28

; <label>:26                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.107, i32 0, i32 0), i32 118, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.heap_alloc, i32 0, i32 0)) #18
  unreachable
                                                  ; No predecessors!
  br label %28

; <label>:28                                      ; preds = %27, %25
  %29 = load %struct.heap*, %struct.heap** %heapPtr, align 8
  %30 = getelementptr inbounds %struct.heap, %struct.heap* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* %capacity, align 8
  %32 = load %struct.heap*, %struct.heap** %heapPtr, align 8
  %33 = getelementptr inbounds %struct.heap, %struct.heap* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %2, align 8
  %35 = load %struct.heap*, %struct.heap** %heapPtr, align 8
  %36 = getelementptr inbounds %struct.heap, %struct.heap* %35, i32 0, i32 3
  store i64 (i8*, i8*)* %34, i64 (i8*, i8*)** %36, align 8
  br label %37

; <label>:37                                      ; preds = %28, %0
  %38 = load %struct.heap*, %struct.heap** %heapPtr, align 8
  ret %struct.heap* %38
}

; Function Attrs: nounwind uwtable
define void @heap_free(%struct.heap* %heapPtr) #12 {
  %1 = alloca %struct.heap*, align 8
  store %struct.heap* %heapPtr, %struct.heap** %1, align 8
  %2 = load %struct.heap*, %struct.heap** %1, align 8
  %3 = getelementptr inbounds %struct.heap, %struct.heap* %2, i32 0, i32 0
  %4 = load i8**, i8*** %3, align 8
  %5 = bitcast i8** %4 to i8*
  call void @free(i8* %5) #8
  %6 = load %struct.heap*, %struct.heap** %1, align 8
  %7 = bitcast %struct.heap* %6 to i8*
  call void @free(i8* %7) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @heap_insert(%struct.heap* %heapPtr, i8* %dataPtr) #12 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.heap*, align 8
  %3 = alloca i8*, align 8
  %size = alloca i64, align 8
  %capacity = alloca i64, align 8
  %newCapacity = alloca i64, align 8
  %newElements = alloca i8**, align 8
  %i = alloca i64, align 8
  %elements = alloca i8**, align 8
  store %struct.heap* %heapPtr, %struct.heap** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %4 = load %struct.heap*, %struct.heap** %2, align 8
  %5 = getelementptr inbounds %struct.heap, %struct.heap* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %size, align 8
  %7 = load %struct.heap*, %struct.heap** %2, align 8
  %8 = getelementptr inbounds %struct.heap, %struct.heap* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %capacity, align 8
  %10 = load i64, i64* %size, align 8
  %11 = add nsw i64 %10, 1
  %12 = load i64, i64* %capacity, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %54

; <label>:14                                      ; preds = %0
  %15 = load i64, i64* %capacity, align 8
  %16 = mul nsw i64 %15, 2
  store i64 %16, i64* %newCapacity, align 8
  %17 = load i64, i64* %newCapacity, align 8
  %18 = mul i64 %17, 8
  %19 = call noalias i8* @malloc(i64 %18) #8
  %20 = bitcast i8* %19 to i8**
  store i8** %20, i8*** %newElements, align 8
  %21 = load i8**, i8*** %newElements, align 8
  %22 = icmp eq i8** %21, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %14
  store i64 0, i64* %1, align 8
  br label %67

; <label>:24                                      ; preds = %14
  %25 = load i64, i64* %newCapacity, align 8
  %26 = load %struct.heap*, %struct.heap** %2, align 8
  %27 = getelementptr inbounds %struct.heap, %struct.heap* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.heap*, %struct.heap** %2, align 8
  %29 = getelementptr inbounds %struct.heap, %struct.heap* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  store i8** %30, i8*** %elements, align 8
  store i64 0, i64* %i, align 8
  br label %31

; <label>:31                                      ; preds = %43, %24
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* %size, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %46

; <label>:35                                      ; preds = %31
  %36 = load i64, i64* %i, align 8
  %37 = load i8**, i8*** %elements, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 %36
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %i, align 8
  %41 = load i8**, i8*** %newElements, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 %40
  store i8* %39, i8** %42, align 8
  br label %43

; <label>:43                                      ; preds = %35
  %44 = load i64, i64* %i, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %i, align 8
  br label %31

; <label>:46                                      ; preds = %31
  %47 = load %struct.heap*, %struct.heap** %2, align 8
  %48 = getelementptr inbounds %struct.heap, %struct.heap* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = bitcast i8** %49 to i8*
  call void @free(i8* %50) #8
  %51 = load i8**, i8*** %newElements, align 8
  %52 = load %struct.heap*, %struct.heap** %2, align 8
  %53 = getelementptr inbounds %struct.heap, %struct.heap* %52, i32 0, i32 0
  store i8** %51, i8*** %53, align 8
  br label %54

; <label>:54                                      ; preds = %46, %0
  %55 = load %struct.heap*, %struct.heap** %2, align 8
  %56 = getelementptr inbounds %struct.heap, %struct.heap* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  store i64 %58, i64* %size, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = load i64, i64* %size, align 8
  %61 = load %struct.heap*, %struct.heap** %2, align 8
  %62 = getelementptr inbounds %struct.heap, %struct.heap* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 %60
  store i8* %59, i8** %64, align 8
  %65 = load %struct.heap*, %struct.heap** %2, align 8
  %66 = load i64, i64* %size, align 8
  call void @siftUp(%struct.heap* %65, i64 %66)
  store i64 1, i64* %1, align 8
  br label %67

; <label>:67                                      ; preds = %54, %23
  %68 = load i64, i64* %1, align 8
  ret i64 %68
}

; Function Attrs: nounwind uwtable
define internal void @siftUp(%struct.heap* %heapPtr, i64 %startIndex) #12 {
  %1 = alloca %struct.heap*, align 8
  %2 = alloca i64, align 8
  %elements = alloca i8**, align 8
  %compare = alloca i64 (i8*, i8*)*, align 8
  %index = alloca i64, align 8
  %parentIndex = alloca i64, align 8
  %parentPtr = alloca i8*, align 8
  %thisPtr = alloca i8*, align 8
  %tmpPtr = alloca i8*, align 8
  store %struct.heap* %heapPtr, %struct.heap** %1, align 8
  store i64 %startIndex, i64* %2, align 8
  %3 = load %struct.heap*, %struct.heap** %1, align 8
  %4 = getelementptr inbounds %struct.heap, %struct.heap* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  store i8** %5, i8*** %elements, align 8
  %6 = load %struct.heap*, %struct.heap** %1, align 8
  %7 = getelementptr inbounds %struct.heap, %struct.heap* %6, i32 0, i32 3
  %8 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %7, align 8
  store i64 (i8*, i8*)* %8, i64 (i8*, i8*)** %compare, align 8
  %9 = load i64, i64* %2, align 8
  store i64 %9, i64* %index, align 8
  br label %10

; <label>:10                                      ; preds = %30, %0
  %11 = load i64, i64* %index, align 8
  %12 = icmp sgt i64 %11, 1
  br i1 %12, label %13, label %41

; <label>:13                                      ; preds = %10
  %14 = load i64, i64* %index, align 8
  %15 = sdiv i64 %14, 2
  store i64 %15, i64* %parentIndex, align 8
  %16 = load i64, i64* %parentIndex, align 8
  %17 = load i8**, i8*** %elements, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 %16
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %parentPtr, align 8
  %20 = load i64, i64* %index, align 8
  %21 = load i8**, i8*** %elements, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 %20
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %thisPtr, align 8
  %24 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %compare, align 8
  %25 = load i8*, i8** %parentPtr, align 8
  %26 = load i8*, i8** %thisPtr, align 8
  %27 = call i64 %24(i8* %25, i8* %26)
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %13
  br label %41

; <label>:30                                      ; preds = %13
  %31 = load i8*, i8** %parentPtr, align 8
  store i8* %31, i8** %tmpPtr, align 8
  %32 = load i8*, i8** %thisPtr, align 8
  %33 = load i64, i64* %parentIndex, align 8
  %34 = load i8**, i8*** %elements, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 %33
  store i8* %32, i8** %35, align 8
  %36 = load i8*, i8** %tmpPtr, align 8
  %37 = load i64, i64* %index, align 8
  %38 = load i8**, i8*** %elements, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 %37
  store i8* %36, i8** %39, align 8
  %40 = load i64, i64* %parentIndex, align 8
  store i64 %40, i64* %index, align 8
  br label %10

; <label>:41                                      ; preds = %29, %10
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @TMheap_insert(%struct.heap* %heapPtr, i8* %dataPtr) #12 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.heap*, align 8
  %3 = alloca i8*, align 8
  %size = alloca i64, align 8
  %capacity = alloca i64, align 8
  %newCapacity = alloca i64, align 8
  %newElements = alloca i8**, align 8
  %4 = alloca i64, align 8
  %i = alloca i64, align 8
  %elements = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %elements1 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.heap* %heapPtr, %struct.heap** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %8 = load %struct.heap*, %struct.heap** %2, align 8
  %9 = getelementptr inbounds %struct.heap, %struct.heap* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %size, align 8
  %11 = load %struct.heap*, %struct.heap** %2, align 8
  %12 = getelementptr inbounds %struct.heap, %struct.heap* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %capacity, align 8
  %14 = load i64, i64* %size, align 8
  %15 = add nsw i64 %14, 1
  %16 = load i64, i64* %capacity, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %66

; <label>:18                                      ; preds = %0
  %19 = load i64, i64* %capacity, align 8
  %20 = mul nsw i64 %19, 2
  store i64 %20, i64* %newCapacity, align 8
  %21 = load i64, i64* %newCapacity, align 8
  %22 = mul i64 %21, 8
  %23 = call noalias i8* @malloc(i64 %22) #8
  %24 = bitcast i8* %23 to i8**
  store i8** %24, i8*** %newElements, align 8
  %25 = load i8**, i8*** %newElements, align 8
  %26 = icmp eq i8** %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %18
  store i64 0, i64* %1, align 8
  br label %90

; <label>:28                                      ; preds = %18
  %29 = load i64, i64* %newCapacity, align 8
  %30 = load %struct.heap*, %struct.heap** %2, align 8
  %31 = getelementptr inbounds %struct.heap, %struct.heap* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.heap*, %struct.heap** %2, align 8
  %33 = getelementptr inbounds %struct.heap, %struct.heap* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.heap*, %struct.heap** %2, align 8
  %37 = getelementptr inbounds %struct.heap, %struct.heap* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  store i8** %38, i8*** %elements, align 8
  store i64 0, i64* %i, align 8
  br label %39

; <label>:39                                      ; preds = %51, %28
  %40 = load i64, i64* %i, align 8
  %41 = load i64, i64* %size, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %54

; <label>:43                                      ; preds = %39
  %44 = load i64, i64* %i, align 8
  %45 = load i8**, i8*** %elements, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 %44
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %i, align 8
  %49 = load i8**, i8*** %newElements, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 %48
  store i8* %47, i8** %50, align 8
  br label %51

; <label>:51                                      ; preds = %43
  %52 = load i64, i64* %i, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %i, align 8
  br label %39

; <label>:54                                      ; preds = %39
  %55 = load %struct.heap*, %struct.heap** %2, align 8
  %56 = getelementptr inbounds %struct.heap, %struct.heap* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = bitcast i8** %57 to i8*
  call void @free(i8* %58) #8
  %59 = load i8**, i8*** %newElements, align 8
  %60 = load %struct.heap*, %struct.heap** %2, align 8
  %61 = getelementptr inbounds %struct.heap, %struct.heap* %60, i32 0, i32 0
  store i8** %59, i8*** %61, align 8
  %62 = load %struct.heap*, %struct.heap** %2, align 8
  %63 = getelementptr inbounds %struct.heap, %struct.heap* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  store i8** %64, i8*** %5, align 8
  %65 = load i8**, i8*** %5, align 8
  br label %66

; <label>:66                                      ; preds = %54, %0
  %67 = load i64, i64* %size, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %size, align 8
  %69 = load i64, i64* %size, align 8
  %70 = load %struct.heap*, %struct.heap** %2, align 8
  %71 = getelementptr inbounds %struct.heap, %struct.heap* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.heap*, %struct.heap** %2, align 8
  %73 = getelementptr inbounds %struct.heap, %struct.heap* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.heap*, %struct.heap** %2, align 8
  %77 = getelementptr inbounds %struct.heap, %struct.heap* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  store i8** %78, i8*** %elements1, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = load i64, i64* %size, align 8
  %81 = load i8**, i8*** %elements1, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 %80
  store i8* %79, i8** %82, align 8
  %83 = load i64, i64* %size, align 8
  %84 = load i8**, i8*** %elements1, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 %83
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %7, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.heap*, %struct.heap** %2, align 8
  %89 = load i64, i64* %size, align 8
  call void @TMsiftUp(%struct.heap* %88, i64 %89)
  store i64 1, i64* %1, align 8
  br label %90

; <label>:90                                      ; preds = %66, %27
  %91 = load i64, i64* %1, align 8
  ret i64 %91
}

; Function Attrs: nounwind uwtable
define internal void @TMsiftUp(%struct.heap* %heapPtr, i64 %startIndex) #12 {
  %1 = alloca %struct.heap*, align 8
  %2 = alloca i64, align 8
  %elements = alloca i8**, align 8
  %compare = alloca i64 (i8*, i8*)*, align 8
  %index = alloca i64, align 8
  %parentIndex = alloca i64, align 8
  %parentPtr = alloca i8*, align 8
  %thisPtr = alloca i8*, align 8
  %tmpPtr = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.heap* %heapPtr, %struct.heap** %1, align 8
  store i64 %startIndex, i64* %2, align 8
  %5 = load %struct.heap*, %struct.heap** %1, align 8
  %6 = getelementptr inbounds %struct.heap, %struct.heap* %5, i32 0, i32 0
  %7 = load i8**, i8*** %6, align 8
  store i8** %7, i8*** %elements, align 8
  %8 = load %struct.heap*, %struct.heap** %1, align 8
  %9 = getelementptr inbounds %struct.heap, %struct.heap* %8, i32 0, i32 3
  %10 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %9, align 8
  store i64 (i8*, i8*)* %10, i64 (i8*, i8*)** %compare, align 8
  %11 = load i64, i64* %2, align 8
  store i64 %11, i64* %index, align 8
  br label %12

; <label>:12                                      ; preds = %32, %0
  %13 = load i64, i64* %index, align 8
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %15, label %53

; <label>:15                                      ; preds = %12
  %16 = load i64, i64* %index, align 8
  %17 = sdiv i64 %16, 2
  store i64 %17, i64* %parentIndex, align 8
  %18 = load i64, i64* %parentIndex, align 8
  %19 = load i8**, i8*** %elements, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 %18
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %parentPtr, align 8
  %22 = load i64, i64* %index, align 8
  %23 = load i8**, i8*** %elements, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %thisPtr, align 8
  %26 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %compare, align 8
  %27 = load i8*, i8** %parentPtr, align 8
  %28 = load i8*, i8** %thisPtr, align 8
  %29 = call i64 %26(i8* %27, i8* %28)
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %15
  br label %53

; <label>:32                                      ; preds = %15
  %33 = load i8*, i8** %parentPtr, align 8
  store i8* %33, i8** %tmpPtr, align 8
  %34 = load i8*, i8** %thisPtr, align 8
  %35 = load i64, i64* %parentIndex, align 8
  %36 = load i8**, i8*** %elements, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 %35
  store i8* %34, i8** %37, align 8
  %38 = load i64, i64* %parentIndex, align 8
  %39 = load i8**, i8*** %elements, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 %38
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %3, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i8*, i8** %tmpPtr, align 8
  %44 = load i64, i64* %index, align 8
  %45 = load i8**, i8*** %elements, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 %44
  store i8* %43, i8** %46, align 8
  %47 = load i64, i64* %index, align 8
  %48 = load i8**, i8*** %elements, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %4, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %parentIndex, align 8
  store i64 %52, i64* %index, align 8
  br label %12

; <label>:53                                      ; preds = %31, %12
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @heap_remove(%struct.heap* %heapPtr) #12 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.heap*, align 8
  %size = alloca i64, align 8
  %elements = alloca i8**, align 8
  %dataPtr = alloca i8*, align 8
  store %struct.heap* %heapPtr, %struct.heap** %2, align 8
  %3 = load %struct.heap*, %struct.heap** %2, align 8
  %4 = getelementptr inbounds %struct.heap, %struct.heap* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %size, align 8
  %6 = load i64, i64* %size, align 8
  %7 = icmp slt i64 %6, 1
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store i8* null, i8** %1, align 8
  br label %28

; <label>:9                                       ; preds = %0
  %10 = load %struct.heap*, %struct.heap** %2, align 8
  %11 = getelementptr inbounds %struct.heap, %struct.heap* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  store i8** %12, i8*** %elements, align 8
  %13 = load i8**, i8*** %elements, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %dataPtr, align 8
  %16 = load i64, i64* %size, align 8
  %17 = load i8**, i8*** %elements, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 %16
  %19 = load i8*, i8** %18, align 8
  %20 = load i8**, i8*** %elements, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* %size, align 8
  %23 = sub nsw i64 %22, 1
  %24 = load %struct.heap*, %struct.heap** %2, align 8
  %25 = getelementptr inbounds %struct.heap, %struct.heap* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.heap*, %struct.heap** %2, align 8
  call void @heapify(%struct.heap* %26, i64 1)
  %27 = load i8*, i8** %dataPtr, align 8
  store i8* %27, i8** %1, align 8
  br label %28

; <label>:28                                      ; preds = %9, %8
  %29 = load i8*, i8** %1, align 8
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define internal void @heapify(%struct.heap* %heapPtr, i64 %startIndex) #12 {
  %1 = alloca %struct.heap*, align 8
  %2 = alloca i64, align 8
  %elements = alloca i8**, align 8
  %compare = alloca i64 (i8*, i8*)*, align 8
  %size = alloca i64, align 8
  %index = alloca i64, align 8
  %leftIndex = alloca i64, align 8
  %rightIndex = alloca i64, align 8
  %maxIndex = alloca i64, align 8
  %tmpPtr = alloca i8*, align 8
  store %struct.heap* %heapPtr, %struct.heap** %1, align 8
  store i64 %startIndex, i64* %2, align 8
  %3 = load %struct.heap*, %struct.heap** %1, align 8
  %4 = getelementptr inbounds %struct.heap, %struct.heap* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  store i8** %5, i8*** %elements, align 8
  %6 = load %struct.heap*, %struct.heap** %1, align 8
  %7 = getelementptr inbounds %struct.heap, %struct.heap* %6, i32 0, i32 3
  %8 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %7, align 8
  store i64 (i8*, i8*)* %8, i64 (i8*, i8*)** %compare, align 8
  %9 = load %struct.heap*, %struct.heap** %1, align 8
  %10 = getelementptr inbounds %struct.heap, %struct.heap* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %size, align 8
  %12 = load i64, i64* %2, align 8
  store i64 %12, i64* %index, align 8
  br label %13

; <label>:13                                      ; preds = %78, %0
  %14 = load i64, i64* %index, align 8
  %15 = mul nsw i64 2, %14
  store i64 %15, i64* %leftIndex, align 8
  %16 = load i64, i64* %index, align 8
  %17 = mul nsw i64 2, %16
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %rightIndex, align 8
  store i64 -1, i64* %maxIndex, align 8
  %19 = load i64, i64* %leftIndex, align 8
  %20 = load i64, i64* %size, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %36

; <label>:22                                      ; preds = %13
  %23 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %compare, align 8
  %24 = load i64, i64* %leftIndex, align 8
  %25 = load i8**, i8*** %elements, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 %24
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %index, align 8
  %29 = load i8**, i8*** %elements, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 %28
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 %23(i8* %27, i8* %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %36

; <label>:34                                      ; preds = %22
  %35 = load i64, i64* %leftIndex, align 8
  store i64 %35, i64* %maxIndex, align 8
  br label %38

; <label>:36                                      ; preds = %22, %13
  %37 = load i64, i64* %index, align 8
  store i64 %37, i64* %maxIndex, align 8
  br label %38

; <label>:38                                      ; preds = %36, %34
  %39 = load i64, i64* %rightIndex, align 8
  %40 = load i64, i64* %size, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %56

; <label>:42                                      ; preds = %38
  %43 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %compare, align 8
  %44 = load i64, i64* %rightIndex, align 8
  %45 = load i8**, i8*** %elements, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 %44
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %maxIndex, align 8
  %49 = load i8**, i8*** %elements, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 %48
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 %43(i8* %47, i8* %51)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %56

; <label>:54                                      ; preds = %42
  %55 = load i64, i64* %rightIndex, align 8
  store i64 %55, i64* %maxIndex, align 8
  br label %56

; <label>:56                                      ; preds = %54, %42, %38
  %57 = load i64, i64* %maxIndex, align 8
  %58 = load i64, i64* %index, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %56
  br label %79

; <label>:61                                      ; preds = %56
  %62 = load i64, i64* %index, align 8
  %63 = load i8**, i8*** %elements, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 %62
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %tmpPtr, align 8
  %66 = load i64, i64* %maxIndex, align 8
  %67 = load i8**, i8*** %elements, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 %66
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %index, align 8
  %71 = load i8**, i8*** %elements, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 %70
  store i8* %69, i8** %72, align 8
  %73 = load i8*, i8** %tmpPtr, align 8
  %74 = load i64, i64* %maxIndex, align 8
  %75 = load i8**, i8*** %elements, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 %74
  store i8* %73, i8** %76, align 8
  %77 = load i64, i64* %maxIndex, align 8
  store i64 %77, i64* %index, align 8
  br label %78

; <label>:78                                      ; preds = %61
  br label %13

; <label>:79                                      ; preds = %60
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @TMheap_remove(%struct.heap* %heapPtr) #12 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.heap*, align 8
  %size = alloca i64, align 8
  %elements = alloca i8**, align 8
  %dataPtr = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.heap* %heapPtr, %struct.heap** %2, align 8
  %5 = load %struct.heap*, %struct.heap** %2, align 8
  %6 = getelementptr inbounds %struct.heap, %struct.heap* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %size, align 8
  %8 = load i64, i64* %size, align 8
  %9 = icmp slt i64 %8, 1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  store i8* null, i8** %1, align 8
  br label %38

; <label>:11                                      ; preds = %0
  %12 = load %struct.heap*, %struct.heap** %2, align 8
  %13 = getelementptr inbounds %struct.heap, %struct.heap* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  store i8** %14, i8*** %elements, align 8
  %15 = load i8**, i8*** %elements, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %dataPtr, align 8
  %18 = load i64, i64* %size, align 8
  %19 = load i8**, i8*** %elements, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 %18
  %21 = load i8*, i8** %20, align 8
  %22 = load i8**, i8*** %elements, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  store i8* %21, i8** %23, align 8
  %24 = load i8**, i8*** %elements, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* %size, align 8
  %29 = sub nsw i64 %28, 1
  %30 = load %struct.heap*, %struct.heap** %2, align 8
  %31 = getelementptr inbounds %struct.heap, %struct.heap* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.heap*, %struct.heap** %2, align 8
  %33 = getelementptr inbounds %struct.heap, %struct.heap* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.heap*, %struct.heap** %2, align 8
  call void @TMheapify(%struct.heap* %36, i64 1)
  %37 = load i8*, i8** %dataPtr, align 8
  store i8* %37, i8** %1, align 8
  br label %38

; <label>:38                                      ; preds = %11, %10
  %39 = load i8*, i8** %1, align 8
  ret i8* %39
}

; Function Attrs: nounwind uwtable
define internal void @TMheapify(%struct.heap* %heapPtr, i64 %startIndex) #12 {
  %1 = alloca %struct.heap*, align 8
  %2 = alloca i64, align 8
  %elements = alloca i8**, align 8
  %compare = alloca i64 (i8*, i8*)*, align 8
  %size = alloca i64, align 8
  %index = alloca i64, align 8
  %leftIndex = alloca i64, align 8
  %rightIndex = alloca i64, align 8
  %maxIndex = alloca i64, align 8
  %tmpPtr = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.heap* %heapPtr, %struct.heap** %1, align 8
  store i64 %startIndex, i64* %2, align 8
  %5 = load %struct.heap*, %struct.heap** %1, align 8
  %6 = getelementptr inbounds %struct.heap, %struct.heap* %5, i32 0, i32 0
  %7 = load i8**, i8*** %6, align 8
  store i8** %7, i8*** %elements, align 8
  %8 = load %struct.heap*, %struct.heap** %1, align 8
  %9 = getelementptr inbounds %struct.heap, %struct.heap* %8, i32 0, i32 3
  %10 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %9, align 8
  store i64 (i8*, i8*)* %10, i64 (i8*, i8*)** %compare, align 8
  %11 = load %struct.heap*, %struct.heap** %1, align 8
  %12 = getelementptr inbounds %struct.heap, %struct.heap* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %size, align 8
  %14 = load i64, i64* %2, align 8
  store i64 %14, i64* %index, align 8
  br label %15

; <label>:15                                      ; preds = %90, %0
  %16 = load i64, i64* %index, align 8
  %17 = mul nsw i64 2, %16
  store i64 %17, i64* %leftIndex, align 8
  %18 = load i64, i64* %index, align 8
  %19 = mul nsw i64 2, %18
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %rightIndex, align 8
  store i64 -1, i64* %maxIndex, align 8
  %21 = load i64, i64* %leftIndex, align 8
  %22 = load i64, i64* %size, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %38

; <label>:24                                      ; preds = %15
  %25 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %compare, align 8
  %26 = load i64, i64* %leftIndex, align 8
  %27 = load i8**, i8*** %elements, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 %26
  %29 = load i8*, i8** %28, align 8
  %30 = load i64, i64* %index, align 8
  %31 = load i8**, i8*** %elements, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 %30
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 %25(i8* %29, i8* %33)
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %38

; <label>:36                                      ; preds = %24
  %37 = load i64, i64* %leftIndex, align 8
  store i64 %37, i64* %maxIndex, align 8
  br label %40

; <label>:38                                      ; preds = %24, %15
  %39 = load i64, i64* %index, align 8
  store i64 %39, i64* %maxIndex, align 8
  br label %40

; <label>:40                                      ; preds = %38, %36
  %41 = load i64, i64* %rightIndex, align 8
  %42 = load i64, i64* %size, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %58

; <label>:44                                      ; preds = %40
  %45 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %compare, align 8
  %46 = load i64, i64* %rightIndex, align 8
  %47 = load i8**, i8*** %elements, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 %46
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %maxIndex, align 8
  %51 = load i8**, i8*** %elements, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 %50
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 %45(i8* %49, i8* %53)
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %58

; <label>:56                                      ; preds = %44
  %57 = load i64, i64* %rightIndex, align 8
  store i64 %57, i64* %maxIndex, align 8
  br label %58

; <label>:58                                      ; preds = %56, %44, %40
  %59 = load i64, i64* %maxIndex, align 8
  %60 = load i64, i64* %index, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

; <label>:62                                      ; preds = %58
  br label %91

; <label>:63                                      ; preds = %58
  %64 = load i64, i64* %index, align 8
  %65 = load i8**, i8*** %elements, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 %64
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %tmpPtr, align 8
  %68 = load i64, i64* %maxIndex, align 8
  %69 = load i8**, i8*** %elements, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 %68
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %index, align 8
  %73 = load i8**, i8*** %elements, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 %72
  store i8* %71, i8** %74, align 8
  %75 = load i64, i64* %index, align 8
  %76 = load i8**, i8*** %elements, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 %75
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %3, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = load i8*, i8** %tmpPtr, align 8
  %81 = load i64, i64* %maxIndex, align 8
  %82 = load i8**, i8*** %elements, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 %81
  store i8* %80, i8** %83, align 8
  %84 = load i64, i64* %maxIndex, align 8
  %85 = load i8**, i8*** %elements, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 %84
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %4, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = load i64, i64* %maxIndex, align 8
  store i64 %89, i64* %index, align 8
  br label %90

; <label>:90                                      ; preds = %63
  br label %15

; <label>:91                                      ; preds = %62
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @heap_isValid(%struct.heap* %heapPtr) #12 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.heap*, align 8
  %size = alloca i64, align 8
  %compare = alloca i64 (i8*, i8*)*, align 8
  %elements = alloca i8**, align 8
  %i = alloca i64, align 8
  store %struct.heap* %heapPtr, %struct.heap** %2, align 8
  %3 = load %struct.heap*, %struct.heap** %2, align 8
  %4 = getelementptr inbounds %struct.heap, %struct.heap* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %size, align 8
  %6 = load %struct.heap*, %struct.heap** %2, align 8
  %7 = getelementptr inbounds %struct.heap, %struct.heap* %6, i32 0, i32 3
  %8 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %7, align 8
  store i64 (i8*, i8*)* %8, i64 (i8*, i8*)** %compare, align 8
  %9 = load %struct.heap*, %struct.heap** %2, align 8
  %10 = getelementptr inbounds %struct.heap, %struct.heap* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  store i8** %11, i8*** %elements, align 8
  store i64 1, i64* %i, align 8
  br label %12

; <label>:12                                      ; preds = %33, %0
  %13 = load i64, i64* %i, align 8
  %14 = load i64, i64* %size, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %36

; <label>:16                                      ; preds = %12
  %17 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %compare, align 8
  %18 = load i64, i64* %i, align 8
  %19 = add nsw i64 %18, 1
  %20 = load i8**, i8*** %elements, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 %19
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* %i, align 8
  %24 = add nsw i64 %23, 1
  %25 = sdiv i64 %24, 2
  %26 = load i8**, i8*** %elements, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 %25
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 %17(i8* %22, i8* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %16
  store i64 0, i64* %1, align 8
  br label %37

; <label>:32                                      ; preds = %16
  br label %33

; <label>:33                                      ; preds = %32
  %34 = load i64, i64* %i, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %i, align 8
  br label %12

; <label>:36                                      ; preds = %12
  store i64 1, i64* %1, align 8
  br label %37

; <label>:37                                      ; preds = %36, %31
  %38 = load i64, i64* %1, align 8
  ret i64 %38
}

; Function Attrs: nounwind uwtable
define void @list_iter_reset(%struct.list_node** %itPtr, %struct.list* %listPtr) #12 {
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
define void @TMlist_iter_reset(%struct.list_node** %itPtr, %struct.list* %listPtr) #12 {
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
define i64 @list_iter_hasNext(%struct.list_node** %itPtr, %struct.list* %listPtr) #14 {
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
define i64 @TMlist_iter_hasNext(%struct.list_node** %itPtr, %struct.list* %listPtr) #14 {
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
define i8* @list_iter_next(%struct.list_node** %itPtr, %struct.list* %listPtr) #12 {
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
define i8* @TMlist_iter_next(%struct.list_node** %itPtr, %struct.list* %listPtr) #12 {
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
define %struct.list* @list_alloc(i64 (i8*, i8*)* %compare) #12 {
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
define internal i64 @compareDataPtrAddresses(i8* %a, i8* %b) #12 {
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
define %struct.list* @Plist_alloc(i64 (i8*, i8*)* %compare) #12 {
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
define %struct.list* @TMlist_alloc(i64 (i8*, i8*)* %compare) #12 {
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
define void @list_free(%struct.list* %listPtr) #12 {
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
define internal void @freeList(%struct.list_node* %nodePtr) #12 {
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
define internal void @freeNode(%struct.list_node* %nodePtr) #12 {
  %1 = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = bitcast %struct.list_node* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plist_free(%struct.list* %listPtr) #12 {
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
define internal void @PfreeList(%struct.list_node* %nodePtr) #12 {
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
define internal void @PfreeNode(%struct.list_node* %nodePtr) #12 {
  %1 = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = bitcast %struct.list_node* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMlist_free(%struct.list* %listPtr) #12 {
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
define internal void @TMfreeList(%struct.list_node* %nodePtr) #12 {
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
define internal void @TMfreeNode(%struct.list_node* %nodePtr) #12 {
  %1 = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = bitcast %struct.list_node* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @list_isEmpty(%struct.list* %listPtr) #12 {
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
define i64 @TMlist_isEmpty(%struct.list* %listPtr) #12 {
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
define i64 @list_getSize(%struct.list* %listPtr) #12 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 2
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @TMlist_getSize(%struct.list* %listPtr) #12 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 2
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind readonly uwtable
define i8* @list_find(%struct.list* %listPtr, i8* %dataPtr) #14 {
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
define internal %struct.list_node* @findPrevious(%struct.list* %listPtr, i8* %dataPtr) #12 {
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
define i8* @TMlist_find(%struct.list* %listPtr, i8* %dataPtr) #12 {
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
define internal %struct.list_node* @TMfindPrevious(%struct.list* %listPtr, i8* %dataPtr) #12 {
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
define i64 @list_insert(%struct.list* %listPtr, i8* %dataPtr) #12 {
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
define internal %struct.list_node* @allocNode(i8* %dataPtr) #12 {
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
define i64 @Plist_insert(%struct.list* %listPtr, i8* %dataPtr) #12 {
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
define internal %struct.list_node* @PallocNode(i8* %dataPtr) #12 {
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
define i64 @TMlist_insert(%struct.list* %listPtr, i8* %dataPtr) #12 {
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
define internal %struct.list_node* @TMallocNode(i8* %dataPtr) #12 {
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
define i64 @list_remove(%struct.list* %listPtr, i8* %dataPtr) #12 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.149, i32 0, i32 0), i32 703, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.list_remove, i32 0, i32 0)) #18
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
define i64 @Plist_remove(%struct.list* %listPtr, i8* %dataPtr) #12 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.149, i32 0, i32 0), i32 732, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Plist_remove, i32 0, i32 0)) #18
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
define i64 @TMlist_remove(%struct.list* %listPtr, i8* %dataPtr) #12 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.149, i32 0, i32 0), i32 761, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMlist_remove, i32 0, i32 0)) #18
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
define void @list_clear(%struct.list* %listPtr) #12 {
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
define void @Plist_clear(%struct.list* %listPtr) #12 {
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
define void @init_genrand(i64* %mt, i64* %mtiPtr, i64 %s) #12 {
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
define void @init_by_array(i64* %mt, i64* %mtiPtr, i64* %init_key, i64 %key_length) #12 {
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
define i64 @genrand_int32(i64* %mt, i64* %mtiPtr) #12 {
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
define i64 @genrand_int31(i64* %mt, i64* %mtiPtr) #12 {
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
define double @genrand_real1(i64* %mt, i64* %mtiPtr) #12 {
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
define double @genrand_real2(i64* %mt, i64* %mtiPtr) #12 {
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
define double @genrand_real3(i64* %mt, i64* %mtiPtr) #12 {
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
define double @genrand_res53(i64* %mt, i64* %mtiPtr) #12 {
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
define %struct.pair* @pair_alloc(i8* %firstPtr, i8* %secondPtr) #12 {
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
define %struct.pair* @Ppair_alloc(i8* %firstPtr, i8* %secondPtr) #12 {
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
define %struct.pair* @TMpair_alloc(i8* %firstPtr, i8* %secondPtr) #12 {
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
define void @pair_free(%struct.pair* %pairPtr) #12 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppair_free(%struct.pair* %pairPtr) #12 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMpair_free(%struct.pair* %pairPtr) #12 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @pair_swap(%struct.pair* %pairPtr) #12 {
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
define %struct.queue* @queue_alloc(i64 %initCapacity) #12 {
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
define %struct.queue* @Pqueue_alloc(i64 %initCapacity) #12 {
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
define %struct.queue* @TMqueue_alloc(i64 %initCapacity) #12 {
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
define void @queue_free(%struct.queue* %queuePtr) #12 {
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
define void @Pqueue_free(%struct.queue* %queuePtr) #12 {
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
define void @TMqueue_free(%struct.queue* %queuePtr) #12 {
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
define i64 @queue_isEmpty(%struct.queue* %queuePtr) #12 {
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
define void @queue_clear(%struct.queue* %queuePtr) #12 {
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
define i64 @TMqueue_isEmpty(%struct.queue* %queuePtr) #12 {
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
define void @queue_shuffle(%struct.queue* %queuePtr, %struct.random* %randomPtr) #12 {
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
define i64 @queue_push(%struct.queue* %queuePtr, i8* %dataPtr) #12 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.179, i32 0, i32 0), i32 290, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.queue_push, i32 0, i32 0)) #18
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
define i64 @Pqueue_push(%struct.queue* %queuePtr, i8* %dataPtr) #12 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.179, i32 0, i32 0), i32 345, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Pqueue_push, i32 0, i32 0)) #18
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
define i64 @TMqueue_push(%struct.queue* %queuePtr, i8* %dataPtr) #12 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.179, i32 0, i32 0), i32 401, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMqueue_push, i32 0, i32 0)) #18
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
define i8* @queue_pop(%struct.queue* %queuePtr) #12 {
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
define i8* @TMqueue_pop(%struct.queue* %queuePtr) #12 {
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
define %struct.random* @random_alloc() #12 {
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
define %struct.random* @Prandom_alloc() #12 {
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
define void @random_free(%struct.random* %randomPtr) #12 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Prandom_free(%struct.random* %randomPtr) #12 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @random_seed(%struct.random* %randomPtr, i64 %seed) #12 {
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
define i64 @random_generate(%struct.random* %randomPtr) #12 {
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
define i64 @rbtree_verify(%struct.rbtree* %s, i64 %verbose) #12 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i64, align 8
  %root = alloca %struct.node*, align 8
  %ctr = alloca i64, align 8
  %its = alloca %struct.node*, align 8
  %child = alloca %struct.node*, align 8
  %nxt = alloca %struct.node*, align 8
  %vfy = alloca i64, align 8
  store %struct.rbtree* %s, %struct.rbtree** %2, align 8
  store i64 %verbose, i64* %3, align 8
  %4 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %5 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %4, i32 0, i32 0
  %6 = load %struct.node*, %struct.node** %5, align 8
  store %struct.node* %6, %struct.node** %root, align 8
  %7 = load %struct.node*, %struct.node** %root, align 8
  %8 = icmp eq %struct.node* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  store i64 1, i64* %1, align 8
  br label %129

; <label>:10                                      ; preds = %0
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

; <label>:13                                      ; preds = %10
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.192, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %13, %10
  %16 = load %struct.node*, %struct.node** %root, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 2
  %18 = load %struct.node*, %struct.node** %17, align 8
  %19 = icmp ne %struct.node* %18, null
  br i1 %19, label %20, label %28

; <label>:20                                      ; preds = %15
  %21 = load %struct.node*, %struct.node** %root, align 8
  %22 = ptrtoint %struct.node* %21 to i64
  %23 = load %struct.node*, %struct.node** %root, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 2
  %25 = load %struct.node*, %struct.node** %24, align 8
  %26 = ptrtoint %struct.node* %25 to i64
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1.193, i32 0, i32 0), i64 %22, i64 %26)
  store i64 -1, i64* %1, align 8
  br label %129

; <label>:28                                      ; preds = %15
  %29 = load %struct.node*, %struct.node** %root, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 1
  br i1 %32, label %33, label %40

; <label>:33                                      ; preds = %28
  %34 = load %struct.node*, %struct.node** %root, align 8
  %35 = ptrtoint %struct.node* %34 to i64
  %36 = load %struct.node*, %struct.node** %root, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.194, i32 0, i32 0), i64 %35, i64 %38)
  br label %40

; <label>:40                                      ; preds = %33, %28
  store i64 0, i64* %ctr, align 8
  %41 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %42 = call %struct.node* @firstEntry(%struct.rbtree* %41)
  store %struct.node* %42, %struct.node** %its, align 8
  br label %43

; <label>:43                                      ; preds = %116, %40
  %44 = load %struct.node*, %struct.node** %its, align 8
  %45 = icmp ne %struct.node* %44, null
  br i1 %45, label %46, label %118

; <label>:46                                      ; preds = %43
  %47 = load i64, i64* %ctr, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %ctr, align 8
  %49 = load %struct.node*, %struct.node** %its, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 3
  %51 = load %struct.node*, %struct.node** %50, align 8
  store %struct.node* %51, %struct.node** %child, align 8
  %52 = load %struct.node*, %struct.node** %child, align 8
  %53 = icmp ne %struct.node* %52, null
  br i1 %53, label %54, label %62

; <label>:54                                      ; preds = %46
  %55 = load %struct.node*, %struct.node** %child, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 2
  %57 = load %struct.node*, %struct.node** %56, align 8
  %58 = load %struct.node*, %struct.node** %its, align 8
  %59 = icmp ne %struct.node* %57, %58
  br i1 %59, label %60, label %62

; <label>:60                                      ; preds = %54
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.195, i32 0, i32 0))
  br label %62

; <label>:62                                      ; preds = %60, %54, %46
  %63 = load %struct.node*, %struct.node** %its, align 8
  %64 = getelementptr inbounds %struct.node, %struct.node* %63, i32 0, i32 4
  %65 = load %struct.node*, %struct.node** %64, align 8
  store %struct.node* %65, %struct.node** %child, align 8
  %66 = load %struct.node*, %struct.node** %child, align 8
  %67 = icmp ne %struct.node* %66, null
  br i1 %67, label %68, label %76

; <label>:68                                      ; preds = %62
  %69 = load %struct.node*, %struct.node** %child, align 8
  %70 = getelementptr inbounds %struct.node, %struct.node* %69, i32 0, i32 2
  %71 = load %struct.node*, %struct.node** %70, align 8
  %72 = load %struct.node*, %struct.node** %its, align 8
  %73 = icmp ne %struct.node* %71, %72
  br i1 %73, label %74, label %76

; <label>:74                                      ; preds = %68
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.195, i32 0, i32 0))
  br label %76

; <label>:76                                      ; preds = %74, %68, %62
  %77 = load %struct.node*, %struct.node** %its, align 8
  %78 = call %struct.node* @successor(%struct.node* %77)
  store %struct.node* %78, %struct.node** %nxt, align 8
  %79 = load %struct.node*, %struct.node** %nxt, align 8
  %80 = icmp eq %struct.node* %79, null
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %76
  br label %118

; <label>:82                                      ; preds = %76
  %83 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %84 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %83, i32 0, i32 1
  %85 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %84, align 8
  %86 = load %struct.node*, %struct.node** %its, align 8
  %87 = getelementptr inbounds %struct.node, %struct.node* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.node*, %struct.node** %nxt, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 %85(i8* %88, i8* %91)
  %93 = icmp sge i64 %92, 0
  br i1 %93, label %94, label %116

; <label>:94                                      ; preds = %82
  %95 = load %struct.node*, %struct.node** %its, align 8
  %96 = ptrtoint %struct.node* %95 to i64
  %97 = load %struct.node*, %struct.node** %its, align 8
  %98 = getelementptr inbounds %struct.node, %struct.node* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.node*, %struct.node** %its, align 8
  %102 = getelementptr inbounds %struct.node, %struct.node* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.node*, %struct.node** %nxt, align 8
  %106 = ptrtoint %struct.node* %105 to i64
  %107 = load %struct.node*, %struct.node** %nxt, align 8
  %108 = getelementptr inbounds %struct.node, %struct.node* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = load %struct.node*, %struct.node** %nxt, align 8
  %112 = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = ptrtoint i8* %113 to i64
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4.196, i32 0, i32 0), i64 %96, i64 %100, i64 %104, i64 %106, i64 %110, i64 %114)
  store i64 -3, i64* %1, align 8
  br label %129

; <label>:116                                     ; preds = %82
  %117 = load %struct.node*, %struct.node** %nxt, align 8
  store %struct.node* %117, %struct.node** %its, align 8
  br label %43

; <label>:118                                     ; preds = %81, %43
  %119 = load %struct.node*, %struct.node** %root, align 8
  %120 = call i64 @verifyRedBlack(%struct.node* %119, i64 0)
  store i64 %120, i64* %vfy, align 8
  %121 = load i64, i64* %3, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

; <label>:123                                     ; preds = %118
  %124 = load i64, i64* %ctr, align 8
  %125 = load i64, i64* %vfy, align 8
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5.200, i32 0, i32 0), i64 %124, i64 %125)
  br label %127

; <label>:127                                     ; preds = %123, %118
  %128 = load i64, i64* %vfy, align 8
  store i64 %128, i64* %1, align 8
  br label %129

; <label>:129                                     ; preds = %127, %94, %20, %9
  %130 = load i64, i64* %1, align 8
  ret i64 %130
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @firstEntry(%struct.rbtree* %s) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %p = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %2, i32 0, i32 0
  %4 = load %struct.node*, %struct.node** %3, align 8
  store %struct.node* %4, %struct.node** %p, align 8
  %5 = load %struct.node*, %struct.node** %p, align 8
  %6 = icmp ne %struct.node* %5, null
  br i1 %6, label %7, label %18

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %13, %7
  %9 = load %struct.node*, %struct.node** %p, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 3
  %11 = load %struct.node*, %struct.node** %10, align 8
  %12 = icmp ne %struct.node* %11, null
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %8
  %14 = load %struct.node*, %struct.node** %p, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 3
  %16 = load %struct.node*, %struct.node** %15, align 8
  store %struct.node* %16, %struct.node** %p, align 8
  br label %8

; <label>:17                                      ; preds = %8
  br label %18

; <label>:18                                      ; preds = %17, %0
  %19 = load %struct.node*, %struct.node** %p, align 8
  ret %struct.node* %19
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @successor(%struct.node* %t) #12 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %p = alloca %struct.node*, align 8
  %p1 = alloca %struct.node*, align 8
  %ch = alloca %struct.node*, align 8
  store %struct.node* %t, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = icmp eq %struct.node* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store %struct.node* null, %struct.node** %1, align 8
  br label %49

; <label>:6                                       ; preds = %0
  %7 = load %struct.node*, %struct.node** %2, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 4
  %9 = load %struct.node*, %struct.node** %8, align 8
  %10 = icmp ne %struct.node* %9, null
  br i1 %10, label %11, label %26

; <label>:11                                      ; preds = %6
  %12 = load %struct.node*, %struct.node** %2, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 4
  %14 = load %struct.node*, %struct.node** %13, align 8
  store %struct.node* %14, %struct.node** %p, align 8
  br label %15

; <label>:15                                      ; preds = %20, %11
  %16 = load %struct.node*, %struct.node** %p, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %17, align 8
  %19 = icmp ne %struct.node* %18, null
  br i1 %19, label %20, label %24

; <label>:20                                      ; preds = %15
  %21 = load %struct.node*, %struct.node** %p, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 3
  %23 = load %struct.node*, %struct.node** %22, align 8
  store %struct.node* %23, %struct.node** %p, align 8
  br label %15

; <label>:24                                      ; preds = %15
  %25 = load %struct.node*, %struct.node** %p, align 8
  store %struct.node* %25, %struct.node** %1, align 8
  br label %49

; <label>:26                                      ; preds = %6
  %27 = load %struct.node*, %struct.node** %2, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 2
  %29 = load %struct.node*, %struct.node** %28, align 8
  store %struct.node* %29, %struct.node** %p1, align 8
  %30 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %30, %struct.node** %ch, align 8
  br label %31

; <label>:31                                      ; preds = %42, %26
  %32 = load %struct.node*, %struct.node** %p1, align 8
  %33 = icmp ne %struct.node* %32, null
  br i1 %33, label %34, label %40

; <label>:34                                      ; preds = %31
  %35 = load %struct.node*, %struct.node** %ch, align 8
  %36 = load %struct.node*, %struct.node** %p1, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 4
  %38 = load %struct.node*, %struct.node** %37, align 8
  %39 = icmp eq %struct.node* %35, %38
  br label %40

; <label>:40                                      ; preds = %34, %31
  %41 = phi i1 [ false, %31 ], [ %39, %34 ]
  br i1 %41, label %42, label %47

; <label>:42                                      ; preds = %40
  %43 = load %struct.node*, %struct.node** %p1, align 8
  store %struct.node* %43, %struct.node** %ch, align 8
  %44 = load %struct.node*, %struct.node** %p1, align 8
  %45 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 2
  %46 = load %struct.node*, %struct.node** %45, align 8
  store %struct.node* %46, %struct.node** %p1, align 8
  br label %31

; <label>:47                                      ; preds = %40
  %48 = load %struct.node*, %struct.node** %p1, align 8
  store %struct.node* %48, %struct.node** %1, align 8
  br label %49

; <label>:49                                      ; preds = %47, %24, %5
  %50 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %50
}

; Function Attrs: nounwind uwtable
define internal i64 @verifyRedBlack(%struct.node* %root, i64 %depth) #12 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca i64, align 8
  %height_left = alloca i64, align 8
  %height_right = alloca i64, align 8
  store %struct.node* %root, %struct.node** %2, align 8
  store i64 %depth, i64* %3, align 8
  %4 = load %struct.node*, %struct.node** %2, align 8
  %5 = icmp eq %struct.node* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i64 1, i64* %1, align 8
  br label %110

; <label>:7                                       ; preds = %0
  %8 = load %struct.node*, %struct.node** %2, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 3
  %10 = load %struct.node*, %struct.node** %9, align 8
  %11 = load i64, i64* %3, align 8
  %12 = add nsw i64 %11, 1
  %13 = call i64 @verifyRedBlack(%struct.node* %10, i64 %12)
  store i64 %13, i64* %height_left, align 8
  %14 = load %struct.node*, %struct.node** %2, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 4
  %16 = load %struct.node*, %struct.node** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i64 @verifyRedBlack(%struct.node* %16, i64 %18)
  store i64 %19, i64* %height_right, align 8
  %20 = load i64, i64* %height_left, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %25, label %22

; <label>:22                                      ; preds = %7
  %23 = load i64, i64* %height_right, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %22, %7
  store i64 0, i64* %1, align 8
  br label %110

; <label>:26                                      ; preds = %22
  %27 = load i64, i64* %height_left, align 8
  %28 = load i64, i64* %height_right, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

; <label>:30                                      ; preds = %26
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %height_left, align 8
  %33 = load i64, i64* %height_right, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6.197, i32 0, i32 0), i64 %31, i64 %32, i64 %33)
  br label %35

; <label>:35                                      ; preds = %30, %26
  %36 = load %struct.node*, %struct.node** %2, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 3
  %38 = load %struct.node*, %struct.node** %37, align 8
  %39 = icmp ne %struct.node* %38, null
  br i1 %39, label %40, label %50

; <label>:40                                      ; preds = %35
  %41 = load %struct.node*, %struct.node** %2, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %42, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 2
  %45 = load %struct.node*, %struct.node** %44, align 8
  %46 = load %struct.node*, %struct.node** %2, align 8
  %47 = icmp ne %struct.node* %45, %46
  br i1 %47, label %48, label %50

; <label>:48                                      ; preds = %40
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7.198, i32 0, i32 0))
  br label %50

; <label>:50                                      ; preds = %48, %40, %35
  %51 = load %struct.node*, %struct.node** %2, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 4
  %53 = load %struct.node*, %struct.node** %52, align 8
  %54 = icmp ne %struct.node* %53, null
  br i1 %54, label %55, label %65

; <label>:55                                      ; preds = %50
  %56 = load %struct.node*, %struct.node** %2, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 4
  %58 = load %struct.node*, %struct.node** %57, align 8
  %59 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 2
  %60 = load %struct.node*, %struct.node** %59, align 8
  %61 = load %struct.node*, %struct.node** %2, align 8
  %62 = icmp ne %struct.node* %60, %61
  br i1 %62, label %63, label %65

; <label>:63                                      ; preds = %55
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7.198, i32 0, i32 0))
  br label %65

; <label>:65                                      ; preds = %63, %55, %50
  %66 = load %struct.node*, %struct.node** %2, align 8
  %67 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %100

; <label>:70                                      ; preds = %65
  %71 = load %struct.node*, %struct.node** %2, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 3
  %73 = load %struct.node*, %struct.node** %72, align 8
  %74 = icmp ne %struct.node* %73, null
  br i1 %74, label %75, label %84

; <label>:75                                      ; preds = %70
  %76 = load %struct.node*, %struct.node** %2, align 8
  %77 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 3
  %78 = load %struct.node*, %struct.node** %77, align 8
  %79 = getelementptr inbounds %struct.node, %struct.node* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 1
  br i1 %81, label %82, label %84

; <label>:82                                      ; preds = %75
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8.199, i32 0, i32 0), i32 1179)
  store i64 0, i64* %1, align 8
  br label %110

; <label>:84                                      ; preds = %75, %70
  %85 = load %struct.node*, %struct.node** %2, align 8
  %86 = getelementptr inbounds %struct.node, %struct.node* %85, i32 0, i32 4
  %87 = load %struct.node*, %struct.node** %86, align 8
  %88 = icmp ne %struct.node* %87, null
  br i1 %88, label %89, label %98

; <label>:89                                      ; preds = %84
  %90 = load %struct.node*, %struct.node** %2, align 8
  %91 = getelementptr inbounds %struct.node, %struct.node* %90, i32 0, i32 4
  %92 = load %struct.node*, %struct.node** %91, align 8
  %93 = getelementptr inbounds %struct.node, %struct.node* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 1
  br i1 %95, label %96, label %98

; <label>:96                                      ; preds = %89
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8.199, i32 0, i32 0), i32 1183)
  store i64 0, i64* %1, align 8
  br label %110

; <label>:98                                      ; preds = %89, %84
  %99 = load i64, i64* %height_left, align 8
  store i64 %99, i64* %1, align 8
  br label %110

; <label>:100                                     ; preds = %65
  %101 = load %struct.node*, %struct.node** %2, align 8
  %102 = getelementptr inbounds %struct.node, %struct.node* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 1
  br i1 %104, label %105, label %107

; <label>:105                                     ; preds = %100
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8.199, i32 0, i32 0), i32 1189)
  store i64 0, i64* %1, align 8
  br label %110

; <label>:107                                     ; preds = %100
  %108 = load i64, i64* %height_left, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %1, align 8
  br label %110

; <label>:110                                     ; preds = %107, %105, %98, %96, %82, %25, %6
  %111 = load i64, i64* %1, align 8
  ret i64 %111
}

; Function Attrs: nounwind uwtable
define %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* %compare) #12 {
  %1 = alloca i64 (i8*, i8*)*, align 8
  %n = alloca %struct.rbtree*, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %1, align 8
  %2 = call noalias i8* @malloc(i64 16) #8
  %3 = bitcast i8* %2 to %struct.rbtree*
  store %struct.rbtree* %3, %struct.rbtree** %n, align 8
  %4 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  %5 = icmp ne %struct.rbtree* %4, null
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %0
  %7 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %1, align 8
  %8 = icmp ne i64 (i8*, i8*)* %7, null
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %6
  %10 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %1, align 8
  br label %12

; <label>:11                                      ; preds = %6
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = phi i64 (i8*, i8*)* [ %10, %9 ], [ @compareKeysDefault, %11 ]
  %14 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  %15 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %14, i32 0, i32 1
  store i64 (i8*, i8*)* %13, i64 (i8*, i8*)** %15, align 8
  %16 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  %17 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %16, i32 0, i32 0
  store %struct.node* null, %struct.node** %17, align 8
  br label %18

; <label>:18                                      ; preds = %12, %0
  %19 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  ret %struct.rbtree* %19
}

; Function Attrs: nounwind uwtable
define internal i64 @compareKeysDefault(i8* %a, i8* %b) #12 {
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
define %struct.rbtree* @TMrbtree_alloc(i64 (i8*, i8*)* %compare) #12 {
  %1 = alloca i64 (i8*, i8*)*, align 8
  %n = alloca %struct.rbtree*, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %1, align 8
  %2 = call noalias i8* @malloc(i64 16) #8
  %3 = bitcast i8* %2 to %struct.rbtree*
  store %struct.rbtree* %3, %struct.rbtree** %n, align 8
  %4 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  %5 = icmp ne %struct.rbtree* %4, null
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %0
  %7 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %1, align 8
  %8 = icmp ne i64 (i8*, i8*)* %7, null
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %6
  %10 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %1, align 8
  br label %12

; <label>:11                                      ; preds = %6
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = phi i64 (i8*, i8*)* [ %10, %9 ], [ @compareKeysDefault, %11 ]
  %14 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  %15 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %14, i32 0, i32 1
  store i64 (i8*, i8*)* %13, i64 (i8*, i8*)** %15, align 8
  %16 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  %17 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %16, i32 0, i32 0
  store %struct.node* null, %struct.node** %17, align 8
  br label %18

; <label>:18                                      ; preds = %12, %0
  %19 = load %struct.rbtree*, %struct.rbtree** %n, align 8
  ret %struct.rbtree* %19
}

; Function Attrs: nounwind uwtable
define void @rbtree_free(%struct.rbtree* %r) #12 {
  %1 = alloca %struct.rbtree*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %2, i32 0, i32 0
  %4 = load %struct.node*, %struct.node** %3, align 8
  call void @freeNode.205(%struct.node* %4)
  %5 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %6 = bitcast %struct.rbtree* %5 to i8*
  call void @free(i8* %6) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeNode.205(%struct.node* %n) #12 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %12

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 3
  %7 = load %struct.node*, %struct.node** %6, align 8
  call void @freeNode.205(%struct.node* %7)
  %8 = load %struct.node*, %struct.node** %1, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %10 = load %struct.node*, %struct.node** %9, align 8
  call void @freeNode.205(%struct.node* %10)
  %11 = load %struct.node*, %struct.node** %1, align 8
  call void @releaseNode(%struct.node* %11)
  br label %12

; <label>:12                                      ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @releaseNode(%struct.node* %n) #12 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = bitcast %struct.node* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMrbtree_free(%struct.rbtree* %r) #12 {
  %1 = alloca %struct.rbtree*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %2, i32 0, i32 0
  %4 = load %struct.node*, %struct.node** %3, align 8
  call void @TMfreeNode.206(%struct.node* %4)
  %5 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %6 = bitcast %struct.rbtree* %5 to i8*
  call void @free(i8* %6) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMfreeNode.206(%struct.node* %n) #12 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %12

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 3
  %7 = load %struct.node*, %struct.node** %6, align 8
  call void @TMfreeNode.206(%struct.node* %7)
  %8 = load %struct.node*, %struct.node** %1, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %10 = load %struct.node*, %struct.node** %9, align 8
  call void @TMfreeNode.206(%struct.node* %10)
  %11 = load %struct.node*, %struct.node** %1, align 8
  call void @TMreleaseNode(%struct.node* %11)
  br label %12

; <label>:12                                      ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMreleaseNode(%struct.node* %n) #12 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = bitcast %struct.node* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @rbtree_insert(%struct.rbtree* %r, i8* %key, i8* %val) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %node = alloca %struct.node*, align 8
  %ex = alloca %struct.node*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  store i8* %key, i8** %2, align 8
  store i8* %val, i8** %3, align 8
  %4 = call %struct.node* @getNode()
  store %struct.node* %4, %struct.node** %node, align 8
  %5 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.node*, %struct.node** %node, align 8
  %9 = call %struct.node* @insert(%struct.rbtree* %5, i8* %6, i8* %7, %struct.node* %8)
  store %struct.node* %9, %struct.node** %ex, align 8
  %10 = load %struct.node*, %struct.node** %ex, align 8
  %11 = icmp ne %struct.node* %10, null
  br i1 %11, label %12, label %14

; <label>:12                                      ; preds = %0
  %13 = load %struct.node*, %struct.node** %node, align 8
  call void @releaseNode(%struct.node* %13)
  br label %14

; <label>:14                                      ; preds = %12, %0
  %15 = load %struct.node*, %struct.node** %ex, align 8
  %16 = icmp eq %struct.node* %15, null
  %17 = select i1 %16, i32 1, i32 0
  %18 = sext i32 %17 to i64
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @getNode() #12 {
  %n = alloca %struct.node*, align 8
  %1 = call noalias i8* @malloc(i64 48) #8
  %2 = bitcast i8* %1 to %struct.node*
  store %struct.node* %2, %struct.node** %n, align 8
  %3 = load %struct.node*, %struct.node** %n, align 8
  ret %struct.node* %3
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @insert(%struct.rbtree* %s, i8* %k, i8* %v, %struct.node* %n) #12 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.node*, align 8
  %t = alloca %struct.node*, align 8
  %cmp = alloca i64, align 8
  %tl = alloca %struct.node*, align 8
  %tr = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %2, align 8
  store i8* %k, i8** %3, align 8
  store i8* %v, i8** %4, align 8
  store %struct.node* %n, %struct.node** %5, align 8
  %6 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %7 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %6, i32 0, i32 0
  %8 = load %struct.node*, %struct.node** %7, align 8
  store %struct.node* %8, %struct.node** %t, align 8
  %9 = load %struct.node*, %struct.node** %t, align 8
  %10 = icmp eq %struct.node* %9, null
  br i1 %10, label %11, label %33

; <label>:11                                      ; preds = %0
  %12 = load %struct.node*, %struct.node** %5, align 8
  %13 = icmp eq %struct.node* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %11
  store %struct.node* null, %struct.node** %1, align 8
  br label %108

; <label>:15                                      ; preds = %11
  %16 = load %struct.node*, %struct.node** %5, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 3
  store %struct.node* null, %struct.node** %17, align 8
  %18 = load %struct.node*, %struct.node** %5, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 4
  store %struct.node* null, %struct.node** %19, align 8
  %20 = load %struct.node*, %struct.node** %5, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 2
  store %struct.node* null, %struct.node** %21, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.node*, %struct.node** %5, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.node*, %struct.node** %5, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.node*, %struct.node** %5, align 8
  %29 = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 5
  store i64 1, i64* %29, align 8
  %30 = load %struct.node*, %struct.node** %5, align 8
  %31 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %32 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %31, i32 0, i32 0
  store %struct.node* %30, %struct.node** %32, align 8
  store %struct.node* null, %struct.node** %1, align 8
  br label %108

; <label>:33                                      ; preds = %0
  br label %34

; <label>:34                                      ; preds = %107, %33
  %35 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %36 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %35, i32 0, i32 1
  %37 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %36, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = load %struct.node*, %struct.node** %t, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 %37(i8* %38, i8* %41)
  store i64 %42, i64* %cmp, align 8
  %43 = load i64, i64* %cmp, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

; <label>:45                                      ; preds = %34
  %46 = load %struct.node*, %struct.node** %t, align 8
  store %struct.node* %46, %struct.node** %1, align 8
  br label %108

; <label>:47                                      ; preds = %34
  %48 = load i64, i64* %cmp, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %78

; <label>:50                                      ; preds = %47
  %51 = load %struct.node*, %struct.node** %t, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 3
  %53 = load %struct.node*, %struct.node** %52, align 8
  store %struct.node* %53, %struct.node** %tl, align 8
  %54 = load %struct.node*, %struct.node** %tl, align 8
  %55 = icmp ne %struct.node* %54, null
  br i1 %55, label %56, label %58

; <label>:56                                      ; preds = %50
  %57 = load %struct.node*, %struct.node** %tl, align 8
  store %struct.node* %57, %struct.node** %t, align 8
  br label %77

; <label>:58                                      ; preds = %50
  %59 = load %struct.node*, %struct.node** %5, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 3
  store %struct.node* null, %struct.node** %60, align 8
  %61 = load %struct.node*, %struct.node** %5, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 4
  store %struct.node* null, %struct.node** %62, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = load %struct.node*, %struct.node** %5, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load %struct.node*, %struct.node** %5, align 8
  %68 = getelementptr inbounds %struct.node, %struct.node* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.node*, %struct.node** %t, align 8
  %70 = load %struct.node*, %struct.node** %5, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 2
  store %struct.node* %69, %struct.node** %71, align 8
  %72 = load %struct.node*, %struct.node** %5, align 8
  %73 = load %struct.node*, %struct.node** %t, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 3
  store %struct.node* %72, %struct.node** %74, align 8
  %75 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %76 = load %struct.node*, %struct.node** %5, align 8
  call void @fixAfterInsertion(%struct.rbtree* %75, %struct.node* %76)
  store %struct.node* null, %struct.node** %1, align 8
  br label %108

; <label>:77                                      ; preds = %56
  br label %106

; <label>:78                                      ; preds = %47
  %79 = load %struct.node*, %struct.node** %t, align 8
  %80 = getelementptr inbounds %struct.node, %struct.node* %79, i32 0, i32 4
  %81 = load %struct.node*, %struct.node** %80, align 8
  store %struct.node* %81, %struct.node** %tr, align 8
  %82 = load %struct.node*, %struct.node** %tr, align 8
  %83 = icmp ne %struct.node* %82, null
  br i1 %83, label %84, label %86

; <label>:84                                      ; preds = %78
  %85 = load %struct.node*, %struct.node** %tr, align 8
  store %struct.node* %85, %struct.node** %t, align 8
  br label %105

; <label>:86                                      ; preds = %78
  %87 = load %struct.node*, %struct.node** %5, align 8
  %88 = getelementptr inbounds %struct.node, %struct.node* %87, i32 0, i32 3
  store %struct.node* null, %struct.node** %88, align 8
  %89 = load %struct.node*, %struct.node** %5, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 4
  store %struct.node* null, %struct.node** %90, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = load %struct.node*, %struct.node** %5, align 8
  %93 = getelementptr inbounds %struct.node, %struct.node* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = load %struct.node*, %struct.node** %5, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.node*, %struct.node** %t, align 8
  %98 = load %struct.node*, %struct.node** %5, align 8
  %99 = getelementptr inbounds %struct.node, %struct.node* %98, i32 0, i32 2
  store %struct.node* %97, %struct.node** %99, align 8
  %100 = load %struct.node*, %struct.node** %5, align 8
  %101 = load %struct.node*, %struct.node** %t, align 8
  %102 = getelementptr inbounds %struct.node, %struct.node* %101, i32 0, i32 4
  store %struct.node* %100, %struct.node** %102, align 8
  %103 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %104 = load %struct.node*, %struct.node** %5, align 8
  call void @fixAfterInsertion(%struct.rbtree* %103, %struct.node* %104)
  store %struct.node* null, %struct.node** %1, align 8
  br label %108

; <label>:105                                     ; preds = %84
  br label %106

; <label>:106                                     ; preds = %105, %77
  br label %107

; <label>:107                                     ; preds = %106
  br label %34

; <label>:108                                     ; preds = %86, %58, %45, %15, %14
  %109 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %109
}

; Function Attrs: nounwind uwtable
define internal void @fixAfterInsertion(%struct.rbtree* %s, %struct.node* %x) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %xp = alloca %struct.node*, align 8
  %y = alloca %struct.node*, align 8
  %y1 = alloca %struct.node*, align 8
  %ro = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 5
  store i64 0, i64* %4, align 8
  br label %5

; <label>:5                                       ; preds = %125, %0
  %6 = load %struct.node*, %struct.node** %2, align 8
  %7 = icmp ne %struct.node* %6, null
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %5
  %9 = load %struct.node*, %struct.node** %2, align 8
  %10 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %11 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %10, i32 0, i32 0
  %12 = load %struct.node*, %struct.node** %11, align 8
  %13 = icmp ne %struct.node* %9, %12
  br label %14

; <label>:14                                      ; preds = %8, %5
  %15 = phi i1 [ false, %5 ], [ %13, %8 ]
  br i1 %15, label %16, label %126

; <label>:16                                      ; preds = %14
  %17 = load %struct.node*, %struct.node** %2, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 2
  %19 = load %struct.node*, %struct.node** %18, align 8
  store %struct.node* %19, %struct.node** %xp, align 8
  %20 = load %struct.node*, %struct.node** %xp, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %16
  br label %126

; <label>:25                                      ; preds = %16
  %26 = load %struct.node*, %struct.node** %2, align 8
  %27 = call %struct.node* @parentOf(%struct.node* %26)
  %28 = load %struct.node*, %struct.node** %2, align 8
  %29 = call %struct.node* @parentOf(%struct.node* %28)
  %30 = call %struct.node* @parentOf(%struct.node* %29)
  %31 = call %struct.node* @leftOf(%struct.node* %30)
  %32 = icmp eq %struct.node* %27, %31
  br i1 %32, label %33, label %79

; <label>:33                                      ; preds = %25
  %34 = load %struct.node*, %struct.node** %2, align 8
  %35 = call %struct.node* @parentOf(%struct.node* %34)
  %36 = call %struct.node* @parentOf(%struct.node* %35)
  %37 = call %struct.node* @rightOf(%struct.node* %36)
  store %struct.node* %37, %struct.node** %y, align 8
  %38 = load %struct.node*, %struct.node** %y, align 8
  %39 = call i64 @colorOf(%struct.node* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

; <label>:41                                      ; preds = %33
  %42 = load %struct.node*, %struct.node** %2, align 8
  %43 = call %struct.node* @parentOf(%struct.node* %42)
  call void @setColor(%struct.node* %43, i64 1)
  %44 = load %struct.node*, %struct.node** %y, align 8
  call void @setColor(%struct.node* %44, i64 1)
  %45 = load %struct.node*, %struct.node** %2, align 8
  %46 = call %struct.node* @parentOf(%struct.node* %45)
  %47 = call %struct.node* @parentOf(%struct.node* %46)
  call void @setColor(%struct.node* %47, i64 0)
  %48 = load %struct.node*, %struct.node** %2, align 8
  %49 = call %struct.node* @parentOf(%struct.node* %48)
  %50 = call %struct.node* @parentOf(%struct.node* %49)
  store %struct.node* %50, %struct.node** %2, align 8
  br label %78

; <label>:51                                      ; preds = %33
  %52 = load %struct.node*, %struct.node** %2, align 8
  %53 = load %struct.node*, %struct.node** %2, align 8
  %54 = call %struct.node* @parentOf(%struct.node* %53)
  %55 = call %struct.node* @rightOf(%struct.node* %54)
  %56 = icmp eq %struct.node* %52, %55
  br i1 %56, label %57, label %62

; <label>:57                                      ; preds = %51
  %58 = load %struct.node*, %struct.node** %2, align 8
  %59 = call %struct.node* @parentOf(%struct.node* %58)
  store %struct.node* %59, %struct.node** %2, align 8
  %60 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %61 = load %struct.node*, %struct.node** %2, align 8
  call void @rotateLeft(%struct.rbtree* %60, %struct.node* %61)
  br label %62

; <label>:62                                      ; preds = %57, %51
  %63 = load %struct.node*, %struct.node** %2, align 8
  %64 = call %struct.node* @parentOf(%struct.node* %63)
  call void @setColor(%struct.node* %64, i64 1)
  %65 = load %struct.node*, %struct.node** %2, align 8
  %66 = call %struct.node* @parentOf(%struct.node* %65)
  %67 = call %struct.node* @parentOf(%struct.node* %66)
  call void @setColor(%struct.node* %67, i64 0)
  %68 = load %struct.node*, %struct.node** %2, align 8
  %69 = call %struct.node* @parentOf(%struct.node* %68)
  %70 = call %struct.node* @parentOf(%struct.node* %69)
  %71 = icmp ne %struct.node* %70, null
  br i1 %71, label %72, label %77

; <label>:72                                      ; preds = %62
  %73 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %74 = load %struct.node*, %struct.node** %2, align 8
  %75 = call %struct.node* @parentOf(%struct.node* %74)
  %76 = call %struct.node* @parentOf(%struct.node* %75)
  call void @rotateRight(%struct.rbtree* %73, %struct.node* %76)
  br label %77

; <label>:77                                      ; preds = %72, %62
  br label %78

; <label>:78                                      ; preds = %77, %41
  br label %125

; <label>:79                                      ; preds = %25
  %80 = load %struct.node*, %struct.node** %2, align 8
  %81 = call %struct.node* @parentOf(%struct.node* %80)
  %82 = call %struct.node* @parentOf(%struct.node* %81)
  %83 = call %struct.node* @leftOf(%struct.node* %82)
  store %struct.node* %83, %struct.node** %y1, align 8
  %84 = load %struct.node*, %struct.node** %y1, align 8
  %85 = call i64 @colorOf(%struct.node* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %97

; <label>:87                                      ; preds = %79
  %88 = load %struct.node*, %struct.node** %2, align 8
  %89 = call %struct.node* @parentOf(%struct.node* %88)
  call void @setColor(%struct.node* %89, i64 1)
  %90 = load %struct.node*, %struct.node** %y1, align 8
  call void @setColor(%struct.node* %90, i64 1)
  %91 = load %struct.node*, %struct.node** %2, align 8
  %92 = call %struct.node* @parentOf(%struct.node* %91)
  %93 = call %struct.node* @parentOf(%struct.node* %92)
  call void @setColor(%struct.node* %93, i64 0)
  %94 = load %struct.node*, %struct.node** %2, align 8
  %95 = call %struct.node* @parentOf(%struct.node* %94)
  %96 = call %struct.node* @parentOf(%struct.node* %95)
  store %struct.node* %96, %struct.node** %2, align 8
  br label %124

; <label>:97                                      ; preds = %79
  %98 = load %struct.node*, %struct.node** %2, align 8
  %99 = load %struct.node*, %struct.node** %2, align 8
  %100 = call %struct.node* @parentOf(%struct.node* %99)
  %101 = call %struct.node* @leftOf(%struct.node* %100)
  %102 = icmp eq %struct.node* %98, %101
  br i1 %102, label %103, label %108

; <label>:103                                     ; preds = %97
  %104 = load %struct.node*, %struct.node** %2, align 8
  %105 = call %struct.node* @parentOf(%struct.node* %104)
  store %struct.node* %105, %struct.node** %2, align 8
  %106 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %107 = load %struct.node*, %struct.node** %2, align 8
  call void @rotateRight(%struct.rbtree* %106, %struct.node* %107)
  br label %108

; <label>:108                                     ; preds = %103, %97
  %109 = load %struct.node*, %struct.node** %2, align 8
  %110 = call %struct.node* @parentOf(%struct.node* %109)
  call void @setColor(%struct.node* %110, i64 1)
  %111 = load %struct.node*, %struct.node** %2, align 8
  %112 = call %struct.node* @parentOf(%struct.node* %111)
  %113 = call %struct.node* @parentOf(%struct.node* %112)
  call void @setColor(%struct.node* %113, i64 0)
  %114 = load %struct.node*, %struct.node** %2, align 8
  %115 = call %struct.node* @parentOf(%struct.node* %114)
  %116 = call %struct.node* @parentOf(%struct.node* %115)
  %117 = icmp ne %struct.node* %116, null
  br i1 %117, label %118, label %123

; <label>:118                                     ; preds = %108
  %119 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %120 = load %struct.node*, %struct.node** %2, align 8
  %121 = call %struct.node* @parentOf(%struct.node* %120)
  %122 = call %struct.node* @parentOf(%struct.node* %121)
  call void @rotateLeft(%struct.rbtree* %119, %struct.node* %122)
  br label %123

; <label>:123                                     ; preds = %118, %108
  br label %124

; <label>:124                                     ; preds = %123, %87
  br label %125

; <label>:125                                     ; preds = %124, %78
  br label %5

; <label>:126                                     ; preds = %24, %14
  %127 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %128 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %127, i32 0, i32 0
  %129 = load %struct.node*, %struct.node** %128, align 8
  store %struct.node* %129, %struct.node** %ro, align 8
  %130 = load %struct.node*, %struct.node** %ro, align 8
  %131 = getelementptr inbounds %struct.node, %struct.node* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 1
  br i1 %133, label %134, label %137

; <label>:134                                     ; preds = %126
  %135 = load %struct.node*, %struct.node** %ro, align 8
  %136 = getelementptr inbounds %struct.node, %struct.node* %135, i32 0, i32 5
  store i64 1, i64* %136, align 8
  br label %137

; <label>:137                                     ; preds = %134, %126
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.node* @parentOf(%struct.node* %n) #15 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 2
  %7 = load %struct.node*, %struct.node** %6, align 8
  br label %9

; <label>:8                                       ; preds = %0
  br label %9

; <label>:9                                       ; preds = %8, %4
  %10 = phi %struct.node* [ %7, %4 ], [ null, %8 ]
  ret %struct.node* %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.node* @leftOf(%struct.node* %n) #15 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 3
  %7 = load %struct.node*, %struct.node** %6, align 8
  br label %9

; <label>:8                                       ; preds = %0
  br label %9

; <label>:9                                       ; preds = %8, %4
  %10 = phi %struct.node* [ %7, %4 ], [ null, %8 ]
  ret %struct.node* %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.node* @rightOf(%struct.node* %n) #15 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 4
  %7 = load %struct.node*, %struct.node** %6, align 8
  br label %9

; <label>:8                                       ; preds = %0
  br label %9

; <label>:9                                       ; preds = %8, %4
  %10 = phi %struct.node* [ %7, %4 ], [ null, %8 ]
  ret %struct.node* %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @colorOf(%struct.node* %n) #15 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.node*
  %9 = ptrtoint %struct.node* %8 to i64
  br label %11

; <label>:10                                      ; preds = %0
  br label %11

; <label>:11                                      ; preds = %10, %4
  %12 = phi i64 [ %9, %4 ], [ 1, %10 ]
  ret i64 %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @setColor(%struct.node* %n, i64 %c) #15 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca i64, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  store i64 %c, i64* %2, align 8
  %3 = load %struct.node*, %struct.node** %1, align 8
  %4 = icmp ne %struct.node* %3, null
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %2, align 8
  %7 = load %struct.node*, %struct.node** %1, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 5
  store i64 %6, i64* %8, align 8
  br label %9

; <label>:9                                       ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rotateLeft(%struct.rbtree* %s, %struct.node* %x) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %r = alloca %struct.node*, align 8
  %rl = alloca %struct.node*, align 8
  %xp = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 4
  %5 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %5, %struct.node** %r, align 8
  %6 = load %struct.node*, %struct.node** %r, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 3
  %8 = load %struct.node*, %struct.node** %7, align 8
  store %struct.node* %8, %struct.node** %rl, align 8
  %9 = load %struct.node*, %struct.node** %rl, align 8
  %10 = load %struct.node*, %struct.node** %2, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 4
  store %struct.node* %9, %struct.node** %11, align 8
  %12 = load %struct.node*, %struct.node** %rl, align 8
  %13 = icmp ne %struct.node* %12, null
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %0
  %15 = load %struct.node*, %struct.node** %2, align 8
  %16 = load %struct.node*, %struct.node** %rl, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 2
  store %struct.node* %15, %struct.node** %17, align 8
  br label %18

; <label>:18                                      ; preds = %14, %0
  %19 = load %struct.node*, %struct.node** %2, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 2
  %21 = load %struct.node*, %struct.node** %20, align 8
  store %struct.node* %21, %struct.node** %xp, align 8
  %22 = load %struct.node*, %struct.node** %xp, align 8
  %23 = load %struct.node*, %struct.node** %r, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 2
  store %struct.node* %22, %struct.node** %24, align 8
  %25 = load %struct.node*, %struct.node** %xp, align 8
  %26 = icmp eq %struct.node* %25, null
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %18
  %28 = load %struct.node*, %struct.node** %r, align 8
  %29 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %30 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %29, i32 0, i32 0
  store %struct.node* %28, %struct.node** %30, align 8
  br label %46

; <label>:31                                      ; preds = %18
  %32 = load %struct.node*, %struct.node** %xp, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 3
  %34 = load %struct.node*, %struct.node** %33, align 8
  %35 = load %struct.node*, %struct.node** %2, align 8
  %36 = icmp eq %struct.node* %34, %35
  br i1 %36, label %37, label %41

; <label>:37                                      ; preds = %31
  %38 = load %struct.node*, %struct.node** %r, align 8
  %39 = load %struct.node*, %struct.node** %xp, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 3
  store %struct.node* %38, %struct.node** %40, align 8
  br label %45

; <label>:41                                      ; preds = %31
  %42 = load %struct.node*, %struct.node** %r, align 8
  %43 = load %struct.node*, %struct.node** %xp, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 4
  store %struct.node* %42, %struct.node** %44, align 8
  br label %45

; <label>:45                                      ; preds = %41, %37
  br label %46

; <label>:46                                      ; preds = %45, %27
  %47 = load %struct.node*, %struct.node** %2, align 8
  %48 = load %struct.node*, %struct.node** %r, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 3
  store %struct.node* %47, %struct.node** %49, align 8
  %50 = load %struct.node*, %struct.node** %r, align 8
  %51 = load %struct.node*, %struct.node** %2, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 2
  store %struct.node* %50, %struct.node** %52, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rotateRight(%struct.rbtree* %s, %struct.node* %x) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %l = alloca %struct.node*, align 8
  %lr = alloca %struct.node*, align 8
  %xp = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 3
  %5 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %5, %struct.node** %l, align 8
  %6 = load %struct.node*, %struct.node** %l, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 4
  %8 = load %struct.node*, %struct.node** %7, align 8
  store %struct.node* %8, %struct.node** %lr, align 8
  %9 = load %struct.node*, %struct.node** %lr, align 8
  %10 = load %struct.node*, %struct.node** %2, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 3
  store %struct.node* %9, %struct.node** %11, align 8
  %12 = load %struct.node*, %struct.node** %lr, align 8
  %13 = icmp ne %struct.node* %12, null
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %0
  %15 = load %struct.node*, %struct.node** %2, align 8
  %16 = load %struct.node*, %struct.node** %lr, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 2
  store %struct.node* %15, %struct.node** %17, align 8
  br label %18

; <label>:18                                      ; preds = %14, %0
  %19 = load %struct.node*, %struct.node** %2, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 2
  %21 = load %struct.node*, %struct.node** %20, align 8
  store %struct.node* %21, %struct.node** %xp, align 8
  %22 = load %struct.node*, %struct.node** %xp, align 8
  %23 = load %struct.node*, %struct.node** %l, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 2
  store %struct.node* %22, %struct.node** %24, align 8
  %25 = load %struct.node*, %struct.node** %xp, align 8
  %26 = icmp eq %struct.node* %25, null
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %18
  %28 = load %struct.node*, %struct.node** %l, align 8
  %29 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %30 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %29, i32 0, i32 0
  store %struct.node* %28, %struct.node** %30, align 8
  br label %46

; <label>:31                                      ; preds = %18
  %32 = load %struct.node*, %struct.node** %xp, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 4
  %34 = load %struct.node*, %struct.node** %33, align 8
  %35 = load %struct.node*, %struct.node** %2, align 8
  %36 = icmp eq %struct.node* %34, %35
  br i1 %36, label %37, label %41

; <label>:37                                      ; preds = %31
  %38 = load %struct.node*, %struct.node** %l, align 8
  %39 = load %struct.node*, %struct.node** %xp, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 4
  store %struct.node* %38, %struct.node** %40, align 8
  br label %45

; <label>:41                                      ; preds = %31
  %42 = load %struct.node*, %struct.node** %l, align 8
  %43 = load %struct.node*, %struct.node** %xp, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  store %struct.node* %42, %struct.node** %44, align 8
  br label %45

; <label>:45                                      ; preds = %41, %37
  br label %46

; <label>:46                                      ; preds = %45, %27
  %47 = load %struct.node*, %struct.node** %2, align 8
  %48 = load %struct.node*, %struct.node** %l, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 4
  store %struct.node* %47, %struct.node** %49, align 8
  %50 = load %struct.node*, %struct.node** %l, align 8
  %51 = load %struct.node*, %struct.node** %2, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 2
  store %struct.node* %50, %struct.node** %52, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @TMrbtree_insert(%struct.rbtree* %r, i8* %key, i8* %val) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %node = alloca %struct.node*, align 8
  %ex = alloca %struct.node*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  store i8* %key, i8** %2, align 8
  store i8* %val, i8** %3, align 8
  %4 = call %struct.node* @TMgetNode()
  store %struct.node* %4, %struct.node** %node, align 8
  %5 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.node*, %struct.node** %node, align 8
  %9 = call %struct.node* @TMinsert(%struct.rbtree* %5, i8* %6, i8* %7, %struct.node* %8)
  store %struct.node* %9, %struct.node** %ex, align 8
  %10 = load %struct.node*, %struct.node** %ex, align 8
  %11 = icmp ne %struct.node* %10, null
  br i1 %11, label %12, label %14

; <label>:12                                      ; preds = %0
  %13 = load %struct.node*, %struct.node** %node, align 8
  call void @TMreleaseNode(%struct.node* %13)
  br label %14

; <label>:14                                      ; preds = %12, %0
  %15 = load %struct.node*, %struct.node** %ex, align 8
  %16 = icmp eq %struct.node* %15, null
  %17 = select i1 %16, i32 1, i32 0
  %18 = sext i32 %17 to i64
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @TMgetNode() #12 {
  %n = alloca %struct.node*, align 8
  %1 = call noalias i8* @malloc(i64 48) #8
  %2 = bitcast i8* %1 to %struct.node*
  store %struct.node* %2, %struct.node** %n, align 8
  %3 = load %struct.node*, %struct.node** %n, align 8
  ret %struct.node* %3
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @TMinsert(%struct.rbtree* %s, i8* %k, i8* %v, %struct.node* %n) #12 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.node*, align 8
  %t = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.node*, align 8
  %cmp = alloca i64, align 8
  %tl = alloca %struct.node*, align 8
  %13 = alloca %struct.node*, align 8
  %14 = alloca %struct.node*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.node*, align 8
  %18 = alloca %struct.node*, align 8
  %tr = alloca %struct.node*, align 8
  %19 = alloca %struct.node*, align 8
  %20 = alloca %struct.node*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.node*, align 8
  %24 = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %2, align 8
  store i8* %k, i8** %3, align 8
  store i8* %v, i8** %4, align 8
  store %struct.node* %n, %struct.node** %5, align 8
  %25 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %26 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %25, i32 0, i32 0
  %27 = load %struct.node*, %struct.node** %26, align 8
  %28 = bitcast %struct.node* %27 to i8*
  %29 = bitcast i8* %28 to %struct.node*
  store %struct.node* %29, %struct.node** %t, align 8
  %30 = load %struct.node*, %struct.node** %t, align 8
  %31 = icmp eq %struct.node* %30, null
  br i1 %31, label %32, label %82

; <label>:32                                      ; preds = %0
  %33 = load %struct.node*, %struct.node** %5, align 8
  %34 = icmp eq %struct.node* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %32
  store %struct.node* null, %struct.node** %1, align 8
  br label %209

; <label>:36                                      ; preds = %32
  %37 = load %struct.node*, %struct.node** %5, align 8
  %38 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 3
  store %struct.node* null, %struct.node** %38, align 8
  %39 = load %struct.node*, %struct.node** %5, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 3
  %41 = load %struct.node*, %struct.node** %40, align 8
  store %struct.node* %41, %struct.node** %6, align 8
  %42 = load %struct.node*, %struct.node** %6, align 8
  %43 = load %struct.node*, %struct.node** %5, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 4
  store %struct.node* null, %struct.node** %44, align 8
  %45 = load %struct.node*, %struct.node** %5, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 4
  %47 = load %struct.node*, %struct.node** %46, align 8
  store %struct.node* %47, %struct.node** %7, align 8
  %48 = load %struct.node*, %struct.node** %7, align 8
  %49 = load %struct.node*, %struct.node** %5, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 2
  store %struct.node* null, %struct.node** %50, align 8
  %51 = load %struct.node*, %struct.node** %5, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 2
  %53 = load %struct.node*, %struct.node** %52, align 8
  store %struct.node* %53, %struct.node** %8, align 8
  %54 = load %struct.node*, %struct.node** %8, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = load %struct.node*, %struct.node** %5, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.node*, %struct.node** %5, align 8
  %59 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.node*, %struct.node** %5, align 8
  %64 = getelementptr inbounds %struct.node, %struct.node* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.node*, %struct.node** %5, align 8
  %66 = getelementptr inbounds %struct.node, %struct.node* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.node*, %struct.node** %5, align 8
  %70 = getelementptr inbounds %struct.node, %struct.node* %69, i32 0, i32 5
  store i64 1, i64* %70, align 8
  %71 = load %struct.node*, %struct.node** %5, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.node*, %struct.node** %5, align 8
  %76 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %77 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %76, i32 0, i32 0
  store %struct.node* %75, %struct.node** %77, align 8
  %78 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %79 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %78, i32 0, i32 0
  %80 = load %struct.node*, %struct.node** %79, align 8
  store %struct.node* %80, %struct.node** %12, align 8
  %81 = load %struct.node*, %struct.node** %12, align 8
  store %struct.node* null, %struct.node** %1, align 8
  br label %209

; <label>:82                                      ; preds = %0
  br label %83

; <label>:83                                      ; preds = %208, %82
  %84 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %85 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %84, i32 0, i32 1
  %86 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %85, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = load %struct.node*, %struct.node** %t, align 8
  %89 = getelementptr inbounds %struct.node, %struct.node* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 %86(i8* %87, i8* %90)
  store i64 %91, i64* %cmp, align 8
  %92 = load i64, i64* %cmp, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

; <label>:94                                      ; preds = %83
  %95 = load %struct.node*, %struct.node** %t, align 8
  store %struct.node* %95, %struct.node** %1, align 8
  br label %209

; <label>:96                                      ; preds = %83
  %97 = load i64, i64* %cmp, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %153

; <label>:99                                      ; preds = %96
  %100 = load %struct.node*, %struct.node** %t, align 8
  %101 = getelementptr inbounds %struct.node, %struct.node* %100, i32 0, i32 3
  %102 = load %struct.node*, %struct.node** %101, align 8
  %103 = bitcast %struct.node* %102 to i8*
  %104 = bitcast i8* %103 to %struct.node*
  store %struct.node* %104, %struct.node** %tl, align 8
  %105 = load %struct.node*, %struct.node** %tl, align 8
  %106 = icmp ne %struct.node* %105, null
  br i1 %106, label %107, label %109

; <label>:107                                     ; preds = %99
  %108 = load %struct.node*, %struct.node** %tl, align 8
  store %struct.node* %108, %struct.node** %t, align 8
  br label %152

; <label>:109                                     ; preds = %99
  %110 = load %struct.node*, %struct.node** %5, align 8
  %111 = getelementptr inbounds %struct.node, %struct.node* %110, i32 0, i32 3
  store %struct.node* null, %struct.node** %111, align 8
  %112 = load %struct.node*, %struct.node** %5, align 8
  %113 = getelementptr inbounds %struct.node, %struct.node* %112, i32 0, i32 3
  %114 = load %struct.node*, %struct.node** %113, align 8
  store %struct.node* %114, %struct.node** %13, align 8
  %115 = load %struct.node*, %struct.node** %13, align 8
  %116 = load %struct.node*, %struct.node** %5, align 8
  %117 = getelementptr inbounds %struct.node, %struct.node* %116, i32 0, i32 4
  store %struct.node* null, %struct.node** %117, align 8
  %118 = load %struct.node*, %struct.node** %5, align 8
  %119 = getelementptr inbounds %struct.node, %struct.node* %118, i32 0, i32 4
  %120 = load %struct.node*, %struct.node** %119, align 8
  store %struct.node* %120, %struct.node** %14, align 8
  %121 = load %struct.node*, %struct.node** %14, align 8
  %122 = load i8*, i8** %3, align 8
  %123 = load %struct.node*, %struct.node** %5, align 8
  %124 = getelementptr inbounds %struct.node, %struct.node* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load %struct.node*, %struct.node** %5, align 8
  %126 = getelementptr inbounds %struct.node, %struct.node* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %15, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = load %struct.node*, %struct.node** %5, align 8
  %131 = getelementptr inbounds %struct.node, %struct.node* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.node*, %struct.node** %5, align 8
  %133 = getelementptr inbounds %struct.node, %struct.node* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %16, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = load %struct.node*, %struct.node** %t, align 8
  %137 = load %struct.node*, %struct.node** %5, align 8
  %138 = getelementptr inbounds %struct.node, %struct.node* %137, i32 0, i32 2
  store %struct.node* %136, %struct.node** %138, align 8
  %139 = load %struct.node*, %struct.node** %5, align 8
  %140 = getelementptr inbounds %struct.node, %struct.node* %139, i32 0, i32 2
  %141 = load %struct.node*, %struct.node** %140, align 8
  store %struct.node* %141, %struct.node** %17, align 8
  %142 = load %struct.node*, %struct.node** %17, align 8
  %143 = load %struct.node*, %struct.node** %5, align 8
  %144 = load %struct.node*, %struct.node** %t, align 8
  %145 = getelementptr inbounds %struct.node, %struct.node* %144, i32 0, i32 3
  store %struct.node* %143, %struct.node** %145, align 8
  %146 = load %struct.node*, %struct.node** %t, align 8
  %147 = getelementptr inbounds %struct.node, %struct.node* %146, i32 0, i32 3
  %148 = load %struct.node*, %struct.node** %147, align 8
  store %struct.node* %148, %struct.node** %18, align 8
  %149 = load %struct.node*, %struct.node** %18, align 8
  %150 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %151 = load %struct.node*, %struct.node** %5, align 8
  call void @TMfixAfterInsertion(%struct.rbtree* %150, %struct.node* %151)
  store %struct.node* null, %struct.node** %1, align 8
  br label %209

; <label>:152                                     ; preds = %107
  br label %207

; <label>:153                                     ; preds = %96
  %154 = load %struct.node*, %struct.node** %t, align 8
  %155 = getelementptr inbounds %struct.node, %struct.node* %154, i32 0, i32 4
  %156 = load %struct.node*, %struct.node** %155, align 8
  %157 = bitcast %struct.node* %156 to i8*
  %158 = bitcast i8* %157 to %struct.node*
  store %struct.node* %158, %struct.node** %tr, align 8
  %159 = load %struct.node*, %struct.node** %tr, align 8
  %160 = icmp ne %struct.node* %159, null
  br i1 %160, label %161, label %163

; <label>:161                                     ; preds = %153
  %162 = load %struct.node*, %struct.node** %tr, align 8
  store %struct.node* %162, %struct.node** %t, align 8
  br label %206

; <label>:163                                     ; preds = %153
  %164 = load %struct.node*, %struct.node** %5, align 8
  %165 = getelementptr inbounds %struct.node, %struct.node* %164, i32 0, i32 3
  store %struct.node* null, %struct.node** %165, align 8
  %166 = load %struct.node*, %struct.node** %5, align 8
  %167 = getelementptr inbounds %struct.node, %struct.node* %166, i32 0, i32 3
  %168 = load %struct.node*, %struct.node** %167, align 8
  store %struct.node* %168, %struct.node** %19, align 8
  %169 = load %struct.node*, %struct.node** %19, align 8
  %170 = load %struct.node*, %struct.node** %5, align 8
  %171 = getelementptr inbounds %struct.node, %struct.node* %170, i32 0, i32 4
  store %struct.node* null, %struct.node** %171, align 8
  %172 = load %struct.node*, %struct.node** %5, align 8
  %173 = getelementptr inbounds %struct.node, %struct.node* %172, i32 0, i32 4
  %174 = load %struct.node*, %struct.node** %173, align 8
  store %struct.node* %174, %struct.node** %20, align 8
  %175 = load %struct.node*, %struct.node** %20, align 8
  %176 = load i8*, i8** %3, align 8
  %177 = load %struct.node*, %struct.node** %5, align 8
  %178 = getelementptr inbounds %struct.node, %struct.node* %177, i32 0, i32 0
  store i8* %176, i8** %178, align 8
  %179 = load %struct.node*, %struct.node** %5, align 8
  %180 = getelementptr inbounds %struct.node, %struct.node* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** %21, align 8
  %182 = load i8*, i8** %21, align 8
  %183 = load i8*, i8** %4, align 8
  %184 = load %struct.node*, %struct.node** %5, align 8
  %185 = getelementptr inbounds %struct.node, %struct.node* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = load %struct.node*, %struct.node** %5, align 8
  %187 = getelementptr inbounds %struct.node, %struct.node* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %22, align 8
  %189 = load i8*, i8** %22, align 8
  %190 = load %struct.node*, %struct.node** %t, align 8
  %191 = load %struct.node*, %struct.node** %5, align 8
  %192 = getelementptr inbounds %struct.node, %struct.node* %191, i32 0, i32 2
  store %struct.node* %190, %struct.node** %192, align 8
  %193 = load %struct.node*, %struct.node** %5, align 8
  %194 = getelementptr inbounds %struct.node, %struct.node* %193, i32 0, i32 2
  %195 = load %struct.node*, %struct.node** %194, align 8
  store %struct.node* %195, %struct.node** %23, align 8
  %196 = load %struct.node*, %struct.node** %23, align 8
  %197 = load %struct.node*, %struct.node** %5, align 8
  %198 = load %struct.node*, %struct.node** %t, align 8
  %199 = getelementptr inbounds %struct.node, %struct.node* %198, i32 0, i32 4
  store %struct.node* %197, %struct.node** %199, align 8
  %200 = load %struct.node*, %struct.node** %t, align 8
  %201 = getelementptr inbounds %struct.node, %struct.node* %200, i32 0, i32 4
  %202 = load %struct.node*, %struct.node** %201, align 8
  store %struct.node* %202, %struct.node** %24, align 8
  %203 = load %struct.node*, %struct.node** %24, align 8
  %204 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %205 = load %struct.node*, %struct.node** %5, align 8
  call void @TMfixAfterInsertion(%struct.rbtree* %204, %struct.node* %205)
  store %struct.node* null, %struct.node** %1, align 8
  br label %209

; <label>:206                                     ; preds = %161
  br label %207

; <label>:207                                     ; preds = %206, %152
  br label %208

; <label>:208                                     ; preds = %207
  br label %83

; <label>:209                                     ; preds = %163, %109, %94, %36, %35
  %210 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %210
}

; Function Attrs: nounwind uwtable
define internal void @TMfixAfterInsertion(%struct.rbtree* %s, %struct.node* %x) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %3 = alloca i64, align 8
  %xp = alloca %struct.node*, align 8
  %y = alloca %struct.node*, align 8
  %y1 = alloca %struct.node*, align 8
  %ro = alloca %struct.node*, align 8
  %4 = alloca i64, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  %5 = load %struct.node*, %struct.node** %2, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load %struct.node*, %struct.node** %2, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  br label %11

; <label>:11                                      ; preds = %135, %0
  %12 = load %struct.node*, %struct.node** %2, align 8
  %13 = icmp ne %struct.node* %12, null
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %11
  %15 = load %struct.node*, %struct.node** %2, align 8
  %16 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %17 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %16, i32 0, i32 0
  %18 = load %struct.node*, %struct.node** %17, align 8
  %19 = bitcast %struct.node* %18 to i8*
  %20 = bitcast i8* %19 to %struct.node*
  %21 = icmp ne %struct.node* %15, %20
  br label %22

; <label>:22                                      ; preds = %14, %11
  %23 = phi i1 [ false, %11 ], [ %21, %14 ]
  br i1 %23, label %24, label %136

; <label>:24                                      ; preds = %22
  %25 = load %struct.node*, %struct.node** %2, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 2
  %27 = load %struct.node*, %struct.node** %26, align 8
  %28 = bitcast %struct.node* %27 to i8*
  %29 = bitcast i8* %28 to %struct.node*
  store %struct.node* %29, %struct.node** %xp, align 8
  %30 = load %struct.node*, %struct.node** %xp, align 8
  %31 = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %24
  br label %136

; <label>:35                                      ; preds = %24
  %36 = load %struct.node*, %struct.node** %2, align 8
  %37 = call %struct.node* @TMparentOf(%struct.node* %36)
  %38 = load %struct.node*, %struct.node** %2, align 8
  %39 = call %struct.node* @TMparentOf(%struct.node* %38)
  %40 = call %struct.node* @TMparentOf(%struct.node* %39)
  %41 = call %struct.node* @TMleftOf(%struct.node* %40)
  %42 = icmp eq %struct.node* %37, %41
  br i1 %42, label %43, label %89

; <label>:43                                      ; preds = %35
  %44 = load %struct.node*, %struct.node** %2, align 8
  %45 = call %struct.node* @TMparentOf(%struct.node* %44)
  %46 = call %struct.node* @TMparentOf(%struct.node* %45)
  %47 = call %struct.node* @TMrightOf(%struct.node* %46)
  store %struct.node* %47, %struct.node** %y, align 8
  %48 = load %struct.node*, %struct.node** %y, align 8
  %49 = call i64 @TMcolorOf(%struct.node* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %61

; <label>:51                                      ; preds = %43
  %52 = load %struct.node*, %struct.node** %2, align 8
  %53 = call %struct.node* @TMparentOf(%struct.node* %52)
  call void @TMsetColor(%struct.node* %53, i64 1)
  %54 = load %struct.node*, %struct.node** %y, align 8
  call void @TMsetColor(%struct.node* %54, i64 1)
  %55 = load %struct.node*, %struct.node** %2, align 8
  %56 = call %struct.node* @TMparentOf(%struct.node* %55)
  %57 = call %struct.node* @TMparentOf(%struct.node* %56)
  call void @TMsetColor(%struct.node* %57, i64 0)
  %58 = load %struct.node*, %struct.node** %2, align 8
  %59 = call %struct.node* @TMparentOf(%struct.node* %58)
  %60 = call %struct.node* @TMparentOf(%struct.node* %59)
  store %struct.node* %60, %struct.node** %2, align 8
  br label %88

; <label>:61                                      ; preds = %43
  %62 = load %struct.node*, %struct.node** %2, align 8
  %63 = load %struct.node*, %struct.node** %2, align 8
  %64 = call %struct.node* @TMparentOf(%struct.node* %63)
  %65 = call %struct.node* @TMrightOf(%struct.node* %64)
  %66 = icmp eq %struct.node* %62, %65
  br i1 %66, label %67, label %72

; <label>:67                                      ; preds = %61
  %68 = load %struct.node*, %struct.node** %2, align 8
  %69 = call %struct.node* @TMparentOf(%struct.node* %68)
  store %struct.node* %69, %struct.node** %2, align 8
  %70 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %71 = load %struct.node*, %struct.node** %2, align 8
  call void @TMrotateLeft(%struct.rbtree* %70, %struct.node* %71)
  br label %72

; <label>:72                                      ; preds = %67, %61
  %73 = load %struct.node*, %struct.node** %2, align 8
  %74 = call %struct.node* @TMparentOf(%struct.node* %73)
  call void @TMsetColor(%struct.node* %74, i64 1)
  %75 = load %struct.node*, %struct.node** %2, align 8
  %76 = call %struct.node* @TMparentOf(%struct.node* %75)
  %77 = call %struct.node* @TMparentOf(%struct.node* %76)
  call void @TMsetColor(%struct.node* %77, i64 0)
  %78 = load %struct.node*, %struct.node** %2, align 8
  %79 = call %struct.node* @TMparentOf(%struct.node* %78)
  %80 = call %struct.node* @TMparentOf(%struct.node* %79)
  %81 = icmp ne %struct.node* %80, null
  br i1 %81, label %82, label %87

; <label>:82                                      ; preds = %72
  %83 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %84 = load %struct.node*, %struct.node** %2, align 8
  %85 = call %struct.node* @TMparentOf(%struct.node* %84)
  %86 = call %struct.node* @TMparentOf(%struct.node* %85)
  call void @TMrotateRight(%struct.rbtree* %83, %struct.node* %86)
  br label %87

; <label>:87                                      ; preds = %82, %72
  br label %88

; <label>:88                                      ; preds = %87, %51
  br label %135

; <label>:89                                      ; preds = %35
  %90 = load %struct.node*, %struct.node** %2, align 8
  %91 = call %struct.node* @TMparentOf(%struct.node* %90)
  %92 = call %struct.node* @TMparentOf(%struct.node* %91)
  %93 = call %struct.node* @TMleftOf(%struct.node* %92)
  store %struct.node* %93, %struct.node** %y1, align 8
  %94 = load %struct.node*, %struct.node** %y1, align 8
  %95 = call i64 @TMcolorOf(%struct.node* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %107

; <label>:97                                      ; preds = %89
  %98 = load %struct.node*, %struct.node** %2, align 8
  %99 = call %struct.node* @TMparentOf(%struct.node* %98)
  call void @TMsetColor(%struct.node* %99, i64 1)
  %100 = load %struct.node*, %struct.node** %y1, align 8
  call void @TMsetColor(%struct.node* %100, i64 1)
  %101 = load %struct.node*, %struct.node** %2, align 8
  %102 = call %struct.node* @TMparentOf(%struct.node* %101)
  %103 = call %struct.node* @TMparentOf(%struct.node* %102)
  call void @TMsetColor(%struct.node* %103, i64 0)
  %104 = load %struct.node*, %struct.node** %2, align 8
  %105 = call %struct.node* @TMparentOf(%struct.node* %104)
  %106 = call %struct.node* @TMparentOf(%struct.node* %105)
  store %struct.node* %106, %struct.node** %2, align 8
  br label %134

; <label>:107                                     ; preds = %89
  %108 = load %struct.node*, %struct.node** %2, align 8
  %109 = load %struct.node*, %struct.node** %2, align 8
  %110 = call %struct.node* @TMparentOf(%struct.node* %109)
  %111 = call %struct.node* @TMleftOf(%struct.node* %110)
  %112 = icmp eq %struct.node* %108, %111
  br i1 %112, label %113, label %118

; <label>:113                                     ; preds = %107
  %114 = load %struct.node*, %struct.node** %2, align 8
  %115 = call %struct.node* @TMparentOf(%struct.node* %114)
  store %struct.node* %115, %struct.node** %2, align 8
  %116 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %117 = load %struct.node*, %struct.node** %2, align 8
  call void @TMrotateRight(%struct.rbtree* %116, %struct.node* %117)
  br label %118

; <label>:118                                     ; preds = %113, %107
  %119 = load %struct.node*, %struct.node** %2, align 8
  %120 = call %struct.node* @TMparentOf(%struct.node* %119)
  call void @TMsetColor(%struct.node* %120, i64 1)
  %121 = load %struct.node*, %struct.node** %2, align 8
  %122 = call %struct.node* @TMparentOf(%struct.node* %121)
  %123 = call %struct.node* @TMparentOf(%struct.node* %122)
  call void @TMsetColor(%struct.node* %123, i64 0)
  %124 = load %struct.node*, %struct.node** %2, align 8
  %125 = call %struct.node* @TMparentOf(%struct.node* %124)
  %126 = call %struct.node* @TMparentOf(%struct.node* %125)
  %127 = icmp ne %struct.node* %126, null
  br i1 %127, label %128, label %133

; <label>:128                                     ; preds = %118
  %129 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %130 = load %struct.node*, %struct.node** %2, align 8
  %131 = call %struct.node* @TMparentOf(%struct.node* %130)
  %132 = call %struct.node* @TMparentOf(%struct.node* %131)
  call void @TMrotateLeft(%struct.rbtree* %129, %struct.node* %132)
  br label %133

; <label>:133                                     ; preds = %128, %118
  br label %134

; <label>:134                                     ; preds = %133, %97
  br label %135

; <label>:135                                     ; preds = %134, %88
  br label %11

; <label>:136                                     ; preds = %34, %22
  %137 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %138 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %137, i32 0, i32 0
  %139 = load %struct.node*, %struct.node** %138, align 8
  %140 = bitcast %struct.node* %139 to i8*
  %141 = bitcast i8* %140 to %struct.node*
  store %struct.node* %141, %struct.node** %ro, align 8
  %142 = load %struct.node*, %struct.node** %ro, align 8
  %143 = getelementptr inbounds %struct.node, %struct.node* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 1
  br i1 %145, label %146, label %153

; <label>:146                                     ; preds = %136
  %147 = load %struct.node*, %struct.node** %ro, align 8
  %148 = getelementptr inbounds %struct.node, %struct.node* %147, i32 0, i32 5
  store i64 1, i64* %148, align 8
  %149 = load %struct.node*, %struct.node** %ro, align 8
  %150 = getelementptr inbounds %struct.node, %struct.node* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %4, align 8
  %152 = load i64, i64* %4, align 8
  br label %153

; <label>:153                                     ; preds = %146, %136
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.node* @TMparentOf(%struct.node* %n) #15 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 2
  %7 = load %struct.node*, %struct.node** %6, align 8
  %8 = bitcast %struct.node* %7 to i8*
  %9 = bitcast i8* %8 to %struct.node*
  br label %11

; <label>:10                                      ; preds = %0
  br label %11

; <label>:11                                      ; preds = %10, %4
  %12 = phi %struct.node* [ %9, %4 ], [ null, %10 ]
  ret %struct.node* %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.node* @TMleftOf(%struct.node* %n) #15 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 3
  %7 = load %struct.node*, %struct.node** %6, align 8
  %8 = bitcast %struct.node* %7 to i8*
  %9 = bitcast i8* %8 to %struct.node*
  br label %11

; <label>:10                                      ; preds = %0
  br label %11

; <label>:11                                      ; preds = %10, %4
  %12 = phi %struct.node* [ %9, %4 ], [ null, %10 ]
  ret %struct.node* %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.node* @TMrightOf(%struct.node* %n) #15 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 4
  %7 = load %struct.node*, %struct.node** %6, align 8
  %8 = bitcast %struct.node* %7 to i8*
  %9 = bitcast i8* %8 to %struct.node*
  br label %11

; <label>:10                                      ; preds = %0
  br label %11

; <label>:11                                      ; preds = %10, %4
  %12 = phi %struct.node* [ %9, %4 ], [ null, %10 ]
  ret %struct.node* %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @TMcolorOf(%struct.node* %n) #15 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  br label %9

; <label>:8                                       ; preds = %0
  br label %9

; <label>:9                                       ; preds = %8, %4
  %10 = phi i64 [ %7, %4 ], [ 1, %8 ]
  ret i64 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @TMsetColor(%struct.node* %n, i64 %c) #15 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  store i64 %c, i64* %2, align 8
  %4 = load %struct.node*, %struct.node** %1, align 8
  %5 = icmp ne %struct.node* %4, null
  br i1 %5, label %6, label %14

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %2, align 8
  %8 = load %struct.node*, %struct.node** %1, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 5
  store i64 %7, i64* %9, align 8
  %10 = load %struct.node*, %struct.node** %1, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  br label %14

; <label>:14                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMrotateLeft(%struct.rbtree* %s, %struct.node* %x) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %r = alloca %struct.node*, align 8
  %rl = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %xp = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  %11 = load %struct.node*, %struct.node** %2, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 4
  %13 = load %struct.node*, %struct.node** %12, align 8
  %14 = bitcast %struct.node* %13 to i8*
  %15 = bitcast i8* %14 to %struct.node*
  store %struct.node* %15, %struct.node** %r, align 8
  %16 = load %struct.node*, %struct.node** %r, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %17, align 8
  %19 = bitcast %struct.node* %18 to i8*
  %20 = bitcast i8* %19 to %struct.node*
  store %struct.node* %20, %struct.node** %rl, align 8
  %21 = load %struct.node*, %struct.node** %rl, align 8
  %22 = load %struct.node*, %struct.node** %2, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 4
  store %struct.node* %21, %struct.node** %23, align 8
  %24 = load %struct.node*, %struct.node** %2, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 4
  %26 = load %struct.node*, %struct.node** %25, align 8
  store %struct.node* %26, %struct.node** %3, align 8
  %27 = load %struct.node*, %struct.node** %3, align 8
  %28 = load %struct.node*, %struct.node** %rl, align 8
  %29 = icmp ne %struct.node* %28, null
  br i1 %29, label %30, label %38

; <label>:30                                      ; preds = %0
  %31 = load %struct.node*, %struct.node** %2, align 8
  %32 = load %struct.node*, %struct.node** %rl, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 2
  store %struct.node* %31, %struct.node** %33, align 8
  %34 = load %struct.node*, %struct.node** %rl, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 2
  %36 = load %struct.node*, %struct.node** %35, align 8
  store %struct.node* %36, %struct.node** %4, align 8
  %37 = load %struct.node*, %struct.node** %4, align 8
  br label %38

; <label>:38                                      ; preds = %30, %0
  %39 = load %struct.node*, %struct.node** %2, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 2
  %41 = load %struct.node*, %struct.node** %40, align 8
  %42 = bitcast %struct.node* %41 to i8*
  %43 = bitcast i8* %42 to %struct.node*
  store %struct.node* %43, %struct.node** %xp, align 8
  %44 = load %struct.node*, %struct.node** %xp, align 8
  %45 = load %struct.node*, %struct.node** %r, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 2
  store %struct.node* %44, %struct.node** %46, align 8
  %47 = load %struct.node*, %struct.node** %r, align 8
  %48 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 2
  %49 = load %struct.node*, %struct.node** %48, align 8
  store %struct.node* %49, %struct.node** %5, align 8
  %50 = load %struct.node*, %struct.node** %5, align 8
  %51 = load %struct.node*, %struct.node** %xp, align 8
  %52 = icmp eq %struct.node* %51, null
  br i1 %52, label %53, label %61

; <label>:53                                      ; preds = %38
  %54 = load %struct.node*, %struct.node** %r, align 8
  %55 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %56 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %55, i32 0, i32 0
  store %struct.node* %54, %struct.node** %56, align 8
  %57 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %58 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %57, i32 0, i32 0
  %59 = load %struct.node*, %struct.node** %58, align 8
  store %struct.node* %59, %struct.node** %6, align 8
  %60 = load %struct.node*, %struct.node** %6, align 8
  br label %86

; <label>:61                                      ; preds = %38
  %62 = load %struct.node*, %struct.node** %xp, align 8
  %63 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 3
  %64 = load %struct.node*, %struct.node** %63, align 8
  %65 = bitcast %struct.node* %64 to i8*
  %66 = bitcast i8* %65 to %struct.node*
  %67 = load %struct.node*, %struct.node** %2, align 8
  %68 = icmp eq %struct.node* %66, %67
  br i1 %68, label %69, label %77

; <label>:69                                      ; preds = %61
  %70 = load %struct.node*, %struct.node** %r, align 8
  %71 = load %struct.node*, %struct.node** %xp, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 3
  store %struct.node* %70, %struct.node** %72, align 8
  %73 = load %struct.node*, %struct.node** %xp, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 3
  %75 = load %struct.node*, %struct.node** %74, align 8
  store %struct.node* %75, %struct.node** %7, align 8
  %76 = load %struct.node*, %struct.node** %7, align 8
  br label %85

; <label>:77                                      ; preds = %61
  %78 = load %struct.node*, %struct.node** %r, align 8
  %79 = load %struct.node*, %struct.node** %xp, align 8
  %80 = getelementptr inbounds %struct.node, %struct.node* %79, i32 0, i32 4
  store %struct.node* %78, %struct.node** %80, align 8
  %81 = load %struct.node*, %struct.node** %xp, align 8
  %82 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 4
  %83 = load %struct.node*, %struct.node** %82, align 8
  store %struct.node* %83, %struct.node** %8, align 8
  %84 = load %struct.node*, %struct.node** %8, align 8
  br label %85

; <label>:85                                      ; preds = %77, %69
  br label %86

; <label>:86                                      ; preds = %85, %53
  %87 = load %struct.node*, %struct.node** %2, align 8
  %88 = load %struct.node*, %struct.node** %r, align 8
  %89 = getelementptr inbounds %struct.node, %struct.node* %88, i32 0, i32 3
  store %struct.node* %87, %struct.node** %89, align 8
  %90 = load %struct.node*, %struct.node** %r, align 8
  %91 = getelementptr inbounds %struct.node, %struct.node* %90, i32 0, i32 3
  %92 = load %struct.node*, %struct.node** %91, align 8
  store %struct.node* %92, %struct.node** %9, align 8
  %93 = load %struct.node*, %struct.node** %9, align 8
  %94 = load %struct.node*, %struct.node** %r, align 8
  %95 = load %struct.node*, %struct.node** %2, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 2
  store %struct.node* %94, %struct.node** %96, align 8
  %97 = load %struct.node*, %struct.node** %2, align 8
  %98 = getelementptr inbounds %struct.node, %struct.node* %97, i32 0, i32 2
  %99 = load %struct.node*, %struct.node** %98, align 8
  store %struct.node* %99, %struct.node** %10, align 8
  %100 = load %struct.node*, %struct.node** %10, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMrotateRight(%struct.rbtree* %s, %struct.node* %x) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %l = alloca %struct.node*, align 8
  %lr = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %xp = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  %11 = load %struct.node*, %struct.node** %2, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 3
  %13 = load %struct.node*, %struct.node** %12, align 8
  %14 = bitcast %struct.node* %13 to i8*
  %15 = bitcast i8* %14 to %struct.node*
  store %struct.node* %15, %struct.node** %l, align 8
  %16 = load %struct.node*, %struct.node** %l, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 4
  %18 = load %struct.node*, %struct.node** %17, align 8
  %19 = bitcast %struct.node* %18 to i8*
  %20 = bitcast i8* %19 to %struct.node*
  store %struct.node* %20, %struct.node** %lr, align 8
  %21 = load %struct.node*, %struct.node** %lr, align 8
  %22 = load %struct.node*, %struct.node** %2, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 3
  store %struct.node* %21, %struct.node** %23, align 8
  %24 = load %struct.node*, %struct.node** %2, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 3
  %26 = load %struct.node*, %struct.node** %25, align 8
  store %struct.node* %26, %struct.node** %3, align 8
  %27 = load %struct.node*, %struct.node** %3, align 8
  %28 = load %struct.node*, %struct.node** %lr, align 8
  %29 = icmp ne %struct.node* %28, null
  br i1 %29, label %30, label %38

; <label>:30                                      ; preds = %0
  %31 = load %struct.node*, %struct.node** %2, align 8
  %32 = load %struct.node*, %struct.node** %lr, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 2
  store %struct.node* %31, %struct.node** %33, align 8
  %34 = load %struct.node*, %struct.node** %lr, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 2
  %36 = load %struct.node*, %struct.node** %35, align 8
  store %struct.node* %36, %struct.node** %4, align 8
  %37 = load %struct.node*, %struct.node** %4, align 8
  br label %38

; <label>:38                                      ; preds = %30, %0
  %39 = load %struct.node*, %struct.node** %2, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 2
  %41 = load %struct.node*, %struct.node** %40, align 8
  %42 = bitcast %struct.node* %41 to i8*
  %43 = bitcast i8* %42 to %struct.node*
  store %struct.node* %43, %struct.node** %xp, align 8
  %44 = load %struct.node*, %struct.node** %xp, align 8
  %45 = load %struct.node*, %struct.node** %l, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 2
  store %struct.node* %44, %struct.node** %46, align 8
  %47 = load %struct.node*, %struct.node** %l, align 8
  %48 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 2
  %49 = load %struct.node*, %struct.node** %48, align 8
  store %struct.node* %49, %struct.node** %5, align 8
  %50 = load %struct.node*, %struct.node** %5, align 8
  %51 = load %struct.node*, %struct.node** %xp, align 8
  %52 = icmp eq %struct.node* %51, null
  br i1 %52, label %53, label %61

; <label>:53                                      ; preds = %38
  %54 = load %struct.node*, %struct.node** %l, align 8
  %55 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %56 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %55, i32 0, i32 0
  store %struct.node* %54, %struct.node** %56, align 8
  %57 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %58 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %57, i32 0, i32 0
  %59 = load %struct.node*, %struct.node** %58, align 8
  store %struct.node* %59, %struct.node** %6, align 8
  %60 = load %struct.node*, %struct.node** %6, align 8
  br label %86

; <label>:61                                      ; preds = %38
  %62 = load %struct.node*, %struct.node** %xp, align 8
  %63 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 4
  %64 = load %struct.node*, %struct.node** %63, align 8
  %65 = bitcast %struct.node* %64 to i8*
  %66 = bitcast i8* %65 to %struct.node*
  %67 = load %struct.node*, %struct.node** %2, align 8
  %68 = icmp eq %struct.node* %66, %67
  br i1 %68, label %69, label %77

; <label>:69                                      ; preds = %61
  %70 = load %struct.node*, %struct.node** %l, align 8
  %71 = load %struct.node*, %struct.node** %xp, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 4
  store %struct.node* %70, %struct.node** %72, align 8
  %73 = load %struct.node*, %struct.node** %xp, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 4
  %75 = load %struct.node*, %struct.node** %74, align 8
  store %struct.node* %75, %struct.node** %7, align 8
  %76 = load %struct.node*, %struct.node** %7, align 8
  br label %85

; <label>:77                                      ; preds = %61
  %78 = load %struct.node*, %struct.node** %l, align 8
  %79 = load %struct.node*, %struct.node** %xp, align 8
  %80 = getelementptr inbounds %struct.node, %struct.node* %79, i32 0, i32 3
  store %struct.node* %78, %struct.node** %80, align 8
  %81 = load %struct.node*, %struct.node** %xp, align 8
  %82 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 3
  %83 = load %struct.node*, %struct.node** %82, align 8
  store %struct.node* %83, %struct.node** %8, align 8
  %84 = load %struct.node*, %struct.node** %8, align 8
  br label %85

; <label>:85                                      ; preds = %77, %69
  br label %86

; <label>:86                                      ; preds = %85, %53
  %87 = load %struct.node*, %struct.node** %2, align 8
  %88 = load %struct.node*, %struct.node** %l, align 8
  %89 = getelementptr inbounds %struct.node, %struct.node* %88, i32 0, i32 4
  store %struct.node* %87, %struct.node** %89, align 8
  %90 = load %struct.node*, %struct.node** %l, align 8
  %91 = getelementptr inbounds %struct.node, %struct.node* %90, i32 0, i32 4
  %92 = load %struct.node*, %struct.node** %91, align 8
  store %struct.node* %92, %struct.node** %9, align 8
  %93 = load %struct.node*, %struct.node** %9, align 8
  %94 = load %struct.node*, %struct.node** %l, align 8
  %95 = load %struct.node*, %struct.node** %2, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 2
  store %struct.node* %94, %struct.node** %96, align 8
  %97 = load %struct.node*, %struct.node** %2, align 8
  %98 = getelementptr inbounds %struct.node, %struct.node* %97, i32 0, i32 2
  %99 = load %struct.node*, %struct.node** %98, align 8
  store %struct.node* %99, %struct.node** %10, align 8
  %100 = load %struct.node*, %struct.node** %10, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @rbtree_delete(%struct.rbtree* %r, i8* %key) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca i8*, align 8
  %node = alloca %struct.node*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  store i8* %key, i8** %2, align 8
  store %struct.node* null, %struct.node** %node, align 8
  %3 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.node* @lookup(%struct.rbtree* %3, i8* %4)
  store %struct.node* %5, %struct.node** %node, align 8
  %6 = load %struct.node*, %struct.node** %node, align 8
  %7 = icmp ne %struct.node* %6, null
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %10 = load %struct.node*, %struct.node** %node, align 8
  %11 = call %struct.node* @delete_node(%struct.rbtree* %9, %struct.node* %10)
  store %struct.node* %11, %struct.node** %node, align 8
  br label %12

; <label>:12                                      ; preds = %8, %0
  %13 = load %struct.node*, %struct.node** %node, align 8
  %14 = icmp ne %struct.node* %13, null
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %12
  %16 = load %struct.node*, %struct.node** %node, align 8
  call void @releaseNode(%struct.node* %16)
  br label %17

; <label>:17                                      ; preds = %15, %12
  %18 = load %struct.node*, %struct.node** %node, align 8
  %19 = icmp ne %struct.node* %18, null
  %20 = select i1 %19, i32 1, i32 0
  %21 = sext i32 %20 to i64
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @lookup(%struct.rbtree* %s, i8* %k) #12 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %p = alloca %struct.node*, align 8
  %cmp = alloca i64, align 8
  store %struct.rbtree* %s, %struct.rbtree** %2, align 8
  store i8* %k, i8** %3, align 8
  %4 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %5 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %4, i32 0, i32 0
  %6 = load %struct.node*, %struct.node** %5, align 8
  store %struct.node* %6, %struct.node** %p, align 8
  br label %7

; <label>:7                                       ; preds = %34, %0
  %8 = load %struct.node*, %struct.node** %p, align 8
  %9 = icmp ne %struct.node* %8, null
  br i1 %9, label %10, label %36

; <label>:10                                      ; preds = %7
  %11 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %12 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %11, i32 0, i32 1
  %13 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %12, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.node*, %struct.node** %p, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 %13(i8* %14, i8* %17)
  store i64 %18, i64* %cmp, align 8
  %19 = load i64, i64* %cmp, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %10
  %22 = load %struct.node*, %struct.node** %p, align 8
  store %struct.node* %22, %struct.node** %1, align 8
  br label %37

; <label>:23                                      ; preds = %10
  %24 = load i64, i64* %cmp, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %30

; <label>:26                                      ; preds = %23
  %27 = load %struct.node*, %struct.node** %p, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 3
  %29 = load %struct.node*, %struct.node** %28, align 8
  br label %34

; <label>:30                                      ; preds = %23
  %31 = load %struct.node*, %struct.node** %p, align 8
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 4
  %33 = load %struct.node*, %struct.node** %32, align 8
  br label %34

; <label>:34                                      ; preds = %30, %26
  %35 = phi %struct.node* [ %29, %26 ], [ %33, %30 ]
  store %struct.node* %35, %struct.node** %p, align 8
  br label %7

; <label>:36                                      ; preds = %7
  store %struct.node* null, %struct.node** %1, align 8
  br label %37

; <label>:37                                      ; preds = %36, %21
  %38 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %38
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @delete_node(%struct.rbtree* %s, %struct.node* %p) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %s1 = alloca %struct.node*, align 8
  %replacement = alloca %struct.node*, align 8
  %pp = alloca %struct.node*, align 8
  %pp2 = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %p, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 3
  %5 = load %struct.node*, %struct.node** %4, align 8
  %6 = icmp ne %struct.node* %5, null
  br i1 %6, label %7, label %30

; <label>:7                                       ; preds = %0
  %8 = load %struct.node*, %struct.node** %2, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %10 = load %struct.node*, %struct.node** %9, align 8
  %11 = icmp ne %struct.node* %10, null
  br i1 %11, label %12, label %30

; <label>:12                                      ; preds = %7
  %13 = load %struct.node*, %struct.node** %2, align 8
  %14 = call %struct.node* @successor(%struct.node* %13)
  store %struct.node* %14, %struct.node** %s1, align 8
  %15 = load %struct.node*, %struct.node** %s1, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.node*
  %19 = bitcast %struct.node* %18 to i8*
  %20 = load %struct.node*, %struct.node** %2, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.node*, %struct.node** %s1, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.node*
  %26 = bitcast %struct.node* %25 to i8*
  %27 = load %struct.node*, %struct.node** %2, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.node*, %struct.node** %s1, align 8
  store %struct.node* %29, %struct.node** %2, align 8
  br label %30

; <label>:30                                      ; preds = %12, %7, %0
  %31 = load %struct.node*, %struct.node** %2, align 8
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 3
  %33 = load %struct.node*, %struct.node** %32, align 8
  %34 = icmp ne %struct.node* %33, null
  br i1 %34, label %35, label %39

; <label>:35                                      ; preds = %30
  %36 = load %struct.node*, %struct.node** %2, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 3
  %38 = load %struct.node*, %struct.node** %37, align 8
  br label %43

; <label>:39                                      ; preds = %30
  %40 = load %struct.node*, %struct.node** %2, align 8
  %41 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 4
  %42 = load %struct.node*, %struct.node** %41, align 8
  br label %43

; <label>:43                                      ; preds = %39, %35
  %44 = phi %struct.node* [ %38, %35 ], [ %42, %39 ]
  store %struct.node* %44, %struct.node** %replacement, align 8
  %45 = load %struct.node*, %struct.node** %replacement, align 8
  %46 = icmp ne %struct.node* %45, null
  br i1 %46, label %47, label %92

; <label>:47                                      ; preds = %43
  %48 = load %struct.node*, %struct.node** %2, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 2
  %50 = load %struct.node*, %struct.node** %49, align 8
  %51 = load %struct.node*, %struct.node** %replacement, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 2
  store %struct.node* %50, %struct.node** %52, align 8
  %53 = load %struct.node*, %struct.node** %2, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 2
  %55 = load %struct.node*, %struct.node** %54, align 8
  store %struct.node* %55, %struct.node** %pp, align 8
  %56 = load %struct.node*, %struct.node** %pp, align 8
  %57 = icmp eq %struct.node* %56, null
  br i1 %57, label %58, label %62

; <label>:58                                      ; preds = %47
  %59 = load %struct.node*, %struct.node** %replacement, align 8
  %60 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %61 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %60, i32 0, i32 0
  store %struct.node* %59, %struct.node** %61, align 8
  br label %77

; <label>:62                                      ; preds = %47
  %63 = load %struct.node*, %struct.node** %2, align 8
  %64 = load %struct.node*, %struct.node** %pp, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 3
  %66 = load %struct.node*, %struct.node** %65, align 8
  %67 = icmp eq %struct.node* %63, %66
  br i1 %67, label %68, label %72

; <label>:68                                      ; preds = %62
  %69 = load %struct.node*, %struct.node** %replacement, align 8
  %70 = load %struct.node*, %struct.node** %pp, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 3
  store %struct.node* %69, %struct.node** %71, align 8
  br label %76

; <label>:72                                      ; preds = %62
  %73 = load %struct.node*, %struct.node** %replacement, align 8
  %74 = load %struct.node*, %struct.node** %pp, align 8
  %75 = getelementptr inbounds %struct.node, %struct.node* %74, i32 0, i32 4
  store %struct.node* %73, %struct.node** %75, align 8
  br label %76

; <label>:76                                      ; preds = %72, %68
  br label %77

; <label>:77                                      ; preds = %76, %58
  %78 = load %struct.node*, %struct.node** %2, align 8
  %79 = getelementptr inbounds %struct.node, %struct.node* %78, i32 0, i32 3
  store %struct.node* null, %struct.node** %79, align 8
  %80 = load %struct.node*, %struct.node** %2, align 8
  %81 = getelementptr inbounds %struct.node, %struct.node* %80, i32 0, i32 4
  store %struct.node* null, %struct.node** %81, align 8
  %82 = load %struct.node*, %struct.node** %2, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 2
  store %struct.node* null, %struct.node** %83, align 8
  %84 = load %struct.node*, %struct.node** %2, align 8
  %85 = getelementptr inbounds %struct.node, %struct.node* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 1
  br i1 %87, label %88, label %91

; <label>:88                                      ; preds = %77
  %89 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %90 = load %struct.node*, %struct.node** %replacement, align 8
  call void @fixAfterDeletion(%struct.rbtree* %89, %struct.node* %90)
  br label %91

; <label>:91                                      ; preds = %88, %77
  br label %138

; <label>:92                                      ; preds = %43
  %93 = load %struct.node*, %struct.node** %2, align 8
  %94 = getelementptr inbounds %struct.node, %struct.node* %93, i32 0, i32 2
  %95 = load %struct.node*, %struct.node** %94, align 8
  %96 = icmp eq %struct.node* %95, null
  br i1 %96, label %97, label %100

; <label>:97                                      ; preds = %92
  %98 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %99 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %98, i32 0, i32 0
  store %struct.node* null, %struct.node** %99, align 8
  br label %137

; <label>:100                                     ; preds = %92
  %101 = load %struct.node*, %struct.node** %2, align 8
  %102 = getelementptr inbounds %struct.node, %struct.node* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 1
  br i1 %104, label %105, label %108

; <label>:105                                     ; preds = %100
  %106 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %107 = load %struct.node*, %struct.node** %2, align 8
  call void @fixAfterDeletion(%struct.rbtree* %106, %struct.node* %107)
  br label %108

; <label>:108                                     ; preds = %105, %100
  %109 = load %struct.node*, %struct.node** %2, align 8
  %110 = getelementptr inbounds %struct.node, %struct.node* %109, i32 0, i32 2
  %111 = load %struct.node*, %struct.node** %110, align 8
  store %struct.node* %111, %struct.node** %pp2, align 8
  %112 = load %struct.node*, %struct.node** %pp2, align 8
  %113 = icmp ne %struct.node* %112, null
  br i1 %113, label %114, label %136

; <label>:114                                     ; preds = %108
  %115 = load %struct.node*, %struct.node** %2, align 8
  %116 = load %struct.node*, %struct.node** %pp2, align 8
  %117 = getelementptr inbounds %struct.node, %struct.node* %116, i32 0, i32 3
  %118 = load %struct.node*, %struct.node** %117, align 8
  %119 = icmp eq %struct.node* %115, %118
  br i1 %119, label %120, label %123

; <label>:120                                     ; preds = %114
  %121 = load %struct.node*, %struct.node** %pp2, align 8
  %122 = getelementptr inbounds %struct.node, %struct.node* %121, i32 0, i32 3
  store %struct.node* null, %struct.node** %122, align 8
  br label %133

; <label>:123                                     ; preds = %114
  %124 = load %struct.node*, %struct.node** %2, align 8
  %125 = load %struct.node*, %struct.node** %pp2, align 8
  %126 = getelementptr inbounds %struct.node, %struct.node* %125, i32 0, i32 4
  %127 = load %struct.node*, %struct.node** %126, align 8
  %128 = icmp eq %struct.node* %124, %127
  br i1 %128, label %129, label %132

; <label>:129                                     ; preds = %123
  %130 = load %struct.node*, %struct.node** %pp2, align 8
  %131 = getelementptr inbounds %struct.node, %struct.node* %130, i32 0, i32 4
  store %struct.node* null, %struct.node** %131, align 8
  br label %132

; <label>:132                                     ; preds = %129, %123
  br label %133

; <label>:133                                     ; preds = %132, %120
  %134 = load %struct.node*, %struct.node** %2, align 8
  %135 = getelementptr inbounds %struct.node, %struct.node* %134, i32 0, i32 2
  store %struct.node* null, %struct.node** %135, align 8
  br label %136

; <label>:136                                     ; preds = %133, %108
  br label %137

; <label>:137                                     ; preds = %136, %97
  br label %138

; <label>:138                                     ; preds = %137, %91
  %139 = load %struct.node*, %struct.node** %2, align 8
  ret %struct.node* %139
}

; Function Attrs: nounwind uwtable
define internal void @fixAfterDeletion(%struct.rbtree* %s, %struct.node* %x) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %sib = alloca %struct.node*, align 8
  %sib1 = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  br label %3

; <label>:3                                       ; preds = %143, %0
  %4 = load %struct.node*, %struct.node** %2, align 8
  %5 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %6 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %5, i32 0, i32 0
  %7 = load %struct.node*, %struct.node** %6, align 8
  %8 = icmp ne %struct.node* %4, %7
  br i1 %8, label %9, label %13

; <label>:9                                       ; preds = %3
  %10 = load %struct.node*, %struct.node** %2, align 8
  %11 = call i64 @colorOf(%struct.node* %10)
  %12 = icmp eq i64 %11, 1
  br label %13

; <label>:13                                      ; preds = %9, %3
  %14 = phi i1 [ false, %3 ], [ %12, %9 ]
  br i1 %14, label %15, label %144

; <label>:15                                      ; preds = %13
  %16 = load %struct.node*, %struct.node** %2, align 8
  %17 = load %struct.node*, %struct.node** %2, align 8
  %18 = call %struct.node* @parentOf(%struct.node* %17)
  %19 = call %struct.node* @leftOf(%struct.node* %18)
  %20 = icmp eq %struct.node* %16, %19
  br i1 %20, label %21, label %82

; <label>:21                                      ; preds = %15
  %22 = load %struct.node*, %struct.node** %2, align 8
  %23 = call %struct.node* @parentOf(%struct.node* %22)
  %24 = call %struct.node* @rightOf(%struct.node* %23)
  store %struct.node* %24, %struct.node** %sib, align 8
  %25 = load %struct.node*, %struct.node** %sib, align 8
  %26 = call i64 @colorOf(%struct.node* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %38

; <label>:28                                      ; preds = %21
  %29 = load %struct.node*, %struct.node** %sib, align 8
  call void @setColor(%struct.node* %29, i64 1)
  %30 = load %struct.node*, %struct.node** %2, align 8
  %31 = call %struct.node* @parentOf(%struct.node* %30)
  call void @setColor(%struct.node* %31, i64 0)
  %32 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %33 = load %struct.node*, %struct.node** %2, align 8
  %34 = call %struct.node* @parentOf(%struct.node* %33)
  call void @rotateLeft(%struct.rbtree* %32, %struct.node* %34)
  %35 = load %struct.node*, %struct.node** %2, align 8
  %36 = call %struct.node* @parentOf(%struct.node* %35)
  %37 = call %struct.node* @rightOf(%struct.node* %36)
  store %struct.node* %37, %struct.node** %sib, align 8
  br label %38

; <label>:38                                      ; preds = %28, %21
  %39 = load %struct.node*, %struct.node** %sib, align 8
  %40 = call %struct.node* @leftOf(%struct.node* %39)
  %41 = call i64 @colorOf(%struct.node* %40)
  %42 = icmp eq i64 %41, 1
  br i1 %42, label %43, label %52

; <label>:43                                      ; preds = %38
  %44 = load %struct.node*, %struct.node** %sib, align 8
  %45 = call %struct.node* @rightOf(%struct.node* %44)
  %46 = call i64 @colorOf(%struct.node* %45)
  %47 = icmp eq i64 %46, 1
  br i1 %47, label %48, label %52

; <label>:48                                      ; preds = %43
  %49 = load %struct.node*, %struct.node** %sib, align 8
  call void @setColor(%struct.node* %49, i64 0)
  %50 = load %struct.node*, %struct.node** %2, align 8
  %51 = call %struct.node* @parentOf(%struct.node* %50)
  store %struct.node* %51, %struct.node** %2, align 8
  br label %81

; <label>:52                                      ; preds = %43, %38
  %53 = load %struct.node*, %struct.node** %sib, align 8
  %54 = call %struct.node* @rightOf(%struct.node* %53)
  %55 = call i64 @colorOf(%struct.node* %54)
  %56 = icmp eq i64 %55, 1
  br i1 %56, label %57, label %66

; <label>:57                                      ; preds = %52
  %58 = load %struct.node*, %struct.node** %sib, align 8
  %59 = call %struct.node* @leftOf(%struct.node* %58)
  call void @setColor(%struct.node* %59, i64 1)
  %60 = load %struct.node*, %struct.node** %sib, align 8
  call void @setColor(%struct.node* %60, i64 0)
  %61 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %62 = load %struct.node*, %struct.node** %sib, align 8
  call void @rotateRight(%struct.rbtree* %61, %struct.node* %62)
  %63 = load %struct.node*, %struct.node** %2, align 8
  %64 = call %struct.node* @parentOf(%struct.node* %63)
  %65 = call %struct.node* @rightOf(%struct.node* %64)
  store %struct.node* %65, %struct.node** %sib, align 8
  br label %66

; <label>:66                                      ; preds = %57, %52
  %67 = load %struct.node*, %struct.node** %sib, align 8
  %68 = load %struct.node*, %struct.node** %2, align 8
  %69 = call %struct.node* @parentOf(%struct.node* %68)
  %70 = call i64 @colorOf(%struct.node* %69)
  call void @setColor(%struct.node* %67, i64 %70)
  %71 = load %struct.node*, %struct.node** %2, align 8
  %72 = call %struct.node* @parentOf(%struct.node* %71)
  call void @setColor(%struct.node* %72, i64 1)
  %73 = load %struct.node*, %struct.node** %sib, align 8
  %74 = call %struct.node* @rightOf(%struct.node* %73)
  call void @setColor(%struct.node* %74, i64 1)
  %75 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %76 = load %struct.node*, %struct.node** %2, align 8
  %77 = call %struct.node* @parentOf(%struct.node* %76)
  call void @rotateLeft(%struct.rbtree* %75, %struct.node* %77)
  %78 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %79 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %78, i32 0, i32 0
  %80 = load %struct.node*, %struct.node** %79, align 8
  store %struct.node* %80, %struct.node** %2, align 8
  br label %81

; <label>:81                                      ; preds = %66, %48
  br label %143

; <label>:82                                      ; preds = %15
  %83 = load %struct.node*, %struct.node** %2, align 8
  %84 = call %struct.node* @parentOf(%struct.node* %83)
  %85 = call %struct.node* @leftOf(%struct.node* %84)
  store %struct.node* %85, %struct.node** %sib1, align 8
  %86 = load %struct.node*, %struct.node** %sib1, align 8
  %87 = call i64 @colorOf(%struct.node* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %99

; <label>:89                                      ; preds = %82
  %90 = load %struct.node*, %struct.node** %sib1, align 8
  call void @setColor(%struct.node* %90, i64 1)
  %91 = load %struct.node*, %struct.node** %2, align 8
  %92 = call %struct.node* @parentOf(%struct.node* %91)
  call void @setColor(%struct.node* %92, i64 0)
  %93 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %94 = load %struct.node*, %struct.node** %2, align 8
  %95 = call %struct.node* @parentOf(%struct.node* %94)
  call void @rotateRight(%struct.rbtree* %93, %struct.node* %95)
  %96 = load %struct.node*, %struct.node** %2, align 8
  %97 = call %struct.node* @parentOf(%struct.node* %96)
  %98 = call %struct.node* @leftOf(%struct.node* %97)
  store %struct.node* %98, %struct.node** %sib1, align 8
  br label %99

; <label>:99                                      ; preds = %89, %82
  %100 = load %struct.node*, %struct.node** %sib1, align 8
  %101 = call %struct.node* @rightOf(%struct.node* %100)
  %102 = call i64 @colorOf(%struct.node* %101)
  %103 = icmp eq i64 %102, 1
  br i1 %103, label %104, label %113

; <label>:104                                     ; preds = %99
  %105 = load %struct.node*, %struct.node** %sib1, align 8
  %106 = call %struct.node* @leftOf(%struct.node* %105)
  %107 = call i64 @colorOf(%struct.node* %106)
  %108 = icmp eq i64 %107, 1
  br i1 %108, label %109, label %113

; <label>:109                                     ; preds = %104
  %110 = load %struct.node*, %struct.node** %sib1, align 8
  call void @setColor(%struct.node* %110, i64 0)
  %111 = load %struct.node*, %struct.node** %2, align 8
  %112 = call %struct.node* @parentOf(%struct.node* %111)
  store %struct.node* %112, %struct.node** %2, align 8
  br label %142

; <label>:113                                     ; preds = %104, %99
  %114 = load %struct.node*, %struct.node** %sib1, align 8
  %115 = call %struct.node* @leftOf(%struct.node* %114)
  %116 = call i64 @colorOf(%struct.node* %115)
  %117 = icmp eq i64 %116, 1
  br i1 %117, label %118, label %127

; <label>:118                                     ; preds = %113
  %119 = load %struct.node*, %struct.node** %sib1, align 8
  %120 = call %struct.node* @rightOf(%struct.node* %119)
  call void @setColor(%struct.node* %120, i64 1)
  %121 = load %struct.node*, %struct.node** %sib1, align 8
  call void @setColor(%struct.node* %121, i64 0)
  %122 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %123 = load %struct.node*, %struct.node** %sib1, align 8
  call void @rotateLeft(%struct.rbtree* %122, %struct.node* %123)
  %124 = load %struct.node*, %struct.node** %2, align 8
  %125 = call %struct.node* @parentOf(%struct.node* %124)
  %126 = call %struct.node* @leftOf(%struct.node* %125)
  store %struct.node* %126, %struct.node** %sib1, align 8
  br label %127

; <label>:127                                     ; preds = %118, %113
  %128 = load %struct.node*, %struct.node** %sib1, align 8
  %129 = load %struct.node*, %struct.node** %2, align 8
  %130 = call %struct.node* @parentOf(%struct.node* %129)
  %131 = call i64 @colorOf(%struct.node* %130)
  call void @setColor(%struct.node* %128, i64 %131)
  %132 = load %struct.node*, %struct.node** %2, align 8
  %133 = call %struct.node* @parentOf(%struct.node* %132)
  call void @setColor(%struct.node* %133, i64 1)
  %134 = load %struct.node*, %struct.node** %sib1, align 8
  %135 = call %struct.node* @leftOf(%struct.node* %134)
  call void @setColor(%struct.node* %135, i64 1)
  %136 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %137 = load %struct.node*, %struct.node** %2, align 8
  %138 = call %struct.node* @parentOf(%struct.node* %137)
  call void @rotateRight(%struct.rbtree* %136, %struct.node* %138)
  %139 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %140 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %139, i32 0, i32 0
  %141 = load %struct.node*, %struct.node** %140, align 8
  store %struct.node* %141, %struct.node** %2, align 8
  br label %142

; <label>:142                                     ; preds = %127, %109
  br label %143

; <label>:143                                     ; preds = %142, %81
  br label %3

; <label>:144                                     ; preds = %13
  %145 = load %struct.node*, %struct.node** %2, align 8
  %146 = icmp ne %struct.node* %145, null
  br i1 %146, label %147, label %155

; <label>:147                                     ; preds = %144
  %148 = load %struct.node*, %struct.node** %2, align 8
  %149 = getelementptr inbounds %struct.node, %struct.node* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 1
  br i1 %151, label %152, label %155

; <label>:152                                     ; preds = %147
  %153 = load %struct.node*, %struct.node** %2, align 8
  %154 = getelementptr inbounds %struct.node, %struct.node* %153, i32 0, i32 5
  store i64 1, i64* %154, align 8
  br label %155

; <label>:155                                     ; preds = %152, %147, %144
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @TMrbtree_delete(%struct.rbtree* %r, i8* %key) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca i8*, align 8
  %node = alloca %struct.node*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  store i8* %key, i8** %2, align 8
  store %struct.node* null, %struct.node** %node, align 8
  %3 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.node* @TMlookup(%struct.rbtree* %3, i8* %4)
  store %struct.node* %5, %struct.node** %node, align 8
  %6 = load %struct.node*, %struct.node** %node, align 8
  %7 = icmp ne %struct.node* %6, null
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %10 = load %struct.node*, %struct.node** %node, align 8
  %11 = call %struct.node* @TMdelete(%struct.rbtree* %9, %struct.node* %10)
  store %struct.node* %11, %struct.node** %node, align 8
  br label %12

; <label>:12                                      ; preds = %8, %0
  %13 = load %struct.node*, %struct.node** %node, align 8
  %14 = icmp ne %struct.node* %13, null
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %12
  %16 = load %struct.node*, %struct.node** %node, align 8
  call void @TMreleaseNode(%struct.node* %16)
  br label %17

; <label>:17                                      ; preds = %15, %12
  %18 = load %struct.node*, %struct.node** %node, align 8
  %19 = icmp ne %struct.node* %18, null
  %20 = select i1 %19, i32 1, i32 0
  %21 = sext i32 %20 to i64
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @TMlookup(%struct.rbtree* %s, i8* %k) #12 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %p = alloca %struct.node*, align 8
  %cmp = alloca i64, align 8
  store %struct.rbtree* %s, %struct.rbtree** %2, align 8
  store i8* %k, i8** %3, align 8
  %4 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %5 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %4, i32 0, i32 0
  %6 = load %struct.node*, %struct.node** %5, align 8
  %7 = bitcast %struct.node* %6 to i8*
  %8 = bitcast i8* %7 to %struct.node*
  store %struct.node* %8, %struct.node** %p, align 8
  br label %9

; <label>:9                                       ; preds = %40, %0
  %10 = load %struct.node*, %struct.node** %p, align 8
  %11 = icmp ne %struct.node* %10, null
  br i1 %11, label %12, label %42

; <label>:12                                      ; preds = %9
  %13 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %14 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %13, i32 0, i32 1
  %15 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %14, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.node*, %struct.node** %p, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 %15(i8* %16, i8* %19)
  store i64 %20, i64* %cmp, align 8
  %21 = load i64, i64* %cmp, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %12
  %24 = load %struct.node*, %struct.node** %p, align 8
  store %struct.node* %24, %struct.node** %1, align 8
  br label %43

; <label>:25                                      ; preds = %12
  %26 = load i64, i64* %cmp, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %34

; <label>:28                                      ; preds = %25
  %29 = load %struct.node*, %struct.node** %p, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %31 = load %struct.node*, %struct.node** %30, align 8
  %32 = bitcast %struct.node* %31 to i8*
  %33 = bitcast i8* %32 to %struct.node*
  br label %40

; <label>:34                                      ; preds = %25
  %35 = load %struct.node*, %struct.node** %p, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 4
  %37 = load %struct.node*, %struct.node** %36, align 8
  %38 = bitcast %struct.node* %37 to i8*
  %39 = bitcast i8* %38 to %struct.node*
  br label %40

; <label>:40                                      ; preds = %34, %28
  %41 = phi %struct.node* [ %33, %28 ], [ %39, %34 ]
  store %struct.node* %41, %struct.node** %p, align 8
  br label %9

; <label>:42                                      ; preds = %9
  store %struct.node* null, %struct.node** %1, align 8
  br label %43

; <label>:43                                      ; preds = %42, %23
  %44 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %44
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @TMdelete(%struct.rbtree* %s, %struct.node* %p) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %s1 = alloca %struct.node*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %replacement = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %pp = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  %11 = alloca %struct.node*, align 8
  %12 = alloca %struct.node*, align 8
  %pp2 = alloca %struct.node*, align 8
  %13 = alloca %struct.node*, align 8
  %14 = alloca %struct.node*, align 8
  %15 = alloca %struct.node*, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %p, %struct.node** %2, align 8
  %16 = load %struct.node*, %struct.node** %2, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %17, align 8
  %19 = bitcast %struct.node* %18 to i8*
  %20 = bitcast i8* %19 to %struct.node*
  %21 = icmp ne %struct.node* %20, null
  br i1 %21, label %22, label %51

; <label>:22                                      ; preds = %0
  %23 = load %struct.node*, %struct.node** %2, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 4
  %25 = load %struct.node*, %struct.node** %24, align 8
  %26 = bitcast %struct.node* %25 to i8*
  %27 = bitcast i8* %26 to %struct.node*
  %28 = icmp ne %struct.node* %27, null
  br i1 %28, label %29, label %51

; <label>:29                                      ; preds = %22
  %30 = load %struct.node*, %struct.node** %2, align 8
  %31 = call %struct.node* @TMsuccessor(%struct.node* %30)
  store %struct.node* %31, %struct.node** %s1, align 8
  %32 = load %struct.node*, %struct.node** %s1, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.node*, %struct.node** %2, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.node*, %struct.node** %2, align 8
  %38 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %3, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load %struct.node*, %struct.node** %s1, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.node*, %struct.node** %2, align 8
  %45 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.node*, %struct.node** %2, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %4, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.node*, %struct.node** %s1, align 8
  store %struct.node* %50, %struct.node** %2, align 8
  br label %51

; <label>:51                                      ; preds = %29, %22, %0
  %52 = load %struct.node*, %struct.node** %2, align 8
  %53 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 3
  %54 = load %struct.node*, %struct.node** %53, align 8
  %55 = bitcast %struct.node* %54 to i8*
  %56 = bitcast i8* %55 to %struct.node*
  %57 = icmp ne %struct.node* %56, null
  br i1 %57, label %58, label %64

; <label>:58                                      ; preds = %51
  %59 = load %struct.node*, %struct.node** %2, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 3
  %61 = load %struct.node*, %struct.node** %60, align 8
  %62 = bitcast %struct.node* %61 to i8*
  %63 = bitcast i8* %62 to %struct.node*
  br label %70

; <label>:64                                      ; preds = %51
  %65 = load %struct.node*, %struct.node** %2, align 8
  %66 = getelementptr inbounds %struct.node, %struct.node* %65, i32 0, i32 4
  %67 = load %struct.node*, %struct.node** %66, align 8
  %68 = bitcast %struct.node* %67 to i8*
  %69 = bitcast i8* %68 to %struct.node*
  br label %70

; <label>:70                                      ; preds = %64, %58
  %71 = phi %struct.node* [ %63, %58 ], [ %69, %64 ]
  store %struct.node* %71, %struct.node** %replacement, align 8
  %72 = load %struct.node*, %struct.node** %replacement, align 8
  %73 = icmp ne %struct.node* %72, null
  br i1 %73, label %74, label %153

; <label>:74                                      ; preds = %70
  %75 = load %struct.node*, %struct.node** %2, align 8
  %76 = getelementptr inbounds %struct.node, %struct.node* %75, i32 0, i32 2
  %77 = load %struct.node*, %struct.node** %76, align 8
  %78 = bitcast %struct.node* %77 to i8*
  %79 = bitcast i8* %78 to %struct.node*
  %80 = load %struct.node*, %struct.node** %replacement, align 8
  %81 = getelementptr inbounds %struct.node, %struct.node* %80, i32 0, i32 2
  store %struct.node* %79, %struct.node** %81, align 8
  %82 = load %struct.node*, %struct.node** %replacement, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 2
  %84 = load %struct.node*, %struct.node** %83, align 8
  store %struct.node* %84, %struct.node** %5, align 8
  %85 = load %struct.node*, %struct.node** %5, align 8
  %86 = load %struct.node*, %struct.node** %2, align 8
  %87 = getelementptr inbounds %struct.node, %struct.node* %86, i32 0, i32 2
  %88 = load %struct.node*, %struct.node** %87, align 8
  %89 = bitcast %struct.node* %88 to i8*
  %90 = bitcast i8* %89 to %struct.node*
  store %struct.node* %90, %struct.node** %pp, align 8
  %91 = load %struct.node*, %struct.node** %pp, align 8
  %92 = icmp eq %struct.node* %91, null
  br i1 %92, label %93, label %101

; <label>:93                                      ; preds = %74
  %94 = load %struct.node*, %struct.node** %replacement, align 8
  %95 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %96 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %95, i32 0, i32 0
  store %struct.node* %94, %struct.node** %96, align 8
  %97 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %98 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %97, i32 0, i32 0
  %99 = load %struct.node*, %struct.node** %98, align 8
  store %struct.node* %99, %struct.node** %6, align 8
  %100 = load %struct.node*, %struct.node** %6, align 8
  br label %126

; <label>:101                                     ; preds = %74
  %102 = load %struct.node*, %struct.node** %2, align 8
  %103 = load %struct.node*, %struct.node** %pp, align 8
  %104 = getelementptr inbounds %struct.node, %struct.node* %103, i32 0, i32 3
  %105 = load %struct.node*, %struct.node** %104, align 8
  %106 = bitcast %struct.node* %105 to i8*
  %107 = bitcast i8* %106 to %struct.node*
  %108 = icmp eq %struct.node* %102, %107
  br i1 %108, label %109, label %117

; <label>:109                                     ; preds = %101
  %110 = load %struct.node*, %struct.node** %replacement, align 8
  %111 = load %struct.node*, %struct.node** %pp, align 8
  %112 = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 3
  store %struct.node* %110, %struct.node** %112, align 8
  %113 = load %struct.node*, %struct.node** %pp, align 8
  %114 = getelementptr inbounds %struct.node, %struct.node* %113, i32 0, i32 3
  %115 = load %struct.node*, %struct.node** %114, align 8
  store %struct.node* %115, %struct.node** %7, align 8
  %116 = load %struct.node*, %struct.node** %7, align 8
  br label %125

; <label>:117                                     ; preds = %101
  %118 = load %struct.node*, %struct.node** %replacement, align 8
  %119 = load %struct.node*, %struct.node** %pp, align 8
  %120 = getelementptr inbounds %struct.node, %struct.node* %119, i32 0, i32 4
  store %struct.node* %118, %struct.node** %120, align 8
  %121 = load %struct.node*, %struct.node** %pp, align 8
  %122 = getelementptr inbounds %struct.node, %struct.node* %121, i32 0, i32 4
  %123 = load %struct.node*, %struct.node** %122, align 8
  store %struct.node* %123, %struct.node** %8, align 8
  %124 = load %struct.node*, %struct.node** %8, align 8
  br label %125

; <label>:125                                     ; preds = %117, %109
  br label %126

; <label>:126                                     ; preds = %125, %93
  %127 = load %struct.node*, %struct.node** %2, align 8
  %128 = getelementptr inbounds %struct.node, %struct.node* %127, i32 0, i32 3
  store %struct.node* null, %struct.node** %128, align 8
  %129 = load %struct.node*, %struct.node** %2, align 8
  %130 = getelementptr inbounds %struct.node, %struct.node* %129, i32 0, i32 3
  %131 = load %struct.node*, %struct.node** %130, align 8
  store %struct.node* %131, %struct.node** %9, align 8
  %132 = load %struct.node*, %struct.node** %9, align 8
  %133 = load %struct.node*, %struct.node** %2, align 8
  %134 = getelementptr inbounds %struct.node, %struct.node* %133, i32 0, i32 4
  store %struct.node* null, %struct.node** %134, align 8
  %135 = load %struct.node*, %struct.node** %2, align 8
  %136 = getelementptr inbounds %struct.node, %struct.node* %135, i32 0, i32 4
  %137 = load %struct.node*, %struct.node** %136, align 8
  store %struct.node* %137, %struct.node** %10, align 8
  %138 = load %struct.node*, %struct.node** %10, align 8
  %139 = load %struct.node*, %struct.node** %2, align 8
  %140 = getelementptr inbounds %struct.node, %struct.node* %139, i32 0, i32 2
  store %struct.node* null, %struct.node** %140, align 8
  %141 = load %struct.node*, %struct.node** %2, align 8
  %142 = getelementptr inbounds %struct.node, %struct.node* %141, i32 0, i32 2
  %143 = load %struct.node*, %struct.node** %142, align 8
  store %struct.node* %143, %struct.node** %11, align 8
  %144 = load %struct.node*, %struct.node** %11, align 8
  %145 = load %struct.node*, %struct.node** %2, align 8
  %146 = getelementptr inbounds %struct.node, %struct.node* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 1
  br i1 %148, label %149, label %152

; <label>:149                                     ; preds = %126
  %150 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %151 = load %struct.node*, %struct.node** %replacement, align 8
  call void @TMfixAfterDeletion(%struct.rbtree* %150, %struct.node* %151)
  br label %152

; <label>:152                                     ; preds = %149, %126
  br label %223

; <label>:153                                     ; preds = %70
  %154 = load %struct.node*, %struct.node** %2, align 8
  %155 = getelementptr inbounds %struct.node, %struct.node* %154, i32 0, i32 2
  %156 = load %struct.node*, %struct.node** %155, align 8
  %157 = bitcast %struct.node* %156 to i8*
  %158 = bitcast i8* %157 to %struct.node*
  %159 = icmp eq %struct.node* %158, null
  br i1 %159, label %160, label %167

; <label>:160                                     ; preds = %153
  %161 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %162 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %161, i32 0, i32 0
  store %struct.node* null, %struct.node** %162, align 8
  %163 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %164 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %163, i32 0, i32 0
  %165 = load %struct.node*, %struct.node** %164, align 8
  store %struct.node* %165, %struct.node** %12, align 8
  %166 = load %struct.node*, %struct.node** %12, align 8
  br label %222

; <label>:167                                     ; preds = %153
  %168 = load %struct.node*, %struct.node** %2, align 8
  %169 = getelementptr inbounds %struct.node, %struct.node* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 1
  br i1 %171, label %172, label %175

; <label>:172                                     ; preds = %167
  %173 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %174 = load %struct.node*, %struct.node** %2, align 8
  call void @TMfixAfterDeletion(%struct.rbtree* %173, %struct.node* %174)
  br label %175

; <label>:175                                     ; preds = %172, %167
  %176 = load %struct.node*, %struct.node** %2, align 8
  %177 = getelementptr inbounds %struct.node, %struct.node* %176, i32 0, i32 2
  %178 = load %struct.node*, %struct.node** %177, align 8
  %179 = bitcast %struct.node* %178 to i8*
  %180 = bitcast i8* %179 to %struct.node*
  store %struct.node* %180, %struct.node** %pp2, align 8
  %181 = load %struct.node*, %struct.node** %pp2, align 8
  %182 = icmp ne %struct.node* %181, null
  br i1 %182, label %183, label %221

; <label>:183                                     ; preds = %175
  %184 = load %struct.node*, %struct.node** %2, align 8
  %185 = load %struct.node*, %struct.node** %pp2, align 8
  %186 = getelementptr inbounds %struct.node, %struct.node* %185, i32 0, i32 3
  %187 = load %struct.node*, %struct.node** %186, align 8
  %188 = bitcast %struct.node* %187 to i8*
  %189 = bitcast i8* %188 to %struct.node*
  %190 = icmp eq %struct.node* %184, %189
  br i1 %190, label %191, label %198

; <label>:191                                     ; preds = %183
  %192 = load %struct.node*, %struct.node** %pp2, align 8
  %193 = getelementptr inbounds %struct.node, %struct.node* %192, i32 0, i32 3
  store %struct.node* null, %struct.node** %193, align 8
  %194 = load %struct.node*, %struct.node** %pp2, align 8
  %195 = getelementptr inbounds %struct.node, %struct.node* %194, i32 0, i32 3
  %196 = load %struct.node*, %struct.node** %195, align 8
  store %struct.node* %196, %struct.node** %13, align 8
  %197 = load %struct.node*, %struct.node** %13, align 8
  br label %214

; <label>:198                                     ; preds = %183
  %199 = load %struct.node*, %struct.node** %2, align 8
  %200 = load %struct.node*, %struct.node** %pp2, align 8
  %201 = getelementptr inbounds %struct.node, %struct.node* %200, i32 0, i32 4
  %202 = load %struct.node*, %struct.node** %201, align 8
  %203 = bitcast %struct.node* %202 to i8*
  %204 = bitcast i8* %203 to %struct.node*
  %205 = icmp eq %struct.node* %199, %204
  br i1 %205, label %206, label %213

; <label>:206                                     ; preds = %198
  %207 = load %struct.node*, %struct.node** %pp2, align 8
  %208 = getelementptr inbounds %struct.node, %struct.node* %207, i32 0, i32 4
  store %struct.node* null, %struct.node** %208, align 8
  %209 = load %struct.node*, %struct.node** %pp2, align 8
  %210 = getelementptr inbounds %struct.node, %struct.node* %209, i32 0, i32 4
  %211 = load %struct.node*, %struct.node** %210, align 8
  store %struct.node* %211, %struct.node** %14, align 8
  %212 = load %struct.node*, %struct.node** %14, align 8
  br label %213

; <label>:213                                     ; preds = %206, %198
  br label %214

; <label>:214                                     ; preds = %213, %191
  %215 = load %struct.node*, %struct.node** %2, align 8
  %216 = getelementptr inbounds %struct.node, %struct.node* %215, i32 0, i32 2
  store %struct.node* null, %struct.node** %216, align 8
  %217 = load %struct.node*, %struct.node** %2, align 8
  %218 = getelementptr inbounds %struct.node, %struct.node* %217, i32 0, i32 2
  %219 = load %struct.node*, %struct.node** %218, align 8
  store %struct.node* %219, %struct.node** %15, align 8
  %220 = load %struct.node*, %struct.node** %15, align 8
  br label %221

; <label>:221                                     ; preds = %214, %175
  br label %222

; <label>:222                                     ; preds = %221, %160
  br label %223

; <label>:223                                     ; preds = %222, %152
  %224 = load %struct.node*, %struct.node** %2, align 8
  ret %struct.node* %224
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @TMsuccessor(%struct.node* %t) #12 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca %struct.node*, align 8
  %p = alloca %struct.node*, align 8
  %p1 = alloca %struct.node*, align 8
  %ch = alloca %struct.node*, align 8
  store %struct.node* %t, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = icmp eq %struct.node* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store %struct.node* null, %struct.node** %1, align 8
  br label %63

; <label>:6                                       ; preds = %0
  %7 = load %struct.node*, %struct.node** %2, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 4
  %9 = load %struct.node*, %struct.node** %8, align 8
  %10 = bitcast %struct.node* %9 to i8*
  %11 = bitcast i8* %10 to %struct.node*
  %12 = icmp ne %struct.node* %11, null
  br i1 %12, label %13, label %34

; <label>:13                                      ; preds = %6
  %14 = load %struct.node*, %struct.node** %2, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 4
  %16 = load %struct.node*, %struct.node** %15, align 8
  %17 = bitcast %struct.node* %16 to i8*
  %18 = bitcast i8* %17 to %struct.node*
  store %struct.node* %18, %struct.node** %p, align 8
  br label %19

; <label>:19                                      ; preds = %26, %13
  %20 = load %struct.node*, %struct.node** %p, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 3
  %22 = load %struct.node*, %struct.node** %21, align 8
  %23 = bitcast %struct.node* %22 to i8*
  %24 = bitcast i8* %23 to %struct.node*
  %25 = icmp ne %struct.node* %24, null
  br i1 %25, label %26, label %32

; <label>:26                                      ; preds = %19
  %27 = load %struct.node*, %struct.node** %p, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 3
  %29 = load %struct.node*, %struct.node** %28, align 8
  %30 = bitcast %struct.node* %29 to i8*
  %31 = bitcast i8* %30 to %struct.node*
  store %struct.node* %31, %struct.node** %p, align 8
  br label %19

; <label>:32                                      ; preds = %19
  %33 = load %struct.node*, %struct.node** %p, align 8
  store %struct.node* %33, %struct.node** %1, align 8
  br label %63

; <label>:34                                      ; preds = %6
  %35 = load %struct.node*, %struct.node** %2, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 2
  %37 = load %struct.node*, %struct.node** %36, align 8
  %38 = bitcast %struct.node* %37 to i8*
  %39 = bitcast i8* %38 to %struct.node*
  store %struct.node* %39, %struct.node** %p1, align 8
  %40 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %40, %struct.node** %ch, align 8
  br label %41

; <label>:41                                      ; preds = %54, %34
  %42 = load %struct.node*, %struct.node** %p1, align 8
  %43 = icmp ne %struct.node* %42, null
  br i1 %43, label %44, label %52

; <label>:44                                      ; preds = %41
  %45 = load %struct.node*, %struct.node** %ch, align 8
  %46 = load %struct.node*, %struct.node** %p1, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 4
  %48 = load %struct.node*, %struct.node** %47, align 8
  %49 = bitcast %struct.node* %48 to i8*
  %50 = bitcast i8* %49 to %struct.node*
  %51 = icmp eq %struct.node* %45, %50
  br label %52

; <label>:52                                      ; preds = %44, %41
  %53 = phi i1 [ false, %41 ], [ %51, %44 ]
  br i1 %53, label %54, label %61

; <label>:54                                      ; preds = %52
  %55 = load %struct.node*, %struct.node** %p1, align 8
  store %struct.node* %55, %struct.node** %ch, align 8
  %56 = load %struct.node*, %struct.node** %p1, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 2
  %58 = load %struct.node*, %struct.node** %57, align 8
  %59 = bitcast %struct.node* %58 to i8*
  %60 = bitcast i8* %59 to %struct.node*
  store %struct.node* %60, %struct.node** %p1, align 8
  br label %41

; <label>:61                                      ; preds = %52
  %62 = load %struct.node*, %struct.node** %p1, align 8
  store %struct.node* %62, %struct.node** %1, align 8
  br label %63

; <label>:63                                      ; preds = %61, %32, %5
  %64 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %64
}

; Function Attrs: nounwind uwtable
define internal void @TMfixAfterDeletion(%struct.rbtree* %s, %struct.node* %x) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca %struct.node*, align 8
  %sib = alloca %struct.node*, align 8
  %sib1 = alloca %struct.node*, align 8
  %3 = alloca i64, align 8
  store %struct.rbtree* %s, %struct.rbtree** %1, align 8
  store %struct.node* %x, %struct.node** %2, align 8
  br label %4

; <label>:4                                       ; preds = %150, %0
  %5 = load %struct.node*, %struct.node** %2, align 8
  %6 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %7 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %6, i32 0, i32 0
  %8 = load %struct.node*, %struct.node** %7, align 8
  %9 = bitcast %struct.node* %8 to i8*
  %10 = bitcast i8* %9 to %struct.node*
  %11 = icmp ne %struct.node* %5, %10
  br i1 %11, label %12, label %16

; <label>:12                                      ; preds = %4
  %13 = load %struct.node*, %struct.node** %2, align 8
  %14 = call i64 @TMcolorOf(%struct.node* %13)
  %15 = icmp eq i64 %14, 1
  br label %16

; <label>:16                                      ; preds = %12, %4
  %17 = phi i1 [ false, %4 ], [ %15, %12 ]
  br i1 %17, label %18, label %151

; <label>:18                                      ; preds = %16
  %19 = load %struct.node*, %struct.node** %2, align 8
  %20 = load %struct.node*, %struct.node** %2, align 8
  %21 = call %struct.node* @TMparentOf(%struct.node* %20)
  %22 = call %struct.node* @TMleftOf(%struct.node* %21)
  %23 = icmp eq %struct.node* %19, %22
  br i1 %23, label %24, label %87

; <label>:24                                      ; preds = %18
  %25 = load %struct.node*, %struct.node** %2, align 8
  %26 = call %struct.node* @TMparentOf(%struct.node* %25)
  %27 = call %struct.node* @TMrightOf(%struct.node* %26)
  store %struct.node* %27, %struct.node** %sib, align 8
  %28 = load %struct.node*, %struct.node** %sib, align 8
  %29 = call i64 @TMcolorOf(%struct.node* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %41

; <label>:31                                      ; preds = %24
  %32 = load %struct.node*, %struct.node** %sib, align 8
  call void @TMsetColor(%struct.node* %32, i64 1)
  %33 = load %struct.node*, %struct.node** %2, align 8
  %34 = call %struct.node* @TMparentOf(%struct.node* %33)
  call void @TMsetColor(%struct.node* %34, i64 0)
  %35 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %36 = load %struct.node*, %struct.node** %2, align 8
  %37 = call %struct.node* @TMparentOf(%struct.node* %36)
  call void @TMrotateLeft(%struct.rbtree* %35, %struct.node* %37)
  %38 = load %struct.node*, %struct.node** %2, align 8
  %39 = call %struct.node* @TMparentOf(%struct.node* %38)
  %40 = call %struct.node* @TMrightOf(%struct.node* %39)
  store %struct.node* %40, %struct.node** %sib, align 8
  br label %41

; <label>:41                                      ; preds = %31, %24
  %42 = load %struct.node*, %struct.node** %sib, align 8
  %43 = call %struct.node* @TMleftOf(%struct.node* %42)
  %44 = call i64 @TMcolorOf(%struct.node* %43)
  %45 = icmp eq i64 %44, 1
  br i1 %45, label %46, label %55

; <label>:46                                      ; preds = %41
  %47 = load %struct.node*, %struct.node** %sib, align 8
  %48 = call %struct.node* @TMrightOf(%struct.node* %47)
  %49 = call i64 @TMcolorOf(%struct.node* %48)
  %50 = icmp eq i64 %49, 1
  br i1 %50, label %51, label %55

; <label>:51                                      ; preds = %46
  %52 = load %struct.node*, %struct.node** %sib, align 8
  call void @TMsetColor(%struct.node* %52, i64 0)
  %53 = load %struct.node*, %struct.node** %2, align 8
  %54 = call %struct.node* @TMparentOf(%struct.node* %53)
  store %struct.node* %54, %struct.node** %2, align 8
  br label %86

; <label>:55                                      ; preds = %46, %41
  %56 = load %struct.node*, %struct.node** %sib, align 8
  %57 = call %struct.node* @TMrightOf(%struct.node* %56)
  %58 = call i64 @TMcolorOf(%struct.node* %57)
  %59 = icmp eq i64 %58, 1
  br i1 %59, label %60, label %69

; <label>:60                                      ; preds = %55
  %61 = load %struct.node*, %struct.node** %sib, align 8
  %62 = call %struct.node* @TMleftOf(%struct.node* %61)
  call void @TMsetColor(%struct.node* %62, i64 1)
  %63 = load %struct.node*, %struct.node** %sib, align 8
  call void @TMsetColor(%struct.node* %63, i64 0)
  %64 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %65 = load %struct.node*, %struct.node** %sib, align 8
  call void @TMrotateRight(%struct.rbtree* %64, %struct.node* %65)
  %66 = load %struct.node*, %struct.node** %2, align 8
  %67 = call %struct.node* @TMparentOf(%struct.node* %66)
  %68 = call %struct.node* @TMrightOf(%struct.node* %67)
  store %struct.node* %68, %struct.node** %sib, align 8
  br label %69

; <label>:69                                      ; preds = %60, %55
  %70 = load %struct.node*, %struct.node** %sib, align 8
  %71 = load %struct.node*, %struct.node** %2, align 8
  %72 = call %struct.node* @TMparentOf(%struct.node* %71)
  %73 = call i64 @TMcolorOf(%struct.node* %72)
  call void @TMsetColor(%struct.node* %70, i64 %73)
  %74 = load %struct.node*, %struct.node** %2, align 8
  %75 = call %struct.node* @TMparentOf(%struct.node* %74)
  call void @TMsetColor(%struct.node* %75, i64 1)
  %76 = load %struct.node*, %struct.node** %sib, align 8
  %77 = call %struct.node* @TMrightOf(%struct.node* %76)
  call void @TMsetColor(%struct.node* %77, i64 1)
  %78 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %79 = load %struct.node*, %struct.node** %2, align 8
  %80 = call %struct.node* @TMparentOf(%struct.node* %79)
  call void @TMrotateLeft(%struct.rbtree* %78, %struct.node* %80)
  %81 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %82 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %81, i32 0, i32 0
  %83 = load %struct.node*, %struct.node** %82, align 8
  %84 = bitcast %struct.node* %83 to i8*
  %85 = bitcast i8* %84 to %struct.node*
  store %struct.node* %85, %struct.node** %2, align 8
  br label %86

; <label>:86                                      ; preds = %69, %51
  br label %150

; <label>:87                                      ; preds = %18
  %88 = load %struct.node*, %struct.node** %2, align 8
  %89 = call %struct.node* @TMparentOf(%struct.node* %88)
  %90 = call %struct.node* @TMleftOf(%struct.node* %89)
  store %struct.node* %90, %struct.node** %sib1, align 8
  %91 = load %struct.node*, %struct.node** %sib1, align 8
  %92 = call i64 @TMcolorOf(%struct.node* %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %104

; <label>:94                                      ; preds = %87
  %95 = load %struct.node*, %struct.node** %sib1, align 8
  call void @TMsetColor(%struct.node* %95, i64 1)
  %96 = load %struct.node*, %struct.node** %2, align 8
  %97 = call %struct.node* @TMparentOf(%struct.node* %96)
  call void @TMsetColor(%struct.node* %97, i64 0)
  %98 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %99 = load %struct.node*, %struct.node** %2, align 8
  %100 = call %struct.node* @TMparentOf(%struct.node* %99)
  call void @TMrotateRight(%struct.rbtree* %98, %struct.node* %100)
  %101 = load %struct.node*, %struct.node** %2, align 8
  %102 = call %struct.node* @TMparentOf(%struct.node* %101)
  %103 = call %struct.node* @TMleftOf(%struct.node* %102)
  store %struct.node* %103, %struct.node** %sib1, align 8
  br label %104

; <label>:104                                     ; preds = %94, %87
  %105 = load %struct.node*, %struct.node** %sib1, align 8
  %106 = call %struct.node* @TMrightOf(%struct.node* %105)
  %107 = call i64 @TMcolorOf(%struct.node* %106)
  %108 = icmp eq i64 %107, 1
  br i1 %108, label %109, label %118

; <label>:109                                     ; preds = %104
  %110 = load %struct.node*, %struct.node** %sib1, align 8
  %111 = call %struct.node* @TMleftOf(%struct.node* %110)
  %112 = call i64 @TMcolorOf(%struct.node* %111)
  %113 = icmp eq i64 %112, 1
  br i1 %113, label %114, label %118

; <label>:114                                     ; preds = %109
  %115 = load %struct.node*, %struct.node** %sib1, align 8
  call void @TMsetColor(%struct.node* %115, i64 0)
  %116 = load %struct.node*, %struct.node** %2, align 8
  %117 = call %struct.node* @TMparentOf(%struct.node* %116)
  store %struct.node* %117, %struct.node** %2, align 8
  br label %149

; <label>:118                                     ; preds = %109, %104
  %119 = load %struct.node*, %struct.node** %sib1, align 8
  %120 = call %struct.node* @TMleftOf(%struct.node* %119)
  %121 = call i64 @TMcolorOf(%struct.node* %120)
  %122 = icmp eq i64 %121, 1
  br i1 %122, label %123, label %132

; <label>:123                                     ; preds = %118
  %124 = load %struct.node*, %struct.node** %sib1, align 8
  %125 = call %struct.node* @TMrightOf(%struct.node* %124)
  call void @TMsetColor(%struct.node* %125, i64 1)
  %126 = load %struct.node*, %struct.node** %sib1, align 8
  call void @TMsetColor(%struct.node* %126, i64 0)
  %127 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %128 = load %struct.node*, %struct.node** %sib1, align 8
  call void @TMrotateLeft(%struct.rbtree* %127, %struct.node* %128)
  %129 = load %struct.node*, %struct.node** %2, align 8
  %130 = call %struct.node* @TMparentOf(%struct.node* %129)
  %131 = call %struct.node* @TMleftOf(%struct.node* %130)
  store %struct.node* %131, %struct.node** %sib1, align 8
  br label %132

; <label>:132                                     ; preds = %123, %118
  %133 = load %struct.node*, %struct.node** %sib1, align 8
  %134 = load %struct.node*, %struct.node** %2, align 8
  %135 = call %struct.node* @TMparentOf(%struct.node* %134)
  %136 = call i64 @TMcolorOf(%struct.node* %135)
  call void @TMsetColor(%struct.node* %133, i64 %136)
  %137 = load %struct.node*, %struct.node** %2, align 8
  %138 = call %struct.node* @TMparentOf(%struct.node* %137)
  call void @TMsetColor(%struct.node* %138, i64 1)
  %139 = load %struct.node*, %struct.node** %sib1, align 8
  %140 = call %struct.node* @TMleftOf(%struct.node* %139)
  call void @TMsetColor(%struct.node* %140, i64 1)
  %141 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %142 = load %struct.node*, %struct.node** %2, align 8
  %143 = call %struct.node* @TMparentOf(%struct.node* %142)
  call void @TMrotateRight(%struct.rbtree* %141, %struct.node* %143)
  %144 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %145 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %144, i32 0, i32 0
  %146 = load %struct.node*, %struct.node** %145, align 8
  %147 = bitcast %struct.node* %146 to i8*
  %148 = bitcast i8* %147 to %struct.node*
  store %struct.node* %148, %struct.node** %2, align 8
  br label %149

; <label>:149                                     ; preds = %132, %114
  br label %150

; <label>:150                                     ; preds = %149, %86
  br label %4

; <label>:151                                     ; preds = %16
  %152 = load %struct.node*, %struct.node** %2, align 8
  %153 = icmp ne %struct.node* %152, null
  br i1 %153, label %154, label %166

; <label>:154                                     ; preds = %151
  %155 = load %struct.node*, %struct.node** %2, align 8
  %156 = getelementptr inbounds %struct.node, %struct.node* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 1
  br i1 %158, label %159, label %166

; <label>:159                                     ; preds = %154
  %160 = load %struct.node*, %struct.node** %2, align 8
  %161 = getelementptr inbounds %struct.node, %struct.node* %160, i32 0, i32 5
  store i64 1, i64* %161, align 8
  %162 = load %struct.node*, %struct.node** %2, align 8
  %163 = getelementptr inbounds %struct.node, %struct.node* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %3, align 8
  %165 = load i64, i64* %3, align 8
  br label %166

; <label>:166                                     ; preds = %159, %154, %151
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @rbtree_update(%struct.rbtree* %r, i8* %key, i8* %val) #12 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %nn = alloca %struct.node*, align 8
  %ex = alloca %struct.node*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %2, align 8
  store i8* %key, i8** %3, align 8
  store i8* %val, i8** %4, align 8
  %5 = call %struct.node* @getNode()
  store %struct.node* %5, %struct.node** %nn, align 8
  %6 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.node*, %struct.node** %nn, align 8
  %10 = call %struct.node* @insert(%struct.rbtree* %6, i8* %7, i8* %8, %struct.node* %9)
  store %struct.node* %10, %struct.node** %ex, align 8
  %11 = load %struct.node*, %struct.node** %ex, align 8
  %12 = icmp ne %struct.node* %11, null
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %0
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.node*, %struct.node** %ex, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.node*, %struct.node** %nn, align 8
  call void @releaseNode(%struct.node* %17)
  store i64 1, i64* %1, align 8
  br label %19

; <label>:18                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %19

; <label>:19                                      ; preds = %18, %13
  %20 = load i64, i64* %1, align 8
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define i64 @TMrbtree_update(%struct.rbtree* %r, i8* %key, i8* %val) #12 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %nn = alloca %struct.node*, align 8
  %ex = alloca %struct.node*, align 8
  %5 = alloca i8*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %2, align 8
  store i8* %key, i8** %3, align 8
  store i8* %val, i8** %4, align 8
  %6 = call %struct.node* @TMgetNode()
  store %struct.node* %6, %struct.node** %nn, align 8
  %7 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.node*, %struct.node** %nn, align 8
  %11 = call %struct.node* @TMinsert(%struct.rbtree* %7, i8* %8, i8* %9, %struct.node* %10)
  store %struct.node* %11, %struct.node** %ex, align 8
  %12 = load %struct.node*, %struct.node** %ex, align 8
  %13 = icmp ne %struct.node* %12, null
  br i1 %13, label %14, label %23

; <label>:14                                      ; preds = %0
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.node*, %struct.node** %ex, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.node*, %struct.node** %ex, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.node*, %struct.node** %nn, align 8
  call void @TMreleaseNode(%struct.node* %22)
  store i64 1, i64* %1, align 8
  br label %24

; <label>:23                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %24

; <label>:24                                      ; preds = %23, %14
  %25 = load i64, i64* %1, align 8
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define i8* @rbtree_get(%struct.rbtree* %r, i8* %key) #12 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %n = alloca %struct.node*, align 8
  %val = alloca i8*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %2, align 8
  store i8* %key, i8** %3, align 8
  %4 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.node* @lookup(%struct.rbtree* %4, i8* %5)
  store %struct.node* %6, %struct.node** %n, align 8
  %7 = load %struct.node*, %struct.node** %n, align 8
  %8 = icmp ne %struct.node* %7, null
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %0
  %10 = load %struct.node*, %struct.node** %n, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %val, align 8
  %13 = load i8*, i8** %val, align 8
  store i8* %13, i8** %1, align 8
  br label %15

; <label>:14                                      ; preds = %0
  store i8* null, i8** %1, align 8
  br label %15

; <label>:15                                      ; preds = %14, %9
  %16 = load i8*, i8** %1, align 8
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define i8* @TMrbtree_get(%struct.rbtree* %r, i8* %key) #12 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.rbtree*, align 8
  %3 = alloca i8*, align 8
  %n = alloca %struct.node*, align 8
  %val = alloca i8*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %2, align 8
  store i8* %key, i8** %3, align 8
  %4 = load %struct.rbtree*, %struct.rbtree** %2, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.node* @TMlookup(%struct.rbtree* %4, i8* %5)
  store %struct.node* %6, %struct.node** %n, align 8
  %7 = load %struct.node*, %struct.node** %n, align 8
  %8 = icmp ne %struct.node* %7, null
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %0
  %10 = load %struct.node*, %struct.node** %n, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %val, align 8
  %13 = load i8*, i8** %val, align 8
  store i8* %13, i8** %1, align 8
  br label %15

; <label>:14                                      ; preds = %0
  store i8* null, i8** %1, align 8
  br label %15

; <label>:15                                      ; preds = %14, %9
  %16 = load i8*, i8** %1, align 8
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define i64 @rbtree_contains(%struct.rbtree* %r, i8* %key) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca i8*, align 8
  %n = alloca %struct.node*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  store i8* %key, i8** %2, align 8
  %3 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.node* @lookup(%struct.rbtree* %3, i8* %4)
  store %struct.node* %5, %struct.node** %n, align 8
  %6 = load %struct.node*, %struct.node** %n, align 8
  %7 = icmp ne %struct.node* %6, null
  %8 = zext i1 %7 to i32
  %9 = sext i32 %8 to i64
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i64 @TMrbtree_contains(%struct.rbtree* %r, i8* %key) #12 {
  %1 = alloca %struct.rbtree*, align 8
  %2 = alloca i8*, align 8
  %n = alloca %struct.node*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  store i8* %key, i8** %2, align 8
  %3 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.node* @TMlookup(%struct.rbtree* %3, i8* %4)
  store %struct.node* %5, %struct.node** %n, align 8
  %6 = load %struct.node*, %struct.node** %n, align 8
  %7 = icmp ne %struct.node* %6, null
  %8 = zext i1 %7 to i32
  %9 = sext i32 %8 to i64
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define void @RTM_output_stats() #12 {
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @init_one_perfcounter(i32 %number, i64 %whatToMeasure) #15 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #18
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.223, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #18
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.223, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #18
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
declare i64 @lseek(i32, i64, i32) #16

declare i64 @write(i32, i8*, i64) #17

; Function Attrs: inlinehint nounwind uwtable
define void @read_one_perfcounter(i32 %number, i32* %whereToPut) #15 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.224, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 189, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #18
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.223, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #18
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

declare i64 @read(i32, i8*, i64) #17

; Function Attrs: nounwind uwtable
define void @RTM_init_perfcounters() #12 {
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
define void @RTM_update_perfcounters(i32 %i) #12 {
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
define void @RTM_spinlock_init() #15 {
  store i64* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @RTM_lock_array, i64 0, i64 64) to i64*), i64** @RTM_fallBackLock, align 8
  %1 = load i64*, i64** @RTM_fallBackLock, align 8
  store volatile i64 0, i64* %1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @RTM_fallback_isLocked() #15 {
  %1 = load i64*, i64** @RTM_fallBackLock, align 8
  %2 = load volatile i64, i64* %1, align 8
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = sext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: inlinehint nounwind uwtable
define void @RTM_fallback_whileIsLocked() #15 {
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
define void @RTM_fallback_lock() #15 {
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
define void @RTM_fallback_unlock() #15 {
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !11
  %1 = load i64*, i64** @RTM_fallBackLock, align 8
  store volatile i64 0, i64* %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @update_reasons(i32 %status, i32 %i) #12 {
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
define i64 @determineNumProcs() #12 {
  %bitmask = alloca i64, align 8
  %num_procs = alloca i32, align 4
  %err = alloca i32, align 4
  %available_procs = alloca %struct.cpu_set_t, align 8
  %1 = call i64 @pthread_self() #19
  %2 = call i32 @pthread_getaffinity_np(i64 %1, i64 128, %struct.cpu_set_t* %available_procs) #8
  store i32 %2, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.233, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.determineNumProcs, i32 0, i32 0)) #18
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
declare i32 @pthread_getaffinity_np(i64, i64, %struct.cpu_set_t*) #16

; Function Attrs: nounwind uwtable
define void @thread_startup(i64 %numThread) #12 {
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
  store i64 %2, i64* @global_numThread.236, align 8
  store volatile i64 0, i64* @global_doShutdown, align 8
  %3 = call i64 @pthread_self() #19
  %4 = call i32 @pthread_getaffinity_np(i64 %3, i64 128, %struct.cpu_set_t* %available_procs) #8
  store i32 %4, i32* %err, align 4
  %5 = load i32, i32* %err, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.233, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #18
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
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.237, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 463, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #18
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
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.240, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 465, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #18
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
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7.241, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #18
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
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8.242, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 486, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #18
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
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9.243, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 492, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #18
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
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10.244, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 494, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #18
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
define %struct.thread_barrier* @thread_barrier_alloc(i64 %numThread) #12 {
  %1 = alloca i64, align 8
  %barrierPtr = alloca %struct.thread_barrier*, align 8
  store i64 %numThread, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %7

; <label>:5                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.238, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 570, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #18
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
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12.239, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.222, i32 0, i32 0), i32 571, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #18
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
define void @thread_barrier_init(%struct.thread_barrier* %barrierPtr) #12 {
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
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #16

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_mutexattr_t*) #16

; Function Attrs: nounwind
declare i32 @pthread_key_create(i32*, void (i8*)*) #16

; Function Attrs: nounwind
declare i32 @pthread_attr_init(%union.pthread_attr_t*) #16

; Function Attrs: nounwind uwtable
define internal void @threadWait(i8* %argPtr) #12 {
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
declare i32 @pthread_setspecific(i32, i8*) #16

; Function Attrs: nounwind uwtable
define void @thread_barrier(%struct.thread_barrier* %barrierPtr, i64 %threadId) #12 {
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
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #16

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #17

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #16

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(%union.pthread_cond_t*) #16

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #16

; Function Attrs: nounwind uwtable
define void @thread_start(void (i8*)* %funcPtr, i8* %argPtr) #12 {
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
define void @thread_shutdown() #12 {
  %numThread = alloca i64, align 8
  %i = alloca i64, align 8
  store volatile i64 1, i64* @global_doShutdown, align 8
  %1 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  call void @thread_barrier(%struct.thread_barrier* %1, i64 0)
  %2 = load i64, i64* @global_numThread.236, align 8
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
  store i64 1, i64* @global_numThread.236, align 8
  ret void
}

declare i32 @pthread_join(i64, i8**) #17

; Function Attrs: nounwind uwtable
define void @thread_barrier_free(%struct.thread_barrier* %barrierPtr) #12 {
  %1 = alloca %struct.thread_barrier*, align 8
  store %struct.thread_barrier* %barrierPtr, %struct.thread_barrier** %1, align 8
  %2 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %3 = bitcast %struct.thread_barrier* %2 to i8*
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @thread_getId() #12 {
  %1 = load i32, i32* @global_threadId, align 4
  %2 = call i8* @pthread_getspecific(i32 %1) #8
  %3 = ptrtoint i8* %2 to i64
  ret i64 %3
}

; Function Attrs: nounwind
declare i8* @pthread_getspecific(i32) #16

; Function Attrs: nounwind uwtable
define i64 @thread_getNumThread() #12 {
  %1 = load i64, i64* @global_numThread.236, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define void @thread_barrier_wait() #12 {
  %threadId = alloca i64, align 8
  %1 = call i64 @thread_getId()
  store i64 %1, i64* %threadId, align 8
  %2 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  %3 = load i64, i64* %threadId, align 8
  call void @thread_barrier(%struct.thread_barrier* %2, i64 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.vector* @vector_alloc(i64 %initCapacity) #12 {
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
define %struct.vector* @Pvector_alloc(i64 %initCapacity) #12 {
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
define void @vector_free(%struct.vector* %vectorPtr) #12 {
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
define void @Pvector_free(%struct.vector* %vectorPtr) #12 {
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
define i8* @vector_at(%struct.vector* %vectorPtr, i64 %i) #12 {
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
define i64 @vector_pushBack(%struct.vector* %vectorPtr, i8* %dataPtr) #12 {
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
define i64 @Pvector_pushBack(%struct.vector* %vectorPtr, i8* %dataPtr) #12 {
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
define i8* @vector_popBack(%struct.vector* %vectorPtr) #12 {
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
define i64 @vector_getSize(%struct.vector* %vectorPtr) #12 {
  %1 = alloca %struct.vector*, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %1, align 8
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @vector_clear(%struct.vector* %vectorPtr) #12 {
  %1 = alloca %struct.vector*, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %1, align 8
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 0
  store i64 0, i64* %3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @vector_sort(%struct.vector* %vectorPtr, i32 (i8*, i8*)* %compare) #12 {
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

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #17

; Function Attrs: nounwind uwtable
define i64 @vector_copy(%struct.vector* %dstVectorPtr, %struct.vector* %srcVectorPtr) #12 {
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
define i64 @Pvector_copy(%struct.vector* %dstVectorPtr, %struct.vector* %srcVectorPtr) #12 {
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
define i64 @memory_init(i64 %numThread, i64 %initBlockCapacity, i64 %blockGrowthFactor) #12 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.264, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.memory_init, i32 0, i32 0)) #18
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
define internal %struct.pool* @allocPool(i64 %initBlockCapacity, i64 %blockGrowthFactor) #12 {
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
define internal %struct.block* @allocBlock(i64 %capacity) #12 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.265, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.264, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.allocBlock, i32 0, i32 0)) #18
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
define void @memory_destroy() #12 {
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
define internal void @freePool(%struct.pool* %poolPtr) #12 {
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
define internal void @freeBlocks(%struct.block* %blockPtr) #12 {
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
define internal void @freeBlock(%struct.block* %blockPtr) #12 {
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
define i8* @memory_get(i64 %threadId, i64 %numByte) #12 {
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
define internal i8* @getMemoryFromPool(%struct.pool* %poolPtr, i64 %numByte) #12 {
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
define internal %struct.block* @addBlockToPool(%struct.pool* %poolPtr, i64 %numByte) #12 {
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
define internal i8* @getMemoryFromBlock(%struct.block* %blockPtr, i64 %numByte) #12 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.266, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.264, i32 0, i32 0), i32 304, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getMemoryFromBlock, i32 0, i32 0)) #18
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { alwaysinline nounwind }
attributes #6 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.vectorize.width", i32 1337}
!3 = distinct !{!3, !2}
!4 = !{i32 -2145662609}
!5 = distinct !{!5, !2}
!6 = !{i32 1453419, i32 1453435, i32 1453471, i32 1453507, i32 1453543}
!7 = !{i32 1454020, i32 1454035, i32 1454069}
!8 = !{i32 1453791, i32 1453806, i32 1453834}
!9 = !{i32 -2145672078, i32 -2145672042, i32 -2145672018}
!10 = !{i32 -2145983380, i32 -2145983344, i32 -2145983320}
!11 = !{i32 11658}
