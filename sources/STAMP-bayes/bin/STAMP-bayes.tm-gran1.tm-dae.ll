; ModuleID = 'llvm-link'
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
%struct.data = type { i64, i64, i8*, %struct.random* }
%struct.net = type { %struct.vector* }
%struct.vector = type { i64, i64, i8** }
%struct.adtree = type { i64, i64, %struct.adtree_node* }
%struct.adtree_node = type { i64, i64, i64, %struct.vector* }
%struct.timezone = type { i32, i32 }
%struct.learner = type { %struct.adtree*, %struct.net*, float*, [56 x i8], float, [60 x i8], %struct.learner_task*, [56 x i8], %struct.list*, [56 x i8], i64, [56 x i8] }
%struct.learner_task = type { i32, i64, i64, float }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.findBestTaskArg = type { i64, %struct.learner*, %struct.timeval*, %struct.vector*, %struct.vector*, i64, float, float, %struct.bitmap*, %struct.queue*, %struct.vector*, %struct.vector* }
%struct.bitmap = type { i64, i64, i64* }
%struct.queue = type { i64, i64, i64, i8** }
%struct.adtree_vary = type { i64, i64, %struct.adtree_node*, %struct.adtree_node* }
%struct.net_node = type { i64, %struct.list*, %struct.list*, i32 }
%struct.cpu_set_t = type { [16 x i64] }
%union.pthread_mutexattr_t = type { i32 }

@global_maxNumEdgeLearned = global i64 -1, align 8
@global_insertPenalty = global i64 1, align 8
@global_operationQualityFactor = global float 1.000000e+00, align 4
@global_params = common global [256 x i64] zeroinitializer, align 16
@opterr = external global i32, align 4
@.str.26 = private unnamed_addr constant [19 x i8] c"e:i:n:p:q:r:s:t:v:\00", align 1
@optarg = external global i8*, align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.29 = private unnamed_addr constant [62 x i8] c"\0AOptions:                                         (defaults)\0A\00", align 1
@.str.30 = private unnamed_addr constant [55 x i8] c"    e <UINT>   Max [e]dges learned per variable  (%i)\0A\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"    i <UINT>   Edge [i]nsert penalty             (%i)\0A\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"    n <UINT>   Max [n]umber of parents           (%i)\0A\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"    p <UINT>   [p]ercent chance of parent        (%i)\0A\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"    q <FLT>    Operation [q]uality factor        (%f)\0A\00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"    r <UINT>   Number of [r]ecords               (%i)\0A\00", align 1
@.str.36 = private unnamed_addr constant [55 x i8] c"    s <UINT>   Random [s]eed                     (%i)\0A\00", align 1
@.str.37 = private unnamed_addr constant [55 x i8] c"    t <UINT>   Number of [t]hreads               (%i)\0A\00", align 1
@.str.38 = private unnamed_addr constant [55 x i8] c"    v <UINT>   Number of [v]ariables             (%i)\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"bayes.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Random seed                = %li\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Number of vars             = %li\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Number of records          = %li\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Max num parents            = %li\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"%% chance of parent         = %li\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Insert penalty             = %li\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Max num edge learned / var = %li\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Operation quality factor   = %f\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"Generating data... \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"randomPtr\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"dataPtr\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"done.\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"adtreePtr\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Generating adtree... \00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Adtree time = %f\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"learnerPtr\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Learning structure...\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Learn time = %f\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"!status\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Learn score  = %f\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Actual score = %f\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@.str = private unnamed_addr constant [19 x i8] c"learnerPtr->netPtr\00", align 1
@.str.1.3 = private unnamed_addr constant [10 x i8] c"learner.c\00", align 1
@__PRETTY_FUNCTION__.learner_alloc = private unnamed_addr constant [53 x i8] c"learner_t *learner_alloc(data_t *, adtree_t *, long)\00", align 1
@.str.2.4 = private unnamed_addr constant [36 x i8] c"learnerPtr->localBaseLogLikelihoods\00", align 1
@.str.3.5 = private unnamed_addr constant [18 x i8] c"learnerPtr->tasks\00", align 1
@.str.4.6 = private unnamed_addr constant [24 x i8] c"learnerPtr->taskListPtr\00", align 1
@.str.5.9 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@__PRETTY_FUNCTION__.TMpopTask = private unnamed_addr constant [36 x i8] c"learner_task_t *TMpopTask(list_t *)\00", align 1
@.str.6.12 = private unnamed_addr constant [15 x i8] c"queryVectorPtr\00", align 1
@__PRETTY_FUNCTION__.createTaskList = private unnamed_addr constant [28 x i8] c"void createTaskList(void *)\00", align 1
@.str.7.13 = private unnamed_addr constant [21 x i8] c"parentQueryVectorPtr\00", align 1
@.str.9.14 = private unnamed_addr constant [21 x i8] c"parentCount >= count\00", align 1
@__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood = private unnamed_addr constant [76 x i8] c"float computeSpecificLocalLogLikelihood(adtree_t *, vector_t *, vector_t *)\00", align 1
@.str.10.15 = private unnamed_addr constant [16 x i8] c"parentCount > 0\00", align 1
@.str.11.16 = private unnamed_addr constant [17 x i8] c"visitedBitmapPtr\00", align 1
@__PRETTY_FUNCTION__.learnStructure = private unnamed_addr constant [28 x i8] c"void learnStructure(void *)\00", align 1
@.str.12.17 = private unnamed_addr constant [13 x i8] c"workQueuePtr\00", align 1
@.str.8.18 = private unnamed_addr constant [8 x i8] c"queries\00", align 1
@.str.13.19 = private unnamed_addr constant [16 x i8] c"aQueryVectorPtr\00", align 1
@.str.14.20 = private unnamed_addr constant [16 x i8] c"bQueryVectorPtr\00", align 1
@.str.15.21 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.TMpopulateParentQueryVector = private unnamed_addr constant [71 x i8] c"void TMpopulateParentQueryVector(net_t *, long, query_t *, vector_t *)\00", align 1
@__PRETTY_FUNCTION__.TMpopulateQueryVectors = private unnamed_addr constant [78 x i8] c"void TMpopulateQueryVectors(net_t *, long, query_t *, vector_t *, vector_t *)\00", align 1
@__PRETTY_FUNCTION__.TMfindBestInsertTask = private unnamed_addr constant [57 x i8] c"learner_task_t TMfindBestInsertTask(findBestTaskArg_t *)\00", align 1
@__PRETTY_FUNCTION__.TMfindBestRemoveTask = private unnamed_addr constant [57 x i8] c"learner_task_t TMfindBestRemoveTask(findBestTaskArg_t *)\00", align 1
@__PRETTY_FUNCTION__.TMfindBestReverseTask = private unnamed_addr constant [58 x i8] c"learner_task_t TMfindBestReverseTask(findBestTaskArg_t *)\00", align 1
@__PRETTY_FUNCTION__.learner_score = private unnamed_addr constant [33 x i8] c"float learner_score(learner_t *)\00", align 1
@__PRETTY_FUNCTION__.populateParentQueryVector = private unnamed_addr constant [69 x i8] c"void populateParentQueryVector(net_t *, long, query_t *, vector_t *)\00", align 1
@__PRETTY_FUNCTION__.populateQueryVectors = private unnamed_addr constant [76 x i8] c"void populateQueryVectors(net_t *, long, query_t *, vector_t *, vector_t *)\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"nodePtr\00", align 1
@.str.1.40 = private unnamed_addr constant [9 x i8] c"adtree.c\00", align 1
@__PRETTY_FUNCTION__.makeNode = private unnamed_addr constant [58 x i8] c"adtree_node_t *makeNode(long, long, long, long, data_t *)\00", align 1
@.str.2.41 = private unnamed_addr constant [8 x i8] c"varyPtr\00", align 1
@__PRETTY_FUNCTION__.makeVary = private unnamed_addr constant [58 x i8] c"adtree_vary_t *makeVary(long, long, long, long, data_t *)\00", align 1
@.str.3.42 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4.45 = private unnamed_addr constant [29 x i8] c"queryIndex <= lastQueryIndex\00", align 1
@__PRETTY_FUNCTION__.getCount = private unnamed_addr constant [73 x i8] c"long getCount(adtree_node_t *, long, long, vector_t *, long, adtree_t *)\00", align 1
@.str.5.46 = private unnamed_addr constant [20 x i8] c"superQueryVectorPtr\00", align 1
@.str.6.47 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"netPtr\00", align 1
@.str.1.55 = private unnamed_addr constant [7 x i8] c"data.c\00", align 1
@__PRETTY_FUNCTION__.data_generate = private unnamed_addr constant [49 x i8] c"net_t *data_generate(data_t *, long, long, long)\00", align 1
@.str.2.56 = private unnamed_addr constant [16 x i8] c"thresholdsTable\00", align 1
@.str.3.57 = private unnamed_addr constant [11 x i8] c"thresholds\00", align 1
@.str.4.58 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.5.59 = private unnamed_addr constant [13 x i8] c"workQueuePtr\00", align 1
@.str.6.60 = private unnamed_addr constant [20 x i8] c"dependencyVectorPtr\00", align 1
@.str.7.61 = private unnamed_addr constant [17 x i8] c"orderedBitmapPtr\00", align 1
@.str.8.62 = private unnamed_addr constant [14 x i8] c"doneBitmapPtr\00", align 1
@.str.9.63 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.10.64 = private unnamed_addr constant [19 x i8] c"numOrder == numVar\00", align 1
@.str.11.65 = private unnamed_addr constant [19 x i8] c"value != DATA_INIT\00", align 1
@.str.12.66 = private unnamed_addr constant [50 x i8] c"record <= (dataPtr->records + numRecord * numVar)\00", align 1
@.str.13.69 = private unnamed_addr constant [42 x i8] c"start >= 0 && start <= dataPtr->numRecord\00", align 1
@__PRETTY_FUNCTION__.data_sort = private unnamed_addr constant [43 x i8] c"void data_sort(data_t *, long, long, long)\00", align 1
@.str.14.70 = private unnamed_addr constant [38 x i8] c"num >= 0 && num <= dataPtr->numRecord\00", align 1
@.str.15.71 = private unnamed_addr constant [54 x i8] c"start + num >= 0 && start + num <= dataPtr->numRecord\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1.77 = private unnamed_addr constant [6 x i8] c"net.c\00", align 1
@__PRETTY_FUNCTION__.net_alloc = private unnamed_addr constant [23 x i8] c"net_t *net_alloc(long)\00", align 1
@__PRETTY_FUNCTION__.insertEdge = private unnamed_addr constant [37 x i8] c"void insertEdge(net_t *, long, long)\00", align 1
@__PRETTY_FUNCTION__.removeEdge = private unnamed_addr constant [37 x i8] c"void removeEdge(net_t *, long, long)\00", align 1
@.str.2.80 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.net_applyOperation = private unnamed_addr constant [58 x i8] c"void net_applyOperation(net_t *, operation_t, long, long)\00", align 1
@__PRETTY_FUNCTION__.TMinsertEdge = private unnamed_addr constant [39 x i8] c"void TMinsertEdge(net_t *, long, long)\00", align 1
@__PRETTY_FUNCTION__.TMremoveEdge = private unnamed_addr constant [39 x i8] c"void TMremoveEdge(net_t *, long, long)\00", align 1
@__PRETTY_FUNCTION__.TMnet_applyOperation = private unnamed_addr constant [60 x i8] c"void TMnet_applyOperation(net_t *, operation_t, long, long)\00", align 1
@.str.3.85 = private unnamed_addr constant [58 x i8] c"visitedBitmapPtr->numBit == vector_getSize(nodeVectorPtr)\00", align 1
@__PRETTY_FUNCTION__.net_isPath = private unnamed_addr constant [62 x i8] c"bool_t net_isPath(net_t *, long, long, bitmap_t *, queue_t *)\00", align 1
@__PRETTY_FUNCTION__.TMnet_isPath = private unnamed_addr constant [64 x i8] c"bool_t TMnet_isPath(net_t *, long, long, bitmap_t *, queue_t *)\00", align 1
@__PRETTY_FUNCTION__.isCycle = private unnamed_addr constant [41 x i8] c"bool_t isCycle(vector_t *, net_node_t *)\00", align 1
@__PRETTY_FUNCTION__.net_isCycle = private unnamed_addr constant [28 x i8] c"bool_t net_isCycle(net_t *)\00", align 1
@.str.4.92 = private unnamed_addr constant [8 x i8] c"nodePtr\00", align 1
@__PRETTY_FUNCTION__.net_getParentIdListPtr = private unnamed_addr constant [46 x i8] c"list_t *net_getParentIdListPtr(net_t *, long)\00", align 1
@__PRETTY_FUNCTION__.net_getChildIdListPtr = private unnamed_addr constant [45 x i8] c"list_t *net_getChildIdListPtr(net_t *, long)\00", align 1
@.str.5.95 = private unnamed_addr constant [59 x i8] c"ancestorBitmapPtr->numBit == vector_getSize(nodeVectorPtr)\00", align 1
@__PRETTY_FUNCTION__.net_findAncestors = private unnamed_addr constant [63 x i8] c"bool_t net_findAncestors(net_t *, long, bitmap_t *, queue_t *)\00", align 1
@__PRETTY_FUNCTION__.TMnet_findAncestors = private unnamed_addr constant [65 x i8] c"bool_t TMnet_findAncestors(net_t *, long, bitmap_t *, queue_t *)\00", align 1
@.str.6.96 = private unnamed_addr constant [61 x i8] c"descendantBitmapPtr->numBit == vector_getSize(nodeVectorPtr)\00", align 1
@__PRETTY_FUNCTION__.net_findDescendants = private unnamed_addr constant [65 x i8] c"bool_t net_findDescendants(net_t *, long, bitmap_t *, queue_t *)\00", align 1
@__PRETTY_FUNCTION__.TMnet_findDescendants = private unnamed_addr constant [67 x i8] c"bool_t TMnet_findDescendants(net_t *, long, bitmap_t *, queue_t *)\00", align 1
@.str.7.101 = private unnamed_addr constant [17 x i8] c"visitedBitmapPtr\00", align 1
@__PRETTY_FUNCTION__.net_generateRandomEdges = private unnamed_addr constant [62 x i8] c"void net_generateRandomEdges(net_t *, long, long, random_t *)\00", align 1
@.str.8.102 = private unnamed_addr constant [21 x i8] c"!net_isCycle(netPtr)\00", align 1
@.str.121 = private unnamed_addr constant [33 x i8] c"dstPtr->numBit == srcPtr->numBit\00", align 1
@.str.1.122 = private unnamed_addr constant [9 x i8] c"bitmap.c\00", align 1
@__PRETTY_FUNCTION__.bitmap_copy = private unnamed_addr constant [41 x i8] c"void bitmap_copy(bitmap_t *, bitmap_t *)\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c"listPtr->size >= 0\00", align 1
@.str.1.154 = private unnamed_addr constant [7 x i8] c"list.c\00", align 1
@__PRETTY_FUNCTION__.list_remove = private unnamed_addr constant [37 x i8] c"bool_t list_remove(list_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.Plist_remove = private unnamed_addr constant [38 x i8] c"bool_t Plist_remove(list_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.TMlist_remove = private unnamed_addr constant [39 x i8] c"bool_t TMlist_remove(list_t *, void *)\00", align 1
@genrand_int32.mag01 = internal global [2 x i64] [i64 0, i64 2567483615], align 16
@.str.171 = private unnamed_addr constant [12 x i8] c"pop != push\00", align 1
@.str.1.172 = private unnamed_addr constant [8 x i8] c"queue.c\00", align 1
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
@.str.189 = private unnamed_addr constant [11 x i8] c"offset > 0\00", align 1
@.str.1.190 = private unnamed_addr constant [9 x i8] c"thread.c\00", align 1
@__PRETTY_FUNCTION__.init_one_perfcounter = private unnamed_addr constant [46 x i8] c"void init_one_perfcounter(int, unsigned long)\00", align 1
@.str.2.191 = private unnamed_addr constant [8 x i8] c"ret > 0\00", align 1
@.str.3.192 = private unnamed_addr constant [9 x i8] c"offset>0\00", align 1
@__PRETTY_FUNCTION__.read_one_perfcounter = private unnamed_addr constant [47 x i8] c"void read_one_perfcounter(int, unsigned int *)\00", align 1
@M5_inSimulator = external global i32, align 4
@.str.4.201 = private unnamed_addr constant [9 x i8] c"err == 0\00", align 1
@__PRETTY_FUNCTION__.determineNumProcs = private unnamed_addr constant [25 x i8] c"long determineNumProcs()\00", align 1
@global_numThread = internal global i64 1, align 8
@global_doShutdown = internal global i64 0, align 8
@__PRETTY_FUNCTION__.thread_startup = private unnamed_addr constant [26 x i8] c"void thread_startup(long)\00", align 1
@global_barrierPtr = internal global %struct.thread_barrier* null, align 8
@.str.5.204 = private unnamed_addr constant [26 x i8] c"global_barrierPtr == NULL\00", align 1
@.str.11.205 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@__PRETTY_FUNCTION__.thread_barrier_alloc = private unnamed_addr constant [45 x i8] c"thread_barrier_t *thread_barrier_alloc(long)\00", align 1
@.str.12.206 = private unnamed_addr constant [35 x i8] c"(numThread & (numThread - 1)) == 0\00", align 1
@.str.6.207 = private unnamed_addr constant [18 x i8] c"global_barrierPtr\00", align 1
@global_threadId = internal global i32 0, align 4
@global_threadIds = internal global i64* null, align 8
@.str.7.208 = private unnamed_addr constant [25 x i8] c"global_threadIds == NULL\00", align 1
@.str.8.209 = private unnamed_addr constant [17 x i8] c"global_threadIds\00", align 1
@global_threads = internal global i64* null, align 8
@.str.9.210 = private unnamed_addr constant [23 x i8] c"global_threads == NULL\00", align 1
@.str.10.211 = private unnamed_addr constant [15 x i8] c"global_threads\00", align 1
@global_threadAttr = internal global %union.pthread_attr_t zeroinitializer, align 8
@global_funcPtr = internal global void (i8*)* null, align 8
@global_argPtr = internal global i8* null, align 8
@global_memoryPtr = global %struct.memory* null, align 8
@.str.246 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@.str.1.247 = private unnamed_addr constant [9 x i8] c"memory.c\00", align 1
@__PRETTY_FUNCTION__.memory_init = private unnamed_addr constant [39 x i8] c"bool_t memory_init(long, size_t, long)\00", align 1
@.str.2.248 = private unnamed_addr constant [13 x i8] c"capacity > 0\00", align 1
@__PRETTY_FUNCTION__.allocBlock = private unnamed_addr constant [28 x i8] c"block_t *allocBlock(size_t)\00", align 1
@.str.3.249 = private unnamed_addr constant [29 x i8] c"(size + numByte) <= capacity\00", align 1
@__PRETTY_FUNCTION__.getMemoryFromBlock = private unnamed_addr constant [44 x i8] c"void *getMemoryFromBlock(block_t *, size_t)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %adtreeStartTime = alloca %struct.timeval, align 8
  %adtreeStopTime = alloca %struct.timeval, align 8
  %learnStartTime = alloca %struct.timeval, align 8
  %learnStopTime = alloca %struct.timeval, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sext i32 %argc to i64
  call void @parseArgs(i64 %1, i8** %argv)
  %2 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  %3 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 118), align 16
  %4 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 114), align 16
  %5 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  %6 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  %7 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 112), align 16
  %8 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 105), align 8
  store i64 %8, i64* @global_insertPenalty, align 8
  %9 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 101), align 8
  store i64 %9, i64* @global_maxNumEdgeLearned, align 8
  br label %10

; <label>:10                                      ; preds = %0
  %11 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %12 = icmp sge i32 %11, 7
  br i1 %12, label %13, label %._crit_edge

._crit_edge:                                      ; preds = %10
  br label %15

; <label>:13                                      ; preds = %10
  br i1 true, label %14, label %._crit_edge1

._crit_edge1:                                     ; preds = %13
  br label %15

; <label>:14                                      ; preds = %13
  br label %17

; <label>:15                                      ; preds = %._crit_edge1, %._crit_edge
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 249, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %17

; <label>:17                                      ; preds = %16, %14
  %18 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #18, !srcloc !1
  %19 = extractvalue { i32, i32, i32, i32 } %18, 0
  %20 = extractvalue { i32, i32, i32, i32 } %18, 1
  %21 = extractvalue { i32, i32, i32, i32 } %18, 2
  %22 = extractvalue { i32, i32, i32, i32 } %18, 3
  %23 = and i32 %20, 2048
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %._crit_edge2

._crit_edge2:                                     ; preds = %17
  br label %27

; <label>:25                                      ; preds = %17
  br i1 true, label %26, label %._crit_edge3

._crit_edge3:                                     ; preds = %25
  br label %27

; <label>:26                                      ; preds = %25
  br label %29

; <label>:27                                      ; preds = %._crit_edge3, %._crit_edge2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 249, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %26
  call void (...) bitcast (void ()* @RTM_spinlock_init to void (...)*)()
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %2)
  br label %30

; <label>:30                                      ; preds = %29
  call void @thread_startup(i64 %2)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i64 %5)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i64 %3)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i64 %4)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), i64 %6)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i64 %7)
  %36 = load i64, i64* @global_insertPenalty, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i64 %36)
  %38 = load i64, i64* @global_maxNumEdgeLearned, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), i64 %38)
  %40 = load float, float* @global_operationQualityFactor, align 4
  %41 = fpext float %40 to double
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), double %41)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = call i32 @fflush(%struct._IO_FILE* %43)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = call i32 @fflush(%struct._IO_FILE* %46)
  %48 = call %struct.random* (...) bitcast (%struct.random* ()* @random_alloc to %struct.random* (...)*)()
  %49 = icmp ne %struct.random* %48, null
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %30
  br label %53

; <label>:51                                      ; preds = %30
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 271, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %53

; <label>:53                                      ; preds = %52, %50
  call void @random_seed(%struct.random* %48, i64 %5)
  %54 = call %struct.data* @data_alloc(i64 %3, i64 %4, %struct.random* %48)
  %55 = icmp ne %struct.data* %54, null
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %53
  br label %59

; <label>:57                                      ; preds = %53
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 275, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  %60 = call %struct.net* @data_generate(%struct.data* %54, i64 -1, i64 %6, i64 %7)
  %61 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %63 = call i32 @fflush(%struct._IO_FILE* %62)
  %64 = call %struct.adtree* (...) bitcast (%struct.adtree* ()* @adtree_alloc to %struct.adtree* (...)*)()
  %65 = icmp ne %struct.adtree* %64, null
  br i1 %65, label %66, label %67

; <label>:66                                      ; preds = %59
  br label %69

; <label>:67                                      ; preds = %59
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 285, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %69

; <label>:69                                      ; preds = %68, %66
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %72 = call i32 @fflush(%struct._IO_FILE* %71)
  %73 = call i32 @gettimeofday(%struct.timeval* %adtreeStartTime, %struct.timezone* null) #6
  call void @adtree_make(%struct.adtree* %64, %struct.data* %54)
  %74 = call i32 @gettimeofday(%struct.timeval* %adtreeStopTime, %struct.timezone* null) #6
  %75 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %77 = call i32 @fflush(%struct._IO_FILE* %76)
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStopTime, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sitofp i64 %79 to double
  %81 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStopTime, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sitofp i64 %82 to double
  %84 = fdiv double %83, 1.000000e+06
  %85 = fadd double %80, %84
  %86 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStartTime, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sitofp i64 %87 to double
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %adtreeStartTime, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sitofp i64 %90 to double
  %92 = fdiv double %91, 1.000000e+06
  %93 = fadd double %88, %92
  %94 = fsub double %85, %93
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), double %94)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %97 = call i32 @fflush(%struct._IO_FILE* %96)
  %98 = call float @score(%struct.net* %60, %struct.adtree* %64)
  call void @net_free(%struct.net* %60)
  %99 = call %struct.learner* @learner_alloc(%struct.data* %54, %struct.adtree* %64, i64 %2)
  %100 = icmp ne %struct.learner* %99, null
  br i1 %100, label %101, label %102

; <label>:101                                     ; preds = %69
  br label %104

; <label>:102                                     ; preds = %69
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 316, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %104

; <label>:104                                     ; preds = %103, %101
  call void @data_free(%struct.data* %54)
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0))
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %107 = call i32 @fflush(%struct._IO_FILE* %106)
  %108 = call i32 @gettimeofday(%struct.timeval* %learnStartTime, %struct.timezone* null) #6
  call void @learner_run(%struct.learner* %99)
  %109 = call i32 @gettimeofday(%struct.timeval* %learnStopTime, %struct.timezone* null) #6
  %110 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %112 = call i32 @fflush(%struct._IO_FILE* %111)
  %113 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStopTime, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sitofp i64 %114 to double
  %116 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStopTime, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = sitofp i64 %117 to double
  %119 = fdiv double %118, 1.000000e+06
  %120 = fadd double %115, %119
  %121 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStartTime, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = sitofp i64 %122 to double
  %124 = getelementptr inbounds %struct.timeval, %struct.timeval* %learnStartTime, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = sitofp i64 %125 to double
  %127 = fdiv double %126, 1.000000e+06
  %128 = fadd double %123, %127
  %129 = fsub double %120, %128
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), double %129)
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %132 = call i32 @fflush(%struct._IO_FILE* %131)
  %133 = getelementptr inbounds %struct.learner, %struct.learner* %99, i32 0, i32 1
  %134 = load %struct.net*, %struct.net** %133, align 8
  %135 = call i64 @net_isCycle(%struct.net* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %138, label %137

; <label>:137                                     ; preds = %104
  br label %140

; <label>:138                                     ; preds = %104
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 343, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %140

; <label>:140                                     ; preds = %139, %137
  %141 = call float @learner_score(%struct.learner* %99)
  %142 = fpext float %141 to double
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), double %142)
  %144 = fpext float %98 to double
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), double %144)
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %147 = call i32 @fflush(%struct._IO_FILE* %146)
  call void @random_free(%struct.random* %48)
  call void @adtree_free(%struct.adtree* %64)
  br label %148

; <label>:148                                     ; preds = %140
  %149 = call i64 (...) @getWorkItemCount()
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i64 %149)
  %151 = call i32 @fflush(%struct._IO_FILE* null)
  br label %152

; <label>:152                                     ; preds = %148
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

; <label>:2                                       ; preds = %21, %0
  %3 = call i32 @getopt(i32 %1, i8** %argv, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0)) #6
  %4 = sext i32 %3 to i64
  %5 = icmp ne i64 %4, -1
  br i1 %5, label %6, label %22

; <label>:6                                       ; preds = %2
  switch i64 %4, label %._crit_edge [
    i64 101, label %._crit_edge1
    i64 105, label %._crit_edge2
    i64 110, label %._crit_edge3
    i64 112, label %._crit_edge4
    i64 114, label %._crit_edge5
    i64 115, label %._crit_edge6
    i64 116, label %._crit_edge7
    i64 118, label %._crit_edge8
    i64 113, label %13
    i64 63, label %17
  ]

._crit_edge8:                                     ; preds = %6
  br label %7

._crit_edge7:                                     ; preds = %6
  br label %7

._crit_edge6:                                     ; preds = %6
  br label %7

._crit_edge5:                                     ; preds = %6
  br label %7

._crit_edge4:                                     ; preds = %6
  br label %7

._crit_edge3:                                     ; preds = %6
  br label %7

._crit_edge2:                                     ; preds = %6
  br label %7

._crit_edge1:                                     ; preds = %6
  br label %7

._crit_edge:                                      ; preds = %6
  br label %18

; <label>:7                                       ; preds = %._crit_edge1, %._crit_edge2, %._crit_edge3, %._crit_edge4, %._crit_edge5, %._crit_edge6, %._crit_edge7, %._crit_edge8
  %8 = load i8*, i8** @optarg, align 8
  %9 = call i64 @atol(i8* %8) #19
  %10 = trunc i64 %4 to i8
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [256 x i64], [256 x i64]* @global_params, i64 0, i64 %11
  store i64 %9, i64* %12, align 8
  br label %21

; <label>:13                                      ; preds = %6
  %14 = load i8*, i8** @optarg, align 8
  %15 = call double @atof(i8* %14) #19
  %16 = fptrunc double %15 to float
  store float %16, float* @global_operationQualityFactor, align 4
  br label %21

; <label>:17                                      ; preds = %6
  br label %18

; <label>:18                                      ; preds = %17, %._crit_edge
  %19 = load i32, i32* @opterr, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @opterr, align 4
  br label %21

; <label>:21                                      ; preds = %18, %13, %7
  br label %2

; <label>:22                                      ; preds = %2
  %.lcssa = phi i64 [ %4, %2 ]
  %23 = load i32, i32* @optind, align 4
  %24 = sext i32 %23 to i64
  br label %25

; <label>:25                                      ; preds = %34, %22
  %i.0 = phi i64 [ %24, %22 ], [ %35, %34 ]
  %26 = icmp slt i64 %i.0, %argc
  br i1 %26, label %27, label %36

; <label>:27                                      ; preds = %25
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = getelementptr inbounds i8*, i8** %argv, i64 %i.0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i8* %30)
  %32 = load i32, i32* @opterr, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @opterr, align 4
  br label %34

; <label>:34                                      ; preds = %27
  %35 = add nsw i64 %i.0, 1
  br label %25

; <label>:36                                      ; preds = %25
  %37 = load i32, i32* @opterr, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %._crit_edge9

._crit_edge9:                                     ; preds = %36
  br label %42

; <label>:39                                      ; preds = %36
  %40 = getelementptr inbounds i8*, i8** %argv, i64 0
  %41 = load i8*, i8** %40, align 8
  call void @displayUsage(i8* %41)
  br label %42

; <label>:42                                      ; preds = %39, %._crit_edge9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setDefaultParams() #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 -1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 101), align 8
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 105), align 8
  store i64 4, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  store i64 10, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 112), align 16
  store i64 4096, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 114), align 16
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  store i64 1, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  store i64 32, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 118), align 16
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #2

; Function Attrs: nounwind readonly
declare double @atof(i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @displayUsage(i8* %appName) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i8* %appName)
  %2 = call i32 @puts(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.29, i32 0, i32 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.30, i32 0, i32 0), i32 -1)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i32 0, i32 0), i32 1)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.32, i32 0, i32 0), i32 4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.33, i32 0, i32 0), i32 10)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.34, i32 0, i32 0), double 1.000000e+00)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.35, i32 0, i32 0), i32 4096)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.36, i32 0, i32 0), i32 1)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.37, i32 0, i32 0), i32 1)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.38, i32 0, i32 0), i32 32)
  call void @profiler_print_stats()
  call void @exit(i32 1) #17
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #3

declare i32 @puts(i8*) #3

declare void @profiler_print_stats()

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #5 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %__level) #18, !srcloc !2
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

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind uwtable
define internal float @score(%struct.net* %netPtr, %struct.adtree* %adtreePtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call %struct.data* @data_alloc(i64 1, i64 1, %struct.random* null)
  %2 = call %struct.learner* @learner_alloc(%struct.data* %1, %struct.adtree* %adtreePtr, i64 1)
  %3 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 1
  %4 = load %struct.net*, %struct.net** %3, align 8
  %5 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 1
  store %struct.net* %netPtr, %struct.net** %5, align 8
  %6 = call float @learner_score(%struct.learner* %2)
  %7 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 1
  store %struct.net* %4, %struct.net** %7, align 8
  call void @learner_free(%struct.learner* %2)
  call void @data_free(%struct.data* %1)
  ret float %6
}

declare i64 @getWorkItemCount(...) #3

; Function Attrs: nounwind uwtable
define %struct.learner* @learner_alloc(%struct.data* %dataPtr, %struct.adtree* %adtreePtr, i64 %numThread) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 336) #6
  %2 = bitcast i8* %1 to %struct.learner*
  %3 = icmp ne %struct.learner* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %54

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 0
  store %struct.adtree* %adtreePtr, %struct.adtree** %5, align 8
  %6 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call %struct.net* @net_alloc(i64 %7)
  %9 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 1
  store %struct.net* %8, %struct.net** %9, align 8
  %10 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 1
  %11 = load %struct.net*, %struct.net** %10, align 8
  %12 = icmp ne %struct.net* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %4
  br label %16

; <label>:14                                      ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 237, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = mul i64 %18, 4
  %20 = call noalias i8* @malloc(i64 %19) #6
  %21 = bitcast i8* %20 to float*
  %22 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 2
  store float* %21, float** %22, align 8
  %23 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 2
  %24 = load float*, float** %23, align 8
  %25 = icmp ne float* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %16
  br label %29

; <label>:27                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 240, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %26
  %30 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 4
  store float 0.000000e+00, float* %30, align 8
  %31 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = mul i64 %32, 32
  %34 = call noalias i8* @malloc(i64 %33) #6
  %35 = bitcast i8* %34 to %struct.learner_task*
  %36 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 6
  store %struct.learner_task* %35, %struct.learner_task** %36, align 8
  %37 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 6
  %38 = load %struct.learner_task*, %struct.learner_task** %37, align 8
  %39 = icmp ne %struct.learner_task* %38, null
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %29
  br label %43

; <label>:41                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 244, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %43

; <label>:43                                      ; preds = %42, %40
  %44 = call %struct.list* @list_alloc(i64 (i8*, i8*)* @compareTask)
  %45 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 8
  store %struct.list* %44, %struct.list** %45, align 8
  %46 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 8
  %47 = load %struct.list*, %struct.list** %46, align 8
  %48 = icmp ne %struct.list* %47, null
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %43
  br label %52

; <label>:50                                      ; preds = %43
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 246, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %52

; <label>:52                                      ; preds = %51, %49
  %53 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 10
  store i64 0, i64* %53, align 8
  br label %54

; <label>:54                                      ; preds = %52, %._crit_edge
  ret %struct.learner* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @compareTask(i8* %aPtr, i8* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast i8* %aPtr to %struct.learner_task*
  %2 = bitcast i8* %bPtr to %struct.learner_task*
  %3 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %1, i32 0, i32 3
  %4 = load float, float* %3, align 8
  %5 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %2, i32 0, i32 3
  %6 = load float, float* %5, align 8
  %7 = fcmp olt float %4, %6
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %18

; <label>:9                                       ; preds = %0
  %10 = fcmp ogt float %4, %6
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %9
  br label %18

; <label>:12                                      ; preds = %9
  %13 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %1, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %2, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %14, %16
  br label %18

; <label>:18                                      ; preds = %12, %11, %8
  %.0 = phi i64 [ 1, %8 ], [ -1, %11 ], [ %17, %12 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define void @learner_free(%struct.learner* %learnerPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i32 0, i32 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  call void @list_free(%struct.list* %2)
  %3 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i32 0, i32 6
  %4 = load %struct.learner_task*, %struct.learner_task** %3, align 8
  %5 = bitcast %struct.learner_task* %4 to i8*
  call void @free(i8* %5) #6
  %6 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i32 0, i32 2
  %7 = load float*, float** %6, align 8
  %8 = bitcast float* %7 to i8*
  call void @free(i8* %8) #6
  %9 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i32 0, i32 1
  %10 = load %struct.net*, %struct.net** %9, align 8
  call void @net_free(%struct.net* %10)
  %11 = bitcast %struct.learner* %learnerPtr to i8*
  call void @free(i8* %11) #6
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.learner_task* @TMpopTask(%struct.list* %taskListPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %taskListPtr)
  %1 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %taskListPtr) #19
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %13

; <label>:3                                       ; preds = %0
  %4 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %taskListPtr)
  %5 = bitcast i8* %4 to %struct.learner_task*
  %6 = bitcast %struct.learner_task* %5 to i8*
  %7 = call i64 @TMlist_remove(%struct.list* %taskListPtr, i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %3
  br label %12

; <label>:10                                      ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 521, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.TMpopTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  br label %13

; <label>:13                                      ; preds = %12, %._crit_edge
  %taskPtr.0 = phi %struct.learner_task* [ %5, %12 ], [ null, %._crit_edge ]
  ret %struct.learner_task* %taskPtr.0
}

; Function Attrs: nounwind uwtable
define void @learner_run(%struct.learner* %learnerPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast %struct.learner* %learnerPtr to i8*
  call void @thread_start(void (i8*)* @createTaskList, i8* %1)
  %2 = bitcast %struct.learner* %learnerPtr to i8*
  call void @thread_start(void (i8*)* @learnStructure, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @createTaskList(i8* %argPtr) #0 {
  %queries = alloca [2 x %struct.timeval], align 16
  %parentQuery = alloca %struct.timeval, align 8
  %v_start = alloca i64, align 8
  %v_stop = alloca i64, align 8
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
  %9 = call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)()
  %10 = bitcast i8* %argPtr to %struct.learner*
  %11 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 8
  %12 = load %struct.list*, %struct.list** %11, align 8
  %13 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 0
  %14 = load %struct.adtree*, %struct.adtree** %13, align 8
  %15 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 2
  %16 = load float*, float** %15, align 8
  %17 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 6
  %18 = load %struct.learner_task*, %struct.learner_task** %17, align 8
  %19 = call %struct.vector* @Pvector_alloc(i64 2)
  %20 = icmp ne %struct.vector* %19, null
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %7
  br label %24

; <label>:22                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 341, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %24

; <label>:24                                      ; preds = %23, %21
  %25 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 0
  %26 = bitcast %struct.timeval* %25 to i8*
  %27 = call i64 @vector_pushBack(%struct.vector* %19, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %24
  br label %32

; <label>:30                                      ; preds = %24
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 343, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %32

; <label>:32                                      ; preds = %31, %29
  %33 = call %struct.vector* @Pvector_alloc(i64 1)
  %34 = icmp ne %struct.vector* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %32
  br label %38

; <label>:36                                      ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 347, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = getelementptr inbounds %struct.adtree, %struct.adtree* %14, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.adtree, %struct.adtree* %14, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sitofp i64 %42 to double
  %44 = call double @log(double %43) #6
  %45 = fmul double -5.000000e-01, %44
  %46 = fptrunc double %45 to float
  call void @createPartition(i64 0, i64 %40, i64 %8, i64 %9, i64* %v_start, i64* %v_stop)
  %47 = load i64, i64* %v_start, align 8
  %48 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 0
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %48, i32 0, i32 0
  %50 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 0
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %50, i32 0, i32 1
  %52 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 0
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %52, i32 0, i32 1
  br label %54

; <label>:54                                      ; preds = %64, %38
  %baseLogLikelihood.0 = phi float [ 0.000000e+00, %38 ], [ %63, %64 ]
  %v.0 = phi i64 [ %47, %38 ], [ %65, %64 ]
  %55 = load i64, i64* %v_stop, align 8
  %56 = icmp slt i64 %v.0, %55
  br i1 %56, label %57, label %66

; <label>:57                                      ; preds = %54
  store i64 %v.0, i64* %49, align 16
  store i64 0, i64* %51, align 8
  %58 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %14, %struct.vector* %19, %struct.vector* %33)
  %59 = fadd float 0.000000e+00, %58
  store i64 1, i64* %53, align 8
  %60 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %14, %struct.vector* %19, %struct.vector* %33)
  %61 = fadd float %59, %60
  %62 = getelementptr inbounds float, float* %16, i64 %v.0
  store float %61, float* %62, align 4
  %63 = fadd float %baseLogLikelihood.0, %61
  br label %64

; <label>:64                                      ; preds = %57
  %65 = add nsw i64 %v.0, 1
  br label %54

; <label>:66                                      ; preds = %54
  br label %67

; <label>:67                                      ; preds = %80, %66
  %tries.0 = phi i32 [ 9, %66 ], [ %73, %80 ]
  br label %68

; <label>:68                                      ; preds = %71, %67
  %69 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %68
  call void @llvm.x86.sse2.pause() #6
  br label %68

; <label>:72                                      ; preds = %68
  %73 = add nsw i32 %tries.0, -1
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %72
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %86

; <label>:76                                      ; preds = %72
  %77 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #6, !srcloc !3
  %78 = trunc i64 %77 to i32
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %76
  br label %67

; <label>:81                                      ; preds = %76
  %82 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %._crit_edge

._crit_edge:                                      ; preds = %81
  br label %85

; <label>:84                                      ; preds = %81
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %85

; <label>:85                                      ; preds = %84, %._crit_edge
  br label %86

; <label>:86                                      ; preds = %85, %75
  %87 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 4
  %88 = load float, float* %87, align 8
  %89 = fadd float %baseLogLikelihood.0, %88
  %90 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 4
  store float %89, float* %90, align 8
  %91 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 4
  %92 = load float, float* %91, align 8
  %93 = icmp sgt i32 %73, 0
  br i1 %93, label %94, label %95

; <label>:94                                      ; preds = %86
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #6, !srcloc !5
  br label %96

; <label>:95                                      ; preds = %86
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %96

; <label>:96                                      ; preds = %95, %94
  %97 = bitcast %struct.timeval* %parentQuery to i8*
  %98 = call i64 @Pvector_pushBack(%struct.vector* %33, i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

; <label>:100                                     ; preds = %96
  br label %103

; <label>:101                                     ; preds = %96
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 398, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %103

; <label>:103                                     ; preds = %102, %100
  %104 = load i64, i64* %v_start, align 8
  %105 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 0
  %106 = getelementptr inbounds %struct.timeval, %struct.timeval* %105, i32 0, i32 0
  %107 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 1
  %108 = bitcast %struct.timeval* %107 to i8*
  %109 = getelementptr inbounds %struct.timeval, %struct.timeval* %parentQuery, i32 0, i32 0
  %110 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 0
  %111 = getelementptr inbounds %struct.timeval, %struct.timeval* %110, i32 0, i32 0
  %112 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 1
  %113 = getelementptr inbounds %struct.timeval, %struct.timeval* %112, i32 0, i32 0
  %114 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 0
  %115 = getelementptr inbounds %struct.timeval, %struct.timeval* %114, i32 0, i32 1
  %116 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 1
  %117 = getelementptr inbounds %struct.timeval, %struct.timeval* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.timeval, %struct.timeval* %parentQuery, i32 0, i32 1
  %119 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 0
  %120 = getelementptr inbounds %struct.timeval, %struct.timeval* %119, i32 0, i32 1
  %121 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 1
  %122 = getelementptr inbounds %struct.timeval, %struct.timeval* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.timeval, %struct.timeval* %parentQuery, i32 0, i32 1
  %124 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 0
  %125 = getelementptr inbounds %struct.timeval, %struct.timeval* %124, i32 0, i32 1
  %126 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 1
  %127 = getelementptr inbounds %struct.timeval, %struct.timeval* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.timeval, %struct.timeval* %parentQuery, i32 0, i32 1
  %129 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 0
  %130 = getelementptr inbounds %struct.timeval, %struct.timeval* %129, i32 0, i32 1
  %131 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 1
  %132 = getelementptr inbounds %struct.timeval, %struct.timeval* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.timeval, %struct.timeval* %parentQuery, i32 0, i32 1
  %134 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 0
  %135 = getelementptr inbounds %struct.timeval, %struct.timeval* %134, i32 0, i32 0
  %136 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %queries, i64 0, i64 1
  %137 = getelementptr inbounds %struct.timeval, %struct.timeval* %136, i32 0, i32 0
  %138 = sitofp i64 %42 to float
  br label %139

; <label>:139                                     ; preds = %227, %103
  %v.1 = phi i64 [ %104, %103 ], [ %228, %227 ]
  %140 = load i64, i64* %v_stop, align 8
  %141 = icmp slt i64 %v.1, %140
  br i1 %141, label %142, label %229

; <label>:142                                     ; preds = %139
  store i64 %v.1, i64* %106, align 16
  %143 = getelementptr inbounds float, float* %16, i64 %v.1
  %144 = load float, float* %143, align 4
  %145 = call i64 @Pvector_pushBack(%struct.vector* %19, i8* %108)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

; <label>:147                                     ; preds = %142
  br label %150

; <label>:148                                     ; preds = %142
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 411, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:150                                     ; preds = %147
  br label %151

; <label>:151                                     ; preds = %178, %150
  %bestLocalIndex.0 = phi i64 [ %v.1, %150 ], [ %bestLocalIndex.2, %178 ]
  %bestLocalLogLikelihood.0 = phi float [ %144, %150 ], [ %bestLocalLogLikelihood.2, %178 ]
  %vv.0 = phi i64 [ 0, %150 ], [ %179, %178 ]
  %152 = icmp slt i64 %vv.0, %40
  br i1 %152, label %153, label %180

; <label>:153                                     ; preds = %151
  %154 = icmp eq i64 %vv.0, %v.1
  br i1 %154, label %155, label %156

; <label>:155                                     ; preds = %153
  br label %178

; <label>:156                                     ; preds = %153
  store i64 %vv.0, i64* %109, align 8
  %157 = icmp slt i64 %v.1, %vv.0
  br i1 %157, label %158, label %159

; <label>:158                                     ; preds = %156
  store i64 %v.1, i64* %111, align 16
  store i64 %vv.0, i64* %113, align 16
  br label %160

; <label>:159                                     ; preds = %156
  store i64 %vv.0, i64* %135, align 16
  store i64 %v.1, i64* %137, align 16
  br label %160

; <label>:160                                     ; preds = %159, %158
  store i64 0, i64* %115, align 8
  store i64 0, i64* %117, align 8
  store i64 0, i64* %118, align 8
  %161 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %14, %struct.vector* %19, %struct.vector* %33)
  %162 = fadd float 0.000000e+00, %161
  store i64 0, i64* %120, align 8
  store i64 1, i64* %122, align 8
  %163 = icmp slt i64 %vv.0, %v.1
  %164 = select i1 %163, i32 0, i32 1
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %123, align 8
  %166 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %14, %struct.vector* %19, %struct.vector* %33)
  %167 = fadd float %162, %166
  store i64 1, i64* %125, align 8
  store i64 0, i64* %127, align 8
  %168 = icmp slt i64 %vv.0, %v.1
  %169 = select i1 %168, i32 1, i32 0
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %128, align 8
  %171 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %14, %struct.vector* %19, %struct.vector* %33)
  %172 = fadd float %167, %171
  store i64 1, i64* %130, align 8
  store i64 1, i64* %132, align 8
  store i64 1, i64* %133, align 8
  %173 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %14, %struct.vector* %19, %struct.vector* %33)
  %174 = fadd float %172, %173
  %175 = fcmp ogt float %174, %bestLocalLogLikelihood.0
  br i1 %175, label %176, label %._crit_edge1

._crit_edge1:                                     ; preds = %160
  br label %177

; <label>:176                                     ; preds = %160
  br label %177

; <label>:177                                     ; preds = %176, %._crit_edge1
  %bestLocalIndex.1 = phi i64 [ %vv.0, %176 ], [ %bestLocalIndex.0, %._crit_edge1 ]
  %bestLocalLogLikelihood.1 = phi float [ %174, %176 ], [ %bestLocalLogLikelihood.0, %._crit_edge1 ]
  br label %178

; <label>:178                                     ; preds = %177, %155
  %bestLocalIndex.2 = phi i64 [ %bestLocalIndex.0, %155 ], [ %bestLocalIndex.1, %177 ]
  %bestLocalLogLikelihood.2 = phi float [ %bestLocalLogLikelihood.0, %155 ], [ %bestLocalLogLikelihood.1, %177 ]
  %179 = add nsw i64 %vv.0, 1
  br label %151

; <label>:180                                     ; preds = %151
  %181 = call i8* @vector_popBack(%struct.vector* %19)
  %182 = icmp ne i64 %bestLocalIndex.0, %v.1
  br i1 %182, label %183, label %._crit_edge2

._crit_edge2:                                     ; preds = %180
  br label %226

; <label>:183                                     ; preds = %180
  %184 = fadd float %baseLogLikelihood.0, %bestLocalLogLikelihood.0
  %185 = getelementptr inbounds float, float* %16, i64 %v.1
  %186 = load float, float* %185, align 4
  %187 = fsub float %184, %186
  %188 = fmul float %138, %187
  %189 = fadd float %46, %188
  %190 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %18, i64 %v.1
  %191 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  %192 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %190, i32 0, i32 1
  store i64 %bestLocalIndex.0, i64* %192, align 8
  %193 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %190, i32 0, i32 2
  store i64 %v.1, i64* %193, align 8
  %194 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %190, i32 0, i32 3
  store float %189, float* %194, align 8
  br label %195

; <label>:195                                     ; preds = %208, %183
  %tries2.0 = phi i32 [ 9, %183 ], [ %201, %208 ]
  br label %196

; <label>:196                                     ; preds = %199, %195
  %197 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

; <label>:199                                     ; preds = %196
  call void @llvm.x86.sse2.pause() #6
  br label %196

; <label>:200                                     ; preds = %196
  %201 = add nsw i32 %tries2.0, -1
  %202 = icmp sle i32 %201, 0
  br i1 %202, label %203, label %204

; <label>:203                                     ; preds = %200
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %214

; <label>:204                                     ; preds = %200
  %205 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #6, !srcloc !3
  %206 = trunc i64 %205 to i32
  %207 = icmp ne i32 %206, -1
  br i1 %207, label %208, label %209

; <label>:208                                     ; preds = %204
  br label %195

; <label>:209                                     ; preds = %204
  %210 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %._crit_edge3

._crit_edge3:                                     ; preds = %209
  br label %213

; <label>:212                                     ; preds = %209
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %213

; <label>:213                                     ; preds = %212, %._crit_edge3
  br label %214

; <label>:214                                     ; preds = %213, %203
  %215 = bitcast %struct.learner_task* %190 to i8*
  %216 = call i64 @TMlist_insert(%struct.list* %12, i8* %215)
  %217 = icmp sgt i32 %201, 0
  br i1 %217, label %218, label %219

; <label>:218                                     ; preds = %214
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #6, !srcloc !5
  br label %220

; <label>:219                                     ; preds = %214
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %220

; <label>:220                                     ; preds = %219, %218
  %221 = icmp ne i64 %216, 0
  br i1 %221, label %222, label %223

; <label>:222                                     ; preds = %220
  br label %225

; <label>:223                                     ; preds = %220
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:225                                     ; preds = %222
  br label %226

; <label>:226                                     ; preds = %225, %._crit_edge2
  br label %227

; <label>:227                                     ; preds = %226
  %228 = add nsw i64 %v.1, 1
  br label %139

; <label>:229                                     ; preds = %139
  call void @Pvector_free(%struct.vector* %19)
  call void @Pvector_free(%struct.vector* %33)
  br label %230

; <label>:230                                     ; preds = %229
  %231 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)()
  %232 = trunc i64 %231 to i32
  %233 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  call void @SimRoiEnd(i32 %232, i32 %234)
  br label %235

; <label>:235                                     ; preds = %230
  ret void
}

declare void @SimRoiStart(i32) #3

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind uwtable
define internal void @createPartition(i64 %min, i64 %max, i64 %id, i64 %n, i64* %startPtr, i64* %stopPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sub nsw i64 %max, %min
  %2 = sdiv i64 %n, 2
  %3 = add nsw i64 %1, %2
  %4 = sdiv i64 %3, %n
  %5 = sext i32 1 to i64
  %6 = icmp sgt i64 %5, %4
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %0
  %8 = sext i32 1 to i64
  br label %10

; <label>:9                                       ; preds = %0
  br label %10

; <label>:10                                      ; preds = %9, %7
  %.reg2mem9.0 = phi i64 [ %8, %7 ], [ %4, %9 ]
  %11 = mul nsw i64 %.reg2mem9.0, %id
  %12 = add nsw i64 %min, %11
  %13 = sub nsw i64 %n, 1
  %14 = icmp eq i64 %id, %13
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %10
  br label %22

; <label>:16                                      ; preds = %10
  %17 = add nsw i64 %12, %.reg2mem9.0
  %18 = icmp slt i64 %max, %17
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %16
  br label %21

; <label>:20                                      ; preds = %16
  br label %21

; <label>:21                                      ; preds = %20, %19
  %.reg2mem7.0 = phi i64 [ %max, %19 ], [ %17, %20 ]
  br label %22

; <label>:22                                      ; preds = %21, %15
  %stop.0 = phi i64 [ %max, %15 ], [ %.reg2mem7.0, %21 ]
  store i64 %12, i64* %startPtr, align 8
  store i64 %stop.0, i64* %stopPtr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @computeSpecificLocalLogLikelihood(%struct.adtree* %adtreePtr, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @adtree_getCount(%struct.adtree* %adtreePtr, %struct.vector* %queryVectorPtr)
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %27

; <label>:4                                       ; preds = %0
  %5 = sitofp i64 %1 to double
  %6 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = sitofp i64 %7 to double
  %9 = fdiv double %5, %8
  %10 = call i64 @adtree_getCount(%struct.adtree* %adtreePtr, %struct.vector* %parentQueryVectorPtr)
  %11 = icmp sge i64 %10, %1
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %4
  br label %15

; <label>:13                                      ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 287, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = icmp sgt i64 %10, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %15
  br label %20

; <label>:18                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 288, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = sitofp i64 %1 to double
  %22 = sitofp i64 %10 to double
  %23 = fdiv double %21, %22
  %24 = call double @log(double %23) #6
  %25 = fmul double %9, %24
  %26 = fptrunc double %25 to float
  br label %27

; <label>:27                                      ; preds = %20, %3
  %.0 = phi float [ 0.000000e+00, %3 ], [ %26, %20 ]
  ret float %.0
}

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #6

declare void @SimRoiEnd(i32, i32) #3

; Function Attrs: nounwind uwtable
define internal void @learnStructure(i8* %argPtr) #0 {
  %arg = alloca %struct.findBestTaskArg, align 8
  %bestTask = alloca %struct.learner_task, align 8
  %newTask = alloca %struct.learner_task, align 8
  %1 = alloca %struct.learner_task, align 8
  %2 = alloca %struct.learner_task, align 8
  %3 = alloca %struct.learner_task, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %4 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)()
  %5 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %6 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %5, i64 %4
  br label %7

; <label>:7                                       ; preds = %0
  %8 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)()
  %9 = trunc i64 %8 to i32
  call void @SimRoiStart(i32 %9)
  br label %10

; <label>:10                                      ; preds = %7
  %11 = bitcast i8* %argPtr to %struct.learner*
  %12 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 1
  %13 = load %struct.net*, %struct.net** %12, align 8
  %14 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 0
  %15 = load %struct.adtree*, %struct.adtree** %14, align 8
  %16 = getelementptr inbounds %struct.adtree, %struct.adtree* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 2
  %19 = load float*, float** %18, align 8
  %20 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 8
  %21 = load %struct.list*, %struct.list** %20, align 8
  %22 = load float, float* @global_operationQualityFactor, align 4
  %23 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 0
  %24 = load %struct.adtree*, %struct.adtree** %23, align 8
  %25 = getelementptr inbounds %struct.adtree, %struct.adtree* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.bitmap* @Pbitmap_alloc(i64 %26)
  %28 = icmp ne %struct.bitmap* %27, null
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %10
  br label %32

; <label>:30                                      ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %32

; <label>:32                                      ; preds = %31, %29
  %33 = call %struct.queue* @Pqueue_alloc(i64 -1)
  %34 = icmp ne %struct.queue* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %32
  br label %38

; <label>:36                                      ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1159, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = getelementptr inbounds %struct.adtree, %struct.adtree* %15, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = mul i64 %40, 16
  %42 = call noalias i8* @malloc(i64 %41) #6
  %43 = bitcast i8* %42 to %struct.timeval*
  %44 = icmp ne %struct.timeval* %43, null
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %38
  br label %48

; <label>:46                                      ; preds = %38
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %48

; <label>:48                                      ; preds = %47, %45
  br label %49

; <label>:49                                      ; preds = %56, %48
  %v.0 = phi i64 [ 0, %48 ], [ %57, %56 ]
  %50 = icmp slt i64 %v.0, %40
  br i1 %50, label %51, label %58

; <label>:51                                      ; preds = %49
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %43, i64 %v.0
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %52, i32 0, i32 0
  store i64 %v.0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %43, i64 %v.0
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %54, i32 0, i32 1
  store i64 -1, i64* %55, align 8
  br label %56

; <label>:56                                      ; preds = %51
  %57 = add nsw i64 %v.0, 1
  br label %49

; <label>:58                                      ; preds = %49
  %59 = sitofp i64 %17 to double
  %60 = call double @log(double %59) #6
  %61 = fmul double -5.000000e-01, %60
  %62 = fptrunc double %61 to float
  %63 = call %struct.vector* @Pvector_alloc(i64 1)
  %64 = icmp ne %struct.vector* %63, null
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %58
  br label %68

; <label>:66                                      ; preds = %58
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1173, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %68

; <label>:68                                      ; preds = %67, %65
  %69 = call %struct.vector* @Pvector_alloc(i64 1)
  %70 = icmp ne %struct.vector* %69, null
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %68
  br label %74

; <label>:72                                      ; preds = %68
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %74

; <label>:74                                      ; preds = %73, %71
  %75 = call %struct.vector* @Pvector_alloc(i64 1)
  %76 = icmp ne %struct.vector* %75, null
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %74
  br label %80

; <label>:78                                      ; preds = %74
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %80

; <label>:80                                      ; preds = %79, %77
  %81 = call %struct.vector* @Pvector_alloc(i64 1)
  %82 = icmp ne %struct.vector* %81, null
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %80
  br label %86

; <label>:84                                      ; preds = %80
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %86

; <label>:86                                      ; preds = %85, %83
  %87 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 1
  store %struct.learner* %11, %struct.learner** %87, align 8
  %88 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 2
  store %struct.timeval* %43, %struct.timeval** %88, align 8
  %89 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 3
  store %struct.vector* %63, %struct.vector** %89, align 8
  %90 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 4
  store %struct.vector* %69, %struct.vector** %90, align 8
  %91 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 8
  store %struct.bitmap* %27, %struct.bitmap** %91, align 8
  %92 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 9
  store %struct.queue* %33, %struct.queue** %92, align 8
  %93 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 10
  store %struct.vector* %75, %struct.vector** %93, align 8
  %94 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 11
  store %struct.vector* %81, %struct.vector** %94, align 8
  %95 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 10
  %96 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 10
  %97 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 10
  %98 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 10
  %99 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 10
  %100 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 10
  %101 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 4
  %102 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 4
  %103 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 4
  %104 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 10
  %105 = sitofp i64 %17 to float
  %106 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 0
  %107 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  %108 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 1
  %109 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  %110 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 0
  %111 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 5
  %112 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 6
  %113 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 7
  %114 = bitcast %struct.learner_task* %newTask to i8*
  %115 = bitcast %struct.learner_task* %1 to i8*
  %116 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 1
  %117 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 2
  %118 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 3
  %119 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  %120 = bitcast %struct.learner_task* %bestTask to i8*
  %121 = bitcast %struct.learner_task* %newTask to i8*
  %122 = bitcast %struct.learner_task* %newTask to i8*
  %123 = bitcast %struct.learner_task* %2 to i8*
  %124 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 1
  %125 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 2
  %126 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 3
  %127 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  %128 = bitcast %struct.learner_task* %bestTask to i8*
  %129 = bitcast %struct.learner_task* %newTask to i8*
  %130 = bitcast %struct.learner_task* %newTask to i8*
  %131 = bitcast %struct.learner_task* %3 to i8*
  %132 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 1
  %133 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 2
  %134 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 3
  %135 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  %136 = bitcast %struct.learner_task* %bestTask to i8*
  %137 = bitcast %struct.learner_task* %newTask to i8*
  %138 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  %139 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 6
  %140 = bitcast %struct.learner_task* %bestTask to i8*
  br label %141

; <label>:141                                     ; preds = %580, %86
  br label %142

; <label>:142                                     ; preds = %157, %141
  %143 = phi i32 [ %155, %157 ], [ -1, %141 ]
  %144 = phi i32 [ %150, %157 ], [ 9, %141 ]
  br label %145

; <label>:145                                     ; preds = %148, %142
  %146 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

; <label>:148                                     ; preds = %145
  call void @llvm.x86.sse2.pause() #6
  br label %145

; <label>:149                                     ; preds = %145
  %150 = add nsw i32 %144, -1
  %151 = icmp sle i32 %150, 0
  br i1 %151, label %152, label %153

; <label>:152                                     ; preds = %149
  %.lcssa33 = phi i32 [ %150, %149 ]
  %.lcssa31 = phi i32 [ %143, %149 ]
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %163

; <label>:153                                     ; preds = %149
  %154 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #6, !srcloc !3
  %155 = trunc i64 %154 to i32
  %156 = icmp ne i32 %155, -1
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %153
  br label %142

; <label>:158                                     ; preds = %153
  %.lcssa35 = phi i32 [ %155, %153 ]
  %.lcssa34 = phi i32 [ %150, %153 ]
  %159 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %._crit_edge

._crit_edge:                                      ; preds = %158
  br label %162

; <label>:161                                     ; preds = %158
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %162

; <label>:162                                     ; preds = %161, %._crit_edge
  br label %163

; <label>:163                                     ; preds = %162, %152
  %164 = phi i32 [ %.lcssa34, %162 ], [ %.lcssa33, %152 ]
  %165 = phi i32 [ %.lcssa35, %162 ], [ %.lcssa31, %152 ]
  %166 = call %struct.learner_task* @TMpopTask(%struct.list* %21)
  %167 = icmp sgt i32 %164, 0
  br i1 %167, label %168, label %169

; <label>:168                                     ; preds = %163
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #6, !srcloc !5
  br label %170

; <label>:169                                     ; preds = %163
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %170

; <label>:170                                     ; preds = %169, %168
  %171 = icmp eq %struct.learner_task* %166, null
  br i1 %171, label %172, label %173

; <label>:172                                     ; preds = %170
  %.lcssa28 = phi i32 [ %165, %170 ]
  %.lcssa = phi i32 [ %164, %170 ]
  br label %581

; <label>:173                                     ; preds = %170
  %174 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %166, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %166, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %166, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  br label %180

; <label>:180                                     ; preds = %193, %173
  %tries2.0 = phi i32 [ 9, %173 ], [ %186, %193 ]
  br label %181

; <label>:181                                     ; preds = %184, %180
  %182 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

; <label>:184                                     ; preds = %181
  call void @llvm.x86.sse2.pause() #6
  br label %181

; <label>:185                                     ; preds = %181
  %186 = add nsw i32 %tries2.0, -1
  %187 = icmp sle i32 %186, 0
  br i1 %187, label %188, label %189

; <label>:188                                     ; preds = %185
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %199

; <label>:189                                     ; preds = %185
  %190 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 0, i64 3, i64 4294967295) #6, !srcloc !3
  %191 = trunc i64 %190 to i32
  %192 = icmp ne i32 %191, -1
  br i1 %192, label %193, label %194

; <label>:193                                     ; preds = %189
  br label %180

; <label>:194                                     ; preds = %189
  %195 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %._crit_edge1

._crit_edge1:                                     ; preds = %194
  br label %198

; <label>:197                                     ; preds = %194
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %198

; <label>:198                                     ; preds = %197, %._crit_edge1
  br label %199

; <label>:199                                     ; preds = %198, %188
  switch i32 %175, label %214 [
    i32 0, label %200
    i32 1, label %208
    i32 2, label %209
  ]

; <label>:200                                     ; preds = %199
  %201 = call i64 @TMnet_hasEdge(%struct.net* %13, i64 %177, i64 %179)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %._crit_edge2, label %203

._crit_edge2:                                     ; preds = %200
  br label %206

; <label>:203                                     ; preds = %200
  %204 = call i64 @TMnet_isPath(%struct.net* %13, i64 %179, i64 %177, %struct.bitmap* %27, %struct.queue* %33)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %._crit_edge3, label %._crit_edge4

._crit_edge4:                                     ; preds = %203
  br label %207

._crit_edge3:                                     ; preds = %203
  br label %206

; <label>:206                                     ; preds = %._crit_edge3, %._crit_edge2
  br label %207

; <label>:207                                     ; preds = %206, %._crit_edge4
  %isTaskValid.0 = phi i64 [ 0, %206 ], [ 1, %._crit_edge4 ]
  br label %215

; <label>:208                                     ; preds = %199
  br label %215

; <label>:209                                     ; preds = %199
  call void @TMnet_applyOperation(%struct.net* %13, i32 1, i64 %177, i64 %179)
  %210 = call i64 @TMnet_isPath(%struct.net* %13, i64 %177, i64 %179, %struct.bitmap* %27, %struct.queue* %33)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %._crit_edge5

._crit_edge5:                                     ; preds = %209
  br label %213

; <label>:212                                     ; preds = %209
  br label %213

; <label>:213                                     ; preds = %212, %._crit_edge5
  %isTaskValid.1 = phi i64 [ 0, %212 ], [ 1, %._crit_edge5 ]
  call void @TMnet_applyOperation(%struct.net* %13, i32 0, i64 %177, i64 %179)
  br label %215

; <label>:214                                     ; preds = %199
  %.lcssa29 = phi i32 [ %165, %199 ]
  %.lcssa26 = phi i32 [ %164, %199 ]
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15.21, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1245, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #17
  unreachable

; <label>:215                                     ; preds = %213, %208, %207
  %isTaskValid.2 = phi i64 [ %isTaskValid.1, %213 ], [ 1, %208 ], [ %isTaskValid.0, %207 ]
  %216 = icmp ne i64 %isTaskValid.2, 0
  br i1 %216, label %217, label %._crit_edge6

._crit_edge6:                                     ; preds = %215
  br label %218

; <label>:217                                     ; preds = %215
  call void @TMnet_applyOperation(%struct.net* %13, i32 %175, i64 %177, i64 %179)
  br label %218

; <label>:218                                     ; preds = %217, %._crit_edge6
  %219 = icmp sgt i32 %186, 0
  br i1 %219, label %220, label %221

; <label>:220                                     ; preds = %218
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 3) #6, !srcloc !5
  br label %222

; <label>:221                                     ; preds = %218
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %222

; <label>:222                                     ; preds = %221, %220
  %223 = icmp ne i64 %isTaskValid.2, 0
  br i1 %223, label %224, label %._crit_edge7

._crit_edge7:                                     ; preds = %222
  br label %412

; <label>:224                                     ; preds = %222
  switch i32 %175, label %410 [
    i32 0, label %225
    i32 1, label %285
    i32 2, label %345
  ]

; <label>:225                                     ; preds = %224
  br label %226

; <label>:226                                     ; preds = %239, %225
  %tries4.0 = phi i32 [ 9, %225 ], [ %232, %239 ]
  br label %227

; <label>:227                                     ; preds = %230, %226
  %228 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

; <label>:230                                     ; preds = %227
  call void @llvm.x86.sse2.pause() #6
  br label %227

; <label>:231                                     ; preds = %227
  %232 = add nsw i32 %tries4.0, -1
  %233 = icmp sle i32 %232, 0
  br i1 %233, label %234, label %235

; <label>:234                                     ; preds = %231
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %245

; <label>:235                                     ; preds = %231
  %236 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 4, i64 0, i64 4, i64 4294967295) #6, !srcloc !3
  %237 = trunc i64 %236 to i32
  %238 = icmp ne i32 %237, -1
  br i1 %238, label %239, label %240

; <label>:239                                     ; preds = %235
  br label %226

; <label>:240                                     ; preds = %235
  %241 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %._crit_edge8

._crit_edge8:                                     ; preds = %240
  br label %244

; <label>:243                                     ; preds = %240
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %244

; <label>:244                                     ; preds = %243, %._crit_edge8
  br label %245

; <label>:245                                     ; preds = %244, %234
  call void @TMpopulateQueryVectors(%struct.net* %13, i64 %179, %struct.timeval* %43, %struct.vector* %63, %struct.vector* %69)
  %246 = call float @computeLocalLogLikelihood(i64 %179, %struct.adtree* %15, %struct.net* %13, %struct.timeval* %43, %struct.vector* %63, %struct.vector* %69)
  %247 = getelementptr inbounds float, float* %19, i64 %179
  %248 = load float, float* %247, align 4
  %249 = fsub float %248, %246
  %250 = fadd float 0.000000e+00, %249
  %251 = getelementptr inbounds float, float* %19, i64 %179
  store float %246, float* %251, align 4
  %252 = getelementptr inbounds float, float* %19, i64 %179
  %253 = load float, float* %252, align 4
  %254 = icmp sgt i32 %232, 0
  br i1 %254, label %255, label %256

; <label>:255                                     ; preds = %245
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 4) #6, !srcloc !5
  br label %257

; <label>:256                                     ; preds = %245
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %257

; <label>:257                                     ; preds = %256, %255
  br label %258

; <label>:258                                     ; preds = %271, %257
  %tries6.0 = phi i32 [ 9, %257 ], [ %264, %271 ]
  br label %259

; <label>:259                                     ; preds = %262, %258
  %260 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

; <label>:262                                     ; preds = %259
  call void @llvm.x86.sse2.pause() #6
  br label %259

; <label>:263                                     ; preds = %259
  %264 = add nsw i32 %tries6.0, -1
  %265 = icmp sle i32 %264, 0
  br i1 %265, label %266, label %267

; <label>:266                                     ; preds = %263
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %277

; <label>:267                                     ; preds = %263
  %268 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 5, i64 0, i64 5, i64 4294967295) #6, !srcloc !3
  %269 = trunc i64 %268 to i32
  %270 = icmp ne i32 %269, -1
  br i1 %270, label %271, label %272

; <label>:271                                     ; preds = %267
  br label %258

; <label>:272                                     ; preds = %267
  %273 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %._crit_edge9

._crit_edge9:                                     ; preds = %272
  br label %276

; <label>:275                                     ; preds = %272
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %276

; <label>:276                                     ; preds = %275, %._crit_edge9
  br label %277

; <label>:277                                     ; preds = %276, %266
  %278 = load i64, i64* %95, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %96, align 8
  %280 = load i64, i64* %97, align 8
  %281 = icmp sgt i32 %264, 0
  br i1 %281, label %282, label %283

; <label>:282                                     ; preds = %277
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 5) #6, !srcloc !5
  br label %284

; <label>:283                                     ; preds = %277
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %284

; <label>:284                                     ; preds = %283, %282
  br label %411

; <label>:285                                     ; preds = %224
  br label %286

; <label>:286                                     ; preds = %299, %285
  %tries8.0 = phi i32 [ 9, %285 ], [ %292, %299 ]
  br label %287

; <label>:287                                     ; preds = %290, %286
  %288 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

; <label>:290                                     ; preds = %287
  call void @llvm.x86.sse2.pause() #6
  br label %287

; <label>:291                                     ; preds = %287
  %292 = add nsw i32 %tries8.0, -1
  %293 = icmp sle i32 %292, 0
  br i1 %293, label %294, label %295

; <label>:294                                     ; preds = %291
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %305

; <label>:295                                     ; preds = %291
  %296 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 6, i64 0, i64 6, i64 4294967295) #6, !srcloc !3
  %297 = trunc i64 %296 to i32
  %298 = icmp ne i32 %297, -1
  br i1 %298, label %299, label %300

; <label>:299                                     ; preds = %295
  br label %286

; <label>:300                                     ; preds = %295
  %301 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %._crit_edge10

._crit_edge10:                                    ; preds = %300
  br label %304

; <label>:303                                     ; preds = %300
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %304

; <label>:304                                     ; preds = %303, %._crit_edge10
  br label %305

; <label>:305                                     ; preds = %304, %294
  call void @TMpopulateQueryVectors(%struct.net* %13, i64 %177, %struct.timeval* %43, %struct.vector* %63, %struct.vector* %69)
  %306 = call float @computeLocalLogLikelihood(i64 %177, %struct.adtree* %15, %struct.net* %13, %struct.timeval* %43, %struct.vector* %63, %struct.vector* %69)
  %307 = getelementptr inbounds float, float* %19, i64 %177
  %308 = load float, float* %307, align 4
  %309 = fsub float %308, %306
  %310 = fadd float 0.000000e+00, %309
  %311 = getelementptr inbounds float, float* %19, i64 %177
  store float %306, float* %311, align 4
  %312 = getelementptr inbounds float, float* %19, i64 %177
  %313 = load float, float* %312, align 4
  %314 = icmp sgt i32 %292, 0
  br i1 %314, label %315, label %316

; <label>:315                                     ; preds = %305
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 6) #6, !srcloc !5
  br label %317

; <label>:316                                     ; preds = %305
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %317

; <label>:317                                     ; preds = %316, %315
  br label %318

; <label>:318                                     ; preds = %331, %317
  %tries10.0 = phi i32 [ 9, %317 ], [ %324, %331 ]
  br label %319

; <label>:319                                     ; preds = %322, %318
  %320 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %323

; <label>:322                                     ; preds = %319
  call void @llvm.x86.sse2.pause() #6
  br label %319

; <label>:323                                     ; preds = %319
  %324 = add nsw i32 %tries10.0, -1
  %325 = icmp sle i32 %324, 0
  br i1 %325, label %326, label %327

; <label>:326                                     ; preds = %323
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %337

; <label>:327                                     ; preds = %323
  %328 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 7, i64 0, i64 7, i64 4294967295) #6, !srcloc !3
  %329 = trunc i64 %328 to i32
  %330 = icmp ne i32 %329, -1
  br i1 %330, label %331, label %332

; <label>:331                                     ; preds = %327
  br label %318

; <label>:332                                     ; preds = %327
  %333 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %._crit_edge11

._crit_edge11:                                    ; preds = %332
  br label %336

; <label>:335                                     ; preds = %332
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %336

; <label>:336                                     ; preds = %335, %._crit_edge11
  br label %337

; <label>:337                                     ; preds = %336, %326
  %338 = load i64, i64* %98, align 8
  %339 = sub nsw i64 %338, 1
  store i64 %339, i64* %99, align 8
  %340 = load i64, i64* %100, align 8
  %341 = icmp sgt i32 %324, 0
  br i1 %341, label %342, label %343

; <label>:342                                     ; preds = %337
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 7) #6, !srcloc !5
  br label %344

; <label>:343                                     ; preds = %337
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %344

; <label>:344                                     ; preds = %343, %342
  br label %411

; <label>:345                                     ; preds = %224
  br label %346

; <label>:346                                     ; preds = %359, %345
  %tries13.0 = phi i32 [ 9, %345 ], [ %352, %359 ]
  br label %347

; <label>:347                                     ; preds = %350, %346
  %348 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %351

; <label>:350                                     ; preds = %347
  call void @llvm.x86.sse2.pause() #6
  br label %347

; <label>:351                                     ; preds = %347
  %352 = add nsw i32 %tries13.0, -1
  %353 = icmp sle i32 %352, 0
  br i1 %353, label %354, label %355

; <label>:354                                     ; preds = %351
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %365

; <label>:355                                     ; preds = %351
  %356 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 8, i64 0, i64 8, i64 4294967295) #6, !srcloc !3
  %357 = trunc i64 %356 to i32
  %358 = icmp ne i32 %357, -1
  br i1 %358, label %359, label %360

; <label>:359                                     ; preds = %355
  br label %346

; <label>:360                                     ; preds = %355
  %361 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %._crit_edge12

._crit_edge12:                                    ; preds = %360
  br label %364

; <label>:363                                     ; preds = %360
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %364

; <label>:364                                     ; preds = %363, %._crit_edge12
  br label %365

; <label>:365                                     ; preds = %364, %354
  call void @TMpopulateQueryVectors(%struct.net* %13, i64 %177, %struct.timeval* %43, %struct.vector* %63, %struct.vector* %69)
  %366 = call float @computeLocalLogLikelihood(i64 %177, %struct.adtree* %15, %struct.net* %13, %struct.timeval* %43, %struct.vector* %63, %struct.vector* %69)
  %367 = getelementptr inbounds float, float* %19, i64 %177
  %368 = load float, float* %367, align 4
  %369 = fsub float %368, %366
  %370 = fadd float 0.000000e+00, %369
  %371 = getelementptr inbounds float, float* %19, i64 %177
  store float %366, float* %371, align 4
  %372 = getelementptr inbounds float, float* %19, i64 %177
  %373 = load float, float* %372, align 4
  %374 = icmp sgt i32 %352, 0
  br i1 %374, label %375, label %376

; <label>:375                                     ; preds = %365
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 8) #6, !srcloc !5
  br label %377

; <label>:376                                     ; preds = %365
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %377

; <label>:377                                     ; preds = %376, %375
  br label %378

; <label>:378                                     ; preds = %391, %377
  %tries16.0 = phi i32 [ 9, %377 ], [ %384, %391 ]
  br label %379

; <label>:379                                     ; preds = %382, %378
  %380 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %383

; <label>:382                                     ; preds = %379
  call void @llvm.x86.sse2.pause() #6
  br label %379

; <label>:383                                     ; preds = %379
  %384 = add nsw i32 %tries16.0, -1
  %385 = icmp sle i32 %384, 0
  br i1 %385, label %386, label %387

; <label>:386                                     ; preds = %383
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %397

; <label>:387                                     ; preds = %383
  %388 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 9, i64 0, i64 9, i64 4294967295) #6, !srcloc !3
  %389 = trunc i64 %388 to i32
  %390 = icmp ne i32 %389, -1
  br i1 %390, label %391, label %392

; <label>:391                                     ; preds = %387
  br label %378

; <label>:392                                     ; preds = %387
  %393 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %._crit_edge13

._crit_edge13:                                    ; preds = %392
  br label %396

; <label>:395                                     ; preds = %392
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %396

; <label>:396                                     ; preds = %395, %._crit_edge13
  br label %397

; <label>:397                                     ; preds = %396, %386
  call void @TMpopulateQueryVectors(%struct.net* %13, i64 %179, %struct.timeval* %43, %struct.vector* %63, %struct.vector* %69)
  %398 = call float @computeLocalLogLikelihood(i64 %179, %struct.adtree* %15, %struct.net* %13, %struct.timeval* %43, %struct.vector* %63, %struct.vector* %69)
  %399 = getelementptr inbounds float, float* %19, i64 %179
  %400 = load float, float* %399, align 4
  %401 = fsub float %400, %398
  %402 = fadd float %370, %401
  %403 = getelementptr inbounds float, float* %19, i64 %179
  store float %398, float* %403, align 4
  %404 = getelementptr inbounds float, float* %19, i64 %179
  %405 = load float, float* %404, align 4
  %406 = icmp sgt i32 %384, 0
  br i1 %406, label %407, label %408

; <label>:407                                     ; preds = %397
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 9) #6, !srcloc !5
  br label %409

; <label>:408                                     ; preds = %397
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %409

; <label>:409                                     ; preds = %408, %407
  br label %411

; <label>:410                                     ; preds = %224
  %.lcssa30 = phi i32 [ %165, %224 ]
  %.lcssa27 = phi i32 [ %164, %224 ]
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15.21, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1378, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #17
  unreachable

; <label>:411                                     ; preds = %409, %344, %284
  %deltaLogLikelihood.0 = phi float [ %402, %409 ], [ %310, %344 ], [ %250, %284 ]
  br label %412

; <label>:412                                     ; preds = %411, %._crit_edge7
  %deltaLogLikelihood.1 = phi float [ %deltaLogLikelihood.0, %411 ], [ 0.000000e+00, %._crit_edge7 ]
  br label %413

; <label>:413                                     ; preds = %426, %412
  %tries20.0 = phi i32 [ 9, %412 ], [ %419, %426 ]
  br label %414

; <label>:414                                     ; preds = %417, %413
  %415 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %418

; <label>:417                                     ; preds = %414
  call void @llvm.x86.sse2.pause() #6
  br label %414

; <label>:418                                     ; preds = %414
  %419 = add nsw i32 %tries20.0, -1
  %420 = icmp sle i32 %419, 0
  br i1 %420, label %421, label %422

; <label>:421                                     ; preds = %418
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %432

; <label>:422                                     ; preds = %418
  %423 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 10, i64 0, i64 10, i64 4294967295) #6, !srcloc !3
  %424 = trunc i64 %423 to i32
  %425 = icmp ne i32 %424, -1
  br i1 %425, label %426, label %427

; <label>:426                                     ; preds = %422
  br label %413

; <label>:427                                     ; preds = %422
  %428 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %._crit_edge14

._crit_edge14:                                    ; preds = %427
  br label %431

; <label>:430                                     ; preds = %427
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %431

; <label>:431                                     ; preds = %430, %._crit_edge14
  br label %432

; <label>:432                                     ; preds = %431, %421
  %433 = load float, float* %101, align 8
  %434 = fadd float %433, %deltaLogLikelihood.1
  store float %434, float* %102, align 8
  %435 = load float, float* %103, align 8
  %436 = load i64, i64* %104, align 8
  %437 = icmp sgt i32 %419, 0
  br i1 %437, label %438, label %439

; <label>:438                                     ; preds = %432
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 10) #6, !srcloc !5
  br label %440

; <label>:439                                     ; preds = %432
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %440

; <label>:440                                     ; preds = %439, %438
  %441 = sitofp i64 %436 to float
  %442 = fmul float %441, %62
  %443 = fmul float %105, %434
  %444 = fadd float %442, %443
  store i32 3, i32* %106, align 8
  store i64 -1, i64* %107, align 8
  store i64 -1, i64* %108, align 8
  store float %444, float* %109, align 8
  store i64 %179, i64* %110, align 8
  store i64 %436, i64* %111, align 8
  store float %62, float* %112, align 8
  store float %434, float* %113, align 4
  br label %445

; <label>:445                                     ; preds = %458, %440
  %tries23.0 = phi i32 [ 9, %440 ], [ %451, %458 ]
  br label %446

; <label>:446                                     ; preds = %449, %445
  %447 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %450

; <label>:449                                     ; preds = %446
  call void @llvm.x86.sse2.pause() #6
  br label %446

; <label>:450                                     ; preds = %446
  %451 = add nsw i32 %tries23.0, -1
  %452 = icmp sle i32 %451, 0
  br i1 %452, label %453, label %454

; <label>:453                                     ; preds = %450
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %464

; <label>:454                                     ; preds = %450
  %455 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 11, i64 0, i64 11, i64 4294967295) #6, !srcloc !3
  %456 = trunc i64 %455 to i32
  %457 = icmp ne i32 %456, -1
  br i1 %457, label %458, label %459

; <label>:458                                     ; preds = %454
  br label %445

; <label>:459                                     ; preds = %454
  %460 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %._crit_edge15

._crit_edge15:                                    ; preds = %459
  br label %463

; <label>:462                                     ; preds = %459
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %463

; <label>:463                                     ; preds = %462, %._crit_edge15
  br label %464

; <label>:464                                     ; preds = %463, %453
  call void @TMfindBestInsertTask(%struct.learner_task* sret %1, %struct.findBestTaskArg* %arg)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 32, i32 8, i1 false)
  %465 = icmp sgt i32 %451, 0
  br i1 %465, label %466, label %467

; <label>:466                                     ; preds = %464
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 11) #6, !srcloc !5
  br label %468

; <label>:467                                     ; preds = %464
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %468

; <label>:468                                     ; preds = %467, %466
  %469 = load i64, i64* %116, align 8
  %470 = load i64, i64* %117, align 8
  %471 = icmp ne i64 %469, %470
  br i1 %471, label %472, label %._crit_edge16

._crit_edge16:                                    ; preds = %468
  br label %478

; <label>:472                                     ; preds = %468
  %473 = load float, float* %118, align 8
  %474 = load float, float* %119, align 8
  %475 = fdiv float %474, %22
  %476 = fcmp ogt float %473, %475
  br i1 %476, label %477, label %._crit_edge17

._crit_edge17:                                    ; preds = %472
  br label %478

; <label>:477                                     ; preds = %472
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 32, i32 8, i1 false)
  br label %478

; <label>:478                                     ; preds = %477, %._crit_edge17, %._crit_edge16
  br label %479

; <label>:479                                     ; preds = %492, %478
  %tries25.0 = phi i32 [ 9, %478 ], [ %485, %492 ]
  br label %480

; <label>:480                                     ; preds = %483, %479
  %481 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %484

; <label>:483                                     ; preds = %480
  call void @llvm.x86.sse2.pause() #6
  br label %480

; <label>:484                                     ; preds = %480
  %485 = add nsw i32 %tries25.0, -1
  %486 = icmp sle i32 %485, 0
  br i1 %486, label %487, label %488

; <label>:487                                     ; preds = %484
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %498

; <label>:488                                     ; preds = %484
  %489 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 12, i64 0, i64 12, i64 4294967295) #6, !srcloc !3
  %490 = trunc i64 %489 to i32
  %491 = icmp ne i32 %490, -1
  br i1 %491, label %492, label %493

; <label>:492                                     ; preds = %488
  br label %479

; <label>:493                                     ; preds = %488
  %494 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %._crit_edge18

._crit_edge18:                                    ; preds = %493
  br label %497

; <label>:496                                     ; preds = %493
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %497

; <label>:497                                     ; preds = %496, %._crit_edge18
  br label %498

; <label>:498                                     ; preds = %497, %487
  call void @TMfindBestRemoveTask(%struct.learner_task* sret %2, %struct.findBestTaskArg* %arg)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 32, i32 8, i1 false)
  %499 = icmp sgt i32 %485, 0
  br i1 %499, label %500, label %501

; <label>:500                                     ; preds = %498
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 12) #6, !srcloc !5
  br label %502

; <label>:501                                     ; preds = %498
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %502

; <label>:502                                     ; preds = %501, %500
  %503 = load i64, i64* %124, align 8
  %504 = load i64, i64* %125, align 8
  %505 = icmp ne i64 %503, %504
  br i1 %505, label %506, label %._crit_edge19

._crit_edge19:                                    ; preds = %502
  br label %512

; <label>:506                                     ; preds = %502
  %507 = load float, float* %126, align 8
  %508 = load float, float* %127, align 8
  %509 = fdiv float %508, %22
  %510 = fcmp ogt float %507, %509
  br i1 %510, label %511, label %._crit_edge20

._crit_edge20:                                    ; preds = %506
  br label %512

; <label>:511                                     ; preds = %506
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %129, i64 32, i32 8, i1 false)
  br label %512

; <label>:512                                     ; preds = %511, %._crit_edge20, %._crit_edge19
  br label %513

; <label>:513                                     ; preds = %526, %512
  %tries27.0 = phi i32 [ 9, %512 ], [ %519, %526 ]
  br label %514

; <label>:514                                     ; preds = %517, %513
  %515 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %518

; <label>:517                                     ; preds = %514
  call void @llvm.x86.sse2.pause() #6
  br label %514

; <label>:518                                     ; preds = %514
  %519 = add nsw i32 %tries27.0, -1
  %520 = icmp sle i32 %519, 0
  br i1 %520, label %521, label %522

; <label>:521                                     ; preds = %518
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %532

; <label>:522                                     ; preds = %518
  %523 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 13, i64 0, i64 13, i64 4294967295) #6, !srcloc !3
  %524 = trunc i64 %523 to i32
  %525 = icmp ne i32 %524, -1
  br i1 %525, label %526, label %527

; <label>:526                                     ; preds = %522
  br label %513

; <label>:527                                     ; preds = %522
  %528 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %._crit_edge21

._crit_edge21:                                    ; preds = %527
  br label %531

; <label>:530                                     ; preds = %527
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %531

; <label>:531                                     ; preds = %530, %._crit_edge21
  br label %532

; <label>:532                                     ; preds = %531, %521
  call void @TMfindBestReverseTask(%struct.learner_task* sret %3, %struct.findBestTaskArg* %arg)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %131, i64 32, i32 8, i1 false)
  %533 = icmp sgt i32 %519, 0
  br i1 %533, label %534, label %535

; <label>:534                                     ; preds = %532
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 13) #6, !srcloc !5
  br label %536

; <label>:535                                     ; preds = %532
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %536

; <label>:536                                     ; preds = %535, %534
  %537 = load i64, i64* %132, align 8
  %538 = load i64, i64* %133, align 8
  %539 = icmp ne i64 %537, %538
  br i1 %539, label %540, label %._crit_edge22

._crit_edge22:                                    ; preds = %536
  br label %546

; <label>:540                                     ; preds = %536
  %541 = load float, float* %134, align 8
  %542 = load float, float* %135, align 8
  %543 = fdiv float %542, %22
  %544 = fcmp ogt float %541, %543
  br i1 %544, label %545, label %._crit_edge23

._crit_edge23:                                    ; preds = %540
  br label %546

; <label>:545                                     ; preds = %540
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %136, i8* %137, i64 32, i32 8, i1 false)
  br label %546

; <label>:546                                     ; preds = %545, %._crit_edge23, %._crit_edge22
  %547 = load i64, i64* %138, align 8
  %548 = icmp ne i64 %547, -1
  br i1 %548, label %549, label %._crit_edge24

._crit_edge24:                                    ; preds = %546
  br label %580

; <label>:549                                     ; preds = %546
  %550 = load %struct.learner_task*, %struct.learner_task** %139, align 8
  %551 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %550, i64 %179
  %552 = bitcast %struct.learner_task* %551 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %552, i8* %140, i64 32, i32 8, i1 false)
  br label %553

; <label>:553                                     ; preds = %566, %549
  %tries29.0 = phi i32 [ 9, %549 ], [ %559, %566 ]
  br label %554

; <label>:554                                     ; preds = %557, %553
  %555 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %558

; <label>:557                                     ; preds = %554
  call void @llvm.x86.sse2.pause() #6
  br label %554

; <label>:558                                     ; preds = %554
  %559 = add nsw i32 %tries29.0, -1
  %560 = icmp sle i32 %559, 0
  br i1 %560, label %561, label %562

; <label>:561                                     ; preds = %558
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %572

; <label>:562                                     ; preds = %558
  %563 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 14, i64 0, i64 14, i64 4294967295) #6, !srcloc !3
  %564 = trunc i64 %563 to i32
  %565 = icmp ne i32 %564, -1
  br i1 %565, label %566, label %567

; <label>:566                                     ; preds = %562
  br label %553

; <label>:567                                     ; preds = %562
  %568 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %570, label %._crit_edge25

._crit_edge25:                                    ; preds = %567
  br label %571

; <label>:570                                     ; preds = %567
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !4
  br label %571

; <label>:571                                     ; preds = %570, %._crit_edge25
  br label %572

; <label>:572                                     ; preds = %571, %561
  %573 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %550, i64 %179
  %574 = bitcast %struct.learner_task* %573 to i8*
  %575 = call i64 @TMlist_insert(%struct.list* %21, i8* %574)
  %576 = icmp sgt i32 %559, 0
  br i1 %576, label %577, label %578

; <label>:577                                     ; preds = %572
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 14) #6, !srcloc !5
  br label %579

; <label>:578                                     ; preds = %572
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %579

; <label>:579                                     ; preds = %578, %577
  br label %580

; <label>:580                                     ; preds = %579, %._crit_edge24
  br label %141

; <label>:581                                     ; preds = %172
  call void @Pbitmap_free(%struct.bitmap* %27)
  call void @Pqueue_free(%struct.queue* %33)
  call void @Pvector_free(%struct.vector* %81)
  call void @Pvector_free(%struct.vector* %75)
  call void @Pvector_free(%struct.vector* %63)
  call void @Pvector_free(%struct.vector* %69)
  %582 = bitcast %struct.timeval* %43 to i8*
  call void @free(i8* %582) #6
  br label %583

; <label>:583                                     ; preds = %581
  %584 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)()
  %585 = trunc i64 %584 to i32
  %586 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %6, i32 0, i32 4
  %587 = load i32, i32* %586, align 4
  call void @SimRoiEnd(i32 %585, i32 %587)
  br label %588

; <label>:588                                     ; preds = %583
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMpopulateQueryVectors(%struct.net* %netPtr, i64 %id, %struct.timeval* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  call void @TMpopulateParentQueryVector(%struct.net* %netPtr, i64 %id, %struct.timeval* %queries, %struct.vector* %parentQueryVectorPtr)
  %1 = call i64 @Pvector_copy(%struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 619, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TMpopulateQueryVectors, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %6

; <label>:6                                       ; preds = %5, %3
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %queries, i64 %id
  %8 = bitcast %struct.timeval* %7 to i8*
  %9 = call i64 @Pvector_pushBack(%struct.vector* %queryVectorPtr, i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %6
  br label %14

; <label>:12                                      ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 621, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TMpopulateQueryVectors, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  call void @vector_sort(%struct.vector* %queryVectorPtr, i32 (i8*, i8*)* @compareQuery)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMpopulateParentQueryVector(%struct.net* %netPtr, i64 %id, %struct.timeval* %queries, %struct.vector* %parentQueryVectorPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  call void @vector_clear(%struct.vector* %parentQueryVectorPtr)
  %1 = call %struct.list* @net_getParentIdListPtr(%struct.net* %netPtr, i64 %id)
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %1)
  br label %2

; <label>:2                                       ; preds = %15, %0
  %3 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %1) #19
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %16

; <label>:5                                       ; preds = %2
  %6 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %1)
  %7 = ptrtoint i8* %6 to i64
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %queries, i64 %7
  %9 = bitcast %struct.timeval* %8 to i8*
  %10 = call i64 @Pvector_pushBack(%struct.vector* %parentQueryVectorPtr, i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %5
  br label %15

; <label>:13                                      ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 574, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.TMpopulateParentQueryVector, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:15                                      ; preds = %12
  br label %2

; <label>:16                                      ; preds = %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @compareQuery(i8* %aPtr, i8* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast i8* %aPtr to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.timeval*
  %4 = bitcast i8* %bPtr to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.timeval*
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %8, %10
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal float @computeLocalLogLikelihood(i64 %id, %struct.adtree* %adtreePtr, %struct.net* %netPtr, %struct.timeval* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @vector_getSize(%struct.vector* %parentQueryVectorPtr)
  %2 = getelementptr inbounds %struct.timeval, %struct.timeval* %queries, i64 %id
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  store i64 0, i64* %3, align 8
  %4 = call float @computeLocalLogLikelihoodHelper(i64 0, i64 %1, %struct.adtree* %adtreePtr, %struct.timeval* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  %5 = fadd float 0.000000e+00, %4
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %queries, i64 %id
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 1, i64* %7, align 8
  %8 = call float @computeLocalLogLikelihoodHelper(i64 0, i64 %1, %struct.adtree* %adtreePtr, %struct.timeval* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  %9 = fadd float %5, %8
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %queries, i64 %id
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 -1, i64* %11, align 8
  ret float %9
}

; Function Attrs: nounwind uwtable
define internal float @computeLocalLogLikelihoodHelper(i64 %i, i64 %numParent, %struct.adtree* %adtreePtr, %struct.timeval* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = icmp sge i64 %i, %numParent
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %adtreePtr, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  br label %21

; <label>:4                                       ; preds = %0
  %5 = call i8* @vector_at(%struct.vector* %parentQueryVectorPtr, i64 %i)
  %6 = bitcast i8* %5 to %struct.timeval*
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %queries, i64 %8
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = add nsw i64 %i, 1
  %12 = call float @computeLocalLogLikelihoodHelper(i64 %11, i64 %numParent, %struct.adtree* %adtreePtr, %struct.timeval* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  %13 = fadd float 0.000000e+00, %12
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %queries, i64 %8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i64 1, i64* %15, align 8
  %16 = add nsw i64 %i, 1
  %17 = call float @computeLocalLogLikelihoodHelper(i64 %16, i64 %numParent, %struct.adtree* %adtreePtr, %struct.timeval* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  %18 = fadd float %13, %17
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %queries, i64 %8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 1
  store i64 -1, i64* %20, align 8
  br label %21

; <label>:21                                      ; preds = %4, %2
  %.0 = phi float [ %3, %2 ], [ %18, %4 ]
  ret float %.0
}

; Function Attrs: nounwind uwtable
define internal void @TMfindBestInsertTask(%struct.learner_task* noalias sret %agg.result, %struct.findBestTaskArg* %argPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %bestTask = alloca %struct.learner_task, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 1
  %4 = load %struct.learner*, %struct.learner** %3, align 8
  %5 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 2
  %6 = load %struct.timeval*, %struct.timeval** %5, align 8
  %7 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 3
  %8 = load %struct.vector*, %struct.vector** %7, align 8
  %9 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 4
  %10 = load %struct.vector*, %struct.vector** %9, align 8
  %11 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 6
  %14 = load float, float* %13, align 8
  %15 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 7
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 8
  %18 = load %struct.bitmap*, %struct.bitmap** %17, align 8
  %19 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 9
  %20 = load %struct.queue*, %struct.queue** %19, align 8
  %21 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 10
  %22 = load %struct.vector*, %struct.vector** %21, align 8
  %23 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 11
  %24 = load %struct.vector*, %struct.vector** %23, align 8
  %25 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 0
  %26 = load %struct.adtree*, %struct.adtree** %25, align 8
  %27 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 1
  %28 = load %struct.net*, %struct.net** %27, align 8
  %29 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 2
  %30 = load float*, float** %29, align 8
  call void @TMpopulateParentQueryVector(%struct.net* %28, i64 %2, %struct.timeval* %6, %struct.vector* %10)
  %31 = call i64 @Pvector_copy(%struct.vector* %22, %struct.vector* %10)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %0
  br label %36

; <label>:34                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 742, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = call i64 @Pvector_copy(%struct.vector* %24, %struct.vector* %22)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %36
  br label %42

; <label>:40                                      ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 745, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %42

; <label>:42                                      ; preds = %41, %39
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 %2
  %44 = bitcast %struct.timeval* %43 to i8*
  %45 = call i64 @Pvector_pushBack(%struct.vector* %24, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %42
  br label %50

; <label>:48                                      ; preds = %42
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 747, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %50

; <label>:50                                      ; preds = %49, %47
  call void @vector_sort(%struct.vector* %8, i32 (i8*, i8*)* @compareQuery)
  %51 = sitofp i64 %2 to float
  %52 = getelementptr inbounds float, float* %30, i64 %2
  %53 = load float, float* %52, align 4
  %54 = call i64 @TMnet_findDescendants(%struct.net* %28, i64 %2, %struct.bitmap* %18, %struct.queue* %20)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %50
  br label %59

; <label>:57                                      ; preds = %50
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 760, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  %60 = call %struct.list* @net_getParentIdListPtr(%struct.net* %28, i64 %2)
  %61 = load i64, i64* @global_maxNumEdgeLearned, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %._crit_edge, label %63

._crit_edge:                                      ; preds = %59
  br label %66

; <label>:63                                      ; preds = %59
  %64 = call i64 @TMlist_getSize(%struct.list* %60)
  %65 = icmp sle i64 %64, %61
  br i1 %65, label %._crit_edge1, label %._crit_edge2

._crit_edge2:                                     ; preds = %63
  br label %117

._crit_edge1:                                     ; preds = %63
  br label %66

; <label>:66                                      ; preds = %._crit_edge1, %._crit_edge
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %60)
  br label %67

; <label>:67                                      ; preds = %70, %66
  %68 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %60) #19
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

; <label>:70                                      ; preds = %67
  %71 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %60)
  %72 = ptrtoint i8* %71 to i64
  %73 = call i64 @bitmap_set(%struct.bitmap* %18, i64 %72)
  br label %67

; <label>:74                                      ; preds = %67
  br label %75

; <label>:75                                      ; preds = %.backedge, %74
  %bestFromId.0 = phi float [ %51, %74 ], [ %bestFromId.1, %.backedge ]
  %bestLocalLogLikelihood.0 = phi float [ %53, %74 ], [ %bestLocalLogLikelihood.1, %.backedge ]
  %fromId.0 = phi i64 [ -1, %74 ], [ %77, %.backedge ]
  %76 = add nsw i64 %fromId.0, 1
  %77 = call i64 @bitmap_findClear(%struct.bitmap* %18, i64 %76)
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %116

; <label>:79                                      ; preds = %75
  %80 = icmp eq i64 %77, %2
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %79
  br label %.backedge

.backedge:                                        ; preds = %115, %81
  %bestFromId.1 = phi float [ %bestFromId.0, %81 ], [ %bestFromId.2, %115 ]
  %bestLocalLogLikelihood.1 = phi float [ %bestLocalLogLikelihood.0, %81 ], [ %bestLocalLogLikelihood.2, %115 ]
  br label %75

; <label>:82                                      ; preds = %79
  %83 = call i64 @Pvector_copy(%struct.vector* %8, %struct.vector* %24)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %82
  br label %88

; <label>:86                                      ; preds = %82
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 786, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:88                                      ; preds = %85
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 %77
  %90 = bitcast %struct.timeval* %89 to i8*
  %91 = call i64 @Pvector_pushBack(%struct.vector* %8, i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %88
  br label %96

; <label>:94                                      ; preds = %88
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 788, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:96                                      ; preds = %93
  call void @vector_sort(%struct.vector* %8, i32 (i8*, i8*)* @compareQuery)
  %97 = call i64 @Pvector_copy(%struct.vector* %10, %struct.vector* %22)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %96
  br label %102

; <label>:100                                     ; preds = %96
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 792, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:102                                     ; preds = %99
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 %77
  %104 = bitcast %struct.timeval* %103 to i8*
  %105 = call i64 @Pvector_pushBack(%struct.vector* %10, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

; <label>:107                                     ; preds = %102
  br label %110

; <label>:108                                     ; preds = %102
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 794, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:110                                     ; preds = %107
  call void @vector_sort(%struct.vector* %10, i32 (i8*, i8*)* @compareQuery)
  %111 = call float @computeLocalLogLikelihood(i64 %2, %struct.adtree* %26, %struct.net* %28, %struct.timeval* %6, %struct.vector* %8, %struct.vector* %10)
  %112 = fcmp ogt float %111, %bestLocalLogLikelihood.0
  br i1 %112, label %113, label %._crit_edge3

._crit_edge3:                                     ; preds = %110
  br label %115

; <label>:113                                     ; preds = %110
  %114 = sitofp i64 %77 to float
  br label %115

; <label>:115                                     ; preds = %113, %._crit_edge3
  %bestFromId.2 = phi float [ %114, %113 ], [ %bestFromId.0, %._crit_edge3 ]
  %bestLocalLogLikelihood.2 = phi float [ %111, %113 ], [ %bestLocalLogLikelihood.0, %._crit_edge3 ]
  br label %.backedge

; <label>:116                                     ; preds = %75
  br label %117

; <label>:117                                     ; preds = %116, %._crit_edge2
  %bestFromId.3 = phi float [ %bestFromId.0, %116 ], [ %51, %._crit_edge2 ]
  %bestLocalLogLikelihood.3 = phi float [ %bestLocalLogLikelihood.0, %116 ], [ %53, %._crit_edge2 ]
  %118 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = fptosi float %bestFromId.3 to i64
  %120 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 1
  store i64 %119, i64* %120, align 8
  %121 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  store i64 %2, i64* %121, align 8
  %122 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float 0.000000e+00, float* %122, align 8
  %123 = sitofp i64 %2 to float
  %124 = fcmp une float %bestFromId.3, %123
  br i1 %124, label %125, label %._crit_edge4

._crit_edge4:                                     ; preds = %117
  br label %141

; <label>:125                                     ; preds = %117
  %126 = getelementptr inbounds %struct.adtree, %struct.adtree* %26, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @TMlist_getSize(%struct.list* %60)
  %129 = add nsw i64 %128, 1
  %130 = load i64, i64* @global_insertPenalty, align 8
  %131 = mul nsw i64 %129, %130
  %132 = add nsw i64 %12, %131
  %133 = sitofp i64 %132 to float
  %134 = fmul float %133, %14
  %135 = sitofp i64 %127 to float
  %136 = fadd float %16, %bestLocalLogLikelihood.3
  %137 = fsub float %136, %53
  %138 = fmul float %135, %137
  %139 = fadd float %134, %138
  %140 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float %139, float* %140, align 8
  br label %141

; <label>:141                                     ; preds = %125, %._crit_edge4
  %142 = bitcast %struct.learner_task* %agg.result to i8*
  %143 = bitcast %struct.learner_task* %bestTask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %142, i8* %143, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind uwtable
define internal void @TMfindBestRemoveTask(%struct.learner_task* noalias sret %agg.result, %struct.findBestTaskArg* %argPtr) #0 {
  %structArg = alloca { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }
  %bestTask = alloca %struct.learner_task, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 1
  %4 = load %struct.learner*, %struct.learner** %3, align 8
  %5 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 2
  %6 = load %struct.timeval*, %struct.timeval** %5, align 8
  %7 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 3
  %8 = load %struct.vector*, %struct.vector** %7, align 8
  %9 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 4
  %10 = load %struct.vector*, %struct.vector** %9, align 8
  %11 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 6
  %14 = load float, float* %13, align 8
  %15 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 7
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 10
  %18 = load %struct.vector*, %struct.vector** %17, align 8
  %19 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 0
  %20 = load %struct.adtree*, %struct.adtree** %19, align 8
  %21 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 1
  %22 = load %struct.net*, %struct.net** %21, align 8
  %23 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 2
  %24 = load float*, float** %23, align 8
  call void @TMpopulateParentQueryVector(%struct.net* %22, i64 %2, %struct.timeval* %6, %struct.vector* %18)
  %25 = call i64 @vector_getSize(%struct.vector* %18)
  %26 = sitofp i64 %2 to float
  %27 = getelementptr inbounds float, float* %24, i64 %2
  %28 = load float, float* %27, align 4
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 %2
  %30 = bitcast %struct.timeval* %29 to i8*
  br label %codeRepl

codeRepl:                                         ; preds = %0
  %gep_ = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %structArg, i32 0, i32 0
  store float %26, float* %gep_
  %gep_1 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %structArg, i32 0, i32 1
  store float %28, float* %gep_1
  %gep_2 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %structArg, i32 0, i32 2
  store i64 %25, i64* %gep_2
  %gep_3 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %structArg, i32 0, i32 3
  store %struct.vector* %18, %struct.vector** %gep_3
  %gep_4 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %structArg, i32 0, i32 4
  store %struct.vector* %10, %struct.vector** %gep_4
  %gep_5 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %structArg, i32 0, i32 5
  store %struct.vector* %8, %struct.vector** %gep_5
  %gep_6 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %structArg, i32 0, i32 6
  store i8* %30, i8** %gep_6
  %gep_7 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %structArg, i32 0, i32 7
  store i64 %2, i64* %gep_7
  %gep_8 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %structArg, i32 0, i32 8
  store %struct.adtree* %20, %struct.adtree** %gep_8
  %gep_9 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %structArg, i32 0, i32 9
  store %struct.net* %22, %struct.net** %gep_9
  %gep_10 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %structArg, i32 0, i32 10
  store %struct.timeval* %6, %struct.timeval** %gep_10
  %targetBlock = call i16 @TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0({ float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %structArg)
  %gep_reload_bestFromId.0 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %structArg, i32 0, i32 11
  %bestFromId.0.reload = load float, float* %gep_reload_bestFromId.0
  %gep_reload_bestLocalLogLikelihood.0 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %structArg, i32 0, i32 12
  %bestLocalLogLikelihood.0.reload = load float, float* %gep_reload_bestLocalLogLikelihood.0
  switch i16 %targetBlock, label %31 [
    i16 0, label %37
    i16 1, label %33
    i16 2, label %35
  ]

; <label>:31                                      ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 895, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestRemoveTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:33                                      ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 904, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestRemoveTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:35                                      ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 906, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestRemoveTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:37                                      ; preds = %codeRepl
  %38 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = fptosi float %bestFromId.0.reload to i64
  %40 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  store i64 %2, i64* %41, align 8
  %42 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float 0.000000e+00, float* %42, align 8
  %43 = sitofp i64 %2 to float
  %44 = fcmp une float %bestFromId.0.reload, %43
  br i1 %44, label %45, label %._crit_edge2

._crit_edge2:                                     ; preds = %37
  br label %57

; <label>:45                                      ; preds = %37
  %46 = getelementptr inbounds %struct.adtree, %struct.adtree* %20, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %12, 1
  %49 = sitofp i64 %48 to float
  %50 = fmul float %49, %14
  %51 = sitofp i64 %47 to float
  %52 = fadd float %16, %bestLocalLogLikelihood.0.reload
  %53 = fsub float %52, %28
  %54 = fmul float %51, %53
  %55 = fadd float %50, %54
  %56 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float %55, float* %56, align 8
  br label %57

; <label>:57                                      ; preds = %45, %._crit_edge2
  %58 = bitcast %struct.learner_task* %agg.result to i8*
  %59 = bitcast %struct.learner_task* %bestTask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind
define internal i16 @TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0({ float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }*) #8 {
newFuncRoot:
  %gep_ = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 0
  %loadgep_ = load float, float* %gep_
  %gep_1 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 1
  %loadgep_2 = load float, float* %gep_1
  %gep_3 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 2
  %loadgep_4 = load i64, i64* %gep_3
  %gep_5 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 3
  %loadgep_6 = load %struct.vector*, %struct.vector** %gep_5
  %gep_7 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 4
  %loadgep_8 = load %struct.vector*, %struct.vector** %gep_7
  %gep_9 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 5
  %loadgep_10 = load %struct.vector*, %struct.vector** %gep_9
  %gep_11 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 6
  %loadgep_12 = load i8*, i8** %gep_11
  %gep_13 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 7
  %loadgep_14 = load i64, i64* %gep_13
  %gep_15 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 8
  %loadgep_16 = load %struct.adtree*, %struct.adtree** %gep_15
  %gep_17 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 9
  %loadgep_18 = load %struct.net*, %struct.net** %gep_17
  %gep_19 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 10
  %loadgep_20 = load %struct.timeval*, %struct.timeval** %gep_19
  br label %__kernel__TMfindBestRemoveTask0

.exitStub:                                        ; preds = %__kernel__TMfindBestRemoveTask0
  %gep_bestFromId.0 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 11
  store float %bestFromId.0, float* %gep_bestFromId.0
  %gep_bestLocalLogLikelihood.0 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 12
  store float %bestLocalLogLikelihood.0, float* %gep_bestLocalLogLikelihood.0
  ret i16 0

.exitStub21:                                      ; preds = %9
  %gep_bestFromId.022 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 11
  store float %bestFromId.0, float* %gep_bestFromId.022
  %gep_bestLocalLogLikelihood.023 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 12
  store float %bestLocalLogLikelihood.0, float* %gep_bestLocalLogLikelihood.023
  ret i16 1

.exitStub24:                                      ; preds = %13
  %gep_bestFromId.025 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 11
  store float %bestFromId.0, float* %gep_bestFromId.025
  %gep_bestLocalLogLikelihood.026 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 12
  store float %bestLocalLogLikelihood.0, float* %gep_bestLocalLogLikelihood.026
  ret i16 2

.exitStub27:                                      ; preds = %27
  %gep_bestFromId.028 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 11
  store float %bestFromId.0, float* %gep_bestFromId.028
  %gep_bestLocalLogLikelihood.029 = getelementptr { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }, { float, float, i64, %struct.vector*, %struct.vector*, %struct.vector*, i8*, i64, %struct.adtree*, %struct.net*, %struct.timeval*, float, float }* %0, i32 0, i32 12
  store float %bestLocalLogLikelihood.0, float* %gep_bestLocalLogLikelihood.029
  ret i16 3

__kernel__TMfindBestRemoveTask0:                  ; preds = %23, %newFuncRoot
  %bestFromId.0 = phi float [ %loadgep_, %newFuncRoot ], [ %bestFromId.1, %23 ]
  %bestLocalLogLikelihood.0 = phi float [ %loadgep_2, %newFuncRoot ], [ %bestLocalLogLikelihood.1, %23 ]
  %i.0 = phi i64 [ 0, %newFuncRoot ], [ %24, %23 ]
  %1 = icmp slt i64 %i.0, %loadgep_4
  br i1 %1, label %2, label %.exitStub

; <label>:2                                       ; preds = %__kernel__TMfindBestRemoveTask0
  %3 = call i8* @vector_at(%struct.vector* %loadgep_6, i64 %i.0)
  %4 = bitcast i8* %3 to %struct.timeval*
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  call void @vector_clear(%struct.vector* %loadgep_8)
  br label %7

; <label>:7                                       ; preds = %39, %2
  %p.0 = phi i64 [ 0, %2 ], [ %40, %39 ]
  %8 = icmp slt i64 %p.0, %loadgep_4
  br i1 %8, label %25, label %9

; <label>:9                                       ; preds = %7
  %10 = call i64 @Pvector_copy(%struct.vector* %loadgep_10, %struct.vector* %loadgep_8)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %.exitStub21

; <label>:12                                      ; preds = %9
  br label %13

; <label>:13                                      ; preds = %12
  %14 = call i64 @Pvector_pushBack(%struct.vector* %loadgep_10, i8* %loadgep_12)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %.exitStub24

; <label>:16                                      ; preds = %13
  br label %17

; <label>:17                                      ; preds = %16
  call void @vector_sort(%struct.vector* %loadgep_10, i32 (i8*, i8*)* @compareQuery)
  %18 = call float @computeLocalLogLikelihood(i64 %loadgep_14, %struct.adtree* %loadgep_16, %struct.net* %loadgep_18, %struct.timeval* %loadgep_20, %struct.vector* %loadgep_10, %struct.vector* %loadgep_8)
  %19 = fcmp ogt float %18, %bestLocalLogLikelihood.0
  br i1 %19, label %20, label %._crit_edge1

._crit_edge1:                                     ; preds = %17
  br label %22

; <label>:20                                      ; preds = %17
  %21 = sitofp i64 %6 to float
  br label %22

; <label>:22                                      ; preds = %20, %._crit_edge1
  %bestFromId.1 = phi float [ %21, %20 ], [ %bestFromId.0, %._crit_edge1 ]
  %bestLocalLogLikelihood.1 = phi float [ %18, %20 ], [ %bestLocalLogLikelihood.0, %._crit_edge1 ]
  br label %23

; <label>:23                                      ; preds = %22
  %24 = add nsw i64 %i.0, 1
  br label %__kernel__TMfindBestRemoveTask0, !llvm.loop !6

; <label>:25                                      ; preds = %7
  %26 = icmp ne i64 %p.0, %6
  br i1 %26, label %27, label %._crit_edge

._crit_edge:                                      ; preds = %25
  br label %38

; <label>:27                                      ; preds = %25
  %28 = call i8* @vector_at(%struct.vector* %loadgep_6, i64 %p.0)
  %29 = bitcast i8* %28 to %struct.timeval*
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %loadgep_20, i64 %31
  %33 = bitcast %struct.timeval* %32 to i8*
  %34 = call i64 @Pvector_pushBack(%struct.vector* %loadgep_8, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %.exitStub27

; <label>:36                                      ; preds = %27
  br label %37

; <label>:37                                      ; preds = %36
  br label %38

; <label>:38                                      ; preds = %37, %._crit_edge
  br label %39

; <label>:39                                      ; preds = %38
  %40 = add nsw i64 %p.0, 1
  br label %7
}

; Function Attrs: nounwind uwtable
define internal void @TMfindBestReverseTask(%struct.learner_task* noalias sret %agg.result, %struct.findBestTaskArg* %argPtr) #0 {
  %structArg = alloca { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }
  %bestTask = alloca %struct.learner_task, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 1
  %4 = load %struct.learner*, %struct.learner** %3, align 8
  %5 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 2
  %6 = load %struct.timeval*, %struct.timeval** %5, align 8
  %7 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 3
  %8 = load %struct.vector*, %struct.vector** %7, align 8
  %9 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 4
  %10 = load %struct.vector*, %struct.vector** %9, align 8
  %11 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 6
  %14 = load float, float* %13, align 8
  %15 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 7
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 8
  %18 = load %struct.bitmap*, %struct.bitmap** %17, align 8
  %19 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 9
  %20 = load %struct.queue*, %struct.queue** %19, align 8
  %21 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 10
  %22 = load %struct.vector*, %struct.vector** %21, align 8
  %23 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 11
  %24 = load %struct.vector*, %struct.vector** %23, align 8
  %25 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 0
  %26 = load %struct.adtree*, %struct.adtree** %25, align 8
  %27 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 1
  %28 = load %struct.net*, %struct.net** %27, align 8
  %29 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 2
  %30 = load float*, float** %29, align 8
  call void @TMpopulateParentQueryVector(%struct.net* %28, i64 %2, %struct.timeval* %6, %struct.vector* %22)
  %31 = call i64 @vector_getSize(%struct.vector* %22)
  %32 = getelementptr inbounds float, float* %30, i64 %2
  %33 = load float, float* %32, align 4
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 %2
  %35 = bitcast %struct.timeval* %34 to i8*
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 %2
  %37 = bitcast %struct.timeval* %36 to i8*
  br label %codeRepl

codeRepl:                                         ; preds = %0
  %gep_ = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 0
  store i64 %2, i64* %gep_
  %gep_1 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 1
  store float %33, float* %gep_1
  %gep_2 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 2
  store i64 %31, i64* %gep_2
  %gep_3 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 3
  store %struct.vector* %22, %struct.vector** %gep_3
  %gep_4 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 4
  store float* %30, float** %gep_4
  %gep_5 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 5
  store %struct.net* %28, %struct.net** %gep_5
  %gep_6 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 6
  store %struct.timeval* %6, %struct.timeval** %gep_6
  %gep_7 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 7
  store %struct.vector* %24, %struct.vector** %gep_7
  %gep_8 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 8
  store %struct.vector* %10, %struct.vector** %gep_8
  %gep_9 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 9
  store %struct.vector* %8, %struct.vector** %gep_9
  %gep_10 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 10
  store i8* %35, i8** %gep_10
  %gep_11 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 11
  store %struct.adtree* %26, %struct.adtree** %gep_11
  %gep_12 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 12
  store i8* %37, i8** %gep_12
  %targetBlock = call i16 @TMfindBestReverseTask___kernel__TMfindBestReverseTask1({ i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg)
  %gep_reload_bestFromId.0 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 13
  %bestFromId.0.reload = load i64, i64* %gep_reload_bestFromId.0
  %gep_reload_bestLocalLogLikelihood.0 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %structArg, i32 0, i32 14
  %bestLocalLogLikelihood.0.reload = load float, float* %gep_reload_bestLocalLogLikelihood.0
  switch i16 %targetBlock, label %38 [
    i16 0, label %52
    i16 1, label %40
    i16 2, label %42
    i16 3, label %44
    i16 4, label %46
    i16 5, label %48
    i16 6, label %50
  ]

; <label>:38                                      ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1024, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:40                                      ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1033, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:42                                      ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1035, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:44                                      ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1055, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:46                                      ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1057, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:48                                      ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1061, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:50                                      ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1063, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:52                                      ; preds = %codeRepl
  %53 = icmp ne i64 %bestFromId.0.reload, %2
  br i1 %53, label %54, label %._crit_edge2

._crit_edge2:                                     ; preds = %52
  br label %62

; <label>:54                                      ; preds = %52
  call void @TMnet_applyOperation(%struct.net* %28, i32 1, i64 %bestFromId.0.reload, i64 %2)
  %55 = call i64 @TMnet_isPath(%struct.net* %28, i64 %bestFromId.0.reload, i64 %2, %struct.bitmap* %18, %struct.queue* %20)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %._crit_edge3

._crit_edge3:                                     ; preds = %54
  br label %58

; <label>:57                                      ; preds = %54
  br label %58

; <label>:58                                      ; preds = %57, %._crit_edge3
  %isTaskValid.0 = phi i64 [ 0, %57 ], [ 1, %._crit_edge3 ]
  call void @TMnet_applyOperation(%struct.net* %28, i32 0, i64 %bestFromId.0.reload, i64 %2)
  %59 = icmp ne i64 %isTaskValid.0, 0
  br i1 %59, label %._crit_edge4, label %60

._crit_edge4:                                     ; preds = %58
  br label %61

; <label>:60                                      ; preds = %58
  br label %61

; <label>:61                                      ; preds = %60, %._crit_edge4
  %bestFromId.2 = phi i64 [ %bestFromId.0.reload, %._crit_edge4 ], [ %2, %60 ]
  br label %62

; <label>:62                                      ; preds = %61, %._crit_edge2
  %bestFromId.3 = phi i64 [ %bestFromId.2, %61 ], [ %bestFromId.0.reload, %._crit_edge2 ]
  %63 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 0
  store i32 2, i32* %63, align 8
  %64 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 1
  store i64 %bestFromId.3, i64* %64, align 8
  %65 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  store i64 %2, i64* %65, align 8
  %66 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float 0.000000e+00, float* %66, align 8
  %67 = icmp ne i64 %bestFromId.3, %2
  br i1 %67, label %68, label %._crit_edge5

._crit_edge5:                                     ; preds = %62
  br label %82

; <label>:68                                      ; preds = %62
  %69 = getelementptr inbounds float, float* %30, i64 %bestFromId.3
  %70 = load float, float* %69, align 4
  %71 = getelementptr inbounds %struct.adtree, %struct.adtree* %26, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sitofp i64 %12 to float
  %74 = fmul float %73, %14
  %75 = sitofp i64 %72 to float
  %76 = fadd float %16, %bestLocalLogLikelihood.0.reload
  %77 = fsub float %76, %33
  %78 = fsub float %77, %70
  %79 = fmul float %75, %78
  %80 = fadd float %74, %79
  %81 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float %80, float* %81, align 8
  br label %82

; <label>:82                                      ; preds = %68, %._crit_edge5
  %83 = bitcast %struct.learner_task* %agg.result to i8*
  %84 = bitcast %struct.learner_task* %bestTask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind
define internal i16 @TMfindBestReverseTask___kernel__TMfindBestReverseTask1({ i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }*) #8 {
newFuncRoot:
  %gep_ = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 0
  %loadgep_ = load i64, i64* %gep_
  %gep_1 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 1
  %loadgep_2 = load float, float* %gep_1
  %gep_3 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 2
  %loadgep_4 = load i64, i64* %gep_3
  %gep_5 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 3
  %loadgep_6 = load %struct.vector*, %struct.vector** %gep_5
  %gep_7 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 4
  %loadgep_8 = load float*, float** %gep_7
  %gep_9 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 5
  %loadgep_10 = load %struct.net*, %struct.net** %gep_9
  %gep_11 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 6
  %loadgep_12 = load %struct.timeval*, %struct.timeval** %gep_11
  %gep_13 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 7
  %loadgep_14 = load %struct.vector*, %struct.vector** %gep_13
  %gep_15 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 8
  %loadgep_16 = load %struct.vector*, %struct.vector** %gep_15
  %gep_17 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 9
  %loadgep_18 = load %struct.vector*, %struct.vector** %gep_17
  %gep_19 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 10
  %loadgep_20 = load i8*, i8** %gep_19
  %gep_21 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 11
  %loadgep_22 = load %struct.adtree*, %struct.adtree** %gep_21
  %gep_23 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 12
  %loadgep_24 = load i8*, i8** %gep_23
  br label %__kernel__TMfindBestReverseTask1

.exitStub:                                        ; preds = %__kernel__TMfindBestReverseTask1
  %gep_bestFromId.0 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 13
  store i64 %bestFromId.0, i64* %gep_bestFromId.0
  %gep_bestLocalLogLikelihood.0 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 14
  store float %bestLocalLogLikelihood.0, float* %gep_bestLocalLogLikelihood.0
  ret i16 0

.exitStub25:                                      ; preds = %12
  %gep_bestFromId.026 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 13
  store i64 %bestFromId.0, i64* %gep_bestFromId.026
  %gep_bestLocalLogLikelihood.027 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 14
  store float %bestLocalLogLikelihood.0, float* %gep_bestLocalLogLikelihood.027
  ret i16 1

.exitStub28:                                      ; preds = %16
  %gep_bestFromId.029 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 13
  store i64 %bestFromId.0, i64* %gep_bestFromId.029
  %gep_bestLocalLogLikelihood.030 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 14
  store float %bestLocalLogLikelihood.0, float* %gep_bestLocalLogLikelihood.030
  ret i16 2

.exitStub31:                                      ; preds = %20
  %gep_bestFromId.032 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 13
  store i64 %bestFromId.0, i64* %gep_bestFromId.032
  %gep_bestLocalLogLikelihood.033 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 14
  store float %bestLocalLogLikelihood.0, float* %gep_bestLocalLogLikelihood.033
  ret i16 3

.exitStub34:                                      ; preds = %25
  %gep_bestFromId.035 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 13
  store i64 %bestFromId.0, i64* %gep_bestFromId.035
  %gep_bestLocalLogLikelihood.036 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 14
  store float %bestLocalLogLikelihood.0, float* %gep_bestLocalLogLikelihood.036
  ret i16 4

.exitStub37:                                      ; preds = %29
  %gep_bestFromId.038 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 13
  store i64 %bestFromId.0, i64* %gep_bestFromId.038
  %gep_bestLocalLogLikelihood.039 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 14
  store float %bestLocalLogLikelihood.0, float* %gep_bestLocalLogLikelihood.039
  ret i16 5

.exitStub40:                                      ; preds = %33
  %gep_bestFromId.041 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 13
  store i64 %bestFromId.0, i64* %gep_bestFromId.041
  %gep_bestLocalLogLikelihood.042 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 14
  store float %bestLocalLogLikelihood.0, float* %gep_bestLocalLogLikelihood.042
  ret i16 6

.exitStub43:                                      ; preds = %49
  %gep_bestFromId.044 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 13
  store i64 %bestFromId.0, i64* %gep_bestFromId.044
  %gep_bestLocalLogLikelihood.045 = getelementptr { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }, { i64, float, i64, %struct.vector*, float*, %struct.net*, %struct.timeval*, %struct.vector*, %struct.vector*, %struct.vector*, i8*, %struct.adtree*, i8*, i64, float }* %0, i32 0, i32 14
  store float %bestLocalLogLikelihood.0, float* %gep_bestLocalLogLikelihood.045
  ret i16 7

__kernel__TMfindBestReverseTask1:                 ; preds = %45, %newFuncRoot
  %bestFromId.0 = phi i64 [ %loadgep_, %newFuncRoot ], [ %bestFromId.1, %45 ]
  %bestLocalLogLikelihood.0 = phi float [ %loadgep_2, %newFuncRoot ], [ %bestLocalLogLikelihood.1, %45 ]
  %i.0 = phi i64 [ 0, %newFuncRoot ], [ %46, %45 ]
  %1 = icmp slt i64 %i.0, %loadgep_4
  br i1 %1, label %2, label %.exitStub

; <label>:2                                       ; preds = %__kernel__TMfindBestReverseTask1
  %3 = call i8* @vector_at(%struct.vector* %loadgep_6, i64 %i.0)
  %4 = bitcast i8* %3 to %struct.timeval*
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds float, float* %loadgep_8, i64 %6
  %8 = load float, float* %7, align 4
  %9 = fadd float %loadgep_2, %8
  call void @TMpopulateParentQueryVector(%struct.net* %loadgep_10, i64 %6, %struct.timeval* %loadgep_12, %struct.vector* %loadgep_14)
  call void @vector_clear(%struct.vector* %loadgep_16)
  br label %10

; <label>:10                                      ; preds = %61, %2
  %p.0 = phi i64 [ 0, %2 ], [ %62, %61 ]
  %11 = icmp slt i64 %p.0, %loadgep_4
  br i1 %11, label %47, label %12

; <label>:12                                      ; preds = %10
  %13 = call i64 @Pvector_copy(%struct.vector* %loadgep_18, %struct.vector* %loadgep_16)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %.exitStub25

; <label>:15                                      ; preds = %12
  br label %16

; <label>:16                                      ; preds = %15
  %17 = call i64 @Pvector_pushBack(%struct.vector* %loadgep_18, i8* %loadgep_20)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %.exitStub28

; <label>:19                                      ; preds = %16
  br label %20

; <label>:20                                      ; preds = %19
  call void @vector_sort(%struct.vector* %loadgep_18, i32 (i8*, i8*)* @compareQuery)
  %21 = call float @computeLocalLogLikelihood(i64 %loadgep_, %struct.adtree* %loadgep_22, %struct.net* %loadgep_10, %struct.timeval* %loadgep_12, %struct.vector* %loadgep_18, %struct.vector* %loadgep_16)
  %22 = call i64 @Pvector_copy(%struct.vector* %loadgep_16, %struct.vector* %loadgep_14)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %.exitStub31

; <label>:24                                      ; preds = %20
  br label %25

; <label>:25                                      ; preds = %24
  %26 = call i64 @Pvector_pushBack(%struct.vector* %loadgep_16, i8* %loadgep_24)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %.exitStub34

; <label>:28                                      ; preds = %25
  br label %29

; <label>:29                                      ; preds = %28
  call void @vector_sort(%struct.vector* %loadgep_16, i32 (i8*, i8*)* @compareQuery)
  %30 = call i64 @Pvector_copy(%struct.vector* %loadgep_18, %struct.vector* %loadgep_16)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %.exitStub37

; <label>:32                                      ; preds = %29
  br label %33

; <label>:33                                      ; preds = %32
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %loadgep_12, i64 %6
  %35 = bitcast %struct.timeval* %34 to i8*
  %36 = call i64 @Pvector_pushBack(%struct.vector* %loadgep_18, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %.exitStub40

; <label>:38                                      ; preds = %33
  br label %39

; <label>:39                                      ; preds = %38
  call void @vector_sort(%struct.vector* %loadgep_18, i32 (i8*, i8*)* @compareQuery)
  %40 = call float @computeLocalLogLikelihood(i64 %6, %struct.adtree* %loadgep_22, %struct.net* %loadgep_10, %struct.timeval* %loadgep_12, %struct.vector* %loadgep_18, %struct.vector* %loadgep_16)
  %41 = fadd float %21, %40
  %42 = fcmp ogt float %41, %9
  br i1 %42, label %43, label %._crit_edge1

._crit_edge1:                                     ; preds = %39
  br label %44

; <label>:43                                      ; preds = %39
  br label %44

; <label>:44                                      ; preds = %43, %._crit_edge1
  %bestFromId.1 = phi i64 [ %6, %43 ], [ %bestFromId.0, %._crit_edge1 ]
  %bestLocalLogLikelihood.1 = phi float [ %41, %43 ], [ %9, %._crit_edge1 ]
  br label %45

; <label>:45                                      ; preds = %44
  %46 = add nsw i64 %i.0, 1
  br label %__kernel__TMfindBestReverseTask1, !llvm.loop !8

; <label>:47                                      ; preds = %10
  %48 = icmp ne i64 %p.0, %6
  br i1 %48, label %49, label %._crit_edge

._crit_edge:                                      ; preds = %47
  br label %60

; <label>:49                                      ; preds = %47
  %50 = call i8* @vector_at(%struct.vector* %loadgep_6, i64 %p.0)
  %51 = bitcast i8* %50 to %struct.timeval*
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %loadgep_12, i64 %53
  %55 = bitcast %struct.timeval* %54 to i8*
  %56 = call i64 @Pvector_pushBack(%struct.vector* %loadgep_16, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %.exitStub43

; <label>:58                                      ; preds = %49
  br label %59

; <label>:59                                      ; preds = %58
  br label %60

; <label>:60                                      ; preds = %59, %._crit_edge
  br label %61

; <label>:61                                      ; preds = %60
  %62 = add nsw i64 %p.0, 1
  br label %10
}

; Function Attrs: nounwind uwtable
define float @learner_score(%struct.learner* %learnerPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i32 0, i32 0
  %2 = load %struct.adtree*, %struct.adtree** %1, align 8
  %3 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i32 0, i32 1
  %4 = load %struct.net*, %struct.net** %3, align 8
  %5 = call %struct.vector* @vector_alloc(i64 1)
  %6 = icmp ne %struct.vector* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1516, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.learner_score, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = call %struct.vector* @vector_alloc(i64 1)
  %12 = icmp ne %struct.vector* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  br label %16

; <label>:14                                      ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1518, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.learner_score, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = getelementptr inbounds %struct.adtree, %struct.adtree* %2, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = mul i64 %18, 16
  %20 = call noalias i8* @malloc(i64 %19) #6
  %21 = bitcast i8* %20 to %struct.timeval*
  %22 = icmp ne %struct.timeval* %21, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %16
  br label %26

; <label>:24                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 1522, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.learner_score, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %26

; <label>:26                                      ; preds = %25, %23
  br label %27

; <label>:27                                      ; preds = %34, %26
  %v.0 = phi i64 [ 0, %26 ], [ %35, %34 ]
  %28 = icmp slt i64 %v.0, %18
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %27
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i64 %v.0
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 0
  store i64 %v.0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i64 %v.0
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %32, i32 0, i32 1
  store i64 -1, i64* %33, align 8
  br label %34

; <label>:34                                      ; preds = %29
  %35 = add nsw i64 %v.0, 1
  br label %27

; <label>:36                                      ; preds = %27
  br label %37

; <label>:37                                      ; preds = %45, %36
  %v.1 = phi i64 [ 0, %36 ], [ %46, %45 ]
  %numTotalParent.0 = phi i64 [ 0, %36 ], [ %42, %45 ]
  %logLikelihood.0 = phi float [ 0.000000e+00, %36 ], [ %44, %45 ]
  %38 = icmp slt i64 %v.1, %18
  br i1 %38, label %39, label %47

; <label>:39                                      ; preds = %37
  %40 = call %struct.list* @net_getParentIdListPtr(%struct.net* %4, i64 %v.1)
  %41 = call i64 @list_getSize(%struct.list* %40)
  %42 = add nsw i64 %numTotalParent.0, %41
  call void @populateQueryVectors(%struct.net* %4, i64 %v.1, %struct.timeval* %21, %struct.vector* %5, %struct.vector* %11)
  %43 = call float @computeLocalLogLikelihood(i64 %v.1, %struct.adtree* %2, %struct.net* %4, %struct.timeval* %21, %struct.vector* %5, %struct.vector* %11)
  %44 = fadd float %logLikelihood.0, %43
  br label %45

; <label>:45                                      ; preds = %39
  %46 = add nsw i64 %v.1, 1
  br label %37

; <label>:47                                      ; preds = %37
  call void @vector_free(%struct.vector* %5)
  call void @vector_free(%struct.vector* %11)
  %48 = bitcast %struct.timeval* %21 to i8*
  call void @free(i8* %48) #6
  %49 = getelementptr inbounds %struct.adtree, %struct.adtree* %2, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %numTotalParent.0 to double
  %52 = fmul double -5.000000e-01, %51
  %53 = sitofp i64 %50 to double
  %54 = call double @log(double %53) #6
  %55 = fmul double %52, %54
  %56 = fptrunc double %55 to float
  %57 = sitofp i64 %50 to float
  %58 = fmul float %57, %logLikelihood.0
  %59 = fadd float %56, %58
  ret float %59
}

; Function Attrs: nounwind uwtable
define internal void @populateQueryVectors(%struct.net* %netPtr, i64 %id, %struct.timeval* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  call void @populateParentQueryVector(%struct.net* %netPtr, i64 %id, %struct.timeval* %queries, %struct.vector* %parentQueryVectorPtr)
  %1 = call i64 @vector_copy(%struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 595, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.populateQueryVectors, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %6

; <label>:6                                       ; preds = %5, %3
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %queries, i64 %id
  %8 = bitcast %struct.timeval* %7 to i8*
  %9 = call i64 @vector_pushBack(%struct.vector* %queryVectorPtr, i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %6
  br label %14

; <label>:12                                      ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 597, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.populateQueryVectors, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  call void @vector_sort(%struct.vector* %queryVectorPtr, i32 (i8*, i8*)* @compareQuery)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @populateParentQueryVector(%struct.net* %netPtr, i64 %id, %struct.timeval* %queries, %struct.vector* %parentQueryVectorPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  call void @vector_clear(%struct.vector* %parentQueryVectorPtr)
  %1 = call %struct.list* @net_getParentIdListPtr(%struct.net* %netPtr, i64 %id)
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %1)
  br label %2

; <label>:2                                       ; preds = %15, %0
  %3 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %1) #19
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %16

; <label>:5                                       ; preds = %2
  %6 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %1)
  %7 = ptrtoint i8* %6 to i64
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %queries, i64 %7
  %9 = bitcast %struct.timeval* %8 to i8*
  %10 = call i64 @vector_pushBack(%struct.vector* %parentQueryVectorPtr, i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %5
  br label %15

; <label>:13                                      ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.3, i32 0, i32 0), i32 548, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.populateParentQueryVector, i32 0, i32 0)) #17
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:15                                      ; preds = %12
  br label %2

; <label>:16                                      ; preds = %2
  ret void
}

; Function Attrs: nounwind uwtable
define noalias %struct.adtree_node* @allocNode(i64 %index) #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #6
  %2 = bitcast i8* %1 to %struct.adtree_node*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %13, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.vector* @vector_alloc(i64 1) #6
  %6 = getelementptr inbounds i8, i8* %1, i64 24
  %7 = bitcast i8* %6 to %struct.vector**
  store %struct.vector* %5, %struct.vector** %7, align 8
  %8 = icmp eq %struct.vector* %5, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %4
  tail call void @free(i8* nonnull %1) #6
  br label %13

; <label>:10                                      ; preds = %4
  %11 = bitcast i8* %1 to i64*
  store i64 %index, i64* %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 8
  call void @llvm.memset.p0i8.i64(i8* %12, i8 -1, i64 16, i32 8, i1 false)
  br label %13

; <label>:13                                      ; preds = %10, %9, %0
  %.0 = phi %struct.adtree_node* [ null, %9 ], [ %2, %0 ], [ %2, %10 ]
  ret %struct.adtree_node* %.0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

; Function Attrs: nounwind uwtable
define void @freeNode(%struct.adtree_node* nocapture %nodePtr) #0 {
  %1 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %nodePtr, i64 0, i32 3
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @vector_free(%struct.vector* %2) #6
  %3 = bitcast %struct.adtree_node* %nodePtr to i8*
  tail call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define noalias %struct.adtree_vary* @allocVary(i64 %index) #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #6
  %2 = bitcast i8* %1 to %struct.adtree_vary*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %9, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i64*
  store i64 %index, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 -1, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 16, i32 8, i1 false)
  br label %9

; <label>:9                                       ; preds = %4, %0
  ret %struct.adtree_vary* %2
}

; Function Attrs: nounwind uwtable
define void @freeVary(%struct.adtree_vary* nocapture %varyPtr) #0 {
  %1 = bitcast %struct.adtree_vary* %varyPtr to i8*
  tail call void @free(i8* %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define noalias %struct.adtree* @adtree_alloc() #0 {
  %1 = tail call noalias i8* @malloc(i64 24) #6
  %2 = bitcast i8* %1 to %struct.adtree*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8, i8* %1, i64 16
  %6 = bitcast i8* %5 to %struct.adtree_node**
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 -1, i64 16, i32 8, i1 false)
  store %struct.adtree_node* null, %struct.adtree_node** %6, align 8
  br label %7

; <label>:7                                       ; preds = %4, %0
  ret %struct.adtree* %2
}

; Function Attrs: nounwind uwtable
define void @adtree_free(%struct.adtree* nocapture %adtreePtr) #0 {
  %1 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i64 0, i32 2
  %2 = load %struct.adtree_node*, %struct.adtree_node** %1, align 8
  tail call fastcc void @freeNodes(%struct.adtree_node* %2)
  %3 = bitcast %struct.adtree* %adtreePtr to i8*
  tail call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @freeNodes(%struct.adtree_node* %nodePtr) unnamed_addr #0 {
  %1 = icmp eq %struct.adtree_node* %nodePtr, null
  br i1 %1, label %17, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %nodePtr, i64 0, i32 3
  %4 = load %struct.vector*, %struct.vector** %3, align 8
  %5 = tail call i64 @vector_getSize(%struct.vector* %4) #6
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %v.01 = phi i64 [ %14, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %7 = tail call i8* @vector_at(%struct.vector* %4, i64 %v.01) #6
  %8 = getelementptr inbounds i8, i8* %7, i64 16
  %9 = bitcast i8* %8 to %struct.adtree_node**
  %10 = load %struct.adtree_node*, %struct.adtree_node** %9, align 8
  tail call fastcc void @freeNodes(%struct.adtree_node* %10)
  %11 = getelementptr inbounds i8, i8* %7, i64 24
  %12 = bitcast i8* %11 to %struct.adtree_node**
  %13 = load %struct.adtree_node*, %struct.adtree_node** %12, align 8
  tail call fastcc void @freeNodes(%struct.adtree_node* %13)
  tail call void @free(i8* %7) #6
  %14 = add nuw nsw i64 %v.01, 1
  %exitcond = icmp eq i64 %14, %5
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %15 = load %struct.vector*, %struct.vector** %3, align 8
  tail call void @vector_free(%struct.vector* %15) #6
  %16 = bitcast %struct.adtree_node* %nodePtr to i8*
  tail call void @free(i8* %16) #6
  br label %17

; <label>:17                                      ; preds = %._crit_edge, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @adtree_make(%struct.adtree* nocapture %adtreePtr, %struct.data* %dataPtr) #0 {
  %1 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i64 0, i32 0
  store i64 %4, i64* %5, align 8
  %6 = load i64, i64* %1, align 8
  %7 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i64 0, i32 1
  store i64 %6, i64* %7, align 8
  tail call void @data_sort(%struct.data* %dataPtr, i64 0, i64 %2, i64 0) #6
  %8 = tail call fastcc %struct.adtree_node* @makeNode(i64 -1, i64 -1, i64 0, i64 %2, %struct.data* %dataPtr)
  %9 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i64 0, i32 2
  store %struct.adtree_node* %8, %struct.adtree_node** %9, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.adtree_node* @makeNode(i64 %parentIndex, i64 %index, i64 %start, i64 %numRecord, %struct.data* %dataPtr) unnamed_addr #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #6
  %2 = bitcast i8* %1 to %struct.adtree_node*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %allocNode.exit, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.vector* @vector_alloc(i64 1) #6
  %6 = getelementptr inbounds i8, i8* %1, i64 24
  %7 = bitcast i8* %6 to %struct.vector**
  store %struct.vector* %5, %struct.vector** %7, align 8
  %8 = icmp eq %struct.vector* %5, null
  br i1 %8, label %allocNode.exit.thread, label %allocNode.exit.thread1

allocNode.exit.thread:                            ; preds = %4
  tail call void @free(i8* nonnull %1) #6
  br label %allocNode.exit

allocNode.exit.thread1:                           ; preds = %4
  %9 = bitcast i8* %1 to i64*
  store i64 %index, i64* %9, align 8
  %10 = getelementptr inbounds i8, i8* %1, i64 8
  %11 = bitcast i8* %10 to i64*
  store i64 -1, i64* %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 16
  %13 = bitcast i8* %12 to i64*
  store i64 %numRecord, i64* %13, align 8
  %14 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %numRecord, 1
  br i1 %16, label %allocNode.exit.thread1.split.us.preheader, label %allocNode.exit.thread1.split.preheader

allocNode.exit.thread1.split.preheader:           ; preds = %allocNode.exit.thread1
  br label %allocNode.exit.thread1.split

allocNode.exit.thread1.split.us.preheader:        ; preds = %allocNode.exit.thread1
  br label %allocNode.exit.thread1.split.us

allocNode.exit.thread1.split.us:                  ; preds = %makeVary.exit.us, %allocNode.exit.thread1.split.us.preheader
  %v.0.in.us = phi i64 [ %v.0.us, %makeVary.exit.us ], [ %index, %allocNode.exit.thread1.split.us.preheader ]
  %v.0.us = add nsw i64 %v.0.in.us, 1
  %17 = icmp slt i64 %v.0.us, %15
  br i1 %17, label %18, label %.us-lcssa.us.loopexit

; <label>:18                                      ; preds = %allocNode.exit.thread1.split.us
  %19 = tail call noalias i8* @malloc(i64 32) #6
  %20 = icmp eq i8* %19, null
  br i1 %20, label %allocVary.exit.i.loopexit, label %allocVary.exit.i.thread.us

allocVary.exit.i.thread.us:                       ; preds = %18
  %21 = bitcast i8* %19 to i64*
  store i64 %v.0.us, i64* %21, align 8
  %22 = getelementptr inbounds i8, i8* %19, i64 8
  %23 = bitcast i8* %22 to i64*
  store i64 -1, i64* %23, align 8
  %24 = getelementptr inbounds i8, i8* %19, i64 16
  tail call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 16, i32 8, i1 false) #6
  %25 = icmp eq i64 %v.0.in.us, %parentIndex
  br i1 %25, label %27, label %26

; <label>:26                                      ; preds = %allocVary.exit.i.thread.us
  tail call void @data_sort(%struct.data* %dataPtr, i64 %start, i64 %numRecord, i64 %v.0.us) #6
  br label %27

; <label>:27                                      ; preds = %26, %allocVary.exit.i.thread.us
  %28 = tail call i64 @data_findSplit(%struct.data* %dataPtr, i64 %start, i64 %numRecord, i64 %v.0.us) #6
  %29 = sub nsw i64 %numRecord, %28
  %30 = icmp sge i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = xor i64 %31, 1
  store i64 %32, i64* %23, align 8
  %33 = icmp eq i64 %28, 0
  %or.cond3.i.us = or i1 %33, %30
  br i1 %or.cond3.i.us, label %38, label %34

; <label>:34                                      ; preds = %27
  %35 = tail call fastcc %struct.adtree_node* @makeNode(i64 %v.0.us, i64 %v.0.us, i64 %start, i64 %28, %struct.data* %dataPtr) #6
  %36 = bitcast i8* %24 to %struct.adtree_node**
  store %struct.adtree_node* %35, %struct.adtree_node** %36, align 8
  %37 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %35, i64 0, i32 1
  store i64 0, i64* %37, align 8
  br label %40

; <label>:38                                      ; preds = %27
  %39 = bitcast i8* %24 to %struct.adtree_node**
  store %struct.adtree_node* null, %struct.adtree_node** %39, align 8
  br label %40

; <label>:40                                      ; preds = %38, %34
  %41 = icmp eq i64 %28, %numRecord
  %42 = xor i1 %30, true
  %or.cond5.i.us = or i1 %41, %42
  br i1 %or.cond5.i.us, label %49, label %43

; <label>:43                                      ; preds = %40
  %44 = add nsw i64 %28, %start
  %45 = tail call fastcc %struct.adtree_node* @makeNode(i64 %v.0.us, i64 %v.0.us, i64 %44, i64 %29, %struct.data* %dataPtr) #6
  %46 = getelementptr inbounds i8, i8* %19, i64 24
  %47 = bitcast i8* %46 to %struct.adtree_node**
  store %struct.adtree_node* %45, %struct.adtree_node** %47, align 8
  %48 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %45, i64 0, i32 1
  store i64 1, i64* %48, align 8
  br label %makeVary.exit.us

; <label>:49                                      ; preds = %40
  %50 = getelementptr inbounds i8, i8* %19, i64 24
  %51 = bitcast i8* %50 to %struct.adtree_node**
  store %struct.adtree_node* null, %struct.adtree_node** %51, align 8
  br label %makeVary.exit.us

makeVary.exit.us:                                 ; preds = %49, %43
  %52 = tail call i64 @vector_pushBack(%struct.vector* nonnull %5, i8* nonnull %19) #6
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %.us-lcssa3.us.loopexit, label %allocNode.exit.thread1.split.us

allocNode.exit:                                   ; preds = %allocNode.exit.thread, %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.40, i64 0, i64 0), i32 283, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.makeNode, i64 0, i64 0)) #17
  unreachable

allocNode.exit.thread1.split:                     ; preds = %makeVary.exit, %allocNode.exit.thread1.split.preheader
  %v.0.in = phi i64 [ %v.0, %makeVary.exit ], [ %index, %allocNode.exit.thread1.split.preheader ]
  %v.0 = add nsw i64 %v.0.in, 1
  %54 = icmp slt i64 %v.0, %15
  br i1 %54, label %55, label %.us-lcssa.us.loopexit13

; <label>:55                                      ; preds = %allocNode.exit.thread1.split
  %56 = tail call noalias i8* @malloc(i64 32) #6
  %57 = icmp eq i8* %56, null
  br i1 %57, label %allocVary.exit.i.loopexit14, label %allocVary.exit.i.thread

allocVary.exit.i.thread:                          ; preds = %55
  %58 = bitcast i8* %56 to i64*
  store i64 %v.0, i64* %58, align 8
  %59 = getelementptr inbounds i8, i8* %56, i64 8
  %60 = bitcast i8* %59 to i64*
  store i64 -1, i64* %60, align 8
  %61 = getelementptr inbounds i8, i8* %56, i64 16
  tail call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 16, i32 8, i1 false) #6
  %62 = tail call i64 @data_findSplit(%struct.data* %dataPtr, i64 %start, i64 %numRecord, i64 %v.0) #6
  %63 = sub nsw i64 %numRecord, %62
  %64 = icmp sge i64 %62, %63
  %65 = zext i1 %64 to i64
  %66 = xor i64 %65, 1
  store i64 %66, i64* %60, align 8
  %67 = icmp eq i64 %62, 0
  %or.cond3.i = or i1 %67, %64
  br i1 %or.cond3.i, label %68, label %70

allocVary.exit.i.loopexit:                        ; preds = %18
  br label %allocVary.exit.i

allocVary.exit.i.loopexit14:                      ; preds = %55
  br label %allocVary.exit.i

allocVary.exit.i:                                 ; preds = %allocVary.exit.i.loopexit14, %allocVary.exit.i.loopexit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.41, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.40, i64 0, i64 0), i32 239, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.makeVary, i64 0, i64 0)) #17
  unreachable

; <label>:68                                      ; preds = %allocVary.exit.i.thread
  %69 = bitcast i8* %61 to %struct.adtree_node**
  store %struct.adtree_node* null, %struct.adtree_node** %69, align 8
  br label %74

; <label>:70                                      ; preds = %allocVary.exit.i.thread
  %71 = tail call fastcc %struct.adtree_node* @makeNode(i64 %v.0, i64 %v.0, i64 %start, i64 %62, %struct.data* %dataPtr) #6
  %72 = bitcast i8* %61 to %struct.adtree_node**
  store %struct.adtree_node* %71, %struct.adtree_node** %72, align 8
  %73 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %71, i64 0, i32 1
  store i64 0, i64* %73, align 8
  br label %74

; <label>:74                                      ; preds = %70, %68
  %75 = icmp eq i64 %62, %numRecord
  %76 = xor i1 %64, true
  %or.cond5.i = or i1 %75, %76
  br i1 %or.cond5.i, label %77, label %80

; <label>:77                                      ; preds = %74
  %78 = getelementptr inbounds i8, i8* %56, i64 24
  %79 = bitcast i8* %78 to %struct.adtree_node**
  store %struct.adtree_node* null, %struct.adtree_node** %79, align 8
  br label %makeVary.exit

; <label>:80                                      ; preds = %74
  %81 = add nsw i64 %62, %start
  %82 = tail call fastcc %struct.adtree_node* @makeNode(i64 %v.0, i64 %v.0, i64 %81, i64 %63, %struct.data* %dataPtr) #6
  %83 = getelementptr inbounds i8, i8* %56, i64 24
  %84 = bitcast i8* %83 to %struct.adtree_node**
  store %struct.adtree_node* %82, %struct.adtree_node** %84, align 8
  %85 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %82, i64 0, i32 1
  store i64 1, i64* %85, align 8
  br label %makeVary.exit

makeVary.exit:                                    ; preds = %80, %77
  %86 = tail call i64 @vector_pushBack(%struct.vector* nonnull %5, i8* nonnull %56) #6
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %.us-lcssa3.us.loopexit15, label %allocNode.exit.thread1.split

.us-lcssa3.us.loopexit:                           ; preds = %makeVary.exit.us
  br label %.us-lcssa3.us

.us-lcssa3.us.loopexit15:                         ; preds = %makeVary.exit
  br label %.us-lcssa3.us

.us-lcssa3.us:                                    ; preds = %.us-lcssa3.us.loopexit15, %.us-lcssa3.us.loopexit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.42, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.40, i64 0, i64 0), i32 296, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.makeNode, i64 0, i64 0)) #17
  unreachable

.us-lcssa.us.loopexit:                            ; preds = %allocNode.exit.thread1.split.us
  br label %.us-lcssa.us

.us-lcssa.us.loopexit13:                          ; preds = %allocNode.exit.thread1.split
  br label %.us-lcssa.us

.us-lcssa.us:                                     ; preds = %.us-lcssa.us.loopexit13, %.us-lcssa.us.loopexit
  ret %struct.adtree_node* %2
}

; Function Attrs: nounwind uwtable
define i64 @adtree_getCount(%struct.adtree* %adtreePtr, %struct.vector* %queryVectorPtr) #0 {
  %1 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i64 0, i32 2
  %2 = load %struct.adtree_node*, %struct.adtree_node** %1, align 8
  %3 = icmp eq %struct.adtree_node* %2, null
  br i1 %3, label %14, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i64 @vector_getSize(%struct.vector* %queryVectorPtr) #6
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %4
  %8 = add nsw i64 %5, -1
  %9 = tail call i8* @vector_at(%struct.vector* %queryVectorPtr, i64 %8) #6
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 8
  br label %12

; <label>:12                                      ; preds = %7, %4
  %lastQueryIndex.0 = phi i64 [ %11, %7 ], [ -1, %4 ]
  %13 = tail call fastcc i64 @getCount(%struct.adtree_node* nonnull %2, i64 -1, i64 0, %struct.vector* %queryVectorPtr, i64 %lastQueryIndex.0, %struct.adtree* nonnull %adtreePtr)
  br label %14

; <label>:14                                      ; preds = %12, %0
  %.0 = phi i64 [ %13, %12 ], [ 0, %0 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @getCount(%struct.adtree_node* %nodePtr, i64 %i, i64 %q, %struct.vector* %queryVectorPtr, i64 %lastQueryIndex, %struct.adtree* %adtreePtr) unnamed_addr #0 {
  %1 = icmp eq %struct.adtree_node* %nodePtr, null
  br i1 %1, label %.loopexit, label %.lr.ph27.preheader

.lr.ph27.preheader:                               ; preds = %0
  br label %.lr.ph27

.lr.ph27:                                         ; preds = %tailrecurse.backedge, %.lr.ph27.preheader
  %q.tr25 = phi i64 [ %75, %tailrecurse.backedge ], [ %q, %.lr.ph27.preheader ]
  %i.tr24 = phi i64 [ %74, %tailrecurse.backedge ], [ %i, %.lr.ph27.preheader ]
  %nodePtr.tr23 = phi %struct.adtree_node* [ %nodePtr.tr.be, %tailrecurse.backedge ], [ %nodePtr, %.lr.ph27.preheader ]
  %2 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %nodePtr.tr23, i64 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = icmp slt i64 %3, %lastQueryIndex
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %.lr.ph27
  %nodePtr.tr23.lcssa = phi %struct.adtree_node* [ %nodePtr.tr23, %.lr.ph27 ]
  %6 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %nodePtr.tr23.lcssa, i64 0, i32 2
  %7 = load i64, i64* %6, align 8
  br label %.loopexit

; <label>:8                                       ; preds = %.lr.ph27
  %9 = tail call i8* @vector_at(%struct.vector* %queryVectorPtr, i64 %q.tr25) #6
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %8
  %nodePtr.tr23.lcssa132 = phi %struct.adtree_node* [ %nodePtr.tr23, %8 ]
  %12 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %nodePtr.tr23.lcssa132, i64 0, i32 2
  %13 = load i64, i64* %12, align 8
  br label %.loopexit

; <label>:14                                      ; preds = %8
  %15 = bitcast i8* %9 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, %lastQueryIndex
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %14
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4.45, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.40, i64 0, i64 0), i32 347, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i64 0, i64 0)) #17
  unreachable

; <label>:19                                      ; preds = %14
  %20 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %nodePtr.tr23, i64 0, i32 3
  %21 = load %struct.vector*, %struct.vector** %20, align 8
  %22 = xor i64 %3, -1
  %23 = add i64 %16, %22
  %24 = tail call i8* @vector_at(%struct.vector* %21, i64 %23) #6
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %19
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.41, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.40, i64 0, i64 0), i32 352, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i64 0, i64 0)) #17
  unreachable

; <label>:27                                      ; preds = %19
  %28 = getelementptr inbounds i8, i8* %9, i64 8
  %29 = bitcast i8* %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %24, i64 8
  %32 = bitcast i8* %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %71

; <label>:35                                      ; preds = %27
  %.lcssa140 = phi i64 [ %30, %27 ]
  %.lcssa = phi i64* [ %29, %27 ]
  %nodePtr.tr23.lcssa135 = phi %struct.adtree_node* [ %nodePtr.tr23, %27 ]
  %i.tr24.lcssa129 = phi i64 [ %i.tr24, %27 ]
  %q.tr25.lcssa123 = phi i64 [ %q.tr25, %27 ]
  %36 = tail call i64 @vector_getSize(%struct.vector* %queryVectorPtr) #6
  %37 = add nsw i64 %36, -1
  %38 = tail call %struct.vector* @Pvector_alloc(i64 %37) #6
  %39 = icmp eq %struct.vector* %38, null
  br i1 %39, label %41, label %.preheader

.preheader:                                       ; preds = %35
  %40 = icmp sgt i64 %36, 0
  br i1 %40, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

; <label>:41                                      ; preds = %35
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5.46, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.40, i64 0, i64 0), i32 366, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i64 0, i64 0)) #17
  unreachable

.lr.ph:                                           ; preds = %48, %.lr.ph.preheader
  %qq.022 = phi i64 [ %49, %48 ], [ 0, %.lr.ph.preheader ]
  %42 = icmp eq i64 %qq.022, %q.tr25.lcssa123
  br i1 %42, label %48, label %43

; <label>:43                                      ; preds = %.lr.ph
  %44 = tail call i8* @vector_at(%struct.vector* %queryVectorPtr, i64 %qq.022) #6
  %45 = tail call i64 @vector_pushBack(%struct.vector* nonnull %38, i8* %44) #6
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %43
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.42, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.40, i64 0, i64 0), i32 373, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i64 0, i64 0)) #17
  unreachable

; <label>:48                                      ; preds = %43, %.lr.ph
  %49 = add nuw nsw i64 %qq.022, 1
  %50 = icmp slt i64 %49, %36
  br i1 %50, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %51 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i64 0, i32 2
  %52 = load %struct.adtree_node*, %struct.adtree_node** %51, align 8
  %53 = icmp eq %struct.adtree_node* %52, null
  br i1 %53, label %adtree_getCount.exit, label %54

; <label>:54                                      ; preds = %._crit_edge
  %55 = tail call i64 @vector_getSize(%struct.vector* nonnull %38) #6
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %62

; <label>:57                                      ; preds = %54
  %58 = add nsw i64 %55, -1
  %59 = tail call i8* @vector_at(%struct.vector* nonnull %38, i64 %58) #6
  %60 = bitcast i8* %59 to i64*
  %61 = load i64, i64* %60, align 8
  br label %62

; <label>:62                                      ; preds = %57, %54
  %lastQueryIndex.0.i = phi i64 [ %61, %57 ], [ -1, %54 ]
  %63 = tail call fastcc i64 @getCount(%struct.adtree_node* nonnull %52, i64 -1, i64 0, %struct.vector* nonnull %38, i64 %lastQueryIndex.0.i, %struct.adtree* nonnull %adtreePtr) #6
  br label %adtree_getCount.exit

adtree_getCount.exit:                             ; preds = %62, %._crit_edge
  %.0.i = phi i64 [ %63, %62 ], [ 0, %._crit_edge ]
  tail call void @Pvector_free(%struct.vector* nonnull %38) #6
  %64 = icmp eq i64 %.lcssa140, 0
  br i1 %64, label %65, label %67

; <label>:65                                      ; preds = %adtree_getCount.exit
  store i64 1, i64* %.lcssa, align 8
  %66 = tail call fastcc i64 @getCount(%struct.adtree_node* nonnull %nodePtr.tr23.lcssa135, i64 %i.tr24.lcssa129, i64 %q.tr25.lcssa123, %struct.vector* %queryVectorPtr, i64 %lastQueryIndex, %struct.adtree* nonnull %adtreePtr)
  br label %69

; <label>:67                                      ; preds = %adtree_getCount.exit
  store i64 0, i64* %.lcssa, align 8
  %68 = tail call fastcc i64 @getCount(%struct.adtree_node* nonnull %nodePtr.tr23.lcssa135, i64 %i.tr24.lcssa129, i64 %q.tr25.lcssa123, %struct.vector* %queryVectorPtr, i64 %lastQueryIndex, %struct.adtree* nonnull %adtreePtr)
  br label %69

; <label>:69                                      ; preds = %67, %65
  %storemerge = phi i64 [ 1, %67 ], [ 0, %65 ]
  %invertCount.0 = phi i64 [ %68, %67 ], [ %66, %65 ]
  store i64 %storemerge, i64* %.lcssa, align 8
  %70 = sub nsw i64 %.0.i, %invertCount.0
  br label %.loopexit

; <label>:71                                      ; preds = %27
  switch i64 %30, label %79 [
    i64 0, label %72
    i64 1, label %77
  ]

; <label>:72                                      ; preds = %71
  %73 = getelementptr inbounds i8, i8* %24, i64 16
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %77, %72
  %nodePtr.tr.be.in.in = phi i8* [ %73, %72 ], [ %78, %77 ]
  %nodePtr.tr.be.in = bitcast i8* %nodePtr.tr.be.in.in to %struct.adtree_node**
  %nodePtr.tr.be = load %struct.adtree_node*, %struct.adtree_node** %nodePtr.tr.be.in, align 8
  %74 = add nsw i64 %i.tr24, 1
  %75 = add nsw i64 %q.tr25, 1
  %76 = icmp eq %struct.adtree_node* %nodePtr.tr.be, null
  br i1 %76, label %.loopexit.loopexit, label %.lr.ph27

; <label>:77                                      ; preds = %71
  %78 = getelementptr inbounds i8, i8* %24, i64 24
  br label %tailrecurse.backedge

; <label>:79                                      ; preds = %71
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.47, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.40, i64 0, i64 0), i32 433, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i64 0, i64 0)) #17
  unreachable

.loopexit.loopexit:                               ; preds = %tailrecurse.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %69, %11, %5, %0
  %.0 = phi i64 [ %7, %5 ], [ %13, %11 ], [ %70, %69 ], [ 0, %0 ], [ 0, %.loopexit.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define noalias %struct.data* @data_alloc(i64 %numVar, i64 %numRecord, %struct.random* %randomPtr) #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #6
  %2 = bitcast i8* %1 to %struct.data*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %17, label %4

; <label>:4                                       ; preds = %0
  %5 = mul nsw i64 %numRecord, %numVar
  %6 = tail call noalias i8* @malloc(i64 %5) #6
  %7 = getelementptr inbounds i8, i8* %1, i64 16
  %8 = bitcast i8* %7 to i8**
  store i8* %6, i8** %8, align 8
  %9 = icmp eq i8* %6, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %4
  tail call void @free(i8* nonnull %1) #6
  br label %17

; <label>:11                                      ; preds = %4
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 2, i64 %5, i32 1, i1 false)
  %12 = bitcast i8* %1 to i64*
  store i64 %numVar, i64* %12, align 8
  %13 = getelementptr inbounds i8, i8* %1, i64 8
  %14 = bitcast i8* %13 to i64*
  store i64 %numRecord, i64* %14, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 24
  %16 = bitcast i8* %15 to %struct.random**
  store %struct.random* %randomPtr, %struct.random** %16, align 8
  br label %17

; <label>:17                                      ; preds = %11, %10, %0
  %.0 = phi %struct.data* [ null, %10 ], [ %2, %0 ], [ %2, %11 ]
  ret %struct.data* %.0
}

; Function Attrs: nounwind uwtable
define void @data_free(%struct.data* nocapture %dataPtr) #0 {
  %1 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 2
  %2 = load i8*, i8** %1, align 8
  tail call void @free(i8* %2) #6
  %3 = bitcast %struct.data* %dataPtr to i8*
  tail call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.net* @data_generate(%struct.data* nocapture readonly %dataPtr, i64 %seed, i64 %maxNumParent, i64 %percentParent) #0 {
  %it = alloca %struct.list_node*, align 8
  %it5 = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 3
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = icmp sgt i64 %seed, -1
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  tail call void @random_seed(%struct.random* %2, i64 %seed) #6
  br label %5

; <label>:5                                       ; preds = %4, %0
  %6 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = tail call %struct.net* @net_alloc(i64 %7) #6
  %9 = icmp eq %struct.net* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %5
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 149, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

; <label>:11                                      ; preds = %5
  tail call void @net_generateRandomEdges(%struct.net* nonnull %8, i64 %maxNumParent, i64 %percentParent, %struct.random* %2) #6
  %12 = shl i64 %7, 3
  %13 = tail call noalias i8* @malloc(i64 %12) #6
  %14 = bitcast i8* %13 to i64**
  %15 = icmp eq i8* %13, null
  br i1 %15, label %17, label %.preheader4

.preheader4:                                      ; preds = %11
  %16 = icmp sgt i64 %7, 0
  br i1 %16, label %.lr.ph33.preheader, label %._crit_edge34

.lr.ph33.preheader:                               ; preds = %.preheader4
  br label %.lr.ph33

; <label>:17                                      ; preds = %11
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2.56, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 158, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

.lr.ph33:                                         ; preds = %._crit_edge31, %.lr.ph33.preheader
  %v.032 = phi i64 [ %36, %._crit_edge31 ], [ 0, %.lr.ph33.preheader ]
  %18 = tail call %struct.list* @net_getParentIdListPtr(%struct.net* nonnull %8, i64 %v.032) #6
  %19 = tail call i64 @list_getSize(%struct.list* %18) #6
  %20 = trunc i64 %19 to i32
  %21 = shl i32 1, %20
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call noalias i8* @malloc(i64 %23) #6
  %25 = bitcast i8* %24 to i64*
  %26 = icmp eq i8* %24, null
  br i1 %26, label %28, label %.preheader3

.preheader3:                                      ; preds = %.lr.ph33
  %27 = icmp eq i32 %20, 31
  br i1 %27, label %._crit_edge31, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.preheader3
  br label %.lr.ph30

; <label>:28                                      ; preds = %.lr.ph33
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.57, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 164, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

.lr.ph30:                                         ; preds = %.lr.ph30, %.lr.ph30.preheader
  %t.029 = phi i64 [ %32, %.lr.ph30 ], [ 0, %.lr.ph30.preheader ]
  %29 = tail call i64 @random_generate(%struct.random* %2) #6
  %30 = urem i64 %29, 101
  %31 = getelementptr inbounds i64, i64* %25, i64 %t.029
  store i64 %30, i64* %31, align 8
  %32 = add nuw nsw i64 %t.029, 1
  %33 = icmp slt i64 %32, %22
  br i1 %33, label %.lr.ph30, label %._crit_edge31.loopexit

._crit_edge31.loopexit:                           ; preds = %.lr.ph30
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %.preheader3
  %34 = getelementptr inbounds i64*, i64** %14, i64 %v.032
  %35 = bitcast i64** %34 to i8**
  store i8* %24, i8** %35, align 8
  %36 = add nuw nsw i64 %v.032, 1
  %37 = icmp slt i64 %36, %7
  br i1 %37, label %.lr.ph33, label %._crit_edge34.loopexit

._crit_edge34.loopexit:                           ; preds = %._crit_edge31
  br label %._crit_edge34

._crit_edge34:                                    ; preds = %._crit_edge34.loopexit, %.preheader4
  %38 = tail call noalias i8* @malloc(i64 %12) #6
  %39 = bitcast i8* %38 to i64*
  %40 = icmp eq i8* %38, null
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %._crit_edge34
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4.58, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 178, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

; <label>:42                                      ; preds = %._crit_edge34
  %43 = tail call %struct.queue* @queue_alloc(i64 -1) #6
  %44 = icmp eq %struct.queue* %43, null
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %42
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5.59, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 182, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

; <label>:46                                      ; preds = %42
  %47 = tail call %struct.vector* @vector_alloc(i64 1) #6
  %48 = icmp eq %struct.vector* %47, null
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %46
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6.60, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 185, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

; <label>:50                                      ; preds = %46
  %51 = tail call %struct.bitmap* @bitmap_alloc(i64 %7) #6
  %52 = icmp eq %struct.bitmap* %51, null
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %50
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7.61, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 188, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

; <label>:54                                      ; preds = %50
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %51) #6
  %55 = tail call %struct.bitmap* @bitmap_alloc(i64 %7) #6
  %56 = icmp eq %struct.bitmap* %55, null
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %54
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8.62, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 192, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

; <label>:58                                      ; preds = %54
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %55) #6
  %59 = call i64 @bitmap_findClear(%struct.bitmap* nonnull %55, i64 0) #6
  %60 = icmp sgt i64 %59, -1
  br i1 %60, label %.lr.ph75.preheader, label %.outer.outer._crit_edge

.lr.ph75.preheader:                               ; preds = %58
  br label %.lr.ph75

.outer.outer.loopexit:                            ; preds = %111
  %numOrder.2.lcssa = phi i64 [ %numOrder.2, %111 ]
  %61 = add nsw i64 %.lcssa98, 1
  %62 = call i64 @bitmap_findClear(%struct.bitmap* nonnull %55, i64 %61) #6
  %63 = icmp sgt i64 %62, -1
  br i1 %63, label %.lr.ph75, label %.outer.outer._crit_edge.loopexit81

.lr.ph75:                                         ; preds = %.outer.outer.loopexit, %.lr.ph75.preheader
  %64 = phi i64 [ %62, %.outer.outer.loopexit ], [ %59, %.lr.ph75.preheader ]
  %numOrder.0.ph.ph77 = phi i64 [ %numOrder.2.lcssa, %.outer.outer.loopexit ], [ 0, %.lr.ph75.preheader ]
  br label %65

; <label>:65                                      ; preds = %.outer.backedge, %.lr.ph75
  %66 = phi i64 [ %64, %.lr.ph75 ], [ %71, %.outer.backedge ]
  %67 = call %struct.list* @net_getChildIdListPtr(%struct.net* nonnull %8, i64 %66) #6
  %68 = call i64 @list_getSize(%struct.list* %67) #6
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %73, label %.outer.backedge

.outer.backedge:                                  ; preds = %._crit_edge23, %65
  %70 = add nsw i64 %66, 1
  %71 = call i64 @bitmap_findClear(%struct.bitmap* nonnull %55, i64 %70) #6
  %72 = icmp sgt i64 %71, -1
  br i1 %72, label %65, label %.outer.outer._crit_edge.loopexit

; <label>:73                                      ; preds = %65
  call void @queue_clear(%struct.queue* nonnull %43) #6
  %74 = inttoptr i64 %66 to i8*
  %75 = call i64 @queue_push(%struct.queue* nonnull %43, i8* %74) #6
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %79, label %.preheader2

.preheader2:                                      ; preds = %73
  %77 = call i64 @queue_isEmpty(%struct.queue* nonnull %43) #6
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %.lr.ph22.preheader, label %._crit_edge23

.lr.ph22.preheader:                               ; preds = %.preheader2
  br label %.lr.ph22

; <label>:79                                      ; preds = %73
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9.63, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 208, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

.loopexit:                                        ; preds = %93
  %80 = call i64 @queue_isEmpty(%struct.queue* nonnull %43) #6
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %.lr.ph22, label %._crit_edge23.loopexit

.lr.ph22:                                         ; preds = %.loopexit, %.lr.ph22.preheader
  %82 = call i8* @queue_pop(%struct.queue* nonnull %43) #6
  %83 = ptrtoint i8* %82 to i64
  %84 = call i64 @bitmap_set(%struct.bitmap* nonnull %55, i64 %83) #6
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

; <label>:86                                      ; preds = %.lr.ph22
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9.63, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 212, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

; <label>:87                                      ; preds = %.lr.ph22
  %88 = call i64 @vector_pushBack(%struct.vector* nonnull %47, i8* %82) #6
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

; <label>:90                                      ; preds = %87
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9.63, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 214, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

; <label>:91                                      ; preds = %87
  %92 = call %struct.list* @net_getParentIdListPtr(%struct.net* nonnull %8, i64 %83) #6
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %92) #6
  br label %93

; <label>:93                                      ; preds = %96, %91
  %94 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %92) #19
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %.loopexit, label %96

; <label>:96                                      ; preds = %93
  %97 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %92) #6
  %98 = call i64 @queue_push(%struct.queue* nonnull %43, i8* %97) #6
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %93

; <label>:100                                     ; preds = %96
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9.63, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 221, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

._crit_edge23.loopexit:                           ; preds = %.loopexit
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit, %.preheader2
  %101 = call i64 @vector_getSize(%struct.vector* nonnull %47) #6
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %.lr.ph27.preheader, label %.outer.backedge

.lr.ph27.preheader:                               ; preds = %._crit_edge23
  %.lcssa100 = phi i64 [ %101, %._crit_edge23 ]
  %.lcssa98 = phi i64 [ %66, %._crit_edge23 ]
  br label %.lr.ph27

.lr.ph27:                                         ; preds = %111, %.lr.ph27.preheader
  %numOrder.125 = phi i64 [ %numOrder.2, %111 ], [ %numOrder.0.ph.ph77, %.lr.ph27.preheader ]
  %i.024 = phi i64 [ %112, %111 ], [ 0, %.lr.ph27.preheader ]
  %103 = call i8* @vector_popBack(%struct.vector* nonnull %47) #6
  %104 = ptrtoint i8* %103 to i64
  %105 = call i64 @bitmap_isSet(%struct.bitmap* nonnull %51, i64 %104) #6
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

; <label>:107                                     ; preds = %.lr.ph27
  %108 = call i64 @bitmap_set(%struct.bitmap* nonnull %51, i64 %104) #6
  %109 = add nsw i64 %numOrder.125, 1
  %110 = getelementptr inbounds i64, i64* %39, i64 %numOrder.125
  store i64 %104, i64* %110, align 8
  br label %111

; <label>:111                                     ; preds = %107, %.lr.ph27
  %numOrder.2 = phi i64 [ %numOrder.125, %.lr.ph27 ], [ %109, %107 ]
  %112 = add nuw nsw i64 %i.024, 1
  %113 = icmp slt i64 %112, %.lcssa100
  br i1 %113, label %.lr.ph27, label %.outer.outer.loopexit

.outer.outer._crit_edge.loopexit:                 ; preds = %.outer.backedge
  %numOrder.0.ph.ph77.lcssa104 = phi i64 [ %numOrder.0.ph.ph77, %.outer.backedge ]
  br label %.outer.outer._crit_edge

.outer.outer._crit_edge.loopexit81:               ; preds = %.outer.outer.loopexit
  %numOrder.2.lcssa.lcssa = phi i64 [ %numOrder.2.lcssa, %.outer.outer.loopexit ]
  br label %.outer.outer._crit_edge

.outer.outer._crit_edge:                          ; preds = %.outer.outer._crit_edge.loopexit81, %.outer.outer._crit_edge.loopexit, %58
  %numOrder.0.ph.ph.lcssa = phi i64 [ 0, %58 ], [ %numOrder.0.ph.ph77.lcssa104, %.outer.outer._crit_edge.loopexit ], [ %numOrder.2.lcssa.lcssa, %.outer.outer._crit_edge.loopexit81 ]
  %114 = icmp eq i64 %numOrder.0.ph.ph.lcssa, %7
  br i1 %114, label %116, label %115

; <label>:115                                     ; preds = %.outer.outer._crit_edge
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10.64, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 241, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

; <label>:116                                     ; preds = %.outer.outer._crit_edge
  %117 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %.preheader.lr.ph, label %._crit_edge21

.preheader.lr.ph:                                 ; preds = %116
  %122 = mul nsw i64 %120, %7
  br i1 %16, label %.lr.ph17.us.preheader, label %.preheader.preheader

.lr.ph17.us.preheader:                            ; preds = %.preheader.lr.ph
  br label %.lr.ph17.us

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %123 = getelementptr inbounds i8, i8* %118, i64 %122
  br label %.preheader

; <label>:124                                     ; preds = %.lr.ph17.us, %._crit_edge15.us
  %o.016.us = phi i64 [ 0, %.lr.ph17.us ], [ %150, %._crit_edge15.us ]
  %125 = getelementptr inbounds i64, i64* %39, i64 %o.016.us
  %126 = load i64, i64* %125, align 8
  %127 = call %struct.list* @net_getParentIdListPtr(%struct.net* nonnull %8, i64 %126) #6
  call void @list_iter_reset(%struct.list_node** nonnull %it5, %struct.list* %127) #6
  %128 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it5, %struct.list* %127) #19
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %._crit_edge15.us, label %.lr.ph14.us.preheader

.lr.ph14.us.preheader:                            ; preds = %124
  br label %.lr.ph14.us

.lr.ph14.us:                                      ; preds = %135, %.lr.ph14.us.preheader
  %index.012.us = phi i64 [ %138, %135 ], [ 0, %.lr.ph14.us.preheader ]
  %130 = call i8* @list_iter_next(%struct.list_node** nonnull %it5, %struct.list* %127) #6
  %131 = ptrtoint i8* %130 to i64
  %132 = getelementptr inbounds i8, i8* %record.020.us, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = icmp eq i8 %133, 2
  br i1 %134, label %.us-lcssa35.us, label %135

; <label>:135                                     ; preds = %.lr.ph14.us
  %136 = sext i8 %133 to i64
  %137 = shl i64 %index.012.us, 1
  %138 = add nsw i64 %136, %137
  %139 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it5, %struct.list* %127) #19
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %._crit_edge15.us.loopexit, label %.lr.ph14.us

._crit_edge15.us.loopexit:                        ; preds = %135
  %.lcssa = phi i64 [ %138, %135 ]
  br label %._crit_edge15.us

._crit_edge15.us:                                 ; preds = %._crit_edge15.us.loopexit, %124
  %index.0.lcssa.us = phi i64 [ 0, %124 ], [ %.lcssa, %._crit_edge15.us.loopexit ]
  %141 = call i64 @random_generate(%struct.random* %2) #6
  %142 = urem i64 %141, 100
  %143 = getelementptr inbounds i64*, i64** %14, i64 %126
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 %index.0.lcssa.us
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %142, %146
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds i8, i8* %record.020.us, i64 %126
  store i8 %148, i8* %149, align 1
  %150 = add nuw nsw i64 %o.016.us, 1
  %151 = icmp slt i64 %150, %7
  br i1 %151, label %124, label %._crit_edge18.us

; <label>:152                                     ; preds = %._crit_edge18.us
  %153 = icmp slt i64 %158, %120
  br i1 %153, label %.lr.ph17.us, label %._crit_edge21.loopexit

.lr.ph17.us:                                      ; preds = %152, %.lr.ph17.us.preheader
  %record.020.us = phi i8* [ %154, %152 ], [ %118, %.lr.ph17.us.preheader ]
  %r.019.us = phi i64 [ %158, %152 ], [ 0, %.lr.ph17.us.preheader ]
  br label %124

._crit_edge18.us:                                 ; preds = %._crit_edge15.us
  %154 = getelementptr inbounds i8, i8* %record.020.us, i64 %7
  %155 = load i8*, i8** %117, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 %122
  %157 = icmp ugt i8* %154, %156
  %158 = add nuw nsw i64 %r.019.us, 1
  br i1 %157, label %.us-lcssa.us.loopexit, label %152

; <label>:159                                     ; preds = %.preheader
  %160 = icmp slt i64 %163, %120
  br i1 %160, label %.preheader, label %._crit_edge21.loopexit80

.us-lcssa35.us:                                   ; preds = %.lr.ph14.us
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11.65, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 261, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

.preheader:                                       ; preds = %159, %.preheader.preheader
  %record.020 = phi i8* [ %161, %159 ], [ %118, %.preheader.preheader ]
  %r.019 = phi i64 [ %163, %159 ], [ 0, %.preheader.preheader ]
  %161 = getelementptr inbounds i8, i8* %record.020, i64 %7
  %162 = icmp ugt i8* %161, %123
  %163 = add nuw nsw i64 %r.019, 1
  br i1 %162, label %.us-lcssa.us.loopexit79, label %159

.us-lcssa.us.loopexit:                            ; preds = %._crit_edge18.us
  br label %.us-lcssa.us

.us-lcssa.us.loopexit79:                          ; preds = %.preheader
  br label %.us-lcssa.us

.us-lcssa.us:                                     ; preds = %.us-lcssa.us.loopexit79, %.us-lcssa.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12.66, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 269, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #17
  unreachable

._crit_edge21.loopexit:                           ; preds = %152
  br label %._crit_edge21

._crit_edge21.loopexit80:                         ; preds = %159
  br label %._crit_edge21

._crit_edge21:                                    ; preds = %._crit_edge21.loopexit80, %._crit_edge21.loopexit, %116
  call void @bitmap_free(%struct.bitmap* nonnull %55) #6
  call void @bitmap_free(%struct.bitmap* nonnull %51) #6
  call void @vector_free(%struct.vector* nonnull %47) #6
  call void @queue_free(%struct.queue* nonnull %43) #6
  call void @free(i8* %38) #6
  br i1 %16, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %._crit_edge21
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %v.211 = phi i64 [ %167, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %164 = getelementptr inbounds i64*, i64** %14, i64 %v.211
  %165 = bitcast i64** %164 to i8**
  %166 = load i8*, i8** %165, align 8
  call void @free(i8* %166) #6
  %167 = add nuw nsw i64 %v.211, 1
  %exitcond = icmp eq i64 %167, %7
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge21
  call void @free(i8* %13) #6
  ret %struct.net* %8
}

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @data_getRecord(%struct.data* nocapture readonly %dataPtr, i64 %index) #9 {
  %1 = icmp slt i64 %index, 0
  br i1 %1, label %13, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = icmp sgt i64 %4, %index
  br i1 %5, label %6, label %13

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = mul nsw i64 %8, %index
  %10 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 %9
  br label %13

; <label>:13                                      ; preds = %6, %2, %0
  %.0 = phi i8* [ %12, %6 ], [ null, %2 ], [ null, %0 ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define i64 @data_copy(%struct.data* nocapture %dstPtr, %struct.data* nocapture readonly %srcPtr) #0 {
  %1 = getelementptr inbounds %struct.data, %struct.data* %dstPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.data, %struct.data* %dstPtr, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, %2
  %6 = getelementptr inbounds %struct.data, %struct.data* %srcPtr, i64 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.data, %struct.data* %srcPtr, i64 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = mul nsw i64 %9, %7
  %11 = icmp eq i64 %5, %10
  %.phi.trans.insert = getelementptr inbounds %struct.data, %struct.data* %dstPtr, i64 0, i32 2
  %.pre2 = load i8*, i8** %.phi.trans.insert, align 8
  br i1 %11, label %._crit_edge1, label %12

; <label>:12                                      ; preds = %0
  tail call void @free(i8* %.pre2) #6
  %13 = tail call noalias i8* @calloc(i64 %10, i64 1) #6
  store i8* %13, i8** %.phi.trans.insert, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %20, label %._crit_edge

._crit_edge:                                      ; preds = %12
  %.pre = load i64, i64* %6, align 8
  br label %._crit_edge1

._crit_edge1:                                     ; preds = %._crit_edge, %0
  %15 = phi i8* [ %13, %._crit_edge ], [ %.pre2, %0 ]
  %16 = phi i64 [ %.pre, %._crit_edge ], [ %7, %0 ]
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %3, align 8
  %18 = getelementptr inbounds %struct.data, %struct.data* %srcPtr, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %19, i64 %10, i32 1, i1 false)
  br label %20

; <label>:20                                      ; preds = %._crit_edge1, %12
  %.0 = phi i64 [ 1, %._crit_edge1 ], [ 0, %12 ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @data_sort(%struct.data* nocapture readonly %dataPtr, i64 %start, i64 %num, i64 %offset) #0 {
  %1 = icmp sgt i64 %start, -1
  br i1 %1, label %2, label %6

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, %start
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %2, %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13.69, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 366, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.data_sort, i64 0, i64 0)) #17
  unreachable

; <label>:7                                       ; preds = %2
  %8 = icmp slt i64 %num, 0
  %9 = icmp slt i64 %4, %num
  %or.cond = or i1 %8, %9
  br i1 %or.cond, label %10, label %11

; <label>:10                                      ; preds = %7
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14.70, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 367, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.data_sort, i64 0, i64 0)) #17
  unreachable

; <label>:11                                      ; preds = %7
  %12 = add nsw i64 %num, %start
  %13 = icmp slt i64 %12, 0
  %14 = icmp sgt i64 %12, %4
  %or.cond1 = or i1 %13, %14
  br i1 %or.cond1, label %15, label %16

; <label>:15                                      ; preds = %11
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15.71, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i32 368, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.data_sort, i64 0, i64 0)) #17
  unreachable

; <label>:16                                      ; preds = %11
  %17 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = mul nsw i64 %18, %start
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = trunc i64 %num to i32
  %24 = trunc i64 %18 to i32
  tail call void @sort(i8* %22, i32 %23, i32 %24, i32 (i8*, i8*, i64, i64)* nonnull @compareRecord, i64 %18, i64 %offset) #6
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal i32 @compareRecord(i8* nocapture readonly %p1, i8* nocapture readonly %p2, i64 %n, i64 %offset) #9 {
  %1 = sub nsw i64 %n, %offset
  %2 = getelementptr inbounds i8, i8* %p1, i64 %offset
  %3 = getelementptr inbounds i8, i8* %p2, i64 %offset
  br label %4

; <label>:4                                       ; preds = %6, %0
  %s1.0 = phi i8* [ %2, %0 ], [ %8, %6 ]
  %s2.0 = phi i8* [ %3, %0 ], [ %10, %6 ]
  %i.0 = phi i64 [ %1, %0 ], [ %7, %6 ]
  %5 = icmp sgt i64 %i.0, 0
  br i1 %5, label %6, label %.loopexit.loopexit

; <label>:6                                       ; preds = %4
  %7 = add nsw i64 %i.0, -1
  %8 = getelementptr inbounds i8, i8* %s1.0, i64 1
  %9 = load i8, i8* %s1.0, align 1
  %10 = getelementptr inbounds i8, i8* %s2.0, i64 1
  %11 = load i8, i8* %s2.0, align 1
  %12 = icmp eq i8 %9, %11
  br i1 %12, label %4, label %13

; <label>:13                                      ; preds = %6
  %.lcssa6 = phi i8 [ %11, %6 ]
  %.lcssa = phi i8 [ %9, %6 ]
  %14 = zext i8 %.lcssa to i32
  %15 = zext i8 %.lcssa6 to i32
  %16 = sub nsw i32 %14, %15
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %13
  %.0 = phi i32 [ %16, %13 ], [ 0, %.loopexit.loopexit ]
  ret i32 %.0
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @data_findSplit(%struct.data* nocapture readonly %dataPtr, i64 %start, i64 %num, i64 %offset) #9 {
  %1 = add i64 %start, -1
  %2 = add i64 %1, %num
  %3 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 2
  %6 = load i8*, i8** %5, align 8
  %7 = icmp slt i64 %2, %start
  br i1 %7, label %.outer._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %.lr.ph.preheader
  %low.0.ph5 = phi i64 [ %low.02.lcssa, %.outer ], [ %start, %.lr.ph.preheader ]
  %high.0.ph4 = phi i64 [ %19, %.outer ], [ %2, %.lr.ph.preheader ]
  br label %8

; <label>:8                                       ; preds = %16, %.lr.ph
  %low.02 = phi i64 [ %low.0.ph5, %.lr.ph ], [ %17, %16 ]
  %9 = add nsw i64 %low.02, %high.0.ph4
  %10 = sdiv i64 %9, 2
  %11 = mul nsw i64 %10, %4
  %12 = add nsw i64 %11, %offset
  %13 = getelementptr inbounds i8, i8* %6, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %.outer

; <label>:16                                      ; preds = %8
  %17 = add nsw i64 %10, 1
  %18 = icmp slt i64 %10, %high.0.ph4
  br i1 %18, label %8, label %.outer._crit_edge.loopexit

.outer:                                           ; preds = %8
  %.lcssa = phi i64 [ %10, %8 ]
  %low.02.lcssa = phi i64 [ %low.02, %8 ]
  %19 = add nsw i64 %.lcssa, -1
  %20 = icmp slt i64 %low.02.lcssa, %.lcssa
  br i1 %20, label %.lr.ph, label %.outer._crit_edge.loopexit19

.outer._crit_edge.loopexit:                       ; preds = %16
  %.lcssa25 = phi i64 [ %17, %16 ]
  br label %.outer._crit_edge

.outer._crit_edge.loopexit19:                     ; preds = %.outer
  %low.02.lcssa.lcssa = phi i64 [ %low.02.lcssa, %.outer ]
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer._crit_edge.loopexit19, %.outer._crit_edge.loopexit, %0
  %low.0.lcssa = phi i64 [ %start, %0 ], [ %.lcssa25, %.outer._crit_edge.loopexit ], [ %low.02.lcssa.lcssa, %.outer._crit_edge.loopexit19 ]
  %21 = sub nsw i64 %low.0.lcssa, %start
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define noalias %struct.net* @net_alloc(i64 %numNode) #0 {
  %1 = tail call noalias i8* @malloc(i64 8) #6
  %2 = bitcast i8* %1 to %struct.net*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %40, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.vector* @vector_alloc(i64 %numNode) #6
  %6 = icmp eq %struct.vector* %5, null
  br i1 %6, label %8, label %.preheader

.preheader:                                       ; preds = %4
  %7 = icmp sgt i64 %numNode, 0
  br i1 %7, label %.lr.ph15.preheader, label %._crit_edge

.lr.ph15.preheader:                               ; preds = %.preheader
  br label %.lr.ph15

; <label>:8                                       ; preds = %4
  tail call void @free(i8* nonnull %1) #6
  br label %40

.lr.ph15:                                         ; preds = %36, %.lr.ph15.preheader
  %i.014 = phi i64 [ %37, %36 ], [ 0, %.lr.ph15.preheader ]
  %9 = tail call noalias i8* @malloc(i64 32) #6
  %10 = icmp eq i8* %9, null
  br i1 %10, label %allocNode.exit.thread.preheader.loopexit, label %12

allocNode.exit.thread.preheader.loopexit:         ; preds = %.lr.ph15
  %i.014.lcssa = phi i64 [ %i.014, %.lr.ph15 ]
  br label %allocNode.exit.thread.preheader

allocNode.exit.thread.preheader:                  ; preds = %23, %17, %allocNode.exit.thread.preheader.loopexit
  %i.01472 = phi i64 [ %i.014.lcssa, %allocNode.exit.thread.preheader.loopexit ], [ %i.014.lcssa68, %17 ], [ %i.014.lcssa69, %23 ]
  %11 = icmp sgt i64 %i.01472, 0
  br i1 %11, label %allocNode.exit.thread.preheader55, label %allocNode.exit.thread._crit_edge

allocNode.exit.thread.preheader55:                ; preds = %allocNode.exit.thread.preheader
  br label %allocNode.exit.thread

; <label>:12                                      ; preds = %.lr.ph15
  %13 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* nonnull @compareId) #6
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to %struct.list**
  store %struct.list* %13, %struct.list** %15, align 8
  %16 = icmp eq %struct.list* %13, null
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %12
  %.lcssa73 = phi i8* [ %9, %12 ]
  %i.014.lcssa68 = phi i64 [ %i.014, %12 ]
  tail call void @free(i8* nonnull %.lcssa73) #6
  br label %allocNode.exit.thread.preheader

; <label>:18                                      ; preds = %12
  %19 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* nonnull @compareId) #6
  %20 = getelementptr inbounds i8, i8* %9, i64 16
  %21 = bitcast i8* %20 to %struct.list**
  store %struct.list* %19, %struct.list** %21, align 8
  %22 = icmp eq %struct.list* %19, null
  br i1 %22, label %23, label %allocNode.exit.thread1

; <label>:23                                      ; preds = %18
  %.lcssa77 = phi %struct.list* [ %13, %18 ]
  %.lcssa74 = phi i8* [ %9, %18 ]
  %i.014.lcssa69 = phi i64 [ %i.014, %18 ]
  tail call void @list_free(%struct.list* nonnull %.lcssa77) #6
  tail call void @free(i8* nonnull %.lcssa74) #6
  br label %allocNode.exit.thread.preheader

allocNode.exit.thread1:                           ; preds = %18
  %24 = bitcast i8* %9 to i64*
  store i64 %i.014, i64* %24, align 8
  %25 = tail call i64 @vector_pushBack(%struct.vector* nonnull %5, i8* nonnull %9) #6
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %35, label %36

allocNode.exit.thread:                            ; preds = %allocNode.exit.thread, %allocNode.exit.thread.preheader55
  %j.013 = phi i64 [ %34, %allocNode.exit.thread ], [ 0, %allocNode.exit.thread.preheader55 ]
  %27 = tail call i8* @vector_at(%struct.vector* nonnull %5, i64 %j.013) #6
  %28 = getelementptr inbounds i8, i8* %27, i64 16
  %29 = bitcast i8* %28 to %struct.list**
  %30 = load %struct.list*, %struct.list** %29, align 8
  tail call void @Plist_free(%struct.list* %30) #6
  %31 = getelementptr inbounds i8, i8* %27, i64 8
  %32 = bitcast i8* %31 to %struct.list**
  %33 = load %struct.list*, %struct.list** %32, align 8
  tail call void @Plist_free(%struct.list* %33) #6
  tail call void @free(i8* %27) #6
  %34 = add nuw nsw i64 %j.013, 1
  %exitcond = icmp eq i64 %34, %i.01472
  br i1 %exitcond, label %allocNode.exit.thread._crit_edge.loopexit, label %allocNode.exit.thread

allocNode.exit.thread._crit_edge.loopexit:        ; preds = %allocNode.exit.thread
  br label %allocNode.exit.thread._crit_edge

allocNode.exit.thread._crit_edge:                 ; preds = %allocNode.exit.thread._crit_edge.loopexit, %allocNode.exit.thread.preheader
  tail call void @vector_free(%struct.vector* nonnull %5) #6
  tail call void @free(i8* %1) #6
  br label %40

; <label>:35                                      ; preds = %allocNode.exit.thread1
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 187, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.net_alloc, i64 0, i64 0)) #17
  unreachable

; <label>:36                                      ; preds = %allocNode.exit.thread1
  %37 = add nuw nsw i64 %i.014, 1
  %38 = icmp slt i64 %37, %numNode
  br i1 %38, label %.lr.ph15, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %36
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %39 = bitcast i8* %1 to %struct.vector**
  store %struct.vector* %5, %struct.vector** %39, align 8
  br label %40

; <label>:40                                      ; preds = %._crit_edge, %allocNode.exit.thread._crit_edge, %8, %0
  %.0 = phi %struct.net* [ null, %8 ], [ null, %allocNode.exit.thread._crit_edge ], [ %2, %0 ], [ %2, %._crit_edge ]
  ret %struct.net* %.0
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal i64 @compareId(i8* %aPtr, i8* %bPtr) #10 {
  %1 = ptrtoint i8* %aPtr to i64
  %2 = ptrtoint i8* %bPtr to i64
  %3 = sub nsw i64 %1, %2
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define void @net_free(%struct.net* nocapture %netPtr) #0 {
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i64 @vector_getSize(%struct.vector* %2) #6
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %i.01 = phi i64 [ %12, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %5 = tail call i8* @vector_at(%struct.vector* %2, i64 %i.01) #6
  %6 = getelementptr inbounds i8, i8* %5, i64 16
  %7 = bitcast i8* %6 to %struct.list**
  %8 = load %struct.list*, %struct.list** %7, align 8
  tail call void @Plist_free(%struct.list* %8) #6
  %9 = getelementptr inbounds i8, i8* %5, i64 8
  %10 = bitcast i8* %9 to %struct.list**
  %11 = load %struct.list*, %struct.list** %10, align 8
  tail call void @Plist_free(%struct.list* %11) #6
  tail call void @free(i8* %5) #6
  %12 = add nuw nsw i64 %i.01, 1
  %exitcond = icmp eq i64 %12, %3
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %13 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @vector_free(%struct.vector* %13) #6
  %14 = bitcast %struct.net* %netPtr to i8*
  tail call void @free(i8* %14) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @net_applyOperation(%struct.net* nocapture readonly %netPtr, i32 %op, i64 %fromId, i64 %toId) #0 {
  switch i32 %op, label %70 [
    i32 0, label %1
    i32 1, label %19
    i32 2, label %37
  ]

; <label>:1                                       ; preds = %0
  %netPtr.idx = getelementptr %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %netPtr.idx.val = load %struct.vector*, %struct.vector** %netPtr.idx, align 8
  %2 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val, i64 %toId) #6
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to %struct.list**
  %5 = load %struct.list*, %struct.list** %4, align 8
  %6 = inttoptr i64 %fromId to i8*
  %7 = tail call i64 @list_insert(%struct.list* %5, i8* %6) #6
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 228, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.insertEdge, i64 0, i64 0)) #17
  unreachable

; <label>:10                                      ; preds = %1
  %11 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val, i64 %fromId) #6
  %12 = getelementptr inbounds i8, i8* %11, i64 16
  %13 = bitcast i8* %12 to %struct.list**
  %14 = load %struct.list*, %struct.list** %13, align 8
  %15 = inttoptr i64 %toId to i8*
  %16 = tail call i64 @list_insert(%struct.list* %14, i8* %15) #6
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %insertEdge.exit

; <label>:18                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 233, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.insertEdge, i64 0, i64 0)) #17
  unreachable

; <label>:19                                      ; preds = %0
  %netPtr.idx1 = getelementptr %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %netPtr.idx1.val = load %struct.vector*, %struct.vector** %netPtr.idx1, align 8
  %20 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val, i64 %toId) #6
  %21 = getelementptr inbounds i8, i8* %20, i64 8
  %22 = bitcast i8* %21 to %struct.list**
  %23 = load %struct.list*, %struct.list** %22, align 8
  %24 = inttoptr i64 %fromId to i8*
  %25 = tail call i64 @list_remove(%struct.list* %23, i8* %24) #6
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %19
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 272, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.removeEdge, i64 0, i64 0)) #17
  unreachable

; <label>:28                                      ; preds = %19
  %29 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val, i64 %fromId) #6
  %30 = getelementptr inbounds i8, i8* %29, i64 16
  %31 = bitcast i8* %30 to %struct.list**
  %32 = load %struct.list*, %struct.list** %31, align 8
  %33 = inttoptr i64 %toId to i8*
  %34 = tail call i64 @list_remove(%struct.list* %32, i8* %33) #6
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %insertEdge.exit

; <label>:36                                      ; preds = %28
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 277, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.removeEdge, i64 0, i64 0)) #17
  unreachable

; <label>:37                                      ; preds = %0
  %netPtr.idx1.i = getelementptr %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %netPtr.idx1.val.i = load %struct.vector*, %struct.vector** %netPtr.idx1.i, align 8
  %38 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val.i, i64 %toId) #6
  %39 = getelementptr inbounds i8, i8* %38, i64 8
  %40 = bitcast i8* %39 to %struct.list**
  %41 = load %struct.list*, %struct.list** %40, align 8
  %42 = inttoptr i64 %fromId to i8*
  %43 = tail call i64 @list_remove(%struct.list* %41, i8* %42) #6
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %37
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 272, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.removeEdge, i64 0, i64 0)) #17
  unreachable

; <label>:46                                      ; preds = %37
  %47 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val.i, i64 %fromId) #6
  %48 = getelementptr inbounds i8, i8* %47, i64 16
  %49 = bitcast i8* %48 to %struct.list**
  %50 = load %struct.list*, %struct.list** %49, align 8
  %51 = inttoptr i64 %toId to i8*
  %52 = tail call i64 @list_remove(%struct.list* %50, i8* %51) #6
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %removeEdge.exit.i

; <label>:54                                      ; preds = %46
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 277, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.removeEdge, i64 0, i64 0)) #17
  unreachable

removeEdge.exit.i:                                ; preds = %46
  %netPtr.idx.val.i = load %struct.vector*, %struct.vector** %netPtr.idx1.i, align 8
  %55 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val.i, i64 %fromId) #6
  %56 = getelementptr inbounds i8, i8* %55, i64 8
  %57 = bitcast i8* %56 to %struct.list**
  %58 = load %struct.list*, %struct.list** %57, align 8
  %59 = tail call i64 @list_insert(%struct.list* %58, i8* %51) #6
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %removeEdge.exit.i
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 228, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.insertEdge, i64 0, i64 0)) #17
  unreachable

; <label>:62                                      ; preds = %removeEdge.exit.i
  %63 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val.i, i64 %toId) #6
  %64 = getelementptr inbounds i8, i8* %63, i64 16
  %65 = bitcast i8* %64 to %struct.list**
  %66 = load %struct.list*, %struct.list** %65, align 8
  %67 = tail call i64 @list_insert(%struct.list* %66, i8* %42) #6
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %insertEdge.exit

; <label>:69                                      ; preds = %62
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 233, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.insertEdge, i64 0, i64 0)) #17
  unreachable

; <label>:70                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.80, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 339, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.net_applyOperation, i64 0, i64 0)) #17
  unreachable

insertEdge.exit:                                  ; preds = %62, %28, %10
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMnet_applyOperation(%struct.net* nocapture readonly %netPtr, i32 %op, i64 %fromId, i64 %toId) #0 {
  switch i32 %op, label %70 [
    i32 0, label %1
    i32 1, label %19
    i32 2, label %37
  ]

; <label>:1                                       ; preds = %0
  %netPtr.idx = getelementptr %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %netPtr.idx.val = load %struct.vector*, %struct.vector** %netPtr.idx, align 8
  %2 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val, i64 %toId) #6
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to %struct.list**
  %5 = load %struct.list*, %struct.list** %4, align 8
  %6 = inttoptr i64 %fromId to i8*
  %7 = tail call i64 @TMlist_insert(%struct.list* %5, i8* %6) #6
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 250, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMinsertEdge, i64 0, i64 0)) #17
  unreachable

; <label>:10                                      ; preds = %1
  %11 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val, i64 %fromId) #6
  %12 = getelementptr inbounds i8, i8* %11, i64 16
  %13 = bitcast i8* %12 to %struct.list**
  %14 = load %struct.list*, %struct.list** %13, align 8
  %15 = inttoptr i64 %toId to i8*
  %16 = tail call i64 @TMlist_insert(%struct.list* %14, i8* %15) #6
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %TMinsertEdge.exit

; <label>:18                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 255, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMinsertEdge, i64 0, i64 0)) #17
  unreachable

; <label>:19                                      ; preds = %0
  %netPtr.idx1 = getelementptr %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %netPtr.idx1.val = load %struct.vector*, %struct.vector** %netPtr.idx1, align 8
  %20 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val, i64 %toId) #6
  %21 = getelementptr inbounds i8, i8* %20, i64 8
  %22 = bitcast i8* %21 to %struct.list**
  %23 = load %struct.list*, %struct.list** %22, align 8
  %24 = inttoptr i64 %fromId to i8*
  %25 = tail call i64 @TMlist_remove(%struct.list* %23, i8* %24) #6
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %19
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 294, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMremoveEdge, i64 0, i64 0)) #17
  unreachable

; <label>:28                                      ; preds = %19
  %29 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val, i64 %fromId) #6
  %30 = getelementptr inbounds i8, i8* %29, i64 16
  %31 = bitcast i8* %30 to %struct.list**
  %32 = load %struct.list*, %struct.list** %31, align 8
  %33 = inttoptr i64 %toId to i8*
  %34 = tail call i64 @TMlist_remove(%struct.list* %32, i8* %33) #6
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %TMinsertEdge.exit

; <label>:36                                      ; preds = %28
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 299, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMremoveEdge, i64 0, i64 0)) #17
  unreachable

; <label>:37                                      ; preds = %0
  %netPtr.idx1.i = getelementptr %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %netPtr.idx1.val.i = load %struct.vector*, %struct.vector** %netPtr.idx1.i, align 8
  %38 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val.i, i64 %toId) #6
  %39 = getelementptr inbounds i8, i8* %38, i64 8
  %40 = bitcast i8* %39 to %struct.list**
  %41 = load %struct.list*, %struct.list** %40, align 8
  %42 = inttoptr i64 %fromId to i8*
  %43 = tail call i64 @TMlist_remove(%struct.list* %41, i8* %42) #6
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %37
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 294, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMremoveEdge, i64 0, i64 0)) #17
  unreachable

; <label>:46                                      ; preds = %37
  %47 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val.i, i64 %fromId) #6
  %48 = getelementptr inbounds i8, i8* %47, i64 16
  %49 = bitcast i8* %48 to %struct.list**
  %50 = load %struct.list*, %struct.list** %49, align 8
  %51 = inttoptr i64 %toId to i8*
  %52 = tail call i64 @TMlist_remove(%struct.list* %50, i8* %51) #6
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %TMremoveEdge.exit.i

; <label>:54                                      ; preds = %46
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 299, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMremoveEdge, i64 0, i64 0)) #17
  unreachable

TMremoveEdge.exit.i:                              ; preds = %46
  %netPtr.idx.val.i = load %struct.vector*, %struct.vector** %netPtr.idx1.i, align 8
  %55 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val.i, i64 %fromId) #6
  %56 = getelementptr inbounds i8, i8* %55, i64 8
  %57 = bitcast i8* %56 to %struct.list**
  %58 = load %struct.list*, %struct.list** %57, align 8
  %59 = tail call i64 @TMlist_insert(%struct.list* %58, i8* %51) #6
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %TMremoveEdge.exit.i
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 250, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMinsertEdge, i64 0, i64 0)) #17
  unreachable

; <label>:62                                      ; preds = %TMremoveEdge.exit.i
  %63 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val.i, i64 %toId) #6
  %64 = getelementptr inbounds i8, i8* %63, i64 16
  %65 = bitcast i8* %64 to %struct.list**
  %66 = load %struct.list*, %struct.list** %65, align 8
  %67 = tail call i64 @TMlist_insert(%struct.list* %66, i8* %42) #6
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %TMinsertEdge.exit

; <label>:69                                      ; preds = %62
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 255, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMinsertEdge, i64 0, i64 0)) #17
  unreachable

; <label>:70                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.80, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 357, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.TMnet_applyOperation, i64 0, i64 0)) #17
  unreachable

TMinsertEdge.exit:                                ; preds = %62, %28, %10
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @net_hasEdge(%struct.net* nocapture readonly %netPtr, i64 %fromId, i64 %toId) #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i8* @vector_at(%struct.vector* %2, i64 %toId) #6
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to %struct.list**
  %6 = load %struct.list*, %struct.list** %5, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %6) #6
  br label %7

; <label>:7                                       ; preds = %10, %0
  %8 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %6) #19
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

; <label>:10                                      ; preds = %7
  %11 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %6) #6
  %12 = ptrtoint i8* %11 to i64
  %13 = icmp eq i64 %12, %fromId
  br i1 %13, label %14, label %7

; <label>:14                                      ; preds = %10, %7
  %.0 = phi i64 [ 1, %10 ], [ 0, %7 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @TMnet_hasEdge(%struct.net* nocapture readonly %netPtr, i64 %fromId, i64 %toId) #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i8* @vector_at(%struct.vector* %2, i64 %toId) #6
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to %struct.list**
  %6 = load %struct.list*, %struct.list** %5, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %6) #6
  br label %7

; <label>:7                                       ; preds = %10, %0
  %8 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %6) #19
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

; <label>:10                                      ; preds = %7
  %11 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %6) #6
  %12 = ptrtoint i8* %11 to i64
  %13 = icmp eq i64 %12, %fromId
  br i1 %13, label %14, label %7

; <label>:14                                      ; preds = %10, %7
  %.0 = phi i64 [ 1, %10 ], [ 0, %7 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @net_isPath(%struct.net* nocapture readonly %netPtr, i64 %fromId, i64 %toId, %struct.bitmap* %visitedBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %visitedBitmapPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @vector_getSize(%struct.vector* %2) #6
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3.85, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 424, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_isPath, i64 0, i64 0)) #17
  unreachable

; <label>:8                                       ; preds = %0
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %visitedBitmapPtr) #6
  tail call void @queue_clear(%struct.queue* %workQueuePtr) #6
  %9 = inttoptr i64 %fromId to i8*
  %10 = tail call i64 @queue_push(%struct.queue* %workQueuePtr, i8* %9) #6
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %.preheader

.preheader:                                       ; preds = %8
  %12 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #6
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %.lr.ph2.preheader, label %.loopexit1

.lr.ph2.preheader:                                ; preds = %.preheader
  br label %.lr.ph2

; <label>:14                                      ; preds = %8
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 430, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_isPath, i64 0, i64 0)) #17
  unreachable

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %25, %.loopexit.loopexit
  %15 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #6
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %.lr.ph2, label %.loopexit1.loopexit

.lr.ph2:                                          ; preds = %.loopexit, %.lr.ph2.preheader
  %17 = call i8* @queue_pop(%struct.queue* %workQueuePtr) #6
  %18 = ptrtoint i8* %17 to i64
  %19 = icmp eq i64 %18, %toId
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %.lr.ph2
  call void @queue_clear(%struct.queue* %workQueuePtr) #6
  br label %.loopexit1

; <label>:21                                      ; preds = %.lr.ph2
  %22 = call i64 @bitmap_set(%struct.bitmap* %visitedBitmapPtr, i64 %18) #6
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %21
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 439, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_isPath, i64 0, i64 0)) #17
  unreachable

; <label>:25                                      ; preds = %21
  %26 = call i8* @vector_at(%struct.vector* %2, i64 %18) #6
  %27 = getelementptr inbounds i8, i8* %26, i64 16
  %28 = bitcast i8* %27 to %struct.list**
  %29 = load %struct.list*, %struct.list** %28, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %29) #6
  %30 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %29) #19
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %25
  br label %.lr.ph

.lr.ph:                                           ; preds = %.backedge, %.lr.ph.preheader
  %32 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %29) #6
  %33 = ptrtoint i8* %32 to i64
  %34 = call i64 @bitmap_isSet(%struct.bitmap* %visitedBitmapPtr, i64 %33) #6
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %38, label %.backedge

.backedge:                                        ; preds = %38, %.lr.ph
  %36 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %29) #19
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %.loopexit.loopexit, label %.lr.ph

; <label>:38                                      ; preds = %.lr.ph
  %39 = call i64 @queue_push(%struct.queue* %workQueuePtr, i8* %32) #6
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %.backedge

; <label>:41                                      ; preds = %38
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 448, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_isPath, i64 0, i64 0)) #17
  unreachable

.loopexit1.loopexit:                              ; preds = %.loopexit
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %20, %.preheader
  %.0 = phi i64 [ 1, %20 ], [ 0, %.preheader ], [ 0, %.loopexit1.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @TMnet_isPath(%struct.net* nocapture readonly %netPtr, i64 %fromId, i64 %toId, %struct.bitmap* %visitedBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %visitedBitmapPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @vector_getSize(%struct.vector* %2) #6
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3.85, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 472, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.TMnet_isPath, i64 0, i64 0)) #17
  unreachable

; <label>:8                                       ; preds = %0
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %visitedBitmapPtr) #6
  tail call void @queue_clear(%struct.queue* %workQueuePtr) #6
  %9 = inttoptr i64 %fromId to i8*
  %10 = tail call i64 @Pqueue_push(%struct.queue* %workQueuePtr, i8* %9) #6
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %.preheader

.preheader:                                       ; preds = %8
  %12 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #6
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %.lr.ph2.preheader, label %.loopexit1

.lr.ph2.preheader:                                ; preds = %.preheader
  br label %.lr.ph2

; <label>:14                                      ; preds = %8
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 478, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.TMnet_isPath, i64 0, i64 0)) #17
  unreachable

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %25, %.loopexit.loopexit
  %15 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #6
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %.lr.ph2, label %.loopexit1.loopexit

.lr.ph2:                                          ; preds = %.loopexit, %.lr.ph2.preheader
  %17 = call i8* @queue_pop(%struct.queue* %workQueuePtr) #6
  %18 = ptrtoint i8* %17 to i64
  %19 = icmp eq i64 %18, %toId
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %.lr.ph2
  call void @queue_clear(%struct.queue* %workQueuePtr) #6
  br label %.loopexit1

; <label>:21                                      ; preds = %.lr.ph2
  %22 = call i64 @bitmap_set(%struct.bitmap* %visitedBitmapPtr, i64 %18) #6
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %21
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 487, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.TMnet_isPath, i64 0, i64 0)) #17
  unreachable

; <label>:25                                      ; preds = %21
  %26 = call i8* @vector_at(%struct.vector* %2, i64 %18) #6
  %27 = getelementptr inbounds i8, i8* %26, i64 16
  %28 = bitcast i8* %27 to %struct.list**
  %29 = load %struct.list*, %struct.list** %28, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %29) #6
  %30 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %29) #19
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %25
  br label %.lr.ph

.lr.ph:                                           ; preds = %.backedge, %.lr.ph.preheader
  %32 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %29) #6
  %33 = ptrtoint i8* %32 to i64
  %34 = call i64 @bitmap_isSet(%struct.bitmap* %visitedBitmapPtr, i64 %33) #6
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %38, label %.backedge

.backedge:                                        ; preds = %38, %.lr.ph
  %36 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %29) #19
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %.loopexit.loopexit, label %.lr.ph

; <label>:38                                      ; preds = %.lr.ph
  %39 = call i64 @Pqueue_push(%struct.queue* %workQueuePtr, i8* %32) #6
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %.backedge

; <label>:41                                      ; preds = %38
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 496, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.TMnet_isPath, i64 0, i64 0)) #17
  unreachable

.loopexit1.loopexit:                              ; preds = %.loopexit
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %20, %.preheader
  %.0 = phi i64 [ 1, %20 ], [ 0, %.preheader ], [ 0, %.loopexit1.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @net_isCycle(%struct.net* nocapture readonly %netPtr) #0 {
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i64 @vector_getSize(%struct.vector* %2) #6
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %.lr.ph6.preheader, label %._crit_edge

.lr.ph6.preheader:                                ; preds = %0
  br label %.lr.ph6

.preheader:                                       ; preds = %.lr.ph6
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

.lr.ph6:                                          ; preds = %.lr.ph6, %.lr.ph6.preheader
  %n.04 = phi i64 [ %8, %.lr.ph6 ], [ 0, %.lr.ph6.preheader ]
  %5 = tail call i8* @vector_at(%struct.vector* %2, i64 %n.04) #6
  %6 = getelementptr inbounds i8, i8* %5, i64 24
  %7 = bitcast i8* %6 to i32*
  store i32 0, i32* %7, align 8
  %8 = add nuw nsw i64 %n.04, 1
  %exitcond = icmp eq i64 %8, %3
  br i1 %exitcond, label %.preheader, label %.lr.ph6

.lr.ph:                                           ; preds = %19, %.lr.ph.preheader
  %n.11 = phi i64 [ %20, %19 ], [ 0, %.lr.ph.preheader ]
  %9 = tail call i8* @vector_at(%struct.vector* %2, i64 %n.11) #6
  %10 = getelementptr inbounds i8, i8* %9, i64 24
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %18 [
    i32 0, label %13
    i32 1, label %19
    i32 2, label %17
  ]

; <label>:13                                      ; preds = %.lr.ph
  %14 = bitcast i8* %9 to %struct.net_node*
  %15 = tail call fastcc i64 @isCycle(%struct.vector* %2, %struct.net_node* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %19, label %._crit_edge.loopexit

; <label>:17                                      ; preds = %.lr.ph
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.80, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 569, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.net_isCycle, i64 0, i64 0)) #17
  unreachable

; <label>:18                                      ; preds = %.lr.ph
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.80, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 572, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.net_isCycle, i64 0, i64 0)) #17
  unreachable

; <label>:19                                      ; preds = %13, %.lr.ph
  %20 = add nuw nsw i64 %n.11, 1
  %21 = icmp slt i64 %20, %3
  br i1 %21, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %19, %13
  %.0.ph = phi i64 [ 0, %19 ], [ 1, %13 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader, %0
  %.0 = phi i64 [ 0, %.preheader ], [ 0, %0 ], [ %.0.ph, %._crit_edge.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @isCycle(%struct.vector* %nodeVectorPtr, %struct.net_node* nocapture %nodePtr) unnamed_addr #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net_node, %struct.net_node* %nodePtr, i64 0, i32 3
  %2 = load i32, i32* %1, align 8
  switch i32 %2, label %17 [
    i32 0, label %3
    i32 2, label %.loopexit
    i32 1, label %16
  ]

; <label>:3                                       ; preds = %0
  store i32 2, i32* %1, align 8
  %4 = getelementptr inbounds %struct.net_node, %struct.net_node* %nodePtr, i64 0, i32 2
  %5 = load %struct.list*, %struct.list** %4, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %5) #6
  br label %6

; <label>:6                                       ; preds = %9, %3
  %7 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %5) #19
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %18, label %9

; <label>:9                                       ; preds = %6
  %10 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %5) #6
  %11 = ptrtoint i8* %10 to i64
  %12 = call i8* @vector_at(%struct.vector* %nodeVectorPtr, i64 %11) #6
  %13 = bitcast i8* %12 to %struct.net_node*
  %14 = call fastcc i64 @isCycle(%struct.vector* %nodeVectorPtr, %struct.net_node* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %6, label %.loopexit.loopexit

; <label>:16                                      ; preds = %0
  br label %.loopexit

; <label>:17                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.80, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 534, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.isCycle, i64 0, i64 0)) #17
  unreachable

; <label>:18                                      ; preds = %6
  store i32 1, i32* %1, align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %9
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %18, %16, %0
  %.0 = phi i64 [ 0, %16 ], [ 0, %18 ], [ 1, %0 ], [ 1, %.loopexit.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define %struct.list* @net_getParentIdListPtr(%struct.net* nocapture readonly %netPtr, i64 %id) #0 {
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i8* @vector_at(%struct.vector* %2, i64 %id) #6
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.92, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 589, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.net_getParentIdListPtr, i64 0, i64 0)) #17
  unreachable

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %3, i64 8
  %8 = bitcast i8* %7 to %struct.list**
  %9 = load %struct.list*, %struct.list** %8, align 8
  ret %struct.list* %9
}

; Function Attrs: nounwind uwtable
define %struct.list* @net_getChildIdListPtr(%struct.net* nocapture readonly %netPtr, i64 %id) #0 {
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i8* @vector_at(%struct.vector* %2, i64 %id) #6
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.92, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 603, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.net_getChildIdListPtr, i64 0, i64 0)) #17
  unreachable

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %3, i64 16
  %8 = bitcast i8* %7 to %struct.list**
  %9 = load %struct.list*, %struct.list** %8, align 8
  ret %struct.list* %9
}

; Function Attrs: nounwind uwtable
define i64 @net_findAncestors(%struct.net* nocapture readonly %netPtr, i64 %id, %struct.bitmap* %ancestorBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %it3 = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %ancestorBitmapPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @vector_getSize(%struct.vector* %2) #6
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5.95, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 624, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i64 0, i64 0)) #17
  unreachable

; <label>:8                                       ; preds = %0
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %ancestorBitmapPtr) #6
  tail call void @queue_clear(%struct.queue* %workQueuePtr) #6
  %9 = tail call i8* @vector_at(%struct.vector* %2, i64 %id) #6
  %10 = getelementptr inbounds i8, i8* %9, i64 8
  %11 = bitcast i8* %10 to %struct.list**
  %12 = load %struct.list*, %struct.list** %11, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %12) #6
  br label %13

; <label>:13                                      ; preds = %24, %8
  %14 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %12) #19
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %.preheader, label %18

.preheader:                                       ; preds = %13
  %16 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #6
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %.lr.ph2.preheader, label %.loopexit1

.lr.ph2.preheader:                                ; preds = %.preheader
  br label %.lr.ph2

; <label>:18                                      ; preds = %13
  %19 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %12) #6
  %20 = ptrtoint i8* %19 to i64
  %21 = call i64 @bitmap_set(%struct.bitmap* %ancestorBitmapPtr, i64 %20) #6
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %18
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 637, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i64 0, i64 0)) #17
  unreachable

; <label>:24                                      ; preds = %18
  %25 = call i64 @queue_push(%struct.queue* %workQueuePtr, i8* %19) #6
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %13

; <label>:27                                      ; preds = %24
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 639, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i64 0, i64 0)) #17
  unreachable

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %34, %.loopexit.loopexit
  %28 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #6
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %.lr.ph2, label %.loopexit1.loopexit

.lr.ph2:                                          ; preds = %.loopexit, %.lr.ph2.preheader
  %30 = call i8* @queue_pop(%struct.queue* %workQueuePtr) #6
  %31 = ptrtoint i8* %30 to i64
  %32 = icmp eq i64 %31, %id
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %.lr.ph2
  call void @queue_clear(%struct.queue* %workQueuePtr) #6
  br label %.loopexit1

; <label>:34                                      ; preds = %.lr.ph2
  %35 = call i8* @vector_at(%struct.vector* %2, i64 %31) #6
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  %37 = bitcast i8* %36 to %struct.list**
  %38 = load %struct.list*, %struct.list** %37, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it3, %struct.list* %38) #6
  %39 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #19
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %34
  br label %.lr.ph

.lr.ph:                                           ; preds = %.backedge, %.lr.ph.preheader
  %41 = call i8* @list_iter_next(%struct.list_node** nonnull %it3, %struct.list* %38) #6
  %42 = ptrtoint i8* %41 to i64
  %43 = call i64 @bitmap_isSet(%struct.bitmap* %ancestorBitmapPtr, i64 %42) #6
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %47, label %.backedge

.backedge:                                        ; preds = %51, %.lr.ph
  %45 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #19
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %.loopexit.loopexit, label %.lr.ph

; <label>:47                                      ; preds = %.lr.ph
  %48 = call i64 @bitmap_set(%struct.bitmap* %ancestorBitmapPtr, i64 %42) #6
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %47
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 657, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i64 0, i64 0)) #17
  unreachable

; <label>:51                                      ; preds = %47
  %52 = call i64 @queue_push(%struct.queue* %workQueuePtr, i8* %41) #6
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %.backedge

; <label>:54                                      ; preds = %51
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 659, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i64 0, i64 0)) #17
  unreachable

.loopexit1.loopexit:                              ; preds = %.loopexit
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %33, %.preheader
  %.0 = phi i64 [ 0, %33 ], [ 1, %.preheader ], [ 1, %.loopexit1.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @TMnet_findAncestors(%struct.net* nocapture readonly %netPtr, i64 %id, %struct.bitmap* %ancestorBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %it3 = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %ancestorBitmapPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @vector_getSize(%struct.vector* %2) #6
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5.95, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 684, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i64 0, i64 0)) #17
  unreachable

; <label>:8                                       ; preds = %0
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %ancestorBitmapPtr) #6
  tail call void @queue_clear(%struct.queue* %workQueuePtr) #6
  %9 = tail call i8* @vector_at(%struct.vector* %2, i64 %id) #6
  %10 = getelementptr inbounds i8, i8* %9, i64 8
  %11 = bitcast i8* %10 to %struct.list**
  %12 = load %struct.list*, %struct.list** %11, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %12) #6
  br label %13

; <label>:13                                      ; preds = %24, %8
  %14 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %12) #19
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %.preheader, label %18

.preheader:                                       ; preds = %13
  %16 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #6
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %.lr.ph2.preheader, label %.loopexit1

.lr.ph2.preheader:                                ; preds = %.preheader
  br label %.lr.ph2

; <label>:18                                      ; preds = %13
  %19 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %12) #6
  %20 = ptrtoint i8* %19 to i64
  %21 = call i64 @bitmap_set(%struct.bitmap* %ancestorBitmapPtr, i64 %20) #6
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %18
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 697, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i64 0, i64 0)) #17
  unreachable

; <label>:24                                      ; preds = %18
  %25 = call i64 @Pqueue_push(%struct.queue* %workQueuePtr, i8* %19) #6
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %13

; <label>:27                                      ; preds = %24
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 699, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i64 0, i64 0)) #17
  unreachable

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %34, %.loopexit.loopexit
  %28 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #6
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %.lr.ph2, label %.loopexit1.loopexit

.lr.ph2:                                          ; preds = %.loopexit, %.lr.ph2.preheader
  %30 = call i8* @queue_pop(%struct.queue* %workQueuePtr) #6
  %31 = ptrtoint i8* %30 to i64
  %32 = icmp eq i64 %31, %id
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %.lr.ph2
  call void @queue_clear(%struct.queue* %workQueuePtr) #6
  br label %.loopexit1

; <label>:34                                      ; preds = %.lr.ph2
  %35 = call i8* @vector_at(%struct.vector* %2, i64 %31) #6
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  %37 = bitcast i8* %36 to %struct.list**
  %38 = load %struct.list*, %struct.list** %37, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it3, %struct.list* %38) #6
  %39 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #19
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %34
  br label %.lr.ph

.lr.ph:                                           ; preds = %.backedge, %.lr.ph.preheader
  %41 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it3, %struct.list* %38) #6
  %42 = ptrtoint i8* %41 to i64
  %43 = call i64 @bitmap_isSet(%struct.bitmap* %ancestorBitmapPtr, i64 %42) #6
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %47, label %.backedge

.backedge:                                        ; preds = %51, %.lr.ph
  %45 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #19
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %.loopexit.loopexit, label %.lr.ph

; <label>:47                                      ; preds = %.lr.ph
  %48 = call i64 @bitmap_set(%struct.bitmap* %ancestorBitmapPtr, i64 %42) #6
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %47
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 717, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i64 0, i64 0)) #17
  unreachable

; <label>:51                                      ; preds = %47
  %52 = call i64 @Pqueue_push(%struct.queue* %workQueuePtr, i8* %41) #6
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %.backedge

; <label>:54                                      ; preds = %51
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 719, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i64 0, i64 0)) #17
  unreachable

.loopexit1.loopexit:                              ; preds = %.loopexit
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %33, %.preheader
  %.0 = phi i64 [ 0, %33 ], [ 1, %.preheader ], [ 1, %.loopexit1.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @net_findDescendants(%struct.net* nocapture readonly %netPtr, i64 %id, %struct.bitmap* %descendantBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %it3 = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %descendantBitmapPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @vector_getSize(%struct.vector* %2) #6
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6.96, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 743, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i64 0, i64 0)) #17
  unreachable

; <label>:8                                       ; preds = %0
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %descendantBitmapPtr) #6
  tail call void @queue_clear(%struct.queue* %workQueuePtr) #6
  %9 = tail call i8* @vector_at(%struct.vector* %2, i64 %id) #6
  %10 = getelementptr inbounds i8, i8* %9, i64 16
  %11 = bitcast i8* %10 to %struct.list**
  %12 = load %struct.list*, %struct.list** %11, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %12) #6
  br label %13

; <label>:13                                      ; preds = %24, %8
  %14 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %12) #19
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %.preheader, label %18

.preheader:                                       ; preds = %13
  %16 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #6
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %.lr.ph2.preheader, label %.loopexit1

.lr.ph2.preheader:                                ; preds = %.preheader
  br label %.lr.ph2

; <label>:18                                      ; preds = %13
  %19 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %12) #6
  %20 = ptrtoint i8* %19 to i64
  %21 = call i64 @bitmap_set(%struct.bitmap* %descendantBitmapPtr, i64 %20) #6
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %18
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 756, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i64 0, i64 0)) #17
  unreachable

; <label>:24                                      ; preds = %18
  %25 = call i64 @queue_push(%struct.queue* %workQueuePtr, i8* %19) #6
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %13

; <label>:27                                      ; preds = %24
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 758, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i64 0, i64 0)) #17
  unreachable

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %34, %.loopexit.loopexit
  %28 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #6
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %.lr.ph2, label %.loopexit1.loopexit

.lr.ph2:                                          ; preds = %.loopexit, %.lr.ph2.preheader
  %30 = call i8* @queue_pop(%struct.queue* %workQueuePtr) #6
  %31 = ptrtoint i8* %30 to i64
  %32 = icmp eq i64 %31, %id
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %.lr.ph2
  call void @queue_clear(%struct.queue* %workQueuePtr) #6
  br label %.loopexit1

; <label>:34                                      ; preds = %.lr.ph2
  %35 = call i8* @vector_at(%struct.vector* %2, i64 %31) #6
  %36 = getelementptr inbounds i8, i8* %35, i64 16
  %37 = bitcast i8* %36 to %struct.list**
  %38 = load %struct.list*, %struct.list** %37, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it3, %struct.list* %38) #6
  %39 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #19
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %34
  br label %.lr.ph

.lr.ph:                                           ; preds = %.backedge, %.lr.ph.preheader
  %41 = call i8* @list_iter_next(%struct.list_node** nonnull %it3, %struct.list* %38) #6
  %42 = ptrtoint i8* %41 to i64
  %43 = call i64 @bitmap_isSet(%struct.bitmap* %descendantBitmapPtr, i64 %42) #6
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %47, label %.backedge

.backedge:                                        ; preds = %51, %.lr.ph
  %45 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #19
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %.loopexit.loopexit, label %.lr.ph

; <label>:47                                      ; preds = %.lr.ph
  %48 = call i64 @bitmap_set(%struct.bitmap* %descendantBitmapPtr, i64 %42) #6
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %47
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 776, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i64 0, i64 0)) #17
  unreachable

; <label>:51                                      ; preds = %47
  %52 = call i64 @queue_push(%struct.queue* %workQueuePtr, i8* %41) #6
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %.backedge

; <label>:54                                      ; preds = %51
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 778, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i64 0, i64 0)) #17
  unreachable

.loopexit1.loopexit:                              ; preds = %.loopexit
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %33, %.preheader
  %.0 = phi i64 [ 0, %33 ], [ 1, %.preheader ], [ 1, %.loopexit1.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @TMnet_findDescendants(%struct.net* nocapture readonly %netPtr, i64 %id, %struct.bitmap* %descendantBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %it3 = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %descendantBitmapPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @vector_getSize(%struct.vector* %2) #6
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6.96, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 803, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i64 0, i64 0)) #17
  unreachable

; <label>:8                                       ; preds = %0
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %descendantBitmapPtr) #6
  tail call void @queue_clear(%struct.queue* %workQueuePtr) #6
  %9 = tail call i8* @vector_at(%struct.vector* %2, i64 %id) #6
  %10 = getelementptr inbounds i8, i8* %9, i64 16
  %11 = bitcast i8* %10 to %struct.list**
  %12 = load %struct.list*, %struct.list** %11, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %12) #6
  br label %13

; <label>:13                                      ; preds = %24, %8
  %14 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %12) #19
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %.preheader, label %18

.preheader:                                       ; preds = %13
  %16 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #6
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %.lr.ph2.preheader, label %.loopexit1

.lr.ph2.preheader:                                ; preds = %.preheader
  br label %.lr.ph2

; <label>:18                                      ; preds = %13
  %19 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %12) #6
  %20 = ptrtoint i8* %19 to i64
  %21 = call i64 @bitmap_set(%struct.bitmap* %descendantBitmapPtr, i64 %20) #6
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %18
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 816, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i64 0, i64 0)) #17
  unreachable

; <label>:24                                      ; preds = %18
  %25 = call i64 @Pqueue_push(%struct.queue* %workQueuePtr, i8* %19) #6
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %13

; <label>:27                                      ; preds = %24
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 818, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i64 0, i64 0)) #17
  unreachable

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %34, %.loopexit.loopexit
  %28 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #6
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %.lr.ph2, label %.loopexit1.loopexit

.lr.ph2:                                          ; preds = %.loopexit, %.lr.ph2.preheader
  %30 = call i8* @queue_pop(%struct.queue* %workQueuePtr) #6
  %31 = ptrtoint i8* %30 to i64
  %32 = icmp eq i64 %31, %id
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %.lr.ph2
  call void @queue_clear(%struct.queue* %workQueuePtr) #6
  br label %.loopexit1

; <label>:34                                      ; preds = %.lr.ph2
  %35 = call i8* @vector_at(%struct.vector* %2, i64 %31) #6
  %36 = getelementptr inbounds i8, i8* %35, i64 16
  %37 = bitcast i8* %36 to %struct.list**
  %38 = load %struct.list*, %struct.list** %37, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it3, %struct.list* %38) #6
  %39 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #19
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %34
  br label %.lr.ph

.lr.ph:                                           ; preds = %.backedge, %.lr.ph.preheader
  %41 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it3, %struct.list* %38) #6
  %42 = ptrtoint i8* %41 to i64
  %43 = call i64 @bitmap_isSet(%struct.bitmap* %descendantBitmapPtr, i64 %42) #6
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %47, label %.backedge

.backedge:                                        ; preds = %51, %.lr.ph
  %45 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #19
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %.loopexit.loopexit, label %.lr.ph

; <label>:47                                      ; preds = %.lr.ph
  %48 = call i64 @bitmap_set(%struct.bitmap* %descendantBitmapPtr, i64 %42) #6
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %47
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 836, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i64 0, i64 0)) #17
  unreachable

; <label>:51                                      ; preds = %47
  %52 = call i64 @Pqueue_push(%struct.queue* %workQueuePtr, i8* %41) #6
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %.backedge

; <label>:54                                      ; preds = %51
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 838, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i64 0, i64 0)) #17
  unreachable

.loopexit1.loopexit:                              ; preds = %.loopexit
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %33, %.preheader
  %.0 = phi i64 [ 0, %33 ], [ 1, %.preheader ], [ 1, %.loopexit1.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define void @net_generateRandomEdges(%struct.net* nocapture readonly %netPtr, i64 %maxNumParent, i64 %percentParent, %struct.random* %randomPtr) #0 {
  %it.i = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i64 @vector_getSize(%struct.vector* %2) #6
  %4 = tail call %struct.bitmap* @bitmap_alloc(i64 %3) #6
  %5 = icmp eq %struct.bitmap* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7.101, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 861, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_generateRandomEdges, i64 0, i64 0)) #17
  unreachable

; <label>:7                                       ; preds = %0
  %8 = tail call %struct.queue* @queue_alloc(i64 -1) #6
  %9 = icmp sgt i64 %3, 0
  br i1 %9, label %.preheader.lr.ph, label %._crit_edge4

.preheader.lr.ph:                                 ; preds = %7
  %10 = icmp sgt i64 %maxNumParent, 0
  %11 = bitcast %struct.list_node** %it.i to i8*
  br i1 %10, label %.lr.ph.us.preheader, label %._crit_edge4

.lr.ph.us.preheader:                              ; preds = %.preheader.lr.ph
  br label %.lr.ph.us

; <label>:12                                      ; preds = %.lr.ph.us, %insertEdge.exit.us
  %p.01.us = phi i64 [ 0, %.lr.ph.us ], [ %51, %insertEdge.exit.us ]
  %13 = call i64 @random_generate(%struct.random* %randomPtr) #6
  %14 = urem i64 %13, 100
  %15 = icmp slt i64 %14, %percentParent
  br i1 %15, label %16, label %insertEdge.exit.us

; <label>:16                                      ; preds = %12
  %17 = call i64 @random_generate(%struct.random* %randomPtr) #6
  %18 = urem i64 %17, %3
  %19 = icmp eq i64 %18, %n.02.us
  br i1 %19, label %insertEdge.exit.us, label %20

; <label>:20                                      ; preds = %16
  call void @llvm.lifetime.start(i64 8, i8* %11)
  %21 = load %struct.vector*, %struct.vector** %1, align 8
  %22 = call i8* @vector_at(%struct.vector* %21, i64 %n.02.us) #6
  %23 = getelementptr inbounds i8, i8* %22, i64 8
  %24 = bitcast i8* %23 to %struct.list**
  %25 = load %struct.list*, %struct.list** %24, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it.i, %struct.list* %25) #6
  br label %26

; <label>:26                                      ; preds = %29, %20
  %27 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it.i, %struct.list* %25) #19
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

; <label>:29                                      ; preds = %26
  %30 = call i8* @list_iter_next(%struct.list_node** nonnull %it.i, %struct.list* %25) #6
  %31 = ptrtoint i8* %30 to i64
  %32 = icmp eq i64 %31, %18
  br i1 %32, label %net_hasEdge.exit.us, label %26

net_hasEdge.exit.us:                              ; preds = %29
  call void @llvm.lifetime.end(i64 8, i8* %11)
  br label %insertEdge.exit.us

; <label>:33                                      ; preds = %26
  call void @llvm.lifetime.end(i64 8, i8* %11)
  %34 = call i64 @net_isPath(%struct.net* %netPtr, i64 %n.02.us, i64 %18, %struct.bitmap* nonnull %4, %struct.queue* %8)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %insertEdge.exit.us

; <label>:36                                      ; preds = %33
  %netPtr.idx.val.us = load %struct.vector*, %struct.vector** %1, align 8
  %37 = call i8* @vector_at(%struct.vector* %netPtr.idx.val.us, i64 %n.02.us) #6
  %38 = getelementptr inbounds i8, i8* %37, i64 8
  %39 = bitcast i8* %38 to %struct.list**
  %40 = load %struct.list*, %struct.list** %39, align 8
  %41 = inttoptr i64 %18 to i8*
  %42 = call i64 @list_insert(%struct.list* %40, i8* %41) #6
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %.us-lcssa.us, label %44

; <label>:44                                      ; preds = %36
  %45 = call i8* @vector_at(%struct.vector* %netPtr.idx.val.us, i64 %18) #6
  %46 = getelementptr inbounds i8, i8* %45, i64 16
  %47 = bitcast i8* %46 to %struct.list**
  %48 = load %struct.list*, %struct.list** %47, align 8
  %49 = call i64 @list_insert(%struct.list* %48, i8* %53) #6
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %.us-lcssa5.us, label %insertEdge.exit.us

insertEdge.exit.us:                               ; preds = %44, %33, %net_hasEdge.exit.us, %16, %12
  %51 = add nuw nsw i64 %p.01.us, 1
  %52 = icmp slt i64 %51, %maxNumParent
  br i1 %52, label %12, label %._crit_edge.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph.us.preheader
  %n.02.us = phi i64 [ %54, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %53 = inttoptr i64 %n.02.us to i8*
  br label %12

._crit_edge.us:                                   ; preds = %insertEdge.exit.us
  %54 = add nuw nsw i64 %n.02.us, 1
  %55 = icmp slt i64 %54, %3
  br i1 %55, label %.lr.ph.us, label %._crit_edge4.loopexit

.us-lcssa.us:                                     ; preds = %36
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 228, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.insertEdge, i64 0, i64 0)) #17
  unreachable

.us-lcssa5.us:                                    ; preds = %44
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 233, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.insertEdge, i64 0, i64 0)) #17
  unreachable

._crit_edge4.loopexit:                            ; preds = %._crit_edge.us
  br label %._crit_edge4

._crit_edge4:                                     ; preds = %._crit_edge4.loopexit, %.preheader.lr.ph, %7
  %56 = call i64 @net_isCycle(%struct.net* %netPtr)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %59, label %58

; <label>:58                                      ; preds = %._crit_edge4
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8.102, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0), i32 885, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_generateRandomEdges, i64 0, i64 0)) #17
  unreachable

; <label>:59                                      ; preds = %._crit_edge4
  call void @bitmap_free(%struct.bitmap* nonnull %4) #6
  call void @queue_free(%struct.queue* %8) #6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind uwtable
define void @sort(i8* %base, i32 %num, i32 %width, i32 (i8*, i8*, i64, i64)* nocapture %cmp, i64 %n, i64 %offset) #0 {
  %lostk = alloca [30 x i8*], align 16
  %histk = alloca [30 x i8*], align 16
  %1 = icmp ult i32 %num, 2
  %2 = icmp eq i32 %width, 0
  %or.cond = or i1 %1, %2
  br i1 %or.cond, label %.loopexit, label %3

; <label>:3                                       ; preds = %0
  %4 = add i32 %num, -1
  %5 = mul i32 %4, %width
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i8, i8* %base, i64 %6
  %8 = zext i32 %width to i64
  %9 = sub nsw i64 0, %8
  %10 = add i32 %width, -1
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %11, 1
  %13 = zext i32 %10 to i64
  %14 = zext i32 %width to i64
  %15 = sub nsw i64 0, %14
  %16 = zext i32 %10 to i64
  %17 = add nuw nsw i64 %16, 1
  %18 = add i32 %width, -1
  %19 = zext i32 %18 to i64
  %20 = zext i32 %18 to i64
  %21 = add nuw nsw i64 %20, 1
  %22 = zext i32 %18 to i64
  %23 = zext i32 %18 to i64
  %24 = add nuw nsw i64 %23, 1
  %25 = add i32 %width, -1
  %26 = zext i32 %25 to i64
  %27 = zext i32 %25 to i64
  %28 = add nuw nsw i64 %27, 1
  %29 = and i64 %28, 8589934560
  %30 = add nsw i64 %29, -32
  %31 = lshr exact i64 %30, 5
  %32 = add i32 %width, -1
  %33 = zext i32 %32 to i64
  %34 = add nuw nsw i64 %33, 1
  %35 = and i64 %34, 8589934560
  %36 = add nsw i64 %35, -32
  %37 = lshr exact i64 %36, 5
  %38 = add i32 %width, -1
  %39 = zext i32 %38 to i64
  %40 = add nuw nsw i64 %39, 1
  %41 = and i64 %40, 8589934560
  %42 = add nsw i64 %41, -32
  %43 = lshr exact i64 %42, 5
  %44 = add i32 %width, -1
  %45 = zext i32 %44 to i64
  %46 = add nuw nsw i64 %45, 1
  %47 = and i64 %46, 8589934560
  %48 = add nsw i64 %47, -32
  %49 = lshr exact i64 %48, 5
  %min.iters.check362 = icmp ult i64 %21, 32
  %n.vec365 = and i64 %21, 8589934560
  %cmp.zero366 = icmp eq i64 %n.vec365, 0
  %cast.crd381 = trunc i64 %n.vec365 to i32
  %ind.end382 = sub i32 %width, %cast.crd381
  %50 = and i64 %37, 1
  %lcmp.mod706 = icmp eq i64 %50, 0
  %51 = icmp eq i64 %37, 0
  %cmp.n385 = icmp eq i64 %21, %n.vec365
  %min.iters.check198 = icmp ult i64 %17, 32
  %n.vec201 = and i64 %17, 8589934560
  %cmp.zero202 = icmp eq i64 %n.vec201, 0
  %cast.crd217 = trunc i64 %n.vec201 to i32
  %ind.end218 = sub i32 %width, %cast.crd217
  %52 = and i64 %43, 1
  %lcmp.mod711 = icmp eq i64 %52, 0
  %53 = icmp eq i64 %43, 0
  %cmp.n221 = icmp eq i64 %17, %n.vec201
  %min.iters.check526 = icmp ult i64 %24, 32
  %n.vec529 = and i64 %24, 8589934560
  %cmp.zero530 = icmp eq i64 %n.vec529, 0
  %cast.crd547 = trunc i64 %n.vec529 to i32
  %ind.end548 = sub i32 %width, %cast.crd547
  %54 = and i64 %31, 1
  %lcmp.mod = icmp eq i64 %54, 0
  %55 = icmp eq i64 %31, 0
  %cmp.n551 = icmp eq i64 %24, %n.vec529
  %min.iters.check = icmp ult i64 %12, 32
  %n.vec = and i64 %12, 8589934560
  %cmp.zero = icmp eq i64 %n.vec, 0
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end62 = sub i32 %width, %cast.crd
  %56 = and i64 %49, 1
  %lcmp.mod716 = icmp eq i64 %56, 0
  %57 = icmp eq i64 %49, 0
  %cmp.n = icmp eq i64 %12, %n.vec
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %3
  %hi.0.ph = phi i8* [ %7, %3 ], [ %hi.0.ph.be, %.outer.backedge ]
  %lo.0.ph = phi i8* [ %base, %3 ], [ %lo.0.ph.be, %.outer.backedge ]
  %stkptr.0.ph = phi i32 [ 0, %3 ], [ %stkptr.0.ph.be, %.outer.backedge ]
  %58 = ptrtoint i8* %hi.0.ph to i64
  %59 = getelementptr inbounds i8, i8* %hi.0.ph, i64 %8
  br label %60

; <label>:60                                      ; preds = %342, %.outer
  %lo.0 = phi i8* [ %.lcssa.lcssa, %342 ], [ %lo.0.ph, %.outer ]
  %stkptr.0 = phi i32 [ %stkptr.1, %342 ], [ %stkptr.0.ph, %.outer ]
  %61 = ptrtoint i8* %lo.0 to i64
  %62 = sub i64 %58, %61
  %63 = sdiv i64 %62, %8
  %64 = add nsw i64 %63, 1
  %65 = trunc i64 %64 to i32
  %66 = icmp ult i32 %65, 9
  br i1 %66, label %67, label %134

; <label>:67                                      ; preds = %60
  %stkptr.0.lcssa = phi i32 [ %stkptr.0, %60 ]
  %lo.0.lcssa = phi i8* [ %lo.0, %60 ]
  %68 = icmp ugt i8* %hi.0.ph, %lo.0.lcssa
  br i1 %68, label %.lr.ph6.split.i.preheader, label %shortsort.exit

.lr.ph6.split.i.preheader:                        ; preds = %67
  %p.01.i = getelementptr inbounds i8, i8* %lo.0.lcssa, i64 %8
  br label %.lr.ph6.split.i

.lr.ph6.split.i:                                  ; preds = %swap.exit.i, %.lr.ph6.split.i.preheader
  %indvar = phi i64 [ 0, %.lr.ph6.split.i.preheader ], [ %indvar.next, %swap.exit.i ]
  %.04.i = phi i8* [ %hi.0.ph, %.lr.ph6.split.i.preheader ], [ %132, %swap.exit.i ]
  %69 = mul i64 %indvar, %15
  %scevgep59 = getelementptr i8, i8* %hi.0.ph, i64 %69
  %70 = add i64 %13, %69
  %scevgep60 = getelementptr i8, i8* %hi.0.ph, i64 %70
  %71 = icmp ugt i8* %p.01.i, %.04.i
  br i1 %71, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph6.split.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %p.03.i = phi i8* [ %p.0.i, %.lr.ph.i ], [ %p.01.i, %.lr.ph.i.preheader ]
  %max.02.i = phi i8* [ %p.0.max.0.i, %.lr.ph.i ], [ %lo.0.lcssa, %.lr.ph.i.preheader ]
  %72 = tail call i32 %cmp(i8* %p.03.i, i8* %max.02.i, i64 %n, i64 %offset) #6
  %73 = icmp sgt i32 %72, 0
  %p.0.max.0.i = select i1 %73, i8* %p.03.i, i8* %max.02.i
  %p.0.i = getelementptr inbounds i8, i8* %p.03.i, i64 %8
  %74 = icmp ugt i8* %p.0.i, %.04.i
  br i1 %74, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %p.0.max.0.i.lcssa = phi i8* [ %p.0.max.0.i, %.lr.ph.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.lr.ph6.split.i
  %max.0.lcssa.i = phi i8* [ %lo.0.lcssa, %.lr.ph6.split.i ], [ %p.0.max.0.i.lcssa, %._crit_edge.i.loopexit ]
  %75 = icmp eq i8* %max.0.lcssa.i, %.04.i
  br i1 %75, label %swap.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge.i
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader690, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph.i.i.preheader
  br i1 %cmp.zero, label %.lr.ph.i.i.preheader690, label %vector.memcheck

vector.memcheck:                                  ; preds = %min.iters.checked
  %scevgep = getelementptr i8, i8* %max.0.lcssa.i, i64 %13
  %bound0 = icmp ule i8* %max.0.lcssa.i, %scevgep60
  %bound1 = icmp ule i8* %scevgep59, %scevgep
  %memcheck.conflict = and i1 %bound0, %bound1
  %ind.end = getelementptr i8, i8* %max.0.lcssa.i, i64 %n.vec
  %ind.end64 = getelementptr i8, i8* %.04.i, i64 %n.vec
  br i1 %memcheck.conflict, label %.lr.ph.i.i.preheader690, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.memcheck
  br i1 %lcmp.mod716, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %76 = bitcast i8* %max.0.lcssa.i to <16 x i8>*
  %wide.load.prol = load <16 x i8>, <16 x i8>* %76, align 1
  %77 = getelementptr i8, i8* %max.0.lcssa.i, i64 16
  %78 = bitcast i8* %77 to <16 x i8>*
  %wide.load192.prol = load <16 x i8>, <16 x i8>* %78, align 1
  %79 = bitcast i8* %.04.i to <16 x i8>*
  %wide.load193.prol = load <16 x i8>, <16 x i8>* %79, align 1
  %80 = getelementptr i8, i8* %.04.i, i64 16
  %81 = bitcast i8* %80 to <16 x i8>*
  %wide.load194.prol = load <16 x i8>, <16 x i8>* %81, align 1
  %82 = bitcast i8* %max.0.lcssa.i to <16 x i8>*
  store <16 x i8> %wide.load193.prol, <16 x i8>* %82, align 1
  %83 = bitcast i8* %77 to <16 x i8>*
  store <16 x i8> %wide.load194.prol, <16 x i8>* %83, align 1
  %84 = bitcast i8* %.04.i to <16 x i8>*
  store <16 x i8> %wide.load.prol, <16 x i8>* %84, align 1
  %85 = bitcast i8* %80 to <16 x i8>*
  store <16 x i8> %wide.load192.prol, <16 x i8>* %85, align 1
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 32, %vector.body.prol ]
  br i1 %57, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %next.gep = getelementptr i8, i8* %max.0.lcssa.i, i64 %index
  %next.gep128 = getelementptr i8, i8* %.04.i, i64 %index
  %86 = bitcast i8* %next.gep to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %86, align 1
  %87 = getelementptr i8, i8* %next.gep, i64 16
  %88 = bitcast i8* %87 to <16 x i8>*
  %wide.load192 = load <16 x i8>, <16 x i8>* %88, align 1
  %89 = bitcast i8* %next.gep128 to <16 x i8>*
  %wide.load193 = load <16 x i8>, <16 x i8>* %89, align 1
  %90 = getelementptr i8, i8* %next.gep128, i64 16
  %91 = bitcast i8* %90 to <16 x i8>*
  %wide.load194 = load <16 x i8>, <16 x i8>* %91, align 1
  %92 = bitcast i8* %next.gep to <16 x i8>*
  store <16 x i8> %wide.load193, <16 x i8>* %92, align 1
  %93 = bitcast i8* %87 to <16 x i8>*
  store <16 x i8> %wide.load194, <16 x i8>* %93, align 1
  %94 = bitcast i8* %next.gep128 to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %94, align 1
  %95 = bitcast i8* %90 to <16 x i8>*
  store <16 x i8> %wide.load192, <16 x i8>* %95, align 1
  %index.next = add i64 %index, 32
  %next.gep.1 = getelementptr i8, i8* %max.0.lcssa.i, i64 %index.next
  %next.gep128.1 = getelementptr i8, i8* %.04.i, i64 %index.next
  %96 = bitcast i8* %next.gep.1 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %96, align 1
  %97 = getelementptr i8, i8* %next.gep.1, i64 16
  %98 = bitcast i8* %97 to <16 x i8>*
  %wide.load192.1 = load <16 x i8>, <16 x i8>* %98, align 1
  %99 = bitcast i8* %next.gep128.1 to <16 x i8>*
  %wide.load193.1 = load <16 x i8>, <16 x i8>* %99, align 1
  %100 = getelementptr i8, i8* %next.gep128.1, i64 16
  %101 = bitcast i8* %100 to <16 x i8>*
  %wide.load194.1 = load <16 x i8>, <16 x i8>* %101, align 1
  %102 = bitcast i8* %next.gep.1 to <16 x i8>*
  store <16 x i8> %wide.load193.1, <16 x i8>* %102, align 1
  %103 = bitcast i8* %97 to <16 x i8>*
  store <16 x i8> %wide.load194.1, <16 x i8>* %103, align 1
  %104 = bitcast i8* %next.gep128.1 to <16 x i8>*
  store <16 x i8> %wide.load.1, <16 x i8>* %104, align 1
  %105 = bitcast i8* %100 to <16 x i8>*
  store <16 x i8> %wide.load192.1, <16 x i8>* %105, align 1
  %index.next.1 = add i64 %index, 64
  %106 = icmp eq i64 %index.next.1, %n.vec
  br i1 %106, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !9

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.preheader.split
  br i1 %cmp.n, label %swap.exit.i, label %.lr.ph.i.i.preheader690

.lr.ph.i.i.preheader690:                          ; preds = %middle.block, %vector.memcheck, %min.iters.checked, %.lr.ph.i.i.preheader
  %.05.i.i.ph = phi i8* [ %max.0.lcssa.i, %vector.memcheck ], [ %max.0.lcssa.i, %min.iters.checked ], [ %max.0.lcssa.i, %.lr.ph.i.i.preheader ], [ %ind.end, %middle.block ]
  %.014.i.i.ph = phi i32 [ %width, %vector.memcheck ], [ %width, %min.iters.checked ], [ %width, %.lr.ph.i.i.preheader ], [ %ind.end62, %middle.block ]
  %.023.i.i.ph = phi i8* [ %.04.i, %vector.memcheck ], [ %.04.i, %min.iters.checked ], [ %.04.i, %.lr.ph.i.i.preheader ], [ %ind.end64, %middle.block ]
  %107 = add i32 %.014.i.i.ph, -1
  %xtraiter717 = and i32 %.014.i.i.ph, 3
  %lcmp.mod718 = icmp eq i32 %xtraiter717, 0
  br i1 %lcmp.mod718, label %.lr.ph.i.i.preheader690.split, label %.lr.ph.i.i.prol.preheader

.lr.ph.i.i.prol.preheader:                        ; preds = %.lr.ph.i.i.preheader690
  br label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.prol.preheader
  %.05.i.i.prol = phi i8* [ %111, %.lr.ph.i.i.prol ], [ %.05.i.i.ph, %.lr.ph.i.i.prol.preheader ]
  %.014.i.i.prol = phi i32 [ %108, %.lr.ph.i.i.prol ], [ %.014.i.i.ph, %.lr.ph.i.i.prol.preheader ]
  %.023.i.i.prol = phi i8* [ %112, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.prol.preheader ]
  %prol.iter719 = phi i32 [ %prol.iter719.sub, %.lr.ph.i.i.prol ], [ %xtraiter717, %.lr.ph.i.i.prol.preheader ]
  %108 = add i32 %.014.i.i.prol, -1
  %109 = load i8, i8* %.05.i.i.prol, align 1
  %110 = load i8, i8* %.023.i.i.prol, align 1
  %111 = getelementptr inbounds i8, i8* %.05.i.i.prol, i64 1
  store i8 %110, i8* %.05.i.i.prol, align 1
  %112 = getelementptr inbounds i8, i8* %.023.i.i.prol, i64 1
  store i8 %109, i8* %.023.i.i.prol, align 1
  %prol.iter719.sub = add i32 %prol.iter719, -1
  %prol.iter719.cmp = icmp eq i32 %prol.iter719.sub, 0
  br i1 %prol.iter719.cmp, label %.lr.ph.i.i.preheader690.split.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !12

.lr.ph.i.i.preheader690.split.loopexit:           ; preds = %.lr.ph.i.i.prol
  %.lcssa741 = phi i8* [ %112, %.lr.ph.i.i.prol ]
  %.lcssa740 = phi i8* [ %111, %.lr.ph.i.i.prol ]
  %.lcssa739 = phi i32 [ %108, %.lr.ph.i.i.prol ]
  br label %.lr.ph.i.i.preheader690.split

.lr.ph.i.i.preheader690.split:                    ; preds = %.lr.ph.i.i.preheader690.split.loopexit, %.lr.ph.i.i.preheader690
  %.05.i.i.unr = phi i8* [ %.05.i.i.ph, %.lr.ph.i.i.preheader690 ], [ %.lcssa740, %.lr.ph.i.i.preheader690.split.loopexit ]
  %.014.i.i.unr = phi i32 [ %.014.i.i.ph, %.lr.ph.i.i.preheader690 ], [ %.lcssa739, %.lr.ph.i.i.preheader690.split.loopexit ]
  %.023.i.i.unr = phi i8* [ %.023.i.i.ph, %.lr.ph.i.i.preheader690 ], [ %.lcssa741, %.lr.ph.i.i.preheader690.split.loopexit ]
  %113 = icmp ult i32 %107, 3
  br i1 %113, label %swap.exit.i.loopexit, label %.lr.ph.i.i.preheader690.split.split

.lr.ph.i.i.preheader690.split.split:              ; preds = %.lr.ph.i.i.preheader690.split
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader690.split.split
  %.05.i.i = phi i8* [ %.05.i.i.unr, %.lr.ph.i.i.preheader690.split.split ], [ %129, %.lr.ph.i.i ]
  %.014.i.i = phi i32 [ %.014.i.i.unr, %.lr.ph.i.i.preheader690.split.split ], [ %126, %.lr.ph.i.i ]
  %.023.i.i = phi i8* [ %.023.i.i.unr, %.lr.ph.i.i.preheader690.split.split ], [ %130, %.lr.ph.i.i ]
  %114 = load i8, i8* %.05.i.i, align 1
  %115 = load i8, i8* %.023.i.i, align 1
  %116 = getelementptr inbounds i8, i8* %.05.i.i, i64 1
  store i8 %115, i8* %.05.i.i, align 1
  %117 = getelementptr inbounds i8, i8* %.023.i.i, i64 1
  store i8 %114, i8* %.023.i.i, align 1
  %118 = load i8, i8* %116, align 1
  %119 = load i8, i8* %117, align 1
  %120 = getelementptr inbounds i8, i8* %.05.i.i, i64 2
  store i8 %119, i8* %116, align 1
  %121 = getelementptr inbounds i8, i8* %.023.i.i, i64 2
  store i8 %118, i8* %117, align 1
  %122 = load i8, i8* %120, align 1
  %123 = load i8, i8* %121, align 1
  %124 = getelementptr inbounds i8, i8* %.05.i.i, i64 3
  store i8 %123, i8* %120, align 1
  %125 = getelementptr inbounds i8, i8* %.023.i.i, i64 3
  store i8 %122, i8* %121, align 1
  %126 = add i32 %.014.i.i, -4
  %127 = load i8, i8* %124, align 1
  %128 = load i8, i8* %125, align 1
  %129 = getelementptr inbounds i8, i8* %.05.i.i, i64 4
  store i8 %128, i8* %124, align 1
  %130 = getelementptr inbounds i8, i8* %.023.i.i, i64 4
  store i8 %127, i8* %125, align 1
  %131 = icmp eq i32 %126, 0
  br i1 %131, label %swap.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !14

swap.exit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  br label %swap.exit.i.loopexit

swap.exit.i.loopexit:                             ; preds = %swap.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader690.split
  br label %swap.exit.i

swap.exit.i:                                      ; preds = %swap.exit.i.loopexit, %middle.block, %._crit_edge.i
  %132 = getelementptr inbounds i8, i8* %.04.i, i64 %9
  %133 = icmp ugt i8* %132, %lo.0.lcssa
  %indvar.next = add i64 %indvar, 1
  br i1 %133, label %.lr.ph6.split.i, label %shortsort.exit.loopexit

; <label>:134                                     ; preds = %60
  %135 = lshr i32 %65, 1
  %136 = mul i32 %135, %width
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %swap.exit9.outer.preheader, label %.lr.ph.i3.preheader

.lr.ph.i3.preheader:                              ; preds = %134
  %138 = zext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %lo.0, i64 %138
  br i1 %min.iters.check526, label %.lr.ph.i3.preheader692, label %min.iters.checked527

min.iters.checked527:                             ; preds = %.lr.ph.i3.preheader
  br i1 %cmp.zero530, label %.lr.ph.i3.preheader692, label %vector.memcheck540

vector.memcheck540:                               ; preds = %min.iters.checked527
  %140 = add i64 %63, 1
  %141 = trunc i64 %140 to i32
  %142 = lshr i32 %141, 1
  %143 = mul i32 %142, %width
  %144 = zext i32 %143 to i64
  %scevgep532 = getelementptr i8, i8* %lo.0, i64 %144
  %scevgep533 = getelementptr i8, i8* %lo.0, i64 %26
  %scevgep534 = getelementptr i8, i8* %scevgep533, i64 %144
  %scevgep535 = getelementptr i8, i8* %lo.0, i64 %26
  %bound0536 = icmp ule i8* %scevgep532, %scevgep535
  %bound1537 = icmp ule i8* %lo.0, %scevgep534
  %memcheck.conflict539 = and i1 %bound0536, %bound1537
  %ind.end545 = getelementptr i8, i8* %139, i64 %n.vec529
  %ind.end550 = getelementptr i8, i8* %lo.0, i64 %n.vec529
  br i1 %memcheck.conflict539, label %.lr.ph.i3.preheader692, label %vector.body523.preheader

vector.body523.preheader:                         ; preds = %vector.memcheck540
  br i1 %lcmp.mod, label %vector.body523.prol, label %vector.body523.preheader.split

vector.body523.prol:                              ; preds = %vector.body523.preheader
  %145 = bitcast i8* %139 to <16 x i8>*
  %wide.load685.prol = load <16 x i8>, <16 x i8>* %145, align 1
  %146 = getelementptr i8, i8* %139, i64 16
  %147 = bitcast i8* %146 to <16 x i8>*
  %wide.load686.prol = load <16 x i8>, <16 x i8>* %147, align 1
  %148 = bitcast i8* %lo.0 to <16 x i8>*
  %wide.load687.prol = load <16 x i8>, <16 x i8>* %148, align 1
  %149 = getelementptr i8, i8* %lo.0, i64 16
  %150 = bitcast i8* %149 to <16 x i8>*
  %wide.load688.prol = load <16 x i8>, <16 x i8>* %150, align 1
  %151 = bitcast i8* %139 to <16 x i8>*
  store <16 x i8> %wide.load687.prol, <16 x i8>* %151, align 1
  %152 = bitcast i8* %146 to <16 x i8>*
  store <16 x i8> %wide.load688.prol, <16 x i8>* %152, align 1
  %153 = bitcast i8* %lo.0 to <16 x i8>*
  store <16 x i8> %wide.load685.prol, <16 x i8>* %153, align 1
  %154 = bitcast i8* %149 to <16 x i8>*
  store <16 x i8> %wide.load686.prol, <16 x i8>* %154, align 1
  br label %vector.body523.preheader.split

vector.body523.preheader.split:                   ; preds = %vector.body523.prol, %vector.body523.preheader
  %index542.unr = phi i64 [ 0, %vector.body523.preheader ], [ 32, %vector.body523.prol ]
  br i1 %55, label %middle.block524, label %vector.body523.preheader.split.split

vector.body523.preheader.split.split:             ; preds = %vector.body523.preheader.split
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.body523.preheader.split.split
  %index542 = phi i64 [ %index542.unr, %vector.body523.preheader.split.split ], [ %index.next543.1, %vector.body523 ]
  %next.gep552 = getelementptr i8, i8* %139, i64 %index542
  %next.gep621 = getelementptr i8, i8* %lo.0, i64 %index542
  %155 = bitcast i8* %next.gep552 to <16 x i8>*
  %wide.load685 = load <16 x i8>, <16 x i8>* %155, align 1
  %156 = getelementptr i8, i8* %next.gep552, i64 16
  %157 = bitcast i8* %156 to <16 x i8>*
  %wide.load686 = load <16 x i8>, <16 x i8>* %157, align 1
  %158 = bitcast i8* %next.gep621 to <16 x i8>*
  %wide.load687 = load <16 x i8>, <16 x i8>* %158, align 1
  %159 = getelementptr i8, i8* %next.gep621, i64 16
  %160 = bitcast i8* %159 to <16 x i8>*
  %wide.load688 = load <16 x i8>, <16 x i8>* %160, align 1
  %161 = bitcast i8* %next.gep552 to <16 x i8>*
  store <16 x i8> %wide.load687, <16 x i8>* %161, align 1
  %162 = bitcast i8* %156 to <16 x i8>*
  store <16 x i8> %wide.load688, <16 x i8>* %162, align 1
  %163 = bitcast i8* %next.gep621 to <16 x i8>*
  store <16 x i8> %wide.load685, <16 x i8>* %163, align 1
  %164 = bitcast i8* %159 to <16 x i8>*
  store <16 x i8> %wide.load686, <16 x i8>* %164, align 1
  %index.next543 = add i64 %index542, 32
  %next.gep552.1 = getelementptr i8, i8* %139, i64 %index.next543
  %next.gep621.1 = getelementptr i8, i8* %lo.0, i64 %index.next543
  %165 = bitcast i8* %next.gep552.1 to <16 x i8>*
  %wide.load685.1 = load <16 x i8>, <16 x i8>* %165, align 1
  %166 = getelementptr i8, i8* %next.gep552.1, i64 16
  %167 = bitcast i8* %166 to <16 x i8>*
  %wide.load686.1 = load <16 x i8>, <16 x i8>* %167, align 1
  %168 = bitcast i8* %next.gep621.1 to <16 x i8>*
  %wide.load687.1 = load <16 x i8>, <16 x i8>* %168, align 1
  %169 = getelementptr i8, i8* %next.gep621.1, i64 16
  %170 = bitcast i8* %169 to <16 x i8>*
  %wide.load688.1 = load <16 x i8>, <16 x i8>* %170, align 1
  %171 = bitcast i8* %next.gep552.1 to <16 x i8>*
  store <16 x i8> %wide.load687.1, <16 x i8>* %171, align 1
  %172 = bitcast i8* %166 to <16 x i8>*
  store <16 x i8> %wide.load688.1, <16 x i8>* %172, align 1
  %173 = bitcast i8* %next.gep621.1 to <16 x i8>*
  store <16 x i8> %wide.load685.1, <16 x i8>* %173, align 1
  %174 = bitcast i8* %169 to <16 x i8>*
  store <16 x i8> %wide.load686.1, <16 x i8>* %174, align 1
  %index.next543.1 = add i64 %index542, 64
  %175 = icmp eq i64 %index.next543.1, %n.vec529
  br i1 %175, label %middle.block524.unr-lcssa, label %vector.body523, !llvm.loop !15

middle.block524.unr-lcssa:                        ; preds = %vector.body523
  br label %middle.block524

middle.block524:                                  ; preds = %middle.block524.unr-lcssa, %vector.body523.preheader.split
  br i1 %cmp.n551, label %swap.exit9.outer.preheader, label %.lr.ph.i3.preheader692

.lr.ph.i3.preheader692:                           ; preds = %middle.block524, %vector.memcheck540, %min.iters.checked527, %.lr.ph.i3.preheader
  %.05.i.ph = phi i8* [ %139, %vector.memcheck540 ], [ %139, %min.iters.checked527 ], [ %139, %.lr.ph.i3.preheader ], [ %ind.end545, %middle.block524 ]
  %.014.i.ph = phi i32 [ %width, %vector.memcheck540 ], [ %width, %min.iters.checked527 ], [ %width, %.lr.ph.i3.preheader ], [ %ind.end548, %middle.block524 ]
  %.023.i.ph = phi i8* [ %lo.0, %vector.memcheck540 ], [ %lo.0, %min.iters.checked527 ], [ %lo.0, %.lr.ph.i3.preheader ], [ %ind.end550, %middle.block524 ]
  %176 = add i32 %.014.i.ph, -1
  %xtraiter703 = and i32 %.014.i.ph, 3
  %lcmp.mod704 = icmp eq i32 %xtraiter703, 0
  br i1 %lcmp.mod704, label %.lr.ph.i3.preheader692.split, label %.lr.ph.i3.prol.preheader

.lr.ph.i3.prol.preheader:                         ; preds = %.lr.ph.i3.preheader692
  br label %.lr.ph.i3.prol

.lr.ph.i3.prol:                                   ; preds = %.lr.ph.i3.prol, %.lr.ph.i3.prol.preheader
  %.05.i.prol = phi i8* [ %180, %.lr.ph.i3.prol ], [ %.05.i.ph, %.lr.ph.i3.prol.preheader ]
  %.014.i.prol = phi i32 [ %177, %.lr.ph.i3.prol ], [ %.014.i.ph, %.lr.ph.i3.prol.preheader ]
  %.023.i.prol = phi i8* [ %181, %.lr.ph.i3.prol ], [ %.023.i.ph, %.lr.ph.i3.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %.lr.ph.i3.prol ], [ %xtraiter703, %.lr.ph.i3.prol.preheader ]
  %177 = add i32 %.014.i.prol, -1
  %178 = load i8, i8* %.05.i.prol, align 1
  %179 = load i8, i8* %.023.i.prol, align 1
  %180 = getelementptr inbounds i8, i8* %.05.i.prol, i64 1
  store i8 %179, i8* %.05.i.prol, align 1
  %181 = getelementptr inbounds i8, i8* %.023.i.prol, i64 1
  store i8 %178, i8* %.023.i.prol, align 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph.i3.preheader692.split.loopexit, label %.lr.ph.i3.prol, !llvm.loop !16

.lr.ph.i3.preheader692.split.loopexit:            ; preds = %.lr.ph.i3.prol
  %.lcssa730 = phi i8* [ %181, %.lr.ph.i3.prol ]
  %.lcssa729 = phi i8* [ %180, %.lr.ph.i3.prol ]
  %.lcssa728 = phi i32 [ %177, %.lr.ph.i3.prol ]
  br label %.lr.ph.i3.preheader692.split

.lr.ph.i3.preheader692.split:                     ; preds = %.lr.ph.i3.preheader692.split.loopexit, %.lr.ph.i3.preheader692
  %.05.i.unr = phi i8* [ %.05.i.ph, %.lr.ph.i3.preheader692 ], [ %.lcssa729, %.lr.ph.i3.preheader692.split.loopexit ]
  %.014.i.unr = phi i32 [ %.014.i.ph, %.lr.ph.i3.preheader692 ], [ %.lcssa728, %.lr.ph.i3.preheader692.split.loopexit ]
  %.023.i.unr = phi i8* [ %.023.i.ph, %.lr.ph.i3.preheader692 ], [ %.lcssa730, %.lr.ph.i3.preheader692.split.loopexit ]
  %182 = icmp ult i32 %176, 3
  br i1 %182, label %swap.exit9.outer.preheader.loopexit, label %.lr.ph.i3.preheader692.split.split

.lr.ph.i3.preheader692.split.split:               ; preds = %.lr.ph.i3.preheader692.split
  br label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %.lr.ph.i3, %.lr.ph.i3.preheader692.split.split
  %.05.i = phi i8* [ %.05.i.unr, %.lr.ph.i3.preheader692.split.split ], [ %198, %.lr.ph.i3 ]
  %.014.i = phi i32 [ %.014.i.unr, %.lr.ph.i3.preheader692.split.split ], [ %195, %.lr.ph.i3 ]
  %.023.i = phi i8* [ %.023.i.unr, %.lr.ph.i3.preheader692.split.split ], [ %199, %.lr.ph.i3 ]
  %183 = load i8, i8* %.05.i, align 1
  %184 = load i8, i8* %.023.i, align 1
  %185 = getelementptr inbounds i8, i8* %.05.i, i64 1
  store i8 %184, i8* %.05.i, align 1
  %186 = getelementptr inbounds i8, i8* %.023.i, i64 1
  store i8 %183, i8* %.023.i, align 1
  %187 = load i8, i8* %185, align 1
  %188 = load i8, i8* %186, align 1
  %189 = getelementptr inbounds i8, i8* %.05.i, i64 2
  store i8 %188, i8* %185, align 1
  %190 = getelementptr inbounds i8, i8* %.023.i, i64 2
  store i8 %187, i8* %186, align 1
  %191 = load i8, i8* %189, align 1
  %192 = load i8, i8* %190, align 1
  %193 = getelementptr inbounds i8, i8* %.05.i, i64 3
  store i8 %192, i8* %189, align 1
  %194 = getelementptr inbounds i8, i8* %.023.i, i64 3
  store i8 %191, i8* %190, align 1
  %195 = add i32 %.014.i, -4
  %196 = load i8, i8* %193, align 1
  %197 = load i8, i8* %194, align 1
  %198 = getelementptr inbounds i8, i8* %.05.i, i64 4
  store i8 %197, i8* %193, align 1
  %199 = getelementptr inbounds i8, i8* %.023.i, i64 4
  store i8 %196, i8* %194, align 1
  %200 = icmp eq i32 %195, 0
  br i1 %200, label %swap.exit9.outer.preheader.loopexit.unr-lcssa, label %.lr.ph.i3, !llvm.loop !17

swap.exit9.outer.preheader.loopexit.unr-lcssa:    ; preds = %.lr.ph.i3
  br label %swap.exit9.outer.preheader.loopexit

swap.exit9.outer.preheader.loopexit:              ; preds = %swap.exit9.outer.preheader.loopexit.unr-lcssa, %.lr.ph.i3.preheader692.split
  br label %swap.exit9.outer.preheader

swap.exit9.outer.preheader:                       ; preds = %swap.exit9.outer.preheader.loopexit, %middle.block524, %134
  br label %swap.exit9.outer

swap.exit9.outer.loopexit.unr-lcssa:              ; preds = %.lr.ph.i8
  br label %swap.exit9.outer.loopexit

swap.exit9.outer.loopexit:                        ; preds = %.lr.ph.i8.preheader689.split, %swap.exit9.outer.loopexit.unr-lcssa
  br label %swap.exit9.outer.backedge

swap.exit9.outer:                                 ; preds = %swap.exit9.outer.backedge, %swap.exit9.outer.preheader
  %loguy.0.ph = phi i8* [ %lo.0, %swap.exit9.outer.preheader ], [ %.lcssa, %swap.exit9.outer.backedge ]
  %higuy.0.ph = phi i8* [ %59, %swap.exit9.outer.preheader ], [ %.lcssa721, %swap.exit9.outer.backedge ]
  br label %swap.exit9

swap.exit9:                                       ; preds = %203, %swap.exit9.outer
  %loguy.0 = phi i8* [ %201, %203 ], [ %loguy.0.ph, %swap.exit9.outer ]
  %201 = getelementptr inbounds i8, i8* %loguy.0, i64 %8
  %202 = icmp ugt i8* %201, %hi.0.ph
  br i1 %202, label %.critedge.preheader, label %203

; <label>:203                                     ; preds = %swap.exit9
  %204 = tail call i32 %cmp(i8* %201, i8* %lo.0, i64 %n, i64 %offset) #6
  %205 = icmp slt i32 %204, 1
  br i1 %205, label %swap.exit9, label %.critedge.preheader

.critedge.preheader:                              ; preds = %203, %swap.exit9
  %.lcssa = phi i8* [ %201, %203 ], [ %201, %swap.exit9 ]
  br label %.critedge

.critedge:                                        ; preds = %208, %.critedge.preheader
  %higuy.1 = phi i8* [ %206, %208 ], [ %higuy.0.ph, %.critedge.preheader ]
  %206 = getelementptr inbounds i8, i8* %higuy.1, i64 %9
  %207 = icmp ugt i8* %206, %lo.0
  br i1 %207, label %208, label %.critedge2

; <label>:208                                     ; preds = %.critedge
  %209 = tail call i32 %cmp(i8* %206, i8* %lo.0, i64 %n, i64 %offset) #6
  %210 = icmp sgt i32 %209, -1
  br i1 %210, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %208, %.critedge
  %.lcssa721 = phi i8* [ %206, %.critedge ], [ %206, %208 ]
  %211 = icmp ult i8* %.lcssa721, %.lcssa
  br i1 %211, label %.us-lcssa.us, label %212

; <label>:212                                     ; preds = %.critedge2
  %213 = icmp eq i8* %.lcssa, %.lcssa721
  br i1 %213, label %swap.exit9.outer.backedge, label %.lr.ph.i8.preheader

.lr.ph.i8.preheader:                              ; preds = %212
  br i1 %min.iters.check362, label %.lr.ph.i8.preheader689, label %min.iters.checked363

min.iters.checked363:                             ; preds = %.lr.ph.i8.preheader
  br i1 %cmp.zero366, label %.lr.ph.i8.preheader689, label %vector.memcheck374

vector.memcheck374:                               ; preds = %min.iters.checked363
  %scevgep368 = getelementptr i8, i8* %.lcssa, i64 %22
  %scevgep369 = getelementptr i8, i8* %.lcssa721, i64 %22
  %bound0370 = icmp ule i8* %.lcssa, %scevgep369
  %bound1371 = icmp ule i8* %.lcssa721, %scevgep368
  %memcheck.conflict373 = and i1 %bound0370, %bound1371
  %ind.end379 = getelementptr i8, i8* %.lcssa, i64 %n.vec365
  %ind.end384 = getelementptr i8, i8* %.lcssa721, i64 %n.vec365
  br i1 %memcheck.conflict373, label %.lr.ph.i8.preheader689, label %vector.body359.preheader

vector.body359.preheader:                         ; preds = %vector.memcheck374
  br i1 %lcmp.mod706, label %vector.body359.prol, label %vector.body359.preheader.split

vector.body359.prol:                              ; preds = %vector.body359.preheader
  %214 = bitcast i8* %.lcssa to <16 x i8>*
  %wide.load519.prol = load <16 x i8>, <16 x i8>* %214, align 1
  %215 = getelementptr i8, i8* %.lcssa, i64 16
  %216 = bitcast i8* %215 to <16 x i8>*
  %wide.load520.prol = load <16 x i8>, <16 x i8>* %216, align 1
  %217 = bitcast i8* %.lcssa721 to <16 x i8>*
  %wide.load521.prol = load <16 x i8>, <16 x i8>* %217, align 1
  %218 = getelementptr i8, i8* %.lcssa721, i64 16
  %219 = bitcast i8* %218 to <16 x i8>*
  %wide.load522.prol = load <16 x i8>, <16 x i8>* %219, align 1
  %220 = bitcast i8* %.lcssa to <16 x i8>*
  store <16 x i8> %wide.load521.prol, <16 x i8>* %220, align 1
  %221 = bitcast i8* %215 to <16 x i8>*
  store <16 x i8> %wide.load522.prol, <16 x i8>* %221, align 1
  %222 = bitcast i8* %.lcssa721 to <16 x i8>*
  store <16 x i8> %wide.load519.prol, <16 x i8>* %222, align 1
  %223 = bitcast i8* %218 to <16 x i8>*
  store <16 x i8> %wide.load520.prol, <16 x i8>* %223, align 1
  br label %vector.body359.preheader.split

vector.body359.preheader.split:                   ; preds = %vector.body359.prol, %vector.body359.preheader
  %index376.unr = phi i64 [ 0, %vector.body359.preheader ], [ 32, %vector.body359.prol ]
  br i1 %51, label %middle.block360, label %vector.body359.preheader.split.split

vector.body359.preheader.split.split:             ; preds = %vector.body359.preheader.split
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.body359.preheader.split.split
  %index376 = phi i64 [ %index376.unr, %vector.body359.preheader.split.split ], [ %index.next377.1, %vector.body359 ]
  %next.gep386 = getelementptr i8, i8* %.lcssa, i64 %index376
  %next.gep455 = getelementptr i8, i8* %.lcssa721, i64 %index376
  %224 = bitcast i8* %next.gep386 to <16 x i8>*
  %wide.load519 = load <16 x i8>, <16 x i8>* %224, align 1
  %225 = getelementptr i8, i8* %next.gep386, i64 16
  %226 = bitcast i8* %225 to <16 x i8>*
  %wide.load520 = load <16 x i8>, <16 x i8>* %226, align 1
  %227 = bitcast i8* %next.gep455 to <16 x i8>*
  %wide.load521 = load <16 x i8>, <16 x i8>* %227, align 1
  %228 = getelementptr i8, i8* %next.gep455, i64 16
  %229 = bitcast i8* %228 to <16 x i8>*
  %wide.load522 = load <16 x i8>, <16 x i8>* %229, align 1
  %230 = bitcast i8* %next.gep386 to <16 x i8>*
  store <16 x i8> %wide.load521, <16 x i8>* %230, align 1
  %231 = bitcast i8* %225 to <16 x i8>*
  store <16 x i8> %wide.load522, <16 x i8>* %231, align 1
  %232 = bitcast i8* %next.gep455 to <16 x i8>*
  store <16 x i8> %wide.load519, <16 x i8>* %232, align 1
  %233 = bitcast i8* %228 to <16 x i8>*
  store <16 x i8> %wide.load520, <16 x i8>* %233, align 1
  %index.next377 = add i64 %index376, 32
  %next.gep386.1 = getelementptr i8, i8* %.lcssa, i64 %index.next377
  %next.gep455.1 = getelementptr i8, i8* %.lcssa721, i64 %index.next377
  %234 = bitcast i8* %next.gep386.1 to <16 x i8>*
  %wide.load519.1 = load <16 x i8>, <16 x i8>* %234, align 1
  %235 = getelementptr i8, i8* %next.gep386.1, i64 16
  %236 = bitcast i8* %235 to <16 x i8>*
  %wide.load520.1 = load <16 x i8>, <16 x i8>* %236, align 1
  %237 = bitcast i8* %next.gep455.1 to <16 x i8>*
  %wide.load521.1 = load <16 x i8>, <16 x i8>* %237, align 1
  %238 = getelementptr i8, i8* %next.gep455.1, i64 16
  %239 = bitcast i8* %238 to <16 x i8>*
  %wide.load522.1 = load <16 x i8>, <16 x i8>* %239, align 1
  %240 = bitcast i8* %next.gep386.1 to <16 x i8>*
  store <16 x i8> %wide.load521.1, <16 x i8>* %240, align 1
  %241 = bitcast i8* %235 to <16 x i8>*
  store <16 x i8> %wide.load522.1, <16 x i8>* %241, align 1
  %242 = bitcast i8* %next.gep455.1 to <16 x i8>*
  store <16 x i8> %wide.load519.1, <16 x i8>* %242, align 1
  %243 = bitcast i8* %238 to <16 x i8>*
  store <16 x i8> %wide.load520.1, <16 x i8>* %243, align 1
  %index.next377.1 = add i64 %index376, 64
  %244 = icmp eq i64 %index.next377.1, %n.vec365
  br i1 %244, label %middle.block360.unr-lcssa, label %vector.body359, !llvm.loop !18

middle.block360.unr-lcssa:                        ; preds = %vector.body359
  br label %middle.block360

middle.block360:                                  ; preds = %middle.block360.unr-lcssa, %vector.body359.preheader.split
  br i1 %cmp.n385, label %swap.exit9.outer.backedge, label %.lr.ph.i8.preheader689

swap.exit9.outer.backedge:                        ; preds = %middle.block360, %212, %swap.exit9.outer.loopexit
  br label %swap.exit9.outer

.lr.ph.i8.preheader689:                           ; preds = %middle.block360, %vector.memcheck374, %min.iters.checked363, %.lr.ph.i8.preheader
  %.05.i5.ph = phi i8* [ %.lcssa, %vector.memcheck374 ], [ %.lcssa, %min.iters.checked363 ], [ %.lcssa, %.lr.ph.i8.preheader ], [ %ind.end379, %middle.block360 ]
  %.014.i6.ph = phi i32 [ %width, %vector.memcheck374 ], [ %width, %min.iters.checked363 ], [ %width, %.lr.ph.i8.preheader ], [ %ind.end382, %middle.block360 ]
  %.023.i7.ph = phi i8* [ %.lcssa721, %vector.memcheck374 ], [ %.lcssa721, %min.iters.checked363 ], [ %.lcssa721, %.lr.ph.i8.preheader ], [ %ind.end384, %middle.block360 ]
  %245 = add i32 %.014.i6.ph, -1
  %xtraiter707 = and i32 %.014.i6.ph, 3
  %lcmp.mod708 = icmp eq i32 %xtraiter707, 0
  br i1 %lcmp.mod708, label %.lr.ph.i8.preheader689.split, label %.lr.ph.i8.prol.preheader

.lr.ph.i8.prol.preheader:                         ; preds = %.lr.ph.i8.preheader689
  br label %.lr.ph.i8.prol

.lr.ph.i8.prol:                                   ; preds = %.lr.ph.i8.prol, %.lr.ph.i8.prol.preheader
  %.05.i5.prol = phi i8* [ %249, %.lr.ph.i8.prol ], [ %.05.i5.ph, %.lr.ph.i8.prol.preheader ]
  %.014.i6.prol = phi i32 [ %246, %.lr.ph.i8.prol ], [ %.014.i6.ph, %.lr.ph.i8.prol.preheader ]
  %.023.i7.prol = phi i8* [ %250, %.lr.ph.i8.prol ], [ %.023.i7.ph, %.lr.ph.i8.prol.preheader ]
  %prol.iter709 = phi i32 [ %prol.iter709.sub, %.lr.ph.i8.prol ], [ %xtraiter707, %.lr.ph.i8.prol.preheader ]
  %246 = add i32 %.014.i6.prol, -1
  %247 = load i8, i8* %.05.i5.prol, align 1
  %248 = load i8, i8* %.023.i7.prol, align 1
  %249 = getelementptr inbounds i8, i8* %.05.i5.prol, i64 1
  store i8 %248, i8* %.05.i5.prol, align 1
  %250 = getelementptr inbounds i8, i8* %.023.i7.prol, i64 1
  store i8 %247, i8* %.023.i7.prol, align 1
  %prol.iter709.sub = add i32 %prol.iter709, -1
  %prol.iter709.cmp = icmp eq i32 %prol.iter709.sub, 0
  br i1 %prol.iter709.cmp, label %.lr.ph.i8.preheader689.split.loopexit, label %.lr.ph.i8.prol, !llvm.loop !19

.lr.ph.i8.preheader689.split.loopexit:            ; preds = %.lr.ph.i8.prol
  %.lcssa727 = phi i8* [ %250, %.lr.ph.i8.prol ]
  %.lcssa726 = phi i8* [ %249, %.lr.ph.i8.prol ]
  %.lcssa725 = phi i32 [ %246, %.lr.ph.i8.prol ]
  br label %.lr.ph.i8.preheader689.split

.lr.ph.i8.preheader689.split:                     ; preds = %.lr.ph.i8.preheader689.split.loopexit, %.lr.ph.i8.preheader689
  %.05.i5.unr = phi i8* [ %.05.i5.ph, %.lr.ph.i8.preheader689 ], [ %.lcssa726, %.lr.ph.i8.preheader689.split.loopexit ]
  %.014.i6.unr = phi i32 [ %.014.i6.ph, %.lr.ph.i8.preheader689 ], [ %.lcssa725, %.lr.ph.i8.preheader689.split.loopexit ]
  %.023.i7.unr = phi i8* [ %.023.i7.ph, %.lr.ph.i8.preheader689 ], [ %.lcssa727, %.lr.ph.i8.preheader689.split.loopexit ]
  %251 = icmp ult i32 %245, 3
  br i1 %251, label %swap.exit9.outer.loopexit, label %.lr.ph.i8.preheader689.split.split

.lr.ph.i8.preheader689.split.split:               ; preds = %.lr.ph.i8.preheader689.split
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %.lr.ph.i8, %.lr.ph.i8.preheader689.split.split
  %.05.i5 = phi i8* [ %.05.i5.unr, %.lr.ph.i8.preheader689.split.split ], [ %267, %.lr.ph.i8 ]
  %.014.i6 = phi i32 [ %.014.i6.unr, %.lr.ph.i8.preheader689.split.split ], [ %264, %.lr.ph.i8 ]
  %.023.i7 = phi i8* [ %.023.i7.unr, %.lr.ph.i8.preheader689.split.split ], [ %268, %.lr.ph.i8 ]
  %252 = load i8, i8* %.05.i5, align 1
  %253 = load i8, i8* %.023.i7, align 1
  %254 = getelementptr inbounds i8, i8* %.05.i5, i64 1
  store i8 %253, i8* %.05.i5, align 1
  %255 = getelementptr inbounds i8, i8* %.023.i7, i64 1
  store i8 %252, i8* %.023.i7, align 1
  %256 = load i8, i8* %254, align 1
  %257 = load i8, i8* %255, align 1
  %258 = getelementptr inbounds i8, i8* %.05.i5, i64 2
  store i8 %257, i8* %254, align 1
  %259 = getelementptr inbounds i8, i8* %.023.i7, i64 2
  store i8 %256, i8* %255, align 1
  %260 = load i8, i8* %258, align 1
  %261 = load i8, i8* %259, align 1
  %262 = getelementptr inbounds i8, i8* %.05.i5, i64 3
  store i8 %261, i8* %258, align 1
  %263 = getelementptr inbounds i8, i8* %.023.i7, i64 3
  store i8 %260, i8* %259, align 1
  %264 = add i32 %.014.i6, -4
  %265 = load i8, i8* %262, align 1
  %266 = load i8, i8* %263, align 1
  %267 = getelementptr inbounds i8, i8* %.05.i5, i64 4
  store i8 %266, i8* %262, align 1
  %268 = getelementptr inbounds i8, i8* %.023.i7, i64 4
  store i8 %265, i8* %263, align 1
  %269 = icmp eq i32 %264, 0
  br i1 %269, label %swap.exit9.outer.loopexit.unr-lcssa, label %.lr.ph.i8, !llvm.loop !20

.us-lcssa.us:                                     ; preds = %.critedge2
  %.lcssa721.lcssa = phi i8* [ %.lcssa721, %.critedge2 ]
  %.lcssa.lcssa = phi i8* [ %.lcssa, %.critedge2 ]
  %270 = icmp eq i8* %lo.0, %.lcssa721.lcssa
  br i1 %270, label %swap.exit15, label %.lr.ph.i14.preheader

.lr.ph.i14.preheader:                             ; preds = %.us-lcssa.us
  br i1 %min.iters.check198, label %.lr.ph.i14.preheader691, label %min.iters.checked199

min.iters.checked199:                             ; preds = %.lr.ph.i14.preheader
  br i1 %cmp.zero202, label %.lr.ph.i14.preheader691, label %vector.memcheck210

vector.memcheck210:                               ; preds = %min.iters.checked199
  %scevgep204 = getelementptr i8, i8* %lo.0, i64 %19
  %scevgep205 = getelementptr i8, i8* %.lcssa721.lcssa, i64 %19
  %bound0206 = icmp ule i8* %lo.0, %scevgep205
  %bound1207 = icmp ule i8* %.lcssa721.lcssa, %scevgep204
  %memcheck.conflict209 = and i1 %bound0206, %bound1207
  %ind.end215 = getelementptr i8, i8* %lo.0, i64 %n.vec201
  %ind.end220 = getelementptr i8, i8* %.lcssa721.lcssa, i64 %n.vec201
  br i1 %memcheck.conflict209, label %.lr.ph.i14.preheader691, label %vector.body195.preheader

vector.body195.preheader:                         ; preds = %vector.memcheck210
  br i1 %lcmp.mod711, label %vector.body195.prol, label %vector.body195.preheader.split

vector.body195.prol:                              ; preds = %vector.body195.preheader
  %271 = bitcast i8* %lo.0 to <16 x i8>*
  %wide.load355.prol = load <16 x i8>, <16 x i8>* %271, align 1
  %272 = getelementptr i8, i8* %lo.0, i64 16
  %273 = bitcast i8* %272 to <16 x i8>*
  %wide.load356.prol = load <16 x i8>, <16 x i8>* %273, align 1
  %274 = bitcast i8* %.lcssa721.lcssa to <16 x i8>*
  %wide.load357.prol = load <16 x i8>, <16 x i8>* %274, align 1
  %275 = getelementptr i8, i8* %.lcssa721.lcssa, i64 16
  %276 = bitcast i8* %275 to <16 x i8>*
  %wide.load358.prol = load <16 x i8>, <16 x i8>* %276, align 1
  %277 = bitcast i8* %lo.0 to <16 x i8>*
  store <16 x i8> %wide.load357.prol, <16 x i8>* %277, align 1
  %278 = bitcast i8* %272 to <16 x i8>*
  store <16 x i8> %wide.load358.prol, <16 x i8>* %278, align 1
  %279 = bitcast i8* %.lcssa721.lcssa to <16 x i8>*
  store <16 x i8> %wide.load355.prol, <16 x i8>* %279, align 1
  %280 = bitcast i8* %275 to <16 x i8>*
  store <16 x i8> %wide.load356.prol, <16 x i8>* %280, align 1
  br label %vector.body195.preheader.split

vector.body195.preheader.split:                   ; preds = %vector.body195.prol, %vector.body195.preheader
  %index212.unr = phi i64 [ 0, %vector.body195.preheader ], [ 32, %vector.body195.prol ]
  br i1 %53, label %middle.block196, label %vector.body195.preheader.split.split

vector.body195.preheader.split.split:             ; preds = %vector.body195.preheader.split
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.body195.preheader.split.split
  %index212 = phi i64 [ %index212.unr, %vector.body195.preheader.split.split ], [ %index.next213.1, %vector.body195 ]
  %next.gep222 = getelementptr i8, i8* %lo.0, i64 %index212
  %next.gep291 = getelementptr i8, i8* %.lcssa721.lcssa, i64 %index212
  %281 = bitcast i8* %next.gep222 to <16 x i8>*
  %wide.load355 = load <16 x i8>, <16 x i8>* %281, align 1
  %282 = getelementptr i8, i8* %next.gep222, i64 16
  %283 = bitcast i8* %282 to <16 x i8>*
  %wide.load356 = load <16 x i8>, <16 x i8>* %283, align 1
  %284 = bitcast i8* %next.gep291 to <16 x i8>*
  %wide.load357 = load <16 x i8>, <16 x i8>* %284, align 1
  %285 = getelementptr i8, i8* %next.gep291, i64 16
  %286 = bitcast i8* %285 to <16 x i8>*
  %wide.load358 = load <16 x i8>, <16 x i8>* %286, align 1
  %287 = bitcast i8* %next.gep222 to <16 x i8>*
  store <16 x i8> %wide.load357, <16 x i8>* %287, align 1
  %288 = bitcast i8* %282 to <16 x i8>*
  store <16 x i8> %wide.load358, <16 x i8>* %288, align 1
  %289 = bitcast i8* %next.gep291 to <16 x i8>*
  store <16 x i8> %wide.load355, <16 x i8>* %289, align 1
  %290 = bitcast i8* %285 to <16 x i8>*
  store <16 x i8> %wide.load356, <16 x i8>* %290, align 1
  %index.next213 = add i64 %index212, 32
  %next.gep222.1 = getelementptr i8, i8* %lo.0, i64 %index.next213
  %next.gep291.1 = getelementptr i8, i8* %.lcssa721.lcssa, i64 %index.next213
  %291 = bitcast i8* %next.gep222.1 to <16 x i8>*
  %wide.load355.1 = load <16 x i8>, <16 x i8>* %291, align 1
  %292 = getelementptr i8, i8* %next.gep222.1, i64 16
  %293 = bitcast i8* %292 to <16 x i8>*
  %wide.load356.1 = load <16 x i8>, <16 x i8>* %293, align 1
  %294 = bitcast i8* %next.gep291.1 to <16 x i8>*
  %wide.load357.1 = load <16 x i8>, <16 x i8>* %294, align 1
  %295 = getelementptr i8, i8* %next.gep291.1, i64 16
  %296 = bitcast i8* %295 to <16 x i8>*
  %wide.load358.1 = load <16 x i8>, <16 x i8>* %296, align 1
  %297 = bitcast i8* %next.gep222.1 to <16 x i8>*
  store <16 x i8> %wide.load357.1, <16 x i8>* %297, align 1
  %298 = bitcast i8* %292 to <16 x i8>*
  store <16 x i8> %wide.load358.1, <16 x i8>* %298, align 1
  %299 = bitcast i8* %next.gep291.1 to <16 x i8>*
  store <16 x i8> %wide.load355.1, <16 x i8>* %299, align 1
  %300 = bitcast i8* %295 to <16 x i8>*
  store <16 x i8> %wide.load356.1, <16 x i8>* %300, align 1
  %index.next213.1 = add i64 %index212, 64
  %301 = icmp eq i64 %index.next213.1, %n.vec201
  br i1 %301, label %middle.block196.unr-lcssa, label %vector.body195, !llvm.loop !21

middle.block196.unr-lcssa:                        ; preds = %vector.body195
  br label %middle.block196

middle.block196:                                  ; preds = %middle.block196.unr-lcssa, %vector.body195.preheader.split
  %.lcssa721724 = phi i8* [ %.lcssa721.lcssa, %vector.body195.preheader.split ], [ %.lcssa721.lcssa, %middle.block196.unr-lcssa ]
  br i1 %cmp.n221, label %swap.exit15, label %.lr.ph.i14.preheader691

.lr.ph.i14.preheader691:                          ; preds = %middle.block196, %vector.memcheck210, %min.iters.checked199, %.lr.ph.i14.preheader
  %.lcssa721722 = phi i8* [ %.lcssa721.lcssa, %vector.memcheck210 ], [ %.lcssa721.lcssa, %min.iters.checked199 ], [ %.lcssa721.lcssa, %.lr.ph.i14.preheader ], [ %.lcssa721724, %middle.block196 ]
  %.05.i11.ph = phi i8* [ %lo.0, %vector.memcheck210 ], [ %lo.0, %min.iters.checked199 ], [ %lo.0, %.lr.ph.i14.preheader ], [ %ind.end215, %middle.block196 ]
  %.014.i12.ph = phi i32 [ %width, %vector.memcheck210 ], [ %width, %min.iters.checked199 ], [ %width, %.lr.ph.i14.preheader ], [ %ind.end218, %middle.block196 ]
  %.023.i13.ph = phi i8* [ %.lcssa721.lcssa, %vector.memcheck210 ], [ %.lcssa721.lcssa, %min.iters.checked199 ], [ %.lcssa721.lcssa, %.lr.ph.i14.preheader ], [ %ind.end220, %middle.block196 ]
  %302 = add i32 %.014.i12.ph, -1
  %xtraiter712 = and i32 %.014.i12.ph, 3
  %lcmp.mod713 = icmp eq i32 %xtraiter712, 0
  br i1 %lcmp.mod713, label %.lr.ph.i14.preheader691.split, label %.lr.ph.i14.prol.preheader

.lr.ph.i14.prol.preheader:                        ; preds = %.lr.ph.i14.preheader691
  br label %.lr.ph.i14.prol

.lr.ph.i14.prol:                                  ; preds = %.lr.ph.i14.prol, %.lr.ph.i14.prol.preheader
  %.05.i11.prol = phi i8* [ %306, %.lr.ph.i14.prol ], [ %.05.i11.ph, %.lr.ph.i14.prol.preheader ]
  %.014.i12.prol = phi i32 [ %303, %.lr.ph.i14.prol ], [ %.014.i12.ph, %.lr.ph.i14.prol.preheader ]
  %.023.i13.prol = phi i8* [ %307, %.lr.ph.i14.prol ], [ %.023.i13.ph, %.lr.ph.i14.prol.preheader ]
  %prol.iter714 = phi i32 [ %prol.iter714.sub, %.lr.ph.i14.prol ], [ %xtraiter712, %.lr.ph.i14.prol.preheader ]
  %303 = add i32 %.014.i12.prol, -1
  %304 = load i8, i8* %.05.i11.prol, align 1
  %305 = load i8, i8* %.023.i13.prol, align 1
  %306 = getelementptr inbounds i8, i8* %.05.i11.prol, i64 1
  store i8 %305, i8* %.05.i11.prol, align 1
  %307 = getelementptr inbounds i8, i8* %.023.i13.prol, i64 1
  store i8 %304, i8* %.023.i13.prol, align 1
  %prol.iter714.sub = add i32 %prol.iter714, -1
  %prol.iter714.cmp = icmp eq i32 %prol.iter714.sub, 0
  br i1 %prol.iter714.cmp, label %.lr.ph.i14.preheader691.split.loopexit, label %.lr.ph.i14.prol, !llvm.loop !22

.lr.ph.i14.preheader691.split.loopexit:           ; preds = %.lr.ph.i14.prol
  %.lcssa733 = phi i8* [ %307, %.lr.ph.i14.prol ]
  %.lcssa732 = phi i8* [ %306, %.lr.ph.i14.prol ]
  %.lcssa731 = phi i32 [ %303, %.lr.ph.i14.prol ]
  br label %.lr.ph.i14.preheader691.split

.lr.ph.i14.preheader691.split:                    ; preds = %.lr.ph.i14.preheader691.split.loopexit, %.lr.ph.i14.preheader691
  %.05.i11.unr = phi i8* [ %.05.i11.ph, %.lr.ph.i14.preheader691 ], [ %.lcssa732, %.lr.ph.i14.preheader691.split.loopexit ]
  %.014.i12.unr = phi i32 [ %.014.i12.ph, %.lr.ph.i14.preheader691 ], [ %.lcssa731, %.lr.ph.i14.preheader691.split.loopexit ]
  %.023.i13.unr = phi i8* [ %.023.i13.ph, %.lr.ph.i14.preheader691 ], [ %.lcssa733, %.lr.ph.i14.preheader691.split.loopexit ]
  %308 = icmp ult i32 %302, 3
  br i1 %308, label %swap.exit15.loopexit, label %.lr.ph.i14.preheader691.split.split

.lr.ph.i14.preheader691.split.split:              ; preds = %.lr.ph.i14.preheader691.split
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.lr.ph.i14, %.lr.ph.i14.preheader691.split.split
  %.05.i11 = phi i8* [ %.05.i11.unr, %.lr.ph.i14.preheader691.split.split ], [ %324, %.lr.ph.i14 ]
  %.014.i12 = phi i32 [ %.014.i12.unr, %.lr.ph.i14.preheader691.split.split ], [ %321, %.lr.ph.i14 ]
  %.023.i13 = phi i8* [ %.023.i13.unr, %.lr.ph.i14.preheader691.split.split ], [ %325, %.lr.ph.i14 ]
  %309 = load i8, i8* %.05.i11, align 1
  %310 = load i8, i8* %.023.i13, align 1
  %311 = getelementptr inbounds i8, i8* %.05.i11, i64 1
  store i8 %310, i8* %.05.i11, align 1
  %312 = getelementptr inbounds i8, i8* %.023.i13, i64 1
  store i8 %309, i8* %.023.i13, align 1
  %313 = load i8, i8* %311, align 1
  %314 = load i8, i8* %312, align 1
  %315 = getelementptr inbounds i8, i8* %.05.i11, i64 2
  store i8 %314, i8* %311, align 1
  %316 = getelementptr inbounds i8, i8* %.023.i13, i64 2
  store i8 %313, i8* %312, align 1
  %317 = load i8, i8* %315, align 1
  %318 = load i8, i8* %316, align 1
  %319 = getelementptr inbounds i8, i8* %.05.i11, i64 3
  store i8 %318, i8* %315, align 1
  %320 = getelementptr inbounds i8, i8* %.023.i13, i64 3
  store i8 %317, i8* %316, align 1
  %321 = add i32 %.014.i12, -4
  %322 = load i8, i8* %319, align 1
  %323 = load i8, i8* %320, align 1
  %324 = getelementptr inbounds i8, i8* %.05.i11, i64 4
  store i8 %323, i8* %319, align 1
  %325 = getelementptr inbounds i8, i8* %.023.i13, i64 4
  store i8 %322, i8* %320, align 1
  %326 = icmp eq i32 %321, 0
  br i1 %326, label %swap.exit15.loopexit.unr-lcssa, label %.lr.ph.i14, !llvm.loop !23

swap.exit15.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i14
  br label %swap.exit15.loopexit

swap.exit15.loopexit:                             ; preds = %swap.exit15.loopexit.unr-lcssa, %.lr.ph.i14.preheader691.split
  br label %swap.exit15

swap.exit15:                                      ; preds = %swap.exit15.loopexit, %middle.block196, %.us-lcssa.us
  %.lcssa721723 = phi i8* [ %.lcssa721722, %swap.exit15.loopexit ], [ %.lcssa721724, %middle.block196 ], [ %.lcssa721.lcssa, %.us-lcssa.us ]
  %327 = getelementptr inbounds i8, i8* %.lcssa721723, i64 -1
  %328 = ptrtoint i8* %327 to i64
  %329 = sub i64 %328, %61
  %330 = ptrtoint i8* %.lcssa.lcssa to i64
  %331 = sub i64 %58, %330
  %332 = icmp slt i64 %329, %331
  br i1 %332, label %344, label %333

; <label>:333                                     ; preds = %swap.exit15
  %334 = getelementptr inbounds i8, i8* %lo.0, i64 %8
  %335 = icmp ult i8* %334, %.lcssa721723
  br i1 %335, label %336, label %342

; <label>:336                                     ; preds = %333
  %337 = sext i32 %stkptr.0 to i64
  %338 = getelementptr inbounds [30 x i8*], [30 x i8*]* %lostk, i64 0, i64 %337
  store i8* %lo.0, i8** %338, align 8
  %339 = getelementptr inbounds i8, i8* %.lcssa721723, i64 %9
  %340 = getelementptr inbounds [30 x i8*], [30 x i8*]* %histk, i64 0, i64 %337
  store i8* %339, i8** %340, align 8
  %341 = add nsw i32 %stkptr.0, 1
  br label %342

; <label>:342                                     ; preds = %336, %333
  %stkptr.1 = phi i32 [ %341, %336 ], [ %stkptr.0, %333 ]
  %343 = icmp ult i8* %.lcssa.lcssa, %hi.0.ph
  br i1 %343, label %60, label %shortsort.exit.loopexit693

; <label>:344                                     ; preds = %swap.exit15
  %.lcssa721723.lcssa = phi i8* [ %.lcssa721723, %swap.exit15 ]
  %stkptr.0.lcssa736 = phi i32 [ %stkptr.0, %swap.exit15 ]
  %lo.0.lcssa734 = phi i8* [ %lo.0, %swap.exit15 ]
  %.lcssa.lcssa.lcssa = phi i8* [ %.lcssa.lcssa, %swap.exit15 ]
  %345 = icmp ult i8* %.lcssa.lcssa.lcssa, %hi.0.ph
  br i1 %345, label %346, label %351

; <label>:346                                     ; preds = %344
  %347 = sext i32 %stkptr.0.lcssa736 to i64
  %348 = getelementptr inbounds [30 x i8*], [30 x i8*]* %lostk, i64 0, i64 %347
  store i8* %.lcssa.lcssa.lcssa, i8** %348, align 8
  %349 = getelementptr inbounds [30 x i8*], [30 x i8*]* %histk, i64 0, i64 %347
  store i8* %hi.0.ph, i8** %349, align 8
  %350 = add nsw i32 %stkptr.0.lcssa736, 1
  br label %351

; <label>:351                                     ; preds = %346, %344
  %stkptr.2 = phi i32 [ %350, %346 ], [ %stkptr.0.lcssa736, %344 ]
  %352 = getelementptr inbounds i8, i8* %lo.0.lcssa734, i64 %8
  %353 = icmp ult i8* %352, %.lcssa721723.lcssa
  br i1 %353, label %354, label %shortsort.exit

; <label>:354                                     ; preds = %351
  %355 = getelementptr inbounds i8, i8* %.lcssa721723.lcssa, i64 %9
  br label %.outer.backedge

shortsort.exit.loopexit:                          ; preds = %swap.exit.i
  br label %shortsort.exit

shortsort.exit.loopexit693:                       ; preds = %342
  %stkptr.1.lcssa = phi i32 [ %stkptr.1, %342 ]
  br label %shortsort.exit

shortsort.exit:                                   ; preds = %shortsort.exit.loopexit693, %shortsort.exit.loopexit, %351, %67
  %stkptr.3 = phi i32 [ %stkptr.2, %351 ], [ %stkptr.0.lcssa, %67 ], [ %stkptr.0.lcssa, %shortsort.exit.loopexit ], [ %stkptr.1.lcssa, %shortsort.exit.loopexit693 ]
  %356 = add nsw i32 %stkptr.3, -1
  %357 = icmp sgt i32 %stkptr.3, 0
  br i1 %357, label %358, label %.loopexit.loopexit

; <label>:358                                     ; preds = %shortsort.exit
  %359 = sext i32 %356 to i64
  %360 = getelementptr inbounds [30 x i8*], [30 x i8*]* %lostk, i64 0, i64 %359
  %361 = load i8*, i8** %360, align 8
  %362 = getelementptr inbounds [30 x i8*], [30 x i8*]* %histk, i64 0, i64 %359
  %363 = load i8*, i8** %362, align 8
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %358, %354
  %hi.0.ph.be = phi i8* [ %355, %354 ], [ %363, %358 ]
  %lo.0.ph.be = phi i8* [ %lo.0.lcssa734, %354 ], [ %361, %358 ]
  %stkptr.0.ph.be = phi i32 [ %stkptr.2, %354 ], [ %356, %358 ]
  br label %.outer

.loopexit.loopexit:                               ; preds = %shortsort.exit
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.bitmap* @bitmap_alloc(i64 %numBit) #11 {
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

; Function Attrs: nounwind uwtable
define %struct.bitmap* @Pbitmap_alloc(i64 %numBit) #11 {
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
define void @bitmap_free(%struct.bitmap* %bitmapPtr) #11 {
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
define void @Pbitmap_free(%struct.bitmap* %bitmapPtr) #11 {
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
define i64 @bitmap_set(%struct.bitmap* %bitmapPtr, i64 %i) #11 {
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
define i64 @bitmap_clear(%struct.bitmap* %bitmapPtr, i64 %i) #11 {
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
define void @bitmap_clearAll(%struct.bitmap* %bitmapPtr) #11 {
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
define i64 @bitmap_isClear(%struct.bitmap* %bitmapPtr, i64 %i) #11 {
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
define i64 @bitmap_isSet(%struct.bitmap* %bitmapPtr, i64 %i) #11 {
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
define i64 @bitmap_findClear(%struct.bitmap* %bitmapPtr, i64 %startIndex) #11 {
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
define i64 @bitmap_findSet(%struct.bitmap* %bitmapPtr, i64 %startIndex) #11 {
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
define i64 @bitmap_getNumClear(%struct.bitmap* %bitmapPtr) #11 {
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
define i64 @bitmap_getNumSet(%struct.bitmap* %bitmapPtr) #11 {
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
define void @bitmap_copy(%struct.bitmap* %dstPtr, %struct.bitmap* %srcPtr) #11 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.122, i32 0, i32 0), i32 343, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.bitmap_copy, i32 0, i32 0)) #17
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
define void @bitmap_toggleAll(%struct.bitmap* %bitmapPtr) #11 {
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
define void @list_iter_reset(%struct.list_node** %itPtr, %struct.list* %listPtr) #11 {
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
define void @TMlist_iter_reset(%struct.list_node** %itPtr, %struct.list* %listPtr) #11 {
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
define i64 @list_iter_hasNext(%struct.list_node** %itPtr, %struct.list* %listPtr) #12 {
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
define i64 @TMlist_iter_hasNext(%struct.list_node** %itPtr, %struct.list* %listPtr) #12 {
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
define i8* @list_iter_next(%struct.list_node** %itPtr, %struct.list* %listPtr) #11 {
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
define i8* @TMlist_iter_next(%struct.list_node** %itPtr, %struct.list* %listPtr) #11 {
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
define %struct.list* @list_alloc(i64 (i8*, i8*)* %compare) #11 {
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
define internal i64 @compareDataPtrAddresses(i8* %a, i8* %b) #11 {
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
define %struct.list* @Plist_alloc(i64 (i8*, i8*)* %compare) #11 {
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
define %struct.list* @TMlist_alloc(i64 (i8*, i8*)* %compare) #11 {
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
define void @list_free(%struct.list* %listPtr) #11 {
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
define internal void @freeList(%struct.list_node* %nodePtr) #11 {
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
  call void @freeNode.139(%struct.list_node* %8)
  br label %9

; <label>:9                                       ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeNode.139(%struct.list_node* %nodePtr) #11 {
  %1 = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = bitcast %struct.list_node* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plist_free(%struct.list* %listPtr) #11 {
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
define internal void @PfreeList(%struct.list_node* %nodePtr) #11 {
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
define internal void @PfreeNode(%struct.list_node* %nodePtr) #11 {
  %1 = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = bitcast %struct.list_node* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMlist_free(%struct.list* %listPtr) #11 {
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
define internal void @TMfreeList(%struct.list_node* %nodePtr) #11 {
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
define internal void @TMfreeNode(%struct.list_node* %nodePtr) #11 {
  %1 = alloca %struct.list_node*, align 8
  store %struct.list_node* %nodePtr, %struct.list_node** %1, align 8
  %2 = load %struct.list_node*, %struct.list_node** %1, align 8
  %3 = bitcast %struct.list_node* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @list_isEmpty(%struct.list* %listPtr) #11 {
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
define i64 @TMlist_isEmpty(%struct.list* %listPtr) #11 {
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
define i64 @list_getSize(%struct.list* %listPtr) #11 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 2
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @TMlist_getSize(%struct.list* %listPtr) #11 {
  %1 = alloca %struct.list*, align 8
  store %struct.list* %listPtr, %struct.list** %1, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 2
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind readonly uwtable
define i8* @list_find(%struct.list* %listPtr, i8* %dataPtr) #12 {
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
define internal %struct.list_node* @findPrevious(%struct.list* %listPtr, i8* %dataPtr) #11 {
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
define i8* @TMlist_find(%struct.list* %listPtr, i8* %dataPtr) #11 {
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
define internal %struct.list_node* @TMfindPrevious(%struct.list* %listPtr, i8* %dataPtr) #11 {
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
define i64 @list_insert(%struct.list* %listPtr, i8* %dataPtr) #11 {
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
  %11 = call %struct.list_node* @allocNode.148(i8* %10)
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
define internal %struct.list_node* @allocNode.148(i8* %dataPtr) #11 {
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
define i64 @Plist_insert(%struct.list* %listPtr, i8* %dataPtr) #11 {
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
define internal %struct.list_node* @PallocNode(i8* %dataPtr) #11 {
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
define i64 @TMlist_insert(%struct.list* %listPtr, i8* %dataPtr) #11 {
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
define internal %struct.list_node* @TMallocNode(i8* %dataPtr) #11 {
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
define i64 @list_remove(%struct.list* %listPtr, i8* %dataPtr) #11 {
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
  call void @freeNode.139(%struct.list_node* %30)
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.154, i32 0, i32 0), i32 703, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.list_remove, i32 0, i32 0)) #17
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
define i64 @Plist_remove(%struct.list* %listPtr, i8* %dataPtr) #11 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.154, i32 0, i32 0), i32 732, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Plist_remove, i32 0, i32 0)) #17
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
define i64 @TMlist_remove(%struct.list* %listPtr, i8* %dataPtr) #11 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.154, i32 0, i32 0), i32 761, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMlist_remove, i32 0, i32 0)) #17
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
define void @list_clear(%struct.list* %listPtr) #11 {
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
define void @Plist_clear(%struct.list* %listPtr) #11 {
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
define void @init_genrand(i64* %mt, i64* %mtiPtr, i64 %s) #11 {
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
define void @init_by_array(i64* %mt, i64* %mtiPtr, i64* %init_key, i64 %key_length) #11 {
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
define i64 @genrand_int32(i64* %mt, i64* %mtiPtr) #11 {
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
define i64 @genrand_int31(i64* %mt, i64* %mtiPtr) #11 {
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
define double @genrand_real1(i64* %mt, i64* %mtiPtr) #11 {
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
define double @genrand_real2(i64* %mt, i64* %mtiPtr) #11 {
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
define double @genrand_real3(i64* %mt, i64* %mtiPtr) #11 {
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
define double @genrand_res53(i64* %mt, i64* %mtiPtr) #11 {
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
define %struct.queue* @queue_alloc(i64 %initCapacity) #11 {
  %1 = alloca %struct.queue*, align 8
  %2 = alloca i64, align 8
  %queuePtr = alloca %struct.queue*, align 8
  %capacity = alloca i64, align 8
  store i64 %initCapacity, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #6
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
  %17 = call noalias i8* @malloc(i64 %16) #6
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
  call void @free(i8* %27) #6
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
define %struct.queue* @Pqueue_alloc(i64 %initCapacity) #11 {
  %1 = alloca %struct.queue*, align 8
  %2 = alloca i64, align 8
  %queuePtr = alloca %struct.queue*, align 8
  %capacity = alloca i64, align 8
  store i64 %initCapacity, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #6
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
  %17 = call noalias i8* @malloc(i64 %16) #6
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
  call void @free(i8* %27) #6
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
define %struct.queue* @TMqueue_alloc(i64 %initCapacity) #11 {
  %1 = alloca %struct.queue*, align 8
  %2 = alloca i64, align 8
  %queuePtr = alloca %struct.queue*, align 8
  %capacity = alloca i64, align 8
  store i64 %initCapacity, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #6
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
  %17 = call noalias i8* @malloc(i64 %16) #6
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
  call void @free(i8* %27) #6
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
define void @queue_free(%struct.queue* %queuePtr) #11 {
  %1 = alloca %struct.queue*, align 8
  store %struct.queue* %queuePtr, %struct.queue** %1, align 8
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = getelementptr inbounds %struct.queue, %struct.queue* %2, i32 0, i32 3
  %4 = load i8**, i8*** %3, align 8
  %5 = bitcast i8** %4 to i8*
  call void @free(i8* %5) #6
  %6 = load %struct.queue*, %struct.queue** %1, align 8
  %7 = bitcast %struct.queue* %6 to i8*
  call void @free(i8* %7) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @Pqueue_free(%struct.queue* %queuePtr) #11 {
  %1 = alloca %struct.queue*, align 8
  store %struct.queue* %queuePtr, %struct.queue** %1, align 8
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = getelementptr inbounds %struct.queue, %struct.queue* %2, i32 0, i32 3
  %4 = load i8**, i8*** %3, align 8
  %5 = bitcast i8** %4 to i8*
  call void @free(i8* %5) #6
  %6 = load %struct.queue*, %struct.queue** %1, align 8
  %7 = bitcast %struct.queue* %6 to i8*
  call void @free(i8* %7) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMqueue_free(%struct.queue* %queuePtr) #11 {
  %1 = alloca %struct.queue*, align 8
  store %struct.queue* %queuePtr, %struct.queue** %1, align 8
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = getelementptr inbounds %struct.queue, %struct.queue* %2, i32 0, i32 3
  %4 = load i8**, i8*** %3, align 8
  %5 = bitcast i8** %4 to i8*
  call void @free(i8* %5) #6
  %6 = load %struct.queue*, %struct.queue** %1, align 8
  %7 = bitcast %struct.queue* %6 to i8*
  call void @free(i8* %7) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @queue_isEmpty(%struct.queue* %queuePtr) #11 {
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
define void @queue_clear(%struct.queue* %queuePtr) #11 {
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
define i64 @TMqueue_isEmpty(%struct.queue* %queuePtr) #11 {
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
define void @queue_shuffle(%struct.queue* %queuePtr, %struct.random* %randomPtr) #11 {
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
define i64 @queue_push(%struct.queue* %queuePtr, i8* %dataPtr) #11 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.172, i32 0, i32 0), i32 290, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.queue_push, i32 0, i32 0)) #17
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
  %32 = call noalias i8* @malloc(i64 %31) #6
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
  call void @free(i8* %106) #6
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
define i64 @Pqueue_push(%struct.queue* %queuePtr, i8* %dataPtr) #11 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.172, i32 0, i32 0), i32 345, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Pqueue_push, i32 0, i32 0)) #17
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
  %32 = call noalias i8* @malloc(i64 %31) #6
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
  call void @free(i8* %106) #6
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
define i64 @TMqueue_push(%struct.queue* %queuePtr, i8* %dataPtr) #11 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.172, i32 0, i32 0), i32 401, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMqueue_push, i32 0, i32 0)) #17
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
  %37 = call noalias i8* @malloc(i64 %36) #6
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
  call void @free(i8* %111) #6
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
define i8* @queue_pop(%struct.queue* %queuePtr) #11 {
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
define i8* @TMqueue_pop(%struct.queue* %queuePtr) #11 {
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
define %struct.random* @random_alloc() #11 {
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
define %struct.random* @Prandom_alloc() #11 {
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
define void @random_free(%struct.random* %randomPtr) #11 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @Prandom_free(%struct.random* %randomPtr) #11 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @random_seed(%struct.random* %randomPtr, i64 %seed) #11 {
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
define i64 @random_generate(%struct.random* %randomPtr) #11 {
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
define void @RTM_output_stats() #11 {
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define void @init_one_perfcounter(i32 %number, i64 %whatToMeasure) #13 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #17
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.191, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #17
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.191, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #17
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
declare i64 @lseek(i32, i64, i32) #14

declare i64 @write(i32, i8*, i64) #15

; Function Attrs: inlinehint nounwind uwtable
define void @read_one_perfcounter(i32 %number, i32* %whereToPut) #13 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.192, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 189, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #17
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.191, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #17
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

declare i64 @read(i32, i8*, i64) #15

; Function Attrs: nounwind uwtable
define void @RTM_init_perfcounters() #11 {
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
define void @RTM_update_perfcounters(i32 %i) #11 {
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
define void @RTM_spinlock_init() #13 {
  store i64* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @RTM_lock_array, i64 0, i64 64) to i64*), i64** @RTM_fallBackLock, align 8
  %1 = load i64*, i64** @RTM_fallBackLock, align 8
  store volatile i64 0, i64* %1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define i64 @RTM_fallback_isLocked() #13 {
  %1 = load i64*, i64** @RTM_fallBackLock, align 8
  %2 = load volatile i64, i64* %1, align 8
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = sext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: inlinehint nounwind uwtable
define void @RTM_fallback_whileIsLocked() #13 {
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
define void @RTM_fallback_lock() #13 {
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
define void @RTM_fallback_unlock() #13 {
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !24
  %1 = load i64*, i64** @RTM_fallBackLock, align 8
  store volatile i64 0, i64* %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @update_reasons(i32 %status, i32 %i) #11 {
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
define i64 @determineNumProcs() #11 {
  %bitmask = alloca i64, align 8
  %num_procs = alloca i32, align 4
  %err = alloca i32, align 4
  %available_procs = alloca %struct.cpu_set_t, align 8
  %1 = call i64 @pthread_self() #18
  %2 = call i32 @pthread_getaffinity_np(i64 %1, i64 128, %struct.cpu_set_t* %available_procs) #6
  store i32 %2, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.201, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.determineNumProcs, i32 0, i32 0)) #17
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
declare i64 @pthread_self() #16

; Function Attrs: nounwind
declare i32 @pthread_getaffinity_np(i64, i64, %struct.cpu_set_t*) #14

; Function Attrs: nounwind uwtable
define void @thread_startup(i64 %numThread) #11 {
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
  %4 = call i32 @pthread_getaffinity_np(i64 %3, i64 128, %struct.cpu_set_t* %available_procs) #6
  store i32 %4, i32* %err, align 4
  %5 = load i32, i32* %err, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.201, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #17
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
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.204, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 463, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #17
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
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.207, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 465, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #17
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
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7.208, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #17
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
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8.209, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 486, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #17
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
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9.210, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 492, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #17
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
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10.211, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 494, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #17
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
define %struct.thread_barrier* @thread_barrier_alloc(i64 %numThread) #11 {
  %1 = alloca i64, align 8
  %barrierPtr = alloca %struct.thread_barrier*, align 8
  store i64 %numThread, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %7

; <label>:5                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.205, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 570, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #17
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
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12.206, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 571, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #17
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
define void @thread_barrier_init(%struct.thread_barrier* %barrierPtr) #11 {
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
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #14

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_mutexattr_t*) #14

; Function Attrs: nounwind
declare i32 @pthread_key_create(i32*, void (i8*)*) #14

; Function Attrs: nounwind
declare i32 @pthread_attr_init(%union.pthread_attr_t*) #14

; Function Attrs: nounwind uwtable
define internal void @threadWait(i8* %argPtr) #11 {
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
declare i32 @pthread_setspecific(i32, i8*) #14

; Function Attrs: nounwind uwtable
define void @thread_barrier(%struct.thread_barrier* %barrierPtr, i64 %threadId) #11 {
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
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #14

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #14

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(%union.pthread_cond_t*) #14

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #14

; Function Attrs: nounwind uwtable
define void @thread_start(void (i8*)* %funcPtr, i8* %argPtr) #11 {
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
define void @thread_shutdown() #11 {
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

declare i32 @pthread_join(i64, i8**) #15

; Function Attrs: nounwind uwtable
define void @thread_barrier_free(%struct.thread_barrier* %barrierPtr) #11 {
  %1 = alloca %struct.thread_barrier*, align 8
  store %struct.thread_barrier* %barrierPtr, %struct.thread_barrier** %1, align 8
  %2 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %3 = bitcast %struct.thread_barrier* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @thread_getId() #11 {
  %1 = load i32, i32* @global_threadId, align 4
  %2 = call i8* @pthread_getspecific(i32 %1) #6
  %3 = ptrtoint i8* %2 to i64
  ret i64 %3
}

; Function Attrs: nounwind
declare i8* @pthread_getspecific(i32) #14

; Function Attrs: nounwind uwtable
define i64 @thread_getNumThread() #11 {
  %1 = load i64, i64* @global_numThread, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define void @thread_barrier_wait() #11 {
  %threadId = alloca i64, align 8
  %1 = call i64 @thread_getId()
  store i64 %1, i64* %threadId, align 8
  %2 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  %3 = load i64, i64* %threadId, align 8
  call void @thread_barrier(%struct.thread_barrier* %2, i64 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.vector* @vector_alloc(i64 %initCapacity) #11 {
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
define %struct.vector* @Pvector_alloc(i64 %initCapacity) #11 {
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
define void @vector_free(%struct.vector* %vectorPtr) #11 {
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
define void @Pvector_free(%struct.vector* %vectorPtr) #11 {
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
define i8* @vector_at(%struct.vector* %vectorPtr, i64 %i) #11 {
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
define i64 @vector_pushBack(%struct.vector* %vectorPtr, i8* %dataPtr) #11 {
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
define i64 @Pvector_pushBack(%struct.vector* %vectorPtr, i8* %dataPtr) #11 {
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
define i8* @vector_popBack(%struct.vector* %vectorPtr) #11 {
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
define i64 @vector_getSize(%struct.vector* %vectorPtr) #11 {
  %1 = alloca %struct.vector*, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %1, align 8
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @vector_clear(%struct.vector* %vectorPtr) #11 {
  %1 = alloca %struct.vector*, align 8
  store %struct.vector* %vectorPtr, %struct.vector** %1, align 8
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 0
  store i64 0, i64* %3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @vector_sort(%struct.vector* %vectorPtr, i32 (i8*, i8*)* %compare) #11 {
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

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #15

; Function Attrs: nounwind uwtable
define i64 @vector_copy(%struct.vector* %dstVectorPtr, %struct.vector* %srcVectorPtr) #11 {
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
define i64 @Pvector_copy(%struct.vector* %dstVectorPtr, %struct.vector* %srcVectorPtr) #11 {
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
define i64 @memory_init(i64 %numThread, i64 %initBlockCapacity, i64 %blockGrowthFactor) #11 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.247, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.memory_init, i32 0, i32 0)) #17
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
define internal %struct.pool* @allocPool(i64 %initBlockCapacity, i64 %blockGrowthFactor) #11 {
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
define internal %struct.block* @allocBlock(i64 %capacity) #11 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.248, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.247, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.allocBlock, i32 0, i32 0)) #17
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
define void @memory_destroy() #11 {
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
define internal void @freePool(%struct.pool* %poolPtr) #11 {
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
define internal void @freeBlocks(%struct.block* %blockPtr) #11 {
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
define internal void @freeBlock(%struct.block* %blockPtr) #11 {
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
define i8* @memory_get(i64 %threadId, i64 %numByte) #11 {
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
define internal i8* @getMemoryFromPool(%struct.pool* %poolPtr, i64 %numByte) #11 {
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
define internal %struct.block* @addBlockToPool(%struct.pool* %poolPtr, i64 %numByte) #11 {
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
define internal i8* @getMemoryFromBlock(%struct.block* %blockPtr, i64 %numByte) #11 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.249, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.247, i32 0, i32 0), i32 304, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getMemoryFromBlock, i32 0, i32 0)) #17
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
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { argmemonly nounwind }
attributes #8 = { alwaysinline nounwind }
attributes #9 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145830713, i32 -2145830677, i32 -2145830653}
!2 = !{i32 -2146008866, i32 -2146008830, i32 -2146008806}
!3 = !{i32 1711916, i32 1711932, i32 1711968, i32 1712004, i32 1712040}
!4 = !{i32 1712517, i32 1712532, i32 1712566}
!5 = !{i32 1712288, i32 1712303, i32 1712331}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.vectorize.width", i32 1337}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.vectorize.width", i32 1}
!11 = !{!"llvm.loop.interleave.count", i32 1}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !10, !11}
!24 = !{i32 11658}
