; ModuleID = 'llvm-link'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.manager = type { %struct.rbtree*, %struct.rbtree*, %struct.rbtree*, %struct.rbtree* }
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
%struct.client = type { i64, %struct.manager*, %struct.random*, i64, i64, i64, i64 }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.customer = type { i64, %struct.list* }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.reservation_info = type { i32, i64, i64 }
%struct.reservation = type { i64, i64, i64, i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.pair = type { i8*, i8* }
%struct.cpu_set_t = type { [16 x i64] }
%union.pthread_mutexattr_t = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"client.c\00", align 1
@__PRETTY_FUNCTION__.client_run = private unnamed_addr constant [24 x i8] c"void client_run(void *)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"customerPtr != NULL\00", align 1
@.str.1.3 = private unnamed_addr constant [11 x i8] c"customer.c\00", align 1
@__PRETTY_FUNCTION__.customer_alloc = private unnamed_addr constant [33 x i8] c"customer_t *customer_alloc(long)\00", align 1
@.str.2.4 = private unnamed_addr constant [44 x i8] c"customerPtr->reservationInfoListPtr != NULL\00", align 1
@__PRETTY_FUNCTION__.customer_alloc_seq = private unnamed_addr constant [37 x i8] c"customer_t *customer_alloc_seq(long)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"reservationInfoPtr != NULL\00", align 1
@__PRETTY_FUNCTION__.customer_addReservationInfo = private unnamed_addr constant [81 x i8] c"bool_t customer_addReservationInfo(customer_t *, reservation_type_t, long, long)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"managerPtr != NULL\00", align 1
@.str.1.6 = private unnamed_addr constant [10 x i8] c"manager.c\00", align 1
@__PRETTY_FUNCTION__.manager_alloc = private unnamed_addr constant [27 x i8] c"manager_t *manager_alloc()\00", align 1
@.str.2.7 = private unnamed_addr constant [32 x i8] c"managerPtr->carTablePtr != NULL\00", align 1
@.str.3.8 = private unnamed_addr constant [33 x i8] c"managerPtr->roomTablePtr != NULL\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"managerPtr->flightTablePtr != NULL\00", align 1
@.str.5.9 = private unnamed_addr constant [37 x i8] c"managerPtr->customerTablePtr != NULL\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"reservationPtr != NULL\00", align 1
@__PRETTY_FUNCTION__.addReservation = private unnamed_addr constant [52 x i8] c"bool_t addReservation(rbtree_t *, long, long, long)\00", align 1
@__PRETTY_FUNCTION__.addReservation_seq = private unnamed_addr constant [56 x i8] c"bool_t addReservation_seq(rbtree_t *, long, long, long)\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"customerPtr != NULL\00", align 1
@__PRETTY_FUNCTION__.manager_addCustomer = private unnamed_addr constant [46 x i8] c"bool_t manager_addCustomer(manager_t *, long)\00", align 1
@__PRETTY_FUNCTION__.manager_addCustomer_seq = private unnamed_addr constant [50 x i8] c"bool_t manager_addCustomer_seq(manager_t *, long)\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"reservationPtr->numUsed >= 0\00", align 1
@.str.1.57 = private unnamed_addr constant [14 x i8] c"reservation.c\00", align 1
@__PRETTY_FUNCTION__.checkReservation_seq = private unnamed_addr constant [43 x i8] c"void checkReservation_seq(reservation_t *)\00", align 1
@.str.2.58 = private unnamed_addr constant [29 x i8] c"reservationPtr->numFree >= 0\00", align 1
@.str.3.59 = private unnamed_addr constant [30 x i8] c"reservationPtr->numTotal >= 0\00", align 1
@.str.4.60 = private unnamed_addr constant [82 x i8] c"(reservationPtr->numUsed + reservationPtr->numFree) == (reservationPtr->numTotal)\00", align 1
@.str.5.61 = private unnamed_addr constant [27 x i8] c"reservationPtr->price >= 0\00", align 1
@global_params = common global [256 x double] zeroinitializer, align 16
@.str.76 = private unnamed_addr constant [20 x i8] c"Checking tables... \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1.77 = private unnamed_addr constant [31 x i8] c"!MAP_FIND(customerTablePtr, i)\00", align 1
@.str.2.78 = private unnamed_addr constant [11 x i8] c"vacation.c\00", align 1
@__PRETTY_FUNCTION__.checkTables = private unnamed_addr constant [30 x i8] c"void checkTables(manager_t *)\00", align 1
@.str.3.79 = private unnamed_addr constant [36 x i8] c"manager_add[t](managerPtr, i, 0, 0)\00", align 1
@.str.4.80 = private unnamed_addr constant [25 x i8] c"!MAP_REMOVE(tablePtr, i)\00", align 1
@.str.5.81 = private unnamed_addr constant [6 x i8] c"done.\00", align 1
@opterr = external global i32, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"c:n:q:r:t:u:\00", align 1
@optarg = external global i8*, align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"\0AOptions:                                             (defaults)\0A\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"    c <UINT>   Number of [c]lients                   (%i)\0A\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"    n <UINT>   [n]umber of user queries/transaction  (%i)\0A\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"    q <UINT>   Percentage of relations [q]ueried     (%i)\0A\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"    r <UINT>   Number of possible [r]elations        (%i)\0A\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"    t <UINT>   Number of [t]ransactions              (%i)\0A\00", align 1
@.str.24 = private unnamed_addr constant [59 x i8] c"    u <UINT>   Percentage of [u]ser transactions     (%i)\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Initializing manager... \00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"randomPtr != NULL\00", align 1
@__PRETTY_FUNCTION__.initializeManager = private unnamed_addr constant [31 x i8] c"manager_t *initializeManager()\00", align 1
@.str.6.82 = private unnamed_addr constant [19 x i8] c"managerPtr != NULL\00", align 1
@initializeManager.manager_add = private unnamed_addr constant [4 x i64 (%struct.manager*, i64, i64, i64)*] [i64 (%struct.manager*, i64, i64, i64)* @manager_addCar_seq, i64 (%struct.manager*, i64, i64, i64)* @manager_addFlight_seq, i64 (%struct.manager*, i64, i64, i64)* @manager_addRoom_seq, i64 (%struct.manager*, i64, i64, i64)* @addCustomer], align 16
@.str.27 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Initializing clients... \00", align 1
@__PRETTY_FUNCTION__.initializeClients = private unnamed_addr constant [42 x i8] c"client_t **initializeClients(manager_t *)\00", align 1
@.str.7.83 = private unnamed_addr constant [16 x i8] c"clients != NULL\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"clients[i] != NULL\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"    Transactions        = %li\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"    Clients             = %li\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"    Transactions/client = %li\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"    Queries/transaction = %li\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"    Relations           = %li\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"    Query percent       = %li\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"    Query range         = %li\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"    Percent user        = %li\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Running clients... \00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Time = %0.6lf\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Deallocating memory... \00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"listPtr->size >= 0\00", align 1
@.str.1.101 = private unnamed_addr constant [7 x i8] c"list.c\00", align 1
@__PRETTY_FUNCTION__.list_remove = private unnamed_addr constant [37 x i8] c"bool_t list_remove(list_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.Plist_remove = private unnamed_addr constant [38 x i8] c"bool_t Plist_remove(list_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.TMlist_remove = private unnamed_addr constant [39 x i8] c"bool_t TMlist_remove(list_t *, void *)\00", align 1
@genrand_int32.mag01 = internal global [2 x i64] [i64 0, i64 2567483615], align 16
@.str.112 = private unnamed_addr constant [18 x i8] c"Integrity check: \00", align 1
@.str.1.113 = private unnamed_addr constant [33 x i8] c"  (WARNING) root %lX parent=%lX\0A\00", align 1
@.str.2.114 = private unnamed_addr constant [32 x i8] c"  (WARNING) root %lX color=%lX\0A\00", align 1
@.str.3.115 = private unnamed_addr constant [12 x i8] c"Bad parent\0A\00", align 1
@.str.4.116 = private unnamed_addr constant [39 x i8] c"Key order %lX (%ld %ld) %lX (%ld %ld)\0A\00", align 1
@.str.6.117 = private unnamed_addr constant [33 x i8] c" Imbalance @depth=%ld : %ld %ld\0A\00", align 1
@.str.7.118 = private unnamed_addr constant [10 x i8] c" lineage\0A\00", align 1
@.str.8.119 = private unnamed_addr constant [11 x i8] c"VERIFY %d\0A\00", align 1
@.str.5.120 = private unnamed_addr constant [22 x i8] c" Nodes=%ld Depth=%ld\0A\00", align 1
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
@.str.147 = private unnamed_addr constant [11 x i8] c"offset > 0\00", align 1
@.str.1.148 = private unnamed_addr constant [9 x i8] c"thread.c\00", align 1
@__PRETTY_FUNCTION__.init_one_perfcounter = private unnamed_addr constant [46 x i8] c"void init_one_perfcounter(int, unsigned long)\00", align 1
@.str.2.149 = private unnamed_addr constant [8 x i8] c"ret > 0\00", align 1
@.str.3.150 = private unnamed_addr constant [9 x i8] c"offset>0\00", align 1
@__PRETTY_FUNCTION__.read_one_perfcounter = private unnamed_addr constant [47 x i8] c"void read_one_perfcounter(int, unsigned int *)\00", align 1
@M5_inSimulator = external global i32, align 4
@.str.4.159 = private unnamed_addr constant [9 x i8] c"err == 0\00", align 1
@__PRETTY_FUNCTION__.determineNumProcs = private unnamed_addr constant [25 x i8] c"long determineNumProcs()\00", align 1
@global_numThread = internal global i64 1, align 8
@global_doShutdown = internal global i64 0, align 8
@__PRETTY_FUNCTION__.thread_startup = private unnamed_addr constant [26 x i8] c"void thread_startup(long)\00", align 1
@global_barrierPtr = internal global %struct.thread_barrier* null, align 8
@.str.5.162 = private unnamed_addr constant [26 x i8] c"global_barrierPtr == NULL\00", align 1
@.str.11.163 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@__PRETTY_FUNCTION__.thread_barrier_alloc = private unnamed_addr constant [45 x i8] c"thread_barrier_t *thread_barrier_alloc(long)\00", align 1
@.str.12.164 = private unnamed_addr constant [35 x i8] c"(numThread & (numThread - 1)) == 0\00", align 1
@.str.6.165 = private unnamed_addr constant [18 x i8] c"global_barrierPtr\00", align 1
@global_threadId = internal global i32 0, align 4
@global_threadIds = internal global i64* null, align 8
@.str.7.166 = private unnamed_addr constant [25 x i8] c"global_threadIds == NULL\00", align 1
@.str.8.167 = private unnamed_addr constant [17 x i8] c"global_threadIds\00", align 1
@global_threads = internal global i64* null, align 8
@.str.9.168 = private unnamed_addr constant [23 x i8] c"global_threads == NULL\00", align 1
@.str.10.169 = private unnamed_addr constant [15 x i8] c"global_threads\00", align 1
@global_threadAttr = internal global %union.pthread_attr_t zeroinitializer, align 8
@global_funcPtr = internal global void (i8*)* null, align 8
@global_argPtr = internal global i8* null, align 8
@global_memoryPtr = global %struct.memory* null, align 8
@.str.176 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@.str.1.177 = private unnamed_addr constant [9 x i8] c"memory.c\00", align 1
@__PRETTY_FUNCTION__.memory_init = private unnamed_addr constant [39 x i8] c"bool_t memory_init(long, size_t, long)\00", align 1
@.str.2.178 = private unnamed_addr constant [13 x i8] c"capacity > 0\00", align 1
@__PRETTY_FUNCTION__.allocBlock = private unnamed_addr constant [28 x i8] c"block_t *allocBlock(size_t)\00", align 1
@.str.3.179 = private unnamed_addr constant [29 x i8] c"(size + numByte) <= capacity\00", align 1
@__PRETTY_FUNCTION__.getMemoryFromBlock = private unnamed_addr constant [44 x i8] c"void *getMemoryFromBlock(block_t *, size_t)\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.client* @client_alloc(i64 %id, %struct.manager* %managerPtr, i64 %numOperation, i64 %numQueryPerTransaction, i64 %queryRange, i64 %percentUser) #0 {
  %1 = tail call noalias i8* @malloc(i64 56) #4
  %2 = bitcast i8* %1 to %struct.client*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %21, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.random* (...) bitcast (%struct.random* ()* @random_alloc to %struct.random* (...)*)() #4
  %6 = getelementptr inbounds i8, i8* %1, i64 16
  %7 = bitcast i8* %6 to %struct.random**
  store %struct.random* %5, %struct.random** %7, align 8
  %8 = icmp eq %struct.random* %5, null
  br i1 %8, label %21, label %9

; <label>:9                                       ; preds = %4
  %10 = bitcast i8* %1 to i64*
  store i64 %id, i64* %10, align 8
  %11 = getelementptr inbounds i8, i8* %1, i64 8
  %12 = bitcast i8* %11 to %struct.manager**
  store %struct.manager* %managerPtr, %struct.manager** %12, align 8
  tail call void @random_seed(%struct.random* nonnull %5, i64 %id) #4
  %13 = getelementptr inbounds i8, i8* %1, i64 24
  %14 = bitcast i8* %13 to i64*
  store i64 %numOperation, i64* %14, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 32
  %16 = bitcast i8* %15 to i64*
  store i64 %numQueryPerTransaction, i64* %16, align 8
  %17 = getelementptr inbounds i8, i8* %1, i64 40
  %18 = bitcast i8* %17 to i64*
  store i64 %queryRange, i64* %18, align 8
  %19 = getelementptr inbounds i8, i8* %1, i64 48
  %20 = bitcast i8* %19 to i64*
  store i64 %percentUser, i64* %20, align 8
  br label %21

; <label>:21                                      ; preds = %9, %4, %0
  %.0 = phi %struct.client* [ %2, %9 ], [ null, %0 ], [ null, %4 ]
  ret %struct.client* %.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @client_free(%struct.client* nocapture %clientPtr) #0 {
  %1 = bitcast %struct.client* %clientPtr to i8*
  tail call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @client_run(i8* nocapture readonly %argPtr) #0 {
  %maxPrices = alloca [3 x i64], align 16
  %maxIds = alloca [3 x i64], align 16
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #4
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #4
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #4
  %5 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #4
  %6 = bitcast i8* %argPtr to %struct.client**
  %7 = getelementptr inbounds %struct.client*, %struct.client** %6, i64 %5
  %8 = load %struct.client*, %struct.client** %7, align 8
  %9 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 1
  %10 = load %struct.manager*, %struct.manager** %9, align 8
  %11 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 2
  %12 = load %struct.random*, %struct.random** %11, align 8
  %13 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = shl i64 %16, 3
  %22 = tail call noalias i8* @malloc(i64 %21) #4
  %23 = bitcast i8* %22 to i64*
  %24 = tail call noalias i8* @malloc(i64 %21) #4
  %25 = bitcast i8* %24 to i64*
  %26 = tail call noalias i8* @malloc(i64 %21) #4
  %27 = bitcast i8* %26 to i64*
  %28 = tail call noalias i8* @malloc(i64 %21) #4
  %29 = bitcast i8* %28 to i64*
  %30 = icmp sgt i64 %14, 0
  br i1 %30, label %.lr.ph31, label %.._crit_edge32_crit_edge

.._crit_edge32_crit_edge:                         ; preds = %0
  %.pre = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  br label %._crit_edge32

.lr.ph31:                                         ; preds = %0
  %31 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 0
  %32 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %33 = bitcast [3 x i64]* %maxPrices to i8*
  %34 = bitcast [3 x i64]* %maxIds to i8*
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 0
  %36 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 1
  %37 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 2
  br label %38

; <label>:38                                      ; preds = %226, %.lr.ph31
  %i.029 = phi i64 [ 0, %.lr.ph31 ], [ %227, %226 ]
  %39 = load i32, i32* %31, align 8
  %40 = tail call i32 @workBegin(i32 0, i32 %39) #4
  store i32 %40, i32* %32, align 4
  %41 = tail call i64 @random_generate(%struct.random* %12) #4
  %42 = urem i64 %41, 100
  %43 = icmp slt i64 %42, %20
  %r.tr.i = trunc i64 %42 to i32
  %44 = and i32 %r.tr.i, 1
  %45 = sub nsw i32 2, %44
  %action.0.i = select i1 %43, i32 0, i32 %45
  switch i32 %action.0.i, label %225 [
    i32 0, label %46
    i32 1, label %127
    i32 2, label %155
  ]

; <label>:46                                      ; preds = %38
  call void @llvm.memset.p0i8.i64(i8* %33, i8 -1, i64 24, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %34, i8 -1, i64 24, i32 16, i1 false)
  %47 = tail call i64 @random_generate(%struct.random* %12) #4
  %48 = urem i64 %47, %16
  %49 = add i64 %48, 1
  %50 = tail call i64 @random_generate(%struct.random* %12) #4
  %51 = urem i64 %50, %18
  %52 = add i64 %51, 1
  %53 = icmp sgt i64 %49, 0
  br i1 %53, label %.lr.ph22.preheader, label %.outer.preheader

.lr.ph22.preheader:                               ; preds = %46
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22, %.lr.ph22.preheader
  %n.020 = phi i64 [ %61, %.lr.ph22 ], [ 0, %.lr.ph22.preheader ]
  %54 = tail call i64 @random_generate(%struct.random* %12) #4
  %55 = urem i64 %54, 3
  %56 = getelementptr inbounds i64, i64* %23, i64 %n.020
  store i64 %55, i64* %56, align 8
  %57 = tail call i64 @random_generate(%struct.random* %12) #4
  %58 = urem i64 %57, %18
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds i64, i64* %25, i64 %n.020
  store i64 %59, i64* %60, align 8
  %61 = add nuw nsw i64 %n.020, 1
  %exitcond39 = icmp eq i64 %61, %49
  br i1 %exitcond39, label %.outer.preheader.loopexit, label %.lr.ph22

.outer.preheader.loopexit:                        ; preds = %.lr.ph22
  br label %.outer.preheader

.outer.preheader:                                 ; preds = %.outer.preheader.loopexit, %46
  br label %.outer

.lr.ph23:                                         ; preds = %.lr.ph23.preheader, %.lr.ph23
  tail call void @llvm.x86.sse2.pause() #4
  %62 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #4
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %._crit_edge24.loopexit, label %.lr.ph23

._crit_edge24.loopexit:                           ; preds = %.lr.ph23
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %.outer, %._crit_edge24.loopexit
  %64 = icmp slt i32 %tries.0.ph, 2
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %._crit_edge24
  %tries.0.ph.lcssa = phi i32 [ %tries.0.ph, %._crit_edge24 ]
  tail call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #4
  br label %.preheader

; <label>:66                                      ; preds = %._crit_edge24
  %67 = add nsw i32 %tries.0.ph, -1
  %68 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #4, !srcloc !1
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %73, label %.outer

.outer:                                           ; preds = %66, %.outer.preheader
  %tries.0.ph = phi i32 [ %67, %66 ], [ 9, %.outer.preheader ]
  %71 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #4
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %._crit_edge24, label %.lr.ph23.preheader

.lr.ph23.preheader:                               ; preds = %.outer
  br label %.lr.ph23

; <label>:73                                      ; preds = %66
  %tries.0.ph.lcssa62 = phi i32 [ %tries.0.ph, %66 ]
  %74 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #4
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %.preheader, label %76

; <label>:76                                      ; preds = %73
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %.preheader

.preheader:                                       ; preds = %76, %73, %65
  %tries.0.ph63 = phi i32 [ %tries.0.ph.lcssa62, %73 ], [ %tries.0.ph.lcssa62, %76 ], [ %tries.0.ph.lcssa, %65 ]
  br i1 %53, label %.lr.ph27.preheader, label %._crit_edge28.thread

.lr.ph27.preheader:                               ; preds = %.preheader
  br label %.lr.ph27

.lr.ph27:                                         ; preds = %103, %.lr.ph27.preheader
  %n.126 = phi i64 [ %104, %103 ], [ 0, %.lr.ph27.preheader ]
  %isFound.025 = phi i64 [ %isFound.1, %103 ], [ 0, %.lr.ph27.preheader ]
  %77 = getelementptr inbounds i64, i64* %23, i64 %n.126
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i64, i64* %25, i64 %n.126
  %80 = load i64, i64* %79, align 8
  switch i64 %78, label %96 [
    i64 0, label %81
    i64 1, label %86
    i64 2, label %91
  ]

; <label>:81                                      ; preds = %.lr.ph27
  %82 = tail call i64 @manager_queryCar(%struct.manager* %10, i64 %80) #15
  %83 = icmp sgt i64 %82, -1
  br i1 %83, label %84, label %97

; <label>:84                                      ; preds = %81
  %85 = tail call i64 @manager_queryCarPrice(%struct.manager* %10, i64 %80) #4
  br label %97

; <label>:86                                      ; preds = %.lr.ph27
  %87 = tail call i64 @manager_queryFlight(%struct.manager* %10, i64 %80) #15
  %88 = icmp sgt i64 %87, -1
  br i1 %88, label %89, label %97

; <label>:89                                      ; preds = %86
  %90 = tail call i64 @manager_queryFlightPrice(%struct.manager* %10, i64 %80) #4
  br label %97

; <label>:91                                      ; preds = %.lr.ph27
  %92 = tail call i64 @manager_queryRoom(%struct.manager* %10, i64 %80) #15
  %93 = icmp sgt i64 %92, -1
  br i1 %93, label %94, label %97

; <label>:94                                      ; preds = %91
  %95 = tail call i64 @manager_queryRoomPrice(%struct.manager* %10, i64 %80) #4
  br label %97

; <label>:96                                      ; preds = %.lr.ph27
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 220, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i64 0, i64 0)) #16
  unreachable

; <label>:97                                      ; preds = %94, %91, %89, %86, %84, %81
  %price.0 = phi i64 [ %95, %94 ], [ -1, %91 ], [ %90, %89 ], [ -1, %86 ], [ %85, %84 ], [ -1, %81 ]
  %98 = getelementptr inbounds [3 x i64], [3 x i64]* %maxPrices, i64 0, i64 %78
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %price.0, %99
  br i1 %100, label %101, label %103

; <label>:101                                     ; preds = %97
  store i64 %price.0, i64* %98, align 8
  %102 = getelementptr inbounds [3 x i64], [3 x i64]* %maxIds, i64 0, i64 %78
  store i64 %80, i64* %102, align 8
  br label %103

; <label>:103                                     ; preds = %101, %97
  %isFound.1 = phi i64 [ 1, %101 ], [ %isFound.025, %97 ]
  %104 = add nuw nsw i64 %n.126, 1
  %105 = icmp slt i64 %104, %49
  br i1 %105, label %.lr.ph27, label %._crit_edge28, !llvm.loop !3

._crit_edge28:                                    ; preds = %103
  %isFound.1.lcssa = phi i64 [ %isFound.1, %103 ]
  %106 = icmp eq i64 %isFound.1.lcssa, 0
  br i1 %106, label %._crit_edge28.thread, label %107

; <label>:107                                     ; preds = %._crit_edge28
  %108 = tail call i64 @manager_addCustomer(%struct.manager* %10, i64 %52) #4
  br label %._crit_edge28.thread

._crit_edge28.thread:                             ; preds = %107, %._crit_edge28, %.preheader
  %109 = load i64, i64* %35, align 16
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %113

; <label>:111                                     ; preds = %._crit_edge28.thread
  %112 = tail call i64 @manager_reserveCar(%struct.manager* %10, i64 %52, i64 %109) #4
  br label %113

; <label>:113                                     ; preds = %111, %._crit_edge28.thread
  %114 = load i64, i64* %36, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %118

; <label>:116                                     ; preds = %113
  %117 = tail call i64 @manager_reserveFlight(%struct.manager* %10, i64 %52, i64 %114) #4
  br label %118

; <label>:118                                     ; preds = %116, %113
  %119 = load i64, i64* %37, align 16
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %123

; <label>:121                                     ; preds = %118
  %122 = tail call i64 @manager_reserveRoom(%struct.manager* %10, i64 %52, i64 %119) #4
  br label %123

; <label>:123                                     ; preds = %121, %118
  %124 = icmp sgt i32 %tries.0.ph63, 1
  br i1 %124, label %125, label %126

; <label>:125                                     ; preds = %123
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #4, !srcloc !5
  br label %226

; <label>:126                                     ; preds = %123
  tail call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #4
  br label %226

; <label>:127                                     ; preds = %38
  %128 = tail call i64 @random_generate(%struct.random* %12) #4
  %129 = urem i64 %128, %18
  %130 = add i64 %129, 1
  br label %.outer2

.outer2:                                          ; preds = %137, %127
  %tries3.0.ph = phi i32 [ %138, %137 ], [ 9, %127 ]
  %131 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #4
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %._crit_edge19, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %.outer2
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18, %.lr.ph18.preheader
  tail call void @llvm.x86.sse2.pause() #4
  %133 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #4
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %._crit_edge19.loopexit, label %.lr.ph18

._crit_edge19.loopexit:                           ; preds = %.lr.ph18
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %._crit_edge19.loopexit, %.outer2
  %135 = icmp slt i32 %tries3.0.ph, 2
  br i1 %135, label %136, label %137

; <label>:136                                     ; preds = %._crit_edge19
  %tries3.0.ph.lcssa = phi i32 [ %tries3.0.ph, %._crit_edge19 ]
  tail call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #4
  br label %146

; <label>:137                                     ; preds = %._crit_edge19
  %138 = add nsw i32 %tries3.0.ph, -1
  %139 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #4, !srcloc !1
  %140 = trunc i64 %139 to i32
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %.outer2

; <label>:142                                     ; preds = %137
  %tries3.0.ph.lcssa60 = phi i32 [ %tries3.0.ph, %137 ]
  %143 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #4
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %146, label %145

; <label>:145                                     ; preds = %142
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %146

; <label>:146                                     ; preds = %145, %142, %136
  %tries3.0.ph61 = phi i32 [ %tries3.0.ph.lcssa60, %142 ], [ %tries3.0.ph.lcssa60, %145 ], [ %tries3.0.ph.lcssa, %136 ]
  %147 = tail call i64 @manager_queryCustomerBill(%struct.manager* %10, i64 %130) #4
  %148 = icmp sgt i64 %147, -1
  br i1 %148, label %149, label %151

; <label>:149                                     ; preds = %146
  %150 = tail call i64 @manager_deleteCustomer(%struct.manager* %10, i64 %130) #4
  br label %151

; <label>:151                                     ; preds = %149, %146
  %152 = icmp sgt i32 %tries3.0.ph61, 1
  br i1 %152, label %153, label %154

; <label>:153                                     ; preds = %151
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #4, !srcloc !5
  br label %226

; <label>:154                                     ; preds = %151
  tail call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #4
  br label %226

; <label>:155                                     ; preds = %38
  %156 = tail call i64 @random_generate(%struct.random* %12) #4
  %157 = urem i64 %156, %16
  %158 = add i64 %157, 1
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %.lr.ph.preheader, label %.outer5.preheader

.lr.ph.preheader:                                 ; preds = %155
  br label %.lr.ph

.lr.ph:                                           ; preds = %177, %.lr.ph.preheader
  %n4.013 = phi i64 [ %178, %177 ], [ 0, %.lr.ph.preheader ]
  %160 = tail call i64 @random_generate(%struct.random* %12) #4
  %161 = urem i64 %160, 3
  %162 = getelementptr inbounds i64, i64* %23, i64 %n4.013
  store i64 %161, i64* %162, align 8
  %163 = tail call i64 @random_generate(%struct.random* %12) #4
  %164 = urem i64 %163, %18
  %165 = add i64 %164, 1
  %166 = getelementptr inbounds i64, i64* %25, i64 %n4.013
  store i64 %165, i64* %166, align 8
  %167 = tail call i64 @random_generate(%struct.random* %12) #4
  %168 = and i64 %167, 1
  %169 = getelementptr inbounds i64, i64* %27, i64 %n4.013
  store i64 %168, i64* %169, align 8
  %170 = icmp eq i64 %168, 0
  br i1 %170, label %177, label %171

; <label>:171                                     ; preds = %.lr.ph
  %172 = tail call i64 @random_generate(%struct.random* %12) #4
  %173 = urem i64 %172, 5
  %174 = mul nuw nsw i64 %173, 10
  %175 = add nuw nsw i64 %174, 50
  %176 = getelementptr inbounds i64, i64* %29, i64 %n4.013
  store i64 %175, i64* %176, align 8
  br label %177

; <label>:177                                     ; preds = %171, %.lr.ph
  %178 = add nuw nsw i64 %n4.013, 1
  %exitcond = icmp eq i64 %178, %158
  br i1 %exitcond, label %.outer5.preheader.loopexit, label %.lr.ph

.outer5.preheader.loopexit:                       ; preds = %177
  br label %.outer5.preheader

.outer5.preheader:                                ; preds = %.outer5.preheader.loopexit, %155
  br label %.outer5

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %.lr.ph14
  tail call void @llvm.x86.sse2.pause() #4
  %179 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #4
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %._crit_edge.loopexit, label %.lr.ph14

._crit_edge.loopexit:                             ; preds = %.lr.ph14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.outer5, %._crit_edge.loopexit
  %181 = icmp slt i32 %tries6.0.ph, 2
  br i1 %181, label %182, label %183

; <label>:182                                     ; preds = %._crit_edge
  %tries6.0.ph.lcssa = phi i32 [ %tries6.0.ph, %._crit_edge ]
  tail call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #4
  br label %.preheader3

; <label>:183                                     ; preds = %._crit_edge
  %184 = add nsw i32 %tries6.0.ph, -1
  %185 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #4, !srcloc !1
  %186 = trunc i64 %185 to i32
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %190, label %.outer5

.outer5:                                          ; preds = %183, %.outer5.preheader
  %tries6.0.ph = phi i32 [ %184, %183 ], [ 9, %.outer5.preheader ]
  %188 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #4
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %._crit_edge, label %.lr.ph14.preheader

.lr.ph14.preheader:                               ; preds = %.outer5
  br label %.lr.ph14

; <label>:190                                     ; preds = %183
  %tries6.0.ph.lcssa58 = phi i32 [ %tries6.0.ph, %183 ]
  %191 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #4
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %.preheader3, label %193

; <label>:193                                     ; preds = %190
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !2
  br label %.preheader3

.preheader3:                                      ; preds = %193, %190, %182
  %tries6.0.ph59 = phi i32 [ %tries6.0.ph.lcssa58, %190 ], [ %tries6.0.ph.lcssa58, %193 ], [ %tries6.0.ph.lcssa, %182 ]
  br i1 %159, label %.lr.ph16.preheader, label %._crit_edge17

.lr.ph16.preheader:                               ; preds = %.preheader3
  br label %.lr.ph16

.lr.ph16:                                         ; preds = %219, %.lr.ph16.preheader
  %n4.115 = phi i64 [ %220, %219 ], [ 0, %.lr.ph16.preheader ]
  %194 = getelementptr inbounds i64, i64* %23, i64 %n4.115
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i64, i64* %25, i64 %n4.115
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i64, i64* %27, i64 %n4.115
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %211, label %201

; <label>:201                                     ; preds = %.lr.ph16
  %202 = getelementptr inbounds i64, i64* %29, i64 %n4.115
  %203 = load i64, i64* %202, align 8
  switch i64 %195, label %210 [
    i64 0, label %204
    i64 1, label %206
    i64 2, label %208
  ]

; <label>:204                                     ; preds = %201
  %205 = tail call i64 @manager_addCar(%struct.manager* %10, i64 %197, i64 100, i64 %203) #4
  br label %219

; <label>:206                                     ; preds = %201
  %207 = tail call i64 @manager_addFlight(%struct.manager* %10, i64 %197, i64 100, i64 %203) #4
  br label %219

; <label>:208                                     ; preds = %201
  %209 = tail call i64 @manager_addRoom(%struct.manager* %10, i64 %197, i64 100, i64 %203) #4
  br label %219

; <label>:210                                     ; preds = %201
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 288, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i64 0, i64 0)) #16
  unreachable

; <label>:211                                     ; preds = %.lr.ph16
  switch i64 %195, label %218 [
    i64 0, label %212
    i64 1, label %214
    i64 2, label %216
  ]

; <label>:212                                     ; preds = %211
  %213 = tail call i64 @manager_deleteCar(%struct.manager* %10, i64 %197, i64 100) #4
  br label %219

; <label>:214                                     ; preds = %211
  %215 = tail call i64 @manager_deleteFlight(%struct.manager* %10, i64 %197) #4
  br label %219

; <label>:216                                     ; preds = %211
  %217 = tail call i64 @manager_deleteRoom(%struct.manager* %10, i64 %197, i64 100) #4
  br label %219

; <label>:218                                     ; preds = %211
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 302, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i64 0, i64 0)) #16
  unreachable

; <label>:219                                     ; preds = %216, %214, %212, %208, %206, %204
  %220 = add nuw nsw i64 %n4.115, 1
  %221 = icmp slt i64 %220, %158
  br i1 %221, label %.lr.ph16, label %._crit_edge17.loopexit, !llvm.loop !6

._crit_edge17.loopexit:                           ; preds = %219
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit, %.preheader3
  %222 = icmp sgt i32 %tries6.0.ph59, 1
  br i1 %222, label %223, label %224

; <label>:223                                     ; preds = %._crit_edge17
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #4, !srcloc !5
  br label %226

; <label>:224                                     ; preds = %._crit_edge17
  tail call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #4
  br label %226

; <label>:225                                     ; preds = %38
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 311, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.client_run, i64 0, i64 0)) #16
  unreachable

; <label>:226                                     ; preds = %224, %223, %154, %153, %126, %125
  tail call void @workEnd(i32 0, i32 0) #4
  %227 = add nuw nsw i64 %i.029, 1
  %228 = icmp slt i64 %227, %14
  br i1 %228, label %38, label %._crit_edge32.loopexit

._crit_edge32.loopexit:                           ; preds = %226
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.loopexit, %.._crit_edge32_crit_edge
  %.pre-phi = phi i32* [ %.pre, %.._crit_edge32_crit_edge ], [ %32, %._crit_edge32.loopexit ]
  %229 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #4
  %230 = trunc i64 %229 to i32
  %231 = load i32, i32* %.pre-phi, align 4
  tail call void @SimRoiEnd(i32 %230, i32 %231) #4
  ret void
}

declare void @SimRoiStart(i32) #2

declare i32 @workBegin(i32, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

declare void @workEnd(i32, i32) #2

declare void @SimRoiEnd(i32, i32) #2

; Function Attrs: nounwind uwtable
define noalias %struct.customer* @customer_alloc(i64 %id) #0 {
  %1 = tail call noalias i8* @malloc(i64 16) #4
  %2 = bitcast i8* %1 to %struct.customer*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.3, i64 0, i64 0), i32 105, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.customer_alloc, i64 0, i64 0)) #16
  unreachable

; <label>:5                                       ; preds = %0
  %6 = bitcast i8* %1 to i64*
  store i64 %id, i64* %6, align 8
  %7 = tail call %struct.list* @TMlist_alloc(i64 (i8*, i8*)* nonnull @compareReservationInfo) #4
  %8 = getelementptr inbounds i8, i8* %1, i64 8
  %9 = bitcast i8* %8 to %struct.list**
  store %struct.list* %7, %struct.list** %9, align 8
  %10 = icmp eq %struct.list* %7, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %5
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.3, i64 0, i64 0), i32 110, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.customer_alloc, i64 0, i64 0)) #16
  unreachable

; <label>:12                                      ; preds = %5
  ret %struct.customer* %2
}

; Function Attrs: nounwind uwtable
define internal i64 @compareReservationInfo(i8* %aPtr, i8* %bPtr) #0 {
  %1 = bitcast i8* %aPtr to %struct.reservation_info*
  %2 = bitcast i8* %bPtr to %struct.reservation_info*
  %3 = tail call i64 @reservation_info_compare(%struct.reservation_info* %1, %struct.reservation_info* %2) #4
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define noalias %struct.customer* @customer_alloc_seq(i64 %id) #0 {
  %1 = tail call noalias i8* @malloc(i64 16) #4
  %2 = bitcast i8* %1 to %struct.customer*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.3, i64 0, i64 0), i32 122, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.customer_alloc_seq, i64 0, i64 0)) #16
  unreachable

; <label>:5                                       ; preds = %0
  %6 = bitcast i8* %1 to i64*
  store i64 %id, i64* %6, align 8
  %7 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* nonnull @compareReservationInfo) #4
  %8 = getelementptr inbounds i8, i8* %1, i64 8
  %9 = bitcast i8* %8 to %struct.list**
  store %struct.list* %7, %struct.list** %9, align 8
  %10 = icmp eq %struct.list* %7, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %5
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.3, i64 0, i64 0), i32 127, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.customer_alloc_seq, i64 0, i64 0)) #16
  unreachable

; <label>:12                                      ; preds = %5
  ret %struct.customer* %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @customer_compare(%struct.customer* nocapture readonly %aPtr, %struct.customer* nocapture readonly %bPtr) #6 {
  %1 = getelementptr inbounds %struct.customer, %struct.customer* %aPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.customer, %struct.customer* %bPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = sub nsw i64 %2, %4
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define void @customer_free(%struct.customer* nocapture %customerPtr) #0 {
  %1 = getelementptr inbounds %struct.customer, %struct.customer* %customerPtr, i64 0, i32 1
  %2 = load %struct.list*, %struct.list** %1, align 8
  tail call void @TMlist_free(%struct.list* %2) #4
  %3 = bitcast %struct.customer* %customerPtr to i8*
  tail call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @customer_addReservationInfo(%struct.customer* nocapture readonly %customerPtr, i32 %type, i64 %id, i64 %price) #0 {
  %1 = tail call %struct.reservation_info* @reservation_info_alloc(i32 %type, i64 %id, i64 %price) #4
  %2 = icmp eq %struct.reservation_info* %1, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.3, i64 0, i64 0), i32 172, i8* nonnull getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.customer_addReservationInfo, i64 0, i64 0)) #16
  unreachable

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.customer, %struct.customer* %customerPtr, i64 0, i32 1
  %6 = load %struct.list*, %struct.list** %5, align 8
  %7 = bitcast %struct.reservation_info* %1 to i8*
  %8 = tail call i64 @TMlist_insert(%struct.list* %6, i8* %7) #4
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define i64 @customer_removeReservationInfo(%struct.customer* nocapture readonly %customerPtr, i32 %type, i64 %id) #0 {
  %findReservationInfo = alloca %struct.reservation_info, align 8
  %1 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %findReservationInfo, i64 0, i32 0
  store i32 %type, i32* %1, align 8
  %2 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %findReservationInfo, i64 0, i32 1
  store i64 %id, i64* %2, align 8
  %3 = getelementptr inbounds %struct.customer, %struct.customer* %customerPtr, i64 0, i32 1
  %4 = load %struct.list*, %struct.list** %3, align 8
  %5 = bitcast %struct.reservation_info* %findReservationInfo to i8*
  %6 = call i8* @TMlist_find(%struct.list* %4, i8* %5) #4
  %7 = bitcast i8* %6 to %struct.reservation_info*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %14, label %9

; <label>:9                                       ; preds = %0
  %10 = call i64 @TMlist_remove(%struct.list* %4, i8* %5) #4
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %9
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !7
  br label %13

; <label>:13                                      ; preds = %12, %9
  call void @reservation_info_free(%struct.reservation_info* %7) #4
  br label %14

; <label>:14                                      ; preds = %13, %0
  %.0 = phi i64 [ 1, %13 ], [ 0, %0 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @customer_getBill(%struct.customer* nocapture readonly %customerPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.customer, %struct.customer* %customerPtr, i64 0, i32 1
  %2 = load %struct.list*, %struct.list** %1, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %2) #4
  %3 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %2) #15
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %bill.01 = phi i64 [ %9, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %5 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %2) #4
  %6 = getelementptr inbounds i8, i8* %5, i64 16
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, %bill.01
  %10 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %2) #15
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %9, %.lr.ph ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %bill.0.lcssa = phi i64 [ 0, %0 ], [ %.lcssa, %._crit_edge.loopexit ]
  ret i64 %bill.0.lcssa
}

; Function Attrs: nounwind uwtable
define noalias %struct.manager* @manager_alloc() #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #4
  %2 = bitcast i8* %1 to %struct.manager*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.6, i64 0, i64 0), i32 126, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i64 0, i64 0)) #16
  unreachable

; <label>:5                                       ; preds = %0
  %6 = tail call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null) #4
  %7 = bitcast i8* %1 to %struct.rbtree**
  store %struct.rbtree* %6, %struct.rbtree** %7, align 8
  %8 = tail call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null) #4
  %9 = getelementptr inbounds i8, i8* %1, i64 8
  %10 = bitcast i8* %9 to %struct.rbtree**
  store %struct.rbtree* %8, %struct.rbtree** %10, align 8
  %11 = tail call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null) #4
  %12 = getelementptr inbounds i8, i8* %1, i64 16
  %13 = bitcast i8* %12 to %struct.rbtree**
  store %struct.rbtree* %11, %struct.rbtree** %13, align 8
  %14 = tail call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null) #4
  %15 = getelementptr inbounds i8, i8* %1, i64 24
  %16 = bitcast i8* %15 to %struct.rbtree**
  store %struct.rbtree* %14, %struct.rbtree** %16, align 8
  %17 = icmp eq %struct.rbtree* %6, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %5
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.6, i64 0, i64 0), i32 132, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i64 0, i64 0)) #16
  unreachable

; <label>:19                                      ; preds = %5
  %20 = icmp eq %struct.rbtree* %8, null
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %19
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.6, i64 0, i64 0), i32 133, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i64 0, i64 0)) #16
  unreachable

; <label>:22                                      ; preds = %19
  %23 = icmp eq %struct.rbtree* %11, null
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %22
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.6, i64 0, i64 0), i32 134, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i64 0, i64 0)) #16
  unreachable

; <label>:25                                      ; preds = %22
  %26 = icmp eq %struct.rbtree* %14, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %25
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.6, i64 0, i64 0), i32 135, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.manager_alloc, i64 0, i64 0)) #16
  unreachable

; <label>:28                                      ; preds = %25
  ret %struct.manager* %2
}

; Function Attrs: nounwind uwtable
define void @manager_free(%struct.manager* nocapture readonly %managerPtr) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  tail call void @rbtree_free(%struct.rbtree* %2) #4
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  tail call void @rbtree_free(%struct.rbtree* %4) #4
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  tail call void @rbtree_free(%struct.rbtree* %6) #4
  %7 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %8 = load %struct.rbtree*, %struct.rbtree** %7, align 8
  tail call void @rbtree_free(%struct.rbtree* %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @addReservation(%struct.rbtree* %tablePtr, i64 %id, i64 %num, i64 %price) #0 {
  %1 = inttoptr i64 %id to i8*
  %2 = tail call i8* @TMrbtree_get(%struct.rbtree* %tablePtr, i8* %1) #4
  %3 = bitcast i8* %2 to %struct.reservation*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %15

; <label>:5                                       ; preds = %0
  %6 = icmp slt i64 %num, 1
  %7 = icmp slt i64 %price, 0
  %or.cond = or i1 %6, %7
  br i1 %or.cond, label %30, label %8

; <label>:8                                       ; preds = %5
  %9 = tail call %struct.reservation* @reservation_alloc(i64 %id, i64 %num, i64 %price) #4
  %10 = icmp eq %struct.reservation* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.6, i64 0, i64 0), i32 194, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.addReservation, i64 0, i64 0)) #16
  unreachable

; <label>:12                                      ; preds = %8
  %13 = bitcast %struct.reservation* %9 to i8*
  %14 = tail call i64 @TMrbtree_insert(%struct.rbtree* %tablePtr, i8* %1, i8* %13) #4
  br label %30

; <label>:15                                      ; preds = %0
  %16 = tail call i64 @reservation_addToTotal(%struct.reservation* %3, i64 %num) #4
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %30, label %18

; <label>:18                                      ; preds = %15
  %19 = getelementptr inbounds i8, i8* %2, i64 24
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

; <label>:23                                      ; preds = %18
  %24 = tail call i64 @TMrbtree_delete(%struct.rbtree* %tablePtr, i8* %1) #4
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %23
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !9
  br label %27

; <label>:27                                      ; preds = %26, %23
  tail call void @reservation_free(%struct.reservation* nonnull %3) #4
  br label %30

; <label>:28                                      ; preds = %18
  %29 = tail call i64 @reservation_updatePrice(%struct.reservation* nonnull %3, i64 %price) #4
  br label %30

; <label>:30                                      ; preds = %28, %27, %15, %12, %5
  %.0 = phi i64 [ 0, %5 ], [ 0, %15 ], [ 1, %27 ], [ 1, %28 ], [ 1, %12 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @addReservation_seq(%struct.rbtree* %tablePtr, i64 %id, i64 %num, i64 %price) #0 {
  %1 = inttoptr i64 %id to i8*
  %2 = tail call i8* @rbtree_get(%struct.rbtree* %tablePtr, i8* %1) #4
  %3 = bitcast i8* %2 to %struct.reservation*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %17

; <label>:5                                       ; preds = %0
  %6 = icmp slt i64 %num, 1
  %7 = icmp slt i64 %price, 0
  %or.cond = or i1 %6, %7
  br i1 %or.cond, label %31, label %8

; <label>:8                                       ; preds = %5
  %9 = tail call %struct.reservation* @reservation_alloc_seq(i64 %id, i64 %num, i64 %price) #4
  %10 = icmp eq %struct.reservation* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.6, i64 0, i64 0), i32 229, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.addReservation_seq, i64 0, i64 0)) #16
  unreachable

; <label>:12                                      ; preds = %8
  %13 = bitcast %struct.reservation* %9 to i8*
  %14 = tail call i64 @rbtree_insert(%struct.rbtree* %tablePtr, i8* %1, i8* %13) #4
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %31

; <label>:16                                      ; preds = %12
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.6, i64 0, i64 0), i32 231, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.addReservation_seq, i64 0, i64 0)) #16
  unreachable

; <label>:17                                      ; preds = %0
  %18 = tail call i64 @reservation_addToTotal_seq(%struct.reservation* %3, i64 %num) #4
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %31, label %20

; <label>:20                                      ; preds = %17
  %21 = getelementptr inbounds i8, i8* %2, i64 24
  %22 = bitcast i8* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

; <label>:25                                      ; preds = %20
  %26 = tail call i64 @rbtree_delete(%struct.rbtree* %tablePtr, i8* %1) #4
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

; <label>:28                                      ; preds = %25
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.6, i64 0, i64 0), i32 239, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.addReservation_seq, i64 0, i64 0)) #16
  unreachable

; <label>:29                                      ; preds = %20
  %30 = tail call i64 @reservation_updatePrice_seq(%struct.reservation* nonnull %3, i64 %price) #4
  br label %31

; <label>:31                                      ; preds = %29, %25, %17, %12, %5
  %.0 = phi i64 [ 0, %5 ], [ 0, %17 ], [ 1, %12 ], [ 1, %25 ], [ 1, %29 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @manager_addCar(%struct.manager* nocapture readonly %managerPtr, i64 %carId, i64 %numCars, i64 %price) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = tail call i64 @addReservation(%struct.rbtree* %2, i64 %carId, i64 %numCars, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_addCar_seq(%struct.manager* nocapture readonly %managerPtr, i64 %carId, i64 %numCars, i64 %price) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = tail call i64 @addReservation_seq(%struct.rbtree* %2, i64 %carId, i64 %numCars, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_deleteCar(%struct.manager* nocapture readonly %managerPtr, i64 %carId, i64 %numCar) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %carId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #4
  %5 = bitcast i8* %4 to %struct.reservation*
  %6 = icmp eq i8* %4, null
  br i1 %6, label %addReservation.exit, label %7

; <label>:7                                       ; preds = %0
  %8 = sub nsw i64 0, %numCar
  %9 = tail call i64 @reservation_addToTotal(%struct.reservation* %5, i64 %8) #4
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %addReservation.exit, label %11

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds i8, i8* %4, i64 24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %11
  %17 = tail call i64 @TMrbtree_delete(%struct.rbtree* %2, i8* %3) #4
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %16
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !9
  br label %20

; <label>:20                                      ; preds = %19, %16
  tail call void @reservation_free(%struct.reservation* nonnull %5) #4
  br label %addReservation.exit

; <label>:21                                      ; preds = %11
  %22 = tail call i64 @reservation_updatePrice(%struct.reservation* nonnull %5, i64 -1) #4
  br label %addReservation.exit

addReservation.exit:                              ; preds = %21, %20, %7, %0
  %.0.i = phi i64 [ 0, %7 ], [ 1, %20 ], [ 1, %21 ], [ 0, %0 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_addRoom(%struct.manager* nocapture readonly %managerPtr, i64 %roomId, i64 %numRoom, i64 %price) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = tail call i64 @addReservation(%struct.rbtree* %2, i64 %roomId, i64 %numRoom, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_addRoom_seq(%struct.manager* nocapture readonly %managerPtr, i64 %roomId, i64 %numRoom, i64 %price) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = tail call i64 @addReservation_seq(%struct.rbtree* %2, i64 %roomId, i64 %numRoom, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_deleteRoom(%struct.manager* nocapture readonly %managerPtr, i64 %roomId, i64 %numRoom) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %roomId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #4
  %5 = bitcast i8* %4 to %struct.reservation*
  %6 = icmp eq i8* %4, null
  br i1 %6, label %addReservation.exit, label %7

; <label>:7                                       ; preds = %0
  %8 = sub nsw i64 0, %numRoom
  %9 = tail call i64 @reservation_addToTotal(%struct.reservation* %5, i64 %8) #4
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %addReservation.exit, label %11

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds i8, i8* %4, i64 24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %11
  %17 = tail call i64 @TMrbtree_delete(%struct.rbtree* %2, i8* %3) #4
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %16
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !9
  br label %20

; <label>:20                                      ; preds = %19, %16
  tail call void @reservation_free(%struct.reservation* nonnull %5) #4
  br label %addReservation.exit

; <label>:21                                      ; preds = %11
  %22 = tail call i64 @reservation_updatePrice(%struct.reservation* nonnull %5, i64 -1) #4
  br label %addReservation.exit

addReservation.exit:                              ; preds = %21, %20, %7, %0
  %.0.i = phi i64 [ 0, %7 ], [ 1, %20 ], [ 1, %21 ], [ 0, %0 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_addFlight(%struct.manager* nocapture readonly %managerPtr, i64 %flightId, i64 %numSeat, i64 %price) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = tail call i64 @addReservation(%struct.rbtree* %2, i64 %flightId, i64 %numSeat, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_addFlight_seq(%struct.manager* nocapture readonly %managerPtr, i64 %flightId, i64 %numSeat, i64 %price) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = tail call i64 @addReservation_seq(%struct.rbtree* %2, i64 %flightId, i64 %numSeat, i64 %price)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @manager_deleteFlight(%struct.manager* nocapture readonly %managerPtr, i64 %flightId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %flightId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %addReservation.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %4, i64 8
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %addReservation.exit, label %11

; <label>:11                                      ; preds = %6
  %12 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %13 = getelementptr inbounds i8, i8* %4, i64 24
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = tail call i8* @TMrbtree_get(%struct.rbtree* %12, i8* %3) #4
  %17 = bitcast i8* %16 to %struct.reservation*
  %18 = icmp eq i8* %16, null
  br i1 %18, label %addReservation.exit, label %19

; <label>:19                                      ; preds = %11
  %20 = sub nsw i64 0, %15
  %21 = tail call i64 @reservation_addToTotal(%struct.reservation* %17, i64 %20) #4
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %addReservation.exit, label %23

; <label>:23                                      ; preds = %19
  %24 = getelementptr inbounds i8, i8* %16, i64 24
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

; <label>:28                                      ; preds = %23
  %29 = tail call i64 @TMrbtree_delete(%struct.rbtree* %12, i8* %3) #4
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %28
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !9
  br label %32

; <label>:32                                      ; preds = %31, %28
  tail call void @reservation_free(%struct.reservation* nonnull %17) #4
  br label %addReservation.exit

; <label>:33                                      ; preds = %23
  %34 = tail call i64 @reservation_updatePrice(%struct.reservation* nonnull %17, i64 -1) #4
  br label %addReservation.exit

addReservation.exit:                              ; preds = %33, %32, %19, %11, %6, %0
  %.0 = phi i64 [ 0, %0 ], [ 0, %6 ], [ 0, %19 ], [ 1, %32 ], [ 1, %33 ], [ 0, %11 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @manager_addCustomer(%struct.manager* nocapture readonly %managerPtr, i64 %customerId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %customerId to i8*
  %4 = tail call i64 @TMrbtree_contains(%struct.rbtree* %2, i8* %3) #4
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %16

; <label>:6                                       ; preds = %0
  %7 = tail call %struct.customer* @customer_alloc(i64 %customerId) #4
  %8 = icmp eq %struct.customer* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %6
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.6, i64 0, i64 0), i32 397, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.manager_addCustomer, i64 0, i64 0)) #16
  unreachable

; <label>:10                                      ; preds = %6
  %11 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %12 = bitcast %struct.customer* %7 to i8*
  %13 = tail call i64 @TMrbtree_insert(%struct.rbtree* %11, i8* %3, i8* %12) #4
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %10
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !10
  br label %16

; <label>:16                                      ; preds = %15, %10, %0
  %.0 = phi i64 [ 0, %0 ], [ 1, %15 ], [ 1, %10 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @manager_addCustomer_seq(%struct.manager* nocapture readonly %managerPtr, i64 %customerId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %customerId to i8*
  %4 = tail call i64 @rbtree_contains(%struct.rbtree* %2, i8* %3) #4
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %16

; <label>:6                                       ; preds = %0
  %7 = tail call %struct.customer* @customer_alloc_seq(i64 %customerId) #4
  %8 = icmp eq %struct.customer* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %6
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.6, i64 0, i64 0), i32 418, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.manager_addCustomer_seq, i64 0, i64 0)) #16
  unreachable

; <label>:10                                      ; preds = %6
  %11 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %12 = bitcast %struct.customer* %7 to i8*
  %13 = tail call i64 @rbtree_insert(%struct.rbtree* %11, i8* %3, i8* %12) #4
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.6, i64 0, i64 0), i32 420, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.manager_addCustomer_seq, i64 0, i64 0)) #16
  unreachable

; <label>:16                                      ; preds = %10, %0
  %.0 = phi i64 [ 0, %0 ], [ 1, %10 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @manager_deleteCustomer(%struct.manager* nocapture readonly %managerPtr, i64 %customerId) #0 {
  %reservationTables = alloca [3 x %struct.rbtree*], align 16
  %it = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %customerId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #4
  %5 = bitcast i8* %4 to %struct.customer*
  %6 = icmp eq i8* %4, null
  br i1 %6, label %52, label %7

; <label>:7                                       ; preds = %0
  %8 = bitcast %struct.manager* %managerPtr to i64*
  %9 = load i64, i64* %8, align 8
  %10 = bitcast [3 x %struct.rbtree*]* %reservationTables to i64*
  store i64 %9, i64* %10, align 16
  %11 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %12 = bitcast %struct.rbtree** %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %reservationTables, i64 0, i64 2
  %15 = bitcast %struct.rbtree** %14 to i64*
  store i64 %13, i64* %15, align 16
  %16 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %17 = bitcast %struct.rbtree** %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %reservationTables, i64 0, i64 1
  %20 = bitcast %struct.rbtree** %19 to i64*
  store i64 %18, i64* %20, align 8
  %21 = getelementptr inbounds i8, i8* %4, i64 8
  %22 = bitcast i8* %21 to %struct.list**
  %23 = load %struct.list*, %struct.list** %22, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %23) #4
  %24 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %23) #15
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %7
  br label %.lr.ph

.lr.ph:                                           ; preds = %44, %.lr.ph.preheader
  %26 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %23) #4
  %27 = bitcast i8* %26 to %struct.reservation_info*
  %28 = bitcast i8* %26 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [3 x %struct.rbtree*], [3 x %struct.rbtree*]* %reservationTables, i64 0, i64 %30
  %32 = load %struct.rbtree*, %struct.rbtree** %31, align 8
  %33 = getelementptr inbounds i8, i8* %26, i64 8
  %34 = bitcast i8* %33 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @TMrbtree_get(%struct.rbtree* %32, i8* %35) #4
  %37 = bitcast i8* %36 to %struct.reservation*
  %38 = icmp eq i8* %36, null
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %.lr.ph
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !11
  br label %40

; <label>:40                                      ; preds = %39, %.lr.ph
  %41 = call i64 @reservation_cancel(%struct.reservation* %37) #4
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %40
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !12
  br label %44

; <label>:44                                      ; preds = %43, %40
  call void @reservation_info_free(%struct.reservation_info* %27) #4
  %45 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %23) #15
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !13

._crit_edge.loopexit:                             ; preds = %44
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %7
  %47 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %48 = call i64 @TMrbtree_delete(%struct.rbtree* %47, i8* %3) #4
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %._crit_edge
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !14
  br label %51

; <label>:51                                      ; preds = %50, %._crit_edge
  call void @customer_free(%struct.customer* %5) #4
  br label %52

; <label>:52                                      ; preds = %51, %0
  %.0 = phi i64 [ 1, %51 ], [ 0, %0 ]
  ret i64 %.0
}

; Function Attrs: nounwind readonly uwtable
define i64 @manager_queryCar(%struct.manager* nocapture readonly %managerPtr, i64 %carId) #7 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %carId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %queryNumFree.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %4, i64 16
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  br label %queryNumFree.exit

queryNumFree.exit:                                ; preds = %6, %0
  %numFree.0.i = phi i64 [ %9, %6 ], [ -1, %0 ]
  ret i64 %numFree.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryCarPrice(%struct.manager* nocapture readonly %managerPtr, i64 %carId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %carId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %queryPrice.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %4, i64 32
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  br label %queryPrice.exit

queryPrice.exit:                                  ; preds = %6, %0
  %price.0.i = phi i64 [ %9, %6 ], [ -1, %0 ]
  ret i64 %price.0.i
}

; Function Attrs: nounwind readonly uwtable
define i64 @manager_queryRoom(%struct.manager* nocapture readonly %managerPtr, i64 %roomId) #7 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %roomId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %queryNumFree.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %4, i64 16
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  br label %queryNumFree.exit

queryNumFree.exit:                                ; preds = %6, %0
  %numFree.0.i = phi i64 [ %9, %6 ], [ -1, %0 ]
  ret i64 %numFree.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryRoomPrice(%struct.manager* nocapture readonly %managerPtr, i64 %roomId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %roomId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %queryPrice.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %4, i64 32
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  br label %queryPrice.exit

queryPrice.exit:                                  ; preds = %6, %0
  %price.0.i = phi i64 [ %9, %6 ], [ -1, %0 ]
  ret i64 %price.0.i
}

; Function Attrs: nounwind readonly uwtable
define i64 @manager_queryFlight(%struct.manager* nocapture readonly %managerPtr, i64 %flightId) #7 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %flightId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %queryNumFree.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %4, i64 16
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  br label %queryNumFree.exit

queryNumFree.exit:                                ; preds = %6, %0
  %numFree.0.i = phi i64 [ %9, %6 ], [ -1, %0 ]
  ret i64 %numFree.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryFlightPrice(%struct.manager* nocapture readonly %managerPtr, i64 %flightId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %flightId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %queryPrice.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %4, i64 32
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  br label %queryPrice.exit

queryPrice.exit:                                  ; preds = %6, %0
  %price.0.i = phi i64 [ %9, %6 ], [ -1, %0 ]
  ret i64 %price.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_queryCustomerBill(%struct.manager* nocapture readonly %managerPtr, i64 %customerId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %customerId to i8*
  %4 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %3) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %4 to %struct.customer*
  %8 = tail call i64 @customer_getBill(%struct.customer* %7) #4
  br label %9

; <label>:9                                       ; preds = %6, %0
  %bill.0 = phi i64 [ %8, %6 ], [ -1, %0 ]
  ret i64 %bill.0
}

; Function Attrs: nounwind uwtable
define i64 @manager_reserveCar(%struct.manager* nocapture readonly %managerPtr, i64 %customerId, i64 %carId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = inttoptr i64 %customerId to i8*
  %6 = tail call i8* @TMrbtree_get(%struct.rbtree* %4, i8* %5) #4
  %7 = bitcast i8* %6 to %struct.customer*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %reserve.exit, label %9

; <label>:9                                       ; preds = %0
  %10 = inttoptr i64 %carId to i8*
  %11 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %10) #4
  %12 = bitcast i8* %11 to %struct.reservation*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %reserve.exit, label %14

; <label>:14                                      ; preds = %9
  %15 = tail call i64 @reservation_make(%struct.reservation* %12) #4
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %reserve.exit, label %17

; <label>:17                                      ; preds = %14
  %18 = getelementptr inbounds i8, i8* %11, i64 32
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = tail call i64 @customer_addReservationInfo(%struct.customer* %7, i32 0, i64 %carId, i64 %20) #4
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %reserve.exit

; <label>:23                                      ; preds = %17
  %24 = tail call i64 @reservation_cancel(%struct.reservation* nonnull %12) #4
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %reserve.exit

; <label>:26                                      ; preds = %23
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !15
  br label %reserve.exit

reserve.exit:                                     ; preds = %26, %23, %17, %14, %9, %0
  %.0.i = phi i64 [ 0, %0 ], [ 0, %9 ], [ 0, %14 ], [ 0, %26 ], [ 0, %23 ], [ 1, %17 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_reserveRoom(%struct.manager* nocapture readonly %managerPtr, i64 %customerId, i64 %roomId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = inttoptr i64 %customerId to i8*
  %6 = tail call i8* @TMrbtree_get(%struct.rbtree* %4, i8* %5) #4
  %7 = bitcast i8* %6 to %struct.customer*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %reserve.exit, label %9

; <label>:9                                       ; preds = %0
  %10 = inttoptr i64 %roomId to i8*
  %11 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %10) #4
  %12 = bitcast i8* %11 to %struct.reservation*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %reserve.exit, label %14

; <label>:14                                      ; preds = %9
  %15 = tail call i64 @reservation_make(%struct.reservation* %12) #4
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %reserve.exit, label %17

; <label>:17                                      ; preds = %14
  %18 = getelementptr inbounds i8, i8* %11, i64 32
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = tail call i64 @customer_addReservationInfo(%struct.customer* %7, i32 2, i64 %roomId, i64 %20) #4
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %reserve.exit

; <label>:23                                      ; preds = %17
  %24 = tail call i64 @reservation_cancel(%struct.reservation* nonnull %12) #4
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %reserve.exit

; <label>:26                                      ; preds = %23
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !15
  br label %reserve.exit

reserve.exit:                                     ; preds = %26, %23, %17, %14, %9, %0
  %.0.i = phi i64 [ 0, %0 ], [ 0, %9 ], [ 0, %14 ], [ 0, %26 ], [ 0, %23 ], [ 1, %17 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_reserveFlight(%struct.manager* nocapture readonly %managerPtr, i64 %customerId, i64 %flightId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = inttoptr i64 %customerId to i8*
  %6 = tail call i8* @TMrbtree_get(%struct.rbtree* %4, i8* %5) #4
  %7 = bitcast i8* %6 to %struct.customer*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %reserve.exit, label %9

; <label>:9                                       ; preds = %0
  %10 = inttoptr i64 %flightId to i8*
  %11 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %10) #4
  %12 = bitcast i8* %11 to %struct.reservation*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %reserve.exit, label %14

; <label>:14                                      ; preds = %9
  %15 = tail call i64 @reservation_make(%struct.reservation* %12) #4
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %reserve.exit, label %17

; <label>:17                                      ; preds = %14
  %18 = getelementptr inbounds i8, i8* %11, i64 32
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = tail call i64 @customer_addReservationInfo(%struct.customer* %7, i32 1, i64 %flightId, i64 %20) #4
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %reserve.exit

; <label>:23                                      ; preds = %17
  %24 = tail call i64 @reservation_cancel(%struct.reservation* nonnull %12) #4
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %reserve.exit

; <label>:26                                      ; preds = %23
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !15
  br label %reserve.exit

reserve.exit:                                     ; preds = %26, %23, %17, %14, %9, %0
  %.0.i = phi i64 [ 0, %0 ], [ 0, %9 ], [ 0, %14 ], [ 0, %26 ], [ 0, %23 ], [ 1, %17 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_cancelCar(%struct.manager* nocapture readonly %managerPtr, i64 %customerId, i64 %carId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = inttoptr i64 %customerId to i8*
  %6 = tail call i8* @TMrbtree_get(%struct.rbtree* %4, i8* %5) #4
  %7 = bitcast i8* %6 to %struct.customer*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %cancel.exit, label %9

; <label>:9                                       ; preds = %0
  %10 = inttoptr i64 %carId to i8*
  %11 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %10) #4
  %12 = bitcast i8* %11 to %struct.reservation*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %cancel.exit, label %14

; <label>:14                                      ; preds = %9
  %15 = tail call i64 @reservation_cancel(%struct.reservation* %12) #4
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %cancel.exit, label %17

; <label>:17                                      ; preds = %14
  %18 = tail call i64 @customer_removeReservationInfo(%struct.customer* %7, i32 0, i64 %carId) #4
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %cancel.exit

; <label>:20                                      ; preds = %17
  %21 = tail call i64 @reservation_make(%struct.reservation* %12) #4
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %cancel.exit

; <label>:23                                      ; preds = %20
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !16
  br label %cancel.exit

cancel.exit:                                      ; preds = %23, %20, %17, %14, %9, %0
  %.0.i = phi i64 [ 0, %0 ], [ 0, %9 ], [ 0, %14 ], [ 0, %23 ], [ 0, %20 ], [ 1, %17 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_cancelRoom(%struct.manager* nocapture readonly %managerPtr, i64 %customerId, i64 %roomId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = inttoptr i64 %customerId to i8*
  %6 = tail call i8* @TMrbtree_get(%struct.rbtree* %4, i8* %5) #4
  %7 = bitcast i8* %6 to %struct.customer*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %cancel.exit, label %9

; <label>:9                                       ; preds = %0
  %10 = inttoptr i64 %roomId to i8*
  %11 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %10) #4
  %12 = bitcast i8* %11 to %struct.reservation*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %cancel.exit, label %14

; <label>:14                                      ; preds = %9
  %15 = tail call i64 @reservation_cancel(%struct.reservation* %12) #4
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %cancel.exit, label %17

; <label>:17                                      ; preds = %14
  %18 = tail call i64 @customer_removeReservationInfo(%struct.customer* %7, i32 2, i64 %roomId) #4
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %cancel.exit

; <label>:20                                      ; preds = %17
  %21 = tail call i64 @reservation_make(%struct.reservation* %12) #4
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %cancel.exit

; <label>:23                                      ; preds = %20
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !16
  br label %cancel.exit

cancel.exit:                                      ; preds = %23, %20, %17, %14, %9, %0
  %.0.i = phi i64 [ 0, %0 ], [ 0, %9 ], [ 0, %14 ], [ 0, %23 ], [ 0, %20 ], [ 1, %17 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @manager_cancelFlight(%struct.manager* nocapture readonly %managerPtr, i64 %customerId, i64 %flightId) #0 {
  %1 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = inttoptr i64 %customerId to i8*
  %6 = tail call i8* @TMrbtree_get(%struct.rbtree* %4, i8* %5) #4
  %7 = bitcast i8* %6 to %struct.customer*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %cancel.exit, label %9

; <label>:9                                       ; preds = %0
  %10 = inttoptr i64 %flightId to i8*
  %11 = tail call i8* @TMrbtree_get(%struct.rbtree* %2, i8* %10) #4
  %12 = bitcast i8* %11 to %struct.reservation*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %cancel.exit, label %14

; <label>:14                                      ; preds = %9
  %15 = tail call i64 @reservation_cancel(%struct.reservation* %12) #4
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %cancel.exit, label %17

; <label>:17                                      ; preds = %14
  %18 = tail call i64 @customer_removeReservationInfo(%struct.customer* %7, i32 1, i64 %flightId) #4
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %cancel.exit

; <label>:20                                      ; preds = %17
  %21 = tail call i64 @reservation_make(%struct.reservation* %12) #4
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %cancel.exit

; <label>:23                                      ; preds = %20
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !16
  br label %cancel.exit

cancel.exit:                                      ; preds = %23, %20, %17, %14, %9, %0
  %.0.i = phi i64 [ 0, %0 ], [ 0, %9 ], [ 0, %14 ], [ 0, %23 ], [ 0, %20 ], [ 1, %17 ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define noalias %struct.reservation_info* @reservation_info_alloc(i32 %type, i64 %id, i64 %price) #0 {
  %1 = tail call noalias i8* @malloc(i64 24) #4
  %2 = bitcast i8* %1 to %struct.reservation_info*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i32*
  store i32 %type, i32* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 %id, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %price, i64* %9, align 8
  br label %10

; <label>:10                                      ; preds = %4, %0
  ret %struct.reservation_info* %2
}

; Function Attrs: nounwind uwtable
define void @reservation_info_free(%struct.reservation_info* nocapture %reservationInfoPtr) #0 {
  %1 = bitcast %struct.reservation_info* %reservationInfoPtr to i8*
  tail call void @free(i8* %1) #4
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @reservation_info_compare(%struct.reservation_info* nocapture readonly %aPtr, %struct.reservation_info* nocapture readonly %bPtr) #6 {
  %1 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %aPtr, i64 0, i32 0
  %2 = load i32, i32* %1, align 8
  %3 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %bPtr, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = sub i32 %2, %4
  %8 = zext i32 %7 to i64
  br label %15

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %aPtr, i64 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.reservation_info, %struct.reservation_info* %bPtr, i64 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i64 [ %8, %6 ], [ %14, %9 ]
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define noalias %struct.reservation* @reservation_alloc(i64 %id, i64 %numTotal, i64 %price) #0 {
  %1 = tail call noalias i8* @malloc(i64 40) #4
  %2 = bitcast i8* %1 to %struct.reservation*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %checkReservation.exit, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i64*
  store i64 %id, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %numTotal, i64* %9, align 8
  %10 = getelementptr inbounds i8, i8* %1, i64 24
  %11 = bitcast i8* %10 to i64*
  store i64 %numTotal, i64* %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 32
  %13 = bitcast i8* %12 to i64*
  store i64 %price, i64* %13, align 8
  %14 = icmp slt i64 %numTotal, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %4
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !17
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !18
  br label %16

; <label>:16                                      ; preds = %15, %4
  %17 = icmp slt i64 %price, 0
  br i1 %17, label %18, label %checkReservation.exit

; <label>:18                                      ; preds = %16
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !19
  br label %checkReservation.exit

checkReservation.exit:                            ; preds = %18, %16, %0
  ret %struct.reservation* %2
}

; Function Attrs: nounwind uwtable
define noalias %struct.reservation* @reservation_alloc_seq(i64 %id, i64 %numTotal, i64 %price) #0 {
  %1 = tail call noalias i8* @malloc(i64 40) #4
  %2 = bitcast i8* %1 to %struct.reservation*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %14, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i64*
  store i64 %id, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %numTotal, i64* %9, align 8
  %10 = getelementptr inbounds i8, i8* %1, i64 24
  %11 = bitcast i8* %10 to i64*
  store i64 %numTotal, i64* %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 32
  %13 = bitcast i8* %12 to i64*
  store i64 %price, i64* %13, align 8
  tail call fastcc void @checkReservation_seq(%struct.reservation* %2)
  br label %14

; <label>:14                                      ; preds = %4, %0
  ret %struct.reservation* %2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @checkReservation_seq(%struct.reservation* nocapture readonly %reservationPtr) unnamed_addr #0 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = icmp sgt i64 %2, -1
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.57, i64 0, i64 0), i32 177, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i64 0, i64 0)) #16
  unreachable

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %10, label %9

; <label>:9                                       ; preds = %5
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.58, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.57, i64 0, i64 0), i32 178, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i64 0, i64 0)) #16
  unreachable

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, -1
  br i1 %13, label %15, label %14

; <label>:14                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3.59, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.57, i64 0, i64 0), i32 179, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i64 0, i64 0)) #16
  unreachable

; <label>:15                                      ; preds = %10
  %16 = add nsw i64 %7, %2
  %17 = icmp eq i64 %16, %12
  br i1 %17, label %19, label %18

; <label>:18                                      ; preds = %15
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4.60, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.57, i64 0, i64 0), i32 181, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i64 0, i64 0)) #16
  unreachable

; <label>:19                                      ; preds = %15
  %20 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, -1
  br i1 %22, label %24, label %23

; <label>:23                                      ; preds = %19
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5.61, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.57, i64 0, i64 0), i32 182, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.checkReservation_seq, i64 0, i64 0)) #16
  unreachable

; <label>:24                                      ; preds = %19
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @reservation_addToTotal(%struct.reservation* nocapture %reservationPtr, i64 %num) #0 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %2 = load i64, i64* %1, align 8
  %3 = add nsw i64 %2, %num
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %checkReservation.exit, label %5

; <label>:5                                       ; preds = %0
  store i64 %3, i64* %1, align 8
  %6 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, %num
  store i64 %8, i64* %6, align 8
  %9 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %.thread

; <label>:12                                      ; preds = %5
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !20
  %.pre = load i64, i64* %1, align 8
  %13 = icmp slt i64 %.pre, 0
  br i1 %13, label %14, label %.threadthread-pre-split

; <label>:14                                      ; preds = %12
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !17
  br label %.threadthread-pre-split

.threadthread-pre-split:                          ; preds = %14, %12
  %.pr = load i64, i64* %6, align 8
  br label %.thread

.thread:                                          ; preds = %.threadthread-pre-split, %5
  %15 = phi i64 [ %.pr, %.threadthread-pre-split ], [ %8, %5 ]
  %16 = phi i64 [ %.pre, %.threadthread-pre-split ], [ %3, %5 ]
  %17 = icmp slt i64 %15, 0
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %.thread
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !18
  br label %19

; <label>:19                                      ; preds = %18, %.thread
  %20 = add nsw i64 %16, %10
  %21 = icmp eq i64 %20, %15
  br i1 %21, label %23, label %22

; <label>:22                                      ; preds = %19
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !21
  br label %23

; <label>:23                                      ; preds = %22, %19
  %24 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %checkReservation.exit

; <label>:27                                      ; preds = %23
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !19
  br label %checkReservation.exit

checkReservation.exit:                            ; preds = %27, %23, %0
  %.0 = phi i64 [ 0, %0 ], [ 1, %23 ], [ 1, %27 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @reservation_addToTotal_seq(%struct.reservation* nocapture %reservationPtr, i64 %num) #0 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %2 = load i64, i64* %1, align 8
  %3 = add nsw i64 %2, %num
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %9, label %5

; <label>:5                                       ; preds = %0
  store i64 %3, i64* %1, align 8
  %6 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, %num
  store i64 %8, i64* %6, align 8
  tail call fastcc void @checkReservation_seq(%struct.reservation* nonnull %reservationPtr)
  br label %9

; <label>:9                                       ; preds = %5, %0
  %.0 = phi i64 [ 1, %5 ], [ 0, %0 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @reservation_make(%struct.reservation* nocapture %reservationPtr) #0 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %2 = load i64, i64* %1, align 8
  %3 = icmp slt i64 %2, 1
  br i1 %3, label %checkReservation.exit, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* %5, align 8
  %8 = add nsw i64 %2, -1
  store i64 %8, i64* %1, align 8
  %9 = icmp slt i64 %6, -1
  br i1 %9, label %10, label %.thread

; <label>:10                                      ; preds = %4
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !20
  %.pr = load i64, i64* %1, align 8
  %11 = icmp slt i64 %.pr, 0
  br i1 %11, label %12, label %.thread

; <label>:12                                      ; preds = %10
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !17
  br label %.thread

.thread:                                          ; preds = %12, %10, %4
  %13 = phi i64 [ %.pr, %12 ], [ %.pr, %10 ], [ %8, %4 ]
  %14 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %.thread
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !18
  br label %18

; <label>:18                                      ; preds = %17, %.thread
  %19 = add nsw i64 %13, %7
  %20 = icmp eq i64 %19, %15
  br i1 %20, label %22, label %21

; <label>:21                                      ; preds = %18
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !21
  br label %22

; <label>:22                                      ; preds = %21, %18
  %23 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %checkReservation.exit

; <label>:26                                      ; preds = %22
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !19
  br label %checkReservation.exit

checkReservation.exit:                            ; preds = %26, %22, %0
  %.0 = phi i64 [ 0, %0 ], [ 1, %22 ], [ 1, %26 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @reservation_make_seq(%struct.reservation* nocapture %reservationPtr) #0 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %2 = load i64, i64* %1, align 8
  %3 = icmp slt i64 %2, 1
  br i1 %3, label %9, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* %5, align 8
  %8 = add nsw i64 %2, -1
  store i64 %8, i64* %1, align 8
  tail call fastcc void @checkReservation_seq(%struct.reservation* nonnull %reservationPtr)
  br label %9

; <label>:9                                       ; preds = %4, %0
  %.0 = phi i64 [ 1, %4 ], [ 0, %0 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @reservation_cancel(%struct.reservation* nocapture %reservationPtr) #0 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = icmp slt i64 %2, 1
  br i1 %3, label %checkReservation.exit, label %4

; <label>:4                                       ; preds = %0
  %5 = add nsw i64 %2, -1
  store i64 %5, i64* %1, align 8
  %6 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %6, align 8
  %9 = icmp slt i64 %7, -1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %4
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !17
  br label %11

; <label>:11                                      ; preds = %10, %4
  %12 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %11
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !18
  br label %16

; <label>:16                                      ; preds = %15, %11
  %17 = add i64 %7, %2
  %18 = icmp eq i64 %17, %13
  br i1 %18, label %20, label %19

; <label>:19                                      ; preds = %16
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !21
  br label %20

; <label>:20                                      ; preds = %19, %16
  %21 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %checkReservation.exit

; <label>:24                                      ; preds = %20
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !19
  br label %checkReservation.exit

checkReservation.exit:                            ; preds = %24, %20, %0
  %.0 = phi i64 [ 0, %0 ], [ 1, %20 ], [ 1, %24 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @reservation_cancel_seq(%struct.reservation* nocapture %reservationPtr) #0 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = icmp slt i64 %2, 1
  br i1 %3, label %9, label %4

; <label>:4                                       ; preds = %0
  %5 = add nsw i64 %2, -1
  store i64 %5, i64* %1, align 8
  %6 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %6, align 8
  tail call fastcc void @checkReservation_seq(%struct.reservation* nonnull %reservationPtr)
  br label %9

; <label>:9                                       ; preds = %4, %0
  %.0 = phi i64 [ 1, %4 ], [ 0, %0 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @reservation_updatePrice(%struct.reservation* nocapture %reservationPtr, i64 %newPrice) #0 {
  %1 = icmp slt i64 %newPrice, 0
  br i1 %1, label %checkReservation.exit, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 4
  store i64 %newPrice, i64* %3, align 8
  %4 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %2
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !20
  br label %8

; <label>:8                                       ; preds = %7, %2
  %9 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !17
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %13
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !18
  br label %18

; <label>:18                                      ; preds = %17, %13
  %19 = add nsw i64 %10, %5
  %20 = icmp eq i64 %19, %15
  br i1 %20, label %22, label %21

; <label>:21                                      ; preds = %18
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !21
  br label %22

; <label>:22                                      ; preds = %21, %18
  %23 = load i64, i64* %3, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %checkReservation.exit

; <label>:25                                      ; preds = %22
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #4, !srcloc !19
  br label %checkReservation.exit

checkReservation.exit:                            ; preds = %25, %22, %0
  %.0 = phi i64 [ 0, %0 ], [ 1, %22 ], [ 1, %25 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @reservation_updatePrice_seq(%struct.reservation* nocapture %reservationPtr, i64 %newPrice) #0 {
  %1 = icmp slt i64 %newPrice, 0
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 4
  store i64 %newPrice, i64* %3, align 8
  tail call fastcc void @checkReservation_seq(%struct.reservation* %reservationPtr)
  br label %4

; <label>:4                                       ; preds = %2, %0
  %.0 = phi i64 [ 1, %2 ], [ 0, %0 ]
  ret i64 %.0
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @reservation_compare(%struct.reservation* nocapture readonly %aPtr, %struct.reservation* nocapture readonly %bPtr) #6 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %aPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.reservation, %struct.reservation* %bPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = sub nsw i64 %2, %4
  ret i64 %5
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @reservation_hash(%struct.reservation* nocapture readonly %reservationPtr) #6 {
  %1 = getelementptr inbounds %struct.reservation, %struct.reservation* %reservationPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define void @reservation_free(%struct.reservation* nocapture %reservationPtr) #0 {
  %1 = bitcast %struct.reservation* %reservationPtr to i8*
  tail call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @checkTables(%struct.manager* %managerPtr) #0 {
  %1 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 114), align 16
  %2 = fptosi double %1 to i64
  %3 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %5 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 0
  %6 = load %struct.rbtree*, %struct.rbtree** %5, align 8
  %7 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 2
  %8 = load %struct.rbtree*, %struct.rbtree** %7, align 8
  %9 = getelementptr inbounds %struct.manager, %struct.manager* %managerPtr, i64 0, i32 1
  %10 = load %struct.rbtree*, %struct.rbtree** %9, align 8
  %11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %13 = tail call i32 @fflush(%struct._IO_FILE* %12)
  %14 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 113), align 8
  %15 = fptosi double %14 to i64
  %16 = sitofp i64 %15 to double
  %17 = fdiv double %16, 1.000000e+02
  %18 = sitofp i64 %2 to double
  %19 = fmul double %18, %17
  %20 = fadd double %19, 5.000000e-01
  %21 = fptosi double %20 to i64
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %.preheader, label %.lr.ph5.preheader

.lr.ph5.preheader:                                ; preds = %0
  br label %.lr.ph5

.preheader.loopexit:                              ; preds = %34
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %0
  %23 = icmp slt i64 %2, 1
  br i1 %23, label %.us-lcssa7.us, label %.preheader.split.preheader.preheader

.preheader.split.preheader.preheader:             ; preds = %.preheader
  br label %.preheader.split.preheader

.lr.ph5:                                          ; preds = %34, %.lr.ph5.preheader
  %i.03 = phi i64 [ %35, %34 ], [ 1, %.lr.ph5.preheader ]
  %24 = inttoptr i64 %i.03 to i8*
  %25 = tail call i8* @rbtree_get(%struct.rbtree* %4, i8* %24) #4
  %26 = icmp eq i8* %25, null
  br i1 %26, label %34, label %27

; <label>:27                                      ; preds = %.lr.ph5
  %28 = tail call i64 @rbtree_delete(%struct.rbtree* %4, i8* %24) #4
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %30

; <label>:30                                      ; preds = %27
  %31 = tail call i8* @rbtree_get(%struct.rbtree* %4, i8* %24) #4
  %32 = icmp eq i8* %31, null
  br i1 %32, label %34, label %33

; <label>:33                                      ; preds = %30
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1.77, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.78, i64 0, i64 0), i32 366, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkTables, i64 0, i64 0)) #16
  unreachable

; <label>:34                                      ; preds = %30, %27, %.lr.ph5
  %35 = add nuw nsw i64 %i.03, 1
  %36 = icmp sgt i64 %i.03, %21
  br i1 %36, label %.preheader.loopexit, label %.lr.ph5

.preheader.split.preheader:                       ; preds = %49, %.preheader.split.preheader.preheader
  %i.11 = phi i64 [ %50, %49 ], [ 1, %.preheader.split.preheader.preheader ]
  %37 = inttoptr i64 %i.11 to i8*
  %38 = tail call i8* @rbtree_get(%struct.rbtree* %6, i8* %37) #4
  %39 = icmp eq i8* %38, null
  br i1 %39, label %49, label %40

; <label>:40                                      ; preds = %.preheader.split.preheader
  %41 = tail call i64 @manager_addCar_seq(%struct.manager* %managerPtr, i64 %i.11, i64 0, i64 0) #4
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %.us-lcssa.loopexit31, label %43

.us-lcssa.loopexit:                               ; preds = %73
  br label %.us-lcssa

.us-lcssa.loopexit29:                             ; preds = %58
  br label %.us-lcssa

.us-lcssa.loopexit31:                             ; preds = %40
  br label %.us-lcssa

.us-lcssa:                                        ; preds = %.us-lcssa.loopexit31, %.us-lcssa.loopexit29, %.us-lcssa.loopexit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3.79, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.78, i64 0, i64 0), i32 376, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkTables, i64 0, i64 0)) #16
  unreachable

; <label>:43                                      ; preds = %40
  %44 = tail call i64 @rbtree_delete(%struct.rbtree* %6, i8* %37) #4
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %49, label %46

; <label>:46                                      ; preds = %43
  %47 = tail call i64 @rbtree_delete(%struct.rbtree* %6, i8* %37) #4
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %.us-lcssa6.loopexit32

.us-lcssa6.loopexit:                              ; preds = %79
  br label %.us-lcssa6

.us-lcssa6.loopexit30:                            ; preds = %64
  br label %.us-lcssa6

.us-lcssa6.loopexit32:                            ; preds = %46
  br label %.us-lcssa6

.us-lcssa6:                                       ; preds = %.us-lcssa6.loopexit32, %.us-lcssa6.loopexit30, %.us-lcssa6.loopexit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4.80, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.78, i64 0, i64 0), i32 378, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkTables, i64 0, i64 0)) #16
  unreachable

; <label>:49                                      ; preds = %46, %43, %.preheader.split.preheader
  %50 = add nuw nsw i64 %i.11, 1
  %51 = icmp slt i64 %i.11, %2
  br i1 %51, label %.preheader.split.preheader, label %._crit_edge.preheader

._crit_edge.preheader:                            ; preds = %49
  br label %._crit_edge

.us-lcssa7.us.loopexit:                           ; preds = %82
  br label %.us-lcssa7.us

.us-lcssa7.us:                                    ; preds = %.us-lcssa7.us.loopexit, %.preheader
  %52 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5.81, i64 0, i64 0))
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %54 = tail call i32 @fflush(%struct._IO_FILE* %53)
  ret void

._crit_edge:                                      ; preds = %67, %._crit_edge.preheader
  %i.11.1 = phi i64 [ %68, %67 ], [ 1, %._crit_edge.preheader ]
  %55 = inttoptr i64 %i.11.1 to i8*
  %56 = tail call i8* @rbtree_get(%struct.rbtree* %8, i8* %55) #4
  %57 = icmp eq i8* %56, null
  br i1 %57, label %67, label %58

; <label>:58                                      ; preds = %._crit_edge
  %59 = tail call i64 @manager_addFlight_seq(%struct.manager* %managerPtr, i64 %i.11.1, i64 0, i64 0) #4
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %.us-lcssa.loopexit29, label %61

; <label>:61                                      ; preds = %58
  %62 = tail call i64 @rbtree_delete(%struct.rbtree* %8, i8* %55) #4
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %67, label %64

; <label>:64                                      ; preds = %61
  %65 = tail call i64 @rbtree_delete(%struct.rbtree* %8, i8* %55) #4
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %.us-lcssa6.loopexit30

; <label>:67                                      ; preds = %64, %61, %._crit_edge
  %68 = add nuw nsw i64 %i.11.1, 1
  %69 = icmp slt i64 %i.11.1, %2
  br i1 %69, label %._crit_edge, label %._crit_edge.1.preheader

._crit_edge.1.preheader:                          ; preds = %67
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %82, %._crit_edge.1.preheader
  %i.11.2 = phi i64 [ %83, %82 ], [ 1, %._crit_edge.1.preheader ]
  %70 = inttoptr i64 %i.11.2 to i8*
  %71 = tail call i8* @rbtree_get(%struct.rbtree* %10, i8* %70) #4
  %72 = icmp eq i8* %71, null
  br i1 %72, label %82, label %73

; <label>:73                                      ; preds = %._crit_edge.1
  %74 = tail call i64 @manager_addRoom_seq(%struct.manager* %managerPtr, i64 %i.11.2, i64 0, i64 0) #4
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %.us-lcssa.loopexit, label %76

; <label>:76                                      ; preds = %73
  %77 = tail call i64 @rbtree_delete(%struct.rbtree* %10, i8* %70) #4
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %82, label %79

; <label>:79                                      ; preds = %76
  %80 = tail call i64 @rbtree_delete(%struct.rbtree* %10, i8* %70) #4
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %.us-lcssa6.loopexit

; <label>:82                                      ; preds = %79, %76, %._crit_edge.1
  %83 = add nuw nsw i64 %i.11.2, 1
  %84 = icmp slt i64 %i.11.2, %2
  br i1 %84, label %._crit_edge.1, label %.us-lcssa7.us.loopexit
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %1 = sext i32 %argc to i64
  store i32 0, i32* @opterr, align 4
  store double 1.000000e+00, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  store double 1.000000e+01, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 110), align 16
  store <2 x double> <double 9.000000e+01, double 6.553600e+04>, <2 x double>* bitcast (double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 113) to <2 x double>*), align 8
  store <2 x double> <double 0x4190000000000000, double 8.000000e+01>, <2 x double>* bitcast (double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 116) to <2 x double>*), align 16
  %2 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %._crit_edge4.i, label %.lr.ph3.i.preheader

.lr.ph3.i.preheader:                              ; preds = %0
  br label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %.backedge.i, %.lr.ph3.i.preheader
  %4 = phi i32 [ %16, %.backedge.i ], [ %2, %.lr.ph3.i.preheader ]
  %5 = sext i32 %4 to i64
  switch i64 %5, label %13 [
    i64 99, label %6
    i64 110, label %6
    i64 113, label %6
    i64 114, label %6
    i64 116, label %6
    i64 117, label %6
  ]

; <label>:6                                       ; preds = %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i, %.lr.ph3.i
  %7 = load i8*, i8** @optarg, align 8
  %8 = tail call i64 @atol(i8* %7) #15
  %9 = sitofp i64 %8 to double
  %10 = zext i32 %4 to i64
  %11 = and i64 %10, 255
  %12 = getelementptr inbounds [256 x double], [256 x double]* @global_params, i64 0, i64 %11
  store double %9, double* %12, align 8
  br label %.backedge.i

; <label>:13                                      ; preds = %.lr.ph3.i
  %14 = load i32, i32* @opterr, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @opterr, align 4
  br label %.backedge.i

.backedge.i:                                      ; preds = %13, %6
  %16 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %._crit_edge4.i.loopexit, label %.lr.ph3.i

._crit_edge4.i.loopexit:                          ; preds = %.backedge.i
  br label %._crit_edge4.i

._crit_edge4.i:                                   ; preds = %._crit_edge4.i.loopexit, %0
  %18 = load i32, i32* @optind, align 4
  %19 = icmp slt i32 %18, %argc
  br i1 %19, label %.lr.ph.i.preheader, label %._crit_edge4.._crit_edge_crit_edge.i

.lr.ph.i.preheader:                               ; preds = %._crit_edge4.i
  %20 = sext i32 %18 to i64
  br label %.lr.ph.i

._crit_edge4.._crit_edge_crit_edge.i:             ; preds = %._crit_edge4.i
  %.pre.i = load i32, i32* @opterr, align 4
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %i.01.i = phi i64 [ %27, %.lr.ph.i ], [ %20, %.lr.ph.i.preheader ]
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = getelementptr inbounds i8*, i8** %argv, i64 %i.01.i
  %23 = load i8*, i8** %22, align 8
  %24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* %23) #17
  %25 = load i32, i32* @opterr, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @opterr, align 4
  %27 = add nsw i64 %i.01.i, 1
  %exitcond.i = icmp eq i64 %27, %1
  br i1 %exitcond.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.lcssa = phi i32 [ %26, %.lr.ph.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %._crit_edge4.._crit_edge_crit_edge.i
  %28 = phi i32 [ %.pre.i, %._crit_edge4.._crit_edge_crit_edge.i ], [ %.lcssa, %._crit_edge.i.loopexit ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %parseArgs.exit, label %30

; <label>:30                                      ; preds = %._crit_edge.i
  %31 = load i8*, i8** %argv, align 8
  %32 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %31) #4
  %33 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i64 0, i64 0)) #4
  %34 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i64 0, i64 0), i32 1) #4
  %35 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i64 0, i64 0), i32 10) #4
  %36 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), i32 90) #4
  %37 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.22, i64 0, i64 0), i32 65536) #4
  %38 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i64 0, i64 0), i32 67108864) #4
  %39 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.24, i64 0, i64 0), i32 80) #4
  tail call void @exit(i32 1) #16
  unreachable

parseArgs.exit:                                   ; preds = %._crit_edge.i
  %40 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0)) #4
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %42 = tail call i32 @fflush(%struct._IO_FILE* %41) #4
  %43 = tail call %struct.random* (...) bitcast (%struct.random* ()* @random_alloc to %struct.random* (...)*)() #4
  %44 = icmp eq %struct.random* %43, null
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %parseArgs.exit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.78, i64 0, i64 0), i32 230, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.initializeManager, i64 0, i64 0)) #16
  unreachable

; <label>:46                                      ; preds = %parseArgs.exit
  %47 = tail call %struct.manager* (...) bitcast (%struct.manager* ()* @manager_alloc to %struct.manager* (...)*)() #4
  %48 = icmp eq %struct.manager* %47, null
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %46
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6.82, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.78, i64 0, i64 0), i32 233, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.initializeManager, i64 0, i64 0)) #16
  unreachable

; <label>:50                                      ; preds = %46
  %51 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 114), align 16
  %52 = fptosi double %51 to i64
  %53 = shl i64 %52, 3
  %54 = tail call noalias i8* @malloc(i64 %53) #4
  %55 = bitcast i8* %54 to i64*
  %56 = icmp sgt i64 %52, 0
  br i1 %56, label %.lr.ph9.i.preheader, label %.loopexit

.lr.ph9.i.preheader:                              ; preds = %50
  %min.iters.check = icmp ult i64 %52, 4
  br i1 %min.iters.check, label %.lr.ph9.i.preheader13, label %min.iters.checked

.lr.ph9.i.preheader13:                            ; preds = %middle.block, %min.iters.checked, %.lr.ph9.i.preheader
  %i.07.i.ph = phi i64 [ 0, %min.iters.checked ], [ 0, %.lr.ph9.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph9.i

min.iters.checked:                                ; preds = %.lr.ph9.i.preheader
  %n.vec = and i64 %52, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %.lr.ph9.i.preheader13, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  %57 = add i64 %52, -4
  %58 = lshr i64 %57, 2
  %59 = and i64 %58, 1
  %lcmp.mod = icmp eq i64 %59, 0
  br i1 %lcmp.mod, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %60 = bitcast i8* %54 to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %60, align 8
  %61 = getelementptr i8, i8* %54, i64 16
  %62 = bitcast i8* %61 to <2 x i64>*
  store <2 x i64> <i64 3, i64 4>, <2 x i64>* %62, align 8
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 4, %vector.body.prol ]
  %63 = icmp eq i64 %58, 0
  br i1 %63, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %broadcast.splatinsert = insertelement <2 x i64> undef, i64 %index, i32 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> undef, <2 x i32> zeroinitializer
  %64 = add <2 x i64> %broadcast.splat, <i64 1, i64 2>
  %65 = add <2 x i64> %broadcast.splat, <i64 3, i64 4>
  %66 = getelementptr inbounds i64, i64* %55, i64 %index
  %67 = bitcast i64* %66 to <2 x i64>*
  store <2 x i64> %64, <2 x i64>* %67, align 8
  %68 = getelementptr i64, i64* %66, i64 2
  %69 = bitcast i64* %68 to <2 x i64>*
  store <2 x i64> %65, <2 x i64>* %69, align 8
  %index.next = add i64 %index, 4
  %broadcast.splatinsert.1 = insertelement <2 x i64> undef, i64 %index.next, i32 0
  %broadcast.splat.1 = shufflevector <2 x i64> %broadcast.splatinsert.1, <2 x i64> undef, <2 x i32> zeroinitializer
  %70 = add <2 x i64> %broadcast.splat.1, <i64 1, i64 2>
  %71 = add <2 x i64> %broadcast.splat.1, <i64 3, i64 4>
  %72 = getelementptr inbounds i64, i64* %55, i64 %index.next
  %73 = bitcast i64* %72 to <2 x i64>*
  store <2 x i64> %70, <2 x i64>* %73, align 8
  %74 = getelementptr i64, i64* %72, i64 2
  %75 = bitcast i64* %74 to <2 x i64>*
  store <2 x i64> %71, <2 x i64>* %75, align 8
  %index.next.1 = add i64 %index, 8
  %76 = icmp eq i64 %index.next.1, %n.vec
  br i1 %76, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !22

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.preheader.split
  %cmp.n = icmp eq i64 %52, %n.vec
  br i1 %cmp.n, label %.lr.ph.us.i.preheader, label %.lr.ph9.i.preheader13

.lr.ph.us.i.preheader.loopexit:                   ; preds = %.lr.ph9.i
  br label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph.us.i.preheader.loopexit, %middle.block
  br label %.lr.ph.us.i

; <label>:77                                      ; preds = %81
  %78 = icmp slt i64 %94, %52
  br i1 %78, label %81, label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %77
  %79 = add nuw nsw i64 %t.06.us.i, 1
  %80 = icmp slt i64 %79, 4
  br i1 %80, label %.lr.ph.us.i, label %.loopexit.loopexit

; <label>:81                                      ; preds = %.lr.ph5.us.i, %77
  %i.24.us.i = phi i64 [ 0, %.lr.ph5.us.i ], [ %94, %77 ]
  %82 = getelementptr inbounds i64, i64* %55, i64 %i.24.us.i
  %83 = load i64, i64* %82, align 8
  %84 = tail call i64 @random_generate(%struct.random* nonnull %43) #4
  %85 = urem i64 %84, 5
  %86 = mul nuw nsw i64 %85, 100
  %87 = add nuw nsw i64 %86, 100
  %88 = tail call i64 @random_generate(%struct.random* nonnull %43) #4
  %89 = urem i64 %88, 5
  %90 = mul nuw nsw i64 %89, 10
  %91 = add nuw nsw i64 %90, 50
  %92 = tail call i64 %106(%struct.manager* nonnull %47, i64 %83, i64 %87, i64 %91) #4
  %93 = icmp eq i64 %92, 0
  %94 = add nuw nsw i64 %i.24.us.i, 1
  br i1 %93, label %.us-lcssa10.us.i, label %77

; <label>:95                                      ; preds = %.lr.ph.us.i, %95
  %i.13.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %104, %95 ]
  %96 = tail call i64 @random_generate(%struct.random* nonnull %43) #4
  %97 = urem i64 %96, %52
  %98 = tail call i64 @random_generate(%struct.random* nonnull %43) #4
  %99 = urem i64 %98, %52
  %100 = getelementptr inbounds i64, i64* %55, i64 %97
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i64, i64* %55, i64 %99
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %100, align 8
  store i64 %101, i64* %102, align 8
  %104 = add nuw nsw i64 %i.13.us.i, 1
  %exitcond.i1 = icmp eq i64 %104, %52
  br i1 %exitcond.i1, label %.lr.ph5.us.i, label %95

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.i.preheader
  %t.06.us.i = phi i64 [ %79, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ]
  br label %95

.lr.ph5.us.i:                                     ; preds = %95
  %105 = getelementptr inbounds [4 x i64 (%struct.manager*, i64, i64, i64)*], [4 x i64 (%struct.manager*, i64, i64, i64)*]* @initializeManager.manager_add, i64 0, i64 %t.06.us.i
  %106 = load i64 (%struct.manager*, i64, i64, i64)*, i64 (%struct.manager*, i64, i64, i64)** %105, align 8
  br label %81

.lr.ph9.i:                                        ; preds = %.lr.ph9.i, %.lr.ph9.i.preheader13
  %i.07.i = phi i64 [ %107, %.lr.ph9.i ], [ %i.07.i.ph, %.lr.ph9.i.preheader13 ]
  %107 = add nuw nsw i64 %i.07.i, 1
  %108 = getelementptr inbounds i64, i64* %55, i64 %i.07.i
  store i64 %107, i64* %108, align 8
  %exitcond13.i = icmp eq i64 %107, %52
  br i1 %exitcond13.i, label %.lr.ph.us.i.preheader.loopexit, label %.lr.ph9.i, !llvm.loop !25

.us-lcssa10.us.i:                                 ; preds = %81
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.78, i64 0, i64 0), i32 259, i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.initializeManager, i64 0, i64 0)) #16
  unreachable

.loopexit.loopexit:                               ; preds = %._crit_edge.us.i
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %50
  %109 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5.81, i64 0, i64 0)) #4
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %111 = tail call i32 @fflush(%struct._IO_FILE* %110) #4
  tail call void @random_free(%struct.random* nonnull %43) #4
  tail call void @free(i8* %54) #4
  %112 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  %113 = fptosi double %112 to i64
  %114 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 116), align 16
  %115 = fptosi double %114 to i64
  %116 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 110), align 16
  %117 = fptosi double %116 to i64
  %118 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 114), align 16
  %119 = fptosi double %118 to i64
  %120 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 113), align 8
  %121 = fptosi double %120 to i64
  %122 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 117), align 8
  %123 = fptosi double %122 to i64
  %124 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0)) #4
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %126 = tail call i32 @fflush(%struct._IO_FILE* %125) #4
  %127 = tail call %struct.random* (...) bitcast (%struct.random* ()* @random_alloc to %struct.random* (...)*)() #4
  %128 = icmp eq %struct.random* %127, null
  br i1 %128, label %129, label %130

; <label>:129                                     ; preds = %.loopexit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.78, i64 0, i64 0), i32 297, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.initializeClients, i64 0, i64 0)) #16
  unreachable

; <label>:130                                     ; preds = %.loopexit
  %131 = shl i64 %113, 3
  %132 = tail call noalias i8* @malloc(i64 %131) #4
  %133 = bitcast i8* %132 to %struct.client**
  %134 = icmp eq i8* %132, null
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %130
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.83, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.78, i64 0, i64 0), i32 300, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.initializeClients, i64 0, i64 0)) #16
  unreachable

; <label>:136                                     ; preds = %130
  %137 = sitofp i64 %115 to double
  %138 = sitofp i64 %113 to double
  %139 = fdiv double %137, %138
  %140 = fadd double %139, 5.000000e-01
  %141 = fptosi double %140 to i64
  %142 = sitofp i64 %121 to double
  %143 = fdiv double %142, 1.000000e+02
  %144 = sitofp i64 %119 to double
  %145 = fmul double %144, %143
  %146 = fadd double %145, 5.000000e-01
  %147 = fptosi double %146 to i64
  %148 = icmp sgt i64 %113, 0
  br i1 %148, label %.lr.ph.i3.preheader, label %.loopexit9

.lr.ph.i3.preheader:                              ; preds = %136
  br label %.lr.ph.i3

; <label>:149                                     ; preds = %.lr.ph.i3
  %150 = icmp slt i64 %154, %113
  br i1 %150, label %.lr.ph.i3, label %.loopexit9.loopexit

.lr.ph.i3:                                        ; preds = %149, %.lr.ph.i3.preheader
  %i.01.i2 = phi i64 [ %154, %149 ], [ 0, %.lr.ph.i3.preheader ]
  %151 = tail call %struct.client* @client_alloc(i64 %i.01.i2, %struct.manager* nonnull %47, i64 %141, i64 %117, i64 %147, i64 %123) #4
  %152 = getelementptr inbounds %struct.client*, %struct.client** %133, i64 %i.01.i2
  store %struct.client* %151, %struct.client** %152, align 8
  %153 = icmp eq %struct.client* %151, null
  %154 = add nuw nsw i64 %i.01.i2, 1
  br i1 %153, label %155, label %149

; <label>:155                                     ; preds = %.lr.ph.i3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.78, i64 0, i64 0), i32 311, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.initializeClients, i64 0, i64 0)) #16
  unreachable

.loopexit9.loopexit:                              ; preds = %149
  br label %.loopexit9

.loopexit9:                                       ; preds = %.loopexit9.loopexit, %136
  %156 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5.81, i64 0, i64 0)) #4
  %157 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 %115) #4
  %158 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i64 %113) #4
  %159 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i64 %141) #4
  %160 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i64 %117) #4
  %161 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i64 %119) #4
  %162 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i64 %121) #4
  %163 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i64 %147) #4
  %164 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i64 %123) #4
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %166 = tail call i32 @fflush(%struct._IO_FILE* %165) #4
  tail call void @random_free(%struct.random* nonnull %127) #4
  %167 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  %168 = fptosi double %167 to i64
  %169 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #18, !srcloc !27
  %170 = extractvalue { i32, i32, i32, i32 } %169, 0
  %171 = icmp sgt i32 %170, 6
  br i1 %171, label %173, label %172

; <label>:172                                     ; preds = %.loopexit9
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.78, i64 0, i64 0), i32 427, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #16
  unreachable

; <label>:173                                     ; preds = %.loopexit9
  %174 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #18, !srcloc !28
  %175 = extractvalue { i32, i32, i32, i32 } %174, 1
  %176 = and i32 %175, 2048
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

; <label>:178                                     ; preds = %173
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.78, i64 0, i64 0), i32 427, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #16
  unreachable

; <label>:179                                     ; preds = %173
  tail call void (...) bitcast (void ()* @RTM_spinlock_init to void (...)*)() #4
  tail call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %168) #4
  tail call void @thread_startup(i64 %168) #4
  %180 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %182 = tail call i32 @fflush(%struct._IO_FILE* %181)
  %183 = call i32 @gettimeofday(%struct.timeval* nonnull %start, %struct.timezone* null) #4
  tail call void @thread_start(void (i8*)* nonnull @client_run, i8* nonnull %132) #4
  %184 = call i32 @gettimeofday(%struct.timeval* nonnull %stop, %struct.timezone* null) #4
  %185 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5.81, i64 0, i64 0))
  %186 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = sitofp i64 %187 to double
  %189 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = sitofp i64 %190 to double
  %192 = fdiv double %191, 1.000000e+06
  %193 = fadd double %188, %192
  %194 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = sitofp i64 %195 to double
  %197 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = sitofp i64 %198 to double
  %200 = fdiv double %199, 1.000000e+06
  %201 = fadd double %196, %200
  %202 = fsub double %193, %201
  %203 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), double %202)
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %205 = tail call i32 @fflush(%struct._IO_FILE* %204)
  tail call void @checkTables(%struct.manager* nonnull %47)
  %206 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %208 = tail call i32 @fflush(%struct._IO_FILE* %207)
  %209 = load double, double* getelementptr inbounds ([256 x double], [256 x double]* @global_params, i64 0, i64 99), align 8
  %210 = fptosi double %209 to i64
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %.lr.ph.i7.preheader, label %freeClients.exit

.lr.ph.i7.preheader:                              ; preds = %179
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.lr.ph.i7, %.lr.ph.i7.preheader
  %i.01.i5 = phi i64 [ %214, %.lr.ph.i7 ], [ 0, %.lr.ph.i7.preheader ]
  %212 = getelementptr inbounds %struct.client*, %struct.client** %133, i64 %i.01.i5
  %213 = load %struct.client*, %struct.client** %212, align 8
  tail call void @client_free(%struct.client* %213) #4
  %214 = add nuw nsw i64 %i.01.i5, 1
  %exitcond.i6 = icmp eq i64 %214, %210
  br i1 %exitcond.i6, label %freeClients.exit.loopexit, label %.lr.ph.i7

freeClients.exit.loopexit:                        ; preds = %.lr.ph.i7
  br label %freeClients.exit

freeClients.exit:                                 ; preds = %freeClients.exit.loopexit, %179
  tail call void @manager_free(%struct.manager* nonnull %47) #4
  %215 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5.81, i64 0, i64 0))
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %217 = tail call i32 @fflush(%struct._IO_FILE* %216)
  %218 = tail call i64 (...) @getWorkItemCount() #4
  %219 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i64 %218)
  %220 = tail call i32 @fflush(%struct._IO_FILE* null)
  tail call void (...) bitcast (void ()* @thread_shutdown to void (...)*)() #4
  tail call void (...) bitcast (void ()* @RTM_output_stats to void (...)*)() #4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @atol(i8* nocapture) #8

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define internal i64 @addCustomer(%struct.manager* %managerPtr, i64 %id, i64 %num, i64 %price) #0 {
  %1 = tail call i64 @manager_addCustomer_seq(%struct.manager* %managerPtr, i64 %id) #4
  ret i64 %1
}

declare void @SimStartup(...) #2

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

declare i64 @getWorkItemCount(...) #2

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
  %3 = call noalias i8* @malloc(i64 32) #4
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
  %3 = call noalias i8* @malloc(i64 32) #4
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
  %3 = call noalias i8* @malloc(i64 32) #4
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
  call void @free(i8* %7) #4
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
  call void @free(i8* %3) #4
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
  call void @free(i8* %7) #4
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
  call void @free(i8* %3) #4
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
  call void @free(i8* %8) #4
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
  call void @free(i8* %3) #4
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
  %3 = call noalias i8* @malloc(i64 16) #4
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
  %3 = call noalias i8* @malloc(i64 16) #4
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
  %3 = call noalias i8* @malloc(i64 16) #4
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.101, i32 0, i32 0), i32 703, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.list_remove, i32 0, i32 0)) #16
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.101, i32 0, i32 0), i32 732, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Plist_remove, i32 0, i32 0)) #16
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.101, i32 0, i32 0), i32 761, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMlist_remove, i32 0, i32 0)) #16
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
define %struct.pair* @pair_alloc(i8* %firstPtr, i8* %secondPtr) #9 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  store i8* %firstPtr, i8** %1, align 8
  store i8* %secondPtr, i8** %2, align 8
  %3 = call noalias i8* @malloc(i64 16) #4
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
  %3 = call noalias i8* @malloc(i64 16) #4
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
  %3 = call noalias i8* @malloc(i64 16) #4
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
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppair_free(%struct.pair* %pairPtr) #9 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMpair_free(%struct.pair* %pairPtr) #9 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #4
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
define %struct.random* @random_alloc() #9 {
  %randomPtr = alloca %struct.random*, align 8
  %1 = call noalias i8* @malloc(i64 5008) #4
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
  %1 = call noalias i8* @malloc(i64 5008) #4
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
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Prandom_free(%struct.random* %randomPtr) #9 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #4
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
define i64 @rbtree_verify(%struct.rbtree* %s, i64 %verbose) #9 {
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
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.112, i32 0, i32 0))
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
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1.113, i32 0, i32 0), i64 %22, i64 %26)
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
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.114, i32 0, i32 0), i64 %35, i64 %38)
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
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.115, i32 0, i32 0))
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
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.115, i32 0, i32 0))
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
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4.116, i32 0, i32 0), i64 %96, i64 %100, i64 %104, i64 %106, i64 %110, i64 %114)
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
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5.120, i32 0, i32 0), i64 %124, i64 %125)
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
define internal %struct.node* @firstEntry(%struct.rbtree* %s) #9 {
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
define internal %struct.node* @successor(%struct.node* %t) #9 {
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
define internal i64 @verifyRedBlack(%struct.node* %root, i64 %depth) #9 {
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
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6.117, i32 0, i32 0), i64 %31, i64 %32, i64 %33)
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
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7.118, i32 0, i32 0))
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
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7.118, i32 0, i32 0))
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
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8.119, i32 0, i32 0), i32 1179)
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
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8.119, i32 0, i32 0), i32 1183)
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
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8.119, i32 0, i32 0), i32 1189)
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
define %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* %compare) #9 {
  %1 = alloca i64 (i8*, i8*)*, align 8
  %n = alloca %struct.rbtree*, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %1, align 8
  %2 = call noalias i8* @malloc(i64 16) #4
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
define internal i64 @compareKeysDefault(i8* %a, i8* %b) #9 {
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
define %struct.rbtree* @TMrbtree_alloc(i64 (i8*, i8*)* %compare) #9 {
  %1 = alloca i64 (i8*, i8*)*, align 8
  %n = alloca %struct.rbtree*, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %1, align 8
  %2 = call noalias i8* @malloc(i64 16) #4
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
define void @rbtree_free(%struct.rbtree* %r) #9 {
  %1 = alloca %struct.rbtree*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %2, i32 0, i32 0
  %4 = load %struct.node*, %struct.node** %3, align 8
  call void @freeNode.125(%struct.node* %4)
  %5 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %6 = bitcast %struct.rbtree* %5 to i8*
  call void @free(i8* %6) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeNode.125(%struct.node* %n) #9 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %12

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 3
  %7 = load %struct.node*, %struct.node** %6, align 8
  call void @freeNode.125(%struct.node* %7)
  %8 = load %struct.node*, %struct.node** %1, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %10 = load %struct.node*, %struct.node** %9, align 8
  call void @freeNode.125(%struct.node* %10)
  %11 = load %struct.node*, %struct.node** %1, align 8
  call void @releaseNode(%struct.node* %11)
  br label %12

; <label>:12                                      ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @releaseNode(%struct.node* %n) #9 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = bitcast %struct.node* %2 to i8*
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMrbtree_free(%struct.rbtree* %r) #9 {
  %1 = alloca %struct.rbtree*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %2, i32 0, i32 0
  %4 = load %struct.node*, %struct.node** %3, align 8
  call void @TMfreeNode.126(%struct.node* %4)
  %5 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %6 = bitcast %struct.rbtree* %5 to i8*
  call void @free(i8* %6) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMfreeNode.126(%struct.node* %n) #9 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %12

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 3
  %7 = load %struct.node*, %struct.node** %6, align 8
  call void @TMfreeNode.126(%struct.node* %7)
  %8 = load %struct.node*, %struct.node** %1, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %10 = load %struct.node*, %struct.node** %9, align 8
  call void @TMfreeNode.126(%struct.node* %10)
  %11 = load %struct.node*, %struct.node** %1, align 8
  call void @TMreleaseNode(%struct.node* %11)
  br label %12

; <label>:12                                      ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMreleaseNode(%struct.node* %n) #9 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = bitcast %struct.node* %2 to i8*
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @rbtree_insert(%struct.rbtree* %r, i8* %key, i8* %val) #9 {
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
define internal %struct.node* @getNode() #9 {
  %n = alloca %struct.node*, align 8
  %1 = call noalias i8* @malloc(i64 48) #4
  %2 = bitcast i8* %1 to %struct.node*
  store %struct.node* %2, %struct.node** %n, align 8
  %3 = load %struct.node*, %struct.node** %n, align 8
  ret %struct.node* %3
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @insert(%struct.rbtree* %s, i8* %k, i8* %v, %struct.node* %n) #9 {
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
define internal void @fixAfterInsertion(%struct.rbtree* %s, %struct.node* %x) #9 {
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
define internal %struct.node* @parentOf(%struct.node* %n) #11 {
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
define internal %struct.node* @leftOf(%struct.node* %n) #11 {
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
define internal %struct.node* @rightOf(%struct.node* %n) #11 {
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
define internal i64 @colorOf(%struct.node* %n) #11 {
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
define internal void @setColor(%struct.node* %n, i64 %c) #11 {
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
define internal void @rotateLeft(%struct.rbtree* %s, %struct.node* %x) #9 {
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
define internal void @rotateRight(%struct.rbtree* %s, %struct.node* %x) #9 {
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
define i64 @TMrbtree_insert(%struct.rbtree* %r, i8* %key, i8* %val) #9 {
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
define internal %struct.node* @TMgetNode() #9 {
  %n = alloca %struct.node*, align 8
  %1 = call noalias i8* @malloc(i64 48) #4
  %2 = bitcast i8* %1 to %struct.node*
  store %struct.node* %2, %struct.node** %n, align 8
  %3 = load %struct.node*, %struct.node** %n, align 8
  ret %struct.node* %3
}

; Function Attrs: nounwind uwtable
define internal %struct.node* @TMinsert(%struct.rbtree* %s, i8* %k, i8* %v, %struct.node* %n) #9 {
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
define internal void @TMfixAfterInsertion(%struct.rbtree* %s, %struct.node* %x) #9 {
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
define internal %struct.node* @TMparentOf(%struct.node* %n) #11 {
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
define internal %struct.node* @TMleftOf(%struct.node* %n) #11 {
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
define internal %struct.node* @TMrightOf(%struct.node* %n) #11 {
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
define internal i64 @TMcolorOf(%struct.node* %n) #11 {
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
define internal void @TMsetColor(%struct.node* %n, i64 %c) #11 {
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
define internal void @TMrotateLeft(%struct.rbtree* %s, %struct.node* %x) #9 {
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
define internal void @TMrotateRight(%struct.rbtree* %s, %struct.node* %x) #9 {
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
define i64 @rbtree_delete(%struct.rbtree* %r, i8* %key) #9 {
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
define internal %struct.node* @lookup(%struct.rbtree* %s, i8* %k) #9 {
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
define internal %struct.node* @delete_node(%struct.rbtree* %s, %struct.node* %p) #9 {
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
define internal void @fixAfterDeletion(%struct.rbtree* %s, %struct.node* %x) #9 {
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
define i64 @TMrbtree_delete(%struct.rbtree* %r, i8* %key) #9 {
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
define internal %struct.node* @TMlookup(%struct.rbtree* %s, i8* %k) #9 {
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
define internal %struct.node* @TMdelete(%struct.rbtree* %s, %struct.node* %p) #9 {
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
define internal %struct.node* @TMsuccessor(%struct.node* %t) #9 {
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
define internal void @TMfixAfterDeletion(%struct.rbtree* %s, %struct.node* %x) #9 {
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
define i64 @rbtree_update(%struct.rbtree* %r, i8* %key, i8* %val) #9 {
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
define i64 @TMrbtree_update(%struct.rbtree* %r, i8* %key, i8* %val) #9 {
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
define i8* @rbtree_get(%struct.rbtree* %r, i8* %key) #9 {
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
define i8* @TMrbtree_get(%struct.rbtree* %r, i8* %key) #9 {
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
define i64 @rbtree_contains(%struct.rbtree* %r, i8* %key) #9 {
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
define i64 @TMrbtree_contains(%struct.rbtree* %r, i8* %key) #9 {
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
  %3 = call noalias i8* @malloc(i64 8) #4
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
  %16 = call i64 @lseek(i32 %12, i64 %15, i32 0) #4
  store i64 %16, i64* %offset, align 8
  %17 = load i64, i64* %offset, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %11
  br label %22

; <label>:20                                      ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #16
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.149, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #16
  unreachable
                                                  ; No predecessors!
  br label %32

; <label>:32                                      ; preds = %31, %29
  %33 = load i32, i32* @FD, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 193, %34
  %36 = sext i32 %35 to i64
  %37 = call i64 @lseek(i32 %33, i64 %36, i32 0) #4
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.149, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #16
  unreachable
                                                  ; No predecessors!
  br label %47

; <label>:47                                      ; preds = %46, %44
  %48 = load i8*, i8** %zeros, align 8
  call void @free(i8* %48) #4
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
  %14 = call i64 @lseek(i32 %10, i64 %13, i32 0) #4
  store i64 %14, i64* %offset, align 8
  %15 = load i64, i64* %offset, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %9
  br label %20

; <label>:18                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.150, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 189, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #16
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.149, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #16
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
  call void @llvm.x86.sse2.pause() #4
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
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !29
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
  %2 = call i32 @pthread_getaffinity_np(i64 %1, i64 128, %struct.cpu_set_t* %available_procs) #4
  store i32 %2, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.159, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.determineNumProcs, i32 0, i32 0)) #16
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
  %4 = call i32 @pthread_getaffinity_np(i64 %3, i64 128, %struct.cpu_set_t* %available_procs) #4
  store i32 %4, i32* %err, align 4
  %5 = load i32, i32* %err, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.159, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #16
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
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.162, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 463, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #16
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
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.165, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 465, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #16
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  call void @thread_barrier_init(%struct.thread_barrier* %39)
  %40 = load i64, i64* %1, align 8
  %41 = mul i64 %40, 72
  %42 = call noalias i8* @malloc(i64 %41) #4
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
  %78 = call i32 @pthread_key_create(i32* @global_threadId, void (i8*)* null) #4
  %79 = load i64*, i64** @global_threadIds, align 8
  %80 = icmp eq i64* %79, null
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %77
  br label %84

; <label>:82                                      ; preds = %77
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7.166, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #16
  unreachable
                                                  ; No predecessors!
  br label %84

; <label>:84                                      ; preds = %83, %81
  %85 = load i64, i64* %1, align 8
  %86 = mul i64 %85, 8
  %87 = call noalias i8* @malloc(i64 %86) #4
  %88 = bitcast i8* %87 to i64*
  store i64* %88, i64** @global_threadIds, align 8
  %89 = load i64*, i64** @global_threadIds, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %84
  br label %94

; <label>:92                                      ; preds = %84
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8.167, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 486, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #16
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
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9.168, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 492, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #16
  unreachable
                                                  ; No predecessors!
  br label %113

; <label>:113                                     ; preds = %112, %110
  %114 = load i64, i64* %1, align 8
  %115 = mul i64 %114, 8
  %116 = call noalias i8* @malloc(i64 %115) #4
  %117 = bitcast i8* %116 to i64*
  store i64* %117, i64** @global_threads, align 8
  %118 = load i64*, i64** @global_threads, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %121

; <label>:120                                     ; preds = %113
  br label %123

; <label>:121                                     ; preds = %113
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10.169, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 494, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #16
  unreachable
                                                  ; No predecessors!
  br label %123

; <label>:123                                     ; preds = %122, %120
  %124 = call i32 @pthread_attr_init(%union.pthread_attr_t* @global_threadAttr) #4
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
  %137 = call i32 @pthread_create(i64* %132, %union.pthread_attr_t* @global_threadAttr, i8* (i8*)* bitcast (void (i8*)* @threadWait to i8* (i8*)*), i8* %136) #4
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
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.163, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 570, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #16
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
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12.164, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.148, i32 0, i32 0), i32 571, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #16
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = load i64, i64* %1, align 8
  %18 = mul i64 %17, 152
  %19 = call noalias i8* @malloc(i64 %18) #4
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
  %18 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %17, %union.pthread_mutexattr_t* null) #4
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %21 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %20, i64 %19
  %22 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %21, i32 0, i32 1
  %23 = call i32 @pthread_cond_init(%union.pthread_cond_t* %22, %union.pthread_mutexattr_t* null) #4
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %26 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %25, i64 %24
  %27 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %26, i32 0, i32 2
  %28 = call i32 @pthread_cond_init(%union.pthread_cond_t* %27, %union.pthread_mutexattr_t* null) #4
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
  %8 = call i32 @pthread_setspecific(i32 %5, i8* %7) #4
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
  %25 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %24) #4
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
  %54 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %53) #4
  br label %98

; <label>:55                                      ; preds = %10
  %56 = load i64, i64* %index, align 8
  %57 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %58 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %57, i64 %56
  %59 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %58, i32 0, i32 0
  %60 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %59) #4
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
  %78 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %77) #4
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
  %97 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %96) #4
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
  %131 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %130) #4
  %132 = load i64, i64* %index, align 8
  %133 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %134 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %133, i64 %132
  %135 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %134, i32 0, i32 3
  store i64 0, i64* %135, align 8
  %136 = load i64, i64* %index, align 8
  %137 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %138 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %137, i64 %136
  %139 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %138, i32 0, i32 2
  %140 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %139) #4
  %141 = load i64, i64* %index, align 8
  %142 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %143 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %142, i64 %141
  %144 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %143, i32 0, i32 0
  %145 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %144) #4
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
  call void @free(i8* %19) #4
  store i64* null, i64** @global_threadIds, align 8
  %20 = load i64*, i64** @global_threads, align 8
  %21 = bitcast i64* %20 to i8*
  call void @free(i8* %21) #4
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
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @thread_getId() #9 {
  %1 = load i32, i32* @global_threadId, align 4
  %2 = call i8* @pthread_getspecific(i32 %1) #4
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
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.177, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.memory_init, i32 0, i32 0)) #16
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = call noalias i8* @malloc(i64 16) #4
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
  %19 = call noalias i8* @malloc(i64 %18) #4
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
  %4 = call noalias i8* @malloc(i64 32) #4
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
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.178, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.177, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.allocBlock, i32 0, i32 0)) #16
  unreachable
                                                  ; No predecessors!
  br label %8

; <label>:8                                       ; preds = %7, %5
  %9 = call noalias i8* @malloc(i64 160) #4
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
  %23 = call noalias i8* @malloc(i64 %22) #4
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
  call void @free(i8* %22) #4
  %23 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %24 = bitcast %struct.memory* %23 to i8*
  call void @free(i8* %24) #4
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
  call void @free(i8* %6) #4
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
  call void @free(i8* %4) #4
  %5 = load %struct.block*, %struct.block** %1, align 8
  %6 = bitcast %struct.block* %5 to i8*
  call void @free(i8* %6) #4
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
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.179, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.177, i32 0, i32 0), i32 304, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getMemoryFromBlock, i32 0, i32 0)) #16
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
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1451375, i32 1451391, i32 1451427, i32 1451463, i32 1451499}
!2 = !{i32 1451976, i32 1451991, i32 1452025}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.vectorize.width", i32 1337}
!5 = !{i32 1451747, i32 1451762, i32 1451790}
!6 = distinct !{!6, !4}
!7 = !{i32 -2145909578}
!8 = distinct !{!8, !4}
!9 = !{i32 -2145761056}
!10 = !{i32 -2145759124}
!11 = !{i32 -2145757852}
!12 = !{i32 -2145757736}
!13 = distinct !{!13, !4}
!14 = !{i32 -2145757414}
!15 = !{i32 -2145756178}
!16 = !{i32 -2145755630}
!17 = !{i32 -2145980187}
!18 = !{i32 -2145980085}
!19 = !{i32 -2145979915}
!20 = !{i32 -2145980288}
!21 = !{i32 -2145980014}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.vectorize.width", i32 1}
!24 = !{!"llvm.loop.interleave.count", i32 1}
!25 = distinct !{!25, !26, !23, !24}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{i32 -2145976018, i32 -2145975982, i32 -2145975958}
!28 = !{i32 -2145704887, i32 -2145704851, i32 -2145704827}
!29 = !{i32 11658}
