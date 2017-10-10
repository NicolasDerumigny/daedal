; ModuleID = 'llvm-link'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edge = type { i64, i64, i64 }
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
%struct.computeGragh_arg = type { %struct.graph*, %struct.graphSDG* }
%struct.graph = type { i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i8* }
%struct.graphSDG = type { i64*, i64*, i64*, i8*, i64 }
%struct.timezone = type { i32, i32 }
%struct.l = type { i64, i16, %struct.l* }
%struct.Vd = type { i64, i64*, %struct.timeval** }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.cpu_set_t = type { [16 x i64] }
%union.pthread_mutexattr_t = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"\0AHPCS SSCA #2 Graph Analysis Executable Specification:\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\0ARunning...\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ssca2.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Number of processors:       %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Problem Scale:              %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Max parallel edges:         %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Percent int weights:        %f\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Probability unidirectional: %f\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Probability inter-clique:   %f\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Subgraph edge length:       %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Kernel 3 data structure:    %ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"\0AScalable Data Generator - genScalData() beginning execution...\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"SDGdata\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"\0ATime taken for Scalable Data Generation is %9.6f sec.\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"\0A\09genScalData() completed execution.\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"\0AKernel 1 - computeGraph() beginning execution...\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"\0A\09computeGraph() completed execution.\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"\0ATime taken for kernel 1 is %9.6f sec.\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"\0ATime taken for all is %9.6f sec.\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"myHisto\00", align 1
@.str.1.3 = private unnamed_addr constant [16 x i8] c"alg_radix_smp.c\00", align 1
@__PRETTY_FUNCTION__.all_countsort_node = private unnamed_addr constant [82 x i8] c"void all_countsort_node(long, unsigned long *, unsigned long *, long, long, long)\00", align 1
@global_myHisto = internal unnamed_addr global i64* null, align 8
@.str.2.4 = private unnamed_addr constant [8 x i8] c"psHisto\00", align 1
@global_psHisto = internal unnamed_addr global i64* null, align 8
@__PRETTY_FUNCTION__.all_countsort_node_aux_seq = private unnamed_addr constant [124 x i8] c"void all_countsort_node_aux_seq(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *, long, long, long)\00", align 1
@__PRETTY_FUNCTION__.all_countsort_node_aux = private unnamed_addr constant [120 x i8] c"void all_countsort_node_aux(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *, long, long, long)\00", align 1
@.str.3.5 = private unnamed_addr constant [6 x i8] c"lTemp\00", align 1
@__PRETTY_FUNCTION__.all_radixsort_node_s3 = private unnamed_addr constant [67 x i8] c"void all_radixsort_node_s3(long, unsigned long *, unsigned long *)\00", align 1
@global_lTemp = internal unnamed_addr global i64* null, align 8
@__PRETTY_FUNCTION__.all_radixsort_node_s2 = private unnamed_addr constant [67 x i8] c"void all_radixsort_node_s2(long, unsigned long *, unsigned long *)\00", align 1
@__PRETTY_FUNCTION__.all_radixsort_node_aux_s3_seq = private unnamed_addr constant [109 x i8] c"void all_radixsort_node_aux_s3_seq(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *)\00", align 1
@.str.4.6 = private unnamed_addr constant [7 x i8] c"lTemp2\00", align 1
@__PRETTY_FUNCTION__.all_radixsort_node_aux_s3 = private unnamed_addr constant [105 x i8] c"void all_radixsort_node_aux_s3(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *)\00", align 1
@global_lTemp2 = internal unnamed_addr global i64* null, align 8
@global_maxNumVertices = internal unnamed_addr global i64 0, align 8
@.str.25 = private unnamed_addr constant [16 x i8] c"GPtr->outDegree\00", align 1
@.str.1.26 = private unnamed_addr constant [15 x i8] c"computeGraph.c\00", align 1
@__PRETTY_FUNCTION__.computeGraph = private unnamed_addr constant [26 x i8] c"void computeGraph(void *)\00", align 1
@.str.2.27 = private unnamed_addr constant [21 x i8] c"GPtr->outVertexIndex\00", align 1
@.str.9.28 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@__PRETTY_FUNCTION__.prefix_sums = private unnamed_addr constant [56 x i8] c"void prefix_sums(ULONGINT_T *, LONGINT_T *, ULONGINT_T)\00", align 1
@global_p = internal unnamed_addr global i64* null, align 8
@global_outVertexListSize = internal unnamed_addr global i64 0, align 8
@.str.3.29 = private unnamed_addr constant [20 x i8] c"GPtr->outVertexList\00", align 1
@.str.4.30 = private unnamed_addr constant [21 x i8] c"GPtr->paralEdgeIndex\00", align 1
@.str.5.31 = private unnamed_addr constant [15 x i8] c"GPtr->inDegree\00", align 1
@.str.6.32 = private unnamed_addr constant [20 x i8] c"GPtr->inVertexIndex\00", align 1
@global_impliedEdgeList = internal unnamed_addr global i64* null, align 8
@.str.7.33 = private unnamed_addr constant [7 x i8] c"auxArr\00", align 1
@global_auxArr = internal unnamed_addr global i64** null, align 8
@.str.8.34 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.1.38 = private unnamed_addr constant [14 x i8] c"cutClusters.c\00", align 1
@__PRETTY_FUNCTION__.cutClusters = private unnamed_addr constant [25 x i8] c"void cutClusters(void *)\00", align 1
@global_Index = internal unnamed_addr global i64* null, align 8
@.str.2.39 = private unnamed_addr constant [15 x i8] c"neighbourArray\00", align 1
@global_neighbourArray = internal unnamed_addr global i64* null, align 8
@.str.3.40 = private unnamed_addr constant [12 x i8] c"IndexSorted\00", align 1
@global_IndexSorted = internal unnamed_addr global i64* null, align 8
@.str.4.41 = private unnamed_addr constant [21 x i8] c"neighbourArraySorted\00", align 1
@global_neighbourArraySorted = internal unnamed_addr global i64* null, align 8
@.str.5.42 = private unnamed_addr constant [8 x i8] c"vStatus\00", align 1
@global_vStatus = internal unnamed_addr global i64* null, align 8
@.str.6.43 = private unnamed_addr constant [8 x i8] c"pCutSet\00", align 1
@global_pCutSet = internal unnamed_addr global %struct.edge* null, align 8
@.str.7.44 = private unnamed_addr constant [7 x i8] c"startV\00", align 1
@global_startV = internal unnamed_addr global i64* null, align 8
@.str.8.45 = private unnamed_addr constant [12 x i8] c"clusterSize\00", align 1
@global_clusterSize = internal unnamed_addr global i64* null, align 8
@global_cliqueSize = internal unnamed_addr global i64 0, align 8
@global_iter = internal unnamed_addr global i64 0, align 8
@.str.9.46 = private unnamed_addr constant [17 x i8] c"edgeStartCounter\00", align 1
@global_edgeStartCounter = internal unnamed_addr global i64* null, align 8
@.str.10.47 = private unnamed_addr constant [15 x i8] c"edgeEndCounter\00", align 1
@global_edgeEndCounter = internal unnamed_addr global i64* null, align 8
@global_cutSetIndex = internal unnamed_addr global i64 0, align 8
@.str.11.48 = private unnamed_addr constant [7 x i8] c"cutSet\00", align 1
@global_cutSet = internal unnamed_addr global %struct.edge* null, align 8
@.str.49 = private unnamed_addr constant [8 x i8] c"visited\00", align 1
@.str.1.50 = private unnamed_addr constant [16 x i8] c"findSubGraphs.c\00", align 1
@__PRETTY_FUNCTION__.findSubGraphs0 = private unnamed_addr constant [28 x i8] c"void findSubGraphs0(void *)\00", align 1
@__PRETTY_FUNCTION__.findSubGraphs1 = private unnamed_addr constant [28 x i8] c"void findSubGraphs1(void *)\00", align 1
@.str.2.51 = private unnamed_addr constant [15 x i8] c"intWtVLList[i]\00", align 1
@.str.3.52 = private unnamed_addr constant [12 x i8] c"currV->next\00", align 1
@.str.4.53 = private unnamed_addr constant [15 x i8] c"strWtVLList[t]\00", align 1
@.str.5.54 = private unnamed_addr constant [23 x i8] c"(strWtVLList[t])->next\00", align 1
@.str.6.55 = private unnamed_addr constant [25 x i8] c"intWtVDList[i].arraySize\00", align 1
@__PRETTY_FUNCTION__.findSubGraphs2 = private unnamed_addr constant [28 x i8] c"void findSubGraphs2(void *)\00", align 1
@.str.7.56 = private unnamed_addr constant [21 x i8] c"intWtVDList[i].vList\00", align 1
@.str.8.57 = private unnamed_addr constant [24 x i8] c"intWtVDList[i].vList[0]\00", align 1
@.str.9.58 = private unnamed_addr constant [25 x i8] c"strWtVDList[t].arraySize\00", align 1
@.str.10.59 = private unnamed_addr constant [21 x i8] c"strWtVDList[t].vList\00", align 1
@.str.11.60 = private unnamed_addr constant [24 x i8] c"strWtVDList[t].vList[0]\00", align 1
@.str.12.61 = private unnamed_addr constant [49 x i8] c"intWtVDList[i].vList[intWtVDList[i].numArrays-1]\00", align 1
@.str.13.62 = private unnamed_addr constant [49 x i8] c"strWtVDList[t].vList[strWtVDList[t].numArrays-1]\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.1.66 = private unnamed_addr constant [14 x i8] c"genScalData.c\00", align 1
@__PRETTY_FUNCTION__.genScalData_seq = private unnamed_addr constant [33 x i8] c"void genScalData_seq(graphSDG *)\00", align 1
@.str.2.67 = private unnamed_addr constant [6 x i8] c"permV\00", align 1
@.str.3.68 = private unnamed_addr constant [12 x i8] c"cliqueSizes\00", align 1
@.str.4.69 = private unnamed_addr constant [16 x i8] c"lastVsInCliques\00", align 1
@.str.5.70 = private unnamed_addr constant [17 x i8] c"firstVsInCliques\00", align 1
@.str.6.71 = private unnamed_addr constant [7 x i8] c"startV\00", align 1
@.str.7.72 = private unnamed_addr constant [5 x i8] c"endV\00", align 1
@.str.8.73 = private unnamed_addr constant [15 x i8] c"tmpEdgeCounter\00", align 1
@.str.9.74 = private unnamed_addr constant [18 x i8] c"tmpEdgeCounter[i]\00", align 1
@.str.10.75 = private unnamed_addr constant [12 x i8] c"startVertex\00", align 1
@.str.11.76 = private unnamed_addr constant [10 x i8] c"endVertex\00", align 1
@str.1 = private unnamed_addr constant [26 x i8] c"Finished generating edges\00"
@.str.13.77 = private unnamed_addr constant [33 x i8] c"No. of intra-clique edges - %lu\0A\00", align 1
@.str.14.78 = private unnamed_addr constant [33 x i8] c"No. of inter-clique edges - %lu\0A\00", align 1
@.str.15.79 = private unnamed_addr constant [33 x i8] c"Total no. of edges        - %lu\0A\00", align 1
@.str.16.80 = private unnamed_addr constant [22 x i8] c"SDGdataPtr->intWeight\00", align 1
@.str.17.81 = private unnamed_addr constant [22 x i8] c"SDGdataPtr->strWeight\00", align 1
@.str.18.82 = private unnamed_addr constant [14 x i8] c"SOUGHT_STRING\00", align 1
@.str.19.83 = private unnamed_addr constant [24 x i8] c"SDGdataPtr->startVertex\00", align 1
@.str.20.84 = private unnamed_addr constant [22 x i8] c"SDGdataPtr->endVertex\00", align 1
@__PRETTY_FUNCTION__.genScalData = private unnamed_addr constant [25 x i8] c"void genScalData(void *)\00", align 1
@global_permV = internal unnamed_addr global i64* null, align 8
@global_cliqueSizes = internal unnamed_addr global i64* null, align 8
@global_lastVsInCliques = internal unnamed_addr global i64* null, align 8
@global_firstVsInCliques = internal unnamed_addr global i64* null, align 8
@global_totCliques = internal unnamed_addr global i64 0, align 8
@.str.21.85 = private unnamed_addr constant [19 x i8] c"i_edgeStartCounter\00", align 1
@global_i_edgeStartCounter = internal unnamed_addr global i64* null, align 8
@.str.22.86 = private unnamed_addr constant [17 x i8] c"i_edgeEndCounter\00", align 1
@global_i_edgeEndCounter = internal unnamed_addr global i64* null, align 8
@global_edgeNum = internal unnamed_addr global i64 0, align 8
@global_startVertex = internal unnamed_addr global i64* null, align 8
@global_endVertex = internal unnamed_addr global i64* null, align 8
@global_numStrWtEdges = internal unnamed_addr global i64 0, align 8
@.str.23.87 = private unnamed_addr constant [10 x i8] c"tempIndex\00", align 1
@global_tempIndex = internal unnamed_addr global i64* null, align 8
@global_maxWeight = internal unnamed_addr global i64 0, align 8
@.str.88 = private unnamed_addr constant [19 x i8] c"i_edgeStartCounter\00", align 1
@.str.1.89 = private unnamed_addr constant [16 x i8] c"getStartLists.c\00", align 1
@__PRETTY_FUNCTION__.getStartLists = private unnamed_addr constant [27 x i8] c"void getStartLists(void *)\00", align 1
@global_i_edgeStartCounter.90 = internal unnamed_addr global i64* null, align 8
@.str.2.91 = private unnamed_addr constant [17 x i8] c"i_edgeEndCounter\00", align 1
@global_i_edgeEndCounter.92 = internal unnamed_addr global i64* null, align 8
@.str.3.93 = private unnamed_addr constant [13 x i8] c"maxIntWtList\00", align 1
@global_maxIntWtList = internal unnamed_addr global %struct.edge* null, align 8
@.str.4.94 = private unnamed_addr constant [16 x i8] c"soughtStrWtList\00", align 1
@global_soughtStrWtList = internal unnamed_addr global %struct.edge* null, align 8
@opterr = external global i32, align 4
@.str.1.97 = private unnamed_addr constant [17 x i8] c"i:k:l:p:s:t:u:w:\00", align 1
@optarg = external global i8*, align 8
@.str.2.98 = private unnamed_addr constant [25 x i8] c"K3_DS >= 0 && K3_DS <= 2\00", align 1
@.str.3.99 = private unnamed_addr constant [20 x i8] c"getUserParameters.c\00", align 1
@__PRETTY_FUNCTION__.parseArgs = private unnamed_addr constant [36 x i8] c"void parseArgs(long, char *const *)\00", align 1
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.4.100 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.5.101 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.6.102 = private unnamed_addr constant [60 x i8] c"\0AOptions:                                       (defaults)\0A\00", align 1
@.str.7.103 = private unnamed_addr constant [53 x i8] c"    i <FLT>    Probability [i]nter-clique      (%f)\0A\00", align 1
@.str.8.104 = private unnamed_addr constant [54 x i8] c"    k <UINT>   [k]ind: 0=array 1=list 2=vector (%li)\0A\00", align 1
@.str.9.105 = private unnamed_addr constant [54 x i8] c"    l <UINT>   Max path [l]ength               (%li)\0A\00", align 1
@.str.10.106 = private unnamed_addr constant [54 x i8] c"    p <UINT>   Max [p]arallel edges            (%li)\0A\00", align 1
@.str.11.107 = private unnamed_addr constant [54 x i8] c"    s <UINT>   Problem [s]cale                 (%li)\0A\00", align 1
@.str.12.108 = private unnamed_addr constant [54 x i8] c"    t <UINT>   Number of [t]hreads             (%li)\0A\00", align 1
@.str.13.109 = private unnamed_addr constant [53 x i8] c"    u <FLT>    Probability [u]nidirectional    (%f)\0A\00", align 1
@.str.14.110 = private unnamed_addr constant [53 x i8] c"    w <FLT>    Fraction integer [w]eights      (%f)\0A\00", align 1
@.str.111 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SCALE = common global i64 0, align 8
@TOT_VERTICES = common global i64 0, align 8
@MAX_CLIQUE_SIZE = common global i64 0, align 8
@MAX_PARAL_EDGES = common global i64 0, align 8
@MAX_INT_WEIGHT = common global i64 0, align 8
@SOUGHT_STRING = common global i8* null, align 8
@MAX_STRLEN = common global i64 0, align 8
@PERC_INT_WEIGHTS = common global float 0.000000e+00, align 4
@PROB_UNIDIRECTIONAL = common global float 0.000000e+00, align 4
@PROB_INTERCL_EDGES = common global float 0.000000e+00, align 4
@SUBGR_EDGE_LENGTH = common global i64 0, align 8
@MAX_CLUSTER_SIZE = common global i64 0, align 8
@K3_DS = common global i64 0, align 8
@THREADS = common global i64 0, align 8
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
@.str.156 = private unnamed_addr constant [11 x i8] c"offset > 0\00", align 1
@.str.1.157 = private unnamed_addr constant [9 x i8] c"thread.c\00", align 1
@__PRETTY_FUNCTION__.init_one_perfcounter = private unnamed_addr constant [46 x i8] c"void init_one_perfcounter(int, unsigned long)\00", align 1
@.str.2.158 = private unnamed_addr constant [8 x i8] c"ret > 0\00", align 1
@.str.3.159 = private unnamed_addr constant [9 x i8] c"offset>0\00", align 1
@__PRETTY_FUNCTION__.read_one_perfcounter = private unnamed_addr constant [47 x i8] c"void read_one_perfcounter(int, unsigned int *)\00", align 1
@M5_inSimulator = external global i32, align 4
@.str.4.168 = private unnamed_addr constant [9 x i8] c"err == 0\00", align 1
@__PRETTY_FUNCTION__.determineNumProcs = private unnamed_addr constant [25 x i8] c"long determineNumProcs()\00", align 1
@global_numThread = internal global i64 1, align 8
@global_doShutdown = internal global i64 0, align 8
@__PRETTY_FUNCTION__.thread_startup = private unnamed_addr constant [26 x i8] c"void thread_startup(long)\00", align 1
@global_barrierPtr = internal global %struct.thread_barrier* null, align 8
@.str.5.171 = private unnamed_addr constant [26 x i8] c"global_barrierPtr == NULL\00", align 1
@.str.11.172 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@__PRETTY_FUNCTION__.thread_barrier_alloc = private unnamed_addr constant [45 x i8] c"thread_barrier_t *thread_barrier_alloc(long)\00", align 1
@.str.12.173 = private unnamed_addr constant [35 x i8] c"(numThread & (numThread - 1)) == 0\00", align 1
@.str.6.174 = private unnamed_addr constant [18 x i8] c"global_barrierPtr\00", align 1
@global_threadId = internal global i32 0, align 4
@global_threadIds = internal global i64* null, align 8
@.str.7.175 = private unnamed_addr constant [25 x i8] c"global_threadIds == NULL\00", align 1
@.str.8.176 = private unnamed_addr constant [17 x i8] c"global_threadIds\00", align 1
@global_threads = internal global i64* null, align 8
@.str.9.177 = private unnamed_addr constant [23 x i8] c"global_threads == NULL\00", align 1
@.str.10.178 = private unnamed_addr constant [15 x i8] c"global_threads\00", align 1
@global_threadAttr = internal global %union.pthread_attr_t zeroinitializer, align 8
@global_funcPtr = internal global void (i8*)* null, align 8
@global_argPtr = internal global i8* null, align 8
@global_memoryPtr = global %struct.memory* null, align 8
@.str.189 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@.str.1.190 = private unnamed_addr constant [9 x i8] c"memory.c\00", align 1
@__PRETTY_FUNCTION__.memory_init = private unnamed_addr constant [39 x i8] c"bool_t memory_init(long, size_t, long)\00", align 1
@.str.2.191 = private unnamed_addr constant [13 x i8] c"capacity > 0\00", align 1
@__PRETTY_FUNCTION__.allocBlock = private unnamed_addr constant [28 x i8] c"block_t *allocBlock(size_t)\00", align 1
@.str.3.192 = private unnamed_addr constant [29 x i8] c"(size + numByte) <= capacity\00", align 1
@__PRETTY_FUNCTION__.getMemoryFromBlock = private unnamed_addr constant [44 x i8] c"void *getMemoryFromBlock(block_t *, size_t)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %computeGraphArgs = alloca %struct.computeGragh_arg, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  %3 = sext i32 %argc to i64
  call void @getUserParameters(i64 %3, i8** %argv)
  br label %4

; <label>:4                                       ; preds = %0
  %5 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %6 = icmp sge i32 %5, 7
  br i1 %6, label %7, label %._crit_edge

._crit_edge:                                      ; preds = %4
  br label %9

; <label>:7                                       ; preds = %4
  br i1 true, label %8, label %._crit_edge1

._crit_edge1:                                     ; preds = %7
  br label %9

; <label>:8                                       ; preds = %7
  br label %11

; <label>:9                                       ; preds = %._crit_edge1, %._crit_edge
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  %12 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #16, !srcloc !1
  %13 = extractvalue { i32, i32, i32, i32 } %12, 0
  %14 = extractvalue { i32, i32, i32, i32 } %12, 1
  %15 = extractvalue { i32, i32, i32, i32 } %12, 2
  %16 = extractvalue { i32, i32, i32, i32 } %12, 3
  %17 = and i32 %14, 2048
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %._crit_edge2

._crit_edge2:                                     ; preds = %11
  br label %21

; <label>:19                                      ; preds = %11
  br i1 true, label %20, label %._crit_edge3

._crit_edge3:                                     ; preds = %19
  br label %21

; <label>:20                                      ; preds = %19
  br label %23

; <label>:21                                      ; preds = %._crit_edge3, %._crit_edge2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  call void (...) bitcast (void ()* @RTM_spinlock_init to void (...)*)()
  %24 = load i64, i64* @THREADS, align 8
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %24)
  br label %25

; <label>:25                                      ; preds = %23
  %26 = load i64, i64* @THREADS, align 8
  call void @thread_startup(i64 %26)
  %27 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  %28 = load i64, i64* @THREADS, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i64 %28)
  %30 = load i64, i64* @SCALE, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i64 %30)
  %32 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i64 %32)
  %34 = load float, float* @PERC_INT_WEIGHTS, align 4
  %35 = fpext float %34 to double
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), double %35)
  %37 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %38 = fpext float %37 to double
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0), double %38)
  %40 = load float, float* @PROB_INTERCL_EDGES, align 4
  %41 = fpext float %40 to double
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), double %41)
  %43 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), i64 %43)
  %45 = load i64, i64* @K3_DS, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i64 %45)
  %47 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0))
  %49 = call noalias i8* @malloc(i64 40) #6
  %50 = bitcast i8* %49 to %struct.graphSDG*
  %51 = icmp ne %struct.graphSDG* %50, null
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %25
  br label %55

; <label>:53                                      ; preds = %25
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 167, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:55                                      ; preds = %54, %52
  %56 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #6
  call void @genScalData_seq(%struct.graphSDG* %50)
  %57 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #6
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sitofp i64 %59 to double
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sitofp i64 %62 to double
  %64 = fdiv double %63, 1.000000e+06
  %65 = fadd double %60, %64
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sitofp i64 %67 to double
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sitofp i64 %70 to double
  %72 = fdiv double %71, 1.000000e+06
  %73 = fadd double %68, %72
  %74 = fsub double %65, %73
  %75 = fadd double 0.000000e+00, %74
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i32 0, i32 0), double %74)
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i32 0, i32 0))
  %79 = call noalias i8* @malloc(i64 120) #6
  %80 = bitcast i8* %79 to %struct.graph*
  %81 = icmp ne %struct.graph* %80, null
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %55
  br label %85

; <label>:83                                      ; preds = %55
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 209, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %85

; <label>:85                                      ; preds = %84, %82
  %86 = getelementptr inbounds %struct.computeGragh_arg, %struct.computeGragh_arg* %computeGraphArgs, i32 0, i32 0
  store %struct.graph* %80, %struct.graph** %86, align 8
  %87 = getelementptr inbounds %struct.computeGragh_arg, %struct.computeGragh_arg* %computeGraphArgs, i32 0, i32 1
  store %struct.graphSDG* %50, %struct.graphSDG** %87, align 8
  %88 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #6
  %89 = bitcast %struct.computeGragh_arg* %computeGraphArgs to i8*
  call void @thread_start(void (i8*)* @computeGraph, i8* %89)
  %90 = call i32 @gettimeofday(%struct.timeval* %stop, %struct.timezone* null) #6
  %91 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sitofp i64 %92 to double
  %94 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = sitofp i64 %95 to double
  %97 = fdiv double %96, 1.000000e+06
  %98 = fadd double %93, %97
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sitofp i64 %100 to double
  %102 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sitofp i64 %103 to double
  %105 = fdiv double %104, 1.000000e+06
  %106 = fadd double %101, %105
  %107 = fsub double %98, %106
  %108 = fadd double %75, %107
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i32 0, i32 0))
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0), double %107)
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0), double %108)
  %112 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 6
  %113 = load i64*, i64** %112, align 8
  %114 = bitcast i64* %113 to i8*
  call void @free(i8* %114) #6
  %115 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 7
  %116 = load i64*, i64** %115, align 8
  %117 = bitcast i64* %116 to i8*
  call void @free(i8* %117) #6
  %118 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 8
  %119 = load i64*, i64** %118, align 8
  %120 = bitcast i64* %119 to i8*
  call void @free(i8* %120) #6
  %121 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 9
  %122 = load i64*, i64** %121, align 8
  %123 = bitcast i64* %122 to i8*
  call void @free(i8* %123) #6
  %124 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 10
  %125 = load i64*, i64** %124, align 8
  %126 = bitcast i64* %125 to i8*
  call void @free(i8* %126) #6
  %127 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 11
  %128 = load i64*, i64** %127, align 8
  %129 = bitcast i64* %128 to i8*
  call void @free(i8* %129) #6
  %130 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 12
  %131 = load i64*, i64** %130, align 8
  %132 = bitcast i64* %131 to i8*
  call void @free(i8* %132) #6
  %133 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 13
  %134 = load i64*, i64** %133, align 8
  %135 = bitcast i64* %134 to i8*
  call void @free(i8* %135) #6
  %136 = getelementptr inbounds %struct.graph, %struct.graph* %80, i32 0, i32 14
  %137 = load i8*, i8** %136, align 8
  call void @free(i8* %137) #6
  %138 = load i8*, i8** @SOUGHT_STRING, align 8
  call void @free(i8* %138) #6
  %139 = bitcast %struct.graph* %80 to i8*
  call void @free(i8* %139) #6
  %140 = bitcast %struct.graphSDG* %50 to i8*
  call void @free(i8* %140) #6
  br label %141

; <label>:141                                     ; preds = %85
  %142 = call i64 (...) @getWorkItemCount()
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i64 %142)
  %144 = call i32 @fflush(%struct._IO_FILE* null)
  br label %145

; <label>:145                                     ; preds = %141
  call void (...) bitcast (void ()* @thread_shutdown to void (...)*)()
  call void (...) bitcast (void ()* @RTM_output_stats to void (...)*)()
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #2 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %__level) #16, !srcloc !2
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

declare void @SimStartup(...) #1

declare i32 @puts(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i64 @getWorkItemCount(...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @all_countsort_node(i64 %q, i64* nocapture readonly %lKey, i64* nocapture %lSorted, i64 %R, i64 %bitOff, i64 %m) #0 {
  %k_start = alloca i64, align 8
  %k_stop = alloca i64, align 8
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %2 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #6
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %15

; <label>:4                                       ; preds = %0
  %5 = shl i64 %R, 3
  %6 = mul i64 %5, %2
  %7 = tail call noalias i8* @malloc(i64 %6) #6
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.3, i64 0, i64 0), i32 107, i8* nonnull getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.all_countsort_node, i64 0, i64 0)) #15
  unreachable

; <label>:10                                      ; preds = %4
  store i8* %7, i8** bitcast (i64** @global_myHisto to i8**), align 8
  %11 = tail call noalias i8* @malloc(i64 %6) #6
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.3, i64 0, i64 0), i32 110, i8* nonnull getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.all_countsort_node, i64 0, i64 0)) #15
  unreachable

; <label>:14                                      ; preds = %10
  store i8* %11, i8** bitcast (i64** @global_psHisto to i8**), align 8
  br label %15

; <label>:15                                      ; preds = %14, %0
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %16 = load i64*, i64** @global_myHisto, align 8
  %17 = load i64*, i64** @global_psHisto, align 8
  %18 = mul i64 %1, %R
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = icmp sgt i64 %R, 0
  br i1 %20, label %.lr.ph23.preheader, label %._crit_edge24

.lr.ph23.preheader:                               ; preds = %15
  %scevgep28 = bitcast i64* %19 to i8*
  %21 = shl i64 %R, 3
  call void @llvm.memset.p0i8.i64(i8* %scevgep28, i8 0, i64 %21, i32 8, i1 false)
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %.lr.ph23.preheader, %15
  call void @createPartition(i64 0, i64 %q, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #6
  %22 = load i64, i64* %k_start, align 8
  %23 = load i64, i64* %k_stop, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %._crit_edge24
  %25 = trunc i64 %m to i32
  %26 = shl i32 -1, %25
  %27 = xor i32 %26, -1
  %28 = sext i32 %27 to i64
  br label %29

; <label>:29                                      ; preds = %29, %.lr.ph19
  %k.117 = phi i64 [ %22, %.lr.ph19 ], [ %37, %29 ]
  %30 = getelementptr inbounds i64, i64* %lKey, i64 %k.117
  %31 = load i64, i64* %30, align 8
  %32 = lshr i64 %31, %bitOff
  %33 = and i64 %32, %28
  %34 = getelementptr inbounds i64, i64* %19, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = add nsw i64 %k.117, 1
  %38 = load i64, i64* %k_stop, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %29, label %._crit_edge20.loopexit

._crit_edge20.loopexit:                           ; preds = %29
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge20.loopexit, %._crit_edge24
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  call void @createPartition(i64 0, i64 %R, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #6
  %40 = load i64, i64* %k_start, align 8
  %41 = load i64, i64* %k_stop, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %.lr.ph15, label %._crit_edge16

.lr.ph15:                                         ; preds = %._crit_edge20
  %43 = icmp sgt i64 %2, 1
  br i1 %43, label %.lr.ph15.split.us.preheader, label %.lr.ph15.split.preheader

.lr.ph15.split.preheader:                         ; preds = %.lr.ph15
  br label %.lr.ph15.split

.lr.ph15.split.us.preheader:                      ; preds = %.lr.ph15
  %44 = add i64 %2, 3
  %45 = add i64 %2, -2
  %xtraiter32 = and i64 %44, 3
  %lcmp.mod33 = icmp eq i64 %xtraiter32, 0
  %46 = icmp ult i64 %45, 3
  br label %.lr.ph15.split.us

.lr.ph15.split.us:                                ; preds = %._crit_edge11.us, %.lr.ph15.split.us.preheader
  %k.212.us = phi i64 [ %87, %._crit_edge11.us ], [ %40, %.lr.ph15.split.us.preheader ]
  %47 = getelementptr inbounds i64, i64* %16, i64 %k.212.us
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %17, i64 %k.212.us
  store i64 %48, i64* %49, align 8
  br i1 %lcmp.mod33, label %.lr.ph15.split.us.split, label %.preheader

.preheader:                                       ; preds = %.lr.ph15.split.us
  br label %50

; <label>:50                                      ; preds = %50, %.preheader
  %j.08.us.prol = phi i64 [ %57, %50 ], [ 1, %.preheader ]
  %last.07.us.prol = phi i64 [ %55, %50 ], [ %48, %.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %50 ], [ %xtraiter32, %.preheader ]
  %51 = mul nsw i64 %j.08.us.prol, %R
  %52 = add nsw i64 %51, %k.212.us
  %53 = getelementptr inbounds i64, i64* %16, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %last.07.us.prol
  %56 = getelementptr inbounds i64, i64* %17, i64 %52
  store i64 %55, i64* %56, align 8
  %57 = add nuw nsw i64 %j.08.us.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph15.split.us.split.loopexit, label %50, !llvm.loop !3

.lr.ph15.split.us.split.loopexit:                 ; preds = %50
  %.lcssa34 = phi i64 [ %57, %50 ]
  %.lcssa = phi i64 [ %55, %50 ]
  br label %.lr.ph15.split.us.split

.lr.ph15.split.us.split:                          ; preds = %.lr.ph15.split.us.split.loopexit, %.lr.ph15.split.us
  %j.08.us.unr = phi i64 [ 1, %.lr.ph15.split.us ], [ %.lcssa34, %.lr.ph15.split.us.split.loopexit ]
  %last.07.us.unr = phi i64 [ %48, %.lr.ph15.split.us ], [ %.lcssa, %.lr.ph15.split.us.split.loopexit ]
  br i1 %46, label %._crit_edge11.us, label %.lr.ph15.split.us.split.split

.lr.ph15.split.us.split.split:                    ; preds = %.lr.ph15.split.us.split
  br label %58

; <label>:58                                      ; preds = %58, %.lr.ph15.split.us.split.split
  %j.08.us = phi i64 [ %j.08.us.unr, %.lr.ph15.split.us.split.split ], [ %86, %58 ]
  %last.07.us = phi i64 [ %last.07.us.unr, %.lr.ph15.split.us.split.split ], [ %84, %58 ]
  %59 = mul nsw i64 %j.08.us, %R
  %60 = add nsw i64 %59, %k.212.us
  %61 = getelementptr inbounds i64, i64* %16, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %last.07.us
  %64 = getelementptr inbounds i64, i64* %17, i64 %60
  store i64 %63, i64* %64, align 8
  %65 = add nuw nsw i64 %j.08.us, 1
  %66 = mul nsw i64 %65, %R
  %67 = add nsw i64 %66, %k.212.us
  %68 = getelementptr inbounds i64, i64* %16, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %63
  %71 = getelementptr inbounds i64, i64* %17, i64 %67
  store i64 %70, i64* %71, align 8
  %72 = add nsw i64 %j.08.us, 2
  %73 = mul nsw i64 %72, %R
  %74 = add nsw i64 %73, %k.212.us
  %75 = getelementptr inbounds i64, i64* %16, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %70
  %78 = getelementptr inbounds i64, i64* %17, i64 %74
  store i64 %77, i64* %78, align 8
  %79 = add nsw i64 %j.08.us, 3
  %80 = mul nsw i64 %79, %R
  %81 = add nsw i64 %80, %k.212.us
  %82 = getelementptr inbounds i64, i64* %16, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %77
  %85 = getelementptr inbounds i64, i64* %17, i64 %81
  store i64 %84, i64* %85, align 8
  %86 = add nsw i64 %j.08.us, 4
  %exitcond26.3 = icmp eq i64 %86, %2
  br i1 %exitcond26.3, label %._crit_edge11.us.unr-lcssa, label %58

._crit_edge11.us.unr-lcssa:                       ; preds = %58
  br label %._crit_edge11.us

._crit_edge11.us:                                 ; preds = %._crit_edge11.us.unr-lcssa, %.lr.ph15.split.us.split
  %87 = add nsw i64 %k.212.us, 1
  %88 = load i64, i64* %k_stop, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %.lr.ph15.split.us, label %._crit_edge16.loopexit

.lr.ph15.split:                                   ; preds = %.lr.ph15.split, %.lr.ph15.split.preheader
  %k.212 = phi i64 [ %93, %.lr.ph15.split ], [ %40, %.lr.ph15.split.preheader ]
  %90 = getelementptr inbounds i64, i64* %16, i64 %k.212
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64, i64* %17, i64 %k.212
  store i64 %91, i64* %92, align 8
  %93 = add nsw i64 %k.212, 1
  %94 = load i64, i64* %k_stop, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %.lr.ph15.split, label %._crit_edge16.loopexit31

._crit_edge16.loopexit:                           ; preds = %._crit_edge11.us
  br label %._crit_edge16

._crit_edge16.loopexit31:                         ; preds = %.lr.ph15.split
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %._crit_edge16.loopexit31, %._crit_edge16.loopexit, %._crit_edge20
  %96 = add nsw i64 %2, -1
  %97 = mul nsw i64 %96, %R
  %98 = getelementptr inbounds i64, i64* %17, i64 %97
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %99 = getelementptr inbounds i64, i64* %17, i64 %18
  br i1 %20, label %.lr.ph5.preheader, label %._crit_edge6

.lr.ph5.preheader:                                ; preds = %._crit_edge16
  %xtraiter = and i64 %R, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph5.preheader.split, label %.lr.ph5.prol

.lr.ph5.prol:                                     ; preds = %.lr.ph5.preheader
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %19, align 8
  %102 = sub i64 %100, %101
  store i64 %102, i64* %19, align 8
  %103 = load i64, i64* %98, align 8
  br label %.lr.ph5.preheader.split

.lr.ph5.preheader.split:                          ; preds = %.lr.ph5.prol, %.lr.ph5.preheader
  %offset.03.unr = phi i64 [ 0, %.lr.ph5.preheader ], [ %103, %.lr.ph5.prol ]
  %k.32.unr = phi i64 [ 0, %.lr.ph5.preheader ], [ 1, %.lr.ph5.prol ]
  %104 = icmp eq i64 %R, 1
  br i1 %104, label %._crit_edge6.loopexit, label %.lr.ph5.preheader.split.split

.lr.ph5.preheader.split.split:                    ; preds = %.lr.ph5.preheader.split
  br label %.lr.ph5

.lr.ph5:                                          ; preds = %.lr.ph5, %.lr.ph5.preheader.split.split
  %offset.03 = phi i64 [ %offset.03.unr, %.lr.ph5.preheader.split.split ], [ %123, %.lr.ph5 ]
  %k.32 = phi i64 [ %k.32.unr, %.lr.ph5.preheader.split.split ], [ %124, %.lr.ph5 ]
  %105 = getelementptr inbounds i64, i64* %99, i64 %k.32
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i64, i64* %19, i64 %k.32
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %106, %offset.03
  %110 = sub i64 %109, %108
  store i64 %110, i64* %107, align 8
  %111 = getelementptr inbounds i64, i64* %98, i64 %k.32
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %offset.03
  %114 = add nuw nsw i64 %k.32, 1
  %115 = getelementptr inbounds i64, i64* %99, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i64, i64* %19, i64 %114
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %116, %113
  %120 = sub i64 %119, %118
  store i64 %120, i64* %117, align 8
  %121 = getelementptr inbounds i64, i64* %98, i64 %114
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %113
  %124 = add nsw i64 %k.32, 2
  %exitcond.1 = icmp eq i64 %124, %R
  br i1 %exitcond.1, label %._crit_edge6.loopexit.unr-lcssa, label %.lr.ph5

._crit_edge6.loopexit.unr-lcssa:                  ; preds = %.lr.ph5
  br label %._crit_edge6.loopexit

._crit_edge6.loopexit:                            ; preds = %._crit_edge6.loopexit.unr-lcssa, %.lr.ph5.preheader.split
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %._crit_edge6.loopexit, %._crit_edge16
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  call void @createPartition(i64 0, i64 %q, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #6
  %125 = load i64, i64* %k_start, align 8
  %126 = load i64, i64* %k_stop, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge6
  %128 = trunc i64 %m to i32
  %129 = shl i32 -1, %128
  %130 = xor i32 %129, -1
  %131 = sext i32 %130 to i64
  br label %132

; <label>:132                                     ; preds = %132, %.lr.ph
  %k.41 = phi i64 [ %125, %.lr.ph ], [ %142, %132 ]
  %133 = getelementptr inbounds i64, i64* %lKey, i64 %k.41
  %134 = load i64, i64* %133, align 8
  %135 = lshr i64 %134, %bitOff
  %136 = and i64 %135, %131
  %137 = getelementptr inbounds i64, i64* %19, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i64, i64* %lSorted, i64 %138
  store i64 %134, i64* %139, align 8
  %140 = load i64, i64* %137, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %137, align 8
  %142 = add nsw i64 %k.41, 1
  %143 = load i64, i64* %k_stop, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %132, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %132
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge6
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %3, label %145, label %148

; <label>:145                                     ; preds = %._crit_edge
  %146 = bitcast i64* %17 to i8*
  call void @free(i8* %146) #6
  %147 = bitcast i64* %16 to i8*
  call void @free(i8* %147) #6
  br label %148

; <label>:148                                     ; preds = %145, %._crit_edge
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @all_countsort_node_aux_seq(i64 %q, i64* nocapture readonly %lKey, i64* nocapture %lSorted, i64* nocapture readonly %auxKey, i64* nocapture %auxSorted, i64 %R, i64 %bitOff, i64 %m) #0 {
  %1 = shl i64 %R, 3
  %2 = tail call noalias i8* @malloc(i64 %1) #6
  %3 = bitcast i8* %2 to i64*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.3, i64 0, i64 0), i32 197, i8* nonnull getelementptr inbounds ([124 x i8], [124 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux_seq, i64 0, i64 0)) #15
  unreachable

; <label>:6                                       ; preds = %0
  %7 = tail call noalias i8* @malloc(i64 %1) #6
  %8 = bitcast i8* %7 to i64*
  %9 = icmp eq i8* %7, null
  br i1 %9, label %11, label %.preheader4

.preheader4:                                      ; preds = %6
  %10 = icmp sgt i64 %R, 0
  br i1 %10, label %.lr.ph14.preheader, label %.preheader3

.lr.ph14.preheader:                               ; preds = %.preheader4
  call void @llvm.memset.p0i8.i64(i8* nonnull %2, i8 0, i64 %1, i32 8, i1 false)
  br label %.preheader3

; <label>:11                                      ; preds = %6
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.3, i64 0, i64 0), i32 199, i8* nonnull getelementptr inbounds ([124 x i8], [124 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux_seq, i64 0, i64 0)) #15
  unreachable

.preheader3:                                      ; preds = %.lr.ph14.preheader, %.preheader4
  %12 = icmp sgt i64 %q, 0
  br i1 %12, label %.lr.ph12, label %.preheader2

.lr.ph12:                                         ; preds = %.preheader3
  %13 = trunc i64 %m to i32
  %14 = shl i32 -1, %13
  %15 = xor i32 %14, -1
  %16 = sext i32 %15 to i64
  %xtraiter21 = and i64 %q, 1
  %lcmp.mod22 = icmp eq i64 %xtraiter21, 0
  br i1 %lcmp.mod22, label %.lr.ph12.split, label %17

; <label>:17                                      ; preds = %.lr.ph12
  %18 = load i64, i64* %lKey, align 8
  %19 = lshr i64 %18, %bitOff
  %20 = and i64 %19, %16
  %21 = getelementptr inbounds i64, i64* %3, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  br label %.lr.ph12.split

.lr.ph12.split:                                   ; preds = %17, %.lr.ph12
  %k.111.unr = phi i64 [ 0, %.lr.ph12 ], [ 1, %17 ]
  %24 = icmp eq i64 %q, 1
  br i1 %24, label %.preheader2.loopexit, label %.lr.ph12.split.split

.lr.ph12.split.split:                             ; preds = %.lr.ph12.split
  br label %25

.preheader2.loopexit.unr-lcssa:                   ; preds = %25
  br label %.preheader2.loopexit

.preheader2.loopexit:                             ; preds = %.preheader2.loopexit.unr-lcssa, %.lr.ph12.split
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.loopexit, %.preheader3
  br i1 %10, label %.lr.ph8.preheader, label %.preheader

; <label>:25                                      ; preds = %25, %.lr.ph12.split.split
  %k.111 = phi i64 [ %k.111.unr, %.lr.ph12.split.split ], [ %41, %25 ]
  %26 = getelementptr inbounds i64, i64* %lKey, i64 %k.111
  %27 = load i64, i64* %26, align 8
  %28 = lshr i64 %27, %bitOff
  %29 = and i64 %28, %16
  %30 = getelementptr inbounds i64, i64* %3, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = add nuw nsw i64 %k.111, 1
  %34 = getelementptr inbounds i64, i64* %lKey, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = lshr i64 %35, %bitOff
  %37 = and i64 %36, %16
  %38 = getelementptr inbounds i64, i64* %3, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = add nsw i64 %k.111, 2
  %exitcond17.1 = icmp eq i64 %41, %q
  br i1 %exitcond17.1, label %.preheader2.loopexit.unr-lcssa, label %25

.lr.ph8.preheader:                                ; preds = %.preheader2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* nonnull %2, i64 %1, i32 8, i1 false)
  %42 = add i64 %R, -1
  %xtraiter19 = and i64 %R, 3
  %lcmp.mod20 = icmp eq i64 %xtraiter19, 0
  br i1 %lcmp.mod20, label %.lr.ph8.preheader.split, label %.lr.ph8.prol.preheader

.lr.ph8.prol.preheader:                           ; preds = %.lr.ph8.preheader
  br label %.lr.ph8.prol

.lr.ph8.prol:                                     ; preds = %.lr.ph8.prol, %.lr.ph8.prol.preheader
  %k.37.prol = phi i64 [ %49, %.lr.ph8.prol ], [ 0, %.lr.ph8.prol.preheader ]
  %offset.06.prol = phi i64 [ %47, %.lr.ph8.prol ], [ 0, %.lr.ph8.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %.lr.ph8.prol ], [ %xtraiter19, %.lr.ph8.prol.preheader ]
  %43 = getelementptr inbounds i64, i64* %8, i64 %k.37.prol
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %3, i64 %k.37.prol
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %44, %offset.06.prol
  %48 = sub i64 %47, %46
  store i64 %48, i64* %45, align 8
  %49 = add nuw nsw i64 %k.37.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph8.preheader.split.loopexit, label %.lr.ph8.prol, !llvm.loop !5

.lr.ph8.preheader.split.loopexit:                 ; preds = %.lr.ph8.prol
  %.lcssa23 = phi i64 [ %49, %.lr.ph8.prol ]
  %.lcssa = phi i64 [ %47, %.lr.ph8.prol ]
  br label %.lr.ph8.preheader.split

.lr.ph8.preheader.split:                          ; preds = %.lr.ph8.preheader.split.loopexit, %.lr.ph8.preheader
  %k.37.unr = phi i64 [ 0, %.lr.ph8.preheader ], [ %.lcssa23, %.lr.ph8.preheader.split.loopexit ]
  %offset.06.unr = phi i64 [ 0, %.lr.ph8.preheader ], [ %.lcssa, %.lr.ph8.preheader.split.loopexit ]
  %50 = icmp ult i64 %42, 3
  br i1 %50, label %.preheader.loopexit, label %.lr.ph8.preheader.split.split

.lr.ph8.preheader.split.split:                    ; preds = %.lr.ph8.preheader.split
  br label %.lr.ph8

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph8
  br label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph8.preheader.split
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader2
  br i1 %12, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %51 = trunc i64 %m to i32
  %52 = shl i32 -1, %51
  %53 = xor i32 %52, -1
  %54 = sext i32 %53 to i64
  %xtraiter = and i64 %q, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.split, label %55

; <label>:55                                      ; preds = %.lr.ph
  %56 = load i64, i64* %lKey, align 8
  %57 = lshr i64 %56, %bitOff
  %58 = and i64 %57, %54
  %59 = getelementptr inbounds i64, i64* %3, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %lSorted, i64 %60
  store i64 %56, i64* %61, align 8
  %62 = load i64, i64* %auxKey, align 8
  %63 = getelementptr inbounds i64, i64* %auxSorted, i64 %60
  store i64 %62, i64* %63, align 8
  %64 = add nsw i64 %60, 1
  store i64 %64, i64* %59, align 8
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %55, %.lr.ph
  %k.45.unr = phi i64 [ 0, %.lr.ph ], [ 1, %55 ]
  %65 = icmp eq i64 %q, 1
  br i1 %65, label %._crit_edge.loopexit, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br label %94

.lr.ph8:                                          ; preds = %.lr.ph8, %.lr.ph8.preheader.split.split
  %k.37 = phi i64 [ %k.37.unr, %.lr.ph8.preheader.split.split ], [ %93, %.lr.ph8 ]
  %offset.06 = phi i64 [ %offset.06.unr, %.lr.ph8.preheader.split.split ], [ %91, %.lr.ph8 ]
  %66 = getelementptr inbounds i64, i64* %8, i64 %k.37
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i64, i64* %3, i64 %k.37
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %67, %offset.06
  %71 = sub i64 %70, %69
  store i64 %71, i64* %68, align 8
  %72 = add nuw nsw i64 %k.37, 1
  %73 = getelementptr inbounds i64, i64* %8, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %3, i64 %72
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %74, %70
  %78 = sub i64 %77, %76
  store i64 %78, i64* %75, align 8
  %79 = add nsw i64 %k.37, 2
  %80 = getelementptr inbounds i64, i64* %8, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i64, i64* %3, i64 %79
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %81, %77
  %85 = sub i64 %84, %83
  store i64 %85, i64* %82, align 8
  %86 = add nsw i64 %k.37, 3
  %87 = getelementptr inbounds i64, i64* %8, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i64, i64* %3, i64 %86
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %88, %84
  %92 = sub i64 %91, %90
  store i64 %92, i64* %89, align 8
  %93 = add nsw i64 %k.37, 4
  %exitcond15.3 = icmp eq i64 %93, %R
  br i1 %exitcond15.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph8

; <label>:94                                      ; preds = %94, %.lr.ph.split.split
  %k.45 = phi i64 [ %k.45.unr, %.lr.ph.split.split ], [ %118, %94 ]
  %95 = getelementptr inbounds i64, i64* %lKey, i64 %k.45
  %96 = load i64, i64* %95, align 8
  %97 = lshr i64 %96, %bitOff
  %98 = and i64 %97, %54
  %99 = getelementptr inbounds i64, i64* %3, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i64, i64* %lSorted, i64 %100
  store i64 %96, i64* %101, align 8
  %102 = getelementptr inbounds i64, i64* %auxKey, i64 %k.45
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i64, i64* %auxSorted, i64 %100
  store i64 %103, i64* %104, align 8
  %105 = add nsw i64 %100, 1
  store i64 %105, i64* %99, align 8
  %106 = add nuw nsw i64 %k.45, 1
  %107 = getelementptr inbounds i64, i64* %lKey, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = lshr i64 %108, %bitOff
  %110 = and i64 %109, %54
  %111 = getelementptr inbounds i64, i64* %3, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i64, i64* %lSorted, i64 %112
  store i64 %108, i64* %113, align 8
  %114 = getelementptr inbounds i64, i64* %auxKey, i64 %106
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i64, i64* %auxSorted, i64 %112
  store i64 %115, i64* %116, align 8
  %117 = add nsw i64 %112, 1
  store i64 %117, i64* %111, align 8
  %118 = add nsw i64 %k.45, 2
  %exitcond.1 = icmp eq i64 %118, %q
  br i1 %exitcond.1, label %._crit_edge.loopexit.unr-lcssa, label %94

._crit_edge.loopexit.unr-lcssa:                   ; preds = %94
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  tail call void @free(i8* %7) #6
  tail call void @free(i8* nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @all_countsort_node_aux(i64 %q, i64* nocapture readonly %lKey, i64* nocapture %lSorted, i64* nocapture readonly %auxKey, i64* nocapture %auxSorted, i64 %R, i64 %bitOff, i64 %m) #0 {
  %k_start = alloca i64, align 8
  %k_stop = alloca i64, align 8
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %2 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #6
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %15

; <label>:4                                       ; preds = %0
  %5 = shl i64 %R, 3
  %6 = mul i64 %5, %2
  %7 = tail call noalias i8* @malloc(i64 %6) #6
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.3, i64 0, i64 0), i32 265, i8* nonnull getelementptr inbounds ([120 x i8], [120 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux, i64 0, i64 0)) #15
  unreachable

; <label>:10                                      ; preds = %4
  store i8* %7, i8** bitcast (i64** @global_myHisto to i8**), align 8
  %11 = tail call noalias i8* @malloc(i64 %6) #6
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.3, i64 0, i64 0), i32 268, i8* nonnull getelementptr inbounds ([120 x i8], [120 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux, i64 0, i64 0)) #15
  unreachable

; <label>:14                                      ; preds = %10
  store i8* %11, i8** bitcast (i64** @global_psHisto to i8**), align 8
  br label %15

; <label>:15                                      ; preds = %14, %0
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %16 = load i64*, i64** @global_myHisto, align 8
  %17 = load i64*, i64** @global_psHisto, align 8
  %18 = mul i64 %1, %R
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = icmp sgt i64 %R, 0
  br i1 %20, label %.lr.ph23.preheader, label %._crit_edge24

.lr.ph23.preheader:                               ; preds = %15
  %scevgep28 = bitcast i64* %19 to i8*
  %21 = shl i64 %R, 3
  call void @llvm.memset.p0i8.i64(i8* %scevgep28, i8 0, i64 %21, i32 8, i1 false)
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %.lr.ph23.preheader, %15
  call void @createPartition(i64 0, i64 %q, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #6
  %22 = load i64, i64* %k_start, align 8
  %23 = load i64, i64* %k_stop, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %._crit_edge24
  %25 = trunc i64 %m to i32
  %26 = shl i32 -1, %25
  %27 = xor i32 %26, -1
  %28 = sext i32 %27 to i64
  br label %29

; <label>:29                                      ; preds = %29, %.lr.ph19
  %k.117 = phi i64 [ %22, %.lr.ph19 ], [ %37, %29 ]
  %30 = getelementptr inbounds i64, i64* %lKey, i64 %k.117
  %31 = load i64, i64* %30, align 8
  %32 = lshr i64 %31, %bitOff
  %33 = and i64 %32, %28
  %34 = getelementptr inbounds i64, i64* %19, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = add nsw i64 %k.117, 1
  %38 = load i64, i64* %k_stop, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %29, label %._crit_edge20.loopexit

._crit_edge20.loopexit:                           ; preds = %29
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge20.loopexit, %._crit_edge24
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  call void @createPartition(i64 0, i64 %R, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #6
  %40 = load i64, i64* %k_start, align 8
  %41 = load i64, i64* %k_stop, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %.lr.ph15, label %._crit_edge16

.lr.ph15:                                         ; preds = %._crit_edge20
  %43 = icmp sgt i64 %2, 1
  br i1 %43, label %.lr.ph15.split.us.preheader, label %.lr.ph15.split.preheader

.lr.ph15.split.preheader:                         ; preds = %.lr.ph15
  br label %.lr.ph15.split

.lr.ph15.split.us.preheader:                      ; preds = %.lr.ph15
  %44 = add i64 %2, 3
  %45 = add i64 %2, -2
  %xtraiter32 = and i64 %44, 3
  %lcmp.mod33 = icmp eq i64 %xtraiter32, 0
  %46 = icmp ult i64 %45, 3
  br label %.lr.ph15.split.us

.lr.ph15.split.us:                                ; preds = %._crit_edge11.us, %.lr.ph15.split.us.preheader
  %k.212.us = phi i64 [ %87, %._crit_edge11.us ], [ %40, %.lr.ph15.split.us.preheader ]
  %47 = getelementptr inbounds i64, i64* %16, i64 %k.212.us
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %17, i64 %k.212.us
  store i64 %48, i64* %49, align 8
  br i1 %lcmp.mod33, label %.lr.ph15.split.us.split, label %.preheader

.preheader:                                       ; preds = %.lr.ph15.split.us
  br label %50

; <label>:50                                      ; preds = %50, %.preheader
  %j.08.us.prol = phi i64 [ %57, %50 ], [ 1, %.preheader ]
  %last.07.us.prol = phi i64 [ %55, %50 ], [ %48, %.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %50 ], [ %xtraiter32, %.preheader ]
  %51 = mul nsw i64 %j.08.us.prol, %R
  %52 = add nsw i64 %51, %k.212.us
  %53 = getelementptr inbounds i64, i64* %16, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %last.07.us.prol
  %56 = getelementptr inbounds i64, i64* %17, i64 %52
  store i64 %55, i64* %56, align 8
  %57 = add nuw nsw i64 %j.08.us.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph15.split.us.split.loopexit, label %50, !llvm.loop !6

.lr.ph15.split.us.split.loopexit:                 ; preds = %50
  %.lcssa34 = phi i64 [ %57, %50 ]
  %.lcssa = phi i64 [ %55, %50 ]
  br label %.lr.ph15.split.us.split

.lr.ph15.split.us.split:                          ; preds = %.lr.ph15.split.us.split.loopexit, %.lr.ph15.split.us
  %j.08.us.unr = phi i64 [ 1, %.lr.ph15.split.us ], [ %.lcssa34, %.lr.ph15.split.us.split.loopexit ]
  %last.07.us.unr = phi i64 [ %48, %.lr.ph15.split.us ], [ %.lcssa, %.lr.ph15.split.us.split.loopexit ]
  br i1 %46, label %._crit_edge11.us, label %.lr.ph15.split.us.split.split

.lr.ph15.split.us.split.split:                    ; preds = %.lr.ph15.split.us.split
  br label %58

; <label>:58                                      ; preds = %58, %.lr.ph15.split.us.split.split
  %j.08.us = phi i64 [ %j.08.us.unr, %.lr.ph15.split.us.split.split ], [ %86, %58 ]
  %last.07.us = phi i64 [ %last.07.us.unr, %.lr.ph15.split.us.split.split ], [ %84, %58 ]
  %59 = mul nsw i64 %j.08.us, %R
  %60 = add nsw i64 %59, %k.212.us
  %61 = getelementptr inbounds i64, i64* %16, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %last.07.us
  %64 = getelementptr inbounds i64, i64* %17, i64 %60
  store i64 %63, i64* %64, align 8
  %65 = add nuw nsw i64 %j.08.us, 1
  %66 = mul nsw i64 %65, %R
  %67 = add nsw i64 %66, %k.212.us
  %68 = getelementptr inbounds i64, i64* %16, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %63
  %71 = getelementptr inbounds i64, i64* %17, i64 %67
  store i64 %70, i64* %71, align 8
  %72 = add nsw i64 %j.08.us, 2
  %73 = mul nsw i64 %72, %R
  %74 = add nsw i64 %73, %k.212.us
  %75 = getelementptr inbounds i64, i64* %16, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %70
  %78 = getelementptr inbounds i64, i64* %17, i64 %74
  store i64 %77, i64* %78, align 8
  %79 = add nsw i64 %j.08.us, 3
  %80 = mul nsw i64 %79, %R
  %81 = add nsw i64 %80, %k.212.us
  %82 = getelementptr inbounds i64, i64* %16, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %77
  %85 = getelementptr inbounds i64, i64* %17, i64 %81
  store i64 %84, i64* %85, align 8
  %86 = add nsw i64 %j.08.us, 4
  %exitcond26.3 = icmp eq i64 %86, %2
  br i1 %exitcond26.3, label %._crit_edge11.us.unr-lcssa, label %58

._crit_edge11.us.unr-lcssa:                       ; preds = %58
  br label %._crit_edge11.us

._crit_edge11.us:                                 ; preds = %._crit_edge11.us.unr-lcssa, %.lr.ph15.split.us.split
  %87 = add nsw i64 %k.212.us, 1
  %88 = load i64, i64* %k_stop, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %.lr.ph15.split.us, label %._crit_edge16.loopexit

.lr.ph15.split:                                   ; preds = %.lr.ph15.split, %.lr.ph15.split.preheader
  %k.212 = phi i64 [ %93, %.lr.ph15.split ], [ %40, %.lr.ph15.split.preheader ]
  %90 = getelementptr inbounds i64, i64* %16, i64 %k.212
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64, i64* %17, i64 %k.212
  store i64 %91, i64* %92, align 8
  %93 = add nsw i64 %k.212, 1
  %94 = load i64, i64* %k_stop, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %.lr.ph15.split, label %._crit_edge16.loopexit31

._crit_edge16.loopexit:                           ; preds = %._crit_edge11.us
  br label %._crit_edge16

._crit_edge16.loopexit31:                         ; preds = %.lr.ph15.split
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %._crit_edge16.loopexit31, %._crit_edge16.loopexit, %._crit_edge20
  %96 = add nsw i64 %2, -1
  %97 = mul nsw i64 %96, %R
  %98 = getelementptr inbounds i64, i64* %17, i64 %97
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %99 = getelementptr inbounds i64, i64* %17, i64 %18
  br i1 %20, label %.lr.ph5.preheader, label %._crit_edge6

.lr.ph5.preheader:                                ; preds = %._crit_edge16
  %xtraiter = and i64 %R, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph5.preheader.split, label %.lr.ph5.prol

.lr.ph5.prol:                                     ; preds = %.lr.ph5.preheader
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %19, align 8
  %102 = sub i64 %100, %101
  store i64 %102, i64* %19, align 8
  %103 = load i64, i64* %98, align 8
  br label %.lr.ph5.preheader.split

.lr.ph5.preheader.split:                          ; preds = %.lr.ph5.prol, %.lr.ph5.preheader
  %offset.03.unr = phi i64 [ 0, %.lr.ph5.preheader ], [ %103, %.lr.ph5.prol ]
  %k.32.unr = phi i64 [ 0, %.lr.ph5.preheader ], [ 1, %.lr.ph5.prol ]
  %104 = icmp eq i64 %R, 1
  br i1 %104, label %._crit_edge6.loopexit, label %.lr.ph5.preheader.split.split

.lr.ph5.preheader.split.split:                    ; preds = %.lr.ph5.preheader.split
  br label %.lr.ph5

.lr.ph5:                                          ; preds = %.lr.ph5, %.lr.ph5.preheader.split.split
  %offset.03 = phi i64 [ %offset.03.unr, %.lr.ph5.preheader.split.split ], [ %123, %.lr.ph5 ]
  %k.32 = phi i64 [ %k.32.unr, %.lr.ph5.preheader.split.split ], [ %124, %.lr.ph5 ]
  %105 = getelementptr inbounds i64, i64* %99, i64 %k.32
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i64, i64* %19, i64 %k.32
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %106, %offset.03
  %110 = sub i64 %109, %108
  store i64 %110, i64* %107, align 8
  %111 = getelementptr inbounds i64, i64* %98, i64 %k.32
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %offset.03
  %114 = add nuw nsw i64 %k.32, 1
  %115 = getelementptr inbounds i64, i64* %99, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i64, i64* %19, i64 %114
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %116, %113
  %120 = sub i64 %119, %118
  store i64 %120, i64* %117, align 8
  %121 = getelementptr inbounds i64, i64* %98, i64 %114
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %113
  %124 = add nsw i64 %k.32, 2
  %exitcond.1 = icmp eq i64 %124, %R
  br i1 %exitcond.1, label %._crit_edge6.loopexit.unr-lcssa, label %.lr.ph5

._crit_edge6.loopexit.unr-lcssa:                  ; preds = %.lr.ph5
  br label %._crit_edge6.loopexit

._crit_edge6.loopexit:                            ; preds = %._crit_edge6.loopexit.unr-lcssa, %.lr.ph5.preheader.split
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %._crit_edge6.loopexit, %._crit_edge16
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  call void @createPartition(i64 0, i64 %q, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #6
  %125 = load i64, i64* %k_start, align 8
  %126 = load i64, i64* %k_stop, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge6
  %128 = trunc i64 %m to i32
  %129 = shl i32 -1, %128
  %130 = xor i32 %129, -1
  %131 = sext i32 %130 to i64
  br label %132

; <label>:132                                     ; preds = %132, %.lr.ph
  %k.41 = phi i64 [ %125, %.lr.ph ], [ %146, %132 ]
  %133 = getelementptr inbounds i64, i64* %lKey, i64 %k.41
  %134 = load i64, i64* %133, align 8
  %135 = lshr i64 %134, %bitOff
  %136 = and i64 %135, %131
  %137 = getelementptr inbounds i64, i64* %19, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i64, i64* %lSorted, i64 %138
  store i64 %134, i64* %139, align 8
  %140 = getelementptr inbounds i64, i64* %auxKey, i64 %k.41
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %137, align 8
  %143 = getelementptr inbounds i64, i64* %auxSorted, i64 %142
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* %137, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %137, align 8
  %146 = add nsw i64 %k.41, 1
  %147 = load i64, i64* %k_stop, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %132, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %132
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge6
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %3, label %149, label %152

; <label>:149                                     ; preds = %._crit_edge
  %150 = bitcast i64* %17 to i8*
  call void @free(i8* %150) #6
  %151 = bitcast i64* %16 to i8*
  call void @free(i8* %151) #6
  br label %152

; <label>:152                                     ; preds = %149, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_s3(i64 %q, i64* nocapture readonly %lKeys, i64* nocapture %lSorted) #0 {
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = shl i64 %q, 3
  %5 = tail call noalias i8* @malloc(i64 %4) #6
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.3, i64 0, i64 0), i32 355, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_s3, i64 0, i64 0)) #15
  unreachable

; <label>:8                                       ; preds = %3
  store i8* %5, i8** bitcast (i64** @global_lTemp to i8**), align 8
  br label %9

; <label>:9                                       ; preds = %8, %0
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %10 = load i64*, i64** @global_lTemp, align 8
  tail call void @all_countsort_node(i64 %q, i64* %lKeys, i64* %lSorted, i64 2048, i64 0, i64 11)
  tail call void @all_countsort_node(i64 %q, i64* %lSorted, i64* %10, i64 2048, i64 11, i64 11)
  tail call void @all_countsort_node(i64 %q, i64* %10, i64* %lSorted, i64 1024, i64 22, i64 10)
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %2, label %11, label %13

; <label>:11                                      ; preds = %9
  %12 = bitcast i64* %10 to i8*
  tail call void @free(i8* %12) #6
  br label %13

; <label>:13                                      ; preds = %11, %9
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_s2(i64 %q, i64* nocapture readonly %lKeys, i64* nocapture %lSorted) #0 {
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = shl i64 %q, 3
  %5 = tail call noalias i8* @malloc(i64 %4) #6
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.3, i64 0, i64 0), i32 392, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_s2, i64 0, i64 0)) #15
  unreachable

; <label>:8                                       ; preds = %3
  store i8* %5, i8** bitcast (i64** @global_lTemp to i8**), align 8
  br label %9

; <label>:9                                       ; preds = %8, %0
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %10 = load i64*, i64** @global_lTemp, align 8
  tail call void @all_countsort_node(i64 %q, i64* %lKeys, i64* %10, i64 65536, i64 0, i64 16)
  tail call void @all_countsort_node(i64 %q, i64* %10, i64* %lSorted, i64 65536, i64 16, i64 16)
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %2, label %11, label %13

; <label>:11                                      ; preds = %9
  %12 = bitcast i64* %10 to i8*
  tail call void @free(i8* %12) #6
  br label %13

; <label>:13                                      ; preds = %11, %9
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_aux_s3_seq(i64 %q, i64* nocapture readonly %lKeys, i64* nocapture %lSorted, i64* nocapture readonly %auxKey, i64* nocapture %auxSorted) #0 {
  %1 = shl i64 %q, 3
  %2 = tail call noalias i8* @malloc(i64 %1) #6
  %3 = bitcast i8* %2 to i64*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.3, i64 0, i64 0), i32 428, i8* nonnull getelementptr inbounds ([109 x i8], [109 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3_seq, i64 0, i64 0)) #15
  unreachable

; <label>:6                                       ; preds = %0
  %7 = tail call noalias i8* @malloc(i64 %1) #6
  %8 = bitcast i8* %7 to i64*
  %9 = icmp eq i8* %7, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.3, i64 0, i64 0), i32 430, i8* nonnull getelementptr inbounds ([109 x i8], [109 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3_seq, i64 0, i64 0)) #15
  unreachable

; <label>:11                                      ; preds = %6
  tail call void @all_countsort_node_aux_seq(i64 %q, i64* %lKeys, i64* %lSorted, i64* %auxKey, i64* %auxSorted, i64 2048, i64 0, i64 11)
  tail call void @all_countsort_node_aux_seq(i64 %q, i64* %lSorted, i64* %3, i64* %auxSorted, i64* %8, i64 2048, i64 11, i64 11)
  tail call void @all_countsort_node_aux_seq(i64 %q, i64* %3, i64* %lSorted, i64* %8, i64* %auxSorted, i64 1024, i64 22, i64 10)
  tail call void @free(i8* nonnull %2) #6
  tail call void @free(i8* nonnull %7) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_aux_s3(i64 %q, i64* nocapture readonly %lKeys, i64* nocapture %lSorted, i64* nocapture readonly %auxKey, i64* nocapture %auxSorted) #0 {
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = shl i64 %q, 3
  %5 = tail call noalias i8* @malloc(i64 %4) #6
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.3, i64 0, i64 0), i32 461, i8* nonnull getelementptr inbounds ([105 x i8], [105 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3, i64 0, i64 0)) #15
  unreachable

; <label>:8                                       ; preds = %3
  store i8* %5, i8** bitcast (i64** @global_lTemp to i8**), align 8
  %9 = tail call noalias i8* @malloc(i64 %4) #6
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.3, i64 0, i64 0), i32 464, i8* nonnull getelementptr inbounds ([105 x i8], [105 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3, i64 0, i64 0)) #15
  unreachable

; <label>:12                                      ; preds = %8
  store i8* %9, i8** bitcast (i64** @global_lTemp2 to i8**), align 8
  br label %13

; <label>:13                                      ; preds = %12, %0
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %14 = load i64*, i64** @global_lTemp, align 8
  %15 = load i64*, i64** @global_lTemp2, align 8
  tail call void @all_countsort_node_aux(i64 %q, i64* %lKeys, i64* %lSorted, i64* %auxKey, i64* %auxSorted, i64 2048, i64 0, i64 11)
  tail call void @all_countsort_node_aux(i64 %q, i64* %lSorted, i64* %14, i64* %auxSorted, i64* %15, i64 2048, i64 11, i64 11)
  tail call void @all_countsort_node_aux(i64 %q, i64* %14, i64* %lSorted, i64* %15, i64* %auxSorted, i64 1024, i64 22, i64 10)
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %2, label %16, label %19

; <label>:16                                      ; preds = %13
  %17 = bitcast i64* %14 to i8*
  tail call void @free(i8* %17) #6
  %18 = bitcast i64* %15 to i8*
  tail call void @free(i8* %18) #6
  br label %19

; <label>:19                                      ; preds = %16, %13
  ret void
}

; Function Attrs: nounwind uwtable
define void @computeGraph(i8* nocapture readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #6
  %5 = bitcast i8* %argPtr to %struct.graph**
  %6 = load %struct.graph*, %struct.graph** %5, align 8
  %7 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %8 = bitcast i8* %7 to %struct.graphSDG**
  %9 = load %struct.graphSDG*, %struct.graphSDG** %8, align 8
  %10 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %11 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #6
  %12 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 4
  %13 = load i64, i64* %12, align 8
  call void @createPartition(i64 0, i64 %13, i64 %10, i64 %11, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %14 = load i64, i64* %i_start, align 8
  %15 = load i64, i64* %i_stop, align 8
  %16 = icmp sgt i64 %15, %14
  br i1 %16, label %.lr.ph128, label %.preheader25

.lr.ph128:                                        ; preds = %0
  %17 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = sub i64 %15, %14
  %min.iters.check = icmp ult i64 %19, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %min.iters.checked

scalar.ph.preheader:                              ; preds = %middle.block, %min.iters.checked, %.lr.ph128
  %maxNumVertices.0126.ph = phi i64 [ 0, %min.iters.checked ], [ 0, %.lr.ph128 ], [ %46, %middle.block ]
  %i.0125.ph = phi i64 [ %14, %min.iters.checked ], [ %14, %.lr.ph128 ], [ %ind.end, %middle.block ]
  br label %scalar.ph

min.iters.checked:                                ; preds = %.lr.ph128
  %n.vec = and i64 %19, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = add i64 %14, %n.vec
  br i1 %cmp.zero, label %scalar.ph.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  %20 = sub i64 %15, %14
  %21 = add i64 %20, -4
  %22 = lshr i64 %21, 2
  %23 = and i64 %22, 1
  %lcmp.mod263 = icmp eq i64 %23, 0
  br i1 %lcmp.mod263, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %24 = getelementptr inbounds i64, i64* %18, i64 %14
  %25 = bitcast i64* %24 to <2 x i64>*
  %wide.load.prol = load <2 x i64>, <2 x i64>* %25, align 8
  %26 = getelementptr i64, i64* %24, i64 2
  %27 = bitcast i64* %26 to <2 x i64>*
  %wide.load215.prol = load <2 x i64>, <2 x i64>* %27, align 8
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %.lcssa261.unr = phi <2 x i64> [ undef, %vector.body.preheader ], [ %wide.load215.prol, %vector.body.prol ]
  %.lcssa260.unr = phi <2 x i64> [ undef, %vector.body.preheader ], [ %wide.load.prol, %vector.body.prol ]
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 4, %vector.body.prol ]
  %vec.phi.unr = phi <2 x i64> [ zeroinitializer, %vector.body.preheader ], [ %wide.load.prol, %vector.body.prol ]
  %vec.phi213.unr = phi <2 x i64> [ zeroinitializer, %vector.body.preheader ], [ %wide.load215.prol, %vector.body.prol ]
  %28 = icmp eq i64 %22, 0
  br i1 %28, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <2 x i64> [ %vec.phi.unr, %vector.body.preheader.split.split ], [ %43, %vector.body ]
  %vec.phi213 = phi <2 x i64> [ %vec.phi213.unr, %vector.body.preheader.split.split ], [ %44, %vector.body ]
  %offset.idx = add i64 %14, %index
  %29 = getelementptr inbounds i64, i64* %18, i64 %offset.idx
  %30 = bitcast i64* %29 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %30, align 8
  %31 = getelementptr i64, i64* %29, i64 2
  %32 = bitcast i64* %31 to <2 x i64>*
  %wide.load215 = load <2 x i64>, <2 x i64>* %32, align 8
  %33 = icmp ugt <2 x i64> %wide.load, %vec.phi
  %34 = icmp ugt <2 x i64> %wide.load215, %vec.phi213
  %35 = select <2 x i1> %33, <2 x i64> %wide.load, <2 x i64> %vec.phi
  %36 = select <2 x i1> %34, <2 x i64> %wide.load215, <2 x i64> %vec.phi213
  %index.next = add i64 %index, 4
  %offset.idx.1 = add i64 %14, %index.next
  %37 = getelementptr inbounds i64, i64* %18, i64 %offset.idx.1
  %38 = bitcast i64* %37 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %38, align 8
  %39 = getelementptr i64, i64* %37, i64 2
  %40 = bitcast i64* %39 to <2 x i64>*
  %wide.load215.1 = load <2 x i64>, <2 x i64>* %40, align 8
  %41 = icmp ugt <2 x i64> %wide.load.1, %35
  %42 = icmp ugt <2 x i64> %wide.load215.1, %36
  %43 = select <2 x i1> %41, <2 x i64> %wide.load.1, <2 x i64> %35
  %44 = select <2 x i1> %42, <2 x i64> %wide.load215.1, <2 x i64> %36
  %index.next.1 = add i64 %index, 8
  %45 = icmp eq i64 %index.next.1, %n.vec
  br i1 %45, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !7

middle.block.unr-lcssa:                           ; preds = %vector.body
  %.lcssa283 = phi <2 x i64> [ %44, %vector.body ]
  %.lcssa282 = phi <2 x i64> [ %43, %vector.body ]
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.preheader.split
  %.lcssa261 = phi <2 x i64> [ %.lcssa261.unr, %vector.body.preheader.split ], [ %.lcssa283, %middle.block.unr-lcssa ]
  %.lcssa260 = phi <2 x i64> [ %.lcssa260.unr, %vector.body.preheader.split ], [ %.lcssa282, %middle.block.unr-lcssa ]
  %rdx.minmax.cmp = icmp ugt <2 x i64> %.lcssa260, %.lcssa261
  %rdx.minmax.select = select <2 x i1> %rdx.minmax.cmp, <2 x i64> %.lcssa260, <2 x i64> %.lcssa261
  %rdx.shuf = shufflevector <2 x i64> %rdx.minmax.select, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %rdx.minmax.cmp218 = icmp ugt <2 x i64> %rdx.minmax.select, %rdx.shuf
  %rdx.minmax.cmp218.elt = extractelement <2 x i1> %rdx.minmax.cmp218, i32 0
  %rdx.minmax.select.elt = extractelement <2 x i64> %rdx.minmax.select, i32 0
  %rdx.shuf.elt = extractelement <2 x i64> %rdx.minmax.select, i32 1
  %46 = select i1 %rdx.minmax.cmp218.elt, i64 %rdx.minmax.select.elt, i64 %rdx.shuf.elt
  %cmp.n = icmp eq i64 %19, %n.vec
  br i1 %cmp.n, label %.preheader25, label %scalar.ph.preheader

.preheader25.loopexit:                            ; preds = %scalar.ph
  %.maxNumVertices.0.lcssa = phi i64 [ %.maxNumVertices.0, %scalar.ph ]
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.loopexit, %middle.block, %0
  %maxNumVertices.0.lcssa = phi i64 [ 0, %0 ], [ %46, %middle.block ], [ %.maxNumVertices.0.lcssa, %.preheader25.loopexit ]
  br label %.outer26

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %maxNumVertices.0126 = phi i64 [ %.maxNumVertices.0, %scalar.ph ], [ %maxNumVertices.0126.ph, %scalar.ph.preheader ]
  %i.0125 = phi i64 [ %50, %scalar.ph ], [ %i.0125.ph, %scalar.ph.preheader ]
  %47 = getelementptr inbounds i64, i64* %18, i64 %i.0125
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %48, %maxNumVertices.0126
  %.maxNumVertices.0 = select i1 %49, i64 %48, i64 %maxNumVertices.0126
  %50 = add nsw i64 %i.0125, 1
  %51 = icmp slt i64 %50, %15
  br i1 %51, label %scalar.ph, label %.preheader25.loopexit, !llvm.loop !10

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %.lr.ph123
  call void @llvm.x86.sse2.pause() #6
  %52 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %._crit_edge124.loopexit, label %.lr.ph123

._crit_edge124.loopexit:                          ; preds = %.lr.ph123
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %.outer26, %._crit_edge124.loopexit
  %54 = icmp slt i32 %tries.0.ph, 2
  br i1 %54, label %71, label %55

; <label>:55                                      ; preds = %._crit_edge124
  %56 = add nsw i32 %tries.0.ph, -1
  %57 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 7, i64 0, i64 7, i64 4294967295) #6, !srcloc !12
  %58 = trunc i64 %57 to i32
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %62, label %.outer26

.outer26:                                         ; preds = %55, %.preheader25
  %tries.0.ph = phi i32 [ 9, %.preheader25 ], [ %56, %55 ]
  %60 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %._crit_edge124, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %.outer26
  br label %.lr.ph123

; <label>:62                                      ; preds = %55
  %63 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %66, label %65

; <label>:65                                      ; preds = %62
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !13
  br label %66

; <label>:66                                      ; preds = %65, %62
  %67 = load i64, i64* @global_maxNumVertices, align 8
  %68 = icmp ugt i64 %67, %maxNumVertices.0.lcssa
  %69 = select i1 %68, i64 %67, i64 %maxNumVertices.0.lcssa
  %70 = add i64 %69, 1
  store i64 %70, i64* @global_maxNumVertices, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 7) #6, !srcloc !14
  br label %76

; <label>:71                                      ; preds = %._crit_edge124
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #6
  %72 = load i64, i64* @global_maxNumVertices, align 8
  %73 = icmp ugt i64 %72, %maxNumVertices.0.lcssa
  %74 = select i1 %73, i64 %72, i64 %maxNumVertices.0.lcssa
  %75 = add i64 %74, 1
  store i64 %75, i64* @global_maxNumVertices, align 8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #6
  br label %76

; <label>:76                                      ; preds = %71, %66
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %77 = icmp eq i64 %10, 0
  br i1 %77, label %78, label %._crit_edge164

._crit_edge164:                                   ; preds = %76
  %.pre165 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 0
  br label %122

; <label>:78                                      ; preds = %76
  %79 = load i64, i64* @global_maxNumVertices, align 8
  %80 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 0
  store i64 %79, i64* %80, align 8
  %81 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 1
  store i64 %13, i64* %81, align 8
  %82 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 2
  %83 = bitcast i64** %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 13
  %86 = bitcast i64** %85 to i64*
  store i64 %84, i64* %86, align 8
  %87 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 3
  %88 = bitcast i8** %87 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 14
  %91 = bitcast i8** %90 to i64*
  store i64 %89, i64* %91, align 8
  %92 = icmp eq i64 %13, 0
  %93 = inttoptr i64 %84 to i64*
  br i1 %92, label %.loopexit24, label %.lr.ph122

.lr.ph122:                                        ; preds = %78
  %94 = add i64 %13, -1
  br label %97

; <label>:95                                      ; preds = %97
  %96 = icmp ugt i64 %13, %102
  br i1 %96, label %97, label %.loopexit24.loopexit

; <label>:97                                      ; preds = %95, %.lr.ph122
  %i.1120 = phi i64 [ 0, %.lr.ph122 ], [ %102, %95 ]
  %98 = sub i64 %94, %i.1120
  %99 = getelementptr inbounds i64, i64* %93, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %100, 0
  %102 = add nuw nsw i64 %i.1120, 1
  br i1 %101, label %103, label %95

; <label>:103                                     ; preds = %97
  %.lcssa280 = phi i64 [ %100, %97 ]
  %104 = sub i64 1, %.lcssa280
  %105 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 5
  store i64 %104, i64* %105, align 8
  %106 = sub i64 %13, %104
  %107 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 4
  store i64 %106, i64* %107, align 8
  br label %.loopexit24

.loopexit24.loopexit:                             ; preds = %95
  br label %.loopexit24

.loopexit24:                                      ; preds = %.loopexit24.loopexit, %103, %78
  %108 = shl i64 %79, 3
  %109 = call noalias i8* @malloc(i64 %108) #6
  %110 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 6
  %111 = bitcast i64** %110 to i8**
  store i8* %109, i8** %111, align 8
  %112 = icmp eq i8* %109, null
  br i1 %112, label %113, label %114

; <label>:113                                     ; preds = %.loopexit24
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.26, i64 0, i64 0), i32 210, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #15
  unreachable

; <label>:114                                     ; preds = %.loopexit24
  %115 = load i64, i64* %80, align 8
  %116 = shl i64 %115, 3
  %117 = call noalias i8* @malloc(i64 %116) #6
  %118 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  %119 = bitcast i64** %118 to i8**
  store i8* %117, i8** %119, align 8
  %120 = icmp eq i8* %117, null
  br i1 %120, label %121, label %122

; <label>:121                                     ; preds = %114
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.27, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.26, i64 0, i64 0), i32 214, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #15
  unreachable

; <label>:122                                     ; preds = %114, %._crit_edge164
  %.pre-phi = phi i64* [ %.pre165, %._crit_edge164 ], [ %80, %114 ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %123 = load i64, i64* %.pre-phi, align 8
  call void @createPartition(i64 0, i64 %123, i64 %10, i64 %11, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %124 = load i64, i64* %i_start, align 8
  %125 = load i64, i64* %i_stop, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %.lr.ph118, label %._crit_edge119

.lr.ph118:                                        ; preds = %122
  %127 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 6
  %128 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  br label %129

; <label>:129                                     ; preds = %129, %.lr.ph118
  %i.2116 = phi i64 [ %124, %.lr.ph118 ], [ %134, %129 ]
  %130 = load i64*, i64** %127, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 %i.2116
  store i64 0, i64* %131, align 8
  %132 = load i64*, i64** %128, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 %i.2116
  store i64 0, i64* %133, align 8
  %134 = add nsw i64 %i.2116, 1
  %135 = load i64, i64* %i_stop, align 8
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %129, label %._crit_edge119.loopexit

._crit_edge119.loopexit:                          ; preds = %129
  br label %._crit_edge119

._crit_edge119:                                   ; preds = %._crit_edge119.loopexit, %122
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %137 = load i64, i64* %i_start, align 8
  %138 = load i64, i64* %i_stop, align 8
  %139 = icmp slt i64 %137, %138
  %140 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 6
  br i1 %139, label %.lr.ph113, label %._crit_edge114

.lr.ph113:                                        ; preds = %._crit_edge119
  %141 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 1
  %142 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 0
  %143 = icmp eq i64 %13, 0
  br label %144

; <label>:144                                     ; preds = %.loopexit17, %.lr.ph113
  %i.3109 = phi i64 [ %137, %.lr.ph113 ], [ %218, %.loopexit17 ]
  %outVertexListSize.0108 = phi i64 [ 0, %.lr.ph113 ], [ %outVertexListSize.7, %.loopexit17 ]
  %i0.0107 = phi i64 [ -1, %.lr.ph113 ], [ %i0.5, %.loopexit17 ]
  %145 = icmp eq i64 %outVertexListSize.0108, 0
  %146 = icmp ne i64 %i.3109, 0
  %or.cond = and i1 %145, %146
  %147 = icmp eq i64 %i0.0107, -1
  %or.cond7 = and i1 %147, %or.cond
  br i1 %or.cond7, label %.preheader22, label %.loopexit23

.preheader22:                                     ; preds = %144
  br i1 %143, label %.preheader22.split.preheader, label %.lr.ph98.us.preheader

.preheader22.split.preheader:                     ; preds = %.preheader22
  br label %.preheader22.split

.lr.ph98.us.preheader:                            ; preds = %.preheader22
  %.pre = load i64*, i64** %142, align 8
  br label %.lr.ph98.us

; <label>:148                                     ; preds = %.lr.ph98.us, %152
  %j.096.us = phi i64 [ 0, %.lr.ph98.us ], [ %153, %152 ]
  %149 = getelementptr inbounds i64, i64* %.pre, i64 %j.096.us
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %k.0.us, %150
  br i1 %151, label %._crit_edge99.us, label %152

; <label>:152                                     ; preds = %148
  %153 = add nuw i64 %j.096.us, 1
  %154 = icmp ult i64 %153, %13
  br i1 %154, label %148, label %._crit_edge99.us.thread

._crit_edge99.us.thread:                          ; preds = %152
  %155 = add i64 %k.0.us, -1
  br label %.lr.ph98.us.backedge

._crit_edge99.us:                                 ; preds = %148
  %j.096.us.lcssa = phi i64 [ %j.096.us, %148 ]
  %156 = add i64 %k.0.us, -1
  %.old6.us = icmp eq i64 %j.096.us.lcssa, -1
  br i1 %.old6.us, label %.lr.ph98.us.backedge, label %.loopexit23.loopexit

.lr.ph98.us.backedge:                             ; preds = %._crit_edge99.us, %._crit_edge99.us.thread
  %k.0.us.be = phi i64 [ %156, %._crit_edge99.us ], [ %155, %._crit_edge99.us.thread ]
  br label %.lr.ph98.us

.lr.ph98.us:                                      ; preds = %.lr.ph98.us.backedge, %.lr.ph98.us.preheader
  %k.0.us = phi i64 [ %i.3109, %.lr.ph98.us.preheader ], [ %k.0.us.be, %.lr.ph98.us.backedge ]
  br label %148

.preheader22.split:                               ; preds = %.preheader22.split, %.preheader22.split.preheader
  br label %.preheader22.split

.loopexit23.loopexit:                             ; preds = %._crit_edge99.us
  %.lcssa276 = phi i64 [ %156, %._crit_edge99.us ]
  %j.096.us.lcssa.lcssa = phi i64 [ %j.096.us.lcssa, %._crit_edge99.us ]
  br label %.loopexit23

.loopexit23:                                      ; preds = %.loopexit23.loopexit, %144
  %k.1 = phi i64 [ %i.3109, %144 ], [ %.lcssa276, %.loopexit23.loopexit ]
  %i0.3 = phi i64 [ %i0.0107, %144 ], [ %j.096.us.lcssa.lcssa, %.loopexit23.loopexit ]
  %157 = or i64 %k.1, %outVertexListSize.0108
  %158 = icmp eq i64 %157, 0
  %.i0.3 = select i1 %158, i64 0, i64 %i0.3
  %159 = icmp ult i64 %.i0.3, %13
  br i1 %159, label %.lr.ph105, label %.loopexit19

.lr.ph105:                                        ; preds = %.loopexit23
  %160 = load i64, i64* %.pre-phi, align 8
  %161 = add i64 %160, -1
  %162 = icmp eq i64 %i.3109, %161
  br i1 %162, label %.loopexit19, label %.lr.ph105.split.preheader

.lr.ph105.split.preheader:                        ; preds = %.lr.ph105
  %.pre154 = load i64*, i64** %142, align 8
  br label %.lr.ph105.split

.lr.ph105.split:                                  ; preds = %193, %.lr.ph105.split.preheader
  %j.1103 = phi i64 [ %194, %193 ], [ %.i0.3, %.lr.ph105.split.preheader ]
  %163 = getelementptr inbounds i64, i64* %.pre154, i64 %j.1103
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %i.3109, %164
  br i1 %165, label %193, label %166

; <label>:166                                     ; preds = %.lr.ph105.split
  %j.1103.lcssa = phi i64 [ %j.1103, %.lr.ph105.split ]
  %167 = icmp eq i64 %j.1103.lcssa, 0
  br i1 %167, label %.loopexit19, label %168

; <label>:168                                     ; preds = %166
  %169 = add i64 %j.1103.lcssa, -1
  %170 = getelementptr inbounds i64, i64* %.pre154, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %i.3109, %171
  %173 = icmp eq i64 %j.1103.lcssa, %.i0.3
  %or.cond8 = or i1 %173, %172
  br i1 %or.cond8, label %.loopexit19, label %174

; <label>:174                                     ; preds = %168
  %175 = load i64*, i64** %140, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 %i.3109
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %176, align 8
  br label %.outer20

.outer20:                                         ; preds = %188, %174
  %t.0.in.ph = phi i64 [ %t.0.lcssa278, %188 ], [ %.i0.3, %174 ]
  %outVertexListSize.1.ph.in = phi i64 [ %outVertexListSize.1.ph, %188 ], [ %outVertexListSize.0108, %174 ]
  %outVertexListSize.1.ph = add i64 %outVertexListSize.1.ph.in, 1
  br label %179

; <label>:179                                     ; preds = %181, %.outer20
  %t.0.in = phi i64 [ %t.0, %181 ], [ %t.0.in.ph, %.outer20 ]
  %t.0 = add i64 %t.0.in, 1
  %180 = icmp ult i64 %t.0, %j.1103.lcssa
  br i1 %180, label %181, label %.loopexit19.loopexit

; <label>:181                                     ; preds = %179
  %182 = load i64*, i64** %141, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 %t.0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i64, i64* %182, i64 %t.0.in
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %184, %186
  br i1 %187, label %179, label %188

; <label>:188                                     ; preds = %181
  %t.0.lcssa278 = phi i64 [ %t.0, %181 ]
  %189 = load i64*, i64** %140, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 %i.3109
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %190, align 8
  br label %.outer20

; <label>:193                                     ; preds = %.lr.ph105.split
  %194 = add nuw i64 %j.1103, 1
  %195 = icmp ult i64 %194, %13
  br i1 %195, label %.lr.ph105.split, label %.loopexit19.loopexit241

.loopexit19.loopexit:                             ; preds = %179
  %outVertexListSize.1.ph.lcssa = phi i64 [ %outVertexListSize.1.ph, %179 ]
  br label %.loopexit19

.loopexit19.loopexit241:                          ; preds = %193
  br label %.loopexit19

.loopexit19:                                      ; preds = %.loopexit19.loopexit241, %.loopexit19.loopexit, %168, %166, %.lr.ph105, %.loopexit23
  %i0.5 = phi i64 [ %j.1103.lcssa, %168 ], [ 0, %166 ], [ %.i0.3, %.lr.ph105 ], [ %.i0.3, %.loopexit23 ], [ %j.1103.lcssa, %.loopexit19.loopexit ], [ %.i0.3, %.loopexit19.loopexit241 ]
  %outVertexListSize.4 = phi i64 [ %outVertexListSize.0108, %168 ], [ %outVertexListSize.0108, %166 ], [ %outVertexListSize.0108, %.lr.ph105 ], [ %outVertexListSize.0108, %.loopexit23 ], [ %outVertexListSize.1.ph.lcssa, %.loopexit19.loopexit ], [ %outVertexListSize.0108, %.loopexit19.loopexit241 ]
  %196 = load i64, i64* %.pre-phi, align 8
  %197 = add i64 %196, -1
  %198 = icmp eq i64 %i.3109, %197
  br i1 %198, label %199, label %.loopexit17

; <label>:199                                     ; preds = %.loopexit19
  %200 = load i64*, i64** %140, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 %i.3109
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %201, align 8
  br label %.outer18

.outer18:                                         ; preds = %213, %199
  %t1.0.in.ph = phi i64 [ %t1.0.lcssa279, %213 ], [ %i0.5, %199 ]
  %outVertexListSize.5.ph.in = phi i64 [ %outVertexListSize.5.ph, %213 ], [ %outVertexListSize.4, %199 ]
  %outVertexListSize.5.ph = add i64 %outVertexListSize.5.ph.in, 1
  br label %204

; <label>:204                                     ; preds = %206, %.outer18
  %t1.0.in = phi i64 [ %t1.0, %206 ], [ %t1.0.in.ph, %.outer18 ]
  %t1.0 = add i64 %t1.0.in, 1
  %205 = icmp ult i64 %t1.0, %13
  br i1 %205, label %206, label %.loopexit17.loopexit

; <label>:206                                     ; preds = %204
  %207 = load i64*, i64** %141, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 %t1.0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds i64, i64* %207, i64 %t1.0.in
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %209, %211
  br i1 %212, label %204, label %213

; <label>:213                                     ; preds = %206
  %t1.0.lcssa279 = phi i64 [ %t1.0, %206 ]
  %214 = load i64*, i64** %140, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 %i.3109
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %215, align 8
  br label %.outer18

.loopexit17.loopexit:                             ; preds = %204
  %outVertexListSize.5.ph.lcssa = phi i64 [ %outVertexListSize.5.ph, %204 ]
  br label %.loopexit17

.loopexit17:                                      ; preds = %.loopexit17.loopexit, %.loopexit19
  %outVertexListSize.7 = phi i64 [ %outVertexListSize.4, %.loopexit19 ], [ %outVertexListSize.5.ph.lcssa, %.loopexit17.loopexit ]
  %218 = add nsw i64 %i.3109, 1
  %219 = load i64, i64* %i_stop, align 8
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %144, label %._crit_edge114.loopexit

._crit_edge114.loopexit:                          ; preds = %.loopexit17
  %outVertexListSize.7.lcssa = phi i64 [ %outVertexListSize.7, %.loopexit17 ]
  br label %._crit_edge114

._crit_edge114:                                   ; preds = %._crit_edge114.loopexit, %._crit_edge119
  %outVertexListSize.0.lcssa = phi i64 [ 0, %._crit_edge119 ], [ %outVertexListSize.7.lcssa, %._crit_edge114.loopexit ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %221 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  %222 = load i64*, i64** %221, align 8
  %223 = load i64*, i64** %140, align 8
  %224 = load i64, i64* %.pre-phi, align 8
  call fastcc void @prefix_sums(i64* %222, i64* %223, i64 %224)
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br label %.outer16

.outer16:                                         ; preds = %230, %._crit_edge114
  %tries3.0.ph = phi i32 [ %231, %230 ], [ 9, %._crit_edge114 ]
  %225 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %._crit_edge95, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %.outer16
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94, %.lr.ph94.preheader
  call void @llvm.x86.sse2.pause() #6
  %227 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %._crit_edge95.loopexit, label %.lr.ph94

._crit_edge95.loopexit:                           ; preds = %.lr.ph94
  br label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge95.loopexit, %.outer16
  %229 = icmp slt i32 %tries3.0.ph, 2
  br i1 %229, label %242, label %230

; <label>:230                                     ; preds = %._crit_edge95
  %231 = add nsw i32 %tries3.0.ph, -1
  %232 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 8, i64 0, i64 8, i64 4294967295) #6, !srcloc !12
  %233 = trunc i64 %232 to i32
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %235, label %.outer16

; <label>:235                                     ; preds = %230
  %236 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %239, label %238

; <label>:238                                     ; preds = %235
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !13
  br label %239

; <label>:239                                     ; preds = %238, %235
  %240 = load i64, i64* @global_outVertexListSize, align 8
  %241 = add i64 %240, %outVertexListSize.0.lcssa
  store i64 %241, i64* @global_outVertexListSize, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 8) #6, !srcloc !14
  br label %245

; <label>:242                                     ; preds = %._crit_edge95
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #6
  %243 = load i64, i64* @global_outVertexListSize, align 8
  %244 = add i64 %243, %outVertexListSize.0.lcssa
  store i64 %244, i64* @global_outVertexListSize, align 8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #6
  br label %245

; <label>:245                                     ; preds = %242, %239
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %246 = load i64, i64* @global_outVertexListSize, align 8
  br i1 %77, label %247, label %266

; <label>:247                                     ; preds = %245
  %248 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 2
  store i64 %246, i64* %248, align 8
  %249 = shl i64 %246, 3
  %250 = call noalias i8* @malloc(i64 %249) #6
  %251 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %252 = bitcast i64** %251 to i8**
  store i8* %250, i8** %252, align 8
  %253 = icmp eq i8* %250, null
  br i1 %253, label %254, label %255

; <label>:254                                     ; preds = %247
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.29, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.26, i64 0, i64 0), i32 314, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #15
  unreachable

; <label>:255                                     ; preds = %247
  %256 = call noalias i8* @malloc(i64 %249) #6
  %257 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 9
  %258 = bitcast i64** %257 to i8**
  store i8* %256, i8** %258, align 8
  %259 = icmp eq i8* %256, null
  br i1 %259, label %260, label %261

; <label>:260                                     ; preds = %255
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4.30, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.26, i64 0, i64 0), i32 317, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #15
  unreachable

; <label>:261                                     ; preds = %255
  %262 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 1
  %263 = load i64*, i64** %262, align 8
  %264 = load i64, i64* %263, align 8
  %265 = load i64*, i64** %251, align 8
  store i64 %264, i64* %265, align 8
  br label %266

; <label>:266                                     ; preds = %261, %245
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %267 = load i64, i64* %i_start, align 8
  %268 = load i64, i64* %i_stop, align 8
  %269 = icmp slt i64 %267, %268
  br i1 %269, label %.preheader15.lr.ph, label %._crit_edge93

.preheader15.lr.ph:                               ; preds = %266
  %270 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 9
  %271 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 1
  %272 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %273 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 0
  %274 = icmp eq i64 %13, 0
  br label %.preheader15

.preheader15:                                     ; preds = %.loopexit, %.preheader15.lr.ph
  %indvar = phi i64 [ 0, %.preheader15.lr.ph ], [ %indvar.next, %.loopexit ]
  %i.490 = phi i64 [ %267, %.preheader15.lr.ph ], [ %380, %.loopexit ]
  %i0.689 = phi i64 [ -1, %.preheader15.lr.ph ], [ %i0.10, %.loopexit ]
  %275 = add i64 %267, %indvar
  %276 = add i64 %275, -16
  %277 = lshr i64 %276, 4
  %278 = add nuw nsw i64 %277, 1
  %279 = add i64 %267, %indvar
  %280 = icmp eq i64 %i0.689, -1
  %281 = icmp ne i64 %i.490, 0
  %282 = and i1 %281, %280
  br i1 %282, label %.preheader10.lr.ph, label %._crit_edge81

.preheader10.lr.ph:                               ; preds = %.preheader15
  br i1 %274, label %.preheader10.preheader, label %.lr.ph74.us.preheader

.preheader10.preheader:                           ; preds = %.preheader10.lr.ph
  %min.iters.check223 = icmp ult i64 %279, 16
  br i1 %min.iters.check223, label %.preheader10.preheader239, label %min.iters.checked224

.preheader10.preheader239:                        ; preds = %middle.block221, %min.iters.checked224, %.preheader10.preheader
  %k4.079.ph = phi i64 [ %i.490, %min.iters.checked224 ], [ %i.490, %.preheader10.preheader ], [ %ind.end232, %middle.block221 ]
  br label %.preheader10

min.iters.checked224:                             ; preds = %.preheader10.preheader
  %n.vec226 = and i64 %279, -16
  %cmp.zero227 = icmp eq i64 %n.vec226, 0
  %ind.end232 = sub i64 %i.490, %n.vec226
  br i1 %cmp.zero227, label %.preheader10.preheader239, label %vector.body220.preheader

vector.body220.preheader:                         ; preds = %min.iters.checked224
  %xtraiter = and i64 %278, 7
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %vector.body220.preheader.split, label %vector.body220.prol.preheader

vector.body220.prol.preheader:                    ; preds = %vector.body220.preheader
  br label %vector.body220.prol

vector.body220.prol:                              ; preds = %vector.body220.prol, %vector.body220.prol.preheader
  %index229.prol = phi i64 [ %index.next230.prol, %vector.body220.prol ], [ 0, %vector.body220.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %vector.body220.prol ], [ %xtraiter, %vector.body220.prol.preheader ]
  %index.next230.prol = add i64 %index229.prol, 16
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %vector.body220.preheader.split.loopexit, label %vector.body220.prol, !llvm.loop !15

vector.body220.preheader.split.loopexit:          ; preds = %vector.body220.prol
  %index.next230.prol.lcssa = phi i64 [ %index.next230.prol, %vector.body220.prol ]
  br label %vector.body220.preheader.split

vector.body220.preheader.split:                   ; preds = %vector.body220.preheader.split.loopexit, %vector.body220.preheader
  %index229.unr = phi i64 [ 0, %vector.body220.preheader ], [ %index.next230.prol.lcssa, %vector.body220.preheader.split.loopexit ]
  %283 = icmp ult i64 %276, 112
  br i1 %283, label %middle.block221, label %vector.body220.preheader.split.split

vector.body220.preheader.split.split:             ; preds = %vector.body220.preheader.split
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.body220.preheader.split.split
  %index229 = phi i64 [ %index229.unr, %vector.body220.preheader.split.split ], [ %index.next230.7, %vector.body220 ]
  %index.next230.7 = add i64 %index229, 128
  %284 = icmp eq i64 %index.next230.7, %n.vec226
  br i1 %284, label %middle.block221.unr-lcssa, label %vector.body220, !llvm.loop !16

middle.block221.unr-lcssa:                        ; preds = %vector.body220
  br label %middle.block221

middle.block221:                                  ; preds = %middle.block221.unr-lcssa, %vector.body220.preheader.split
  %cmp.n233 = icmp eq i64 %279, %n.vec226
  br i1 %cmp.n233, label %._crit_edge81, label %.preheader10.preheader239

.lr.ph74.us.preheader:                            ; preds = %.preheader10.lr.ph
  %.pre155 = load i64*, i64** %273, align 8
  br label %.lr.ph74.us

; <label>:285                                     ; preds = %.lr.ph74.us, %289
  %j.273.us = phi i64 [ 0, %.lr.ph74.us ], [ %290, %289 ]
  %286 = getelementptr inbounds i64, i64* %.pre155, i64 %j.273.us
  %287 = load i64, i64* %286, align 8
  %288 = icmp eq i64 %k4.079.us, %287
  br i1 %288, label %._crit_edge75.us, label %289

; <label>:289                                     ; preds = %285
  %290 = add nuw i64 %j.273.us, 1
  %291 = icmp ult i64 %290, %13
  br i1 %291, label %285, label %._crit_edge75.us

._crit_edge75.us:                                 ; preds = %289, %285
  %i0.8.us = phi i64 [ %j.273.us, %285 ], [ -1, %289 ]
  %292 = add i64 %k4.079.us, -1
  %293 = icmp eq i64 %i0.8.us, -1
  %294 = icmp ne i64 %292, 0
  %295 = and i1 %294, %293
  br i1 %295, label %.lr.ph74.us, label %._crit_edge81.loopexit240

.lr.ph74.us:                                      ; preds = %._crit_edge75.us, %.lr.ph74.us.preheader
  %k4.079.us = phi i64 [ %292, %._crit_edge75.us ], [ %i.490, %.lr.ph74.us.preheader ]
  br label %285

.preheader10:                                     ; preds = %.preheader10, %.preheader10.preheader239
  %k4.079 = phi i64 [ %296, %.preheader10 ], [ %k4.079.ph, %.preheader10.preheader239 ]
  %296 = add i64 %k4.079, -1
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %._crit_edge81.loopexit, label %.preheader10, !llvm.loop !17

._crit_edge81.loopexit:                           ; preds = %.preheader10
  br label %._crit_edge81

._crit_edge81.loopexit240:                        ; preds = %._crit_edge75.us
  %.lcssa271 = phi i1 [ %293, %._crit_edge75.us ]
  %.lcssa270 = phi i64 [ %292, %._crit_edge75.us ]
  %i0.8.us.lcssa = phi i64 [ %i0.8.us, %._crit_edge75.us ]
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %._crit_edge81.loopexit240, %._crit_edge81.loopexit, %middle.block221, %.preheader15
  %.lcssa = phi i1 [ %280, %.preheader15 ], [ true, %middle.block221 ], [ true, %._crit_edge81.loopexit ], [ %.lcssa271, %._crit_edge81.loopexit240 ]
  %i0.7.lcssa = phi i64 [ %i0.689, %.preheader15 ], [ -1, %middle.block221 ], [ -1, %._crit_edge81.loopexit ], [ %i0.8.us.lcssa, %._crit_edge81.loopexit240 ]
  %k4.0.lcssa = phi i64 [ %i.490, %.preheader15 ], [ 0, %middle.block221 ], [ 0, %._crit_edge81.loopexit ], [ %.lcssa270, %._crit_edge81.loopexit240 ]
  %298 = icmp eq i64 %k4.0.lcssa, 0
  %or.cond5 = and i1 %298, %.lcssa
  %.i0.7 = select i1 %or.cond5, i64 0, i64 %i0.7.lcssa
  %299 = icmp ult i64 %.i0.7, %13
  br i1 %299, label %.lr.ph87, label %.loopexit12

.lr.ph87:                                         ; preds = %._crit_edge81
  %300 = load i64, i64* %.pre-phi, align 8
  %301 = add i64 %300, -1
  %302 = icmp eq i64 %i.490, %301
  br i1 %302, label %.loopexit12, label %.lr.ph87.split.preheader

.lr.ph87.split.preheader:                         ; preds = %.lr.ph87
  %.pre156 = load i64*, i64** %273, align 8
  br label %.lr.ph87.split

.lr.ph87.split:                                   ; preds = %344, %.lr.ph87.split.preheader
  %j.385 = phi i64 [ %345, %344 ], [ %.i0.7, %.lr.ph87.split.preheader ]
  %303 = getelementptr inbounds i64, i64* %.pre156, i64 %j.385
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %i.490, %304
  br i1 %305, label %344, label %306

; <label>:306                                     ; preds = %.lr.ph87.split
  %j.385.lcssa = phi i64 [ %j.385, %.lr.ph87.split ]
  %307 = icmp eq i64 %j.385.lcssa, 0
  br i1 %307, label %.loopexit12, label %308

; <label>:308                                     ; preds = %306
  %309 = add i64 %j.385.lcssa, -1
  %310 = getelementptr inbounds i64, i64* %.pre156, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %i.490, %311
  %313 = icmp eq i64 %j.385.lcssa, %.i0.7
  %or.cond9 = or i1 %313, %312
  br i1 %or.cond9, label %.loopexit12, label %314

; <label>:314                                     ; preds = %308
  %315 = load i64*, i64** %221, align 8
  %316 = getelementptr inbounds i64, i64* %315, i64 %i.490
  %317 = load i64, i64* %316, align 8
  %318 = load i64*, i64** %270, align 8
  %319 = getelementptr inbounds i64, i64* %318, i64 %317
  store i64 %.i0.7, i64* %319, align 8
  %320 = load i64*, i64** %271, align 8
  %321 = getelementptr inbounds i64, i64* %320, i64 %.i0.7
  %322 = load i64, i64* %321, align 8
  %323 = load i64*, i64** %272, align 8
  %324 = getelementptr inbounds i64, i64* %323, i64 %317
  store i64 %322, i64* %324, align 8
  br label %.outer13

.outer13:                                         ; preds = %334, %314
  %r.0.ph = phi i64 [ %343, %334 ], [ 1, %314 ]
  %t5.0.in.ph = phi i64 [ %t5.0.lcssa273, %334 ], [ %.i0.7, %314 ]
  br label %325

; <label>:325                                     ; preds = %327, %.outer13
  %t5.0.in = phi i64 [ %t5.0, %327 ], [ %t5.0.in.ph, %.outer13 ]
  %t5.0 = add i64 %t5.0.in, 1
  %326 = icmp ult i64 %t5.0, %j.385.lcssa
  br i1 %326, label %327, label %.loopexit12.loopexit

; <label>:327                                     ; preds = %325
  %328 = load i64*, i64** %271, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 %t5.0
  %330 = load i64, i64* %329, align 8
  %331 = getelementptr inbounds i64, i64* %328, i64 %t5.0.in
  %332 = load i64, i64* %331, align 8
  %333 = icmp eq i64 %330, %332
  br i1 %333, label %325, label %334

; <label>:334                                     ; preds = %327
  %t5.0.lcssa273 = phi i64 [ %t5.0, %327 ]
  %335 = add i64 %r.0.ph, %317
  %336 = load i64*, i64** %270, align 8
  %337 = getelementptr inbounds i64, i64* %336, i64 %335
  store i64 %t5.0.lcssa273, i64* %337, align 8
  %338 = load i64*, i64** %271, align 8
  %339 = getelementptr inbounds i64, i64* %338, i64 %t5.0.lcssa273
  %340 = load i64, i64* %339, align 8
  %341 = load i64*, i64** %272, align 8
  %342 = getelementptr inbounds i64, i64* %341, i64 %335
  store i64 %340, i64* %342, align 8
  %343 = add i64 %r.0.ph, 1
  br label %.outer13

; <label>:344                                     ; preds = %.lr.ph87.split
  %345 = add nuw i64 %j.385, 1
  %346 = icmp ult i64 %345, %13
  br i1 %346, label %.lr.ph87.split, label %.loopexit12.loopexit238

.loopexit12.loopexit:                             ; preds = %325
  br label %.loopexit12

.loopexit12.loopexit238:                          ; preds = %344
  br label %.loopexit12

.loopexit12:                                      ; preds = %.loopexit12.loopexit238, %.loopexit12.loopexit, %308, %306, %.lr.ph87, %._crit_edge81
  %i0.10 = phi i64 [ %j.385.lcssa, %308 ], [ 0, %306 ], [ %.i0.7, %.lr.ph87 ], [ %.i0.7, %._crit_edge81 ], [ %j.385.lcssa, %.loopexit12.loopexit ], [ %.i0.7, %.loopexit12.loopexit238 ]
  %347 = load i64, i64* %.pre-phi, align 8
  %348 = add i64 %347, -1
  %349 = icmp eq i64 %i.490, %348
  br i1 %349, label %350, label %.loopexit

; <label>:350                                     ; preds = %.loopexit12
  %351 = load i64*, i64** %221, align 8
  %352 = getelementptr inbounds i64, i64* %351, i64 %i.490
  %353 = load i64, i64* %352, align 8
  %354 = load i64*, i64** %270, align 8
  %355 = getelementptr inbounds i64, i64* %354, i64 %353
  store i64 %i0.10, i64* %355, align 8
  %356 = load i64*, i64** %271, align 8
  %357 = getelementptr inbounds i64, i64* %356, i64 %i0.10
  %358 = load i64, i64* %357, align 8
  %359 = load i64*, i64** %272, align 8
  %360 = getelementptr inbounds i64, i64* %359, i64 %353
  store i64 %358, i64* %360, align 8
  br label %.outer11

.outer11:                                         ; preds = %370, %350
  %r6.0.ph = phi i64 [ %379, %370 ], [ 1, %350 ]
  %t8.0.in.ph = phi i64 [ %t8.0.lcssa274, %370 ], [ %i0.10, %350 ]
  br label %361

; <label>:361                                     ; preds = %363, %.outer11
  %t8.0.in = phi i64 [ %t8.0, %363 ], [ %t8.0.in.ph, %.outer11 ]
  %t8.0 = add i64 %t8.0.in, 1
  %362 = icmp ult i64 %t8.0, %13
  br i1 %362, label %363, label %.loopexit.loopexit

; <label>:363                                     ; preds = %361
  %364 = load i64*, i64** %271, align 8
  %365 = getelementptr inbounds i64, i64* %364, i64 %t8.0
  %366 = load i64, i64* %365, align 8
  %367 = getelementptr inbounds i64, i64* %364, i64 %t8.0.in
  %368 = load i64, i64* %367, align 8
  %369 = icmp eq i64 %366, %368
  br i1 %369, label %361, label %370

; <label>:370                                     ; preds = %363
  %t8.0.lcssa274 = phi i64 [ %t8.0, %363 ]
  %371 = add i64 %r6.0.ph, %353
  %372 = load i64*, i64** %270, align 8
  %373 = getelementptr inbounds i64, i64* %372, i64 %371
  store i64 %t8.0.lcssa274, i64* %373, align 8
  %374 = load i64*, i64** %271, align 8
  %375 = getelementptr inbounds i64, i64* %374, i64 %t8.0.lcssa274
  %376 = load i64, i64* %375, align 8
  %377 = load i64*, i64** %272, align 8
  %378 = getelementptr inbounds i64, i64* %377, i64 %371
  store i64 %376, i64* %378, align 8
  %379 = add i64 %r6.0.ph, 1
  br label %.outer11

.loopexit.loopexit:                               ; preds = %361
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit12
  %380 = add nsw i64 %i.490, 1
  %381 = load i64, i64* %i_stop, align 8
  %382 = icmp slt i64 %380, %381
  %indvar.next = add i64 %indvar, 1
  br i1 %382, label %.preheader15, label %._crit_edge93.loopexit

._crit_edge93.loopexit:                           ; preds = %.loopexit
  br label %._crit_edge93

._crit_edge93:                                    ; preds = %._crit_edge93.loopexit, %266
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %77, label %383, label %404

; <label>:383                                     ; preds = %._crit_edge93
  %384 = bitcast %struct.graphSDG* %9 to i8**
  %385 = load i8*, i8** %384, align 8
  call void @free(i8* %385) #6
  %386 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 1
  %387 = bitcast i64** %386 to i8**
  %388 = load i8*, i8** %387, align 8
  call void @free(i8* %388) #6
  %389 = load i64, i64* %.pre-phi, align 8
  %390 = shl i64 %389, 3
  %391 = call noalias i8* @malloc(i64 %390) #6
  %392 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 10
  %393 = bitcast i64** %392 to i8**
  store i8* %391, i8** %393, align 8
  %394 = icmp eq i8* %391, null
  br i1 %394, label %395, label %396

; <label>:395                                     ; preds = %383
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5.31, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.26, i64 0, i64 0), i32 403, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #15
  unreachable

; <label>:396                                     ; preds = %383
  %397 = load i64, i64* %.pre-phi, align 8
  %398 = shl i64 %397, 3
  %399 = call noalias i8* @malloc(i64 %398) #6
  %400 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 11
  %401 = bitcast i64** %400 to i8**
  store i8* %399, i8** %401, align 8
  %402 = icmp eq i8* %399, null
  br i1 %402, label %403, label %404

; <label>:403                                     ; preds = %396
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6.32, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.26, i64 0, i64 0), i32 406, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #15
  unreachable

; <label>:404                                     ; preds = %396, %._crit_edge93
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %405 = load i64, i64* %i_start, align 8
  %406 = load i64, i64* %i_stop, align 8
  %407 = icmp slt i64 %405, %406
  br i1 %407, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %404
  %408 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 10
  %409 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 11
  br label %410

; <label>:410                                     ; preds = %410, %.lr.ph71
  %i.569 = phi i64 [ %405, %.lr.ph71 ], [ %415, %410 ]
  %411 = load i64*, i64** %408, align 8
  %412 = getelementptr inbounds i64, i64* %411, i64 %i.569
  store i64 0, i64* %412, align 8
  %413 = load i64*, i64** %409, align 8
  %414 = getelementptr inbounds i64, i64* %413, i64 %i.569
  store i64 0, i64* %414, align 8
  %415 = add nsw i64 %i.569, 1
  %416 = load i64, i64* %i_stop, align 8
  %417 = icmp slt i64 %415, %416
  br i1 %417, label %410, label %._crit_edge72.loopexit

._crit_edge72.loopexit:                           ; preds = %410
  br label %._crit_edge72

._crit_edge72:                                    ; preds = %._crit_edge72.loopexit, %404
  br i1 %77, label %418, label %424

; <label>:418                                     ; preds = %._crit_edge72
  %419 = load i64, i64* %.pre-phi, align 8
  %420 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %421 = shl i64 %419, 3
  %422 = mul i64 %421, %420
  %423 = call noalias i8* @malloc(i64 %422) #6
  store i8* %423, i8** bitcast (i64** @global_impliedEdgeList to i8**), align 8
  br label %424

; <label>:424                                     ; preds = %418, %._crit_edge72
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %425 = load i64*, i64** @global_impliedEdgeList, align 8
  %426 = load i64, i64* %.pre-phi, align 8
  %427 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %428 = mul i64 %427, %426
  call void @createPartition(i64 0, i64 %428, i64 %10, i64 %11, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %429 = load i64, i64* %i_start, align 8
  %430 = load i64, i64* %i_stop, align 8
  %431 = icmp slt i64 %429, %430
  br i1 %431, label %.lr.ph67.preheader, label %._crit_edge68

.lr.ph67.preheader:                               ; preds = %424
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67, %.lr.ph67.preheader
  %i.665 = phi i64 [ %433, %.lr.ph67 ], [ %429, %.lr.ph67.preheader ]
  %432 = getelementptr inbounds i64, i64* %425, i64 %i.665
  store i64 0, i64* %432, align 8
  %433 = add nsw i64 %i.665, 1
  %434 = load i64, i64* %i_stop, align 8
  %435 = icmp slt i64 %433, %434
  br i1 %435, label %.lr.ph67, label %._crit_edge68.loopexit

._crit_edge68.loopexit:                           ; preds = %.lr.ph67
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %._crit_edge68.loopexit, %424
  br i1 %77, label %436, label %443

; <label>:436                                     ; preds = %._crit_edge68
  %437 = load i64, i64* %.pre-phi, align 8
  %438 = shl i64 %437, 3
  %439 = call noalias i8* @malloc(i64 %438) #6
  %440 = icmp eq i8* %439, null
  br i1 %440, label %441, label %442

; <label>:441                                     ; preds = %436
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.33, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.26, i64 0, i64 0), i32 448, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #15
  unreachable

; <label>:442                                     ; preds = %436
  store i8* %439, i8** bitcast (i64*** @global_auxArr to i8**), align 8
  br label %443

; <label>:443                                     ; preds = %442, %._crit_edge68
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %444 = load i64**, i64*** @global_auxArr, align 8
  %445 = load i64, i64* %.pre-phi, align 8
  call void @createPartition(i64 0, i64 %445, i64 %10, i64 %11, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %446 = load i64, i64* %i_start, align 8
  %447 = load i64, i64* %i_stop, align 8
  %448 = icmp slt i64 %446, %447
  br i1 %448, label %.lr.ph63, label %.._crit_edge64_crit_edge

.._crit_edge64_crit_edge:                         ; preds = %443
  %.pre168 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 10
  br label %._crit_edge64

.lr.ph63:                                         ; preds = %443
  %449 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %450 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 10
  %.pre157 = load i64*, i64** %221, align 8
  %.pre158 = load i64*, i64** %140, align 8
  br label %451

; <label>:451                                     ; preds = %._crit_edge60, %.lr.ph63
  %452 = phi i64* [ %.pre158, %.lr.ph63 ], [ %537, %._crit_edge60 ]
  %453 = phi i64* [ %.pre157, %.lr.ph63 ], [ %538, %._crit_edge60 ]
  %i.761 = phi i64 [ %446, %.lr.ph63 ], [ %539, %._crit_edge60 ]
  %454 = getelementptr inbounds i64, i64* %453, i64 %i.761
  %455 = load i64, i64* %454, align 8
  %456 = getelementptr inbounds i64, i64* %452, i64 %i.761
  %457 = load i64, i64* %456, align 8
  %458 = add i64 %457, %455
  %459 = icmp ult i64 %455, %458
  br i1 %459, label %.lr.ph59.preheader, label %._crit_edge60

.lr.ph59.preheader:                               ; preds = %451
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %527, %.lr.ph59.preheader
  %460 = phi i64* [ %532, %527 ], [ %452, %.lr.ph59.preheader ]
  %461 = phi i64* [ %529, %527 ], [ %453, %.lr.ph59.preheader ]
  %j.457 = phi i64 [ %528, %527 ], [ %455, %.lr.ph59.preheader ]
  %462 = load i64*, i64** %449, align 8
  %463 = getelementptr inbounds i64, i64* %462, i64 %j.457
  %464 = load i64, i64* %463, align 8
  %465 = getelementptr inbounds i64, i64* %461, i64 %464
  %466 = load i64, i64* %465, align 8
  %467 = getelementptr inbounds i64, i64* %460, i64 %464
  %468 = load i64, i64* %467, align 8
  %469 = add i64 %468, %466
  %470 = icmp ult i64 %466, %469
  br i1 %470, label %.lr.ph51.preheader, label %._crit_edge52

.lr.ph51.preheader:                               ; preds = %.lr.ph59
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %474, %.lr.ph51.preheader
  %k9.049 = phi i64 [ %475, %474 ], [ %466, %.lr.ph51.preheader ]
  %471 = getelementptr inbounds i64, i64* %462, i64 %k9.049
  %472 = load i64, i64* %471, align 8
  %473 = icmp eq i64 %472, %i.761
  br i1 %473, label %._crit_edge52.loopexit, label %474

; <label>:474                                     ; preds = %.lr.ph51
  %475 = add i64 %k9.049, 1
  %476 = icmp ult i64 %475, %469
  br i1 %476, label %.lr.ph51, label %._crit_edge52.loopexit

._crit_edge52.loopexit:                           ; preds = %474, %.lr.ph51
  %k9.0.lcssa.ph = phi i64 [ %k9.049, %.lr.ph51 ], [ %475, %474 ]
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.loopexit, %.lr.ph59
  %k9.0.lcssa = phi i64 [ %466, %.lr.ph59 ], [ %k9.0.lcssa.ph, %._crit_edge52.loopexit ]
  %477 = icmp eq i64 %k9.0.lcssa, %469
  br i1 %477, label %.outer.preheader, label %527

.outer.preheader:                                 ; preds = %._crit_edge52
  br label %.outer

.outer:                                           ; preds = %484, %.outer.preheader
  %tries11.0.ph = phi i32 [ %485, %484 ], [ 9, %.outer.preheader ]
  %478 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %._crit_edge56, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.outer
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55, %.lr.ph55.preheader
  call void @llvm.x86.sse2.pause() #6
  %480 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %._crit_edge56.loopexit, label %.lr.ph55

._crit_edge56.loopexit:                           ; preds = %.lr.ph55
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %._crit_edge56.loopexit, %.outer
  %482 = icmp slt i32 %tries11.0.ph, 2
  br i1 %482, label %483, label %484

; <label>:483                                     ; preds = %._crit_edge56
  %tries11.0.ph.lcssa = phi i32 [ %tries11.0.ph, %._crit_edge56 ]
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #6
  br label %493

; <label>:484                                     ; preds = %._crit_edge56
  %485 = add nsw i32 %tries11.0.ph, -1
  %486 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 9, i64 0, i64 9, i64 4294967295) #6, !srcloc !12
  %487 = trunc i64 %486 to i32
  %488 = icmp eq i32 %487, -1
  br i1 %488, label %489, label %.outer

; <label>:489                                     ; preds = %484
  %tries11.0.ph.lcssa266 = phi i32 [ %tries11.0.ph, %484 ]
  %490 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %493, label %492

; <label>:492                                     ; preds = %489
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !13
  br label %493

; <label>:493                                     ; preds = %492, %489, %483
  %tries11.0.ph267 = phi i32 [ %tries11.0.ph.lcssa266, %489 ], [ %tries11.0.ph.lcssa266, %492 ], [ %tries11.0.ph.lcssa, %483 ]
  %494 = load i64*, i64** %450, align 8
  %495 = getelementptr inbounds i64, i64* %494, i64 %464
  %496 = load i64, i64* %495, align 8
  %497 = add nsw i64 %496, 1
  store i64 %497, i64* %495, align 8
  %498 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %499 = icmp slt i64 %496, %498
  br i1 %499, label %500, label %504

; <label>:500                                     ; preds = %493
  %501 = mul i64 %498, %464
  %502 = add i64 %501, %496
  %503 = getelementptr inbounds i64, i64* %425, i64 %502
  store i64 %i.761, i64* %503, align 8
  br label %523

; <label>:504                                     ; preds = %493
  %505 = srem i64 %496, %498
  %506 = icmp eq i64 %505, 0
  br i1 %506, label %507, label %516

; <label>:507                                     ; preds = %504
  %508 = shl i64 %498, 3
  %509 = call noalias i8* @malloc(i64 %508) #6
  %510 = icmp eq i8* %509, null
  br i1 %510, label %511, label %512

; <label>:511                                     ; preds = %507
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.34, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.26, i64 0, i64 0), i32 489, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #15
  unreachable

; <label>:512                                     ; preds = %507
  %513 = bitcast i8* %509 to i64*
  %514 = getelementptr inbounds i64*, i64** %444, i64 %464
  %515 = bitcast i64** %514 to i8**
  store i8* %509, i8** %515, align 8
  %.pre159 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  br label %519

; <label>:516                                     ; preds = %504
  %517 = getelementptr inbounds i64*, i64** %444, i64 %464
  %518 = load i64*, i64** %517, align 8
  br label %519

; <label>:519                                     ; preds = %516, %512
  %520 = phi i64 [ %.pre159, %512 ], [ %498, %516 ]
  %a.0 = phi i64* [ %513, %512 ], [ %518, %516 ]
  %521 = srem i64 %496, %520
  %522 = getelementptr inbounds i64, i64* %a.0, i64 %521
  store i64 %i.761, i64* %522, align 8
  br label %523

; <label>:523                                     ; preds = %519, %500
  %524 = icmp sgt i32 %tries11.0.ph267, 1
  br i1 %524, label %525, label %526

; <label>:525                                     ; preds = %523
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 9) #6, !srcloc !14
  br label %527

; <label>:526                                     ; preds = %523
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #6
  br label %527

; <label>:527                                     ; preds = %526, %525, %._crit_edge52
  %528 = add i64 %j.457, 1
  %529 = load i64*, i64** %221, align 8
  %530 = getelementptr inbounds i64, i64* %529, i64 %i.761
  %531 = load i64, i64* %530, align 8
  %532 = load i64*, i64** %140, align 8
  %533 = getelementptr inbounds i64, i64* %532, i64 %i.761
  %534 = load i64, i64* %533, align 8
  %535 = add i64 %534, %531
  %536 = icmp ult i64 %528, %535
  br i1 %536, label %.lr.ph59, label %._crit_edge60.loopexit

._crit_edge60.loopexit:                           ; preds = %527
  %.lcssa269 = phi i64* [ %532, %527 ]
  %.lcssa268 = phi i64* [ %529, %527 ]
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %._crit_edge60.loopexit, %451
  %537 = phi i64* [ %452, %451 ], [ %.lcssa269, %._crit_edge60.loopexit ]
  %538 = phi i64* [ %453, %451 ], [ %.lcssa268, %._crit_edge60.loopexit ]
  %539 = add nsw i64 %i.761, 1
  %540 = load i64, i64* %i_stop, align 8
  %541 = icmp slt i64 %539, %540
  br i1 %541, label %451, label %._crit_edge64.loopexit

._crit_edge64.loopexit:                           ; preds = %._crit_edge60
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %.._crit_edge64_crit_edge
  %.pre-phi169 = phi i64** [ %.pre168, %.._crit_edge64_crit_edge ], [ %450, %._crit_edge64.loopexit ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %542 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 11
  %543 = load i64*, i64** %542, align 8
  %544 = load i64*, i64** %.pre-phi169, align 8
  %545 = load i64, i64* %.pre-phi, align 8
  call fastcc void @prefix_sums(i64* %543, i64* %544, i64 %545)
  br i1 %77, label %546, label %561

; <label>:546                                     ; preds = %._crit_edge64
  %547 = load i64, i64* %.pre-phi, align 8
  %548 = add i64 %547, -1
  %549 = load i64*, i64** %542, align 8
  %550 = getelementptr inbounds i64, i64* %549, i64 %548
  %551 = load i64, i64* %550, align 8
  %552 = load i64*, i64** %.pre-phi169, align 8
  %553 = getelementptr inbounds i64, i64* %552, i64 %548
  %554 = load i64, i64* %553, align 8
  %555 = add i64 %554, %551
  %556 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 3
  store i64 %555, i64* %556, align 8
  %557 = shl i64 %555, 3
  %558 = call noalias i8* @malloc(i64 %557) #6
  %559 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 12
  %560 = bitcast i64** %559 to i8**
  store i8* %558, i8** %560, align 8
  br label %561

; <label>:561                                     ; preds = %546, %._crit_edge64
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %562 = load i64, i64* %i_start, align 8
  %563 = load i64, i64* %i_stop, align 8
  %564 = icmp slt i64 %562, %563
  br i1 %564, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %561
  %565 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 12
  %.pre160 = load i64*, i64** %542, align 8
  %.pre161 = load i64*, i64** %.pre-phi169, align 8
  br label %566

; <label>:566                                     ; preds = %._crit_edge43, %.lr.ph47
  %567 = phi i64 [ %563, %.lr.ph47 ], [ %606, %._crit_edge43 ]
  %568 = phi i64* [ %.pre161, %.lr.ph47 ], [ %607, %._crit_edge43 ]
  %569 = phi i64* [ %.pre160, %.lr.ph47 ], [ %608, %._crit_edge43 ]
  %i.844 = phi i64 [ %562, %.lr.ph47 ], [ %609, %._crit_edge43 ]
  %570 = getelementptr inbounds i64, i64* %569, i64 %i.844
  %571 = load i64, i64* %570, align 8
  %572 = getelementptr inbounds i64, i64* %568, i64 %i.844
  %573 = load i64, i64* %572, align 8
  %574 = add i64 %573, %571
  %575 = icmp ult i64 %571, %574
  br i1 %575, label %.lr.ph42, label %._crit_edge43

.lr.ph42:                                         ; preds = %566
  %576 = getelementptr inbounds i64*, i64** %444, i64 %i.844
  br label %577

; <label>:577                                     ; preds = %596, %.lr.ph42
  %578 = phi i64 [ %571, %.lr.ph42 ], [ %600, %596 ]
  %j.540 = phi i64 [ %571, %.lr.ph42 ], [ %597, %596 ]
  %579 = sub i64 %j.540, %578
  %580 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %581 = icmp ult i64 %579, %580
  br i1 %581, label %582, label %589

; <label>:582                                     ; preds = %577
  %583 = mul nsw i64 %580, %i.844
  %584 = add i64 %579, %583
  %585 = getelementptr inbounds i64, i64* %425, i64 %584
  %586 = load i64, i64* %585, align 8
  %587 = load i64*, i64** %565, align 8
  %588 = getelementptr inbounds i64, i64* %587, i64 %j.540
  store i64 %586, i64* %588, align 8
  br label %596

; <label>:589                                     ; preds = %577
  %590 = urem i64 %579, %580
  %591 = load i64*, i64** %576, align 8
  %592 = getelementptr inbounds i64, i64* %591, i64 %590
  %593 = load i64, i64* %592, align 8
  %594 = load i64*, i64** %565, align 8
  %595 = getelementptr inbounds i64, i64* %594, i64 %j.540
  store i64 %593, i64* %595, align 8
  br label %596

; <label>:596                                     ; preds = %589, %582
  %597 = add i64 %j.540, 1
  %598 = load i64*, i64** %542, align 8
  %599 = getelementptr inbounds i64, i64* %598, i64 %i.844
  %600 = load i64, i64* %599, align 8
  %601 = load i64*, i64** %.pre-phi169, align 8
  %602 = getelementptr inbounds i64, i64* %601, i64 %i.844
  %603 = load i64, i64* %602, align 8
  %604 = add i64 %603, %600
  %605 = icmp ult i64 %597, %604
  br i1 %605, label %577, label %._crit_edge43.loopexit

._crit_edge43.loopexit:                           ; preds = %596
  %.lcssa265 = phi i64* [ %601, %596 ]
  %.lcssa264 = phi i64* [ %598, %596 ]
  %.pre162 = load i64, i64* %i_stop, align 8
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %._crit_edge43.loopexit, %566
  %606 = phi i64 [ %.pre162, %._crit_edge43.loopexit ], [ %567, %566 ]
  %607 = phi i64* [ %.lcssa265, %._crit_edge43.loopexit ], [ %568, %566 ]
  %608 = phi i64* [ %.lcssa264, %._crit_edge43.loopexit ], [ %569, %566 ]
  %609 = add nsw i64 %i.844, 1
  %610 = icmp slt i64 %609, %606
  br i1 %610, label %566, label %._crit_edge48.loopexit

._crit_edge48.loopexit:                           ; preds = %._crit_edge43
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %._crit_edge48.loopexit, %561
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %77, label %611, label %613

; <label>:611                                     ; preds = %._crit_edge48
  %612 = bitcast i64* %425 to i8*
  call void @free(i8* %612) #6
  br label %613

; <label>:613                                     ; preds = %611, %._crit_edge48
  %614 = load i64, i64* %i_start, align 8
  %615 = load i64, i64* %i_stop, align 8
  %616 = icmp slt i64 %614, %615
  br i1 %616, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %613
  br label %.lr.ph

.lr.ph:                                           ; preds = %627, %.lr.ph.preheader
  %617 = phi i64 [ %628, %627 ], [ %615, %.lr.ph.preheader ]
  %i.939 = phi i64 [ %629, %627 ], [ %614, %.lr.ph.preheader ]
  %618 = load i64*, i64** %.pre-phi169, align 8
  %619 = getelementptr inbounds i64, i64* %618, i64 %i.939
  %620 = load i64, i64* %619, align 8
  %621 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %622 = icmp sgt i64 %620, %621
  br i1 %622, label %623, label %627

; <label>:623                                     ; preds = %.lr.ph
  %624 = getelementptr inbounds i64*, i64** %444, i64 %i.939
  %625 = bitcast i64** %624 to i8**
  %626 = load i8*, i8** %625, align 8
  call void @free(i8* %626) #6
  %.pre163 = load i64, i64* %i_stop, align 8
  br label %627

; <label>:627                                     ; preds = %623, %.lr.ph
  %628 = phi i64 [ %617, %.lr.ph ], [ %.pre163, %623 ]
  %629 = add nsw i64 %i.939, 1
  %630 = icmp slt i64 %629, %628
  br i1 %630, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %627
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %613
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %77, label %631, label %633

; <label>:631                                     ; preds = %._crit_edge
  %632 = bitcast i64** %444 to i8*
  call void @free(i8* %632) #6
  br label %633

; <label>:633                                     ; preds = %631, %._crit_edge
  %634 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %635 = trunc i64 %634 to i32
  %636 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %637 = load i32, i32* %636, align 4
  call void @SimRoiEnd(i32 %635, i32 %637) #6
  ret void
}

declare void @SimRoiStart(i32) #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #6

; Function Attrs: nounwind uwtable
define internal fastcc void @prefix_sums(i64* nocapture %result, i64* nocapture readonly %input, i64 %arraySize) unnamed_addr #0 {
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %2 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #6
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = shl i64 %2, 10
  %6 = tail call noalias i8* @malloc(i64 %5) #6
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.28, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.26, i64 0, i64 0), i32 98, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.prefix_sums, i64 0, i64 0)) #15
  unreachable

; <label>:9                                       ; preds = %4
  store i8* %6, i8** bitcast (i64** @global_p to i8**), align 8
  br label %10

; <label>:10                                      ; preds = %9, %0
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %11 = load i64*, i64** @global_p, align 8
  %12 = udiv i64 %arraySize, %2
  %13 = mul nsw i64 %12, %1
  %14 = add nsw i64 %1, 1
  %15 = mul nsw i64 %12, %14
  %16 = add nsw i64 %2, -1
  %17 = icmp eq i64 %1, %16
  %arraySize. = select i1 %17, i64 %arraySize, i64 %15
  %j.05 = add i64 %13, 1
  %18 = icmp ult i64 %j.05, %arraySize.
  br i1 %18, label %.lr.ph8.preheader, label %._crit_edge

.lr.ph8.preheader:                                ; preds = %10
  %.phi.trans.insert = getelementptr inbounds i64, i64* %result, i64 %13
  %.pre = load i64, i64* %.phi.trans.insert, align 8
  br label %.lr.ph8

.lr.ph8:                                          ; preds = %.lr.ph8, %.lr.ph8.preheader
  %19 = phi i64 [ %22, %.lr.ph8 ], [ %.pre, %.lr.ph8.preheader ]
  %j.07 = phi i64 [ %j.0, %.lr.ph8 ], [ %j.05, %.lr.ph8.preheader ]
  %j.0.in6 = phi i64 [ %j.07, %.lr.ph8 ], [ %13, %.lr.ph8.preheader ]
  %20 = getelementptr inbounds i64, i64* %input, i64 %j.0.in6
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %19, %21
  %23 = getelementptr inbounds i64, i64* %result, i64 %j.07
  store i64 %22, i64* %23, align 8
  %j.0 = add i64 %j.07, 1
  %24 = icmp ult i64 %j.0, %arraySize.
  br i1 %24, label %.lr.ph8, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %10
  %25 = add nsw i64 %arraySize., -1
  %26 = getelementptr inbounds i64, i64* %result, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = shl i64 %1, 7
  %29 = getelementptr inbounds i64, i64* %11, i64 %28
  store i64 %27, i64* %29, align 8
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %30 = icmp ugt i64 %2, 1
  %or.cond = and i1 %3, %30
  br i1 %or.cond, label %.lr.ph4.preheader, label %.loopexit1

.lr.ph4.preheader:                                ; preds = %._crit_edge
  %31 = and i64 %2, 1
  %lcmp.mod17 = icmp eq i64 %31, 0
  br i1 %lcmp.mod17, label %.lr.ph4.prol, label %.lr.ph4.preheader.split

.lr.ph4.prol:                                     ; preds = %.lr.ph4.preheader
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds i64, i64* %11, i64 128
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %32
  store i64 %35, i64* %33, align 8
  br label %.lr.ph4.preheader.split

.lr.ph4.preheader.split:                          ; preds = %.lr.ph4.prol, %.lr.ph4.preheader
  %j.13.unr = phi i64 [ 1, %.lr.ph4.preheader ], [ 2, %.lr.ph4.prol ]
  %36 = icmp eq i64 %2, 2
  br i1 %36, label %.loopexit1.loopexit, label %.lr.ph4.preheader.split.split

.lr.ph4.preheader.split.split:                    ; preds = %.lr.ph4.preheader.split
  br label %.lr.ph4

.lr.ph4:                                          ; preds = %.lr.ph4, %.lr.ph4.preheader.split.split
  %j.13 = phi i64 [ %j.13.unr, %.lr.ph4.preheader.split.split ], [ %51, %.lr.ph4 ]
  %37 = shl i64 %j.13, 7
  %38 = add i64 %37, -128
  %39 = getelementptr inbounds i64, i64* %11, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %11, i64 %37
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %40
  store i64 %43, i64* %41, align 8
  %44 = shl i64 %j.13, 7
  %45 = add i64 %44, 128
  %46 = getelementptr inbounds i64, i64* %11, i64 %44
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %11, i64 %45
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %47
  store i64 %50, i64* %48, align 8
  %51 = add i64 %j.13, 2
  %exitcond.1 = icmp eq i64 %51, %2
  br i1 %exitcond.1, label %.loopexit1.loopexit.unr-lcssa, label %.lr.ph4

.loopexit1.loopexit.unr-lcssa:                    ; preds = %.lr.ph4
  br label %.loopexit1.loopexit

.loopexit1.loopexit:                              ; preds = %.loopexit1.loopexit.unr-lcssa, %.lr.ph4.preheader.split
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %._crit_edge
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %52 = icmp sgt i64 %1, 0
  br i1 %52, label %53, label %.loopexit

; <label>:53                                      ; preds = %.loopexit1
  %54 = add i64 %28, -128
  %55 = getelementptr inbounds i64, i64* %11, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %13, %arraySize.
  br i1 %57, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %53
  %58 = udiv i64 %arraySize, %2
  %59 = mul i64 %1, %58
  %60 = sub i64 %arraySize., %59
  %min.iters.check = icmp ult i64 %60, 4
  br i1 %min.iters.check, label %.lr.ph.preheader15, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph.preheader
  %n.vec = and i64 %60, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = add i64 %13, %n.vec
  br i1 %cmp.zero, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %min.iters.checked
  %broadcast.splatinsert11 = insertelement <2 x i64> undef, i64 %56, i32 0
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> undef, <2 x i32> zeroinitializer
  %61 = udiv i64 %arraySize, %2
  %62 = mul i64 %1, %61
  %63 = sub i64 %arraySize., %62
  %64 = add i64 %63, -4
  %65 = lshr i64 %64, 2
  %66 = and i64 %65, 1
  %lcmp.mod = icmp eq i64 %66, 0
  br i1 %lcmp.mod, label %vector.body.prol, label %vector.ph.split

vector.body.prol:                                 ; preds = %vector.ph
  %67 = getelementptr inbounds i64, i64* %result, i64 %13
  %68 = bitcast i64* %67 to <2 x i64>*
  %wide.load.prol = load <2 x i64>, <2 x i64>* %68, align 8
  %69 = getelementptr i64, i64* %67, i64 2
  %70 = bitcast i64* %69 to <2 x i64>*
  %wide.load10.prol = load <2 x i64>, <2 x i64>* %70, align 8
  %71 = add <2 x i64> %wide.load.prol, %broadcast.splat12
  %72 = add <2 x i64> %wide.load10.prol, %broadcast.splat12
  %73 = bitcast i64* %67 to <2 x i64>*
  store <2 x i64> %71, <2 x i64>* %73, align 8
  %74 = bitcast i64* %69 to <2 x i64>*
  store <2 x i64> %72, <2 x i64>* %74, align 8
  br label %vector.ph.split

vector.ph.split:                                  ; preds = %vector.body.prol, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ 4, %vector.body.prol ]
  %75 = icmp eq i64 %65, 0
  br i1 %75, label %middle.block, label %vector.ph.split.split

vector.ph.split.split:                            ; preds = %vector.ph.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.split.split
  %index = phi i64 [ %index.unr, %vector.ph.split.split ], [ %index.next.1, %vector.body ]
  %offset.idx = add i64 %13, %index
  %76 = getelementptr inbounds i64, i64* %result, i64 %offset.idx
  %77 = bitcast i64* %76 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %77, align 8
  %78 = getelementptr i64, i64* %76, i64 2
  %79 = bitcast i64* %78 to <2 x i64>*
  %wide.load10 = load <2 x i64>, <2 x i64>* %79, align 8
  %80 = add <2 x i64> %wide.load, %broadcast.splat12
  %81 = add <2 x i64> %wide.load10, %broadcast.splat12
  %82 = bitcast i64* %76 to <2 x i64>*
  store <2 x i64> %80, <2 x i64>* %82, align 8
  %83 = bitcast i64* %78 to <2 x i64>*
  store <2 x i64> %81, <2 x i64>* %83, align 8
  %index.next = add i64 %index, 4
  %offset.idx.1 = add i64 %13, %index.next
  %84 = getelementptr inbounds i64, i64* %result, i64 %offset.idx.1
  %85 = bitcast i64* %84 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %85, align 8
  %86 = getelementptr i64, i64* %84, i64 2
  %87 = bitcast i64* %86 to <2 x i64>*
  %wide.load10.1 = load <2 x i64>, <2 x i64>* %87, align 8
  %88 = add <2 x i64> %wide.load.1, %broadcast.splat12
  %89 = add <2 x i64> %wide.load10.1, %broadcast.splat12
  %90 = bitcast i64* %84 to <2 x i64>*
  store <2 x i64> %88, <2 x i64>* %90, align 8
  %91 = bitcast i64* %86 to <2 x i64>*
  store <2 x i64> %89, <2 x i64>* %91, align 8
  %index.next.1 = add i64 %index, 8
  %92 = icmp eq i64 %index.next.1, %n.vec
  br i1 %92, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !18

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.ph.split
  %cmp.n = icmp eq i64 %60, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %middle.block, %min.iters.checked, %.lr.ph.preheader
  %j.22.ph = phi i64 [ %13, %min.iters.checked ], [ %13, %.lr.ph.preheader ], [ %ind.end, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader15
  %j.22 = phi i64 [ %96, %.lr.ph ], [ %j.22.ph, %.lr.ph.preheader15 ]
  %93 = getelementptr inbounds i64, i64* %result, i64 %j.22
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, %56
  store i64 %95, i64* %93, align 8
  %96 = add nuw i64 %j.22, 1
  %97 = icmp ult i64 %96, %arraySize.
  br i1 %97, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !19

.loopexit.loopexit:                               ; preds = %.lr.ph
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %middle.block, %53, %.loopexit1
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %3, label %98, label %100

; <label>:98                                      ; preds = %.loopexit
  %99 = bitcast i64* %11 to i8*
  tail call void @free(i8* %99) #6
  br label %100

; <label>:100                                     ; preds = %98, %.loopexit
  ret void
}

declare void @SimRoiEnd(i32, i32) #1

; Function Attrs: norecurse nounwind uwtable
define void @createPartition(i64 %min, i64 %max, i64 %id, i64 %n, i64* nocapture %startPtr, i64* nocapture %stopPtr) #7 {
  %1 = sub i64 %max, %min
  %2 = sdiv i64 %n, 2
  %3 = add nsw i64 %1, %2
  %4 = sdiv i64 %3, %n
  %5 = icmp slt i64 %4, 1
  %6 = select i1 %5, i64 1, i64 %4
  %7 = mul nsw i64 %6, %id
  %8 = add nsw i64 %7, %min
  %9 = add nsw i64 %n, -1
  %10 = icmp eq i64 %9, %id
  br i1 %10, label %15, label %11

; <label>:11                                      ; preds = %0
  %12 = add nsw i64 %8, %6
  %13 = icmp sgt i64 %12, %max
  %14 = select i1 %13, i64 %max, i64 %12
  br label %15

; <label>:15                                      ; preds = %11, %0
  %stop.0 = phi i64 [ %14, %11 ], [ %max, %0 ]
  store i64 %8, i64* %startPtr, align 8
  store i64 %stop.0, i64* %stopPtr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cutClusters(i8* readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #6
  %5 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %6 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #6
  %7 = icmp eq i64 %5, 0
  %8 = bitcast i8* %argPtr to i64*
  br i1 %7, label %9, label %._crit_edge131

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %8, align 8
  %11 = shl i64 %10, 3
  %12 = tail call noalias i8* @malloc(i64 %11) #6
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %9
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.38, i64 0, i64 0), i32 121, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #15
  unreachable

; <label>:15                                      ; preds = %9
  store i8* %12, i8** bitcast (i64** @global_Index to i8**), align 8
  %16 = tail call noalias i8* @malloc(i64 %11) #6
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %15
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.39, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.38, i64 0, i64 0), i32 124, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #15
  unreachable

; <label>:19                                      ; preds = %15
  store i8* %16, i8** bitcast (i64** @global_neighbourArray to i8**), align 8
  %20 = tail call noalias i8* @malloc(i64 %11) #6
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %19
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.40, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.38, i64 0, i64 0), i32 127, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #15
  unreachable

; <label>:23                                      ; preds = %19
  store i8* %20, i8** bitcast (i64** @global_IndexSorted to i8**), align 8
  %24 = tail call noalias i8* @malloc(i64 %11) #6
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %23
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4.41, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.38, i64 0, i64 0), i32 130, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #15
  unreachable

; <label>:27                                      ; preds = %23
  store i8* %24, i8** bitcast (i64** @global_neighbourArraySorted to i8**), align 8
  br label %._crit_edge131

._crit_edge131:                                   ; preds = %27, %0
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %28 = load i64*, i64** @global_Index, align 8
  %29 = load i64*, i64** @global_neighbourArray, align 8
  %30 = load i64*, i64** @global_IndexSorted, align 8
  %31 = load i64*, i64** @global_neighbourArraySorted, align 8
  %32 = load i64, i64* %8, align 8
  call void @createPartition(i64 0, i64 %32, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %33 = load i64, i64* %i_start, align 8
  %34 = load i64, i64* %i_stop, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %._crit_edge131
  %36 = getelementptr inbounds i8, i8* %argPtr, i64 80
  %37 = bitcast i8* %36 to i64**
  %38 = getelementptr inbounds i8, i8* %argPtr, i64 48
  %39 = bitcast i8* %38 to i64**
  br label %40

; <label>:40                                      ; preds = %40, %.lr.ph103
  %i.0101 = phi i64 [ %33, %.lr.ph103 ], [ %50, %40 ]
  %41 = load i64*, i64** %37, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 %i.0101
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %39, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 %i.0101
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %43
  %48 = getelementptr inbounds i64, i64* %29, i64 %i.0101
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds i64, i64* %28, i64 %i.0101
  store i64 %i.0101, i64* %49, align 8
  %50 = add nsw i64 %i.0101, 1
  %51 = load i64, i64* %i_stop, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %40, label %._crit_edge104.loopexit

._crit_edge104.loopexit:                          ; preds = %40
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %._crit_edge131
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %53 = load i64, i64* %8, align 8
  call void @all_radixsort_node_aux_s3(i64 %53, i64* %29, i64* %31, i64* %28, i64* %30) #6
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %7, label %54, label %93

; <label>:54                                      ; preds = %._crit_edge104
  %55 = bitcast i64* %28 to i8*
  call void @free(i8* %55) #6
  %56 = bitcast i64* %29 to i8*
  call void @free(i8* %56) #6
  %57 = load i64, i64* %8, align 8
  %58 = shl i64 %57, 3
  %59 = call noalias i8* @malloc(i64 %58) #6
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %54
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5.42, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.38, i64 0, i64 0), i32 179, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #15
  unreachable

; <label>:62                                      ; preds = %54
  store i8* %59, i8** bitcast (i64** @global_vStatus to i8**), align 8
  %63 = load i64, i64* @SCALE, align 8
  %64 = icmp slt i64 %63, 12
  %65 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8
  br i1 %64, label %68, label %72

; <label>:68                                      ; preds = %62
  %69 = udiv i64 %67, %6
  %70 = mul i64 %69, 24
  %71 = call noalias i8* @malloc(i64 %70) #6
  br label %80

; <label>:72                                      ; preds = %62
  %73 = uitofp i64 %67 to double
  %74 = fmul double %73, 2.000000e-01
  %75 = sitofp i64 %6 to double
  %76 = fdiv double %74, %75
  %77 = fmul double %76, 2.400000e+01
  %78 = fptoui double %77 to i64
  %79 = call noalias i8* @malloc(i64 %78) #6
  br label %80

; <label>:80                                      ; preds = %72, %68
  %pCutSet.0.in = phi i8* [ %71, %68 ], [ %79, %72 ]
  %81 = icmp eq i8* %pCutSet.0.in, null
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %80
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.43, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.38, i64 0, i64 0), i32 194, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #15
  unreachable

; <label>:83                                      ; preds = %80
  store i8* %pCutSet.0.in, i8** bitcast (%struct.edge** @global_pCutSet to i8**), align 8
  %84 = shl i64 %6, 3
  %85 = call noalias i8* @malloc(i64 %84) #6
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %83
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.44, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.38, i64 0, i64 0), i32 201, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #15
  unreachable

; <label>:88                                      ; preds = %83
  store i8* %85, i8** bitcast (i64** @global_startV to i8**), align 8
  %89 = call noalias i8* @malloc(i64 %84) #6
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %88
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8.45, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.38, i64 0, i64 0), i32 204, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #15
  unreachable

; <label>:92                                      ; preds = %88
  store i8* %89, i8** bitcast (i64** @global_clusterSize to i8**), align 8
  br label %93

; <label>:93                                      ; preds = %92, %._crit_edge104
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %94 = load i64*, i64** @global_vStatus, align 8
  %95 = load %struct.edge*, %struct.edge** @global_pCutSet, align 8
  %96 = load i64*, i64** @global_startV, align 8
  %97 = load i64*, i64** @global_clusterSize, align 8
  %98 = load i64, i64* %i_start, align 8
  %99 = load i64, i64* %i_stop, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %93
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99, %.lr.ph99.preheader
  %i.197 = phi i64 [ %102, %.lr.ph99 ], [ %98, %.lr.ph99.preheader ]
  %101 = getelementptr inbounds i64, i64* %94, i64 %i.197
  store i64 -1, i64* %101, align 8
  %102 = add nsw i64 %i.197, 1
  %103 = load i64, i64* %i_stop, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %.lr.ph99, label %._crit_edge100.loopexit

._crit_edge100.loopexit:                          ; preds = %.lr.ph99
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.loopexit, %93
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %105 = getelementptr inbounds i64, i64* %96, i64 %5
  %106 = getelementptr inbounds i64, i64* %97, i64 %5
  %107 = getelementptr inbounds i8, i8* %argPtr, i64 80
  %108 = bitcast i8* %107 to i64**
  %109 = getelementptr inbounds i8, i8* %argPtr, i64 48
  %110 = bitcast i8* %109 to i64**
  %111 = getelementptr inbounds i8, i8* %argPtr, i64 88
  %112 = bitcast i8* %111 to i64**
  %113 = getelementptr inbounds i8, i8* %argPtr, i64 96
  %114 = bitcast i8* %113 to i64**
  %115 = getelementptr inbounds i8, i8* %argPtr, i64 56
  %116 = bitcast i8* %115 to i64**
  %117 = getelementptr inbounds i8, i8* %argPtr, i64 64
  %118 = bitcast i8* %117 to i64**
  %.pre = load i64, i64* %8, align 8
  %.not = xor i1 %7, true
  %.not105 = icmp slt i64 %6, 1
  %brmerge = or i1 %.not105, %.not
  br label %119

; <label>:119                                     ; preds = %522, %._crit_edge100
  %120 = phi i64 [ %.pre, %._crit_edge100 ], [ %527, %522 ]
  %cutSetIndex.0 = phi i64 [ 0, %._crit_edge100 ], [ %cutSetIndex.14, %522 ]
  %currIndex.0 = phi i64 [ 0, %._crit_edge100 ], [ %currIndex.4, %522 ]
  %iter.0 = phi i64 [ 0, %._crit_edge100 ], [ %523, %522 ]
  %verticesVisited.0 = phi i64 [ 0, %._crit_edge100 ], [ %525, %522 ]
  %121 = icmp ult i64 %verticesVisited.0, %120
  br i1 %121, label %122, label %533

; <label>:122                                     ; preds = %119
  store i64 -1, i64* %105, align 8
  store i64 0, i64* %106, align 8
  %123 = load i64, i64* %8, align 8
  %124 = icmp eq i64 %currIndex.0, %123
  %.currIndex.0 = select i1 %124, i64 0, i64 %currIndex.0
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %brmerge, label %.loopexit24, label %.preheader14.lr.ph

.preheader14.lr.ph:                               ; preds = %122
  %125 = mul nsw i64 %iter.0, %6
  br label %.preheader14

.preheader14:                                     ; preds = %.loopexit15, %.preheader14.lr.ph
  %currIndex.245 = phi i64 [ %.currIndex.0, %.preheader14.lr.ph ], [ %currIndex.3, %.loopexit15 ]
  %t.042 = phi i64 [ 0, %.preheader14.lr.ph ], [ %200, %.loopexit15 ]
  %126 = load i64, i64* %8, align 8
  %127 = icmp ugt i64 %126, %currIndex.245
  br i1 %127, label %.lr.ph35.preheader, label %.loopexit15

.lr.ph35.preheader:                               ; preds = %.preheader14
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %197, %.lr.ph35.preheader
  %r.034 = phi i64 [ %198, %197 ], [ %currIndex.245, %.lr.ph35.preheader ]
  %128 = xor i64 %r.034, -1
  %129 = add i64 %126, %128
  %130 = getelementptr inbounds i64, i64* %30, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i64, i64* %94, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, -1
  br i1 %134, label %135, label %197

; <label>:135                                     ; preds = %.lr.ph35
  %.lcssa162 = phi i64* [ %132, %.lr.ph35 ]
  %.lcssa = phi i64 [ %131, %.lr.ph35 ]
  %r.034.lcssa = phi i64 [ %r.034, %.lr.ph35 ]
  %136 = getelementptr inbounds i64, i64* %96, i64 %t.042
  store i64 %.lcssa, i64* %136, align 8
  %137 = add nsw i64 %t.042, %125
  store i64 %137, i64* %.lcssa162, align 8
  %138 = load i64, i64* %136, align 8
  %139 = load i64*, i64** %110, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 %138
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %.lr.ph38, label %.preheader13

.lr.ph38:                                         ; preds = %135
  %143 = getelementptr inbounds i64, i64* %97, i64 %t.042
  br label %150

.preheader13.loopexit:                            ; preds = %166
  %.lcssa164 = phi i64 [ %168, %166 ]
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader13.loopexit, %135
  %144 = phi i64 [ %138, %135 ], [ %.lcssa164, %.preheader13.loopexit ]
  %145 = load i64*, i64** %108, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 %144
  %147 = load i64, i64* %146, align 8
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %.lr.ph40, label %._crit_edge41

.lr.ph40:                                         ; preds = %.preheader13
  %149 = getelementptr inbounds i64, i64* %97, i64 %t.042
  br label %173

; <label>:150                                     ; preds = %166, %.lr.ph38
  %151 = phi i64* [ %139, %.lr.ph38 ], [ %167, %166 ]
  %152 = phi i64 [ %138, %.lr.ph38 ], [ %168, %166 ]
  %j.036 = phi i64 [ 0, %.lr.ph38 ], [ %169, %166 ]
  %153 = load i64*, i64** %116, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 %152
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, %j.036
  %157 = load i64*, i64** %118, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 %156
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i64, i64* %94, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, -1
  br i1 %162, label %163, label %166

; <label>:163                                     ; preds = %150
  store i64 %137, i64* %160, align 8
  %164 = load i64, i64* %143, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %143, align 8
  %.pre115 = load i64, i64* %136, align 8
  %.pre116 = load i64*, i64** %110, align 8
  br label %166

; <label>:166                                     ; preds = %163, %150
  %167 = phi i64* [ %151, %150 ], [ %.pre116, %163 ]
  %168 = phi i64 [ %152, %150 ], [ %.pre115, %163 ]
  %169 = add nuw nsw i64 %j.036, 1
  %170 = getelementptr inbounds i64, i64* %167, i64 %168
  %171 = load i64, i64* %170, align 8
  %172 = icmp slt i64 %169, %171
  br i1 %172, label %150, label %.preheader13.loopexit

; <label>:173                                     ; preds = %189, %.lr.ph40
  %174 = phi i64* [ %145, %.lr.ph40 ], [ %190, %189 ]
  %175 = phi i64 [ %144, %.lr.ph40 ], [ %191, %189 ]
  %j.139 = phi i64 [ 0, %.lr.ph40 ], [ %192, %189 ]
  %176 = load i64*, i64** %112, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 %175
  %178 = load i64, i64* %177, align 8
  %179 = add i64 %178, %j.139
  %180 = load i64*, i64** %114, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 %179
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i64, i64* %94, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %184, -1
  br i1 %185, label %186, label %189

; <label>:186                                     ; preds = %173
  store i64 %137, i64* %183, align 8
  %187 = load i64, i64* %149, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %149, align 8
  %.pre117 = load i64, i64* %136, align 8
  %.pre118 = load i64*, i64** %108, align 8
  br label %189

; <label>:189                                     ; preds = %186, %173
  %190 = phi i64* [ %174, %173 ], [ %.pre118, %186 ]
  %191 = phi i64 [ %175, %173 ], [ %.pre117, %186 ]
  %192 = add nuw nsw i64 %j.139, 1
  %193 = getelementptr inbounds i64, i64* %190, i64 %191
  %194 = load i64, i64* %193, align 8
  %195 = icmp slt i64 %192, %194
  br i1 %195, label %173, label %._crit_edge41.loopexit

._crit_edge41.loopexit:                           ; preds = %189
  br label %._crit_edge41

._crit_edge41:                                    ; preds = %._crit_edge41.loopexit, %.preheader13
  %196 = add nsw i64 %r.034.lcssa, 1
  br label %.loopexit15

; <label>:197                                     ; preds = %.lr.ph35
  %198 = add nsw i64 %r.034, 1
  %199 = icmp ugt i64 %126, %198
  br i1 %199, label %.lr.ph35, label %.loopexit15.loopexit

.loopexit15.loopexit:                             ; preds = %197
  br label %.loopexit15

.loopexit15:                                      ; preds = %.loopexit15.loopexit, %._crit_edge41, %.preheader14
  %currIndex.3 = phi i64 [ %196, %._crit_edge41 ], [ %currIndex.245, %.preheader14 ], [ %currIndex.245, %.loopexit15.loopexit ]
  %200 = add nuw nsw i64 %t.042, 1
  %exitcond113 = icmp eq i64 %200, %6
  br i1 %exitcond113, label %.loopexit24.loopexit, label %.preheader14

.loopexit24.loopexit:                             ; preds = %.loopexit15
  %currIndex.3.lcssa = phi i64 [ %currIndex.3, %.loopexit15 ]
  br label %.loopexit24

.loopexit24:                                      ; preds = %.loopexit24.loopexit, %122
  %currIndex.4 = phi i64 [ %.currIndex.0, %122 ], [ %currIndex.3.lcssa, %.loopexit24.loopexit ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %201 = load i64, i64* %105, align 8
  %202 = icmp eq i64 %201, -1
  br i1 %202, label %.loopexit19, label %203

; <label>:203                                     ; preds = %.loopexit24
  %204 = load i64, i64* %106, align 8
  %205 = uitofp i64 %204 to double
  %206 = load i64*, i64** %108, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 %201
  %208 = load i64, i64* %207, align 8
  %209 = load i64*, i64** %110, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 %201
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, %208
  %213 = sitofp i64 %212 to double
  %214 = fmul double %213, 6.000000e-01
  %215 = fcmp ult double %205, %214
  br i1 %215, label %216, label %.preheader22

; <label>:216                                     ; preds = %203
  %217 = load i64, i64* %8, align 8
  %218 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %219 = mul nsw i64 %218, %6
  %220 = udiv i64 %217, %219
  %221 = icmp ule i64 %iter.0, %220
  %222 = icmp eq i64 %204, 0
  %or.cond4 = or i1 %222, %221
  br i1 %or.cond4, label %.loopexit21, label %.preheader22

.preheader22:                                     ; preds = %216, %203
  %223 = icmp sgt i64 %211, 0
  br i1 %223, label %.lr.ph65, label %.preheader20

.lr.ph65:                                         ; preds = %.preheader22
  %224 = mul nsw i64 %iter.0, %6
  %225 = add nsw i64 %224, %5
  br label %231

.preheader20.loopexit:                            ; preds = %.loopexit11
  %cutSetIndex.6.lcssa = phi i64 [ %cutSetIndex.6, %.loopexit11 ]
  %cliqueSize.1.lcssa = phi i64 [ %cliqueSize.1, %.loopexit11 ]
  %.pre123 = load i64*, i64** %108, align 8
  %.phi.trans.insert = getelementptr inbounds i64, i64* %.pre123, i64 %201
  %.pre124 = load i64, i64* %.phi.trans.insert, align 8
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.loopexit, %.preheader22
  %226 = phi i64 [ %208, %.preheader22 ], [ %.pre124, %.preheader20.loopexit ]
  %227 = phi i64* [ %206, %.preheader22 ], [ %.pre123, %.preheader20.loopexit ]
  %cutSetIndex.1.lcssa = phi i64 [ %cutSetIndex.0, %.preheader22 ], [ %cutSetIndex.6.lcssa, %.preheader20.loopexit ]
  %cliqueSize.0.lcssa = phi i64 [ 1, %.preheader22 ], [ %cliqueSize.1.lcssa, %.preheader20.loopexit ]
  %228 = icmp sgt i64 %226, 0
  br i1 %228, label %.lr.ph87, label %.loopexit21

.lr.ph87:                                         ; preds = %.preheader20
  %229 = mul nsw i64 %iter.0, %6
  %230 = add nsw i64 %229, %5
  br label %330

; <label>:231                                     ; preds = %.loopexit11, %.lr.ph65
  %232 = phi i64* [ %209, %.lr.ph65 ], [ %326, %.loopexit11 ]
  %cutSetIndex.164 = phi i64 [ %cutSetIndex.0, %.lr.ph65 ], [ %cutSetIndex.6, %.loopexit11 ]
  %cliqueSize.062 = phi i64 [ 1, %.lr.ph65 ], [ %cliqueSize.1, %.loopexit11 ]
  %j2.061 = phi i64 [ 0, %.lr.ph65 ], [ %325, %.loopexit11 ]
  %233 = load i64*, i64** %116, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 %201
  %235 = load i64, i64* %234, align 8
  %236 = add i64 %235, %j2.061
  %237 = load i64*, i64** %118, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 %236
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds i64, i64* %94, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %241, %225
  br i1 %242, label %.preheader12, label %.loopexit11

.preheader12:                                     ; preds = %231
  %243 = getelementptr inbounds i64, i64* %232, i64 %239
  %244 = load i64, i64* %243, align 8
  %245 = icmp sgt i64 %244, 0
  br i1 %245, label %.lr.ph50.preheader, label %._crit_edge51.thread

.lr.ph50.preheader:                               ; preds = %.preheader12
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %..lr.ph50_crit_edge, %.lr.ph50.preheader
  %246 = phi i64* [ %267, %..lr.ph50_crit_edge ], [ %232, %.lr.ph50.preheader ]
  %247 = phi i64* [ %.pre120, %..lr.ph50_crit_edge ], [ %237, %.lr.ph50.preheader ]
  %248 = phi i64* [ %.pre119, %..lr.ph50_crit_edge ], [ %233, %.lr.ph50.preheader ]
  %cutSetIndex.249 = phi i64 [ %cutSetIndex.3, %..lr.ph50_crit_edge ], [ %cutSetIndex.164, %.lr.ph50.preheader ]
  %clusterCounter.048 = phi i64 [ %clusterCounter.1, %..lr.ph50_crit_edge ], [ 0, %.lr.ph50.preheader ]
  %k.047 = phi i64 [ %268, %..lr.ph50_crit_edge ], [ 0, %.lr.ph50.preheader ]
  %cutSetCounter.046 = phi i64 [ %cutSetCounter.1, %..lr.ph50_crit_edge ], [ 0, %.lr.ph50.preheader ]
  %249 = getelementptr inbounds i64, i64* %248, i64 %239
  %250 = load i64, i64* %249, align 8
  %251 = add i64 %250, %k.047
  %252 = getelementptr inbounds i64, i64* %247, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds i64, i64* %94, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %255, %225
  br i1 %256, label %257, label %259

; <label>:257                                     ; preds = %.lr.ph50
  %258 = add i64 %clusterCounter.048, 1
  br label %266

; <label>:259                                     ; preds = %.lr.ph50
  %260 = add i64 %cutSetCounter.046, 1
  %261 = icmp eq i64 %255, -1
  br i1 %261, label %262, label %266

; <label>:262                                     ; preds = %259
  %263 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.249, i32 0
  store i64 %239, i64* %263, align 8
  %264 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.249, i32 1
  store i64 %253, i64* %264, align 8
  %265 = add i64 %cutSetIndex.249, 1
  %.pre121 = load i64*, i64** %110, align 8
  br label %266

; <label>:266                                     ; preds = %262, %259, %257
  %267 = phi i64* [ %246, %257 ], [ %.pre121, %262 ], [ %246, %259 ]
  %cutSetCounter.1 = phi i64 [ %cutSetCounter.046, %257 ], [ %260, %262 ], [ %260, %259 ]
  %clusterCounter.1 = phi i64 [ %258, %257 ], [ %clusterCounter.048, %262 ], [ %clusterCounter.048, %259 ]
  %cutSetIndex.3 = phi i64 [ %cutSetIndex.249, %257 ], [ %265, %262 ], [ %cutSetIndex.249, %259 ]
  %268 = add nuw nsw i64 %k.047, 1
  %269 = getelementptr inbounds i64, i64* %267, i64 %239
  %270 = load i64, i64* %269, align 8
  %271 = icmp slt i64 %268, %270
  br i1 %271, label %..lr.ph50_crit_edge, label %._crit_edge51

..lr.ph50_crit_edge:                              ; preds = %266
  %.pre119 = load i64*, i64** %116, align 8
  %.pre120 = load i64*, i64** %118, align 8
  br label %.lr.ph50

._crit_edge51:                                    ; preds = %266
  %.lcssa165 = phi i64 [ %270, %266 ]
  %cutSetIndex.3.lcssa = phi i64 [ %cutSetIndex.3, %266 ]
  %clusterCounter.1.lcssa = phi i64 [ %clusterCounter.1, %266 ]
  %cutSetCounter.1.lcssa = phi i64 [ %cutSetCounter.1, %266 ]
  %272 = icmp ult i64 %cutSetCounter.1.lcssa, %clusterCounter.1.lcssa
  br i1 %272, label %273, label %._crit_edge51.thread

; <label>:273                                     ; preds = %._crit_edge51
  %274 = load i64, i64* @SCALE, align 8
  %275 = icmp slt i64 %274, 9
  %276 = icmp ult i64 %clusterCounter.1.lcssa, 3
  %or.cond = and i1 %276, %275
  br i1 %or.cond, label %277, label %thread-pre-split

; <label>:277                                     ; preds = %273
  %278 = load i64*, i64** %108, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 %239
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %280, %.lcssa165
  %282 = add i64 %clusterCounter.1.lcssa, %cutSetCounter.1.lcssa
  %283 = icmp ugt i64 %281, %282
  br i1 %283, label %284, label %thread-pre-split

; <label>:284                                     ; preds = %277
  %285 = load i64, i64* %106, align 8
  %286 = add i64 %clusterCounter.1.lcssa, 2
  %287 = icmp ugt i64 %285, %286
  br i1 %287, label %._crit_edge51.thread, label %thread-pre-split

thread-pre-split:                                 ; preds = %284, %277, %273
  %288 = icmp sgt i64 %274, 9
  br i1 %288, label %289, label %298

; <label>:289                                     ; preds = %thread-pre-split
  %290 = uitofp i64 %clusterCounter.1.lcssa to double
  %291 = load i64, i64* %106, align 8
  %292 = uitofp i64 %291 to double
  %293 = fmul double %292, 5.000000e-01
  %294 = fcmp olt double %290, %293
  br i1 %294, label %._crit_edge51.thread, label %298

._crit_edge51.thread:                             ; preds = %289, %284, %._crit_edge51, %.preheader12
  store i64 -1, i64* %240, align 8
  %295 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.164, i32 0
  store i64 %201, i64* %295, align 8
  %296 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.164, i32 1
  store i64 %239, i64* %296, align 8
  %297 = add i64 %cutSetIndex.164, 1
  br label %.loopexit11

; <label>:298                                     ; preds = %289, %thread-pre-split
  %299 = add i64 %cliqueSize.062, 1
  %300 = load i64*, i64** %108, align 8
  %301 = getelementptr inbounds i64, i64* %300, i64 %239
  %302 = load i64, i64* %301, align 8
  %303 = icmp sgt i64 %302, 0
  br i1 %303, label %.lr.ph59.preheader, label %.loopexit11

.lr.ph59.preheader:                               ; preds = %298
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %319, %.lr.ph59.preheader
  %304 = phi i64* [ %320, %319 ], [ %300, %.lr.ph59.preheader ]
  %cutSetIndex.457 = phi i64 [ %cutSetIndex.5, %319 ], [ %cutSetIndex.3.lcssa, %.lr.ph59.preheader ]
  %k.156 = phi i64 [ %321, %319 ], [ 0, %.lr.ph59.preheader ]
  %305 = load i64*, i64** %112, align 8
  %306 = getelementptr inbounds i64, i64* %305, i64 %239
  %307 = load i64, i64* %306, align 8
  %308 = add i64 %307, %k.156
  %309 = load i64*, i64** %114, align 8
  %310 = getelementptr inbounds i64, i64* %309, i64 %308
  %311 = load i64, i64* %310, align 8
  %312 = getelementptr inbounds i64, i64* %94, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %313, -1
  br i1 %314, label %315, label %319

; <label>:315                                     ; preds = %.lr.ph59
  %316 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.457, i32 0
  store i64 %239, i64* %316, align 8
  %317 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.457, i32 1
  store i64 %311, i64* %317, align 8
  %318 = add i64 %cutSetIndex.457, 1
  %.pre122 = load i64*, i64** %108, align 8
  br label %319

; <label>:319                                     ; preds = %315, %.lr.ph59
  %320 = phi i64* [ %.pre122, %315 ], [ %304, %.lr.ph59 ]
  %cutSetIndex.5 = phi i64 [ %318, %315 ], [ %cutSetIndex.457, %.lr.ph59 ]
  %321 = add nuw nsw i64 %k.156, 1
  %322 = getelementptr inbounds i64, i64* %320, i64 %239
  %323 = load i64, i64* %322, align 8
  %324 = icmp slt i64 %321, %323
  br i1 %324, label %.lr.ph59, label %.loopexit11.loopexit

.loopexit11.loopexit:                             ; preds = %319
  %cutSetIndex.5.lcssa = phi i64 [ %cutSetIndex.5, %319 ]
  br label %.loopexit11

.loopexit11:                                      ; preds = %.loopexit11.loopexit, %298, %._crit_edge51.thread, %231
  %cliqueSize.1 = phi i64 [ %cliqueSize.062, %._crit_edge51.thread ], [ %cliqueSize.062, %231 ], [ %299, %298 ], [ %299, %.loopexit11.loopexit ]
  %cutSetIndex.6 = phi i64 [ %297, %._crit_edge51.thread ], [ %cutSetIndex.164, %231 ], [ %cutSetIndex.3.lcssa, %298 ], [ %cutSetIndex.5.lcssa, %.loopexit11.loopexit ]
  %325 = add nuw nsw i64 %j2.061, 1
  %326 = load i64*, i64** %110, align 8
  %327 = getelementptr inbounds i64, i64* %326, i64 %201
  %328 = load i64, i64* %327, align 8
  %329 = icmp slt i64 %325, %328
  br i1 %329, label %231, label %.preheader20.loopexit

; <label>:330                                     ; preds = %.loopexit, %.lr.ph87
  %331 = phi i64* [ %227, %.lr.ph87 ], [ %425, %.loopexit ]
  %cutSetIndex.786 = phi i64 [ %cutSetIndex.1.lcssa, %.lr.ph87 ], [ %cutSetIndex.12, %.loopexit ]
  %cliqueSize.284 = phi i64 [ %cliqueSize.0.lcssa, %.lr.ph87 ], [ %cliqueSize.3, %.loopexit ]
  %j2.183 = phi i64 [ 0, %.lr.ph87 ], [ %426, %.loopexit ]
  %332 = load i64*, i64** %112, align 8
  %333 = getelementptr inbounds i64, i64* %332, i64 %201
  %334 = load i64, i64* %333, align 8
  %335 = add i64 %334, %j2.183
  %336 = load i64*, i64** %114, align 8
  %337 = getelementptr inbounds i64, i64* %336, i64 %335
  %338 = load i64, i64* %337, align 8
  %339 = getelementptr inbounds i64, i64* %94, i64 %338
  %340 = load i64, i64* %339, align 8
  %341 = icmp eq i64 %340, %230
  br i1 %341, label %.preheader10, label %.loopexit

.preheader10:                                     ; preds = %330
  %342 = load i64*, i64** %110, align 8
  %343 = getelementptr inbounds i64, i64* %342, i64 %338
  %344 = load i64, i64* %343, align 8
  %345 = icmp sgt i64 %344, 0
  br i1 %345, label %.lr.ph72.preheader, label %._crit_edge73.thread

.lr.ph72.preheader:                               ; preds = %.preheader10
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %366, %.lr.ph72.preheader
  %346 = phi i64* [ %367, %366 ], [ %342, %.lr.ph72.preheader ]
  %cutSetIndex.871 = phi i64 [ %cutSetIndex.9, %366 ], [ %cutSetIndex.786, %.lr.ph72.preheader ]
  %k10.070 = phi i64 [ %368, %366 ], [ 0, %.lr.ph72.preheader ]
  %cutSetCounter8.069 = phi i64 [ %cutSetCounter8.1, %366 ], [ 0, %.lr.ph72.preheader ]
  %clusterCounter6.068 = phi i64 [ %clusterCounter6.1, %366 ], [ 0, %.lr.ph72.preheader ]
  %347 = load i64*, i64** %116, align 8
  %348 = getelementptr inbounds i64, i64* %347, i64 %338
  %349 = load i64, i64* %348, align 8
  %350 = add i64 %349, %k10.070
  %351 = load i64*, i64** %118, align 8
  %352 = getelementptr inbounds i64, i64* %351, i64 %350
  %353 = load i64, i64* %352, align 8
  %354 = getelementptr inbounds i64, i64* %94, i64 %353
  %355 = load i64, i64* %354, align 8
  %356 = icmp eq i64 %355, %230
  br i1 %356, label %357, label %359

; <label>:357                                     ; preds = %.lr.ph72
  %358 = add i64 %clusterCounter6.068, 1
  br label %366

; <label>:359                                     ; preds = %.lr.ph72
  %360 = add i64 %cutSetCounter8.069, 1
  %361 = icmp eq i64 %355, -1
  br i1 %361, label %362, label %366

; <label>:362                                     ; preds = %359
  %363 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.871, i32 0
  store i64 %338, i64* %363, align 8
  %364 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.871, i32 1
  store i64 %353, i64* %364, align 8
  %365 = add i64 %cutSetIndex.871, 1
  %.pre125 = load i64*, i64** %110, align 8
  br label %366

; <label>:366                                     ; preds = %362, %359, %357
  %367 = phi i64* [ %346, %357 ], [ %.pre125, %362 ], [ %346, %359 ]
  %clusterCounter6.1 = phi i64 [ %358, %357 ], [ %clusterCounter6.068, %362 ], [ %clusterCounter6.068, %359 ]
  %cutSetCounter8.1 = phi i64 [ %cutSetCounter8.069, %357 ], [ %360, %362 ], [ %360, %359 ]
  %cutSetIndex.9 = phi i64 [ %cutSetIndex.871, %357 ], [ %365, %362 ], [ %cutSetIndex.871, %359 ]
  %368 = add nuw nsw i64 %k10.070, 1
  %369 = getelementptr inbounds i64, i64* %367, i64 %338
  %370 = load i64, i64* %369, align 8
  %371 = icmp slt i64 %368, %370
  br i1 %371, label %.lr.ph72, label %._crit_edge73

._crit_edge73:                                    ; preds = %366
  %.lcssa166 = phi i64 [ %370, %366 ]
  %cutSetIndex.9.lcssa = phi i64 [ %cutSetIndex.9, %366 ]
  %cutSetCounter8.1.lcssa = phi i64 [ %cutSetCounter8.1, %366 ]
  %clusterCounter6.1.lcssa = phi i64 [ %clusterCounter6.1, %366 ]
  %372 = icmp ult i64 %cutSetCounter8.1.lcssa, %clusterCounter6.1.lcssa
  br i1 %372, label %373, label %._crit_edge73.thread

; <label>:373                                     ; preds = %._crit_edge73
  %374 = load i64, i64* @SCALE, align 8
  %375 = icmp slt i64 %374, 9
  %376 = icmp ult i64 %clusterCounter6.1.lcssa, 3
  %or.cond3 = and i1 %376, %375
  br i1 %or.cond3, label %377, label %thread-pre-split7

; <label>:377                                     ; preds = %373
  %378 = load i64*, i64** %108, align 8
  %379 = getelementptr inbounds i64, i64* %378, i64 %338
  %380 = load i64, i64* %379, align 8
  %381 = add nsw i64 %380, %.lcssa166
  %382 = add i64 %cutSetCounter8.1.lcssa, %clusterCounter6.1.lcssa
  %383 = icmp ugt i64 %381, %382
  br i1 %383, label %384, label %thread-pre-split7

; <label>:384                                     ; preds = %377
  %385 = load i64, i64* %106, align 8
  %386 = add i64 %clusterCounter6.1.lcssa, 2
  %387 = icmp ugt i64 %385, %386
  br i1 %387, label %._crit_edge73.thread, label %thread-pre-split7

thread-pre-split7:                                ; preds = %384, %377, %373
  %388 = icmp sgt i64 %374, 9
  br i1 %388, label %389, label %398

; <label>:389                                     ; preds = %thread-pre-split7
  %390 = uitofp i64 %clusterCounter6.1.lcssa to double
  %391 = load i64, i64* %106, align 8
  %392 = uitofp i64 %391 to double
  %393 = fmul double %392, 5.000000e-01
  %394 = fcmp olt double %390, %393
  br i1 %394, label %._crit_edge73.thread, label %398

._crit_edge73.thread:                             ; preds = %389, %384, %._crit_edge73, %.preheader10
  store i64 -1, i64* %339, align 8
  %395 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.786, i32 0
  store i64 %201, i64* %395, align 8
  %396 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.786, i32 1
  store i64 %338, i64* %396, align 8
  %397 = add i64 %cutSetIndex.786, 1
  %.pre127 = load i64*, i64** %108, align 8
  br label %.loopexit

; <label>:398                                     ; preds = %389, %thread-pre-split7
  %399 = add i64 %cliqueSize.284, 1
  %400 = load i64*, i64** %108, align 8
  %401 = getelementptr inbounds i64, i64* %400, i64 %338
  %402 = load i64, i64* %401, align 8
  %403 = icmp sgt i64 %402, 0
  br i1 %403, label %.lr.ph81.preheader, label %.loopexit

.lr.ph81.preheader:                               ; preds = %398
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %419, %.lr.ph81.preheader
  %404 = phi i64* [ %420, %419 ], [ %400, %.lr.ph81.preheader ]
  %cutSetIndex.1079 = phi i64 [ %cutSetIndex.11, %419 ], [ %cutSetIndex.9.lcssa, %.lr.ph81.preheader ]
  %k10.178 = phi i64 [ %421, %419 ], [ 0, %.lr.ph81.preheader ]
  %405 = load i64*, i64** %112, align 8
  %406 = getelementptr inbounds i64, i64* %405, i64 %338
  %407 = load i64, i64* %406, align 8
  %408 = add i64 %407, %k10.178
  %409 = load i64*, i64** %114, align 8
  %410 = getelementptr inbounds i64, i64* %409, i64 %408
  %411 = load i64, i64* %410, align 8
  %412 = getelementptr inbounds i64, i64* %94, i64 %411
  %413 = load i64, i64* %412, align 8
  %414 = icmp eq i64 %413, -1
  br i1 %414, label %415, label %419

; <label>:415                                     ; preds = %.lr.ph81
  %416 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.1079, i32 0
  store i64 %338, i64* %416, align 8
  %417 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %cutSetIndex.1079, i32 1
  store i64 %411, i64* %417, align 8
  %418 = add i64 %cutSetIndex.1079, 1
  %.pre126 = load i64*, i64** %108, align 8
  br label %419

; <label>:419                                     ; preds = %415, %.lr.ph81
  %420 = phi i64* [ %.pre126, %415 ], [ %404, %.lr.ph81 ]
  %cutSetIndex.11 = phi i64 [ %418, %415 ], [ %cutSetIndex.1079, %.lr.ph81 ]
  %421 = add nuw nsw i64 %k10.178, 1
  %422 = getelementptr inbounds i64, i64* %420, i64 %338
  %423 = load i64, i64* %422, align 8
  %424 = icmp slt i64 %421, %423
  br i1 %424, label %.lr.ph81, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %419
  %cutSetIndex.11.lcssa = phi i64 [ %cutSetIndex.11, %419 ]
  %.lcssa167 = phi i64* [ %420, %419 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %398, %._crit_edge73.thread, %330
  %425 = phi i64* [ %.pre127, %._crit_edge73.thread ], [ %331, %330 ], [ %400, %398 ], [ %.lcssa167, %.loopexit.loopexit ]
  %cliqueSize.3 = phi i64 [ %cliqueSize.284, %._crit_edge73.thread ], [ %cliqueSize.284, %330 ], [ %399, %398 ], [ %399, %.loopexit.loopexit ]
  %cutSetIndex.12 = phi i64 [ %397, %._crit_edge73.thread ], [ %cutSetIndex.786, %330 ], [ %cutSetIndex.9.lcssa, %398 ], [ %cutSetIndex.11.lcssa, %.loopexit.loopexit ]
  %426 = add nuw nsw i64 %j2.183, 1
  %427 = getelementptr inbounds i64, i64* %425, i64 %201
  %428 = load i64, i64* %427, align 8
  %429 = icmp slt i64 %426, %428
  br i1 %429, label %330, label %.loopexit21.loopexit

.loopexit21.loopexit:                             ; preds = %.loopexit
  %.lcssa168 = phi i64 [ %428, %.loopexit ]
  %cutSetIndex.12.lcssa = phi i64 [ %cutSetIndex.12, %.loopexit ]
  %cliqueSize.3.lcssa = phi i64 [ %cliqueSize.3, %.loopexit ]
  br label %.loopexit21

.loopexit21:                                      ; preds = %.loopexit21.loopexit, %.preheader20, %216
  %430 = phi i64 [ %208, %216 ], [ %226, %.preheader20 ], [ %.lcssa168, %.loopexit21.loopexit ]
  %cliqueSize.4 = phi i64 [ 1, %216 ], [ %cliqueSize.0.lcssa, %.preheader20 ], [ %cliqueSize.3.lcssa, %.loopexit21.loopexit ]
  %cutSetIndex.13 = phi i64 [ %cutSetIndex.0, %216 ], [ %cutSetIndex.1.lcssa, %.preheader20 ], [ %cutSetIndex.12.lcssa, %.loopexit21.loopexit ]
  %431 = load i64, i64* %106, align 8
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %.loopexit19, label %433

; <label>:433                                     ; preds = %.loopexit21
  %434 = uitofp i64 %431 to double
  %435 = load i64*, i64** %110, align 8
  %436 = getelementptr inbounds i64, i64* %435, i64 %201
  %437 = load i64, i64* %436, align 8
  %438 = add nsw i64 %437, %430
  %439 = sitofp i64 %438 to double
  %440 = fmul double %439, 6.000000e-01
  %441 = fcmp olt double %434, %440
  br i1 %441, label %442, label %.loopexit19

; <label>:442                                     ; preds = %433
  %443 = load i64, i64* %8, align 8
  %444 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %445 = mul nsw i64 %444, %6
  %446 = udiv i64 %443, %445
  %447 = icmp ugt i64 %iter.0, %446
  br i1 %447, label %.loopexit19, label %448

; <label>:448                                     ; preds = %442
  %449 = getelementptr inbounds i64, i64* %94, i64 %201
  store i64 -1, i64* %449, align 8
  %450 = load i64*, i64** %110, align 8
  %451 = getelementptr inbounds i64, i64* %450, i64 %201
  %452 = load i64, i64* %451, align 8
  %453 = icmp sgt i64 %452, 0
  br i1 %453, label %.lr.ph92, label %.preheader18

.lr.ph92:                                         ; preds = %448
  %454 = mul nsw i64 %iter.0, %6
  %455 = add nsw i64 %454, %5
  br label %462

.preheader18.loopexit:                            ; preds = %475
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.loopexit, %448
  %456 = load i64*, i64** %108, align 8
  %457 = getelementptr inbounds i64, i64* %456, i64 %201
  %458 = load i64, i64* %457, align 8
  %459 = icmp sgt i64 %458, 0
  br i1 %459, label %.lr.ph94, label %.loopexit19

.lr.ph94:                                         ; preds = %.preheader18
  %460 = mul nsw i64 %iter.0, %6
  %461 = add nsw i64 %460, %5
  br label %481

; <label>:462                                     ; preds = %475, %.lr.ph92
  %463 = phi i64* [ %450, %.lr.ph92 ], [ %476, %475 ]
  %j15.090 = phi i64 [ 0, %.lr.ph92 ], [ %477, %475 ]
  %464 = load i64*, i64** %116, align 8
  %465 = getelementptr inbounds i64, i64* %464, i64 %201
  %466 = load i64, i64* %465, align 8
  %467 = add i64 %466, %j15.090
  %468 = load i64*, i64** %118, align 8
  %469 = getelementptr inbounds i64, i64* %468, i64 %467
  %470 = load i64, i64* %469, align 8
  %471 = getelementptr inbounds i64, i64* %94, i64 %470
  %472 = load i64, i64* %471, align 8
  %473 = icmp eq i64 %472, %455
  br i1 %473, label %474, label %475

; <label>:474                                     ; preds = %462
  store i64 -1, i64* %471, align 8
  %.pre128 = load i64*, i64** %110, align 8
  br label %475

; <label>:475                                     ; preds = %474, %462
  %476 = phi i64* [ %463, %462 ], [ %.pre128, %474 ]
  %477 = add nuw nsw i64 %j15.090, 1
  %478 = getelementptr inbounds i64, i64* %476, i64 %201
  %479 = load i64, i64* %478, align 8
  %480 = icmp slt i64 %477, %479
  br i1 %480, label %462, label %.preheader18.loopexit

; <label>:481                                     ; preds = %494, %.lr.ph94
  %482 = phi i64* [ %456, %.lr.ph94 ], [ %495, %494 ]
  %j15.193 = phi i64 [ 0, %.lr.ph94 ], [ %496, %494 ]
  %483 = load i64*, i64** %112, align 8
  %484 = getelementptr inbounds i64, i64* %483, i64 %201
  %485 = load i64, i64* %484, align 8
  %486 = add i64 %485, %j15.193
  %487 = load i64*, i64** %114, align 8
  %488 = getelementptr inbounds i64, i64* %487, i64 %486
  %489 = load i64, i64* %488, align 8
  %490 = getelementptr inbounds i64, i64* %94, i64 %489
  %491 = load i64, i64* %490, align 8
  %492 = icmp eq i64 %491, %461
  br i1 %492, label %493, label %494

; <label>:493                                     ; preds = %481
  store i64 -1, i64* %490, align 8
  %.pre129 = load i64*, i64** %108, align 8
  br label %494

; <label>:494                                     ; preds = %493, %481
  %495 = phi i64* [ %482, %481 ], [ %.pre129, %493 ]
  %496 = add nuw nsw i64 %j15.193, 1
  %497 = getelementptr inbounds i64, i64* %495, i64 %201
  %498 = load i64, i64* %497, align 8
  %499 = icmp slt i64 %496, %498
  br i1 %499, label %481, label %.loopexit19.loopexit

.loopexit19.loopexit:                             ; preds = %494
  br label %.loopexit19

.loopexit19:                                      ; preds = %.loopexit19.loopexit, %.preheader18, %442, %433, %.loopexit21, %.loopexit24
  %cliqueSize.5 = phi i64 [ %cliqueSize.4, %442 ], [ %cliqueSize.4, %433 ], [ 0, %.loopexit24 ], [ 1, %.loopexit21 ], [ 0, %.preheader18 ], [ 0, %.loopexit19.loopexit ]
  %cutSetIndex.14 = phi i64 [ %cutSetIndex.13, %442 ], [ %cutSetIndex.13, %433 ], [ %cutSetIndex.0, %.loopexit24 ], [ %cutSetIndex.13, %.loopexit21 ], [ %cutSetIndex.13, %.preheader18 ], [ %cutSetIndex.13, %.loopexit19.loopexit ]
  br i1 %7, label %500, label %.critedge

; <label>:500                                     ; preds = %.loopexit19
  store i64 0, i64* @global_cliqueSize, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %501 = add nsw i64 %iter.0, 1
  store i64 %501, i64* @global_iter, align 8
  br label %.outer17.preheader

.critedge:                                        ; preds = %.loopexit19
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br label %.outer17.preheader

.outer17.preheader:                               ; preds = %.critedge, %500
  br label %.outer17

.outer17:                                         ; preds = %507, %.outer17.preheader
  %tries.0.ph = phi i32 [ %508, %507 ], [ 9, %.outer17.preheader ]
  %502 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %503 = icmp eq i64 %502, 0
  br i1 %503, label %._crit_edge96, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %.outer17
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95, %.lr.ph95.preheader
  call void @llvm.x86.sse2.pause() #6
  %504 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %._crit_edge96.loopexit, label %.lr.ph95

._crit_edge96.loopexit:                           ; preds = %.lr.ph95
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge96.loopexit, %.outer17
  %506 = icmp slt i32 %tries.0.ph, 2
  br i1 %506, label %519, label %507

; <label>:507                                     ; preds = %._crit_edge96
  %508 = add nsw i32 %tries.0.ph, -1
  %509 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 5, i64 0, i64 5, i64 4294967295) #6, !srcloc !20
  %510 = trunc i64 %509 to i32
  %511 = icmp eq i32 %510, -1
  br i1 %511, label %512, label %.outer17

; <label>:512                                     ; preds = %507
  %513 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %514 = icmp eq i64 %513, 0
  br i1 %514, label %516, label %515

; <label>:515                                     ; preds = %512
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !21
  br label %516

; <label>:516                                     ; preds = %515, %512
  %517 = load i64, i64* @global_cliqueSize, align 8
  %518 = add i64 %517, %cliqueSize.5
  store i64 %518, i64* @global_cliqueSize, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 5) #6, !srcloc !22
  br label %522

; <label>:519                                     ; preds = %._crit_edge96
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #6
  %520 = load i64, i64* @global_cliqueSize, align 8
  %521 = add i64 %520, %cliqueSize.5
  store i64 %521, i64* @global_cliqueSize, align 8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #6
  br label %522

; <label>:522                                     ; preds = %519, %516
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %523 = load i64, i64* @global_iter, align 8
  %524 = load i64, i64* @global_cliqueSize, align 8
  %525 = add i64 %524, %verticesVisited.0
  %526 = uitofp i64 %525 to double
  %527 = load i64, i64* %8, align 8
  %528 = uitofp i64 %527 to double
  %529 = fmul double %528, 9.500000e-01
  %530 = fcmp oge double %526, %529
  %531 = lshr i64 %527, 1
  %532 = icmp ugt i64 %523, %531
  %or.cond6 = or i1 %532, %530
  br i1 %or.cond6, label %533, label %119

; <label>:533                                     ; preds = %522, %119
  %cutSetIndex.15 = phi i64 [ %cutSetIndex.14, %522 ], [ %cutSetIndex.0, %119 ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %7, label %534, label %544

; <label>:534                                     ; preds = %533
  %535 = shl i64 %6, 3
  %536 = call noalias i8* @malloc(i64 %535) #6
  %537 = icmp eq i8* %536, null
  br i1 %537, label %538, label %539

; <label>:538                                     ; preds = %534
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9.46, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.38, i64 0, i64 0), i32 579, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #15
  unreachable

; <label>:539                                     ; preds = %534
  store i8* %536, i8** bitcast (i64** @global_edgeStartCounter to i8**), align 8
  %540 = call noalias i8* @malloc(i64 %535) #6
  %541 = icmp eq i8* %540, null
  br i1 %541, label %542, label %543

; <label>:542                                     ; preds = %539
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10.47, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.38, i64 0, i64 0), i32 582, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #15
  unreachable

; <label>:543                                     ; preds = %539
  store i8* %540, i8** bitcast (i64** @global_edgeEndCounter to i8**), align 8
  br label %544

; <label>:544                                     ; preds = %543, %533
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %545 = load i64*, i64** @global_edgeStartCounter, align 8
  %546 = load i64*, i64** @global_edgeEndCounter, align 8
  %547 = getelementptr inbounds i64, i64* %546, i64 %5
  store i64 %cutSetIndex.15, i64* %547, align 8
  %548 = getelementptr inbounds i64, i64* %545, i64 %5
  store i64 0, i64* %548, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %549 = icmp sgt i64 %6, 1
  %or.cond106 = and i1 %7, %549
  br i1 %or.cond106, label %.lr.ph33.preheader, label %.outer.preheader

.lr.ph33.preheader:                               ; preds = %544
  %550 = and i64 %6, 1
  %lcmp.mod = icmp eq i64 %550, 0
  br i1 %lcmp.mod, label %.lr.ph33.prol, label %.lr.ph33.preheader.split

.lr.ph33.prol:                                    ; preds = %.lr.ph33.preheader
  %551 = load i64, i64* %546, align 8
  %552 = getelementptr inbounds i64, i64* %546, i64 1
  %553 = load i64, i64* %552, align 8
  %554 = add i64 %553, %551
  store i64 %554, i64* %552, align 8
  %555 = getelementptr inbounds i64, i64* %545, i64 1
  store i64 %551, i64* %555, align 8
  br label %.lr.ph33.preheader.split

.lr.ph33.preheader.split:                         ; preds = %.lr.ph33.prol, %.lr.ph33.preheader
  %t20.032.unr = phi i64 [ 1, %.lr.ph33.preheader ], [ 2, %.lr.ph33.prol ]
  %556 = icmp eq i64 %6, 2
  br i1 %556, label %.outer.preheader.loopexit, label %.lr.ph33.preheader.split.split

.lr.ph33.preheader.split.split:                   ; preds = %.lr.ph33.preheader.split
  br label %.lr.ph33

.lr.ph33:                                         ; preds = %.lr.ph33, %.lr.ph33.preheader.split.split
  %t20.032 = phi i64 [ %t20.032.unr, %.lr.ph33.preheader.split.split ], [ %571, %.lr.ph33 ]
  %557 = add nsw i64 %t20.032, -1
  %558 = getelementptr inbounds i64, i64* %546, i64 %557
  %559 = load i64, i64* %558, align 8
  %560 = getelementptr inbounds i64, i64* %546, i64 %t20.032
  %561 = load i64, i64* %560, align 8
  %562 = add i64 %561, %559
  store i64 %562, i64* %560, align 8
  %563 = getelementptr inbounds i64, i64* %545, i64 %t20.032
  store i64 %559, i64* %563, align 8
  %564 = add nuw nsw i64 %t20.032, 1
  %565 = getelementptr inbounds i64, i64* %546, i64 %t20.032
  %566 = load i64, i64* %565, align 8
  %567 = getelementptr inbounds i64, i64* %546, i64 %564
  %568 = load i64, i64* %567, align 8
  %569 = add i64 %568, %566
  store i64 %569, i64* %567, align 8
  %570 = getelementptr inbounds i64, i64* %545, i64 %564
  store i64 %566, i64* %570, align 8
  %571 = add nsw i64 %t20.032, 2
  %exitcond.1 = icmp eq i64 %571, %6
  br i1 %exitcond.1, label %.outer.preheader.loopexit.unr-lcssa, label %.lr.ph33

.outer.preheader.loopexit.unr-lcssa:              ; preds = %.lr.ph33
  br label %.outer.preheader.loopexit

.outer.preheader.loopexit:                        ; preds = %.outer.preheader.loopexit.unr-lcssa, %.lr.ph33.preheader.split
  br label %.outer.preheader

.outer.preheader:                                 ; preds = %.outer.preheader.loopexit, %544
  br label %.outer

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %.lr.ph30
  call void @llvm.x86.sse2.pause() #6
  %572 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %573 = icmp eq i64 %572, 0
  br i1 %573, label %._crit_edge31.loopexit, label %.lr.ph30

._crit_edge31.loopexit:                           ; preds = %.lr.ph30
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %.outer, %._crit_edge31.loopexit
  %574 = icmp slt i32 %tries22.0.ph, 2
  br i1 %574, label %589, label %575

; <label>:575                                     ; preds = %._crit_edge31
  %576 = add nsw i32 %tries22.0.ph, -1
  %577 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 6, i64 0, i64 6, i64 4294967295) #6, !srcloc !20
  %578 = trunc i64 %577 to i32
  %579 = icmp eq i32 %578, -1
  br i1 %579, label %582, label %.outer

.outer:                                           ; preds = %575, %.outer.preheader
  %tries22.0.ph = phi i32 [ %576, %575 ], [ 9, %.outer.preheader ]
  %580 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %581 = icmp eq i64 %580, 0
  br i1 %581, label %._crit_edge31, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.outer
  br label %.lr.ph30

; <label>:582                                     ; preds = %575
  %583 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %584 = icmp eq i64 %583, 0
  br i1 %584, label %586, label %585

; <label>:585                                     ; preds = %582
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !21
  br label %586

; <label>:586                                     ; preds = %585, %582
  %587 = load i64, i64* @global_cutSetIndex, align 8
  %588 = add i64 %587, %cutSetIndex.15
  store i64 %588, i64* @global_cutSetIndex, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 6) #6, !srcloc !22
  br label %592

; <label>:589                                     ; preds = %._crit_edge31
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #6
  %590 = load i64, i64* @global_cutSetIndex, align 8
  %591 = add i64 %590, %cutSetIndex.15
  store i64 %591, i64* @global_cutSetIndex, align 8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #6
  br label %592

; <label>:592                                     ; preds = %589, %586
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %7, label %593, label %600

; <label>:593                                     ; preds = %592
  %594 = load i64, i64* @global_cutSetIndex, align 8
  %595 = mul i64 %594, 24
  %596 = call noalias i8* @malloc(i64 %595) #6
  %597 = icmp eq i8* %596, null
  br i1 %597, label %598, label %599

; <label>:598                                     ; preds = %593
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11.48, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.38, i64 0, i64 0), i32 619, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #15
  unreachable

; <label>:599                                     ; preds = %593
  store i8* %596, i8** bitcast (%struct.edge** @global_cutSet to i8**), align 8
  br label %600

; <label>:600                                     ; preds = %599, %592
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %601 = load %struct.edge*, %struct.edge** @global_cutSet, align 8
  %602 = load i64, i64* %548, align 8
  %603 = load i64, i64* %547, align 8
  %604 = icmp ult i64 %602, %603
  br i1 %604, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %600
  %605 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 0, i32 0
  %606 = load i64, i64* %605, align 8
  %607 = getelementptr inbounds %struct.edge, %struct.edge* %601, i64 %602, i32 0
  store i64 %606, i64* %607, align 8
  %608 = load i64, i64* %548, align 8
  %609 = sub i64 %602, %608
  %610 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %609, i32 1
  %611 = load i64, i64* %610, align 8
  %612 = getelementptr inbounds %struct.edge, %struct.edge* %601, i64 %602, i32 1
  store i64 %611, i64* %612, align 8
  %613 = add nsw i64 %602, 1
  %614 = load i64, i64* %547, align 8
  %615 = icmp ult i64 %613, %614
  br i1 %615, label %.lr.ph..lr.ph_crit_edge.preheader, label %._crit_edge

.lr.ph..lr.ph_crit_edge.preheader:                ; preds = %.lr.ph.preheader
  br label %.lr.ph..lr.ph_crit_edge

.lr.ph..lr.ph_crit_edge:                          ; preds = %.lr.ph..lr.ph_crit_edge, %.lr.ph..lr.ph_crit_edge.preheader
  %616 = phi i64 [ %626, %.lr.ph..lr.ph_crit_edge ], [ %613, %.lr.ph..lr.ph_crit_edge.preheader ]
  %.pre130 = load i64, i64* %548, align 8
  %617 = sub i64 %616, %.pre130
  %618 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %617, i32 0
  %619 = load i64, i64* %618, align 8
  %620 = getelementptr inbounds %struct.edge, %struct.edge* %601, i64 %616, i32 0
  store i64 %619, i64* %620, align 8
  %621 = load i64, i64* %548, align 8
  %622 = sub i64 %616, %621
  %623 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %622, i32 1
  %624 = load i64, i64* %623, align 8
  %625 = getelementptr inbounds %struct.edge, %struct.edge* %601, i64 %616, i32 1
  store i64 %624, i64* %625, align 8
  %626 = add nsw i64 %616, 1
  %627 = load i64, i64* %547, align 8
  %628 = icmp ult i64 %626, %627
  br i1 %628, label %.lr.ph..lr.ph_crit_edge, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph..lr.ph_crit_edge
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.preheader, %600
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %7, label %629, label %639

; <label>:629                                     ; preds = %._crit_edge
  %630 = bitcast i64* %545 to i8*
  call void @free(i8* %630) #6
  %631 = bitcast i64* %546 to i8*
  call void @free(i8* %631) #6
  %632 = bitcast %struct.edge* %95 to i8*
  call void @free(i8* %632) #6
  %633 = bitcast i64* %30 to i8*
  call void @free(i8* %633) #6
  %634 = bitcast i64* %31 to i8*
  call void @free(i8* %634) #6
  %635 = bitcast i64* %96 to i8*
  call void @free(i8* %635) #6
  %636 = bitcast i64* %97 to i8*
  call void @free(i8* %636) #6
  %637 = bitcast %struct.edge* %601 to i8*
  call void @free(i8* %637) #6
  %638 = bitcast i64* %94 to i8*
  call void @free(i8* %638) #6
  br label %639

; <label>:639                                     ; preds = %629, %._crit_edge
  %640 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %641 = trunc i64 %640 to i32
  %642 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %643 = load i32, i32* %642, align 4
  call void @SimRoiEnd(i32 %641, i32 %643) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @findSubGraphs0(i8* nocapture readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = bitcast i8* %argPtr to %struct.graph**
  %2 = load %struct.graph*, %struct.graph** %1, align 8
  %3 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %4 = bitcast i8* %3 to %struct.timeval**
  %5 = load %struct.timeval*, %struct.timeval** %4, align 8
  %6 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %7 = bitcast i8* %6 to %struct.timeval**
  %8 = load %struct.timeval*, %struct.timeval** %7, align 8
  %9 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %10 = bitcast i8* %9 to %struct.edge**
  %11 = load %struct.edge*, %struct.edge** %10, align 8
  %12 = getelementptr inbounds i8, i8* %argPtr, i64 32
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* %argPtr, i64 40
  %16 = bitcast i8* %15 to %struct.edge**
  %17 = load %struct.edge*, %struct.edge** %16, align 8
  %18 = getelementptr inbounds i8, i8* %argPtr, i64 48
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %22 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #6
  %23 = add nsw i64 %20, %14
  call void @createPartition(i64 0, i64 %23, i64 %21, i64 %22, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %24 = load i64, i64* %i_start, align 8
  %25 = load i64, i64* %i_stop, align 8
  %26 = icmp slt i64 %24, %25
  %27 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 0
  br i1 %26, label %.lr.ph30.preheader, label %._crit_edge31

.lr.ph30.preheader:                               ; preds = %0
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.loopexit4, %.lr.ph30.preheader
  %i.026 = phi i64 [ %57, %.loopexit4 ], [ %24, %.lr.ph30.preheader ]
  %28 = icmp slt i64 %i.026, %14
  br i1 %28, label %.preheader3, label %42

.preheader3:                                      ; preds = %.lr.ph30
  %29 = load i64, i64* %27, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %.loopexit4, label %.lr.ph25.preheader

.lr.ph25.preheader:                               ; preds = %.preheader3
  br label %.lr.ph25

.lr.ph25:                                         ; preds = %.lr.ph25, %.lr.ph25.preheader
  %31 = phi i64 [ %40, %.lr.ph25 ], [ %29, %.lr.ph25.preheader ]
  %j.024 = phi i64 [ %39, %.lr.ph25 ], [ 0, %.lr.ph25.preheader ]
  %32 = mul i64 %31, %i.026
  %33 = add i64 %32, %j.024
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 %33, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* %27, align 8
  %36 = mul i64 %35, %i.026
  %37 = add i64 %36, %j.024
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 %37, i32 1
  store i64 0, i64* %38, align 8
  %39 = add nuw nsw i64 %j.024, 1
  %40 = load i64, i64* %27, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %.lr.ph25, label %.loopexit4.loopexit

; <label>:42                                      ; preds = %.lr.ph30
  %43 = sub nsw i64 %i.026, %14
  %44 = load i64, i64* %27, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %.loopexit4, label %.lr.ph23.preheader

.lr.ph23.preheader:                               ; preds = %42
  br label %.lr.ph23

.lr.ph23:                                         ; preds = %.lr.ph23, %.lr.ph23.preheader
  %46 = phi i64 [ %55, %.lr.ph23 ], [ %44, %.lr.ph23.preheader ]
  %j1.021 = phi i64 [ %54, %.lr.ph23 ], [ 0, %.lr.ph23.preheader ]
  %47 = mul i64 %46, %43
  %48 = add i64 %47, %j1.021
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 %48, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* %27, align 8
  %51 = mul i64 %50, %43
  %52 = add i64 %51, %j1.021
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 %52, i32 1
  store i64 0, i64* %53, align 8
  %54 = add nuw nsw i64 %j1.021, 1
  %55 = load i64, i64* %27, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %.lr.ph23, label %.loopexit4.loopexit48

.loopexit4.loopexit:                              ; preds = %.lr.ph25
  br label %.loopexit4

.loopexit4.loopexit48:                            ; preds = %.lr.ph23
  br label %.loopexit4

.loopexit4:                                       ; preds = %.loopexit4.loopexit48, %.loopexit4.loopexit, %42, %.preheader3
  %57 = add nsw i64 %i.026, 1
  %58 = load i64, i64* %i_stop, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %.lr.ph30, label %._crit_edge31.loopexit

._crit_edge31.loopexit:                           ; preds = %.loopexit4
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %0
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %60 = load i64, i64* %27, align 8
  %61 = shl i64 %60, 3
  %62 = call noalias i8* @malloc(i64 %61) #6
  %63 = bitcast i8* %62 to i64*
  %64 = icmp eq i8* %62, null
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %._crit_edge31
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 128, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs0, i64 0, i64 0)) #15
  unreachable

; <label>:66                                      ; preds = %._crit_edge31
  %67 = load i64, i64* %i_start, align 8
  %68 = load i64, i64* %i_stop, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %.preheader.lr.ph, label %._crit_edge20

.preheader.lr.ph:                                 ; preds = %66
  %70 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 7
  %71 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 6
  %72 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 8
  br label %.preheader

.preheader:                                       ; preds = %.loopexit..preheader_crit_edge, %.preheader.lr.ph
  %73 = phi i64 [ %60, %.preheader.lr.ph ], [ %.pre, %.loopexit..preheader_crit_edge ]
  %i.117 = phi i64 [ %67, %.preheader.lr.ph ], [ %235, %.loopexit..preheader_crit_edge ]
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %75 = icmp ugt i64 %73, 1
  %umax = select i1 %75, i64 %73, i64 1
  %76 = shl i64 %umax, 3
  call void @llvm.memset.p0i8.i64(i8* nonnull %62, i8 0, i64 %76, i32 8, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa = phi i64 [ 0, %.preheader ], [ %73, %.lr.ph ]
  %77 = icmp slt i64 %i.117, %14
  br i1 %77, label %78, label %157

; <label>:78                                      ; preds = %._crit_edge
  %79 = getelementptr inbounds %struct.edge, %struct.edge* %11, i64 %i.117, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = mul i64 %.lcssa, %i.117
  %82 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 %81, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %27, align 8
  %84 = mul i64 %83, %i.117
  %85 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 %84, i32 1
  store i64 -1, i64* %85, align 8
  %86 = getelementptr inbounds %struct.edge, %struct.edge* %11, i64 %i.117, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %27, align 8
  %89 = mul i64 %88, %i.117
  %90 = add i64 %89, 1
  %91 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 %90, i32 0
  store i64 %87, i64* %91, align 8
  %92 = load i64, i64* %27, align 8
  %93 = mul i64 %92, %i.117
  %94 = add i64 %93, 1
  %95 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 %94, i32 1
  store i64 1, i64* %95, align 8
  %96 = load i64, i64* %27, align 8
  %97 = mul i64 %96, %i.117
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 %97, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i64, i64* %63, i64 %99
  store i64 1, i64* %100, align 8
  %101 = add i64 %97, 1
  %102 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 %101, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i64, i64* %63, i64 %103
  store i64 1, i64* %104, align 8
  %105 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %106 = icmp sgt i64 %105, 1
  %107 = icmp eq i64 %96, 2
  %or.cond43 = or i1 %106, %107
  br i1 %or.cond43, label %.critedge.preheader, label %.loopexit

.critedge.preheader:                              ; preds = %78
  br label %.critedge

.critedge:                                        ; preds = %148, %.critedge.preheader
  %verticesVisited.045 = phi i64 [ %verticesVisited.1.lcssa, %148 ], [ 2, %.critedge.preheader ]
  %currIndex.044 = phi i64 [ %149, %148 ], [ 1, %.critedge.preheader ]
  %108 = phi i64 [ %146, %148 ], [ %96, %.critedge.preheader ]
  %109 = mul i64 %108, %i.117
  %110 = add i64 %109, %currIndex.044
  %111 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 %110, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 1
  %114 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 %110, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %70, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 %115
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %71, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 %115
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, %118
  %123 = icmp sgt i64 %121, 0
  br i1 %123, label %.lr.ph14.preheader, label %._crit_edge15

.lr.ph14.preheader:                               ; preds = %.critedge
  br label %.lr.ph14

.lr.ph14:                                         ; preds = %140, %.lr.ph14.preheader
  %verticesVisited.113 = phi i64 [ %verticesVisited.2, %140 ], [ %verticesVisited.045, %.lr.ph14.preheader ]
  %j2.012 = phi i64 [ %141, %140 ], [ %118, %.lr.ph14.preheader ]
  %124 = load i64*, i64** %72, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 %j2.012
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i64, i64* %63, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %140

; <label>:130                                     ; preds = %.lr.ph14
  store i64 1, i64* %127, align 8
  %131 = load i64, i64* %27, align 8
  %132 = mul i64 %131, %i.117
  %133 = add i64 %132, %verticesVisited.113
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 %133, i32 0
  store i64 %126, i64* %134, align 8
  %135 = load i64, i64* %27, align 8
  %136 = mul i64 %135, %i.117
  %137 = add i64 %136, %verticesVisited.113
  %138 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 %137, i32 1
  store i64 %113, i64* %138, align 8
  %139 = add nsw i64 %verticesVisited.113, 1
  br label %140

; <label>:140                                     ; preds = %130, %.lr.ph14
  %verticesVisited.2 = phi i64 [ %139, %130 ], [ %verticesVisited.113, %.lr.ph14 ]
  %141 = add nsw i64 %j2.012, 1
  %142 = icmp slt i64 %141, %122
  br i1 %142, label %.lr.ph14, label %._crit_edge15.loopexit

._crit_edge15.loopexit:                           ; preds = %140
  %verticesVisited.2.lcssa = phi i64 [ %verticesVisited.2, %140 ]
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %._crit_edge15.loopexit, %.critedge
  %verticesVisited.1.lcssa = phi i64 [ %verticesVisited.045, %.critedge ], [ %verticesVisited.2.lcssa, %._crit_edge15.loopexit ]
  %143 = add nsw i64 %verticesVisited.1.lcssa, -1
  %144 = icmp slt i64 %currIndex.044, %143
  br i1 %144, label %145, label %.loopexit.loopexit

; <label>:145                                     ; preds = %._crit_edge15
  %146 = load i64, i64* %27, align 8
  %147 = icmp ult i64 %verticesVisited.1.lcssa, %146
  br i1 %147, label %148, label %.loopexit.loopexit

; <label>:148                                     ; preds = %145
  %149 = add nuw nsw i64 %currIndex.044, 1
  %150 = mul i64 %146, %i.117
  %151 = add i64 %150, %149
  %152 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 %151, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %155 = icmp slt i64 %153, %154
  %156 = icmp eq i64 %verticesVisited.1.lcssa, %146
  %or.cond = or i1 %155, %156
  br i1 %or.cond, label %.critedge, label %.loopexit.loopexit

; <label>:157                                     ; preds = %._crit_edge
  %158 = sub nsw i64 %i.117, %14
  %159 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %158, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = mul i64 %.lcssa, %158
  %162 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 %161, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load i64, i64* %27, align 8
  %164 = mul i64 %163, %158
  %165 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 %164, i32 1
  store i64 -1, i64* %165, align 8
  %166 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %158, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %27, align 8
  %169 = mul i64 %168, %158
  %170 = add i64 %169, 1
  %171 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 %170, i32 0
  store i64 %167, i64* %171, align 8
  %172 = load i64, i64* %27, align 8
  %173 = mul i64 %172, %158
  %174 = add i64 %173, 1
  %175 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 %174, i32 1
  store i64 1, i64* %175, align 8
  %176 = load i64, i64* %27, align 8
  %177 = mul i64 %176, %158
  %178 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 %177, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i64, i64* %63, i64 %179
  store i64 1, i64* %180, align 8
  %181 = add i64 %177, 1
  %182 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 %181, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i64, i64* %63, i64 %183
  store i64 1, i64* %184, align 8
  %185 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %186 = icmp sgt i64 %185, 1
  %187 = icmp eq i64 %176, 2
  %or.cond3640 = or i1 %186, %187
  br i1 %or.cond3640, label %.critedge1.preheader, label %.loopexit

.critedge1.preheader:                             ; preds = %157
  br label %.critedge1

.critedge1:                                       ; preds = %225, %.critedge1.preheader
  %currIndex6.042 = phi i64 [ %226, %225 ], [ 1, %.critedge1.preheader ]
  %verticesVisited5.041 = phi i64 [ %verticesVisited5.1.lcssa, %225 ], [ 2, %.critedge1.preheader ]
  %188 = phi i64 [ %227, %225 ], [ %176, %.critedge1.preheader ]
  %189 = mul i64 %188, %158
  %190 = add i64 %189, %currIndex6.042
  %191 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 %190, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 1
  %194 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 %190, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64*, i64** %70, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 %195
  %198 = load i64, i64* %197, align 8
  %199 = load i64*, i64** %71, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 %195
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, %198
  %203 = icmp sgt i64 %201, 0
  br i1 %203, label %.lr.ph9.preheader, label %._crit_edge10

.lr.ph9.preheader:                                ; preds = %.critedge1
  br label %.lr.ph9

.lr.ph9:                                          ; preds = %220, %.lr.ph9.preheader
  %j7.08 = phi i64 [ %221, %220 ], [ %198, %.lr.ph9.preheader ]
  %verticesVisited5.17 = phi i64 [ %verticesVisited5.2, %220 ], [ %verticesVisited5.041, %.lr.ph9.preheader ]
  %204 = load i64*, i64** %72, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 %j7.08
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds i64, i64* %63, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %220

; <label>:210                                     ; preds = %.lr.ph9
  store i64 1, i64* %207, align 8
  %211 = load i64, i64* %27, align 8
  %212 = mul i64 %211, %158
  %213 = add i64 %212, %verticesVisited5.17
  %214 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 %213, i32 0
  store i64 %206, i64* %214, align 8
  %215 = load i64, i64* %27, align 8
  %216 = mul i64 %215, %158
  %217 = add i64 %216, %verticesVisited5.17
  %218 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 %217, i32 1
  store i64 %193, i64* %218, align 8
  %219 = add nsw i64 %verticesVisited5.17, 1
  br label %220

; <label>:220                                     ; preds = %210, %.lr.ph9
  %verticesVisited5.2 = phi i64 [ %219, %210 ], [ %verticesVisited5.17, %.lr.ph9 ]
  %221 = add nsw i64 %j7.08, 1
  %222 = icmp slt i64 %221, %202
  br i1 %222, label %.lr.ph9, label %._crit_edge10.loopexit

._crit_edge10.loopexit:                           ; preds = %220
  %verticesVisited5.2.lcssa = phi i64 [ %verticesVisited5.2, %220 ]
  br label %._crit_edge10

._crit_edge10:                                    ; preds = %._crit_edge10.loopexit, %.critedge1
  %verticesVisited5.1.lcssa = phi i64 [ %verticesVisited5.041, %.critedge1 ], [ %verticesVisited5.2.lcssa, %._crit_edge10.loopexit ]
  %223 = add nsw i64 %verticesVisited5.1.lcssa, -1
  %224 = icmp slt i64 %currIndex6.042, %223
  br i1 %224, label %225, label %.loopexit.loopexit47

; <label>:225                                     ; preds = %._crit_edge10
  %226 = add nuw nsw i64 %currIndex6.042, 1
  %227 = load i64, i64* %27, align 8
  %228 = mul i64 %227, %158
  %229 = add i64 %228, %226
  %230 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 %229, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %233 = icmp slt i64 %231, %232
  %234 = icmp eq i64 %verticesVisited5.1.lcssa, %227
  %or.cond36 = or i1 %233, %234
  br i1 %or.cond36, label %.critedge1, label %.loopexit.loopexit47

.loopexit.loopexit:                               ; preds = %148, %145, %._crit_edge15
  br label %.loopexit

.loopexit.loopexit47:                             ; preds = %225, %._crit_edge10
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit47, %.loopexit.loopexit, %157, %78
  %235 = add nsw i64 %i.117, 1
  %236 = load i64, i64* %i_stop, align 8
  %237 = icmp slt i64 %235, %236
  br i1 %237, label %.loopexit..preheader_crit_edge, label %._crit_edge20.loopexit

.loopexit..preheader_crit_edge:                   ; preds = %.loopexit
  %.pre = load i64, i64* %27, align 8
  br label %.preheader

._crit_edge20.loopexit:                           ; preds = %.loopexit
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge20.loopexit, %66
  call void @free(i8* %62) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @findSubGraphs1(i8* nocapture readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = bitcast i8* %argPtr to %struct.graph**
  %2 = load %struct.graph*, %struct.graph** %1, align 8
  %3 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %4 = bitcast i8* %3 to %struct.l***
  %5 = load %struct.l**, %struct.l*** %4, align 8
  %6 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %7 = bitcast i8* %6 to %struct.l***
  %8 = load %struct.l**, %struct.l*** %7, align 8
  %9 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %10 = bitcast i8* %9 to %struct.edge**
  %11 = load %struct.edge*, %struct.edge** %10, align 8
  %12 = getelementptr inbounds i8, i8* %argPtr, i64 32
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* %argPtr, i64 40
  %16 = bitcast i8* %15 to %struct.edge**
  %17 = load %struct.edge*, %struct.edge** %16, align 8
  %18 = getelementptr inbounds i8, i8* %argPtr, i64 48
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %22 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #6
  %23 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = tail call noalias i8* @malloc(i64 %24) #6
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 257, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #15
  unreachable

; <label>:28                                      ; preds = %0
  %29 = add nsw i64 %20, %14
  call void @createPartition(i64 0, i64 %29, i64 %21, i64 %22, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %30 = load i64, i64* %i_start, align 8
  %31 = load i64, i64* %i_stop, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %.preheader.lr.ph, label %._crit_edge21

.preheader.lr.ph:                                 ; preds = %28
  %33 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 7
  %34 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 6
  %35 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 8
  br label %.preheader

.preheader:                                       ; preds = %230, %.preheader.lr.ph
  %i.020 = phi i64 [ %30, %.preheader.lr.ph ], [ %231, %230 ]
  %36 = load i64, i64* %23, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %38 = icmp ugt i64 %36, 1
  %umax = select i1 %38, i64 %36, i64 1
  call void @llvm.memset.p0i8.i64(i8* nonnull %25, i8 117, i64 %umax, i32 1, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %39 = icmp slt i64 %i.020, %14
  br i1 %39, label %40, label %135

; <label>:40                                      ; preds = %._crit_edge
  %41 = call noalias i8* @malloc(i64 24) #6
  %42 = getelementptr inbounds %struct.l*, %struct.l** %5, i64 %i.020
  %43 = bitcast %struct.l** %42 to i8**
  store i8* %41, i8** %43, align 8
  %44 = icmp eq i8* %41, null
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %40
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.51, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 279, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #15
  unreachable

; <label>:46                                      ; preds = %40
  %47 = getelementptr inbounds %struct.edge, %struct.edge* %11, i64 %i.020, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = bitcast i8* %41 to i64*
  store i64 %48, i64* %49, align 8
  %50 = load %struct.l*, %struct.l** %42, align 8
  %51 = getelementptr inbounds %struct.l, %struct.l* %50, i64 0, i32 1
  store i16 0, i16* %51, align 8
  %52 = load %struct.l*, %struct.l** %42, align 8
  %53 = getelementptr inbounds %struct.l, %struct.l* %52, i64 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i8, i8* %25, i64 %54
  store i8 118, i8* %55, align 1
  %56 = call noalias i8* @malloc(i64 24) #6
  %57 = load %struct.l*, %struct.l** %42, align 8
  %58 = getelementptr inbounds %struct.l, %struct.l* %57, i64 0, i32 2
  %59 = bitcast %struct.l** %58 to i8**
  store i8* %56, i8** %59, align 8
  %60 = load %struct.l*, %struct.l** %42, align 8
  %61 = getelementptr inbounds %struct.l, %struct.l* %60, i64 0, i32 2
  %62 = bitcast %struct.l** %61 to i8**
  %63 = load i8*, i8** %62, align 8
  call void @free(i8* %63) #6
  %64 = getelementptr inbounds %struct.edge, %struct.edge* %11, i64 %i.020, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.l*, %struct.l** %42, align 8
  %67 = getelementptr inbounds %struct.l, %struct.l* %66, i64 0, i32 2
  %68 = load %struct.l*, %struct.l** %67, align 8
  %69 = getelementptr inbounds %struct.l, %struct.l* %68, i64 0, i32 0
  store i64 %65, i64* %69, align 8
  %70 = load %struct.l*, %struct.l** %42, align 8
  %71 = getelementptr inbounds %struct.l, %struct.l* %70, i64 0, i32 2
  %72 = load %struct.l*, %struct.l** %71, align 8
  %73 = getelementptr inbounds %struct.l, %struct.l* %72, i64 0, i32 1
  store i16 1, i16* %73, align 8
  %74 = load %struct.l*, %struct.l** %42, align 8
  %75 = getelementptr inbounds %struct.l, %struct.l* %74, i64 0, i32 2
  %76 = load %struct.l*, %struct.l** %75, align 8
  %77 = getelementptr inbounds %struct.l, %struct.l* %76, i64 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i8, i8* %25, i64 %78
  store i8 118, i8* %79, align 1
  br label %80

; <label>:80                                      ; preds = %129, %46
  %verticesVisited.0 = phi i64 [ 2, %46 ], [ %verticesVisited.1.lcssa, %129 ]
  %currIndex.0 = phi i64 [ 1, %46 ], [ %130, %129 ]
  %startV.0 = phi %struct.l* [ %76, %46 ], [ %132, %129 ]
  %currV.0 = phi %struct.l* [ %76, %46 ], [ %currV.1.lcssa, %129 ]
  %81 = getelementptr inbounds %struct.l, %struct.l* %startV.0, i64 0, i32 1
  %82 = load i16, i16* %81, align 8
  %83 = sext i16 %82 to i64
  %84 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %.critedge, label %86

; <label>:86                                      ; preds = %80
  %87 = load i64, i64* %23, align 8
  %88 = icmp eq i64 %verticesVisited.0, %87
  br i1 %88, label %.critedge, label %133

.critedge:                                        ; preds = %86, %80
  %89 = add i16 %82, 1
  %90 = getelementptr inbounds %struct.l, %struct.l* %startV.0, i64 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %33, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 %91
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %34, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 %91
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, %94
  %99 = icmp sgt i64 %97, 0
  br i1 %99, label %.lr.ph16.preheader, label %._crit_edge17

.lr.ph16.preheader:                               ; preds = %.critedge
  br label %.lr.ph16

.lr.ph16:                                         ; preds = %121, %.lr.ph16.preheader
  %currV.115 = phi %struct.l* [ %currV.2, %121 ], [ %currV.0, %.lr.ph16.preheader ]
  %j.014 = phi i64 [ %122, %121 ], [ %94, %.lr.ph16.preheader ]
  %verticesVisited.113 = phi i64 [ %verticesVisited.2, %121 ], [ %verticesVisited.0, %.lr.ph16.preheader ]
  %100 = load i64*, i64** %35, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 %j.014
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i8, i8* %25, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = icmp eq i8 %104, 117
  br i1 %105, label %106, label %121

; <label>:106                                     ; preds = %.lr.ph16
  store i8 118, i8* %103, align 1
  %107 = call noalias i8* @malloc(i64 24) #6
  %108 = getelementptr inbounds %struct.l, %struct.l* %currV.115, i64 0, i32 2
  %109 = bitcast %struct.l** %108 to i8**
  store i8* %107, i8** %109, align 8
  %110 = icmp eq i8* %107, null
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %106
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.52, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 308, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #15
  unreachable

; <label>:112                                     ; preds = %106
  %113 = load i64*, i64** %35, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 %j.014
  %115 = load i64, i64* %114, align 8
  %116 = bitcast i8* %107 to i64*
  store i64 %115, i64* %116, align 8
  %117 = load %struct.l*, %struct.l** %108, align 8
  %118 = getelementptr inbounds %struct.l, %struct.l* %117, i64 0, i32 1
  store i16 %89, i16* %118, align 8
  %119 = add nsw i64 %verticesVisited.113, 1
  %120 = load %struct.l*, %struct.l** %108, align 8
  br label %121

; <label>:121                                     ; preds = %112, %.lr.ph16
  %verticesVisited.2 = phi i64 [ %119, %112 ], [ %verticesVisited.113, %.lr.ph16 ]
  %currV.2 = phi %struct.l* [ %120, %112 ], [ %currV.115, %.lr.ph16 ]
  %122 = add nsw i64 %j.014, 1
  %123 = icmp slt i64 %122, %98
  br i1 %123, label %.lr.ph16, label %._crit_edge17.loopexit

._crit_edge17.loopexit:                           ; preds = %121
  %currV.2.lcssa = phi %struct.l* [ %currV.2, %121 ]
  %verticesVisited.2.lcssa = phi i64 [ %verticesVisited.2, %121 ]
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit, %.critedge
  %currV.1.lcssa = phi %struct.l* [ %currV.0, %.critedge ], [ %currV.2.lcssa, %._crit_edge17.loopexit ]
  %verticesVisited.1.lcssa = phi i64 [ %verticesVisited.0, %.critedge ], [ %verticesVisited.2.lcssa, %._crit_edge17.loopexit ]
  %124 = add nsw i64 %verticesVisited.1.lcssa, -1
  %125 = icmp slt i64 %currIndex.0, %124
  br i1 %125, label %126, label %133

; <label>:126                                     ; preds = %._crit_edge17
  %127 = load i64, i64* %23, align 8
  %128 = icmp ult i64 %verticesVisited.1.lcssa, %127
  br i1 %128, label %129, label %133

; <label>:129                                     ; preds = %126
  %130 = add nuw nsw i64 %currIndex.0, 1
  %131 = getelementptr inbounds %struct.l, %struct.l* %startV.0, i64 0, i32 2
  %132 = load %struct.l*, %struct.l** %131, align 8
  br label %80

; <label>:133                                     ; preds = %126, %._crit_edge17, %86
  %currV.3 = phi %struct.l* [ %currV.1.lcssa, %126 ], [ %currV.1.lcssa, %._crit_edge17 ], [ %currV.0, %86 ]
  %134 = getelementptr inbounds %struct.l, %struct.l* %currV.3, i64 0, i32 2
  store %struct.l* null, %struct.l** %134, align 8
  br label %230

; <label>:135                                     ; preds = %._crit_edge
  %136 = sub nsw i64 %i.020, %14
  %137 = call noalias i8* @malloc(i64 24) #6
  %138 = getelementptr inbounds %struct.l*, %struct.l** %8, i64 %136
  %139 = bitcast %struct.l** %138 to i8**
  store i8* %137, i8** %139, align 8
  %140 = icmp eq i8* %137, null
  br i1 %140, label %141, label %142

; <label>:141                                     ; preds = %135
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.53, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 330, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #15
  unreachable

; <label>:142                                     ; preds = %135
  %143 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %136, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = bitcast i8* %137 to i64*
  store i64 %144, i64* %145, align 8
  %146 = load %struct.l*, %struct.l** %138, align 8
  %147 = getelementptr inbounds %struct.l, %struct.l* %146, i64 0, i32 1
  store i16 0, i16* %147, align 8
  %148 = load %struct.l*, %struct.l** %138, align 8
  %149 = getelementptr inbounds %struct.l, %struct.l* %148, i64 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i8, i8* %25, i64 %150
  store i8 118, i8* %151, align 1
  %152 = call noalias i8* @malloc(i64 24) #6
  %153 = load %struct.l*, %struct.l** %138, align 8
  %154 = getelementptr inbounds %struct.l, %struct.l* %153, i64 0, i32 2
  %155 = bitcast %struct.l** %154 to i8**
  store i8* %152, i8** %155, align 8
  %156 = load %struct.l*, %struct.l** %138, align 8
  %157 = getelementptr inbounds %struct.l, %struct.l* %156, i64 0, i32 2
  %158 = load %struct.l*, %struct.l** %157, align 8
  %159 = icmp eq %struct.l* %158, null
  br i1 %159, label %160, label %161

; <label>:160                                     ; preds = %142
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.54, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 336, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #15
  unreachable

; <label>:161                                     ; preds = %142
  %162 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %136, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.l, %struct.l* %158, i64 0, i32 0
  store i64 %163, i64* %164, align 8
  %165 = load %struct.l*, %struct.l** %138, align 8
  %166 = getelementptr inbounds %struct.l, %struct.l* %165, i64 0, i32 2
  %167 = load %struct.l*, %struct.l** %166, align 8
  %168 = getelementptr inbounds %struct.l, %struct.l* %167, i64 0, i32 1
  store i16 1, i16* %168, align 8
  %169 = load %struct.l*, %struct.l** %138, align 8
  %170 = getelementptr inbounds %struct.l, %struct.l* %169, i64 0, i32 2
  %171 = load %struct.l*, %struct.l** %170, align 8
  %172 = getelementptr inbounds %struct.l, %struct.l* %171, i64 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds i8, i8* %25, i64 %173
  store i8 118, i8* %174, align 1
  br label %175

; <label>:175                                     ; preds = %224, %161
  %currV1.0 = phi %struct.l* [ %171, %161 ], [ %currV1.1.lcssa, %224 ]
  %startV2.0 = phi %struct.l* [ %171, %161 ], [ %227, %224 ]
  %verticesVisited4.0 = phi i64 [ 2, %161 ], [ %verticesVisited4.1.lcssa, %224 ]
  %currIndex5.0 = phi i64 [ 1, %161 ], [ %225, %224 ]
  %176 = getelementptr inbounds %struct.l, %struct.l* %startV2.0, i64 0, i32 1
  %177 = load i16, i16* %176, align 8
  %178 = sext i16 %177 to i64
  %179 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %180 = icmp slt i64 %178, %179
  br i1 %180, label %.critedge1, label %181

; <label>:181                                     ; preds = %175
  %182 = load i64, i64* %23, align 8
  %183 = icmp eq i64 %verticesVisited4.0, %182
  br i1 %183, label %.critedge1, label %228

.critedge1:                                       ; preds = %181, %175
  %184 = add i16 %177, 1
  %185 = getelementptr inbounds %struct.l, %struct.l* %startV2.0, i64 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64*, i64** %33, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 %186
  %189 = load i64, i64* %188, align 8
  %190 = load i64*, i64** %34, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 %186
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, %189
  %194 = icmp sgt i64 %192, 0
  br i1 %194, label %.lr.ph10.preheader, label %._crit_edge11

.lr.ph10.preheader:                               ; preds = %.critedge1
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %216, %.lr.ph10.preheader
  %j6.09 = phi i64 [ %217, %216 ], [ %189, %.lr.ph10.preheader ]
  %verticesVisited4.18 = phi i64 [ %verticesVisited4.2, %216 ], [ %verticesVisited4.0, %.lr.ph10.preheader ]
  %currV1.17 = phi %struct.l* [ %currV1.2, %216 ], [ %currV1.0, %.lr.ph10.preheader ]
  %195 = load i64*, i64** %35, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 %j6.09
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i8, i8* %25, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = icmp eq i8 %199, 117
  br i1 %200, label %201, label %216

; <label>:201                                     ; preds = %.lr.ph10
  store i8 118, i8* %198, align 1
  %202 = call noalias i8* @malloc(i64 24) #6
  %203 = getelementptr inbounds %struct.l, %struct.l* %currV1.17, i64 0, i32 2
  %204 = bitcast %struct.l** %203 to i8**
  store i8* %202, i8** %204, align 8
  %205 = icmp eq i8* %202, null
  br i1 %205, label %206, label %207

; <label>:206                                     ; preds = %201
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.52, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 360, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #15
  unreachable

; <label>:207                                     ; preds = %201
  %208 = load i64*, i64** %35, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 %j6.09
  %210 = load i64, i64* %209, align 8
  %211 = bitcast i8* %202 to i64*
  store i64 %210, i64* %211, align 8
  %212 = load %struct.l*, %struct.l** %203, align 8
  %213 = getelementptr inbounds %struct.l, %struct.l* %212, i64 0, i32 1
  store i16 %184, i16* %213, align 8
  %214 = add nsw i64 %verticesVisited4.18, 1
  %215 = load %struct.l*, %struct.l** %203, align 8
  br label %216

; <label>:216                                     ; preds = %207, %.lr.ph10
  %currV1.2 = phi %struct.l* [ %215, %207 ], [ %currV1.17, %.lr.ph10 ]
  %verticesVisited4.2 = phi i64 [ %214, %207 ], [ %verticesVisited4.18, %.lr.ph10 ]
  %217 = add nsw i64 %j6.09, 1
  %218 = icmp slt i64 %217, %193
  br i1 %218, label %.lr.ph10, label %._crit_edge11.loopexit

._crit_edge11.loopexit:                           ; preds = %216
  %verticesVisited4.2.lcssa = phi i64 [ %verticesVisited4.2, %216 ]
  %currV1.2.lcssa = phi %struct.l* [ %currV1.2, %216 ]
  br label %._crit_edge11

._crit_edge11:                                    ; preds = %._crit_edge11.loopexit, %.critedge1
  %verticesVisited4.1.lcssa = phi i64 [ %verticesVisited4.0, %.critedge1 ], [ %verticesVisited4.2.lcssa, %._crit_edge11.loopexit ]
  %currV1.1.lcssa = phi %struct.l* [ %currV1.0, %.critedge1 ], [ %currV1.2.lcssa, %._crit_edge11.loopexit ]
  %219 = add nsw i64 %verticesVisited4.1.lcssa, -1
  %220 = icmp slt i64 %currIndex5.0, %219
  br i1 %220, label %221, label %228

; <label>:221                                     ; preds = %._crit_edge11
  %222 = load i64, i64* %23, align 8
  %223 = icmp ult i64 %verticesVisited4.1.lcssa, %222
  br i1 %223, label %224, label %228

; <label>:224                                     ; preds = %221
  %225 = add nuw nsw i64 %currIndex5.0, 1
  %226 = getelementptr inbounds %struct.l, %struct.l* %startV2.0, i64 0, i32 2
  %227 = load %struct.l*, %struct.l** %226, align 8
  br label %175

; <label>:228                                     ; preds = %221, %._crit_edge11, %181
  %currV1.3 = phi %struct.l* [ %currV1.1.lcssa, %221 ], [ %currV1.1.lcssa, %._crit_edge11 ], [ %currV1.0, %181 ]
  %229 = getelementptr inbounds %struct.l, %struct.l* %currV1.3, i64 0, i32 2
  store %struct.l* null, %struct.l** %229, align 8
  br label %230

; <label>:230                                     ; preds = %228, %133
  %231 = add nsw i64 %i.020, 1
  %232 = load i64, i64* %i_stop, align 8
  %233 = icmp slt i64 %231, %232
  br i1 %233, label %.preheader, label %._crit_edge21.loopexit

._crit_edge21.loopexit:                           ; preds = %230
  br label %._crit_edge21

._crit_edge21:                                    ; preds = %._crit_edge21.loopexit, %28
  call void @free(i8* %25) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @findSubGraphs2(i8* nocapture readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = bitcast i8* %argPtr to %struct.graph**
  %2 = load %struct.graph*, %struct.graph** %1, align 8
  %3 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %4 = bitcast i8* %3 to %struct.Vd**
  %5 = load %struct.Vd*, %struct.Vd** %4, align 8
  %6 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %7 = bitcast i8* %6 to %struct.Vd**
  %8 = load %struct.Vd*, %struct.Vd** %7, align 8
  %9 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %10 = bitcast i8* %9 to %struct.edge**
  %11 = load %struct.edge*, %struct.edge** %10, align 8
  %12 = getelementptr inbounds i8, i8* %argPtr, i64 32
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* %argPtr, i64 40
  %16 = bitcast i8* %15 to %struct.edge**
  %17 = load %struct.edge*, %struct.edge** %16, align 8
  %18 = getelementptr inbounds i8, i8* %argPtr, i64 48
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %22 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #6
  %23 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %24 = mul nsw i64 %23, 5
  %25 = add nsw i64 %20, %14
  call void @createPartition(i64 0, i64 %25, i64 %21, i64 %22, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %26 = load i64, i64* %i_start, align 8
  %27 = load i64, i64* %i_stop, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %.lr.ph27, label %._crit_edge28

.lr.ph27:                                         ; preds = %0
  %29 = mul i64 %23, 80
  %30 = icmp sgt i64 %23, 0
  br i1 %30, label %.lr.ph27.split.us.preheader, label %.lr.ph27.split.preheader

.lr.ph27.split.preheader:                         ; preds = %.lr.ph27
  br label %.lr.ph27.split

.lr.ph27.split.us.preheader:                      ; preds = %.lr.ph27
  %31 = mul i64 %23, 5
  %32 = add i64 %31, -1
  %33 = add i64 %31, -2
  %34 = icmp sgt i64 %24, 1
  %xtraiter74 = and i64 %32, 1
  %lcmp.mod75 = icmp eq i64 %xtraiter74, 0
  %35 = icmp eq i64 %33, 0
  %36 = icmp sgt i64 %24, 1
  %xtraiter = and i64 %32, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  %37 = icmp eq i64 %33, 0
  br label %.lr.ph27.split.us

.lr.ph27.split.us:                                ; preds = %.loopexit6.us, %.lr.ph27.split.us.preheader
  %i.025.us = phi i64 [ %106, %.loopexit6.us ], [ %26, %.lr.ph27.split.us.preheader ]
  %38 = icmp slt i64 %i.025.us, %14
  br i1 %38, label %79, label %39

; <label>:39                                      ; preds = %.lr.ph27.split.us
  %40 = sub nsw i64 %i.025.us, %14
  %41 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %40, i32 0
  store i64 1, i64* %41, align 8
  %42 = call noalias i8* @malloc(i64 240) #6
  %43 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %40, i32 1
  %44 = bitcast i64** %43 to i8**
  store i8* %42, i8** %44, align 8
  %45 = icmp eq i8* %42, null
  br i1 %45, label %.us-lcssa.us.loopexit, label %46

; <label>:46                                      ; preds = %39
  %47 = bitcast i8* %42 to i64*
  store i64 0, i64* %47, align 8
  %48 = call noalias i8* @malloc(i64 240) #6
  %49 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %40, i32 2
  %50 = bitcast %struct.timeval*** %49 to i8**
  store i8* %48, i8** %50, align 8
  %51 = icmp eq i8* %48, null
  br i1 %51, label %.us-lcssa29.us.loopexit, label %52

; <label>:52                                      ; preds = %46
  %53 = call noalias i8* @malloc(i64 %29) #6
  %54 = bitcast %struct.timeval*** %49 to i8***
  %55 = load i8**, i8*** %54, align 8
  store i8* %53, i8** %55, align 8
  %56 = load %struct.timeval**, %struct.timeval*** %49, align 8
  %57 = load %struct.timeval*, %struct.timeval** %56, align 8
  %58 = icmp eq %struct.timeval* %57, null
  br i1 %58, label %.us-lcssa30.us.loopexit, label %.lr.ph22.us.preheader

.lr.ph22.us.preheader:                            ; preds = %52
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %57, i64 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.timeval**, %struct.timeval*** %49, align 8
  %61 = load %struct.timeval*, %struct.timeval** %60, align 8
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %61, i64 0, i32 1
  store i64 0, i64* %62, align 8
  br i1 %36, label %.lr.ph22.us..lr.ph22.us_crit_edge.preheader, label %.loopexit6.us

.lr.ph22.us..lr.ph22.us_crit_edge.preheader:      ; preds = %.lr.ph22.us.preheader
  br i1 %lcmp.mod, label %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split, label %.lr.ph22.us..lr.ph22.us_crit_edge.prol

.lr.ph22.us..lr.ph22.us_crit_edge.prol:           ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge.preheader
  %.pre.prol = load %struct.timeval**, %struct.timeval*** %49, align 8
  %.pre43.prol = load %struct.timeval*, %struct.timeval** %.pre.prol, align 8
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %.pre43.prol, i64 1, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.timeval**, %struct.timeval*** %49, align 8
  %65 = load %struct.timeval*, %struct.timeval** %64, align 8
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %65, i64 1, i32 1
  store i64 0, i64* %66, align 8
  br label %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split

.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split: ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge.prol, %.lr.ph22.us..lr.ph22.us_crit_edge.preheader
  %.unr = phi i64 [ 1, %.lr.ph22.us..lr.ph22.us_crit_edge.preheader ], [ 2, %.lr.ph22.us..lr.ph22.us_crit_edge.prol ]
  br i1 %37, label %.loopexit6.us.loopexit66, label %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split.split

.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split.split: ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split
  br label %.lr.ph22.us..lr.ph22.us_crit_edge

.lr.ph22.us..lr.ph22.us_crit_edge:                ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge, %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split.split
  %67 = phi i64 [ %.unr, %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split.split ], [ %77, %.lr.ph22.us..lr.ph22.us_crit_edge ]
  %.pre = load %struct.timeval**, %struct.timeval*** %49, align 8
  %.pre43 = load %struct.timeval*, %struct.timeval** %.pre, align 8
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %.pre43, i64 %67, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.timeval**, %struct.timeval*** %49, align 8
  %70 = load %struct.timeval*, %struct.timeval** %69, align 8
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %70, i64 %67, i32 1
  store i64 0, i64* %71, align 8
  %72 = add nuw nsw i64 %67, 1
  %.pre.1 = load %struct.timeval**, %struct.timeval*** %49, align 8
  %.pre43.1 = load %struct.timeval*, %struct.timeval** %.pre.1, align 8
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %.pre43.1, i64 %72, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.timeval**, %struct.timeval*** %49, align 8
  %75 = load %struct.timeval*, %struct.timeval** %74, align 8
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %75, i64 %72, i32 1
  store i64 0, i64* %76, align 8
  %77 = add nsw i64 %67, 2
  %78 = icmp slt i64 %77, %24
  br i1 %78, label %.lr.ph22.us..lr.ph22.us_crit_edge, label %.loopexit6.us.loopexit66.unr-lcssa

; <label>:79                                      ; preds = %.lr.ph27.split.us
  %80 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025.us, i32 0
  store i64 1, i64* %80, align 8
  %81 = call noalias i8* @malloc(i64 240) #6
  %82 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025.us, i32 1
  %83 = bitcast i64** %82 to i8**
  store i8* %81, i8** %83, align 8
  %84 = icmp eq i8* %81, null
  br i1 %84, label %.us-lcssa31.us.loopexit, label %85

; <label>:85                                      ; preds = %79
  %86 = bitcast i8* %81 to i64*
  store i64 0, i64* %86, align 8
  %87 = call noalias i8* @malloc(i64 240) #6
  %88 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025.us, i32 2
  %89 = bitcast %struct.timeval*** %88 to i8**
  store i8* %87, i8** %89, align 8
  %90 = icmp eq i8* %87, null
  br i1 %90, label %.us-lcssa32.us.loopexit, label %91

; <label>:91                                      ; preds = %85
  %92 = call noalias i8* @malloc(i64 %29) #6
  %93 = bitcast %struct.timeval*** %88 to i8***
  %94 = load i8**, i8*** %93, align 8
  store i8* %92, i8** %94, align 8
  %95 = load %struct.timeval**, %struct.timeval*** %88, align 8
  %96 = load %struct.timeval*, %struct.timeval** %95, align 8
  %97 = icmp eq %struct.timeval* %96, null
  br i1 %97, label %.us-lcssa33.us.loopexit, label %.lr.ph24.us.preheader

.lr.ph24.us.preheader:                            ; preds = %91
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %96, i64 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.timeval**, %struct.timeval*** %88, align 8
  %100 = load %struct.timeval*, %struct.timeval** %99, align 8
  %101 = getelementptr inbounds %struct.timeval, %struct.timeval* %100, i64 0, i32 1
  store i64 0, i64* %101, align 8
  br i1 %34, label %.lr.ph24.us..lr.ph24.us_crit_edge.preheader, label %.loopexit6.us

.lr.ph24.us..lr.ph24.us_crit_edge.preheader:      ; preds = %.lr.ph24.us.preheader
  br i1 %lcmp.mod75, label %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split, label %.lr.ph24.us..lr.ph24.us_crit_edge.prol

.lr.ph24.us..lr.ph24.us_crit_edge.prol:           ; preds = %.lr.ph24.us..lr.ph24.us_crit_edge.preheader
  %.pre44.prol = load %struct.timeval**, %struct.timeval*** %88, align 8
  %.pre45.prol = load %struct.timeval*, %struct.timeval** %.pre44.prol, align 8
  %102 = getelementptr inbounds %struct.timeval, %struct.timeval* %.pre45.prol, i64 1, i32 0
  store i64 0, i64* %102, align 8
  %103 = load %struct.timeval**, %struct.timeval*** %88, align 8
  %104 = load %struct.timeval*, %struct.timeval** %103, align 8
  %105 = getelementptr inbounds %struct.timeval, %struct.timeval* %104, i64 1, i32 1
  store i64 0, i64* %105, align 8
  br label %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split

.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split: ; preds = %.lr.ph24.us..lr.ph24.us_crit_edge.prol, %.lr.ph24.us..lr.ph24.us_crit_edge.preheader
  %.unr76 = phi i64 [ 1, %.lr.ph24.us..lr.ph24.us_crit_edge.preheader ], [ 2, %.lr.ph24.us..lr.ph24.us_crit_edge.prol ]
  br i1 %35, label %.loopexit6.us.loopexit, label %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split.split

.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split.split: ; preds = %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split
  br label %.lr.ph24.us..lr.ph24.us_crit_edge

.loopexit6.us.loopexit.unr-lcssa:                 ; preds = %.lr.ph24.us..lr.ph24.us_crit_edge
  br label %.loopexit6.us.loopexit

.loopexit6.us.loopexit:                           ; preds = %.loopexit6.us.loopexit.unr-lcssa, %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split
  br label %.loopexit6.us

.loopexit6.us.loopexit66.unr-lcssa:               ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge
  br label %.loopexit6.us.loopexit66

.loopexit6.us.loopexit66:                         ; preds = %.loopexit6.us.loopexit66.unr-lcssa, %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split
  br label %.loopexit6.us

.loopexit6.us:                                    ; preds = %.loopexit6.us.loopexit66, %.loopexit6.us.loopexit, %.lr.ph24.us.preheader, %.lr.ph22.us.preheader
  %106 = add nsw i64 %i.025.us, 1
  %107 = load i64, i64* %i_stop, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %.lr.ph27.split.us, label %._crit_edge28.loopexit

.lr.ph24.us..lr.ph24.us_crit_edge:                ; preds = %.lr.ph24.us..lr.ph24.us_crit_edge, %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split.split
  %109 = phi i64 [ %.unr76, %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split.split ], [ %119, %.lr.ph24.us..lr.ph24.us_crit_edge ]
  %.pre44 = load %struct.timeval**, %struct.timeval*** %88, align 8
  %.pre45 = load %struct.timeval*, %struct.timeval** %.pre44, align 8
  %110 = getelementptr inbounds %struct.timeval, %struct.timeval* %.pre45, i64 %109, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.timeval**, %struct.timeval*** %88, align 8
  %112 = load %struct.timeval*, %struct.timeval** %111, align 8
  %113 = getelementptr inbounds %struct.timeval, %struct.timeval* %112, i64 %109, i32 1
  store i64 0, i64* %113, align 8
  %114 = add nuw nsw i64 %109, 1
  %.pre44.1 = load %struct.timeval**, %struct.timeval*** %88, align 8
  %.pre45.1 = load %struct.timeval*, %struct.timeval** %.pre44.1, align 8
  %115 = getelementptr inbounds %struct.timeval, %struct.timeval* %.pre45.1, i64 %114, i32 0
  store i64 0, i64* %115, align 8
  %116 = load %struct.timeval**, %struct.timeval*** %88, align 8
  %117 = load %struct.timeval*, %struct.timeval** %116, align 8
  %118 = getelementptr inbounds %struct.timeval, %struct.timeval* %117, i64 %114, i32 1
  store i64 0, i64* %118, align 8
  %119 = add nsw i64 %109, 2
  %120 = icmp slt i64 %119, %24
  br i1 %120, label %.lr.ph24.us..lr.ph24.us_crit_edge, label %.loopexit6.us.loopexit.unr-lcssa

.lr.ph27.split:                                   ; preds = %.loopexit4, %.lr.ph27.split.preheader
  %i.025 = phi i64 [ %161, %.loopexit4 ], [ %26, %.lr.ph27.split.preheader ]
  %121 = icmp slt i64 %i.025, %14
  br i1 %121, label %122, label %141

; <label>:122                                     ; preds = %.lr.ph27.split
  %123 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025, i32 0
  store i64 1, i64* %123, align 8
  %124 = call noalias i8* @malloc(i64 240) #6
  %125 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025, i32 1
  %126 = bitcast i64** %125 to i8**
  store i8* %124, i8** %126, align 8
  %127 = icmp eq i8* %124, null
  br i1 %127, label %.us-lcssa31.us.loopexit70, label %128

.us-lcssa31.us.loopexit:                          ; preds = %79
  br label %.us-lcssa31.us

.us-lcssa31.us.loopexit70:                        ; preds = %122
  br label %.us-lcssa31.us

.us-lcssa31.us:                                   ; preds = %.us-lcssa31.us.loopexit70, %.us-lcssa31.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.55, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 426, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #15
  unreachable

; <label>:128                                     ; preds = %122
  %129 = bitcast i8* %124 to i64*
  store i64 0, i64* %129, align 8
  %130 = call noalias i8* @malloc(i64 240) #6
  %131 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025, i32 2
  %132 = bitcast %struct.timeval*** %131 to i8**
  store i8* %130, i8** %132, align 8
  %133 = icmp eq i8* %130, null
  br i1 %133, label %.us-lcssa32.us.loopexit71, label %134

.us-lcssa32.us.loopexit:                          ; preds = %85
  br label %.us-lcssa32.us

.us-lcssa32.us.loopexit71:                        ; preds = %128
  br label %.us-lcssa32.us

.us-lcssa32.us:                                   ; preds = %.us-lcssa32.us.loopexit71, %.us-lcssa32.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.56, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 429, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #15
  unreachable

; <label>:134                                     ; preds = %128
  %135 = call noalias i8* @malloc(i64 %29) #6
  %136 = bitcast %struct.timeval*** %131 to i8***
  %137 = load i8**, i8*** %136, align 8
  store i8* %135, i8** %137, align 8
  %138 = load %struct.timeval**, %struct.timeval*** %131, align 8
  %139 = load %struct.timeval*, %struct.timeval** %138, align 8
  %140 = icmp eq %struct.timeval* %139, null
  br i1 %140, label %.us-lcssa33.us.loopexit72, label %.loopexit4

.us-lcssa33.us.loopexit:                          ; preds = %91
  br label %.us-lcssa33.us

.us-lcssa33.us.loopexit72:                        ; preds = %134
  br label %.us-lcssa33.us

.us-lcssa33.us:                                   ; preds = %.us-lcssa33.us.loopexit72, %.us-lcssa33.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8.57, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 431, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #15
  unreachable

; <label>:141                                     ; preds = %.lr.ph27.split
  %142 = sub nsw i64 %i.025, %14
  %143 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %142, i32 0
  store i64 1, i64* %143, align 8
  %144 = call noalias i8* @malloc(i64 240) #6
  %145 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %142, i32 1
  %146 = bitcast i64** %145 to i8**
  store i8* %144, i8** %146, align 8
  %147 = icmp eq i8* %144, null
  br i1 %147, label %.us-lcssa.us.loopexit67, label %148

.us-lcssa.us.loopexit:                            ; preds = %39
  br label %.us-lcssa.us

.us-lcssa.us.loopexit67:                          ; preds = %141
  br label %.us-lcssa.us

.us-lcssa.us:                                     ; preds = %.us-lcssa.us.loopexit67, %.us-lcssa.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9.58, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 442, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #15
  unreachable

; <label>:148                                     ; preds = %141
  %149 = bitcast i8* %144 to i64*
  store i64 0, i64* %149, align 8
  %150 = call noalias i8* @malloc(i64 240) #6
  %151 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %142, i32 2
  %152 = bitcast %struct.timeval*** %151 to i8**
  store i8* %150, i8** %152, align 8
  %153 = icmp eq i8* %150, null
  br i1 %153, label %.us-lcssa29.us.loopexit68, label %154

.us-lcssa29.us.loopexit:                          ; preds = %46
  br label %.us-lcssa29.us

.us-lcssa29.us.loopexit68:                        ; preds = %148
  br label %.us-lcssa29.us

.us-lcssa29.us:                                   ; preds = %.us-lcssa29.us.loopexit68, %.us-lcssa29.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10.59, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 445, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #15
  unreachable

; <label>:154                                     ; preds = %148
  %155 = call noalias i8* @malloc(i64 %29) #6
  %156 = bitcast %struct.timeval*** %151 to i8***
  %157 = load i8**, i8*** %156, align 8
  store i8* %155, i8** %157, align 8
  %158 = load %struct.timeval**, %struct.timeval*** %151, align 8
  %159 = load %struct.timeval*, %struct.timeval** %158, align 8
  %160 = icmp eq %struct.timeval* %159, null
  br i1 %160, label %.us-lcssa30.us.loopexit69, label %.loopexit4

.us-lcssa30.us.loopexit:                          ; preds = %52
  br label %.us-lcssa30.us

.us-lcssa30.us.loopexit69:                        ; preds = %154
  br label %.us-lcssa30.us

.us-lcssa30.us:                                   ; preds = %.us-lcssa30.us.loopexit69, %.us-lcssa30.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11.60, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 447, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #15
  unreachable

.loopexit4:                                       ; preds = %154, %134
  %161 = add nsw i64 %i.025, 1
  %162 = load i64, i64* %i_stop, align 8
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %.lr.ph27.split, label %._crit_edge28.loopexit73

._crit_edge28.loopexit:                           ; preds = %.loopexit6.us
  br label %._crit_edge28

._crit_edge28.loopexit73:                         ; preds = %.loopexit4
  br label %._crit_edge28

._crit_edge28:                                    ; preds = %._crit_edge28.loopexit73, %._crit_edge28.loopexit, %0
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %164 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call noalias i8* @malloc(i64 %165) #6
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %169

; <label>:168                                     ; preds = %._crit_edge28
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 459, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #15
  unreachable

; <label>:169                                     ; preds = %._crit_edge28
  %170 = load i64, i64* %i_start, align 8
  %171 = load i64, i64* %i_stop, align 8
  %172 = icmp slt i64 %170, %171
  br i1 %172, label %.preheader.lr.ph, label %._crit_edge20

.preheader.lr.ph:                                 ; preds = %169
  %173 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 7
  %174 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 6
  %175 = sitofp i64 %24 to float
  %176 = mul i64 %23, 80
  %177 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 8
  br label %.preheader

.preheader:                                       ; preds = %.loopexit..preheader_crit_edge, %.preheader.lr.ph
  %178 = phi i64 [ %165, %.preheader.lr.ph ], [ %.pre46, %.loopexit..preheader_crit_edge ]
  %i.117 = phi i64 [ %170, %.preheader.lr.ph ], [ %415, %.loopexit..preheader_crit_edge ]
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %180 = icmp ugt i64 %178, 1
  %umax = select i1 %180, i64 %178, i64 1
  call void @llvm.memset.p0i8.i64(i8* nonnull %166, i8 117, i64 %umax, i32 1, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %181 = icmp slt i64 %i.117, %14
  br i1 %181, label %182, label %298

; <label>:182                                     ; preds = %._crit_edge
  %183 = getelementptr inbounds %struct.edge, %struct.edge* %11, i64 %i.117, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.117, i32 2
  %186 = load %struct.timeval**, %struct.timeval*** %185, align 8
  %187 = load %struct.timeval*, %struct.timeval** %186, align 8
  %188 = getelementptr inbounds %struct.timeval, %struct.timeval* %187, i64 0, i32 0
  store i64 %184, i64* %188, align 8
  %189 = load %struct.timeval**, %struct.timeval*** %185, align 8
  %190 = load %struct.timeval*, %struct.timeval** %189, align 8
  %191 = getelementptr inbounds %struct.timeval, %struct.timeval* %190, i64 0, i32 1
  store i64 -1, i64* %191, align 8
  %192 = getelementptr inbounds %struct.edge, %struct.edge* %11, i64 %i.117, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.timeval**, %struct.timeval*** %185, align 8
  %195 = load %struct.timeval*, %struct.timeval** %194, align 8
  %196 = getelementptr inbounds %struct.timeval, %struct.timeval* %195, i64 1, i32 0
  store i64 %193, i64* %196, align 8
  %197 = load %struct.timeval**, %struct.timeval*** %185, align 8
  %198 = load %struct.timeval*, %struct.timeval** %197, align 8
  %199 = getelementptr inbounds %struct.timeval, %struct.timeval* %198, i64 1, i32 1
  store i64 1, i64* %199, align 8
  %200 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.117, i32 1
  %201 = load i64*, i64** %200, align 8
  store i64 2, i64* %201, align 8
  %202 = load %struct.timeval**, %struct.timeval*** %185, align 8
  %203 = load %struct.timeval*, %struct.timeval** %202, align 8
  %204 = getelementptr inbounds %struct.timeval, %struct.timeval* %203, i64 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i8, i8* %166, i64 %205
  store i8 118, i8* %206, align 1
  %207 = getelementptr inbounds %struct.timeval, %struct.timeval* %203, i64 1, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i8, i8* %166, i64 %208
  store i8 118, i8* %209, align 1
  %210 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.117, i32 0
  br label %211

; <label>:211                                     ; preds = %289, %182
  %212 = phi %struct.timeval** [ %202, %182 ], [ %293, %289 ]
  %currIndex.0 = phi i64 [ 1, %182 ], [ %290, %289 ]
  %verticesVisited.0 = phi i64 [ 2, %182 ], [ %verticesVisited.1.lcssa, %289 ]
  %depth.0 = phi i64 [ 1, %182 ], [ %297, %289 ]
  %213 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %214 = icmp slt i64 %depth.0, %213
  br i1 %214, label %.critedge, label %215

; <label>:215                                     ; preds = %211
  %216 = load i64, i64* %164, align 8
  %217 = icmp eq i64 %verticesVisited.0, %216
  br i1 %217, label %.critedge, label %.loopexit.loopexit

.critedge:                                        ; preds = %215, %211
  %218 = sdiv i64 %currIndex.0, %24
  %219 = srem i64 %currIndex.0, %24
  %220 = getelementptr inbounds %struct.timeval*, %struct.timeval** %212, i64 %218
  %221 = load %struct.timeval*, %struct.timeval** %220, align 8
  %222 = getelementptr inbounds %struct.timeval, %struct.timeval* %221, i64 %219, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.timeval, %struct.timeval* %221, i64 %219, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = add nsw i64 %225, 1
  %227 = load i64*, i64** %173, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 %223
  %229 = load i64, i64* %228, align 8
  %230 = load i64*, i64** %174, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 %223
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %232, %229
  %234 = icmp sgt i64 %232, 0
  br i1 %234, label %.lr.ph14.preheader, label %._crit_edge15

.lr.ph14.preheader:                               ; preds = %.critedge
  br label %.lr.ph14

.lr.ph14:                                         ; preds = %254, %.lr.ph14.preheader
  %verticesVisited.113 = phi i64 [ %verticesVisited.2, %254 ], [ %verticesVisited.0, %.lr.ph14.preheader ]
  %j2.012 = phi i64 [ %255, %254 ], [ %229, %.lr.ph14.preheader ]
  %235 = load i64*, i64** %177, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 %j2.012
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds i8, i8* %166, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = icmp eq i8 %239, 117
  br i1 %240, label %241, label %254

; <label>:241                                     ; preds = %.lr.ph14
  store i8 118, i8* %238, align 1
  %242 = sdiv i64 %verticesVisited.113, %24
  %243 = srem i64 %verticesVisited.113, %24
  %244 = load %struct.timeval**, %struct.timeval*** %185, align 8
  %245 = getelementptr inbounds %struct.timeval*, %struct.timeval** %244, i64 %242
  %246 = load %struct.timeval*, %struct.timeval** %245, align 8
  %247 = getelementptr inbounds %struct.timeval, %struct.timeval* %246, i64 %243, i32 0
  store i64 %237, i64* %247, align 8
  %248 = getelementptr inbounds %struct.timeval, %struct.timeval* %246, i64 %243, i32 1
  store i64 %226, i64* %248, align 8
  %249 = load i64*, i64** %200, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 %242
  %251 = load i64, i64* %250, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %250, align 8
  %253 = add nsw i64 %verticesVisited.113, 1
  br label %254

; <label>:254                                     ; preds = %241, %.lr.ph14
  %verticesVisited.2 = phi i64 [ %253, %241 ], [ %verticesVisited.113, %.lr.ph14 ]
  %255 = add nsw i64 %j2.012, 1
  %256 = icmp slt i64 %255, %233
  br i1 %256, label %.lr.ph14, label %._crit_edge15.loopexit

._crit_edge15.loopexit:                           ; preds = %254
  %verticesVisited.2.lcssa = phi i64 [ %verticesVisited.2, %254 ]
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %._crit_edge15.loopexit, %.critedge
  %verticesVisited.1.lcssa = phi i64 [ %verticesVisited.0, %.critedge ], [ %verticesVisited.2.lcssa, %._crit_edge15.loopexit ]
  %257 = sitofp i64 %verticesVisited.1.lcssa to float
  %258 = fdiv float %257, %175
  %259 = fcmp ogt float %258, 5.000000e-01
  br i1 %259, label %260, label %283

; <label>:260                                     ; preds = %._crit_edge15
  %261 = load i64, i64* %210, align 8
  %262 = sdiv i64 %verticesVisited.1.lcssa, %24
  %263 = add nsw i64 %262, 2
  %264 = icmp eq i64 %261, %263
  br i1 %264, label %283, label %265

; <label>:265                                     ; preds = %260
  %266 = add i64 %261, 1
  store i64 %266, i64* %210, align 8
  %267 = call noalias i8* @malloc(i64 %176) #6
  %268 = load i64, i64* %210, align 8
  %269 = add i64 %268, -1
  %270 = load %struct.timeval**, %struct.timeval*** %185, align 8
  %271 = getelementptr inbounds %struct.timeval*, %struct.timeval** %270, i64 %269
  %272 = bitcast %struct.timeval** %271 to i8**
  store i8* %267, i8** %272, align 8
  %273 = load i64, i64* %210, align 8
  %274 = add i64 %273, -1
  %275 = load %struct.timeval**, %struct.timeval*** %185, align 8
  %276 = getelementptr inbounds %struct.timeval*, %struct.timeval** %275, i64 %274
  %277 = load %struct.timeval*, %struct.timeval** %276, align 8
  %278 = icmp eq %struct.timeval* %277, null
  br i1 %278, label %279, label %280

; <label>:279                                     ; preds = %265
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12.61, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 522, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #15
  unreachable

; <label>:280                                     ; preds = %265
  %281 = load i64*, i64** %200, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 %274
  store i64 0, i64* %282, align 8
  br label %283

; <label>:283                                     ; preds = %280, %260, %._crit_edge15
  %284 = add nsw i64 %verticesVisited.1.lcssa, -1
  %285 = icmp slt i64 %currIndex.0, %284
  br i1 %285, label %286, label %.loopexit.loopexit

; <label>:286                                     ; preds = %283
  %287 = load i64, i64* %164, align 8
  %288 = icmp ult i64 %verticesVisited.1.lcssa, %287
  br i1 %288, label %289, label %.loopexit.loopexit

; <label>:289                                     ; preds = %286
  %290 = add nuw nsw i64 %currIndex.0, 1
  %291 = sdiv i64 %290, %24
  %292 = srem i64 %290, %24
  %293 = load %struct.timeval**, %struct.timeval*** %185, align 8
  %294 = getelementptr inbounds %struct.timeval*, %struct.timeval** %293, i64 %291
  %295 = load %struct.timeval*, %struct.timeval** %294, align 8
  %296 = getelementptr inbounds %struct.timeval, %struct.timeval* %295, i64 %292, i32 1
  %297 = load i64, i64* %296, align 8
  br label %211

; <label>:298                                     ; preds = %._crit_edge
  %299 = sub nsw i64 %i.117, %14
  %300 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %299, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %299, i32 2
  %303 = load %struct.timeval**, %struct.timeval*** %302, align 8
  %304 = load %struct.timeval*, %struct.timeval** %303, align 8
  %305 = getelementptr inbounds %struct.timeval, %struct.timeval* %304, i64 0, i32 0
  store i64 %301, i64* %305, align 8
  %306 = load %struct.timeval**, %struct.timeval*** %302, align 8
  %307 = load %struct.timeval*, %struct.timeval** %306, align 8
  %308 = getelementptr inbounds %struct.timeval, %struct.timeval* %307, i64 0, i32 1
  store i64 -1, i64* %308, align 8
  %309 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %299, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.timeval**, %struct.timeval*** %302, align 8
  %312 = load %struct.timeval*, %struct.timeval** %311, align 8
  %313 = getelementptr inbounds %struct.timeval, %struct.timeval* %312, i64 1, i32 0
  store i64 %310, i64* %313, align 8
  %314 = load %struct.timeval**, %struct.timeval*** %302, align 8
  %315 = load %struct.timeval*, %struct.timeval** %314, align 8
  %316 = getelementptr inbounds %struct.timeval, %struct.timeval* %315, i64 1, i32 1
  store i64 1, i64* %316, align 8
  %317 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %299, i32 1
  %318 = load i64*, i64** %317, align 8
  store i64 2, i64* %318, align 8
  %319 = load %struct.timeval**, %struct.timeval*** %302, align 8
  %320 = load %struct.timeval*, %struct.timeval** %319, align 8
  %321 = getelementptr inbounds %struct.timeval, %struct.timeval* %320, i64 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds i8, i8* %166, i64 %322
  store i8 118, i8* %323, align 1
  %324 = getelementptr inbounds %struct.timeval, %struct.timeval* %320, i64 1, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds i8, i8* %166, i64 %325
  store i8 118, i8* %326, align 1
  %327 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %299, i32 0
  br label %328

; <label>:328                                     ; preds = %406, %298
  %329 = phi %struct.timeval** [ %319, %298 ], [ %410, %406 ]
  %currIndex8.0 = phi i64 [ 1, %298 ], [ %407, %406 ]
  %verticesVisited7.0 = phi i64 [ 2, %298 ], [ %verticesVisited7.1.lcssa, %406 ]
  %depth6.0 = phi i64 [ 1, %298 ], [ %414, %406 ]
  %330 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %331 = icmp slt i64 %depth6.0, %330
  br i1 %331, label %.critedge1, label %332

; <label>:332                                     ; preds = %328
  %333 = load i64, i64* %164, align 8
  %334 = icmp eq i64 %verticesVisited7.0, %333
  br i1 %334, label %.critedge1, label %.loopexit.loopexit65

.critedge1:                                       ; preds = %332, %328
  %335 = sdiv i64 %currIndex8.0, %24
  %336 = srem i64 %currIndex8.0, %24
  %337 = getelementptr inbounds %struct.timeval*, %struct.timeval** %329, i64 %335
  %338 = load %struct.timeval*, %struct.timeval** %337, align 8
  %339 = getelementptr inbounds %struct.timeval, %struct.timeval* %338, i64 %336, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds %struct.timeval, %struct.timeval* %338, i64 %336, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = add nsw i64 %342, 1
  %344 = load i64*, i64** %173, align 8
  %345 = getelementptr inbounds i64, i64* %344, i64 %340
  %346 = load i64, i64* %345, align 8
  %347 = load i64*, i64** %174, align 8
  %348 = getelementptr inbounds i64, i64* %347, i64 %340
  %349 = load i64, i64* %348, align 8
  %350 = add nsw i64 %349, %346
  %351 = icmp sgt i64 %349, 0
  br i1 %351, label %.lr.ph10.preheader, label %._crit_edge11

.lr.ph10.preheader:                               ; preds = %.critedge1
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %371, %.lr.ph10.preheader
  %j13.09 = phi i64 [ %372, %371 ], [ %346, %.lr.ph10.preheader ]
  %verticesVisited7.18 = phi i64 [ %verticesVisited7.2, %371 ], [ %verticesVisited7.0, %.lr.ph10.preheader ]
  %352 = load i64*, i64** %177, align 8
  %353 = getelementptr inbounds i64, i64* %352, i64 %j13.09
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds i8, i8* %166, i64 %354
  %356 = load i8, i8* %355, align 1
  %357 = icmp eq i8 %356, 117
  br i1 %357, label %358, label %371

; <label>:358                                     ; preds = %.lr.ph10
  store i8 118, i8* %355, align 1
  %359 = sdiv i64 %verticesVisited7.18, %24
  %360 = srem i64 %verticesVisited7.18, %24
  %361 = load %struct.timeval**, %struct.timeval*** %302, align 8
  %362 = getelementptr inbounds %struct.timeval*, %struct.timeval** %361, i64 %359
  %363 = load %struct.timeval*, %struct.timeval** %362, align 8
  %364 = getelementptr inbounds %struct.timeval, %struct.timeval* %363, i64 %360, i32 0
  store i64 %354, i64* %364, align 8
  %365 = getelementptr inbounds %struct.timeval, %struct.timeval* %363, i64 %360, i32 1
  store i64 %343, i64* %365, align 8
  %366 = load i64*, i64** %317, align 8
  %367 = getelementptr inbounds i64, i64* %366, i64 %359
  %368 = load i64, i64* %367, align 8
  %369 = add i64 %368, 1
  store i64 %369, i64* %367, align 8
  %370 = add nsw i64 %verticesVisited7.18, 1
  br label %371

; <label>:371                                     ; preds = %358, %.lr.ph10
  %verticesVisited7.2 = phi i64 [ %370, %358 ], [ %verticesVisited7.18, %.lr.ph10 ]
  %372 = add nsw i64 %j13.09, 1
  %373 = icmp slt i64 %372, %350
  br i1 %373, label %.lr.ph10, label %._crit_edge11.loopexit

._crit_edge11.loopexit:                           ; preds = %371
  %verticesVisited7.2.lcssa = phi i64 [ %verticesVisited7.2, %371 ]
  br label %._crit_edge11

._crit_edge11:                                    ; preds = %._crit_edge11.loopexit, %.critedge1
  %verticesVisited7.1.lcssa = phi i64 [ %verticesVisited7.0, %.critedge1 ], [ %verticesVisited7.2.lcssa, %._crit_edge11.loopexit ]
  %374 = sitofp i64 %verticesVisited7.1.lcssa to float
  %375 = fdiv float %374, %175
  %376 = fcmp ogt float %375, 5.000000e-01
  br i1 %376, label %377, label %400

; <label>:377                                     ; preds = %._crit_edge11
  %378 = load i64, i64* %327, align 8
  %379 = sdiv i64 %verticesVisited7.1.lcssa, %24
  %380 = add nsw i64 %379, 2
  %381 = icmp eq i64 %378, %380
  br i1 %381, label %400, label %382

; <label>:382                                     ; preds = %377
  %383 = add i64 %378, 1
  store i64 %383, i64* %327, align 8
  %384 = call noalias i8* @malloc(i64 %176) #6
  %385 = load i64, i64* %327, align 8
  %386 = add i64 %385, -1
  %387 = load %struct.timeval**, %struct.timeval*** %302, align 8
  %388 = getelementptr inbounds %struct.timeval*, %struct.timeval** %387, i64 %386
  %389 = bitcast %struct.timeval** %388 to i8**
  store i8* %384, i8** %389, align 8
  %390 = load i64, i64* %327, align 8
  %391 = add i64 %390, -1
  %392 = load %struct.timeval**, %struct.timeval*** %302, align 8
  %393 = getelementptr inbounds %struct.timeval*, %struct.timeval** %392, i64 %391
  %394 = load %struct.timeval*, %struct.timeval** %393, align 8
  %395 = icmp eq %struct.timeval* %394, null
  br i1 %395, label %396, label %397

; <label>:396                                     ; preds = %382
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13.62, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.50, i64 0, i64 0), i32 591, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #15
  unreachable

; <label>:397                                     ; preds = %382
  %398 = load i64*, i64** %317, align 8
  %399 = getelementptr inbounds i64, i64* %398, i64 %391
  store i64 0, i64* %399, align 8
  br label %400

; <label>:400                                     ; preds = %397, %377, %._crit_edge11
  %401 = add nsw i64 %verticesVisited7.1.lcssa, -1
  %402 = icmp slt i64 %currIndex8.0, %401
  br i1 %402, label %403, label %.loopexit.loopexit65

; <label>:403                                     ; preds = %400
  %404 = load i64, i64* %164, align 8
  %405 = icmp ult i64 %verticesVisited7.1.lcssa, %404
  br i1 %405, label %406, label %.loopexit.loopexit65

; <label>:406                                     ; preds = %403
  %407 = add nuw nsw i64 %currIndex8.0, 1
  %408 = sdiv i64 %407, %24
  %409 = srem i64 %407, %24
  %410 = load %struct.timeval**, %struct.timeval*** %302, align 8
  %411 = getelementptr inbounds %struct.timeval*, %struct.timeval** %410, i64 %408
  %412 = load %struct.timeval*, %struct.timeval** %411, align 8
  %413 = getelementptr inbounds %struct.timeval, %struct.timeval* %412, i64 %409, i32 1
  %414 = load i64, i64* %413, align 8
  br label %328

.loopexit.loopexit:                               ; preds = %286, %283, %215
  br label %.loopexit

.loopexit.loopexit65:                             ; preds = %403, %400, %332
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit65, %.loopexit.loopexit
  %415 = add nsw i64 %i.117, 1
  %416 = load i64, i64* %i_stop, align 8
  %417 = icmp slt i64 %415, %416
  br i1 %417, label %.loopexit..preheader_crit_edge, label %._crit_edge20.loopexit

.loopexit..preheader_crit_edge:                   ; preds = %.loopexit
  %.pre46 = load i64, i64* %164, align 8
  br label %.preheader

._crit_edge20.loopexit:                           ; preds = %.loopexit
  br label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge20.loopexit, %169
  call void @free(i8* %166) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @genScalData_seq(%struct.graphSDG* nocapture %SDGdataPtr) #0 {
  %1 = tail call %struct.random* (...) bitcast (%struct.random* ()* @random_alloc to %struct.random* (...)*)() #6
  %2 = icmp eq %struct.random* %1, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 107, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

; <label>:4                                       ; preds = %0
  tail call void @random_seed(%struct.random* nonnull %1, i64 0) #6
  %5 = load i64, i64* @TOT_VERTICES, align 8
  %6 = shl i64 %5, 3
  %7 = tail call noalias i8* @malloc(i64 %6) #6
  %8 = bitcast i8* %7 to i64*
  %9 = icmp eq i8* %7, null
  br i1 %9, label %27, label %.preheader51

.preheader51:                                     ; preds = %4
  %10 = icmp eq i64 %5, 0
  br i1 %10, label %._crit_edge209, label %.lr.ph212.preheader

.lr.ph212.preheader:                              ; preds = %.preheader51
  %min.iters.check = icmp ult i64 %5, 4
  br i1 %min.iters.check, label %.lr.ph212.preheader617, label %min.iters.checked

.lr.ph212.preheader617:                           ; preds = %middle.block, %min.iters.checked, %.lr.ph212.preheader
  %i.0211.ph = phi i64 [ 0, %min.iters.checked ], [ 0, %.lr.ph212.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph212

min.iters.checked:                                ; preds = %.lr.ph212.preheader
  %n.vec = and i64 %5, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %.lr.ph212.preheader617, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  %11 = add i64 %5, -4
  %12 = lshr i64 %11, 2
  %13 = and i64 %12, 1
  %lcmp.mod718 = icmp eq i64 %13, 0
  br i1 %lcmp.mod718, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %14 = bitcast i8* %7 to <2 x i64>*
  store <2 x i64> <i64 0, i64 1>, <2 x i64>* %14, align 8
  %15 = getelementptr i8, i8* %7, i64 16
  %16 = bitcast i8* %15 to <2 x i64>*
  store <2 x i64> <i64 2, i64 3>, <2 x i64>* %16, align 8
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 4, %vector.body.prol ]
  %17 = icmp eq i64 %12, 0
  br i1 %17, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %broadcast.splatinsert = insertelement <2 x i64> undef, i64 %index, i32 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> undef, <2 x i32> zeroinitializer
  %induction = add <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %induction501 = add <2 x i64> %broadcast.splat, <i64 2, i64 3>
  %18 = getelementptr inbounds i64, i64* %8, i64 %index
  %19 = bitcast i64* %18 to <2 x i64>*
  store <2 x i64> %induction, <2 x i64>* %19, align 8
  %20 = getelementptr i64, i64* %18, i64 2
  %21 = bitcast i64* %20 to <2 x i64>*
  store <2 x i64> %induction501, <2 x i64>* %21, align 8
  %index.next = add i64 %index, 4
  %broadcast.splatinsert.1 = insertelement <2 x i64> undef, i64 %index.next, i32 0
  %broadcast.splat.1 = shufflevector <2 x i64> %broadcast.splatinsert.1, <2 x i64> undef, <2 x i32> zeroinitializer
  %induction.1 = add <2 x i64> %broadcast.splat.1, <i64 0, i64 1>
  %induction501.1 = add <2 x i64> %broadcast.splat.1, <i64 2, i64 3>
  %22 = getelementptr inbounds i64, i64* %8, i64 %index.next
  %23 = bitcast i64* %22 to <2 x i64>*
  store <2 x i64> %induction.1, <2 x i64>* %23, align 8
  %24 = getelementptr i64, i64* %22, i64 2
  %25 = bitcast i64* %24 to <2 x i64>*
  store <2 x i64> %induction501.1, <2 x i64>* %25, align 8
  %index.next.1 = add i64 %index, 8
  %26 = icmp eq i64 %index.next.1, %n.vec
  br i1 %26, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !23

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.preheader.split
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %.preheader50, label %.lr.ph212.preheader617

; <label>:27                                      ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.67, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 112, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

.preheader50.loopexit:                            ; preds = %.lr.ph212
  br label %.preheader50

.preheader50:                                     ; preds = %.preheader50.loopexit, %middle.block
  br i1 %10, label %._crit_edge209, label %.lr.ph208.preheader

.lr.ph208.preheader:                              ; preds = %.preheader50
  br label %.lr.ph208

.lr.ph212:                                        ; preds = %.lr.ph212, %.lr.ph212.preheader617
  %i.0211 = phi i64 [ %29, %.lr.ph212 ], [ %i.0211.ph, %.lr.ph212.preheader617 ]
  %28 = getelementptr inbounds i64, i64* %8, i64 %i.0211
  store i64 %i.0211, i64* %28, align 8
  %29 = add nuw nsw i64 %i.0211, 1
  %30 = icmp ult i64 %29, %5
  br i1 %30, label %.lr.ph212, label %.preheader50.loopexit, !llvm.loop !24

.lr.ph208:                                        ; preds = %42, %.lr.ph208.preheader
  %i.1207 = phi i64 [ %43, %42 ], [ 0, %.lr.ph208.preheader ]
  %31 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %32 = load i64, i64* @TOT_VERTICES, align 8
  %33 = sub i64 %32, %i.1207
  %34 = urem i64 %31, %33
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %42, label %36

; <label>:36                                      ; preds = %.lr.ph208
  %37 = add i64 %34, %i.1207
  %38 = getelementptr inbounds i64, i64* %8, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %8, i64 %i.1207
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %38, align 8
  store i64 %39, i64* %40, align 8
  br label %42

; <label>:42                                      ; preds = %36, %.lr.ph208
  %43 = add nuw nsw i64 %i.1207, 1
  %44 = icmp ult i64 %43, %32
  br i1 %44, label %.lr.ph208, label %._crit_edge209.loopexit

._crit_edge209.loopexit:                          ; preds = %42
  %.lcssa790 = phi i64 [ %32, %42 ]
  br label %._crit_edge209

._crit_edge209:                                   ; preds = %._crit_edge209.loopexit, %.preheader50, %.preheader51
  %.lcssa85 = phi i64 [ 0, %.preheader50 ], [ 0, %.preheader51 ], [ %.lcssa790, %._crit_edge209.loopexit ]
  %45 = uitofp i64 %.lcssa85 to double
  %46 = fmul double %45, 1.500000e+00
  %47 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %48 = add nsw i64 %47, 1
  %49 = sdiv i64 %48, 2
  %50 = sitofp i64 %49 to double
  %51 = fdiv double %46, %50
  %52 = tail call double @ceil(double %51) #16
  %53 = fptosi double %52 to i64
  %54 = shl i64 %53, 3
  %55 = tail call noalias i8* @malloc(i64 %54) #6
  %56 = bitcast i8* %55 to i64*
  %57 = icmp eq i8* %55, null
  br i1 %57, label %59, label %.preheader49

.preheader49:                                     ; preds = %._crit_edge209
  %58 = icmp sgt i64 %53, 0
  br i1 %58, label %.lr.ph205.preheader, label %._crit_edge206

.lr.ph205.preheader:                              ; preds = %.preheader49
  br label %.lr.ph205

; <label>:59                                      ; preds = %._crit_edge209
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.68, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 144, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

.lr.ph205:                                        ; preds = %.lr.ph205, %.lr.ph205.preheader
  %i.2204 = phi i64 [ %65, %.lr.ph205 ], [ 0, %.lr.ph205.preheader ]
  %60 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %61 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %62 = urem i64 %60, %61
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds i64, i64* %56, i64 %i.2204
  store i64 %63, i64* %64, align 8
  %65 = add nuw nsw i64 %i.2204, 1
  %exitcond318 = icmp eq i64 %65, %53
  br i1 %exitcond318, label %._crit_edge206.loopexit, label %.lr.ph205

._crit_edge206.loopexit:                          ; preds = %.lr.ph205
  %.lcssa789 = phi i64 [ %61, %.lr.ph205 ]
  br label %._crit_edge206

._crit_edge206:                                   ; preds = %._crit_edge206.loopexit, %.preheader49
  %66 = phi i64 [ %47, %.preheader49 ], [ %.lcssa789, %._crit_edge206.loopexit ]
  %67 = tail call noalias i8* @malloc(i64 %54) #6
  %68 = bitcast i8* %67 to i64*
  %69 = icmp eq i8* %67, null
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %._crit_edge206
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.69, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 162, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

; <label>:71                                      ; preds = %._crit_edge206
  %72 = tail call noalias i8* @malloc(i64 %54) #6
  %73 = bitcast i8* %72 to i64*
  %74 = icmp eq i8* %72, null
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %71
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5.70, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 164, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

; <label>:76                                      ; preds = %71
  %77 = load i64, i64* %56, align 8
  %78 = add nsw i64 %77, -1
  store i64 %78, i64* %68, align 8
  %79 = icmp sgt i64 %53, 1
  %80 = load i64, i64* @TOT_VERTICES, align 8
  br i1 %79, label %.lr.ph199, label %._crit_edge200

.lr.ph199:                                        ; preds = %76
  %81 = add i64 %80, -1
  br label %82

; <label>:82                                      ; preds = %89, %.lr.ph199
  %83 = phi i64 [ %78, %.lr.ph199 ], [ %86, %89 ]
  %i.3197 = phi i64 [ 1, %.lr.ph199 ], [ %90, %89 ]
  %84 = getelementptr inbounds i64, i64* %56, i64 %i.3197
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %83, %85
  %87 = getelementptr inbounds i64, i64* %68, i64 %i.3197
  store i64 %86, i64* %87, align 8
  %88 = icmp ult i64 %86, %81
  br i1 %88, label %89, label %._crit_edge200.loopexit

; <label>:89                                      ; preds = %82
  %90 = add nuw nsw i64 %i.3197, 1
  %91 = icmp slt i64 %90, %53
  br i1 %91, label %82, label %._crit_edge200.loopexit

._crit_edge200.loopexit:                          ; preds = %89, %82
  %i.3.lcssa.ph = phi i64 [ %i.3197, %82 ], [ %90, %89 ]
  br label %._crit_edge200

._crit_edge200:                                   ; preds = %._crit_edge200.loopexit, %76
  %i.3.lcssa = phi i64 [ 1, %76 ], [ %i.3.lcssa.ph, %._crit_edge200.loopexit ]
  %92 = add i64 %i.3.lcssa, 1
  %93 = add nsw i64 %i.3.lcssa, -1
  %94 = getelementptr inbounds i64, i64* %68, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %80, -1
  %97 = sub i64 %96, %95
  %98 = getelementptr inbounds i64, i64* %56, i64 %i.3.lcssa
  store i64 %97, i64* %98, align 8
  %99 = getelementptr inbounds i64, i64* %68, i64 %i.3.lcssa
  store i64 %96, i64* %99, align 8
  store i64 0, i64* %73, align 8
  %100 = icmp slt i64 %i.3.lcssa, 1
  br i1 %100, label %._crit_edge196, label %.lr.ph195.preheader

.lr.ph195.preheader:                              ; preds = %._crit_edge200
  %min.iters.check507 = icmp ult i64 %i.3.lcssa, 4
  br i1 %min.iters.check507, label %.lr.ph195.preheader616, label %min.iters.checked508

min.iters.checked508:                             ; preds = %.lr.ph195.preheader
  %n.vec510 = and i64 %i.3.lcssa, -4
  %cmp.zero511 = icmp eq i64 %n.vec510, 0
  %ind.end = or i64 %n.vec510, 1
  br i1 %cmp.zero511, label %.lr.ph195.preheader616, label %vector.body504.preheader

vector.body504.preheader:                         ; preds = %min.iters.checked508
  %101 = add i64 %i.3.lcssa, -4
  %102 = lshr i64 %101, 2
  %103 = and i64 %102, 1
  %lcmp.mod716 = icmp eq i64 %103, 0
  br i1 %lcmp.mod716, label %vector.body504.prol, label %vector.body504.preheader.split

vector.body504.prol:                              ; preds = %vector.body504.preheader
  %104 = bitcast i8* %67 to <2 x i64>*
  %wide.load.prol = load <2 x i64>, <2 x i64>* %104, align 8
  %105 = getelementptr i8, i8* %67, i64 16
  %106 = bitcast i8* %105 to <2 x i64>*
  %wide.load521.prol = load <2 x i64>, <2 x i64>* %106, align 8
  %107 = add <2 x i64> %wide.load.prol, <i64 1, i64 1>
  %108 = add <2 x i64> %wide.load521.prol, <i64 1, i64 1>
  %109 = getelementptr inbounds i8, i8* %72, i64 8
  %110 = bitcast i8* %109 to <2 x i64>*
  store <2 x i64> %107, <2 x i64>* %110, align 8
  %111 = getelementptr i8, i8* %72, i64 24
  %112 = bitcast i8* %111 to <2 x i64>*
  store <2 x i64> %108, <2 x i64>* %112, align 8
  br label %vector.body504.preheader.split

vector.body504.preheader.split:                   ; preds = %vector.body504.prol, %vector.body504.preheader
  %index513.unr = phi i64 [ 0, %vector.body504.preheader ], [ 4, %vector.body504.prol ]
  %113 = icmp eq i64 %102, 0
  br i1 %113, label %middle.block505, label %vector.body504.preheader.split.split

vector.body504.preheader.split.split:             ; preds = %vector.body504.preheader.split
  br label %vector.body504

vector.body504:                                   ; preds = %vector.body504, %vector.body504.preheader.split.split
  %index513 = phi i64 [ %index513.unr, %vector.body504.preheader.split.split ], [ %index.next514.1, %vector.body504 ]
  %offset.idx = or i64 %index513, 1
  %114 = add i64 %offset.idx, -1
  %115 = getelementptr inbounds i64, i64* %68, i64 %114
  %116 = bitcast i64* %115 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %116, align 8
  %117 = getelementptr i64, i64* %115, i64 2
  %118 = bitcast i64* %117 to <2 x i64>*
  %wide.load521 = load <2 x i64>, <2 x i64>* %118, align 8
  %119 = add <2 x i64> %wide.load, <i64 1, i64 1>
  %120 = add <2 x i64> %wide.load521, <i64 1, i64 1>
  %121 = getelementptr inbounds i64, i64* %73, i64 %offset.idx
  %122 = bitcast i64* %121 to <2 x i64>*
  store <2 x i64> %119, <2 x i64>* %122, align 8
  %123 = getelementptr i64, i64* %121, i64 2
  %124 = bitcast i64* %123 to <2 x i64>*
  store <2 x i64> %120, <2 x i64>* %124, align 8
  %index.next514 = add i64 %index513, 4
  %offset.idx.1 = or i64 %index.next514, 1
  %125 = add i64 %offset.idx.1, -1
  %126 = getelementptr inbounds i64, i64* %68, i64 %125
  %127 = bitcast i64* %126 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %127, align 8
  %128 = getelementptr i64, i64* %126, i64 2
  %129 = bitcast i64* %128 to <2 x i64>*
  %wide.load521.1 = load <2 x i64>, <2 x i64>* %129, align 8
  %130 = add <2 x i64> %wide.load.1, <i64 1, i64 1>
  %131 = add <2 x i64> %wide.load521.1, <i64 1, i64 1>
  %132 = getelementptr inbounds i64, i64* %73, i64 %offset.idx.1
  %133 = bitcast i64* %132 to <2 x i64>*
  store <2 x i64> %130, <2 x i64>* %133, align 8
  %134 = getelementptr i64, i64* %132, i64 2
  %135 = bitcast i64* %134 to <2 x i64>*
  store <2 x i64> %131, <2 x i64>* %135, align 8
  %index.next514.1 = add i64 %index513, 8
  %136 = icmp eq i64 %index.next514.1, %n.vec510
  br i1 %136, label %middle.block505.unr-lcssa, label %vector.body504, !llvm.loop !25

middle.block505.unr-lcssa:                        ; preds = %vector.body504
  br label %middle.block505

middle.block505:                                  ; preds = %middle.block505.unr-lcssa, %vector.body504.preheader.split
  %cmp.n516 = icmp eq i64 %i.3.lcssa, %n.vec510
  br i1 %cmp.n516, label %._crit_edge196, label %.lr.ph195.preheader616

.lr.ph195.preheader616:                           ; preds = %middle.block505, %min.iters.checked508, %.lr.ph195.preheader
  %i.4193.ph = phi i64 [ 1, %min.iters.checked508 ], [ 1, %.lr.ph195.preheader ], [ %ind.end, %middle.block505 ]
  br label %.lr.ph195

.lr.ph195:                                        ; preds = %.lr.ph195, %.lr.ph195.preheader616
  %i.4193 = phi i64 [ %142, %.lr.ph195 ], [ %i.4193.ph, %.lr.ph195.preheader616 ]
  %137 = add nsw i64 %i.4193, -1
  %138 = getelementptr inbounds i64, i64* %68, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, 1
  %141 = getelementptr inbounds i64, i64* %73, i64 %i.4193
  store i64 %140, i64* %141, align 8
  %142 = add nuw nsw i64 %i.4193, 1
  %exitcond317 = icmp eq i64 %142, %92
  br i1 %exitcond317, label %._crit_edge196.loopexit, label %.lr.ph195, !llvm.loop !26

._crit_edge196.loopexit:                          ; preds = %.lr.ph195
  br label %._crit_edge196

._crit_edge196:                                   ; preds = %._crit_edge196.loopexit, %middle.block505, %._crit_edge200
  %143 = load i64, i64* @SCALE, align 8
  %144 = icmp sgt i64 %143, 11
  %145 = add nsw i64 %66, -1
  %146 = mul i64 %145, %80
  br i1 %144, label %147, label %149

; <label>:147                                     ; preds = %._crit_edge196
  %148 = uitofp i64 %146 to double
  br label %158

; <label>:149                                     ; preds = %._crit_edge196
  %150 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %151 = add nsw i64 %150, 1
  %152 = sdiv i64 %151, 2
  %153 = mul i64 %152, %146
  %154 = shl i64 %80, 1
  %155 = add i64 %153, %154
  %156 = uitofp i64 %155 to double
  %157 = fmul double %156, 1.200000e+00
  br label %158

; <label>:158                                     ; preds = %149, %147
  %.sink = phi double [ %148, %147 ], [ %157, %149 ]
  %159 = tail call double @ceil(double %.sink) #16
  %estTotEdges.0 = fptosi double %159 to i64
  %160 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %161 = shl i64 %estTotEdges.0, 3
  %162 = tail call noalias i8* @malloc(i64 %161) #6
  %163 = bitcast i8* %162 to i64*
  %164 = tail call noalias i8* @malloc(i64 %161) #6
  %165 = bitcast i8* %164 to i64*
  %166 = icmp eq i8* %162, null
  br i1 %166, label %167, label %168

; <label>:167                                     ; preds = %158
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.71, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 241, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

; <label>:168                                     ; preds = %158
  %169 = icmp eq i8* %164, null
  br i1 %169, label %170, label %171

; <label>:170                                     ; preds = %168
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.72, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 242, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

; <label>:171                                     ; preds = %168
  %172 = shl i64 %66, 3
  %173 = tail call noalias i8* @malloc(i64 %172) #6
  %174 = bitcast i8* %173 to i64**
  %175 = icmp eq i8* %173, null
  br i1 %175, label %177, label %.preheader48

.preheader48:                                     ; preds = %171
  %176 = icmp sgt i64 %66, 0
  br i1 %176, label %.lr.ph192.preheader, label %.preheader47

.lr.ph192.preheader:                              ; preds = %.preheader48
  br label %.lr.ph192

; <label>:177                                     ; preds = %171
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8.73, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 249, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

; <label>:178                                     ; preds = %.lr.ph192
  %179 = icmp slt i64 %185, %66
  br i1 %179, label %.lr.ph192, label %.preheader47.loopexit

.preheader47.loopexit:                            ; preds = %178
  br label %.preheader47

.preheader47:                                     ; preds = %.preheader47.loopexit, %.preheader48
  %180 = icmp slt i64 %i.3.lcssa, 0
  br i1 %180, label %.preheader44, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %.preheader47
  br label %.lr.ph189

.lr.ph192:                                        ; preds = %178, %.lr.ph192.preheader
  %i.5191 = phi i64 [ %185, %178 ], [ 0, %.lr.ph192.preheader ]
  %181 = tail call noalias i8* @malloc(i64 %172) #6
  %182 = getelementptr inbounds i64*, i64** %174, i64 %i.5191
  %183 = bitcast i64** %182 to i8**
  store i8* %181, i8** %183, align 8
  %184 = icmp eq i8* %181, null
  %185 = add nuw nsw i64 %i.5191, 1
  br i1 %184, label %186, label %178

; <label>:186                                     ; preds = %.lr.ph192
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9.74, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 253, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

.preheader44.loopexit:                            ; preds = %.loopexit46
  %i_edgePtr.6.lcssa = phi i64 [ %i_edgePtr.6, %.loopexit46 ]
  %.pre320 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  br label %.preheader44

.preheader44:                                     ; preds = %.preheader44.loopexit, %.preheader47
  %187 = phi i64 [ %66, %.preheader47 ], [ %.pre320, %.preheader44.loopexit ]
  %i_edgePtr.0.lcssa = phi i64 [ 0, %.preheader47 ], [ %i_edgePtr.6.lcssa, %.preheader44.loopexit ]
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %.lr.ph170.preheader, label %._crit_edge171

.lr.ph170.preheader:                              ; preds = %.preheader44
  br label %.lr.ph170

.lr.ph189:                                        ; preds = %.loopexit46, %.lr.ph189.preheader
  %i_edgePtr.0188 = phi i64 [ %i_edgePtr.6, %.loopexit46 ], [ 0, %.lr.ph189.preheader ]
  %i_clique.0187 = phi i64 [ %270, %.loopexit46 ], [ 0, %.lr.ph189.preheader ]
  %189 = getelementptr inbounds i64, i64* %56, i64 %i_clique.0187
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i64, i64* %73, i64 %i_clique.0187
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %190, 0
  br i1 %193, label %.preheader45.preheader, label %._crit_edge180.thread

.preheader45.preheader:                           ; preds = %.lr.ph189
  br label %.preheader45

.preheader45:                                     ; preds = %._crit_edge175, %.preheader45.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge175 ], [ 0, %.preheader45.preheader ]
  %i_edgePtr.1177 = phi i64 [ %i_edgePtr.2.lcssa, %._crit_edge175 ], [ %i_edgePtr.0188, %.preheader45.preheader ]
  %194 = icmp sgt i64 %indvars.iv, 0
  br i1 %194, label %.lr.ph174, label %._crit_edge175

.lr.ph174:                                        ; preds = %.preheader45
  %195 = add nsw i64 %indvars.iv, %192
  %196 = getelementptr inbounds i64*, i64** %174, i64 %indvars.iv
  br label %197

; <label>:197                                     ; preds = %233, %.lr.ph174
  %i_edgePtr.2173 = phi i64 [ %i_edgePtr.1177, %.lr.ph174 ], [ %i_edgePtr.3, %233 ]
  %j.0172 = phi i64 [ 0, %.lr.ph174 ], [ %234, %233 ]
  %198 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %199 = urem i64 %198, 1000
  %200 = uitofp i64 %199 to float
  %201 = fdiv float %200, 1.000000e+03
  %202 = fcmp ult float %201, %160
  br i1 %202, label %215, label %203

; <label>:203                                     ; preds = %197
  %204 = getelementptr inbounds i64, i64* %163, i64 %i_edgePtr.2173
  store i64 %195, i64* %204, align 8
  %205 = add nsw i64 %j.0172, %192
  %206 = getelementptr inbounds i64, i64* %165, i64 %i_edgePtr.2173
  store i64 %205, i64* %206, align 8
  %207 = add nsw i64 %i_edgePtr.2173, 1
  %208 = load i64*, i64** %196, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 %j.0172
  store i64 1, i64* %209, align 8
  %210 = getelementptr inbounds i64, i64* %163, i64 %207
  store i64 %205, i64* %210, align 8
  %211 = getelementptr inbounds i64, i64* %165, i64 %207
  store i64 %195, i64* %211, align 8
  %212 = getelementptr inbounds i64*, i64** %174, i64 %j.0172
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 %indvars.iv
  store i64 1, i64* %214, align 8
  br label %233

; <label>:215                                     ; preds = %197
  %216 = fcmp ult float %201, 5.000000e-01
  %217 = getelementptr inbounds i64*, i64** %174, i64 %j.0172
  %218 = load i64*, i64** %217, align 8
  br i1 %216, label %226, label %219

; <label>:219                                     ; preds = %215
  %220 = getelementptr inbounds i64, i64* %163, i64 %i_edgePtr.2173
  store i64 %195, i64* %220, align 8
  %221 = add nsw i64 %j.0172, %192
  %222 = getelementptr inbounds i64, i64* %165, i64 %i_edgePtr.2173
  store i64 %221, i64* %222, align 8
  %223 = load i64*, i64** %196, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 %j.0172
  store i64 1, i64* %224, align 8
  %225 = getelementptr inbounds i64, i64* %218, i64 %indvars.iv
  store i64 0, i64* %225, align 8
  br label %233

; <label>:226                                     ; preds = %215
  %227 = add nsw i64 %j.0172, %192
  %228 = getelementptr inbounds i64, i64* %163, i64 %i_edgePtr.2173
  store i64 %227, i64* %228, align 8
  %229 = getelementptr inbounds i64, i64* %165, i64 %i_edgePtr.2173
  store i64 %195, i64* %229, align 8
  %230 = getelementptr inbounds i64, i64* %218, i64 %indvars.iv
  store i64 1, i64* %230, align 8
  %231 = load i64*, i64** %196, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 %j.0172
  store i64 0, i64* %232, align 8
  br label %233

; <label>:233                                     ; preds = %226, %219, %203
  %i_edgePtr.3.in = phi i64 [ %207, %203 ], [ %i_edgePtr.2173, %219 ], [ %i_edgePtr.2173, %226 ]
  %i_edgePtr.3 = add nsw i64 %i_edgePtr.3.in, 1
  %234 = add nuw nsw i64 %j.0172, 1
  %exitcond313 = icmp eq i64 %234, %indvars.iv
  br i1 %exitcond313, label %._crit_edge175.loopexit, label %197

._crit_edge175.loopexit:                          ; preds = %233
  %i_edgePtr.3.lcssa = phi i64 [ %i_edgePtr.3, %233 ]
  br label %._crit_edge175

._crit_edge175:                                   ; preds = %._crit_edge175.loopexit, %.preheader45
  %i_edgePtr.2.lcssa = phi i64 [ %i_edgePtr.1177, %.preheader45 ], [ %i_edgePtr.3.lcssa, %._crit_edge175.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond314 = icmp eq i64 %indvars.iv.next, %190
  br i1 %exitcond314, label %._crit_edge180, label %.preheader45

._crit_edge180:                                   ; preds = %._crit_edge175
  %i_edgePtr.2.lcssa.lcssa = phi i64 [ %i_edgePtr.2.lcssa, %._crit_edge175 ]
  %235 = icmp eq i64 %190, 1
  br i1 %235, label %.loopexit46, label %._crit_edge180.thread

._crit_edge180.thread:                            ; preds = %._crit_edge180, %.lr.ph189
  %i_edgePtr.1.lcssa340 = phi i64 [ %i_edgePtr.2.lcssa.lcssa, %._crit_edge180 ], [ %i_edgePtr.0188, %.lr.ph189 ]
  %236 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %237 = shl i64 %190, 1
  %238 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %239 = mul nsw i64 %237, %238
  %240 = urem i64 %236, %239
  %241 = icmp sgt i64 %240, 0
  br i1 %241, label %.lr.ph185.preheader, label %.loopexit46

.lr.ph185.preheader:                              ; preds = %._crit_edge180.thread
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %268, %.lr.ph185.preheader
  %i_edgePtr.4183 = phi i64 [ %i_edgePtr.5, %268 ], [ %i_edgePtr.1.lcssa340, %.lr.ph185.preheader ]
  %i_paralEdge.0182 = phi i64 [ %269, %268 ], [ 0, %.lr.ph185.preheader ]
  %242 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %243 = urem i64 %242, %190
  %244 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %245 = urem i64 %244, %190
  %246 = icmp eq i64 %243, %245
  br i1 %246, label %268, label %247

; <label>:247                                     ; preds = %.lr.ph185
  %248 = getelementptr inbounds i64*, i64** %174, i64 %243
  %249 = load i64*, i64** %248, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 %245
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %253 = icmp ult i64 %251, %252
  br i1 %253, label %254, label %268

; <label>:254                                     ; preds = %247
  %255 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %256 = urem i64 %255, 1000
  %257 = uitofp i64 %256 to float
  %258 = fdiv float %257, 1.000000e+03
  %259 = fcmp ult float %258, %160
  br i1 %259, label %268, label %260

; <label>:260                                     ; preds = %254
  %261 = add nsw i64 %243, %192
  %262 = getelementptr inbounds i64, i64* %163, i64 %i_edgePtr.4183
  store i64 %261, i64* %262, align 8
  %263 = add nsw i64 %245, %192
  %264 = getelementptr inbounds i64, i64* %165, i64 %i_edgePtr.4183
  store i64 %263, i64* %264, align 8
  %265 = add nsw i64 %i_edgePtr.4183, 1
  %266 = load i64, i64* %250, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %250, align 8
  br label %268

; <label>:268                                     ; preds = %260, %254, %247, %.lr.ph185
  %i_edgePtr.5 = phi i64 [ %265, %260 ], [ %i_edgePtr.4183, %254 ], [ %i_edgePtr.4183, %247 ], [ %i_edgePtr.4183, %.lr.ph185 ]
  %269 = add nuw nsw i64 %i_paralEdge.0182, 1
  %exitcond315 = icmp eq i64 %269, %240
  br i1 %exitcond315, label %.loopexit46.loopexit, label %.lr.ph185

.loopexit46.loopexit:                             ; preds = %268
  %i_edgePtr.5.lcssa = phi i64 [ %i_edgePtr.5, %268 ]
  br label %.loopexit46

.loopexit46:                                      ; preds = %.loopexit46.loopexit, %._crit_edge180.thread, %._crit_edge180
  %i_edgePtr.6 = phi i64 [ %i_edgePtr.2.lcssa.lcssa, %._crit_edge180 ], [ %i_edgePtr.1.lcssa340, %._crit_edge180.thread ], [ %i_edgePtr.5.lcssa, %.loopexit46.loopexit ]
  %270 = add nuw nsw i64 %i_clique.0187, 1
  %exitcond316 = icmp eq i64 %270, %92
  br i1 %exitcond316, label %.preheader44.loopexit, label %.lr.ph189

.lr.ph170:                                        ; preds = %.lr.ph170, %.lr.ph170.preheader
  %i.7169 = phi i64 [ %274, %.lr.ph170 ], [ 0, %.lr.ph170.preheader ]
  %271 = getelementptr inbounds i64*, i64** %174, i64 %i.7169
  %272 = bitcast i64** %271 to i8**
  %273 = load i8*, i8** %272, align 8
  tail call void @free(i8* %273) #6
  %274 = add nuw nsw i64 %i.7169, 1
  %275 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %276 = icmp slt i64 %274, %275
  br i1 %276, label %.lr.ph170, label %._crit_edge171.loopexit

._crit_edge171.loopexit:                          ; preds = %.lr.ph170
  br label %._crit_edge171

._crit_edge171:                                   ; preds = %._crit_edge171.loopexit, %.preheader44
  tail call void @free(i8* %173) #6
  %277 = load i64, i64* @SCALE, align 8
  %278 = icmp slt i64 %277, 10
  br i1 %278, label %279, label %283

; <label>:279                                     ; preds = %._crit_edge171
  %280 = shl i64 %i_edgePtr.0.lcssa, 4
  %281 = tail call noalias i8* @malloc(i64 %280) #6
  %282 = tail call noalias i8* @malloc(i64 %280) #6
  br label %291

; <label>:283                                     ; preds = %._crit_edge171
  %284 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %285 = load i64, i64* @TOT_VERTICES, align 8
  %286 = mul i64 %285, %284
  %287 = add i64 %286, %i_edgePtr.0.lcssa
  %288 = shl i64 %287, 3
  %289 = tail call noalias i8* @malloc(i64 %288) #6
  %290 = tail call noalias i8* @malloc(i64 %288) #6
  br label %291

; <label>:291                                     ; preds = %283, %279
  %endVertex.0.in = phi i8* [ %282, %279 ], [ %290, %283 ]
  %startVertex.0.in = phi i8* [ %281, %279 ], [ %289, %283 ]
  %startVertex.0 = bitcast i8* %startVertex.0.in to i64*
  %endVertex.0 = bitcast i8* %endVertex.0.in to i64*
  %292 = icmp eq i8* %startVertex.0.in, null
  br i1 %292, label %293, label %294

; <label>:293                                     ; preds = %291
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10.75, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 367, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

; <label>:294                                     ; preds = %291
  %295 = icmp eq i8* %endVertex.0.in, null
  br i1 %295, label %298, label %.preheader43

.preheader43:                                     ; preds = %294
  %296 = icmp eq i64 %i_edgePtr.0.lcssa, 0
  br i1 %296, label %.preheader42, label %.lr.ph168.preheader

.lr.ph168.preheader:                              ; preds = %.preheader43
  %297 = shl i64 %i_edgePtr.0.lcssa, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %startVertex.0.in, i8* nonnull %162, i64 %297, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %endVertex.0.in, i8* nonnull %164, i64 %297, i32 8, i1 false)
  br label %.preheader42

; <label>:298                                     ; preds = %294
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 368, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

.preheader42:                                     ; preds = %.lr.ph168.preheader, %.preheader43
  %299 = load i64, i64* @TOT_VERTICES, align 8
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %._crit_edge145, label %.preheader38.preheader

.preheader38.preheader:                           ; preds = %.preheader42
  br label %.preheader38

.preheader38:                                     ; preds = %._crit_edge161, %.preheader38.preheader
  %301 = phi i64 [ %510, %._crit_edge161 ], [ %299, %.preheader38.preheader ]
  %i.9164 = phi i64 [ %511, %._crit_edge161 ], [ 0, %.preheader38.preheader ]
  %i_edgePtr.7163 = phi i64 [ %i_edgePtr.8.lcssa, %._crit_edge161 ], [ 0, %.preheader38.preheader ]
  br label %.outer39

.preheader26:                                     ; preds = %._crit_edge161
  %i_edgePtr.8.lcssa.lcssa = phi i64 [ %i_edgePtr.8.lcssa, %._crit_edge161 ]
  %302 = icmp eq i64 %i_edgePtr.8.lcssa.lcssa, 0
  br i1 %302, label %._crit_edge145, label %.lr.ph144.preheader

.lr.ph144.preheader:                              ; preds = %.preheader26
  %303 = shl i64 %i_edgePtr.0.lcssa, 3
  %scevgep = getelementptr i8, i8* %startVertex.0.in, i64 %303
  %304 = shl i64 %i_edgePtr.8.lcssa.lcssa, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep, i8* nonnull %162, i64 %304, i32 8, i1 false)
  %scevgep319 = getelementptr i8, i8* %endVertex.0.in, i64 %303
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep319, i8* nonnull %164, i64 %304, i32 8, i1 false)
  br label %._crit_edge145

.outer39.loopexit:                                ; preds = %.outer40.split.us.split
  br label %.outer39.backedge

.outer39.backedge:                                ; preds = %.outer39.loopexit615, %.outer39.loopexit
  %305 = phi i64 [ %.lcssa741, %.outer39.loopexit ], [ %.lcssa742, %.outer39.loopexit615 ]
  %h.0.ph41735 = phi i64 [ %h.0.ph41.lcssa731, %.outer39.loopexit ], [ %h.0.ph41.lcssa732, %.outer39.loopexit615 ]
  br label %.outer39

.outer39.loopexit615:                             ; preds = %.outer40.split.us.split.us
  %.lcssa742 = phi i64 [ %309, %.outer40.split.us.split.us ]
  %h.0.ph41.lcssa732 = phi i64 [ %h.0.ph41, %.outer40.split.us.split.us ]
  br label %.outer39.backedge

.outer39:                                         ; preds = %.outer39.backedge, %.preheader38
  %l.0.ph = phi i64 [ 0, %.preheader38 ], [ %305, %.outer39.backedge ]
  %h.0.ph = phi i64 [ %92, %.preheader38 ], [ %h.0.ph41735, %.outer39.backedge ]
  br label %.outer40

.outer40:                                         ; preds = %.us-lcssa.us, %.outer39
  %h.0.ph41 = phi i64 [ %h.0.ph, %.outer39 ], [ %309, %.us-lcssa.us ]
  %306 = sub nsw i64 %h.0.ph41, %l.0.ph
  %307 = icmp sgt i64 %306, 1
  %308 = add nsw i64 %h.0.ph41, %l.0.ph
  %309 = sdiv i64 %308, 2
  br i1 %307, label %.outer40.split.us, label %.thread.loopexit

.outer40.split.us:                                ; preds = %.outer40
  %310 = getelementptr inbounds i64, i64* %73, i64 %309
  %311 = icmp sgt i64 %308, 1
  %312 = load i64, i64* %310, align 8
  %313 = icmp ult i64 %i.9164, %312
  br i1 %311, label %.outer40.split.us.split.us, label %.outer40.split.us.split.preheader

.outer40.split.us.split.preheader:                ; preds = %.outer40.split.us
  %.lcssa744 = phi i1 [ %313, %.outer40.split.us ]
  %.lcssa741 = phi i64 [ %309, %.outer40.split.us ]
  %h.0.ph41.lcssa731 = phi i64 [ %h.0.ph41, %.outer40.split.us ]
  br label %.outer40.split.us.split

.outer40.split.us.split.us:                       ; preds = %.outer40.split.us
  br i1 %313, label %.us-lcssa.us, label %.outer39.loopexit615

.outer40.split.us.split:                          ; preds = %.outer40.split.us.split, %.outer40.split.us.split.preheader
  br i1 %.lcssa744, label %.outer40.split.us.split, label %.outer39.loopexit

.us-lcssa.us:                                     ; preds = %.outer40.split.us.split.us
  %314 = add nsw i64 %309, -1
  %315 = getelementptr inbounds i64, i64* %73, i64 %314
  %316 = load i64, i64* %315, align 8
  %317 = icmp ult i64 %i.9164, %316
  br i1 %317, label %.outer40, label %318

; <label>:318                                     ; preds = %.us-lcssa.us
  %l.0.ph.lcssa748 = phi i64 [ %l.0.ph, %.us-lcssa.us ]
  %.lcssa747 = phi i64 [ %316, %.us-lcssa.us ]
  %.lcssa739 = phi i64 [ %308, %.us-lcssa.us ]
  %h.0.ph41.lcssa733 = phi i64 [ %h.0.ph41, %.us-lcssa.us ]
  %.off10 = add i64 %.lcssa739, 1
  %319 = icmp ult i64 %.off10, 3
  br i1 %319, label %.thread.preheader, label %.loopexit37

.thread.loopexit:                                 ; preds = %.outer40
  %l.0.ph.lcssa = phi i64 [ %l.0.ph, %.outer40 ]
  %h.0.ph41.lcssa = phi i64 [ %h.0.ph41, %.outer40 ]
  br label %.thread.preheader

.thread.preheader:                                ; preds = %.thread.loopexit, %318
  %l.0.ph749 = phi i64 [ %l.0.ph.lcssa748, %318 ], [ %l.0.ph.lcssa, %.thread.loopexit ]
  %h.0.ph41734 = phi i64 [ %h.0.ph41.lcssa733, %318 ], [ %h.0.ph41.lcssa, %.thread.loopexit ]
  br label %.thread

.thread:                                          ; preds = %321, %.thread.preheader
  %m6.0.in = phi i64 [ %m6.0, %321 ], [ %l.0.ph749, %.thread.preheader ]
  %m6.0 = add nsw i64 %m6.0.in, 1
  %320 = icmp slt i64 %m6.0, %h.0.ph41734
  br i1 %320, label %321, label %.loopexit37.loopexit

; <label>:321                                     ; preds = %.thread
  %322 = getelementptr inbounds i64, i64* %73, i64 %m6.0
  %323 = load i64, i64* %322, align 8
  %324 = icmp ult i64 %i.9164, %323
  br i1 %324, label %.loopexit37.loopexit, label %.thread

.loopexit37.loopexit:                             ; preds = %321, %.thread
  %m6.0.in.lcssa = phi i64 [ %m6.0.in, %321 ], [ %m6.0.in, %.thread ]
  %.phi.trans.insert = getelementptr inbounds i64, i64* %73, i64 %m6.0.in.lcssa
  %.pre322 = load i64, i64* %.phi.trans.insert, align 8
  br label %.loopexit37

.loopexit37:                                      ; preds = %.loopexit37.loopexit, %318
  %325 = phi i64 [ %.lcssa747, %318 ], [ %.pre322, %.loopexit37.loopexit ]
  %326 = icmp ugt i64 %301, 1
  br i1 %326, label %.lr.ph160.preheader, label %._crit_edge161

.lr.ph160.preheader:                              ; preds = %.loopexit37
  %327 = load float, float* @PROB_INTERCL_EDGES, align 4
  %broadcast.splatinsert548 = insertelement <2 x i64> undef, i64 %i.9164, i32 0
  %broadcast.splat549 = shufflevector <2 x i64> %broadcast.splatinsert548, <2 x i64> undef, <2 x i32> zeroinitializer
  %broadcast.splatinsert578 = insertelement <2 x i64> undef, i64 %i.9164, i32 0
  %broadcast.splat579 = shufflevector <2 x i64> %broadcast.splatinsert578, <2 x i64> undef, <2 x i32> zeroinitializer
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.loopexit27, %.lr.ph160.preheader
  %i_edgePtr.8158 = phi i64 [ %i_edgePtr.12, %.loopexit27 ], [ %i_edgePtr.7163, %.lr.ph160.preheader ]
  %p.0157 = phi float [ %507, %.loopexit27 ], [ %327, %.lr.ph160.preheader ]
  %d.0156 = phi i64 [ %506, %.loopexit27 ], [ 1, %.lr.ph160.preheader ]
  %328 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %329 = urem i64 %328, 1000
  %330 = uitofp i64 %329 to float
  %331 = fdiv float %330, 1.000000e+03
  %332 = fcmp ugt float %331, %p.0157
  br i1 %332, label %.loopexit32, label %333

; <label>:333                                     ; preds = %.lr.ph160
  %334 = add i64 %d.0156, %i.9164
  %335 = load i64, i64* @TOT_VERTICES, align 8
  %336 = urem i64 %334, %335
  br label %.outer34

.outer34.loopexit:                                ; preds = %.outer35.split.us.split
  br label %.outer34.backedge

.outer34.backedge:                                ; preds = %.outer34.loopexit612, %.outer34.loopexit
  %337 = phi i64 [ %.lcssa760, %.outer34.loopexit ], [ %.lcssa761, %.outer34.loopexit612 ]
  %h.1.ph36754 = phi i64 [ %h.1.ph36.lcssa750, %.outer34.loopexit ], [ %h.1.ph36.lcssa751, %.outer34.loopexit612 ]
  br label %.outer34

.outer34.loopexit612:                             ; preds = %.outer35.split.us.split.us
  %.lcssa761 = phi i64 [ %341, %.outer35.split.us.split.us ]
  %h.1.ph36.lcssa751 = phi i64 [ %h.1.ph36, %.outer35.split.us.split.us ]
  br label %.outer34.backedge

.outer34:                                         ; preds = %.outer34.backedge, %333
  %l.1.ph = phi i64 [ 0, %333 ], [ %337, %.outer34.backedge ]
  %h.1.ph = phi i64 [ %92, %333 ], [ %h.1.ph36754, %.outer34.backedge ]
  br label %.outer35

.outer35:                                         ; preds = %.us-lcssa216.us, %.outer34
  %h.1.ph36 = phi i64 [ %h.1.ph, %.outer34 ], [ %341, %.us-lcssa216.us ]
  %338 = sub nsw i64 %h.1.ph36, %l.1.ph
  %339 = icmp sgt i64 %338, 1
  %340 = add nsw i64 %h.1.ph36, %l.1.ph
  %341 = sdiv i64 %340, 2
  br i1 %339, label %.outer35.split.us, label %.thread7.loopexit

.outer35.split.us:                                ; preds = %.outer35
  %342 = getelementptr inbounds i64, i64* %73, i64 %341
  %343 = icmp sgt i64 %340, 1
  %344 = load i64, i64* %342, align 8
  %345 = icmp ult i64 %336, %344
  br i1 %343, label %.outer35.split.us.split.us, label %.outer35.split.us.split.preheader

.outer35.split.us.split.preheader:                ; preds = %.outer35.split.us
  %.lcssa763 = phi i1 [ %345, %.outer35.split.us ]
  %.lcssa760 = phi i64 [ %341, %.outer35.split.us ]
  %h.1.ph36.lcssa750 = phi i64 [ %h.1.ph36, %.outer35.split.us ]
  br label %.outer35.split.us.split

.outer35.split.us.split.us:                       ; preds = %.outer35.split.us
  br i1 %345, label %.us-lcssa216.us, label %.outer34.loopexit612

.outer35.split.us.split:                          ; preds = %.outer35.split.us.split, %.outer35.split.us.split.preheader
  br i1 %.lcssa763, label %.outer35.split.us.split, label %.outer34.loopexit

.us-lcssa216.us:                                  ; preds = %.outer35.split.us.split.us
  %346 = add nsw i64 %341, -1
  %347 = getelementptr inbounds i64, i64* %73, i64 %346
  %348 = load i64, i64* %347, align 8
  %349 = icmp ugt i64 %348, %336
  br i1 %349, label %.outer35, label %350

; <label>:350                                     ; preds = %.us-lcssa216.us
  %l.1.ph.lcssa767 = phi i64 [ %l.1.ph, %.us-lcssa216.us ]
  %.lcssa766 = phi i64 [ %348, %.us-lcssa216.us ]
  %.lcssa758 = phi i64 [ %340, %.us-lcssa216.us ]
  %h.1.ph36.lcssa752 = phi i64 [ %h.1.ph36, %.us-lcssa216.us ]
  %.off9 = add i64 %.lcssa758, 1
  %351 = icmp ult i64 %.off9, 3
  br i1 %351, label %.thread7.preheader, label %.loopexit33

.thread7.loopexit:                                ; preds = %.outer35
  %l.1.ph.lcssa = phi i64 [ %l.1.ph, %.outer35 ]
  %h.1.ph36.lcssa = phi i64 [ %h.1.ph36, %.outer35 ]
  br label %.thread7.preheader

.thread7.preheader:                               ; preds = %.thread7.loopexit, %350
  %l.1.ph768 = phi i64 [ %l.1.ph.lcssa767, %350 ], [ %l.1.ph.lcssa, %.thread7.loopexit ]
  %h.1.ph36753 = phi i64 [ %h.1.ph36.lcssa752, %350 ], [ %h.1.ph36.lcssa, %.thread7.loopexit ]
  br label %.thread7

.thread7:                                         ; preds = %353, %.thread7.preheader
  %m10.0.in = phi i64 [ %m10.0, %353 ], [ %l.1.ph768, %.thread7.preheader ]
  %m10.0 = add nsw i64 %m10.0.in, 1
  %352 = icmp slt i64 %m10.0, %h.1.ph36753
  br i1 %352, label %353, label %.loopexit33.loopexit

; <label>:353                                     ; preds = %.thread7
  %354 = getelementptr inbounds i64, i64* %73, i64 %m10.0
  %355 = load i64, i64* %354, align 8
  %356 = icmp ult i64 %336, %355
  br i1 %356, label %.loopexit33.loopexit, label %.thread7

.loopexit33.loopexit:                             ; preds = %353, %.thread7
  %m10.0.in.lcssa = phi i64 [ %m10.0.in, %353 ], [ %m10.0.in, %.thread7 ]
  %.phi.trans.insert324 = getelementptr inbounds i64, i64* %73, i64 %m10.0.in.lcssa
  %.pre325 = load i64, i64* %.phi.trans.insert324, align 8
  br label %.loopexit33

.loopexit33:                                      ; preds = %.loopexit33.loopexit, %350
  %357 = phi i64 [ %.lcssa766, %350 ], [ %.pre325, %.loopexit33.loopexit ]
  %358 = icmp eq i64 %325, %357
  br i1 %358, label %.loopexit32, label %359

; <label>:359                                     ; preds = %.loopexit33
  %360 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %361 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %362 = urem i64 %360, %361
  %363 = add i64 %362, 1
  %364 = icmp sgt i64 %363, 0
  br i1 %364, label %.lr.ph149.preheader, label %.loopexit32

.lr.ph149.preheader:                              ; preds = %359
  %365 = add i64 %i_edgePtr.8158, 1
  %366 = add i64 %362, 1
  %min.iters.check557 = icmp ult i64 %366, 4
  br i1 %min.iters.check557, label %.lr.ph149.preheader614, label %min.iters.checked558

min.iters.checked558:                             ; preds = %.lr.ph149.preheader
  %n.vec560 = and i64 %366, -4
  %cmp.zero561 = icmp eq i64 %n.vec560, 0
  %ind.end566 = add i64 %i_edgePtr.8158, %n.vec560
  br i1 %cmp.zero561, label %.lr.ph149.preheader614, label %vector.ph562

vector.ph562:                                     ; preds = %min.iters.checked558
  %broadcast.splatinsert580 = insertelement <2 x i64> undef, i64 %336, i32 0
  %broadcast.splat581 = shufflevector <2 x i64> %broadcast.splatinsert580, <2 x i64> undef, <2 x i32> zeroinitializer
  %367 = add i64 %362, -3
  %368 = lshr i64 %367, 2
  %369 = add nuw nsw i64 %368, 1
  %xtraiter709 = and i64 %369, 3
  %lcmp.mod710 = icmp eq i64 %xtraiter709, 0
  br i1 %lcmp.mod710, label %vector.ph562.split, label %vector.body554.prol.preheader

vector.body554.prol.preheader:                    ; preds = %vector.ph562
  br label %vector.body554.prol

vector.body554.prol:                              ; preds = %vector.body554.prol, %vector.body554.prol.preheader
  %index563.prol = phi i64 [ %index.next564.prol, %vector.body554.prol ], [ 0, %vector.body554.prol.preheader ]
  %prol.iter711 = phi i64 [ %prol.iter711.sub, %vector.body554.prol ], [ %xtraiter709, %vector.body554.prol.preheader ]
  %offset.idx569.prol = add i64 %i_edgePtr.8158, %index563.prol
  %370 = getelementptr inbounds i64, i64* %163, i64 %offset.idx569.prol
  %371 = bitcast i64* %370 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %371, align 8
  %372 = getelementptr i64, i64* %370, i64 2
  %373 = bitcast i64* %372 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %373, align 8
  %374 = getelementptr inbounds i64, i64* %165, i64 %offset.idx569.prol
  %375 = bitcast i64* %374 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %375, align 8
  %376 = getelementptr i64, i64* %374, i64 2
  %377 = bitcast i64* %376 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %377, align 8
  %index.next564.prol = add i64 %index563.prol, 4
  %prol.iter711.sub = add i64 %prol.iter711, -1
  %prol.iter711.cmp = icmp eq i64 %prol.iter711.sub, 0
  br i1 %prol.iter711.cmp, label %vector.ph562.split.loopexit, label %vector.body554.prol, !llvm.loop !27

vector.ph562.split.loopexit:                      ; preds = %vector.body554.prol
  %index.next564.prol.lcssa = phi i64 [ %index.next564.prol, %vector.body554.prol ]
  br label %vector.ph562.split

vector.ph562.split:                               ; preds = %vector.ph562.split.loopexit, %vector.ph562
  %index563.unr = phi i64 [ 0, %vector.ph562 ], [ %index.next564.prol.lcssa, %vector.ph562.split.loopexit ]
  %378 = icmp ult i64 %367, 12
  br i1 %378, label %middle.block555, label %vector.ph562.split.split

vector.ph562.split.split:                         ; preds = %vector.ph562.split
  br label %vector.body554

vector.body554:                                   ; preds = %vector.body554, %vector.ph562.split.split
  %index563 = phi i64 [ %index563.unr, %vector.ph562.split.split ], [ %index.next564.3, %vector.body554 ]
  %offset.idx569 = add i64 %i_edgePtr.8158, %index563
  %379 = getelementptr inbounds i64, i64* %163, i64 %offset.idx569
  %380 = bitcast i64* %379 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %380, align 8
  %381 = getelementptr i64, i64* %379, i64 2
  %382 = bitcast i64* %381 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %382, align 8
  %383 = getelementptr inbounds i64, i64* %165, i64 %offset.idx569
  %384 = bitcast i64* %383 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %384, align 8
  %385 = getelementptr i64, i64* %383, i64 2
  %386 = bitcast i64* %385 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %386, align 8
  %index.next564 = add i64 %index563, 4
  %offset.idx569.1 = add i64 %i_edgePtr.8158, %index.next564
  %387 = getelementptr inbounds i64, i64* %163, i64 %offset.idx569.1
  %388 = bitcast i64* %387 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %388, align 8
  %389 = getelementptr i64, i64* %387, i64 2
  %390 = bitcast i64* %389 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %390, align 8
  %391 = getelementptr inbounds i64, i64* %165, i64 %offset.idx569.1
  %392 = bitcast i64* %391 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %392, align 8
  %393 = getelementptr i64, i64* %391, i64 2
  %394 = bitcast i64* %393 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %394, align 8
  %index.next564.1 = add i64 %index563, 8
  %offset.idx569.2 = add i64 %i_edgePtr.8158, %index.next564.1
  %395 = getelementptr inbounds i64, i64* %163, i64 %offset.idx569.2
  %396 = bitcast i64* %395 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %396, align 8
  %397 = getelementptr i64, i64* %395, i64 2
  %398 = bitcast i64* %397 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %398, align 8
  %399 = getelementptr inbounds i64, i64* %165, i64 %offset.idx569.2
  %400 = bitcast i64* %399 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %400, align 8
  %401 = getelementptr i64, i64* %399, i64 2
  %402 = bitcast i64* %401 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %402, align 8
  %index.next564.2 = add i64 %index563, 12
  %offset.idx569.3 = add i64 %i_edgePtr.8158, %index.next564.2
  %403 = getelementptr inbounds i64, i64* %163, i64 %offset.idx569.3
  %404 = bitcast i64* %403 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %404, align 8
  %405 = getelementptr i64, i64* %403, i64 2
  %406 = bitcast i64* %405 to <2 x i64>*
  store <2 x i64> %broadcast.splat579, <2 x i64>* %406, align 8
  %407 = getelementptr inbounds i64, i64* %165, i64 %offset.idx569.3
  %408 = bitcast i64* %407 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %408, align 8
  %409 = getelementptr i64, i64* %407, i64 2
  %410 = bitcast i64* %409 to <2 x i64>*
  store <2 x i64> %broadcast.splat581, <2 x i64>* %410, align 8
  %index.next564.3 = add i64 %index563, 16
  %411 = icmp eq i64 %index.next564.3, %n.vec560
  br i1 %411, label %middle.block555.unr-lcssa, label %vector.body554, !llvm.loop !28

middle.block555.unr-lcssa:                        ; preds = %vector.body554
  br label %middle.block555

middle.block555:                                  ; preds = %middle.block555.unr-lcssa, %vector.ph562.split
  %cmp.n568 = icmp eq i64 %366, %n.vec560
  br i1 %cmp.n568, label %.loopexit32.loopexit, label %.lr.ph149.preheader614

.lr.ph149.preheader614:                           ; preds = %middle.block555, %min.iters.checked558, %.lr.ph149.preheader
  %i_edgePtr.9147.ph = phi i64 [ %i_edgePtr.8158, %min.iters.checked558 ], [ %i_edgePtr.8158, %.lr.ph149.preheader ], [ %ind.end566, %middle.block555 ]
  %j13.0146.ph = phi i64 [ 0, %min.iters.checked558 ], [ 0, %.lr.ph149.preheader ], [ %n.vec560, %middle.block555 ]
  br label %.lr.ph149

.lr.ph149:                                        ; preds = %.lr.ph149, %.lr.ph149.preheader614
  %i_edgePtr.9147 = phi i64 [ %414, %.lr.ph149 ], [ %i_edgePtr.9147.ph, %.lr.ph149.preheader614 ]
  %j13.0146 = phi i64 [ %415, %.lr.ph149 ], [ %j13.0146.ph, %.lr.ph149.preheader614 ]
  %412 = getelementptr inbounds i64, i64* %163, i64 %i_edgePtr.9147
  store i64 %i.9164, i64* %412, align 8
  %413 = getelementptr inbounds i64, i64* %165, i64 %i_edgePtr.9147
  store i64 %336, i64* %413, align 8
  %414 = add nsw i64 %i_edgePtr.9147, 1
  %415 = add nuw nsw i64 %j13.0146, 1
  %exitcond310 = icmp eq i64 %415, %363
  br i1 %exitcond310, label %.loopexit32.loopexit.loopexit, label %.lr.ph149, !llvm.loop !29

.loopexit32.loopexit.loopexit:                    ; preds = %.lr.ph149
  br label %.loopexit32.loopexit

.loopexit32.loopexit:                             ; preds = %.loopexit32.loopexit.loopexit, %middle.block555
  %416 = add i64 %365, %362
  br label %.loopexit32

.loopexit32:                                      ; preds = %.loopexit32.loopexit, %359, %.loopexit33, %.lr.ph160
  %i_edgePtr.10 = phi i64 [ %i_edgePtr.8158, %.loopexit33 ], [ %i_edgePtr.8158, %.lr.ph160 ], [ %i_edgePtr.8158, %359 ], [ %416, %.loopexit32.loopexit ]
  %417 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %418 = urem i64 %417, 1000
  %419 = uitofp i64 %418 to float
  %420 = fdiv float %419, 1.000000e+03
  %421 = fcmp ugt float %420, %p.0157
  br i1 %421, label %.loopexit27, label %422

; <label>:422                                     ; preds = %.loopexit32
  %423 = sub i64 %i.9164, %d.0156
  %424 = load i64, i64* @TOT_VERTICES, align 8
  %425 = urem i64 %423, %424
  br label %.outer29

.outer29.loopexit:                                ; preds = %.outer30.split.us.split
  br label %.outer29.backedge

.outer29.backedge:                                ; preds = %.outer29.loopexit611, %.outer29.loopexit
  %426 = phi i64 [ %.lcssa779, %.outer29.loopexit ], [ %.lcssa780, %.outer29.loopexit611 ]
  %h.2.ph31773 = phi i64 [ %h.2.ph31.lcssa769, %.outer29.loopexit ], [ %h.2.ph31.lcssa770, %.outer29.loopexit611 ]
  br label %.outer29

.outer29.loopexit611:                             ; preds = %.outer30.split.us.split.us
  %.lcssa780 = phi i64 [ %430, %.outer30.split.us.split.us ]
  %h.2.ph31.lcssa770 = phi i64 [ %h.2.ph31, %.outer30.split.us.split.us ]
  br label %.outer29.backedge

.outer29:                                         ; preds = %.outer29.backedge, %422
  %l.2.ph = phi i64 [ 0, %422 ], [ %426, %.outer29.backedge ]
  %h.2.ph = phi i64 [ %92, %422 ], [ %h.2.ph31773, %.outer29.backedge ]
  br label %.outer30

.outer30:                                         ; preds = %.us-lcssa217.us, %.outer29
  %h.2.ph31 = phi i64 [ %h.2.ph, %.outer29 ], [ %430, %.us-lcssa217.us ]
  %427 = sub nsw i64 %h.2.ph31, %l.2.ph
  %428 = icmp sgt i64 %427, 1
  %429 = add nsw i64 %h.2.ph31, %l.2.ph
  %430 = sdiv i64 %429, 2
  br i1 %428, label %.outer30.split.us, label %.thread8.loopexit

.outer30.split.us:                                ; preds = %.outer30
  %431 = getelementptr inbounds i64, i64* %73, i64 %430
  %432 = icmp sgt i64 %429, 1
  %433 = load i64, i64* %431, align 8
  %434 = icmp ult i64 %425, %433
  br i1 %432, label %.outer30.split.us.split.us, label %.outer30.split.us.split.preheader

.outer30.split.us.split.preheader:                ; preds = %.outer30.split.us
  %.lcssa782 = phi i1 [ %434, %.outer30.split.us ]
  %.lcssa779 = phi i64 [ %430, %.outer30.split.us ]
  %h.2.ph31.lcssa769 = phi i64 [ %h.2.ph31, %.outer30.split.us ]
  br label %.outer30.split.us.split

.outer30.split.us.split.us:                       ; preds = %.outer30.split.us
  br i1 %434, label %.us-lcssa217.us, label %.outer29.loopexit611

.outer30.split.us.split:                          ; preds = %.outer30.split.us.split, %.outer30.split.us.split.preheader
  br i1 %.lcssa782, label %.outer30.split.us.split, label %.outer29.loopexit

.us-lcssa217.us:                                  ; preds = %.outer30.split.us.split.us
  %435 = add nsw i64 %430, -1
  %436 = getelementptr inbounds i64, i64* %73, i64 %435
  %437 = load i64, i64* %436, align 8
  %438 = icmp ugt i64 %437, %425
  br i1 %438, label %.outer30, label %439

; <label>:439                                     ; preds = %.us-lcssa217.us
  %l.2.ph.lcssa786 = phi i64 [ %l.2.ph, %.us-lcssa217.us ]
  %.lcssa785 = phi i64 [ %437, %.us-lcssa217.us ]
  %.lcssa777 = phi i64 [ %429, %.us-lcssa217.us ]
  %h.2.ph31.lcssa771 = phi i64 [ %h.2.ph31, %.us-lcssa217.us ]
  %.off = add i64 %.lcssa777, 1
  %440 = icmp ult i64 %.off, 3
  br i1 %440, label %.thread8.preheader, label %.loopexit28

.thread8.loopexit:                                ; preds = %.outer30
  %l.2.ph.lcssa = phi i64 [ %l.2.ph, %.outer30 ]
  %h.2.ph31.lcssa = phi i64 [ %h.2.ph31, %.outer30 ]
  br label %.thread8.preheader

.thread8.preheader:                               ; preds = %.thread8.loopexit, %439
  %l.2.ph787 = phi i64 [ %l.2.ph.lcssa786, %439 ], [ %l.2.ph.lcssa, %.thread8.loopexit ]
  %h.2.ph31772 = phi i64 [ %h.2.ph31.lcssa771, %439 ], [ %h.2.ph31.lcssa, %.thread8.loopexit ]
  br label %.thread8

.thread8:                                         ; preds = %442, %.thread8.preheader
  %m16.0.in = phi i64 [ %m16.0, %442 ], [ %l.2.ph787, %.thread8.preheader ]
  %m16.0 = add nsw i64 %m16.0.in, 1
  %441 = icmp slt i64 %m16.0, %h.2.ph31772
  br i1 %441, label %442, label %.loopexit28.loopexit

; <label>:442                                     ; preds = %.thread8
  %443 = getelementptr inbounds i64, i64* %73, i64 %m16.0
  %444 = load i64, i64* %443, align 8
  %445 = icmp ult i64 %425, %444
  br i1 %445, label %.loopexit28.loopexit, label %.thread8

.loopexit28.loopexit:                             ; preds = %442, %.thread8
  %m16.0.in.lcssa = phi i64 [ %m16.0.in, %442 ], [ %m16.0.in, %.thread8 ]
  %.phi.trans.insert327 = getelementptr inbounds i64, i64* %73, i64 %m16.0.in.lcssa
  %.pre328 = load i64, i64* %.phi.trans.insert327, align 8
  br label %.loopexit28

.loopexit28:                                      ; preds = %.loopexit28.loopexit, %439
  %446 = phi i64 [ %.lcssa785, %439 ], [ %.pre328, %.loopexit28.loopexit ]
  %447 = icmp eq i64 %325, %446
  br i1 %447, label %.loopexit27, label %448

; <label>:448                                     ; preds = %.loopexit28
  %449 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %450 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %451 = urem i64 %449, %450
  %452 = add i64 %451, 1
  %453 = icmp sgt i64 %452, 0
  br i1 %453, label %.lr.ph154.preheader, label %.loopexit27

.lr.ph154.preheader:                              ; preds = %448
  %454 = add i64 %i_edgePtr.10, 1
  %455 = add i64 %451, 1
  %min.iters.check527 = icmp ult i64 %455, 4
  br i1 %min.iters.check527, label %.lr.ph154.preheader613, label %min.iters.checked528

min.iters.checked528:                             ; preds = %.lr.ph154.preheader
  %n.vec530 = and i64 %455, -4
  %cmp.zero531 = icmp eq i64 %n.vec530, 0
  %ind.end536 = add i64 %i_edgePtr.10, %n.vec530
  br i1 %cmp.zero531, label %.lr.ph154.preheader613, label %vector.ph532

vector.ph532:                                     ; preds = %min.iters.checked528
  %broadcast.splatinsert550 = insertelement <2 x i64> undef, i64 %425, i32 0
  %broadcast.splat551 = shufflevector <2 x i64> %broadcast.splatinsert550, <2 x i64> undef, <2 x i32> zeroinitializer
  %456 = add i64 %451, -3
  %457 = lshr i64 %456, 2
  %458 = add nuw nsw i64 %457, 1
  %xtraiter712 = and i64 %458, 3
  %lcmp.mod713 = icmp eq i64 %xtraiter712, 0
  br i1 %lcmp.mod713, label %vector.ph532.split, label %vector.body524.prol.preheader

vector.body524.prol.preheader:                    ; preds = %vector.ph532
  br label %vector.body524.prol

vector.body524.prol:                              ; preds = %vector.body524.prol, %vector.body524.prol.preheader
  %index533.prol = phi i64 [ %index.next534.prol, %vector.body524.prol ], [ 0, %vector.body524.prol.preheader ]
  %prol.iter714 = phi i64 [ %prol.iter714.sub, %vector.body524.prol ], [ %xtraiter712, %vector.body524.prol.preheader ]
  %offset.idx539.prol = add i64 %i_edgePtr.10, %index533.prol
  %459 = getelementptr inbounds i64, i64* %163, i64 %offset.idx539.prol
  %460 = bitcast i64* %459 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %460, align 8
  %461 = getelementptr i64, i64* %459, i64 2
  %462 = bitcast i64* %461 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %462, align 8
  %463 = getelementptr inbounds i64, i64* %165, i64 %offset.idx539.prol
  %464 = bitcast i64* %463 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %464, align 8
  %465 = getelementptr i64, i64* %463, i64 2
  %466 = bitcast i64* %465 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %466, align 8
  %index.next534.prol = add i64 %index533.prol, 4
  %prol.iter714.sub = add i64 %prol.iter714, -1
  %prol.iter714.cmp = icmp eq i64 %prol.iter714.sub, 0
  br i1 %prol.iter714.cmp, label %vector.ph532.split.loopexit, label %vector.body524.prol, !llvm.loop !30

vector.ph532.split.loopexit:                      ; preds = %vector.body524.prol
  %index.next534.prol.lcssa = phi i64 [ %index.next534.prol, %vector.body524.prol ]
  br label %vector.ph532.split

vector.ph532.split:                               ; preds = %vector.ph532.split.loopexit, %vector.ph532
  %index533.unr = phi i64 [ 0, %vector.ph532 ], [ %index.next534.prol.lcssa, %vector.ph532.split.loopexit ]
  %467 = icmp ult i64 %456, 12
  br i1 %467, label %middle.block525, label %vector.ph532.split.split

vector.ph532.split.split:                         ; preds = %vector.ph532.split
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph532.split.split
  %index533 = phi i64 [ %index533.unr, %vector.ph532.split.split ], [ %index.next534.3, %vector.body524 ]
  %offset.idx539 = add i64 %i_edgePtr.10, %index533
  %468 = getelementptr inbounds i64, i64* %163, i64 %offset.idx539
  %469 = bitcast i64* %468 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %469, align 8
  %470 = getelementptr i64, i64* %468, i64 2
  %471 = bitcast i64* %470 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %471, align 8
  %472 = getelementptr inbounds i64, i64* %165, i64 %offset.idx539
  %473 = bitcast i64* %472 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %473, align 8
  %474 = getelementptr i64, i64* %472, i64 2
  %475 = bitcast i64* %474 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %475, align 8
  %index.next534 = add i64 %index533, 4
  %offset.idx539.1 = add i64 %i_edgePtr.10, %index.next534
  %476 = getelementptr inbounds i64, i64* %163, i64 %offset.idx539.1
  %477 = bitcast i64* %476 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %477, align 8
  %478 = getelementptr i64, i64* %476, i64 2
  %479 = bitcast i64* %478 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %479, align 8
  %480 = getelementptr inbounds i64, i64* %165, i64 %offset.idx539.1
  %481 = bitcast i64* %480 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %481, align 8
  %482 = getelementptr i64, i64* %480, i64 2
  %483 = bitcast i64* %482 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %483, align 8
  %index.next534.1 = add i64 %index533, 8
  %offset.idx539.2 = add i64 %i_edgePtr.10, %index.next534.1
  %484 = getelementptr inbounds i64, i64* %163, i64 %offset.idx539.2
  %485 = bitcast i64* %484 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %485, align 8
  %486 = getelementptr i64, i64* %484, i64 2
  %487 = bitcast i64* %486 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %487, align 8
  %488 = getelementptr inbounds i64, i64* %165, i64 %offset.idx539.2
  %489 = bitcast i64* %488 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %489, align 8
  %490 = getelementptr i64, i64* %488, i64 2
  %491 = bitcast i64* %490 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %491, align 8
  %index.next534.2 = add i64 %index533, 12
  %offset.idx539.3 = add i64 %i_edgePtr.10, %index.next534.2
  %492 = getelementptr inbounds i64, i64* %163, i64 %offset.idx539.3
  %493 = bitcast i64* %492 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %493, align 8
  %494 = getelementptr i64, i64* %492, i64 2
  %495 = bitcast i64* %494 to <2 x i64>*
  store <2 x i64> %broadcast.splat549, <2 x i64>* %495, align 8
  %496 = getelementptr inbounds i64, i64* %165, i64 %offset.idx539.3
  %497 = bitcast i64* %496 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %497, align 8
  %498 = getelementptr i64, i64* %496, i64 2
  %499 = bitcast i64* %498 to <2 x i64>*
  store <2 x i64> %broadcast.splat551, <2 x i64>* %499, align 8
  %index.next534.3 = add i64 %index533, 16
  %500 = icmp eq i64 %index.next534.3, %n.vec530
  br i1 %500, label %middle.block525.unr-lcssa, label %vector.body524, !llvm.loop !31

middle.block525.unr-lcssa:                        ; preds = %vector.body524
  br label %middle.block525

middle.block525:                                  ; preds = %middle.block525.unr-lcssa, %vector.ph532.split
  %cmp.n538 = icmp eq i64 %455, %n.vec530
  br i1 %cmp.n538, label %.loopexit27.loopexit, label %.lr.ph154.preheader613

.lr.ph154.preheader613:                           ; preds = %middle.block525, %min.iters.checked528, %.lr.ph154.preheader
  %i_edgePtr.11152.ph = phi i64 [ %i_edgePtr.10, %min.iters.checked528 ], [ %i_edgePtr.10, %.lr.ph154.preheader ], [ %ind.end536, %middle.block525 ]
  %j19.0151.ph = phi i64 [ 0, %min.iters.checked528 ], [ 0, %.lr.ph154.preheader ], [ %n.vec530, %middle.block525 ]
  br label %.lr.ph154

.lr.ph154:                                        ; preds = %.lr.ph154, %.lr.ph154.preheader613
  %i_edgePtr.11152 = phi i64 [ %503, %.lr.ph154 ], [ %i_edgePtr.11152.ph, %.lr.ph154.preheader613 ]
  %j19.0151 = phi i64 [ %504, %.lr.ph154 ], [ %j19.0151.ph, %.lr.ph154.preheader613 ]
  %501 = getelementptr inbounds i64, i64* %163, i64 %i_edgePtr.11152
  store i64 %i.9164, i64* %501, align 8
  %502 = getelementptr inbounds i64, i64* %165, i64 %i_edgePtr.11152
  store i64 %425, i64* %502, align 8
  %503 = add nsw i64 %i_edgePtr.11152, 1
  %504 = add nuw nsw i64 %j19.0151, 1
  %exitcond311 = icmp eq i64 %504, %452
  br i1 %exitcond311, label %.loopexit27.loopexit.loopexit, label %.lr.ph154, !llvm.loop !32

.loopexit27.loopexit.loopexit:                    ; preds = %.lr.ph154
  br label %.loopexit27.loopexit

.loopexit27.loopexit:                             ; preds = %.loopexit27.loopexit.loopexit, %middle.block525
  %505 = add i64 %454, %451
  br label %.loopexit27

.loopexit27:                                      ; preds = %.loopexit27.loopexit, %448, %.loopexit28, %.loopexit32
  %i_edgePtr.12 = phi i64 [ %i_edgePtr.10, %.loopexit28 ], [ %i_edgePtr.10, %.loopexit32 ], [ %i_edgePtr.10, %448 ], [ %505, %.loopexit27.loopexit ]
  %506 = shl i64 %d.0156, 1
  %507 = fmul float %p.0157, 5.000000e-01
  %508 = load i64, i64* @TOT_VERTICES, align 8
  %509 = icmp ult i64 %506, %508
  br i1 %509, label %.lr.ph160, label %._crit_edge161.loopexit

._crit_edge161.loopexit:                          ; preds = %.loopexit27
  %.lcssa788 = phi i64 [ %508, %.loopexit27 ]
  %i_edgePtr.12.lcssa = phi i64 [ %i_edgePtr.12, %.loopexit27 ]
  br label %._crit_edge161

._crit_edge161:                                   ; preds = %._crit_edge161.loopexit, %.loopexit37
  %510 = phi i64 [ %301, %.loopexit37 ], [ %.lcssa788, %._crit_edge161.loopexit ]
  %i_edgePtr.8.lcssa = phi i64 [ %i_edgePtr.7163, %.loopexit37 ], [ %i_edgePtr.12.lcssa, %._crit_edge161.loopexit ]
  %511 = add nuw nsw i64 %i.9164, 1
  %512 = icmp ult i64 %511, %510
  br i1 %512, label %.preheader38, label %.preheader26

._crit_edge145:                                   ; preds = %.lr.ph144.preheader, %.preheader26, %.preheader42
  %i_edgePtr.7.lcssa341 = phi i64 [ %i_edgePtr.8.lcssa.lcssa, %.lr.ph144.preheader ], [ 0, %.preheader26 ], [ 0, %.preheader42 ]
  %513 = add i64 %i_edgePtr.7.lcssa341, %i_edgePtr.0.lcssa
  %514 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %SDGdataPtr, i64 0, i32 4
  store i64 %513, i64* %514, align 8
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @str.1, i64 0, i64 0))
  %515 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13.77, i64 0, i64 0), i64 %i_edgePtr.0.lcssa)
  %516 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14.78, i64 0, i64 0), i64 %i_edgePtr.7.lcssa341)
  %517 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15.79, i64 0, i64 0), i64 %513)
  tail call void @free(i8* %55) #6
  tail call void @free(i8* %72) #6
  tail call void @free(i8* %67) #6
  tail call void @free(i8* %162) #6
  tail call void @free(i8* %164) #6
  %518 = shl i64 %513, 3
  %519 = tail call noalias i8* @malloc(i64 %518) #6
  %520 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %SDGdataPtr, i64 0, i32 2
  %521 = bitcast i64** %520 to i8**
  store i8* %519, i8** %521, align 8
  %522 = icmp eq i8* %519, null
  br i1 %522, label %523, label %524

; <label>:523                                     ; preds = %._crit_edge145
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16.80, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 563, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

; <label>:524                                     ; preds = %._crit_edge145
  %525 = load float, float* @PERC_INT_WEIGHTS, align 4
  %526 = icmp eq i64 %513, 0
  br i1 %526, label %._crit_edge137, label %.lr.ph141.preheader

.lr.ph141.preheader:                              ; preds = %524
  br label %.lr.ph141

.preheader25:                                     ; preds = %551
  %numStrWtEdges.1.lcssa = phi i64 [ %numStrWtEdges.1, %551 ]
  br i1 %526, label %._crit_edge137, label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %.preheader25
  %527 = add i64 %i_edgePtr.7.lcssa341, %i_edgePtr.0.lcssa
  %xtraiter706 = and i64 %527, 1
  %lcmp.mod707 = icmp eq i64 %xtraiter706, 0
  br i1 %lcmp.mod707, label %.lr.ph136.preheader.split, label %.lr.ph136.prol

.lr.ph136.prol:                                   ; preds = %.lr.ph136.preheader
  %528 = load i64*, i64** %520, align 8
  %529 = load i64, i64* %528, align 8
  %530 = icmp slt i64 %529, 0
  br i1 %530, label %531, label %532

; <label>:531                                     ; preds = %.lr.ph136.prol
  store i64 0, i64* %528, align 8
  br label %532

; <label>:532                                     ; preds = %531, %.lr.ph136.prol
  %t21.1.prol = phi i64 [ 1, %531 ], [ 0, %.lr.ph136.prol ]
  br label %.lr.ph136.preheader.split

.lr.ph136.preheader.split:                        ; preds = %532, %.lr.ph136.preheader
  %i.12135.unr = phi i64 [ 0, %.lr.ph136.preheader ], [ 1, %532 ]
  %t21.0134.unr = phi i64 [ 0, %.lr.ph136.preheader ], [ %t21.1.prol, %532 ]
  %533 = icmp eq i64 %527, 1
  br i1 %533, label %._crit_edge137.loopexit, label %.lr.ph136.preheader.split.split

.lr.ph136.preheader.split.split:                  ; preds = %.lr.ph136.preheader.split
  br label %.lr.ph136

.lr.ph141:                                        ; preds = %551, %.lr.ph141.preheader
  %i.11139 = phi i64 [ %552, %551 ], [ 0, %.lr.ph141.preheader ]
  %numStrWtEdges.0138 = phi i64 [ %numStrWtEdges.1, %551 ], [ 0, %.lr.ph141.preheader ]
  %534 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %535 = urem i64 %534, 1000
  %536 = uitofp i64 %535 to float
  %537 = fdiv float %536, 1.000000e+03
  %538 = fcmp ugt float %537, %525
  br i1 %538, label %547, label %539

; <label>:539                                     ; preds = %.lr.ph141
  %540 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %541 = load i64, i64* @MAX_INT_WEIGHT, align 8
  %542 = add i64 %541, -1
  %543 = urem i64 %540, %542
  %544 = add i64 %543, 1
  %545 = load i64*, i64** %520, align 8
  %546 = getelementptr inbounds i64, i64* %545, i64 %i.11139
  store i64 %544, i64* %546, align 8
  br label %551

; <label>:547                                     ; preds = %.lr.ph141
  %548 = load i64*, i64** %520, align 8
  %549 = getelementptr inbounds i64, i64* %548, i64 %i.11139
  store i64 -1, i64* %549, align 8
  %550 = add i64 %numStrWtEdges.0138, 1
  br label %551

; <label>:551                                     ; preds = %547, %539
  %numStrWtEdges.1 = phi i64 [ %numStrWtEdges.0138, %539 ], [ %550, %547 ]
  %552 = add nuw nsw i64 %i.11139, 1
  %exitcond308 = icmp eq i64 %552, %513
  br i1 %exitcond308, label %.preheader25, label %.lr.ph141

.lr.ph136:                                        ; preds = %878, %.lr.ph136.preheader.split.split
  %i.12135 = phi i64 [ %i.12135.unr, %.lr.ph136.preheader.split.split ], [ %879, %878 ]
  %t21.0134 = phi i64 [ %t21.0134.unr, %.lr.ph136.preheader.split.split ], [ %t21.1.1, %878 ]
  %553 = load i64*, i64** %520, align 8
  %554 = getelementptr inbounds i64, i64* %553, i64 %i.12135
  %555 = load i64, i64* %554, align 8
  %556 = icmp slt i64 %555, 0
  br i1 %556, label %557, label %.lr.ph136.1708

; <label>:557                                     ; preds = %.lr.ph136
  %558 = sub nsw i64 0, %t21.0134
  store i64 %558, i64* %554, align 8
  %559 = add nsw i64 %t21.0134, 1
  br label %.lr.ph136.1708

.lr.ph136.1708:                                   ; preds = %557, %.lr.ph136
  %t21.1 = phi i64 [ %559, %557 ], [ %t21.0134, %.lr.ph136 ]
  %560 = add nuw nsw i64 %i.12135, 1
  %561 = load i64*, i64** %520, align 8
  %562 = getelementptr inbounds i64, i64* %561, i64 %560
  %563 = load i64, i64* %562, align 8
  %564 = icmp slt i64 %563, 0
  br i1 %564, label %875, label %878

._crit_edge137.loopexit.unr-lcssa:                ; preds = %878
  br label %._crit_edge137.loopexit

._crit_edge137.loopexit:                          ; preds = %._crit_edge137.loopexit.unr-lcssa, %.lr.ph136.preheader.split
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge137.loopexit, %.preheader25, %524
  %numStrWtEdges.0.lcssa342 = phi i64 [ %numStrWtEdges.1.lcssa, %.preheader25 ], [ 0, %524 ], [ %numStrWtEdges.1.lcssa, %._crit_edge137.loopexit ]
  %565 = load i64, i64* @MAX_STRLEN, align 8
  %566 = mul i64 %565, %numStrWtEdges.0.lcssa342
  %567 = tail call noalias i8* @malloc(i64 %566) #6
  %568 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %SDGdataPtr, i64 0, i32 3
  store i8* %567, i8** %568, align 8
  %569 = icmp eq i8* %567, null
  br i1 %569, label %570, label %.preheader24

.preheader24:                                     ; preds = %._crit_edge137
  %.pre330 = load i64, i64* @MAX_STRLEN, align 8
  br i1 %526, label %._crit_edge133, label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %.preheader24
  br label %.lr.ph132

; <label>:570                                     ; preds = %._crit_edge137
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.81, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 589, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

.lr.ph132:                                        ; preds = %.loopexit23, %.lr.ph132.preheader
  %571 = phi i64 [ %592, %.loopexit23 ], [ %.pre330, %.lr.ph132.preheader ]
  %i.13131 = phi i64 [ %593, %.loopexit23 ], [ 0, %.lr.ph132.preheader ]
  %572 = load i64*, i64** %520, align 8
  %573 = getelementptr inbounds i64, i64* %572, i64 %i.13131
  %574 = load i64, i64* %573, align 8
  %575 = icmp slt i64 %574, 1
  %576 = icmp sgt i64 %571, 0
  %or.cond = and i1 %575, %576
  br i1 %or.cond, label %.lr.ph130.preheader, label %.loopexit23

.lr.ph130.preheader:                              ; preds = %.lr.ph132
  br label %.lr.ph130

.lr.ph130:                                        ; preds = %.lr.ph130, %.lr.ph130.preheader
  %j22.0129 = phi i64 [ %589, %.lr.ph130 ], [ 0, %.lr.ph130.preheader ]
  %577 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %578 = urem i64 %577, 127
  %579 = add nuw nsw i64 %578, 1
  %580 = trunc i64 %579 to i8
  %581 = load i64*, i64** %520, align 8
  %582 = getelementptr inbounds i64, i64* %581, i64 %i.13131
  %583 = load i64, i64* %582, align 8
  %584 = load i64, i64* @MAX_STRLEN, align 8
  %585 = mul i64 %584, %583
  %586 = sub i64 %j22.0129, %585
  %587 = load i8*, i8** %568, align 8
  %588 = getelementptr inbounds i8, i8* %587, i64 %586
  store i8 %580, i8* %588, align 1
  %589 = add nuw nsw i64 %j22.0129, 1
  %590 = load i64, i64* @MAX_STRLEN, align 8
  %591 = icmp slt i64 %589, %590
  br i1 %591, label %.lr.ph130, label %.loopexit23.loopexit

.loopexit23.loopexit:                             ; preds = %.lr.ph130
  %.lcssa729 = phi i64 [ %590, %.lr.ph130 ]
  br label %.loopexit23

.loopexit23:                                      ; preds = %.loopexit23.loopexit, %.lr.ph132
  %592 = phi i64 [ %571, %.lr.ph132 ], [ %.lcssa729, %.loopexit23.loopexit ]
  %593 = add nuw nsw i64 %i.13131, 1
  %exitcond306 = icmp eq i64 %593, %513
  br i1 %exitcond306, label %._crit_edge133.loopexit, label %.lr.ph132

._crit_edge133.loopexit:                          ; preds = %.loopexit23
  %.lcssa730 = phi i64 [ %592, %.loopexit23 ]
  br label %._crit_edge133

._crit_edge133:                                   ; preds = %._crit_edge133.loopexit, %.preheader24
  %594 = phi i64 [ %.pre330, %.preheader24 ], [ %.lcssa730, %._crit_edge133.loopexit ]
  %595 = load i8*, i8** @SOUGHT_STRING, align 8
  %596 = tail call i64 @strlen(i8* %595) #17
  %597 = icmp eq i64 %596, %594
  br i1 %597, label %602, label %598

; <label>:598                                     ; preds = %._crit_edge133
  %599 = tail call noalias i8* @malloc(i64 %594) #6
  store i8* %599, i8** @SOUGHT_STRING, align 8
  %600 = icmp eq i8* %599, null
  br i1 %600, label %601, label %602

; <label>:601                                     ; preds = %598
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18.82, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 607, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

; <label>:602                                     ; preds = %598, %._crit_edge133
  %603 = tail call i64 @random_generate(%struct.random* nonnull %1) #6
  %604 = urem i64 %603, %numStrWtEdges.0.lcssa342
  %605 = load i64, i64* @MAX_STRLEN, align 8
  %606 = icmp sgt i64 %605, 0
  br i1 %606, label %.lr.ph128.preheader, label %.preheader21

.lr.ph128.preheader:                              ; preds = %602
  br label %.lr.ph128

.preheader21.loopexit:                            ; preds = %.lr.ph128
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.loopexit, %602
  br i1 %526, label %._crit_edge125, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %.preheader21
  %607 = add i64 %i_edgePtr.7.lcssa341, %i_edgePtr.0.lcssa
  %xtraiter704 = and i64 %607, 1
  %lcmp.mod705 = icmp eq i64 %xtraiter704, 0
  br i1 %lcmp.mod705, label %.lr.ph124.preheader.split, label %.lr.ph124.prol

.lr.ph124.prol:                                   ; preds = %.lr.ph124.preheader
  %608 = load i64, i64* %startVertex.0, align 8
  %609 = getelementptr inbounds i64, i64* %8, i64 %608
  %610 = load i64, i64* %609, align 8
  store i64 %610, i64* %startVertex.0, align 8
  %611 = load i64, i64* %endVertex.0, align 8
  %612 = getelementptr inbounds i64, i64* %8, i64 %611
  %613 = load i64, i64* %612, align 8
  store i64 %613, i64* %endVertex.0, align 8
  br label %.lr.ph124.preheader.split

.lr.ph124.preheader.split:                        ; preds = %.lr.ph124.prol, %.lr.ph124.preheader
  %i.14123.unr = phi i64 [ 0, %.lr.ph124.preheader ], [ 1, %.lr.ph124.prol ]
  %614 = icmp eq i64 %607, 1
  br i1 %614, label %._crit_edge125.loopexit, label %.lr.ph124.preheader.split.split

.lr.ph124.preheader.split.split:                  ; preds = %.lr.ph124.preheader.split
  br label %.lr.ph124

.lr.ph128:                                        ; preds = %.lr.ph128, %.lr.ph128.preheader
  %615 = phi i64 [ %624, %.lr.ph128 ], [ %605, %.lr.ph128.preheader ]
  %j23.0126 = phi i64 [ %623, %.lr.ph128 ], [ 0, %.lr.ph128.preheader ]
  %616 = mul nsw i64 %615, %604
  %617 = add nsw i64 %616, %j23.0126
  %618 = load i8*, i8** %568, align 8
  %619 = getelementptr inbounds i8, i8* %618, i64 %617
  %620 = load i8, i8* %619, align 1
  %621 = load i8*, i8** @SOUGHT_STRING, align 8
  %622 = getelementptr inbounds i8, i8* %621, i64 %j23.0126
  store i8 %620, i8* %622, align 1
  %623 = add nuw nsw i64 %j23.0126, 1
  %624 = load i64, i64* @MAX_STRLEN, align 8
  %625 = icmp slt i64 %623, %624
  br i1 %625, label %.lr.ph128, label %.preheader21.loopexit

.lr.ph124:                                        ; preds = %.lr.ph124, %.lr.ph124.preheader.split.split
  %i.14123 = phi i64 [ %i.14123.unr, %.lr.ph124.preheader.split.split ], [ %643, %.lr.ph124 ]
  %626 = getelementptr inbounds i64, i64* %startVertex.0, i64 %i.14123
  %627 = load i64, i64* %626, align 8
  %628 = getelementptr inbounds i64, i64* %8, i64 %627
  %629 = load i64, i64* %628, align 8
  store i64 %629, i64* %626, align 8
  %630 = getelementptr inbounds i64, i64* %endVertex.0, i64 %i.14123
  %631 = load i64, i64* %630, align 8
  %632 = getelementptr inbounds i64, i64* %8, i64 %631
  %633 = load i64, i64* %632, align 8
  store i64 %633, i64* %630, align 8
  %634 = add nuw nsw i64 %i.14123, 1
  %635 = getelementptr inbounds i64, i64* %startVertex.0, i64 %634
  %636 = load i64, i64* %635, align 8
  %637 = getelementptr inbounds i64, i64* %8, i64 %636
  %638 = load i64, i64* %637, align 8
  store i64 %638, i64* %635, align 8
  %639 = getelementptr inbounds i64, i64* %endVertex.0, i64 %634
  %640 = load i64, i64* %639, align 8
  %641 = getelementptr inbounds i64, i64* %8, i64 %640
  %642 = load i64, i64* %641, align 8
  store i64 %642, i64* %639, align 8
  %643 = add nsw i64 %i.14123, 2
  %exitcond305.1 = icmp eq i64 %643, %513
  br i1 %exitcond305.1, label %._crit_edge125.loopexit.unr-lcssa, label %.lr.ph124

._crit_edge125.loopexit.unr-lcssa:                ; preds = %.lr.ph124
  br label %._crit_edge125.loopexit

._crit_edge125.loopexit:                          ; preds = %._crit_edge125.loopexit.unr-lcssa, %.lr.ph124.preheader.split
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %._crit_edge125.loopexit, %.preheader21
  %644 = tail call noalias i8* @malloc(i64 %518) #6
  %645 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %SDGdataPtr, i64 0, i32 0
  %646 = bitcast %struct.graphSDG* %SDGdataPtr to i8**
  store i8* %644, i8** %646, align 8
  %647 = icmp eq i8* %644, null
  %648 = bitcast i8* %644 to i64*
  br i1 %647, label %649, label %650

; <label>:649                                     ; preds = %._crit_edge125
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19.83, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 636, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

; <label>:650                                     ; preds = %._crit_edge125
  %651 = tail call noalias i8* @malloc(i64 %518) #6
  %652 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %SDGdataPtr, i64 0, i32 1
  %653 = bitcast i64** %652 to i8**
  store i8* %651, i8** %653, align 8
  %654 = icmp eq i8* %651, null
  br i1 %654, label %655, label %656

; <label>:655                                     ; preds = %650
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20.84, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 638, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #15
  unreachable

; <label>:656                                     ; preds = %650
  %657 = bitcast i8* %651 to i64*
  tail call void @all_radixsort_node_aux_s3_seq(i64 %513, i64* %startVertex.0, i64* %648, i64* %endVertex.0, i64* %657) #6
  tail call void @free(i8* %startVertex.0.in) #6
  tail call void @free(i8* %endVertex.0.in) #6
  %658 = load i64, i64* @SCALE, align 8
  %659 = icmp slt i64 %658, 12
  br i1 %659, label %.preheader14, label %758

.preheader14:                                     ; preds = %656
  br i1 %526, label %.loopexit15, label %.preheader13.lr.ph.preheader

.preheader13.lr.ph.preheader:                     ; preds = %.preheader14
  %660 = add i64 %i_edgePtr.7.lcssa341, %i_edgePtr.0.lcssa
  %661 = add i64 %660, 1
  %662 = add i64 %i_edgePtr.7.lcssa341, %i_edgePtr.0.lcssa
  %663 = add i64 %662, -2
  br label %.preheader13.lr.ph

._crit_edge97:                                    ; preds = %.preheader13.lr.ph
  %664 = load i64*, i64** %645, align 8
  %665 = getelementptr inbounds i64, i64* %664, i64 %i1.0.ph105
  %666 = load i64, i64* %665, align 8
  %667 = load i64, i64* @TOT_VERTICES, align 8
  %668 = add i64 %667, -1
  %669 = icmp eq i64 %666, %668
  br i1 %669, label %.loopexit15.loopexit607, label %.outer.loopexit

.outer.loopexit.loopexit:                         ; preds = %._crit_edge97.us
  %i1.1.us.lcssa = phi i64 [ %i1.1.us, %._crit_edge97.us ]
  %i.16.lcssa.us.lcssa = phi i64 [ %i.16.lcssa.us, %._crit_edge97.us ]
  br label %.outer.loopexit

.outer.loopexit:                                  ; preds = %.outer.loopexit.loopexit, %._crit_edge97
  %i1.1.lcssa = phi i64 [ %i1.0.ph105, %._crit_edge97 ], [ %i1.1.us.lcssa, %.outer.loopexit.loopexit ]
  %i.16.lcssa.lcssa = phi i64 [ %i1.0.ph105, %._crit_edge97 ], [ %i.16.lcssa.us.lcssa, %.outer.loopexit.loopexit ]
  %670 = icmp ult i64 %i.16.lcssa.lcssa, %513
  br i1 %670, label %.preheader13.lr.ph, label %.loopexit15.loopexit607

.preheader13.lr.ph:                               ; preds = %.outer.loopexit, %.preheader13.lr.ph.preheader
  %i1.0.ph105 = phi i64 [ %i1.1.lcssa, %.outer.loopexit ], [ 0, %.preheader13.lr.ph.preheader ]
  %671 = icmp ult i64 %i1.0.ph105, %513
  br i1 %671, label %.lr.ph.us.preheader, label %._crit_edge97

.lr.ph.us.preheader:                              ; preds = %.preheader13.lr.ph
  %672 = xor i64 %i1.0.ph105, 1
  %673 = sub i64 -2, %i1.0.ph105
  %674 = sub i64 %661, %i1.0.ph105
  %675 = sub i64 %663, %i1.0.ph105
  br label %.lr.ph.us

; <label>:676                                     ; preds = %.lr.ph.us, %751
  %i.1686.us = phi i64 [ %i1.0.ph105, %.lr.ph.us ], [ %752, %751 ]
  %677 = getelementptr inbounds i64, i64* %755, i64 %i.1686.us
  %678 = load i64, i64* %677, align 8
  %679 = icmp eq i64 %678, %757
  br i1 %679, label %751, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %751, %676
  %i.16.lcssa.us = phi i64 [ %i.1686.us, %676 ], [ %752, %751 ]
  %i1.1.us = phi i64 [ %i.1686.us, %676 ], [ %i1.0103.us, %751 ]
  %680 = icmp slt i64 %i1.0.ph105, %i1.1.us
  br i1 %680, label %.lr.ph96.us.preheader, label %._crit_edge97.us

.lr.ph96.us.preheader:                            ; preds = %._crit_edge.us
  %681 = add i64 %i1.1.us, %672
  %682 = add i64 %673, %i1.1.us
  br label %.lr.ph96.us

._crit_edge97.us.loopexit:                        ; preds = %.loopexit11.us
  %.pre339 = load i64*, i64** %645, align 8
  br label %._crit_edge97.us

._crit_edge97.us:                                 ; preds = %._crit_edge97.us.loopexit, %._crit_edge.us
  %683 = phi i64* [ %.pre339, %._crit_edge97.us.loopexit ], [ %755, %._crit_edge.us ]
  %684 = getelementptr inbounds i64, i64* %683, i64 %i1.0.ph105
  %685 = load i64, i64* %684, align 8
  %686 = load i64, i64* @TOT_VERTICES, align 8
  %687 = add i64 %686, -1
  %688 = icmp eq i64 %685, %687
  br i1 %688, label %.lr.ph102.us.preheader, label %.outer.loopexit.loopexit

.lr.ph102.us.preheader:                           ; preds = %._crit_edge97.us
  br label %.lr.ph102.us

.lr.ph102.us:                                     ; preds = %.loopexit.us, %.lr.ph102.us.preheader
  %indvar691 = phi i64 [ 0, %.lr.ph102.us.preheader ], [ %indvar.next692, %.loopexit.us ]
  %j26.0101.us = phi i64 [ %i1.0.ph105, %.lr.ph102.us.preheader ], [ %689, %.loopexit.us ]
  %689 = add nuw nsw i64 %j26.0101.us, 1
  %690 = icmp ult i64 %689, %513
  br i1 %690, label %.lr.ph100.us.preheader, label %.loopexit.us

.lr.ph100.us.preheader:                           ; preds = %.lr.ph102.us
  %691 = sub i64 %674, %indvar691
  %xtraiter693 = and i64 %691, 1
  %lcmp.mod694 = icmp eq i64 %xtraiter693, 0
  br i1 %lcmp.mod694, label %.lr.ph100.us.preheader.split, label %.lr.ph100.us.prol

.lr.ph100.us.prol:                                ; preds = %.lr.ph100.us.preheader
  %692 = load i64*, i64** %652, align 8
  %693 = getelementptr inbounds i64, i64* %692, i64 %689
  %694 = load i64, i64* %693, align 8
  %695 = getelementptr inbounds i64, i64* %692, i64 %j26.0101.us
  %696 = load i64, i64* %695, align 8
  %697 = icmp ult i64 %694, %696
  br i1 %697, label %698, label %701

; <label>:698                                     ; preds = %.lr.ph100.us.prol
  store i64 %694, i64* %695, align 8
  %699 = load i64*, i64** %652, align 8
  %700 = getelementptr inbounds i64, i64* %699, i64 %689
  store i64 %696, i64* %700, align 8
  br label %701

; <label>:701                                     ; preds = %698, %.lr.ph100.us.prol
  %702 = add nsw i64 %j26.0101.us, 2
  br label %.lr.ph100.us.preheader.split

.lr.ph100.us.preheader.split:                     ; preds = %701, %.lr.ph100.us.preheader
  %k27.098.us.unr = phi i64 [ %689, %.lr.ph100.us.preheader ], [ %702, %701 ]
  %703 = icmp eq i64 %675, %indvar691
  br i1 %703, label %.loopexit.us.loopexit, label %.lr.ph100.us.preheader.split.split

.lr.ph100.us.preheader.split.split:               ; preds = %.lr.ph100.us.preheader.split
  br label %.lr.ph100.us

.lr.ph100.us:                                     ; preds = %867, %.lr.ph100.us.preheader.split.split
  %k27.098.us = phi i64 [ %k27.098.us.unr, %.lr.ph100.us.preheader.split.split ], [ %868, %867 ]
  %704 = load i64*, i64** %652, align 8
  %705 = getelementptr inbounds i64, i64* %704, i64 %k27.098.us
  %706 = load i64, i64* %705, align 8
  %707 = getelementptr inbounds i64, i64* %704, i64 %j26.0101.us
  %708 = load i64, i64* %707, align 8
  %709 = icmp ult i64 %706, %708
  br i1 %709, label %710, label %.lr.ph100.us.1695

; <label>:710                                     ; preds = %.lr.ph100.us
  store i64 %706, i64* %707, align 8
  %711 = load i64*, i64** %652, align 8
  %712 = getelementptr inbounds i64, i64* %711, i64 %k27.098.us
  store i64 %708, i64* %712, align 8
  br label %.lr.ph100.us.1695

.lr.ph100.us.1695:                                ; preds = %710, %.lr.ph100.us
  %713 = add nsw i64 %k27.098.us, 1
  %714 = load i64*, i64** %652, align 8
  %715 = getelementptr inbounds i64, i64* %714, i64 %713
  %716 = load i64, i64* %715, align 8
  %717 = getelementptr inbounds i64, i64* %714, i64 %j26.0101.us
  %718 = load i64, i64* %717, align 8
  %719 = icmp ult i64 %716, %718
  br i1 %719, label %864, label %867

.lr.ph96.us:                                      ; preds = %.loopexit11.us, %.lr.ph96.us.preheader
  %indvar = phi i64 [ 0, %.lr.ph96.us.preheader ], [ %indvar.next, %.loopexit11.us ]
  %j24.094.us = phi i64 [ %i1.0.ph105, %.lr.ph96.us.preheader ], [ %720, %.loopexit11.us ]
  %720 = add nsw i64 %j24.094.us, 1
  %721 = icmp slt i64 %720, %i1.1.us
  br i1 %721, label %.lr.ph93.us.preheader, label %.loopexit11.us

.lr.ph93.us.preheader:                            ; preds = %.lr.ph96.us
  %722 = sub i64 %681, %indvar
  %xtraiter = and i64 %722, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph93.us.preheader.split, label %.lr.ph93.us.prol

.lr.ph93.us.prol:                                 ; preds = %.lr.ph93.us.preheader
  %723 = load i64*, i64** %652, align 8
  %724 = getelementptr inbounds i64, i64* %723, i64 %720
  %725 = load i64, i64* %724, align 8
  %726 = getelementptr inbounds i64, i64* %723, i64 %j24.094.us
  %727 = load i64, i64* %726, align 8
  %728 = icmp ult i64 %725, %727
  br i1 %728, label %729, label %732

; <label>:729                                     ; preds = %.lr.ph93.us.prol
  store i64 %725, i64* %726, align 8
  %730 = load i64*, i64** %652, align 8
  %731 = getelementptr inbounds i64, i64* %730, i64 %720
  store i64 %727, i64* %731, align 8
  br label %732

; <label>:732                                     ; preds = %729, %.lr.ph93.us.prol
  %733 = add nsw i64 %j24.094.us, 2
  br label %.lr.ph93.us.preheader.split

.lr.ph93.us.preheader.split:                      ; preds = %732, %.lr.ph93.us.preheader
  %k.091.us.unr = phi i64 [ %720, %.lr.ph93.us.preheader ], [ %733, %732 ]
  %734 = icmp eq i64 %682, %indvar
  br i1 %734, label %.loopexit11.us.loopexit, label %.lr.ph93.us.preheader.split.split

.lr.ph93.us.preheader.split.split:                ; preds = %.lr.ph93.us.preheader.split
  br label %.lr.ph93.us

.lr.ph93.us:                                      ; preds = %862, %.lr.ph93.us.preheader.split.split
  %k.091.us = phi i64 [ %k.091.us.unr, %.lr.ph93.us.preheader.split.split ], [ %863, %862 ]
  %735 = load i64*, i64** %652, align 8
  %736 = getelementptr inbounds i64, i64* %735, i64 %k.091.us
  %737 = load i64, i64* %736, align 8
  %738 = getelementptr inbounds i64, i64* %735, i64 %j24.094.us
  %739 = load i64, i64* %738, align 8
  %740 = icmp ult i64 %737, %739
  br i1 %740, label %741, label %.lr.ph93.us.1690

; <label>:741                                     ; preds = %.lr.ph93.us
  store i64 %737, i64* %738, align 8
  %742 = load i64*, i64** %652, align 8
  %743 = getelementptr inbounds i64, i64* %742, i64 %k.091.us
  store i64 %739, i64* %743, align 8
  br label %.lr.ph93.us.1690

.lr.ph93.us.1690:                                 ; preds = %741, %.lr.ph93.us
  %744 = add nsw i64 %k.091.us, 1
  %745 = load i64*, i64** %652, align 8
  %746 = getelementptr inbounds i64, i64* %745, i64 %744
  %747 = load i64, i64* %746, align 8
  %748 = getelementptr inbounds i64, i64* %745, i64 %j24.094.us
  %749 = load i64, i64* %748, align 8
  %750 = icmp ult i64 %747, %749
  br i1 %750, label %859, label %862

; <label>:751                                     ; preds = %676
  %752 = add nuw nsw i64 %i.1686.us, 1
  %753 = icmp ult i64 %752, %513
  br i1 %753, label %676, label %._crit_edge.us

.loopexit.us.loopexit.unr-lcssa:                  ; preds = %867
  br label %.loopexit.us.loopexit

.loopexit.us.loopexit:                            ; preds = %.loopexit.us.loopexit.unr-lcssa, %.lr.ph100.us.preheader.split
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit, %.lr.ph102.us
  %exitcond303 = icmp eq i64 %689, %513
  %indvar.next692 = add i64 %indvar691, 1
  br i1 %exitcond303, label %.loopexit12.us, label %.lr.ph102.us

.loopexit11.us.loopexit.unr-lcssa:                ; preds = %862
  br label %.loopexit11.us.loopexit

.loopexit11.us.loopexit:                          ; preds = %.loopexit11.us.loopexit.unr-lcssa, %.lr.ph93.us.preheader.split
  br label %.loopexit11.us

.loopexit11.us:                                   ; preds = %.loopexit11.us.loopexit, %.lr.ph96.us
  %exitcond301 = icmp eq i64 %720, %i1.1.us
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond301, label %._crit_edge97.us.loopexit, label %.lr.ph96.us

.loopexit12.us:                                   ; preds = %.loopexit.us
  %754 = icmp ult i64 %i.16.lcssa.us, %513
  br i1 %754, label %.lr.ph.us, label %.loopexit15.loopexit

.lr.ph.us:                                        ; preds = %.loopexit12.us, %.lr.ph.us.preheader
  %i1.0103.us = phi i64 [ %i1.1.us, %.loopexit12.us ], [ %i1.0.ph105, %.lr.ph.us.preheader ]
  %755 = load i64*, i64** %645, align 8
  %756 = getelementptr inbounds i64, i64* %755, i64 %i1.0103.us
  %757 = load i64, i64* %756, align 8
  br label %676

; <label>:758                                     ; preds = %656
  %759 = load i64, i64* @TOT_VERTICES, align 8
  %760 = shl i64 %759, 3
  %761 = add i64 %760, 8
  %762 = tail call noalias i8* @malloc(i64 %761) #6
  %763 = bitcast i8* %762 to i64*
  store i64 0, i64* %763, align 8
  %764 = getelementptr inbounds i64, i64* %763, i64 %759
  store i64 %513, i64* %764, align 8
  %765 = icmp eq i64 %759, 0
  br i1 %765, label %._crit_edge115, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %758
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.outer20, %.lr.ph120.preheader
  %i.17.ph122 = phi i64 [ %.lcssa, %.outer20 ], [ 0, %.lr.ph120.preheader ]
  %i029.0.ph121 = phi i64 [ %j30.0116.us.us.lcssa, %.outer20 ], [ 0, %.lr.ph120.preheader ]
  %766 = icmp ult i64 %i029.0.ph121, %513
  %.phi.trans.insert333 = getelementptr inbounds i64, i64* %763, i64 %i.17.ph122
  %.pre334 = load i64, i64* %.phi.trans.insert333, align 8
  br i1 %766, label %.lr.ph120.split.us.preheader, label %.lr.ph120.split.preheader

.lr.ph120.split.us.preheader:                     ; preds = %.lr.ph120
  %.pre335 = load i64*, i64** %645, align 8
  %.phi.trans.insert336 = getelementptr inbounds i64, i64* %.pre335, i64 %i029.0.ph121
  %.pre337 = load i64, i64* %.phi.trans.insert336, align 8
  br label %.lr.ph120.split.us

.lr.ph120.split.preheader:                        ; preds = %.lr.ph120
  %.pre334.lcssa = phi i64 [ %.pre334, %.lr.ph120 ]
  %i.17.ph122.lcssa = phi i64 [ %i.17.ph122, %.lr.ph120 ]
  %767 = add i64 %i.17.ph122.lcssa, 1
  %768 = icmp ugt i64 %759, %767
  %umax = select i1 %768, i64 %759, i64 %767
  %769 = sub i64 %umax, %i.17.ph122.lcssa
  %min.iters.check587 = icmp ult i64 %769, 4
  br i1 %min.iters.check587, label %.lr.ph120.split.preheader608, label %min.iters.checked588

.lr.ph120.split.preheader608:                     ; preds = %middle.block585, %min.iters.checked588, %.lr.ph120.split.preheader
  %i.17119.ph = phi i64 [ %i.17.ph122.lcssa, %min.iters.checked588 ], [ %i.17.ph122.lcssa, %.lr.ph120.split.preheader ], [ %ind.end596, %middle.block585 ]
  br label %.lr.ph120.split

min.iters.checked588:                             ; preds = %.lr.ph120.split.preheader
  %n.vec590 = and i64 %769, -4
  %cmp.zero591 = icmp eq i64 %n.vec590, 0
  %ind.end596 = add i64 %i.17.ph122.lcssa, %n.vec590
  br i1 %cmp.zero591, label %.lr.ph120.split.preheader608, label %vector.ph592

vector.ph592:                                     ; preds = %min.iters.checked588
  %broadcast.splatinsert603 = insertelement <2 x i64> undef, i64 %.pre334.lcssa, i32 0
  %broadcast.splat604 = shufflevector <2 x i64> %broadcast.splatinsert603, <2 x i64> undef, <2 x i32> zeroinitializer
  %770 = add i64 %i.17.ph122.lcssa, 1
  %771 = icmp ugt i64 %759, %770
  %umax701 = select i1 %771, i64 %759, i64 %770
  %772 = sub i64 %umax701, %i.17.ph122.lcssa
  %773 = add i64 %772, -4
  %774 = lshr i64 %773, 2
  %775 = add nuw nsw i64 %774, 1
  %xtraiter702 = and i64 %775, 3
  %lcmp.mod703 = icmp eq i64 %xtraiter702, 0
  br i1 %lcmp.mod703, label %vector.ph592.split, label %vector.body584.prol.preheader

vector.body584.prol.preheader:                    ; preds = %vector.ph592
  br label %vector.body584.prol

vector.body584.prol:                              ; preds = %vector.body584.prol, %vector.body584.prol.preheader
  %index593.prol = phi i64 [ %index.next594.prol, %vector.body584.prol ], [ 0, %vector.body584.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %vector.body584.prol ], [ %xtraiter702, %vector.body584.prol.preheader ]
  %offset.idx598.prol = add i64 %i.17.ph122.lcssa, %index593.prol
  %776 = add i64 %offset.idx598.prol, 1
  %777 = getelementptr inbounds i64, i64* %763, i64 %776
  %778 = bitcast i64* %777 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %778, align 8
  %779 = getelementptr i64, i64* %777, i64 2
  %780 = bitcast i64* %779 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %780, align 8
  %index.next594.prol = add i64 %index593.prol, 4
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %vector.ph592.split.loopexit, label %vector.body584.prol, !llvm.loop !33

vector.ph592.split.loopexit:                      ; preds = %vector.body584.prol
  %index.next594.prol.lcssa = phi i64 [ %index.next594.prol, %vector.body584.prol ]
  br label %vector.ph592.split

vector.ph592.split:                               ; preds = %vector.ph592.split.loopexit, %vector.ph592
  %index593.unr = phi i64 [ 0, %vector.ph592 ], [ %index.next594.prol.lcssa, %vector.ph592.split.loopexit ]
  %781 = icmp ult i64 %773, 12
  br i1 %781, label %middle.block585, label %vector.ph592.split.split

vector.ph592.split.split:                         ; preds = %vector.ph592.split
  br label %vector.body584

vector.body584:                                   ; preds = %vector.body584, %vector.ph592.split.split
  %index593 = phi i64 [ %index593.unr, %vector.ph592.split.split ], [ %index.next594.3, %vector.body584 ]
  %offset.idx598 = add i64 %i.17.ph122.lcssa, %index593
  %782 = add i64 %offset.idx598, 1
  %783 = getelementptr inbounds i64, i64* %763, i64 %782
  %784 = bitcast i64* %783 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %784, align 8
  %785 = getelementptr i64, i64* %783, i64 2
  %786 = bitcast i64* %785 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %786, align 8
  %index.next594 = add i64 %index593, 4
  %offset.idx598.1 = add i64 %i.17.ph122.lcssa, %index.next594
  %787 = add i64 %offset.idx598.1, 1
  %788 = getelementptr inbounds i64, i64* %763, i64 %787
  %789 = bitcast i64* %788 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %789, align 8
  %790 = getelementptr i64, i64* %788, i64 2
  %791 = bitcast i64* %790 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %791, align 8
  %index.next594.1 = add i64 %index593, 8
  %offset.idx598.2 = add i64 %i.17.ph122.lcssa, %index.next594.1
  %792 = add i64 %offset.idx598.2, 1
  %793 = getelementptr inbounds i64, i64* %763, i64 %792
  %794 = bitcast i64* %793 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %794, align 8
  %795 = getelementptr i64, i64* %793, i64 2
  %796 = bitcast i64* %795 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %796, align 8
  %index.next594.2 = add i64 %index593, 12
  %offset.idx598.3 = add i64 %i.17.ph122.lcssa, %index.next594.2
  %797 = add i64 %offset.idx598.3, 1
  %798 = getelementptr inbounds i64, i64* %763, i64 %797
  %799 = bitcast i64* %798 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %799, align 8
  %800 = getelementptr i64, i64* %798, i64 2
  %801 = bitcast i64* %800 to <2 x i64>*
  store <2 x i64> %broadcast.splat604, <2 x i64>* %801, align 8
  %index.next594.3 = add i64 %index593, 16
  %802 = icmp eq i64 %index.next594.3, %n.vec590
  br i1 %802, label %middle.block585.unr-lcssa, label %vector.body584, !llvm.loop !34

middle.block585.unr-lcssa:                        ; preds = %vector.body584
  br label %middle.block585

middle.block585:                                  ; preds = %middle.block585.unr-lcssa, %vector.ph592.split
  %cmp.n597 = icmp eq i64 %769, %n.vec590
  br i1 %cmp.n597, label %.preheader18, label %.lr.ph120.split.preheader608

.lr.ph120.split.us:                               ; preds = %..loopexit19_crit_edge.us, %.lr.ph120.split.us.preheader
  %i.17119.us = phi i64 [ %803, %..loopexit19_crit_edge.us ], [ %i.17.ph122, %.lr.ph120.split.us.preheader ]
  %803 = add nsw i64 %i.17119.us, 1
  %804 = getelementptr inbounds i64, i64* %763, i64 %803
  store i64 %.pre334, i64* %804, align 8
  %805 = icmp eq i64 %.pre337, %i.17119.us
  br i1 %805, label %.lr.ph118.split.us.us.preheader, label %..loopexit19_crit_edge.us

.lr.ph118.split.us.us.preheader:                  ; preds = %.lr.ph120.split.us
  br label %.lr.ph118.split.us.us

..loopexit19_crit_edge.us.loopexit:               ; preds = %810
  br label %..loopexit19_crit_edge.us

..loopexit19_crit_edge.us:                        ; preds = %..loopexit19_crit_edge.us.loopexit, %.lr.ph120.split.us
  %806 = icmp ult i64 %803, %759
  br i1 %806, label %.lr.ph120.split.us, label %.preheader18.loopexit609

.lr.ph118.split.us.us:                            ; preds = %810, %.lr.ph118.split.us.us.preheader
  %j30.0116.us.us = phi i64 [ %811, %810 ], [ %i029.0.ph121, %.lr.ph118.split.us.us.preheader ]
  %807 = getelementptr inbounds i64, i64* %.pre335, i64 %j30.0116.us.us
  %808 = load i64, i64* %807, align 8
  %809 = icmp eq i64 %808, %.pre337
  br i1 %809, label %810, label %.outer20

; <label>:810                                     ; preds = %.lr.ph118.split.us.us
  %811 = add nuw nsw i64 %j30.0116.us.us, 1
  %812 = icmp ult i64 %811, %513
  br i1 %812, label %.lr.ph118.split.us.us, label %..loopexit19_crit_edge.us.loopexit

.preheader18.loopexit:                            ; preds = %.lr.ph120.split
  br label %.preheader18

.preheader18.loopexit609:                         ; preds = %..loopexit19_crit_edge.us
  br label %.preheader18

.preheader18.loopexit610:                         ; preds = %.outer20
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.loopexit610, %.preheader18.loopexit609, %.preheader18.loopexit, %middle.block585
  br i1 %765, label %._crit_edge115, label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %.preheader18
  %.pre338 = load i64, i64* %763, align 8
  br label %.lr.ph114

.lr.ph120.split:                                  ; preds = %.lr.ph120.split, %.lr.ph120.split.preheader608
  %i.17119 = phi i64 [ %813, %.lr.ph120.split ], [ %i.17119.ph, %.lr.ph120.split.preheader608 ]
  %813 = add nsw i64 %i.17119, 1
  %814 = getelementptr inbounds i64, i64* %763, i64 %813
  store i64 %.pre334.lcssa, i64* %814, align 8
  %815 = icmp ult i64 %813, %759
  br i1 %815, label %.lr.ph120.split, label %.preheader18.loopexit, !llvm.loop !35

.outer20:                                         ; preds = %.lr.ph118.split.us.us
  %.lcssa723 = phi i64* [ %804, %.lr.ph118.split.us.us ]
  %.lcssa = phi i64 [ %803, %.lr.ph118.split.us.us ]
  %j30.0116.us.us.lcssa = phi i64 [ %j30.0116.us.us, %.lr.ph118.split.us.us ]
  store i64 %j30.0116.us.us.lcssa, i64* %.lcssa723, align 8
  %816 = icmp ult i64 %.lcssa, %759
  br i1 %816, label %.lr.ph120, label %.preheader18.loopexit610

.loopexit17.loopexit:                             ; preds = %.lr.ph111, %.loopexit16
  br label %.loopexit17

.loopexit17:                                      ; preds = %.lr.ph114, %.loopexit17.loopexit
  %817 = load i64, i64* @TOT_VERTICES, align 8
  %818 = icmp ult i64 %820, %817
  br i1 %818, label %.lr.ph114, label %._crit_edge115.loopexit

.lr.ph114:                                        ; preds = %.loopexit17, %.lr.ph114.preheader
  %819 = phi i64 [ %822, %.loopexit17 ], [ %.pre338, %.lr.ph114.preheader ]
  %i.18113 = phi i64 [ %820, %.loopexit17 ], [ 0, %.lr.ph114.preheader ]
  %820 = add nuw nsw i64 %i.18113, 1
  %821 = getelementptr inbounds i64, i64* %763, i64 %820
  %822 = load i64, i64* %821, align 8
  %823 = icmp ult i64 %819, %822
  br i1 %823, label %.lr.ph111.preheader, label %.loopexit17

.lr.ph111.preheader:                              ; preds = %.lr.ph114
  %824 = add i64 %822, 1
  %825 = sub i64 %824, %819
  %826 = add i64 %822, -2
  %827 = sub i64 %826, %819
  br label %.lr.ph111

.loopexit16.unr-lcssa:                            ; preds = %872
  br label %.loopexit16

.loopexit16:                                      ; preds = %.lr.ph108.preheader.split, %.loopexit16.unr-lcssa
  %indvar.next697 = add i64 %indvar696, 1
  br i1 %829, label %.lr.ph111, label %.loopexit17.loopexit

.lr.ph111:                                        ; preds = %.loopexit16, %.lr.ph111.preheader
  %indvar696 = phi i64 [ 0, %.lr.ph111.preheader ], [ %indvar.next697, %.loopexit16 ]
  %j31.0109 = phi i64 [ %819, %.lr.ph111.preheader ], [ %828, %.loopexit16 ]
  %828 = add nuw nsw i64 %j31.0109, 1
  %829 = icmp ult i64 %828, %822
  br i1 %829, label %.lr.ph108.preheader, label %.loopexit17.loopexit

.lr.ph108.preheader:                              ; preds = %.lr.ph111
  %830 = sub i64 %825, %indvar696
  %xtraiter698 = and i64 %830, 1
  %lcmp.mod699 = icmp eq i64 %xtraiter698, 0
  br i1 %lcmp.mod699, label %.lr.ph108.preheader.split, label %.lr.ph108.prol

.lr.ph108.prol:                                   ; preds = %.lr.ph108.preheader
  %831 = load i64*, i64** %652, align 8
  %832 = getelementptr inbounds i64, i64* %831, i64 %828
  %833 = load i64, i64* %832, align 8
  %834 = getelementptr inbounds i64, i64* %831, i64 %j31.0109
  %835 = load i64, i64* %834, align 8
  %836 = icmp ult i64 %833, %835
  br i1 %836, label %837, label %840

; <label>:837                                     ; preds = %.lr.ph108.prol
  store i64 %833, i64* %834, align 8
  %838 = load i64*, i64** %652, align 8
  %839 = getelementptr inbounds i64, i64* %838, i64 %828
  store i64 %835, i64* %839, align 8
  br label %840

; <label>:840                                     ; preds = %837, %.lr.ph108.prol
  %841 = add nsw i64 %j31.0109, 2
  br label %.lr.ph108.preheader.split

.lr.ph108.preheader.split:                        ; preds = %840, %.lr.ph108.preheader
  %k32.0106.unr = phi i64 [ %828, %.lr.ph108.preheader ], [ %841, %840 ]
  %842 = icmp eq i64 %827, %indvar696
  br i1 %842, label %.loopexit16, label %.lr.ph108.preheader.split.split

.lr.ph108.preheader.split.split:                  ; preds = %.lr.ph108.preheader.split
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %872, %.lr.ph108.preheader.split.split
  %k32.0106 = phi i64 [ %k32.0106.unr, %.lr.ph108.preheader.split.split ], [ %873, %872 ]
  %843 = load i64*, i64** %652, align 8
  %844 = getelementptr inbounds i64, i64* %843, i64 %k32.0106
  %845 = load i64, i64* %844, align 8
  %846 = getelementptr inbounds i64, i64* %843, i64 %j31.0109
  %847 = load i64, i64* %846, align 8
  %848 = icmp ult i64 %845, %847
  br i1 %848, label %849, label %.lr.ph108.1700

; <label>:849                                     ; preds = %.lr.ph108
  store i64 %845, i64* %846, align 8
  %850 = load i64*, i64** %652, align 8
  %851 = getelementptr inbounds i64, i64* %850, i64 %k32.0106
  store i64 %847, i64* %851, align 8
  br label %.lr.ph108.1700

.lr.ph108.1700:                                   ; preds = %849, %.lr.ph108
  %852 = add nsw i64 %k32.0106, 1
  %853 = load i64*, i64** %652, align 8
  %854 = getelementptr inbounds i64, i64* %853, i64 %852
  %855 = load i64, i64* %854, align 8
  %856 = getelementptr inbounds i64, i64* %853, i64 %j31.0109
  %857 = load i64, i64* %856, align 8
  %858 = icmp ult i64 %855, %857
  br i1 %858, label %869, label %872

._crit_edge115.loopexit:                          ; preds = %.loopexit17
  br label %._crit_edge115

._crit_edge115:                                   ; preds = %._crit_edge115.loopexit, %.preheader18, %758
  tail call void @free(i8* %762) #6
  br label %.loopexit15

.loopexit15.loopexit:                             ; preds = %.loopexit12.us
  br label %.loopexit15

.loopexit15.loopexit607:                          ; preds = %.outer.loopexit, %._crit_edge97
  br label %.loopexit15

.loopexit15:                                      ; preds = %.loopexit15.loopexit607, %.loopexit15.loopexit, %._crit_edge115, %.preheader14
  tail call void @random_free(%struct.random* nonnull %1) #6
  tail call void @free(i8* %7) #6
  ret void

; <label>:859                                     ; preds = %.lr.ph93.us.1690
  store i64 %747, i64* %748, align 8
  %860 = load i64*, i64** %652, align 8
  %861 = getelementptr inbounds i64, i64* %860, i64 %744
  store i64 %749, i64* %861, align 8
  br label %862

; <label>:862                                     ; preds = %859, %.lr.ph93.us.1690
  %863 = add nsw i64 %k.091.us, 2
  %exitcond300.1 = icmp eq i64 %863, %i1.1.us
  br i1 %exitcond300.1, label %.loopexit11.us.loopexit.unr-lcssa, label %.lr.ph93.us

; <label>:864                                     ; preds = %.lr.ph100.us.1695
  store i64 %716, i64* %717, align 8
  %865 = load i64*, i64** %652, align 8
  %866 = getelementptr inbounds i64, i64* %865, i64 %713
  store i64 %718, i64* %866, align 8
  br label %867

; <label>:867                                     ; preds = %864, %.lr.ph100.us.1695
  %868 = add nsw i64 %k27.098.us, 2
  %exitcond302.1 = icmp eq i64 %868, %513
  br i1 %exitcond302.1, label %.loopexit.us.loopexit.unr-lcssa, label %.lr.ph100.us

; <label>:869                                     ; preds = %.lr.ph108.1700
  store i64 %855, i64* %856, align 8
  %870 = load i64*, i64** %652, align 8
  %871 = getelementptr inbounds i64, i64* %870, i64 %852
  store i64 %857, i64* %871, align 8
  br label %872

; <label>:872                                     ; preds = %869, %.lr.ph108.1700
  %873 = add nsw i64 %k32.0106, 2
  %874 = icmp ult i64 %873, %822
  br i1 %874, label %.lr.ph108, label %.loopexit16.unr-lcssa

; <label>:875                                     ; preds = %.lr.ph136.1708
  %876 = sub nsw i64 0, %t21.1
  store i64 %876, i64* %562, align 8
  %877 = add nsw i64 %t21.1, 1
  br label %878

; <label>:878                                     ; preds = %875, %.lr.ph136.1708
  %t21.1.1 = phi i64 [ %877, %875 ], [ %t21.1, %.lr.ph136.1708 ]
  %879 = add nsw i64 %i.12135, 2
  %exitcond307.1 = icmp eq i64 %879, %513
  br i1 %exitcond307.1, label %._crit_edge137.loopexit.unr-lcssa, label %.lr.ph136
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #8

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #9

; Function Attrs: nounwind uwtable
define void @genScalData(i8* nocapture %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #6
  %5 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %6 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #6
  %7 = tail call %struct.random* (...) bitcast (%struct.random* ()* @Prandom_alloc to %struct.random* (...)*)() #6
  %8 = icmp eq %struct.random* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 780, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:10                                      ; preds = %0
  tail call void @random_seed(%struct.random* nonnull %7, i64 %5) #6
  %11 = icmp eq i64 %5, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %10
  %13 = load i64, i64* @TOT_VERTICES, align 8
  %14 = shl i64 %13, 3
  %15 = tail call noalias i8* @malloc(i64 %14) #6
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %12
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.67, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 787, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:18                                      ; preds = %12
  store i8* %15, i8** bitcast (i64** @global_permV to i8**), align 8
  br label %19

; <label>:19                                      ; preds = %18, %10
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %20 = load i64*, i64** @global_permV, align 8
  %21 = load i64, i64* @TOT_VERTICES, align 8
  call void @createPartition(i64 0, i64 %21, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %22 = load i64, i64* %i_start, align 8
  %23 = load i64, i64* %i_stop, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %.lr.ph242.preheader, label %._crit_edge243

.lr.ph242.preheader:                              ; preds = %19
  br label %.lr.ph242

.lr.ph242:                                        ; preds = %.lr.ph242, %.lr.ph242.preheader
  %i.0240 = phi i64 [ %26, %.lr.ph242 ], [ %22, %.lr.ph242.preheader ]
  %25 = getelementptr inbounds i64, i64* %20, i64 %i.0240
  store i64 %i.0240, i64* %25, align 8
  %26 = add nsw i64 %i.0240, 1
  %27 = load i64, i64* %i_stop, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %.lr.ph242, label %._crit_edge243.loopexit

._crit_edge243.loopexit:                          ; preds = %.lr.ph242
  br label %._crit_edge243

._crit_edge243:                                   ; preds = %._crit_edge243.loopexit, %19
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %29 = load i64, i64* %i_start, align 8
  %30 = load i64, i64* %i_stop, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %.lr.ph238.preheader, label %._crit_edge239

.lr.ph238.preheader:                              ; preds = %._crit_edge243
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %61, %.lr.ph238.preheader
  %i.1236 = phi i64 [ %62, %61 ], [ %29, %.lr.ph238.preheader ]
  %32 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %33 = load i64, i64* @TOT_VERTICES, align 8
  %34 = sub i64 %33, %i.1236
  %35 = urem i64 %32, %34
  %36 = add i64 %35, %i.1236
  %37 = icmp eq i64 %35, 0
  br i1 %37, label %61, label %.outer59.preheader

.outer59.preheader:                               ; preds = %.lr.ph238
  br label %.outer59

.outer59:                                         ; preds = %44, %.outer59.preheader
  %tries.0.ph = phi i32 [ %45, %44 ], [ 9, %.outer59.preheader ]
  %38 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %._crit_edge235, label %.lr.ph234.preheader

.lr.ph234.preheader:                              ; preds = %.outer59
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph234, %.lr.ph234.preheader
  call void @llvm.x86.sse2.pause() #6
  %40 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %._crit_edge235.loopexit, label %.lr.ph234

._crit_edge235.loopexit:                          ; preds = %.lr.ph234
  br label %._crit_edge235

._crit_edge235:                                   ; preds = %._crit_edge235.loopexit, %.outer59
  %42 = icmp slt i32 %tries.0.ph, 2
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %._crit_edge235
  %tries.0.ph.lcssa = phi i32 [ %tries.0.ph, %._crit_edge235 ]
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #6
  br label %53

; <label>:44                                      ; preds = %._crit_edge235
  %45 = add nsw i32 %tries.0.ph, -1
  %46 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #6, !srcloc !36
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %.outer59

; <label>:49                                      ; preds = %44
  %tries.0.ph.lcssa626 = phi i32 [ %tries.0.ph, %44 ]
  %50 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %53, label %52

; <label>:52                                      ; preds = %49
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !37
  br label %53

; <label>:53                                      ; preds = %52, %49, %43
  %tries.0.ph627 = phi i32 [ %tries.0.ph.lcssa626, %49 ], [ %tries.0.ph.lcssa626, %52 ], [ %tries.0.ph.lcssa, %43 ]
  %54 = getelementptr inbounds i64, i64* %20, i64 %36
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %20, i64 %i.1236
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %54, align 8
  store i64 %55, i64* %56, align 8
  %58 = icmp sgt i32 %tries.0.ph627, 1
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %53
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #6, !srcloc !38
  br label %61

; <label>:60                                      ; preds = %53
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #6
  br label %61

; <label>:61                                      ; preds = %60, %59, %.lr.ph238
  %62 = add nsw i64 %i.1236, 1
  %63 = load i64, i64* %i_stop, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %.lr.ph238, label %._crit_edge239.loopexit

._crit_edge239.loopexit:                          ; preds = %61
  br label %._crit_edge239

._crit_edge239:                                   ; preds = %._crit_edge239.loopexit, %._crit_edge243
  %65 = load i64, i64* @TOT_VERTICES, align 8
  %66 = uitofp i64 %65 to double
  %67 = fmul double %66, 1.500000e+00
  %68 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %69 = add nsw i64 %68, 1
  %70 = sdiv i64 %69, 2
  %71 = sitofp i64 %70 to double
  %72 = fdiv double %67, %71
  %73 = call double @ceil(double %72) #16
  %74 = fptosi double %73 to i64
  br i1 %11, label %75, label %81

; <label>:75                                      ; preds = %._crit_edge239
  %76 = shl i64 %74, 3
  %77 = call noalias i8* @malloc(i64 %76) #6
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

; <label>:79                                      ; preds = %75
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.68, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 833, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:80                                      ; preds = %75
  store i8* %77, i8** bitcast (i64** @global_cliqueSizes to i8**), align 8
  br label %81

; <label>:81                                      ; preds = %80, %._crit_edge239
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %82 = load i64*, i64** @global_cliqueSizes, align 8
  call void @createPartition(i64 0, i64 %74, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %83 = load i64, i64* %i_start, align 8
  %84 = load i64, i64* %i_stop, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %.lr.ph232.preheader, label %._crit_edge233

.lr.ph232.preheader:                              ; preds = %81
  br label %.lr.ph232

.lr.ph232:                                        ; preds = %.lr.ph232, %.lr.ph232.preheader
  %i.2230 = phi i64 [ %91, %.lr.ph232 ], [ %83, %.lr.ph232.preheader ]
  %86 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %87 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %88 = urem i64 %86, %87
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds i64, i64* %82, i64 %i.2230
  store i64 %89, i64* %90, align 8
  %91 = add nsw i64 %i.2230, 1
  %92 = load i64, i64* %i_stop, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %.lr.ph232, label %._crit_edge233.loopexit

._crit_edge233.loopexit:                          ; preds = %.lr.ph232
  br label %._crit_edge233

._crit_edge233:                                   ; preds = %._crit_edge233.loopexit, %81
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %11, label %94, label %129

; <label>:94                                      ; preds = %._crit_edge233
  %95 = shl i64 %74, 3
  %96 = call noalias i8* @malloc(i64 %95) #6
  %97 = bitcast i8* %96 to i64*
  %98 = icmp eq i8* %96, null
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %94
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.69, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 862, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:100                                     ; preds = %94
  store i8* %96, i8** bitcast (i64** @global_lastVsInCliques to i8**), align 8
  %101 = call noalias i8* @malloc(i64 %95) #6
  %102 = bitcast i8* %101 to i64*
  %103 = icmp eq i8* %101, null
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %100
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5.70, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 865, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:105                                     ; preds = %100
  store i8* %101, i8** bitcast (i64** @global_firstVsInCliques to i8**), align 8
  %106 = load i64, i64* %82, align 8
  %107 = add nsw i64 %106, -1
  store i64 %107, i64* %97, align 8
  %108 = icmp sgt i64 %74, 1
  %.pre = load i64, i64* @TOT_VERTICES, align 8
  br i1 %108, label %.lr.ph225.preheader, label %._crit_edge226

.lr.ph225.preheader:                              ; preds = %105
  %109 = add i64 %.pre, -1
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %116, %.lr.ph225.preheader
  %110 = phi i64 [ %113, %116 ], [ %107, %.lr.ph225.preheader ]
  %i.3223 = phi i64 [ %117, %116 ], [ 1, %.lr.ph225.preheader ]
  %111 = getelementptr inbounds i64, i64* %82, i64 %i.3223
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %110, %112
  %114 = getelementptr inbounds i64, i64* %97, i64 %i.3223
  store i64 %113, i64* %114, align 8
  %115 = icmp ult i64 %113, %109
  br i1 %115, label %116, label %._crit_edge226.loopexit

; <label>:116                                     ; preds = %.lr.ph225
  %117 = add nuw nsw i64 %i.3223, 1
  %118 = icmp slt i64 %117, %74
  br i1 %118, label %.lr.ph225, label %._crit_edge226.loopexit

._crit_edge226.loopexit:                          ; preds = %116, %.lr.ph225
  %i.3.lcssa.ph = phi i64 [ %i.3223, %.lr.ph225 ], [ %117, %116 ]
  br label %._crit_edge226

._crit_edge226:                                   ; preds = %._crit_edge226.loopexit, %105
  %i.3.lcssa = phi i64 [ 1, %105 ], [ %i.3.lcssa.ph, %._crit_edge226.loopexit ]
  %119 = add nsw i64 %i.3.lcssa, 1
  store i64 %119, i64* @global_totCliques, align 8
  %120 = add nsw i64 %i.3.lcssa, -1
  %121 = getelementptr inbounds i64, i64* %97, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %.pre, -1
  %124 = sub i64 %123, %122
  %125 = getelementptr inbounds i64, i64* %82, i64 %i.3.lcssa
  store i64 %124, i64* %125, align 8
  %126 = load i64, i64* @TOT_VERTICES, align 8
  %127 = add i64 %126, -1
  %128 = getelementptr inbounds i64, i64* %97, i64 %i.3.lcssa
  store i64 %127, i64* %128, align 8
  store i64 0, i64* %102, align 8
  br label %129

; <label>:129                                     ; preds = %._crit_edge226, %._crit_edge233
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %130 = load i64*, i64** @global_lastVsInCliques, align 8
  %131 = load i64*, i64** @global_firstVsInCliques, align 8
  %132 = load i64, i64* @global_totCliques, align 8
  call void @createPartition(i64 1, i64 %132, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %133 = load i64, i64* %i_start, align 8
  %134 = load i64, i64* %i_stop, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %.lr.ph221.preheader, label %._crit_edge222

.lr.ph221.preheader:                              ; preds = %129
  br label %.lr.ph221

.lr.ph221:                                        ; preds = %.lr.ph221, %.lr.ph221.preheader
  %i.4219 = phi i64 [ %141, %.lr.ph221 ], [ %133, %.lr.ph221.preheader ]
  %136 = add nsw i64 %i.4219, -1
  %137 = getelementptr inbounds i64, i64* %130, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, 1
  %140 = getelementptr inbounds i64, i64* %131, i64 %i.4219
  store i64 %139, i64* %140, align 8
  %141 = add nsw i64 %i.4219, 1
  %142 = load i64, i64* %i_stop, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %.lr.ph221, label %._crit_edge222.loopexit

._crit_edge222.loopexit:                          ; preds = %.lr.ph221
  br label %._crit_edge222

._crit_edge222:                                   ; preds = %._crit_edge222.loopexit, %129
  %144 = load i64, i64* @SCALE, align 8
  %145 = icmp sgt i64 %144, 11
  %146 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %147 = add nsw i64 %146, -1
  %148 = load i64, i64* @TOT_VERTICES, align 8
  %149 = mul i64 %147, %148
  br i1 %145, label %150, label %152

; <label>:150                                     ; preds = %._crit_edge222
  %151 = uitofp i64 %149 to double
  br label %161

; <label>:152                                     ; preds = %._crit_edge222
  %153 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %154 = add nsw i64 %153, 1
  %155 = sdiv i64 %154, 2
  %156 = mul i64 %155, %149
  %157 = shl i64 %148, 1
  %158 = add i64 %156, %157
  %159 = uitofp i64 %158 to double
  %160 = fmul double %159, 1.200000e+00
  br label %161

; <label>:161                                     ; preds = %152, %150
  %.sink = phi double [ %151, %150 ], [ %160, %152 ]
  %162 = call double @ceil(double %.sink) #16
  %estTotEdges.0 = fptosi double %162 to i64
  %163 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %164 = icmp sgt i64 %6, 3
  %165 = sdiv i64 %estTotEdges.0, %6
  br i1 %164, label %166, label %173

; <label>:166                                     ; preds = %161
  %167 = sitofp i64 %165 to double
  %168 = fmul double %167, 1.500000e+00
  %169 = fmul double %168, 8.000000e+00
  %170 = fptosi double %169 to i64
  %171 = call noalias i8* @malloc(i64 %170) #6
  %172 = call noalias i8* @malloc(i64 %170) #6
  br label %177

; <label>:173                                     ; preds = %161
  %174 = shl i64 %165, 3
  %175 = call noalias i8* @malloc(i64 %174) #6
  %176 = call noalias i8* @malloc(i64 %174) #6
  br label %177

; <label>:177                                     ; preds = %173, %166
  %endV.0.in = phi i8* [ %172, %166 ], [ %176, %173 ]
  %startV.0.in = phi i8* [ %171, %166 ], [ %175, %173 ]
  %startV.0 = bitcast i8* %startV.0.in to i64*
  %endV.0 = bitcast i8* %endV.0.in to i64*
  %178 = icmp eq i8* %startV.0.in, null
  br i1 %178, label %179, label %180

; <label>:179                                     ; preds = %177
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.71, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 964, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:180                                     ; preds = %177
  %181 = icmp eq i8* %endV.0.in, null
  br i1 %181, label %182, label %183

; <label>:182                                     ; preds = %180
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.72, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 965, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:183                                     ; preds = %180
  %184 = shl i64 %146, 3
  %185 = call noalias i8* @malloc(i64 %184) #6
  %186 = bitcast i8* %185 to i64**
  %187 = icmp eq i8* %185, null
  br i1 %187, label %189, label %.preheader57

.preheader57:                                     ; preds = %183
  %188 = icmp sgt i64 %146, 0
  br i1 %188, label %.lr.ph217.preheader, label %._crit_edge218

.lr.ph217.preheader:                              ; preds = %.preheader57
  br label %.lr.ph217

; <label>:189                                     ; preds = %183
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8.73, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 972, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:190                                     ; preds = %.lr.ph217
  %191 = icmp slt i64 %196, %146
  br i1 %191, label %.lr.ph217, label %._crit_edge218.loopexit

.lr.ph217:                                        ; preds = %190, %.lr.ph217.preheader
  %i.5216 = phi i64 [ %196, %190 ], [ 0, %.lr.ph217.preheader ]
  %192 = call noalias i8* @malloc(i64 %184) #6
  %193 = getelementptr inbounds i64*, i64** %186, i64 %i.5216
  %194 = bitcast i64** %193 to i8**
  store i8* %192, i8** %194, align 8
  %195 = icmp eq i8* %192, null
  %196 = add nuw nsw i64 %i.5216, 1
  br i1 %195, label %197, label %190

; <label>:197                                     ; preds = %.lr.ph217
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9.74, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 976, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

._crit_edge218.loopexit:                          ; preds = %190
  br label %._crit_edge218

._crit_edge218:                                   ; preds = %._crit_edge218.loopexit, %.preheader57
  call void @createPartition(i64 0, i64 %132, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %198 = load i64, i64* %i_start, align 8
  %199 = load i64, i64* %i_stop, align 8
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %.lr.ph214.preheader, label %.preheader54

.lr.ph214.preheader:                              ; preds = %._crit_edge218
  br label %.lr.ph214

.preheader54.loopexit:                            ; preds = %.loopexit56
  %i_edgePtr.6.lcssa = phi i64 [ %i_edgePtr.6, %.loopexit56 ]
  br label %.preheader54

.preheader54:                                     ; preds = %.preheader54.loopexit, %._crit_edge218
  %i_edgePtr.0.lcssa = phi i64 [ 0, %._crit_edge218 ], [ %i_edgePtr.6.lcssa, %.preheader54.loopexit ]
  %201 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %202 = icmp sgt i64 %201, 0
  br i1 %202, label %.lr.ph194.preheader, label %._crit_edge195

.lr.ph194.preheader:                              ; preds = %.preheader54
  br label %.lr.ph194

.lr.ph214:                                        ; preds = %.loopexit56, %.lr.ph214.preheader
  %i_edgePtr.0212 = phi i64 [ %i_edgePtr.6, %.loopexit56 ], [ 0, %.lr.ph214.preheader ]
  %i_clique.0211 = phi i64 [ %284, %.loopexit56 ], [ %198, %.lr.ph214.preheader ]
  %203 = getelementptr inbounds i64, i64* %82, i64 %i_clique.0211
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds i64, i64* %131, i64 %i_clique.0211
  %206 = load i64, i64* %205, align 8
  %207 = icmp sgt i64 %204, 0
  br i1 %207, label %.preheader55.preheader, label %._crit_edge204.thread

.preheader55.preheader:                           ; preds = %.lr.ph214
  br label %.preheader55

.preheader55:                                     ; preds = %._crit_edge199, %.preheader55.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge199 ], [ 0, %.preheader55.preheader ]
  %i_edgePtr.1201 = phi i64 [ %i_edgePtr.2.lcssa, %._crit_edge199 ], [ %i_edgePtr.0212, %.preheader55.preheader ]
  %208 = icmp sgt i64 %indvars.iv, 0
  br i1 %208, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %.preheader55
  %209 = add nsw i64 %indvars.iv, %206
  %210 = getelementptr inbounds i64*, i64** %186, i64 %indvars.iv
  br label %211

; <label>:211                                     ; preds = %247, %.lr.ph198
  %i_edgePtr.2197 = phi i64 [ %i_edgePtr.1201, %.lr.ph198 ], [ %i_edgePtr.3, %247 ]
  %j.0196 = phi i64 [ 0, %.lr.ph198 ], [ %248, %247 ]
  %212 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %213 = urem i64 %212, 1000
  %214 = uitofp i64 %213 to float
  %215 = fdiv float %214, 1.000000e+03
  %216 = fcmp ult float %215, %163
  br i1 %216, label %229, label %217

; <label>:217                                     ; preds = %211
  %218 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.2197
  store i64 %209, i64* %218, align 8
  %219 = add nsw i64 %j.0196, %206
  %220 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.2197
  store i64 %219, i64* %220, align 8
  %221 = add nsw i64 %i_edgePtr.2197, 1
  %222 = load i64*, i64** %210, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 %j.0196
  store i64 1, i64* %223, align 8
  %224 = getelementptr inbounds i64, i64* %startV.0, i64 %221
  store i64 %219, i64* %224, align 8
  %225 = getelementptr inbounds i64, i64* %endV.0, i64 %221
  store i64 %209, i64* %225, align 8
  %226 = getelementptr inbounds i64*, i64** %186, i64 %j.0196
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 %indvars.iv
  store i64 1, i64* %228, align 8
  br label %247

; <label>:229                                     ; preds = %211
  %230 = fcmp ult float %215, 5.000000e-01
  %231 = getelementptr inbounds i64*, i64** %186, i64 %j.0196
  %232 = load i64*, i64** %231, align 8
  br i1 %230, label %240, label %233

; <label>:233                                     ; preds = %229
  %234 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.2197
  store i64 %209, i64* %234, align 8
  %235 = add nsw i64 %j.0196, %206
  %236 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.2197
  store i64 %235, i64* %236, align 8
  %237 = load i64*, i64** %210, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 %j.0196
  store i64 1, i64* %238, align 8
  %239 = getelementptr inbounds i64, i64* %232, i64 %indvars.iv
  store i64 0, i64* %239, align 8
  br label %247

; <label>:240                                     ; preds = %229
  %241 = add nsw i64 %j.0196, %206
  %242 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.2197
  store i64 %241, i64* %242, align 8
  %243 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.2197
  store i64 %209, i64* %243, align 8
  %244 = getelementptr inbounds i64, i64* %232, i64 %indvars.iv
  store i64 1, i64* %244, align 8
  %245 = load i64*, i64** %210, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 %j.0196
  store i64 0, i64* %246, align 8
  br label %247

; <label>:247                                     ; preds = %240, %233, %217
  %i_edgePtr.3.in = phi i64 [ %221, %217 ], [ %i_edgePtr.2197, %233 ], [ %i_edgePtr.2197, %240 ]
  %i_edgePtr.3 = add nsw i64 %i_edgePtr.3.in, 1
  %248 = add nuw nsw i64 %j.0196, 1
  %exitcond308 = icmp eq i64 %248, %indvars.iv
  br i1 %exitcond308, label %._crit_edge199.loopexit, label %211

._crit_edge199.loopexit:                          ; preds = %247
  %i_edgePtr.3.lcssa = phi i64 [ %i_edgePtr.3, %247 ]
  br label %._crit_edge199

._crit_edge199:                                   ; preds = %._crit_edge199.loopexit, %.preheader55
  %i_edgePtr.2.lcssa = phi i64 [ %i_edgePtr.1201, %.preheader55 ], [ %i_edgePtr.3.lcssa, %._crit_edge199.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond309 = icmp eq i64 %indvars.iv.next, %204
  br i1 %exitcond309, label %._crit_edge204, label %.preheader55

._crit_edge204:                                   ; preds = %._crit_edge199
  %i_edgePtr.2.lcssa.lcssa = phi i64 [ %i_edgePtr.2.lcssa, %._crit_edge199 ]
  %249 = icmp eq i64 %204, 1
  br i1 %249, label %.loopexit56, label %._crit_edge204.thread

._crit_edge204.thread:                            ; preds = %._crit_edge204, %.lr.ph214
  %i_edgePtr.1.lcssa338 = phi i64 [ %i_edgePtr.2.lcssa.lcssa, %._crit_edge204 ], [ %i_edgePtr.0212, %.lr.ph214 ]
  %250 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %251 = shl i64 %204, 1
  %252 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %253 = mul nsw i64 %251, %252
  %254 = urem i64 %250, %253
  %255 = icmp sgt i64 %254, 0
  br i1 %255, label %.lr.ph209.preheader, label %.loopexit56

.lr.ph209.preheader:                              ; preds = %._crit_edge204.thread
  br label %.lr.ph209

.lr.ph209:                                        ; preds = %282, %.lr.ph209.preheader
  %i_edgePtr.4207 = phi i64 [ %i_edgePtr.5, %282 ], [ %i_edgePtr.1.lcssa338, %.lr.ph209.preheader ]
  %i_paralEdge.0206 = phi i64 [ %283, %282 ], [ 0, %.lr.ph209.preheader ]
  %256 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %257 = urem i64 %256, %204
  %258 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %259 = urem i64 %258, %204
  %260 = icmp eq i64 %257, %259
  br i1 %260, label %282, label %261

; <label>:261                                     ; preds = %.lr.ph209
  %262 = getelementptr inbounds i64*, i64** %186, i64 %257
  %263 = load i64*, i64** %262, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 %259
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %267 = icmp ult i64 %265, %266
  br i1 %267, label %268, label %282

; <label>:268                                     ; preds = %261
  %269 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %270 = urem i64 %269, 1000
  %271 = uitofp i64 %270 to float
  %272 = fdiv float %271, 1.000000e+03
  %273 = fcmp ult float %272, %163
  br i1 %273, label %282, label %274

; <label>:274                                     ; preds = %268
  %275 = add nsw i64 %257, %206
  %276 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.4207
  store i64 %275, i64* %276, align 8
  %277 = add nsw i64 %259, %206
  %278 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.4207
  store i64 %277, i64* %278, align 8
  %279 = add nsw i64 %i_edgePtr.4207, 1
  %280 = load i64, i64* %264, align 8
  %281 = add i64 %280, 1
  store i64 %281, i64* %264, align 8
  br label %282

; <label>:282                                     ; preds = %274, %268, %261, %.lr.ph209
  %i_edgePtr.5 = phi i64 [ %279, %274 ], [ %i_edgePtr.4207, %268 ], [ %i_edgePtr.4207, %261 ], [ %i_edgePtr.4207, %.lr.ph209 ]
  %283 = add nuw nsw i64 %i_paralEdge.0206, 1
  %exitcond310 = icmp eq i64 %283, %254
  br i1 %exitcond310, label %.loopexit56.loopexit, label %.lr.ph209

.loopexit56.loopexit:                             ; preds = %282
  %i_edgePtr.5.lcssa = phi i64 [ %i_edgePtr.5, %282 ]
  br label %.loopexit56

.loopexit56:                                      ; preds = %.loopexit56.loopexit, %._crit_edge204.thread, %._crit_edge204
  %i_edgePtr.6 = phi i64 [ %i_edgePtr.2.lcssa.lcssa, %._crit_edge204 ], [ %i_edgePtr.1.lcssa338, %._crit_edge204.thread ], [ %i_edgePtr.5.lcssa, %.loopexit56.loopexit ]
  %284 = add nsw i64 %i_clique.0211, 1
  %285 = load i64, i64* %i_stop, align 8
  %286 = icmp slt i64 %284, %285
  br i1 %286, label %.lr.ph214, label %.preheader54.loopexit

.lr.ph194:                                        ; preds = %.lr.ph194, %.lr.ph194.preheader
  %i.7193 = phi i64 [ %290, %.lr.ph194 ], [ 0, %.lr.ph194.preheader ]
  %287 = getelementptr inbounds i64*, i64** %186, i64 %i.7193
  %288 = bitcast i64** %287 to i8**
  %289 = load i8*, i8** %288, align 8
  call void @free(i8* %289) #6
  %290 = add nuw nsw i64 %i.7193, 1
  %291 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %292 = icmp slt i64 %290, %291
  br i1 %292, label %.lr.ph194, label %._crit_edge195.loopexit

._crit_edge195.loopexit:                          ; preds = %.lr.ph194
  br label %._crit_edge195

._crit_edge195:                                   ; preds = %._crit_edge195.loopexit, %.preheader54
  call void @free(i8* %185) #6
  br i1 %11, label %293, label %303

; <label>:293                                     ; preds = %._crit_edge195
  %294 = shl i64 %6, 3
  %295 = call noalias i8* @malloc(i64 %294) #6
  %296 = icmp eq i8* %295, null
  br i1 %296, label %297, label %298

; <label>:297                                     ; preds = %293
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21.85, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 1075, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:298                                     ; preds = %293
  store i8* %295, i8** bitcast (i64** @global_i_edgeStartCounter to i8**), align 8
  %299 = call noalias i8* @malloc(i64 %294) #6
  %300 = icmp eq i8* %299, null
  br i1 %300, label %301, label %302

; <label>:301                                     ; preds = %298
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22.86, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 1078, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:302                                     ; preds = %298
  store i8* %299, i8** bitcast (i64** @global_i_edgeEndCounter to i8**), align 8
  br label %303

; <label>:303                                     ; preds = %302, %._crit_edge195
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %304 = load i64*, i64** @global_i_edgeStartCounter, align 8
  %305 = load i64*, i64** @global_i_edgeEndCounter, align 8
  %306 = getelementptr inbounds i64, i64* %305, i64 %5
  store i64 %i_edgePtr.0.lcssa, i64* %306, align 8
  %307 = getelementptr inbounds i64, i64* %304, i64 %5
  store i64 0, i64* %307, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %308 = icmp sgt i64 %6, 1
  %or.cond = and i1 %11, %308
  br i1 %or.cond, label %.lr.ph192.preheader, label %.outer52.preheader

.lr.ph192.preheader:                              ; preds = %303
  %309 = and i64 %6, 1
  %lcmp.mod581 = icmp eq i64 %309, 0
  br i1 %lcmp.mod581, label %.lr.ph192.prol, label %.lr.ph192.preheader.split

.lr.ph192.prol:                                   ; preds = %.lr.ph192.preheader
  %310 = load i64, i64* %305, align 8
  %311 = getelementptr inbounds i64, i64* %305, i64 1
  %312 = load i64, i64* %311, align 8
  %313 = add i64 %312, %310
  store i64 %313, i64* %311, align 8
  %314 = getelementptr inbounds i64, i64* %304, i64 1
  store i64 %310, i64* %314, align 8
  br label %.lr.ph192.preheader.split

.lr.ph192.preheader.split:                        ; preds = %.lr.ph192.prol, %.lr.ph192.preheader
  %i.8191.unr = phi i64 [ 1, %.lr.ph192.preheader ], [ 2, %.lr.ph192.prol ]
  %315 = icmp eq i64 %6, 2
  br i1 %315, label %.outer52.preheader.loopexit, label %.lr.ph192.preheader.split.split

.lr.ph192.preheader.split.split:                  ; preds = %.lr.ph192.preheader.split
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192, %.lr.ph192.preheader.split.split
  %i.8191 = phi i64 [ %i.8191.unr, %.lr.ph192.preheader.split.split ], [ %330, %.lr.ph192 ]
  %316 = add nsw i64 %i.8191, -1
  %317 = getelementptr inbounds i64, i64* %305, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = getelementptr inbounds i64, i64* %305, i64 %i.8191
  %320 = load i64, i64* %319, align 8
  %321 = add i64 %320, %318
  store i64 %321, i64* %319, align 8
  %322 = getelementptr inbounds i64, i64* %304, i64 %i.8191
  store i64 %318, i64* %322, align 8
  %323 = add nuw nsw i64 %i.8191, 1
  %324 = getelementptr inbounds i64, i64* %305, i64 %i.8191
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds i64, i64* %305, i64 %323
  %327 = load i64, i64* %326, align 8
  %328 = add i64 %327, %325
  store i64 %328, i64* %326, align 8
  %329 = getelementptr inbounds i64, i64* %304, i64 %323
  store i64 %325, i64* %329, align 8
  %330 = add nsw i64 %i.8191, 2
  %exitcond307.1 = icmp eq i64 %330, %6
  br i1 %exitcond307.1, label %.outer52.preheader.loopexit.unr-lcssa, label %.lr.ph192

.outer52.preheader.loopexit.unr-lcssa:            ; preds = %.lr.ph192
  br label %.outer52.preheader.loopexit

.outer52.preheader.loopexit:                      ; preds = %.outer52.preheader.loopexit.unr-lcssa, %.lr.ph192.preheader.split
  br label %.outer52.preheader

.outer52.preheader:                               ; preds = %.outer52.preheader.loopexit, %303
  br label %.outer52

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %.lr.ph189
  call void @llvm.x86.sse2.pause() #6
  %331 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %._crit_edge190.loopexit, label %.lr.ph189

._crit_edge190.loopexit:                          ; preds = %.lr.ph189
  br label %._crit_edge190

._crit_edge190:                                   ; preds = %.outer52, %._crit_edge190.loopexit
  %333 = icmp slt i32 %tries5.0.ph, 2
  br i1 %333, label %348, label %334

; <label>:334                                     ; preds = %._crit_edge190
  %335 = add nsw i32 %tries5.0.ph, -1
  %336 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #6, !srcloc !36
  %337 = trunc i64 %336 to i32
  %338 = icmp eq i32 %337, -1
  br i1 %338, label %341, label %.outer52

.outer52:                                         ; preds = %334, %.outer52.preheader
  %tries5.0.ph = phi i32 [ %335, %334 ], [ 9, %.outer52.preheader ]
  %339 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %._crit_edge190, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %.outer52
  br label %.lr.ph189

; <label>:341                                     ; preds = %334
  %342 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %345, label %344

; <label>:344                                     ; preds = %341
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !37
  br label %345

; <label>:345                                     ; preds = %344, %341
  %346 = load i64, i64* @global_edgeNum, align 8
  %347 = add nsw i64 %346, %i_edgePtr.0.lcssa
  store i64 %347, i64* @global_edgeNum, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #6, !srcloc !38
  br label %351

; <label>:348                                     ; preds = %._crit_edge190
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #6
  %349 = load i64, i64* @global_edgeNum, align 8
  %350 = add nsw i64 %349, %i_edgePtr.0.lcssa
  store i64 %350, i64* @global_edgeNum, align 8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #6
  br label %351

; <label>:351                                     ; preds = %348, %345
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %352 = load i64, i64* @global_edgeNum, align 8
  br i1 %11, label %353, label %375

; <label>:353                                     ; preds = %351
  %354 = load i64, i64* @SCALE, align 8
  %355 = icmp slt i64 %354, 10
  br i1 %355, label %356, label %360

; <label>:356                                     ; preds = %353
  %357 = shl i64 %352, 4
  %358 = call noalias i8* @malloc(i64 %357) #6
  %359 = call noalias i8* @malloc(i64 %357) #6
  br label %368

; <label>:360                                     ; preds = %353
  %361 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %362 = load i64, i64* @TOT_VERTICES, align 8
  %363 = mul i64 %362, %361
  %364 = add i64 %363, %352
  %365 = shl i64 %364, 3
  %366 = call noalias i8* @malloc(i64 %365) #6
  %367 = call noalias i8* @malloc(i64 %365) #6
  br label %368

; <label>:368                                     ; preds = %360, %356
  %endVertex.0.in = phi i8* [ %359, %356 ], [ %367, %360 ]
  %startVertex.0.in = phi i8* [ %358, %356 ], [ %366, %360 ]
  %369 = icmp eq i8* %startVertex.0.in, null
  br i1 %369, label %370, label %371

; <label>:370                                     ; preds = %368
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10.75, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 1126, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:371                                     ; preds = %368
  %372 = icmp eq i8* %endVertex.0.in, null
  br i1 %372, label %373, label %374

; <label>:373                                     ; preds = %371
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11.76, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 1127, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:374                                     ; preds = %371
  store i8* %startVertex.0.in, i8** bitcast (i64** @global_startVertex to i8**), align 8
  store i8* %endVertex.0.in, i8** bitcast (i64** @global_endVertex to i8**), align 8
  br label %375

; <label>:375                                     ; preds = %374, %351
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %376 = load i64*, i64** @global_startVertex, align 8
  %377 = load i64*, i64** @global_endVertex, align 8
  %378 = load i64, i64* %307, align 8
  %379 = load i64, i64* %306, align 8
  %380 = icmp ult i64 %378, %379
  br i1 %380, label %.lr.ph187.preheader, label %._crit_edge188

.lr.ph187.preheader:                              ; preds = %375
  %381 = load i64, i64* %startV.0, align 8
  %382 = getelementptr inbounds i64, i64* %376, i64 %378
  store i64 %381, i64* %382, align 8
  %383 = load i64, i64* %307, align 8
  %384 = sub i64 %378, %383
  %385 = getelementptr inbounds i64, i64* %endV.0, i64 %384
  %386 = load i64, i64* %385, align 8
  %387 = getelementptr inbounds i64, i64* %377, i64 %378
  store i64 %386, i64* %387, align 8
  %388 = add nsw i64 %378, 1
  %389 = load i64, i64* %306, align 8
  %390 = icmp ult i64 %388, %389
  br i1 %390, label %.lr.ph187..lr.ph187_crit_edge.preheader, label %._crit_edge188

.lr.ph187..lr.ph187_crit_edge.preheader:          ; preds = %.lr.ph187.preheader
  br label %.lr.ph187..lr.ph187_crit_edge

.lr.ph187..lr.ph187_crit_edge:                    ; preds = %.lr.ph187..lr.ph187_crit_edge, %.lr.ph187..lr.ph187_crit_edge.preheader
  %391 = phi i64 [ %401, %.lr.ph187..lr.ph187_crit_edge ], [ %388, %.lr.ph187..lr.ph187_crit_edge.preheader ]
  %.pre314 = load i64, i64* %307, align 8
  %392 = sub i64 %391, %.pre314
  %393 = getelementptr inbounds i64, i64* %startV.0, i64 %392
  %394 = load i64, i64* %393, align 8
  %395 = getelementptr inbounds i64, i64* %376, i64 %391
  store i64 %394, i64* %395, align 8
  %396 = load i64, i64* %307, align 8
  %397 = sub i64 %391, %396
  %398 = getelementptr inbounds i64, i64* %endV.0, i64 %397
  %399 = load i64, i64* %398, align 8
  %400 = getelementptr inbounds i64, i64* %377, i64 %391
  store i64 %399, i64* %400, align 8
  %401 = add nsw i64 %391, 1
  %402 = load i64, i64* %306, align 8
  %403 = icmp ult i64 %401, %402
  br i1 %403, label %.lr.ph187..lr.ph187_crit_edge, label %._crit_edge188.loopexit

._crit_edge188.loopexit:                          ; preds = %.lr.ph187..lr.ph187_crit_edge
  br label %._crit_edge188

._crit_edge188:                                   ; preds = %._crit_edge188.loopexit, %.lr.ph187.preheader, %375
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %404 = load i64, i64* @TOT_VERTICES, align 8
  call void @createPartition(i64 0, i64 %404, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %405 = load i64, i64* %i_start, align 8
  %406 = load i64, i64* %i_stop, align 8
  %407 = icmp slt i64 %405, %406
  br i1 %407, label %.preheader47.preheader, label %._crit_edge183

.preheader47.preheader:                           ; preds = %._crit_edge188
  br label %.preheader47

.preheader47:                                     ; preds = %._crit_edge178, %.preheader47.preheader
  %408 = phi i64 [ %615, %._crit_edge178 ], [ %406, %.preheader47.preheader ]
  %i.10181 = phi i64 [ %616, %._crit_edge178 ], [ %405, %.preheader47.preheader ]
  %i_edgePtr.7180 = phi i64 [ %i_edgePtr.8.lcssa, %._crit_edge178 ], [ 0, %.preheader47.preheader ]
  br label %.outer48

.outer48:                                         ; preds = %.us-lcssa.us, %.preheader47
  %h.0.ph = phi i64 [ %132, %.preheader47 ], [ %.lcssa598, %.us-lcssa.us ]
  %l.0.ph = phi i64 [ 0, %.preheader47 ], [ %l.0.ph50426.lcssa, %.us-lcssa.us ]
  %409 = sub nsw i64 %h.0.ph, %l.0.ph
  %410 = icmp sgt i64 %409, 1
  br i1 %410, label %.outer49.split.us.preheader, label %.thread.preheader.loopexit

.outer49.split.us.preheader:                      ; preds = %.outer48
  br label %.outer49.split.us

.outer49.split.us:                                ; preds = %.outer49.backedge, %.outer49.split.us.preheader
  %.pn508 = phi i64 [ %411, %.outer49.backedge ], [ %l.0.ph, %.outer49.split.us.preheader ]
  %l.0.ph50426 = phi i64 [ %411, %.outer49.backedge ], [ %l.0.ph, %.outer49.split.us.preheader ]
  %.in506 = add nsw i64 %.pn508, %h.0.ph
  %411 = sdiv i64 %.in506, 2
  %412 = getelementptr inbounds i64, i64* %131, i64 %411
  %413 = icmp sgt i64 %.in506, 1
  %414 = load i64, i64* %412, align 8
  %415 = icmp ult i64 %i.10181, %414
  br i1 %413, label %.outer49.split.us.split.us, label %.outer49.split.us.split.preheader

.outer49.split.us.split.preheader:                ; preds = %.outer49.split.us
  br label %.outer49.split.us.split

.outer49.split.us.split.us:                       ; preds = %.outer49.split.us
  br i1 %415, label %.us-lcssa.us, label %.outer49.backedge

.outer49.backedge.loopexit:                       ; preds = %.outer49.split.us.split
  br label %.outer49.backedge

.outer49.backedge:                                ; preds = %.outer49.backedge.loopexit, %.outer49.split.us.split.us
  %416 = sub nsw i64 %h.0.ph, %411
  %417 = icmp sgt i64 %416, 1
  br i1 %417, label %.outer49.split.us, label %.thread.loopexit

.outer49.split.us.split:                          ; preds = %.outer49.split.us.split, %.outer49.split.us.split.preheader
  br i1 %415, label %.outer49.split.us.split, label %.outer49.backedge.loopexit

.us-lcssa.us:                                     ; preds = %.outer49.split.us.split.us
  %.lcssa598 = phi i64 [ %411, %.outer49.split.us.split.us ]
  %.in506.lcssa = phi i64 [ %.in506, %.outer49.split.us.split.us ]
  %l.0.ph50426.lcssa = phi i64 [ %l.0.ph50426, %.outer49.split.us.split.us ]
  %418 = add nsw i64 %.lcssa598, -1
  %419 = getelementptr inbounds i64, i64* %131, i64 %418
  %420 = load i64, i64* %419, align 8
  %421 = icmp ult i64 %i.10181, %420
  br i1 %421, label %.outer48, label %422

; <label>:422                                     ; preds = %.us-lcssa.us
  %.lcssa605 = phi i64 [ %420, %.us-lcssa.us ]
  %h.0.ph.lcssa601 = phi i64 [ %h.0.ph, %.us-lcssa.us ]
  %.in506.lcssa.lcssa = phi i64 [ %.in506.lcssa, %.us-lcssa.us ]
  %l.0.ph50426.lcssa.lcssa = phi i64 [ %l.0.ph50426.lcssa, %.us-lcssa.us ]
  %.off18 = add i64 %.in506.lcssa.lcssa, 1
  %423 = icmp ult i64 %.off18, 3
  br i1 %423, label %.thread.preheader, label %.loopexit46

.thread.loopexit:                                 ; preds = %.outer49.backedge
  %h.0.ph.lcssa600 = phi i64 [ %h.0.ph, %.outer49.backedge ]
  %.lcssa599 = phi i64 [ %411, %.outer49.backedge ]
  br label %.thread.preheader

.thread.preheader.loopexit:                       ; preds = %.outer48
  %l.0.ph.lcssa = phi i64 [ %l.0.ph, %.outer48 ]
  %h.0.ph.lcssa = phi i64 [ %h.0.ph, %.outer48 ]
  br label %.thread.preheader

.thread.preheader:                                ; preds = %.thread.preheader.loopexit, %.thread.loopexit, %422
  %h.0.ph602 = phi i64 [ %h.0.ph.lcssa600, %.thread.loopexit ], [ %h.0.ph.lcssa601, %422 ], [ %h.0.ph.lcssa, %.thread.preheader.loopexit ]
  %m9.0.in.ph = phi i64 [ %.lcssa599, %.thread.loopexit ], [ %l.0.ph50426.lcssa.lcssa, %422 ], [ %l.0.ph.lcssa, %.thread.preheader.loopexit ]
  br label %.thread

.thread:                                          ; preds = %425, %.thread.preheader
  %m9.0.in = phi i64 [ %m9.0, %425 ], [ %m9.0.in.ph, %.thread.preheader ]
  %m9.0 = add nsw i64 %m9.0.in, 1
  %424 = icmp slt i64 %m9.0, %h.0.ph602
  br i1 %424, label %425, label %.loopexit46.loopexit

; <label>:425                                     ; preds = %.thread
  %426 = getelementptr inbounds i64, i64* %131, i64 %m9.0
  %427 = load i64, i64* %426, align 8
  %428 = icmp ult i64 %i.10181, %427
  br i1 %428, label %.loopexit46.loopexit, label %.thread

.loopexit46.loopexit:                             ; preds = %425, %.thread
  %m9.0.in.lcssa = phi i64 [ %m9.0.in, %425 ], [ %m9.0.in, %.thread ]
  %.phi.trans.insert = getelementptr inbounds i64, i64* %131, i64 %m9.0.in.lcssa
  %.pre316 = load i64, i64* %.phi.trans.insert, align 8
  br label %.loopexit46

.loopexit46:                                      ; preds = %.loopexit46.loopexit, %422
  %429 = phi i64 [ %.lcssa605, %422 ], [ %.pre316, %.loopexit46.loopexit ]
  %430 = load i64, i64* @TOT_VERTICES, align 8
  %431 = icmp ugt i64 %430, 1
  br i1 %431, label %.lr.ph177.preheader, label %._crit_edge178

.lr.ph177.preheader:                              ; preds = %.loopexit46
  %432 = load float, float* @PROB_INTERCL_EDGES, align 4
  %broadcast.splatinsert446 = insertelement <2 x i64> undef, i64 %i.10181, i32 0
  %broadcast.splat447 = shufflevector <2 x i64> %broadcast.splatinsert446, <2 x i64> undef, <2 x i32> zeroinitializer
  %broadcast.splatinsert476 = insertelement <2 x i64> undef, i64 %i.10181, i32 0
  %broadcast.splat477 = shufflevector <2 x i64> %broadcast.splatinsert476, <2 x i64> undef, <2 x i32> zeroinitializer
  br label %.lr.ph177

.lr.ph177:                                        ; preds = %.loopexit36, %.lr.ph177.preheader
  %i_edgePtr.8175 = phi i64 [ %i_edgePtr.12, %.loopexit36 ], [ %i_edgePtr.7180, %.lr.ph177.preheader ]
  %p.0174 = phi float [ %612, %.loopexit36 ], [ %432, %.lr.ph177.preheader ]
  %d.0173 = phi i64 [ %611, %.loopexit36 ], [ 1, %.lr.ph177.preheader ]
  %433 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %434 = urem i64 %433, 1000
  %435 = uitofp i64 %434 to float
  %436 = fdiv float %435, 1.000000e+03
  %437 = fcmp ugt float %436, %p.0174
  br i1 %437, label %.loopexit41, label %438

; <label>:438                                     ; preds = %.lr.ph177
  %439 = add i64 %d.0173, %i.10181
  %440 = load i64, i64* @TOT_VERTICES, align 8
  %441 = urem i64 %439, %440
  br label %.outer43

.outer43:                                         ; preds = %.us-lcssa247.us, %438
  %h.1.ph = phi i64 [ %.lcssa608, %.us-lcssa247.us ], [ %132, %438 ]
  %l.1.ph = phi i64 [ %l.1.ph45430.lcssa, %.us-lcssa247.us ], [ 0, %438 ]
  %442 = sub nsw i64 %h.1.ph, %l.1.ph
  %443 = icmp sgt i64 %442, 1
  br i1 %443, label %.outer44.split.us.preheader, label %.thread12.preheader.loopexit

.outer44.split.us.preheader:                      ; preds = %.outer43
  br label %.outer44.split.us

.outer44.split.us:                                ; preds = %.outer44.backedge, %.outer44.split.us.preheader
  %.pn507 = phi i64 [ %444, %.outer44.backedge ], [ %l.1.ph, %.outer44.split.us.preheader ]
  %l.1.ph45430 = phi i64 [ %444, %.outer44.backedge ], [ %l.1.ph, %.outer44.split.us.preheader ]
  %.in505 = add nsw i64 %.pn507, %h.1.ph
  %444 = sdiv i64 %.in505, 2
  %445 = getelementptr inbounds i64, i64* %131, i64 %444
  %446 = icmp sgt i64 %.in505, 1
  %447 = load i64, i64* %445, align 8
  %448 = icmp ult i64 %441, %447
  br i1 %446, label %.outer44.split.us.split.us, label %.outer44.split.us.split.preheader

.outer44.split.us.split.preheader:                ; preds = %.outer44.split.us
  br label %.outer44.split.us.split

.outer44.split.us.split.us:                       ; preds = %.outer44.split.us
  br i1 %448, label %.us-lcssa247.us, label %.outer44.backedge

.outer44.backedge.loopexit:                       ; preds = %.outer44.split.us.split
  br label %.outer44.backedge

.outer44.backedge:                                ; preds = %.outer44.backedge.loopexit, %.outer44.split.us.split.us
  %449 = sub nsw i64 %h.1.ph, %444
  %450 = icmp sgt i64 %449, 1
  br i1 %450, label %.outer44.split.us, label %.thread12.loopexit

.outer44.split.us.split:                          ; preds = %.outer44.split.us.split, %.outer44.split.us.split.preheader
  br i1 %448, label %.outer44.split.us.split, label %.outer44.backedge.loopexit

.us-lcssa247.us:                                  ; preds = %.outer44.split.us.split.us
  %.lcssa608 = phi i64 [ %444, %.outer44.split.us.split.us ]
  %.in505.lcssa = phi i64 [ %.in505, %.outer44.split.us.split.us ]
  %l.1.ph45430.lcssa = phi i64 [ %l.1.ph45430, %.outer44.split.us.split.us ]
  %451 = add nsw i64 %.lcssa608, -1
  %452 = getelementptr inbounds i64, i64* %131, i64 %451
  %453 = load i64, i64* %452, align 8
  %454 = icmp ugt i64 %453, %441
  br i1 %454, label %.outer43, label %455

; <label>:455                                     ; preds = %.us-lcssa247.us
  %.lcssa615 = phi i64 [ %453, %.us-lcssa247.us ]
  %h.1.ph.lcssa611 = phi i64 [ %h.1.ph, %.us-lcssa247.us ]
  %.in505.lcssa.lcssa = phi i64 [ %.in505.lcssa, %.us-lcssa247.us ]
  %l.1.ph45430.lcssa.lcssa = phi i64 [ %l.1.ph45430.lcssa, %.us-lcssa247.us ]
  %.off17 = add i64 %.in505.lcssa.lcssa, 1
  %456 = icmp ult i64 %.off17, 3
  br i1 %456, label %.thread12.preheader, label %.loopexit42

.thread12.loopexit:                               ; preds = %.outer44.backedge
  %h.1.ph.lcssa610 = phi i64 [ %h.1.ph, %.outer44.backedge ]
  %.lcssa609 = phi i64 [ %444, %.outer44.backedge ]
  br label %.thread12.preheader

.thread12.preheader.loopexit:                     ; preds = %.outer43
  %l.1.ph.lcssa = phi i64 [ %l.1.ph, %.outer43 ]
  %h.1.ph.lcssa = phi i64 [ %h.1.ph, %.outer43 ]
  br label %.thread12.preheader

.thread12.preheader:                              ; preds = %.thread12.preheader.loopexit, %.thread12.loopexit, %455
  %h.1.ph612 = phi i64 [ %h.1.ph.lcssa610, %.thread12.loopexit ], [ %h.1.ph.lcssa611, %455 ], [ %h.1.ph.lcssa, %.thread12.preheader.loopexit ]
  %m13.0.in.ph = phi i64 [ %.lcssa609, %.thread12.loopexit ], [ %l.1.ph45430.lcssa.lcssa, %455 ], [ %l.1.ph.lcssa, %.thread12.preheader.loopexit ]
  br label %.thread12

.thread12:                                        ; preds = %458, %.thread12.preheader
  %m13.0.in = phi i64 [ %m13.0, %458 ], [ %m13.0.in.ph, %.thread12.preheader ]
  %m13.0 = add nsw i64 %m13.0.in, 1
  %457 = icmp slt i64 %m13.0, %h.1.ph612
  br i1 %457, label %458, label %.loopexit42.loopexit

; <label>:458                                     ; preds = %.thread12
  %459 = getelementptr inbounds i64, i64* %131, i64 %m13.0
  %460 = load i64, i64* %459, align 8
  %461 = icmp ult i64 %441, %460
  br i1 %461, label %.loopexit42.loopexit, label %.thread12

.loopexit42.loopexit:                             ; preds = %458, %.thread12
  %m13.0.in.lcssa = phi i64 [ %m13.0.in, %458 ], [ %m13.0.in, %.thread12 ]
  %.phi.trans.insert318 = getelementptr inbounds i64, i64* %131, i64 %m13.0.in.lcssa
  %.pre319 = load i64, i64* %.phi.trans.insert318, align 8
  br label %.loopexit42

.loopexit42:                                      ; preds = %.loopexit42.loopexit, %455
  %462 = phi i64 [ %.lcssa615, %455 ], [ %.pre319, %.loopexit42.loopexit ]
  %463 = icmp eq i64 %429, %462
  br i1 %463, label %.loopexit41, label %464

; <label>:464                                     ; preds = %.loopexit42
  %465 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %466 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %467 = urem i64 %465, %466
  %468 = add i64 %467, 1
  %469 = icmp sgt i64 %468, 0
  br i1 %469, label %.lr.ph166.preheader, label %.loopexit41

.lr.ph166.preheader:                              ; preds = %464
  %470 = add i64 %i_edgePtr.8175, 1
  %471 = add i64 %467, 1
  %min.iters.check455 = icmp ult i64 %471, 4
  br i1 %min.iters.check455, label %.lr.ph166.preheader514, label %min.iters.checked456

min.iters.checked456:                             ; preds = %.lr.ph166.preheader
  %n.vec458 = and i64 %471, -4
  %cmp.zero459 = icmp eq i64 %n.vec458, 0
  %ind.end464 = add i64 %i_edgePtr.8175, %n.vec458
  br i1 %cmp.zero459, label %.lr.ph166.preheader514, label %vector.ph460

vector.ph460:                                     ; preds = %min.iters.checked456
  %broadcast.splatinsert478 = insertelement <2 x i64> undef, i64 %441, i32 0
  %broadcast.splat479 = shufflevector <2 x i64> %broadcast.splatinsert478, <2 x i64> undef, <2 x i32> zeroinitializer
  %472 = add i64 %467, -3
  %473 = lshr i64 %472, 2
  %474 = add nuw nsw i64 %473, 1
  %xtraiter574 = and i64 %474, 3
  %lcmp.mod575 = icmp eq i64 %xtraiter574, 0
  br i1 %lcmp.mod575, label %vector.ph460.split, label %vector.body452.prol.preheader

vector.body452.prol.preheader:                    ; preds = %vector.ph460
  br label %vector.body452.prol

vector.body452.prol:                              ; preds = %vector.body452.prol, %vector.body452.prol.preheader
  %index461.prol = phi i64 [ %index.next462.prol, %vector.body452.prol ], [ 0, %vector.body452.prol.preheader ]
  %prol.iter576 = phi i64 [ %prol.iter576.sub, %vector.body452.prol ], [ %xtraiter574, %vector.body452.prol.preheader ]
  %offset.idx467.prol = add i64 %i_edgePtr.8175, %index461.prol
  %475 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467.prol
  %476 = bitcast i64* %475 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %476, align 8
  %477 = getelementptr i64, i64* %475, i64 2
  %478 = bitcast i64* %477 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %478, align 8
  %479 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467.prol
  %480 = bitcast i64* %479 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %480, align 8
  %481 = getelementptr i64, i64* %479, i64 2
  %482 = bitcast i64* %481 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %482, align 8
  %index.next462.prol = add i64 %index461.prol, 4
  %prol.iter576.sub = add i64 %prol.iter576, -1
  %prol.iter576.cmp = icmp eq i64 %prol.iter576.sub, 0
  br i1 %prol.iter576.cmp, label %vector.ph460.split.loopexit, label %vector.body452.prol, !llvm.loop !39

vector.ph460.split.loopexit:                      ; preds = %vector.body452.prol
  %index.next462.prol.lcssa = phi i64 [ %index.next462.prol, %vector.body452.prol ]
  br label %vector.ph460.split

vector.ph460.split:                               ; preds = %vector.ph460.split.loopexit, %vector.ph460
  %index461.unr = phi i64 [ 0, %vector.ph460 ], [ %index.next462.prol.lcssa, %vector.ph460.split.loopexit ]
  %483 = icmp ult i64 %472, 12
  br i1 %483, label %middle.block453, label %vector.ph460.split.split

vector.ph460.split.split:                         ; preds = %vector.ph460.split
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph460.split.split
  %index461 = phi i64 [ %index461.unr, %vector.ph460.split.split ], [ %index.next462.3, %vector.body452 ]
  %offset.idx467 = add i64 %i_edgePtr.8175, %index461
  %484 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467
  %485 = bitcast i64* %484 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %485, align 8
  %486 = getelementptr i64, i64* %484, i64 2
  %487 = bitcast i64* %486 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %487, align 8
  %488 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467
  %489 = bitcast i64* %488 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %489, align 8
  %490 = getelementptr i64, i64* %488, i64 2
  %491 = bitcast i64* %490 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %491, align 8
  %index.next462 = add i64 %index461, 4
  %offset.idx467.1 = add i64 %i_edgePtr.8175, %index.next462
  %492 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467.1
  %493 = bitcast i64* %492 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %493, align 8
  %494 = getelementptr i64, i64* %492, i64 2
  %495 = bitcast i64* %494 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %495, align 8
  %496 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467.1
  %497 = bitcast i64* %496 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %497, align 8
  %498 = getelementptr i64, i64* %496, i64 2
  %499 = bitcast i64* %498 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %499, align 8
  %index.next462.1 = add i64 %index461, 8
  %offset.idx467.2 = add i64 %i_edgePtr.8175, %index.next462.1
  %500 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467.2
  %501 = bitcast i64* %500 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %501, align 8
  %502 = getelementptr i64, i64* %500, i64 2
  %503 = bitcast i64* %502 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %503, align 8
  %504 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467.2
  %505 = bitcast i64* %504 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %505, align 8
  %506 = getelementptr i64, i64* %504, i64 2
  %507 = bitcast i64* %506 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %507, align 8
  %index.next462.2 = add i64 %index461, 12
  %offset.idx467.3 = add i64 %i_edgePtr.8175, %index.next462.2
  %508 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467.3
  %509 = bitcast i64* %508 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %509, align 8
  %510 = getelementptr i64, i64* %508, i64 2
  %511 = bitcast i64* %510 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %511, align 8
  %512 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467.3
  %513 = bitcast i64* %512 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %513, align 8
  %514 = getelementptr i64, i64* %512, i64 2
  %515 = bitcast i64* %514 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %515, align 8
  %index.next462.3 = add i64 %index461, 16
  %516 = icmp eq i64 %index.next462.3, %n.vec458
  br i1 %516, label %middle.block453.unr-lcssa, label %vector.body452, !llvm.loop !40

middle.block453.unr-lcssa:                        ; preds = %vector.body452
  br label %middle.block453

middle.block453:                                  ; preds = %middle.block453.unr-lcssa, %vector.ph460.split
  %cmp.n466 = icmp eq i64 %471, %n.vec458
  br i1 %cmp.n466, label %.loopexit41.loopexit, label %.lr.ph166.preheader514

.lr.ph166.preheader514:                           ; preds = %middle.block453, %min.iters.checked456, %.lr.ph166.preheader
  %i_edgePtr.9164.ph = phi i64 [ %i_edgePtr.8175, %min.iters.checked456 ], [ %i_edgePtr.8175, %.lr.ph166.preheader ], [ %ind.end464, %middle.block453 ]
  %j16.0163.ph = phi i64 [ 0, %min.iters.checked456 ], [ 0, %.lr.ph166.preheader ], [ %n.vec458, %middle.block453 ]
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166, %.lr.ph166.preheader514
  %i_edgePtr.9164 = phi i64 [ %519, %.lr.ph166 ], [ %i_edgePtr.9164.ph, %.lr.ph166.preheader514 ]
  %j16.0163 = phi i64 [ %520, %.lr.ph166 ], [ %j16.0163.ph, %.lr.ph166.preheader514 ]
  %517 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.9164
  store i64 %i.10181, i64* %517, align 8
  %518 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.9164
  store i64 %441, i64* %518, align 8
  %519 = add nsw i64 %i_edgePtr.9164, 1
  %520 = add nuw nsw i64 %j16.0163, 1
  %exitcond305 = icmp eq i64 %520, %468
  br i1 %exitcond305, label %.loopexit41.loopexit.loopexit, label %.lr.ph166, !llvm.loop !41

.loopexit41.loopexit.loopexit:                    ; preds = %.lr.ph166
  br label %.loopexit41.loopexit

.loopexit41.loopexit:                             ; preds = %.loopexit41.loopexit.loopexit, %middle.block453
  %521 = add i64 %470, %467
  br label %.loopexit41

.loopexit41:                                      ; preds = %.loopexit41.loopexit, %464, %.loopexit42, %.lr.ph177
  %i_edgePtr.10 = phi i64 [ %i_edgePtr.8175, %.loopexit42 ], [ %i_edgePtr.8175, %.lr.ph177 ], [ %i_edgePtr.8175, %464 ], [ %521, %.loopexit41.loopexit ]
  %522 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %523 = urem i64 %522, 1000
  %524 = uitofp i64 %523 to float
  %525 = fdiv float %524, 1.000000e+03
  %526 = fcmp ugt float %525, %p.0174
  br i1 %526, label %.loopexit36, label %527

; <label>:527                                     ; preds = %.loopexit41
  %528 = sub i64 %i.10181, %d.0173
  %529 = load i64, i64* @TOT_VERTICES, align 8
  %530 = urem i64 %528, %529
  br label %.outer38

.outer38:                                         ; preds = %.us-lcssa248.us, %527
  %h.2.ph = phi i64 [ %.lcssa618, %.us-lcssa248.us ], [ %132, %527 ]
  %l.2.ph = phi i64 [ %l.2.ph40435.lcssa, %.us-lcssa248.us ], [ 0, %527 ]
  %531 = sub nsw i64 %h.2.ph, %l.2.ph
  %532 = icmp sgt i64 %531, 1
  br i1 %532, label %.outer39.split.us.preheader, label %.thread13.preheader.loopexit

.outer39.split.us.preheader:                      ; preds = %.outer38
  br label %.outer39.split.us

.outer39.split.us:                                ; preds = %.outer39.backedge, %.outer39.split.us.preheader
  %.pn = phi i64 [ %533, %.outer39.backedge ], [ %l.2.ph, %.outer39.split.us.preheader ]
  %l.2.ph40435 = phi i64 [ %533, %.outer39.backedge ], [ %l.2.ph, %.outer39.split.us.preheader ]
  %.in = add nsw i64 %.pn, %h.2.ph
  %533 = sdiv i64 %.in, 2
  %534 = getelementptr inbounds i64, i64* %131, i64 %533
  %535 = icmp sgt i64 %.in, 1
  %536 = load i64, i64* %534, align 8
  %537 = icmp ult i64 %530, %536
  br i1 %535, label %.outer39.split.us.split.us, label %.outer39.split.us.split.preheader

.outer39.split.us.split.preheader:                ; preds = %.outer39.split.us
  br label %.outer39.split.us.split

.outer39.split.us.split.us:                       ; preds = %.outer39.split.us
  br i1 %537, label %.us-lcssa248.us, label %.outer39.backedge

.outer39.backedge.loopexit:                       ; preds = %.outer39.split.us.split
  br label %.outer39.backedge

.outer39.backedge:                                ; preds = %.outer39.backedge.loopexit, %.outer39.split.us.split.us
  %538 = sub nsw i64 %h.2.ph, %533
  %539 = icmp sgt i64 %538, 1
  br i1 %539, label %.outer39.split.us, label %.thread13.loopexit

.outer39.split.us.split:                          ; preds = %.outer39.split.us.split, %.outer39.split.us.split.preheader
  br i1 %537, label %.outer39.split.us.split, label %.outer39.backedge.loopexit

.us-lcssa248.us:                                  ; preds = %.outer39.split.us.split.us
  %.lcssa618 = phi i64 [ %533, %.outer39.split.us.split.us ]
  %.in.lcssa = phi i64 [ %.in, %.outer39.split.us.split.us ]
  %l.2.ph40435.lcssa = phi i64 [ %l.2.ph40435, %.outer39.split.us.split.us ]
  %540 = add nsw i64 %.lcssa618, -1
  %541 = getelementptr inbounds i64, i64* %131, i64 %540
  %542 = load i64, i64* %541, align 8
  %543 = icmp ugt i64 %542, %530
  br i1 %543, label %.outer38, label %544

; <label>:544                                     ; preds = %.us-lcssa248.us
  %.lcssa625 = phi i64 [ %542, %.us-lcssa248.us ]
  %h.2.ph.lcssa621 = phi i64 [ %h.2.ph, %.us-lcssa248.us ]
  %.in.lcssa.lcssa = phi i64 [ %.in.lcssa, %.us-lcssa248.us ]
  %l.2.ph40435.lcssa.lcssa = phi i64 [ %l.2.ph40435.lcssa, %.us-lcssa248.us ]
  %.off = add i64 %.in.lcssa.lcssa, 1
  %545 = icmp ult i64 %.off, 3
  br i1 %545, label %.thread13.preheader, label %.loopexit37

.thread13.loopexit:                               ; preds = %.outer39.backedge
  %h.2.ph.lcssa620 = phi i64 [ %h.2.ph, %.outer39.backedge ]
  %.lcssa619 = phi i64 [ %533, %.outer39.backedge ]
  br label %.thread13.preheader

.thread13.preheader.loopexit:                     ; preds = %.outer38
  %l.2.ph.lcssa = phi i64 [ %l.2.ph, %.outer38 ]
  %h.2.ph.lcssa = phi i64 [ %h.2.ph, %.outer38 ]
  br label %.thread13.preheader

.thread13.preheader:                              ; preds = %.thread13.preheader.loopexit, %.thread13.loopexit, %544
  %h.2.ph622 = phi i64 [ %h.2.ph.lcssa620, %.thread13.loopexit ], [ %h.2.ph.lcssa621, %544 ], [ %h.2.ph.lcssa, %.thread13.preheader.loopexit ]
  %m19.0.in.ph = phi i64 [ %.lcssa619, %.thread13.loopexit ], [ %l.2.ph40435.lcssa.lcssa, %544 ], [ %l.2.ph.lcssa, %.thread13.preheader.loopexit ]
  br label %.thread13

.thread13:                                        ; preds = %547, %.thread13.preheader
  %m19.0.in = phi i64 [ %m19.0, %547 ], [ %m19.0.in.ph, %.thread13.preheader ]
  %m19.0 = add nsw i64 %m19.0.in, 1
  %546 = icmp slt i64 %m19.0, %h.2.ph622
  br i1 %546, label %547, label %.loopexit37.loopexit

; <label>:547                                     ; preds = %.thread13
  %548 = getelementptr inbounds i64, i64* %131, i64 %m19.0
  %549 = load i64, i64* %548, align 8
  %550 = icmp ult i64 %530, %549
  br i1 %550, label %.loopexit37.loopexit, label %.thread13

.loopexit37.loopexit:                             ; preds = %547, %.thread13
  %m19.0.in.lcssa = phi i64 [ %m19.0.in, %547 ], [ %m19.0.in, %.thread13 ]
  %.phi.trans.insert321 = getelementptr inbounds i64, i64* %131, i64 %m19.0.in.lcssa
  %.pre322 = load i64, i64* %.phi.trans.insert321, align 8
  br label %.loopexit37

.loopexit37:                                      ; preds = %.loopexit37.loopexit, %544
  %551 = phi i64 [ %.lcssa625, %544 ], [ %.pre322, %.loopexit37.loopexit ]
  %552 = icmp eq i64 %429, %551
  br i1 %552, label %.loopexit36, label %553

; <label>:553                                     ; preds = %.loopexit37
  %554 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %555 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %556 = urem i64 %554, %555
  %557 = add i64 %556, 1
  %558 = icmp sgt i64 %557, 0
  br i1 %558, label %.lr.ph171.preheader, label %.loopexit36

.lr.ph171.preheader:                              ; preds = %553
  %559 = add i64 %i_edgePtr.10, 1
  %560 = add i64 %556, 1
  %min.iters.check = icmp ult i64 %560, 4
  br i1 %min.iters.check, label %.lr.ph171.preheader513, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph171.preheader
  %n.vec = and i64 %560, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = add i64 %i_edgePtr.10, %n.vec
  br i1 %cmp.zero, label %.lr.ph171.preheader513, label %vector.ph

vector.ph:                                        ; preds = %min.iters.checked
  %broadcast.splatinsert448 = insertelement <2 x i64> undef, i64 %530, i32 0
  %broadcast.splat449 = shufflevector <2 x i64> %broadcast.splatinsert448, <2 x i64> undef, <2 x i32> zeroinitializer
  %561 = add i64 %556, -3
  %562 = lshr i64 %561, 2
  %563 = add nuw nsw i64 %562, 1
  %xtraiter577 = and i64 %563, 3
  %lcmp.mod578 = icmp eq i64 %xtraiter577, 0
  br i1 %lcmp.mod578, label %vector.ph.split, label %vector.body.prol.preheader

vector.body.prol.preheader:                       ; preds = %vector.ph
  br label %vector.body.prol

vector.body.prol:                                 ; preds = %vector.body.prol, %vector.body.prol.preheader
  %index.prol = phi i64 [ %index.next.prol, %vector.body.prol ], [ 0, %vector.body.prol.preheader ]
  %prol.iter579 = phi i64 [ %prol.iter579.sub, %vector.body.prol ], [ %xtraiter577, %vector.body.prol.preheader ]
  %offset.idx.prol = add i64 %i_edgePtr.10, %index.prol
  %564 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx.prol
  %565 = bitcast i64* %564 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %565, align 8
  %566 = getelementptr i64, i64* %564, i64 2
  %567 = bitcast i64* %566 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %567, align 8
  %568 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx.prol
  %569 = bitcast i64* %568 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %569, align 8
  %570 = getelementptr i64, i64* %568, i64 2
  %571 = bitcast i64* %570 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %571, align 8
  %index.next.prol = add i64 %index.prol, 4
  %prol.iter579.sub = add i64 %prol.iter579, -1
  %prol.iter579.cmp = icmp eq i64 %prol.iter579.sub, 0
  br i1 %prol.iter579.cmp, label %vector.ph.split.loopexit, label %vector.body.prol, !llvm.loop !42

vector.ph.split.loopexit:                         ; preds = %vector.body.prol
  %index.next.prol.lcssa = phi i64 [ %index.next.prol, %vector.body.prol ]
  br label %vector.ph.split

vector.ph.split:                                  ; preds = %vector.ph.split.loopexit, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.prol.lcssa, %vector.ph.split.loopexit ]
  %572 = icmp ult i64 %561, 12
  br i1 %572, label %middle.block, label %vector.ph.split.split

vector.ph.split.split:                            ; preds = %vector.ph.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.split.split
  %index = phi i64 [ %index.unr, %vector.ph.split.split ], [ %index.next.3, %vector.body ]
  %offset.idx = add i64 %i_edgePtr.10, %index
  %573 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx
  %574 = bitcast i64* %573 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %574, align 8
  %575 = getelementptr i64, i64* %573, i64 2
  %576 = bitcast i64* %575 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %576, align 8
  %577 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx
  %578 = bitcast i64* %577 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %578, align 8
  %579 = getelementptr i64, i64* %577, i64 2
  %580 = bitcast i64* %579 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %580, align 8
  %index.next = add i64 %index, 4
  %offset.idx.1 = add i64 %i_edgePtr.10, %index.next
  %581 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx.1
  %582 = bitcast i64* %581 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %582, align 8
  %583 = getelementptr i64, i64* %581, i64 2
  %584 = bitcast i64* %583 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %584, align 8
  %585 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx.1
  %586 = bitcast i64* %585 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %586, align 8
  %587 = getelementptr i64, i64* %585, i64 2
  %588 = bitcast i64* %587 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %588, align 8
  %index.next.1 = add i64 %index, 8
  %offset.idx.2 = add i64 %i_edgePtr.10, %index.next.1
  %589 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx.2
  %590 = bitcast i64* %589 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %590, align 8
  %591 = getelementptr i64, i64* %589, i64 2
  %592 = bitcast i64* %591 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %592, align 8
  %593 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx.2
  %594 = bitcast i64* %593 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %594, align 8
  %595 = getelementptr i64, i64* %593, i64 2
  %596 = bitcast i64* %595 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %596, align 8
  %index.next.2 = add i64 %index, 12
  %offset.idx.3 = add i64 %i_edgePtr.10, %index.next.2
  %597 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx.3
  %598 = bitcast i64* %597 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %598, align 8
  %599 = getelementptr i64, i64* %597, i64 2
  %600 = bitcast i64* %599 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %600, align 8
  %601 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx.3
  %602 = bitcast i64* %601 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %602, align 8
  %603 = getelementptr i64, i64* %601, i64 2
  %604 = bitcast i64* %603 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %604, align 8
  %index.next.3 = add i64 %index, 16
  %605 = icmp eq i64 %index.next.3, %n.vec
  br i1 %605, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !43

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.ph.split
  %cmp.n = icmp eq i64 %560, %n.vec
  br i1 %cmp.n, label %.loopexit36.loopexit, label %.lr.ph171.preheader513

.lr.ph171.preheader513:                           ; preds = %middle.block, %min.iters.checked, %.lr.ph171.preheader
  %i_edgePtr.11169.ph = phi i64 [ %i_edgePtr.10, %min.iters.checked ], [ %i_edgePtr.10, %.lr.ph171.preheader ], [ %ind.end, %middle.block ]
  %j22.0168.ph = phi i64 [ 0, %min.iters.checked ], [ 0, %.lr.ph171.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171, %.lr.ph171.preheader513
  %i_edgePtr.11169 = phi i64 [ %608, %.lr.ph171 ], [ %i_edgePtr.11169.ph, %.lr.ph171.preheader513 ]
  %j22.0168 = phi i64 [ %609, %.lr.ph171 ], [ %j22.0168.ph, %.lr.ph171.preheader513 ]
  %606 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.11169
  store i64 %i.10181, i64* %606, align 8
  %607 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.11169
  store i64 %530, i64* %607, align 8
  %608 = add nsw i64 %i_edgePtr.11169, 1
  %609 = add nuw nsw i64 %j22.0168, 1
  %exitcond306 = icmp eq i64 %609, %557
  br i1 %exitcond306, label %.loopexit36.loopexit.loopexit, label %.lr.ph171, !llvm.loop !44

.loopexit36.loopexit.loopexit:                    ; preds = %.lr.ph171
  br label %.loopexit36.loopexit

.loopexit36.loopexit:                             ; preds = %.loopexit36.loopexit.loopexit, %middle.block
  %610 = add i64 %559, %556
  br label %.loopexit36

.loopexit36:                                      ; preds = %.loopexit36.loopexit, %553, %.loopexit37, %.loopexit41
  %i_edgePtr.12 = phi i64 [ %i_edgePtr.10, %.loopexit37 ], [ %i_edgePtr.10, %.loopexit41 ], [ %i_edgePtr.10, %553 ], [ %610, %.loopexit36.loopexit ]
  %611 = shl i64 %d.0173, 1
  %612 = fmul float %p.0174, 5.000000e-01
  %613 = load i64, i64* @TOT_VERTICES, align 8
  %614 = icmp ult i64 %611, %613
  br i1 %614, label %.lr.ph177, label %._crit_edge178.loopexit

._crit_edge178.loopexit:                          ; preds = %.loopexit36
  %i_edgePtr.12.lcssa = phi i64 [ %i_edgePtr.12, %.loopexit36 ]
  %.pre323 = load i64, i64* %i_stop, align 8
  br label %._crit_edge178

._crit_edge178:                                   ; preds = %._crit_edge178.loopexit, %.loopexit46
  %615 = phi i64 [ %408, %.loopexit46 ], [ %.pre323, %._crit_edge178.loopexit ]
  %i_edgePtr.8.lcssa = phi i64 [ %i_edgePtr.7180, %.loopexit46 ], [ %i_edgePtr.12.lcssa, %._crit_edge178.loopexit ]
  %616 = add nsw i64 %i.10181, 1
  %617 = icmp slt i64 %616, %615
  br i1 %617, label %.preheader47, label %._crit_edge183.loopexit

._crit_edge183.loopexit:                          ; preds = %._crit_edge178
  %i_edgePtr.8.lcssa.lcssa = phi i64 [ %i_edgePtr.8.lcssa, %._crit_edge178 ]
  br label %._crit_edge183

._crit_edge183:                                   ; preds = %._crit_edge183.loopexit, %._crit_edge188
  %i_edgePtr.7.lcssa = phi i64 [ 0, %._crit_edge188 ], [ %i_edgePtr.8.lcssa.lcssa, %._crit_edge183.loopexit ]
  store i64 %i_edgePtr.7.lcssa, i64* %306, align 8
  store i64 0, i64* %307, align 8
  br i1 %11, label %618, label %.critedge

; <label>:618                                     ; preds = %._crit_edge183
  store i64 0, i64* @global_edgeNum, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %308, label %.lr.ph162.preheader, label %.outer35.preheader

.lr.ph162.preheader:                              ; preds = %618
  %619 = and i64 %6, 1
  %lcmp.mod573 = icmp eq i64 %619, 0
  br i1 %lcmp.mod573, label %.lr.ph162.prol, label %.lr.ph162.preheader.split

.lr.ph162.prol:                                   ; preds = %.lr.ph162.preheader
  %620 = load i64, i64* %305, align 8
  %621 = getelementptr inbounds i64, i64* %305, i64 1
  %622 = load i64, i64* %621, align 8
  %623 = add i64 %622, %620
  store i64 %623, i64* %621, align 8
  %624 = getelementptr inbounds i64, i64* %304, i64 1
  store i64 %620, i64* %624, align 8
  br label %.lr.ph162.preheader.split

.lr.ph162.preheader.split:                        ; preds = %.lr.ph162.prol, %.lr.ph162.preheader
  %i.11160.unr = phi i64 [ 1, %.lr.ph162.preheader ], [ 2, %.lr.ph162.prol ]
  %625 = icmp eq i64 %6, 2
  br i1 %625, label %.outer35.preheader.loopexit, label %.lr.ph162.preheader.split.split

.lr.ph162.preheader.split.split:                  ; preds = %.lr.ph162.preheader.split
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162, %.lr.ph162.preheader.split.split
  %i.11160 = phi i64 [ %i.11160.unr, %.lr.ph162.preheader.split.split ], [ %640, %.lr.ph162 ]
  %626 = add nsw i64 %i.11160, -1
  %627 = getelementptr inbounds i64, i64* %305, i64 %626
  %628 = load i64, i64* %627, align 8
  %629 = getelementptr inbounds i64, i64* %305, i64 %i.11160
  %630 = load i64, i64* %629, align 8
  %631 = add i64 %630, %628
  store i64 %631, i64* %629, align 8
  %632 = getelementptr inbounds i64, i64* %304, i64 %i.11160
  store i64 %628, i64* %632, align 8
  %633 = add nuw nsw i64 %i.11160, 1
  %634 = getelementptr inbounds i64, i64* %305, i64 %i.11160
  %635 = load i64, i64* %634, align 8
  %636 = getelementptr inbounds i64, i64* %305, i64 %633
  %637 = load i64, i64* %636, align 8
  %638 = add i64 %637, %635
  store i64 %638, i64* %636, align 8
  %639 = getelementptr inbounds i64, i64* %304, i64 %633
  store i64 %635, i64* %639, align 8
  %640 = add nsw i64 %i.11160, 2
  %exitcond304.1 = icmp eq i64 %640, %6
  br i1 %exitcond304.1, label %.outer35.preheader.loopexit.unr-lcssa, label %.lr.ph162

.critedge:                                        ; preds = %._crit_edge183
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br label %.outer35.preheader

.outer35.preheader.loopexit.unr-lcssa:            ; preds = %.lr.ph162
  br label %.outer35.preheader.loopexit

.outer35.preheader.loopexit:                      ; preds = %.outer35.preheader.loopexit.unr-lcssa, %.lr.ph162.preheader.split
  br label %.outer35.preheader

.outer35.preheader:                               ; preds = %.outer35.preheader.loopexit, %.critedge, %618
  br label %.outer35

.outer35:                                         ; preds = %646, %.outer35.preheader
  %tries24.0.ph = phi i32 [ %647, %646 ], [ 9, %.outer35.preheader ]
  %641 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %642 = icmp eq i64 %641, 0
  br i1 %642, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.outer35
  br label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158, %.lr.ph158.preheader
  call void @llvm.x86.sse2.pause() #6
  %643 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %644 = icmp eq i64 %643, 0
  br i1 %644, label %._crit_edge159.loopexit, label %.lr.ph158

._crit_edge159.loopexit:                          ; preds = %.lr.ph158
  br label %._crit_edge159

._crit_edge159:                                   ; preds = %._crit_edge159.loopexit, %.outer35
  %645 = icmp slt i32 %tries24.0.ph, 2
  br i1 %645, label %658, label %646

; <label>:646                                     ; preds = %._crit_edge159
  %647 = add nsw i32 %tries24.0.ph, -1
  %648 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 0, i64 3, i64 4294967295) #6, !srcloc !36
  %649 = trunc i64 %648 to i32
  %650 = icmp eq i32 %649, -1
  br i1 %650, label %651, label %.outer35

; <label>:651                                     ; preds = %646
  %652 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %653 = icmp eq i64 %652, 0
  br i1 %653, label %655, label %654

; <label>:654                                     ; preds = %651
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !37
  br label %655

; <label>:655                                     ; preds = %654, %651
  %656 = load i64, i64* @global_edgeNum, align 8
  %657 = add nsw i64 %656, %i_edgePtr.7.lcssa
  store i64 %657, i64* @global_edgeNum, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 3) #6, !srcloc !38
  br label %661

; <label>:658                                     ; preds = %._crit_edge159
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #6
  %659 = load i64, i64* @global_edgeNum, align 8
  %660 = add nsw i64 %659, %i_edgePtr.7.lcssa
  store i64 %660, i64* @global_edgeNum, align 8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #6
  br label %661

; <label>:661                                     ; preds = %658, %655
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %662 = load i64, i64* @global_edgeNum, align 8
  %663 = load i64, i64* %307, align 8
  %664 = load i64, i64* %306, align 8
  %665 = icmp ult i64 %663, %664
  br i1 %665, label %.lr.ph156.preheader, label %._crit_edge157

.lr.ph156.preheader:                              ; preds = %661
  %666 = load i64, i64* %startV.0, align 8
  %667 = add i64 %663, %352
  %668 = getelementptr inbounds i64, i64* %376, i64 %667
  store i64 %666, i64* %668, align 8
  %669 = load i64, i64* %307, align 8
  %670 = sub i64 %663, %669
  %671 = getelementptr inbounds i64, i64* %endV.0, i64 %670
  %672 = load i64, i64* %671, align 8
  %673 = getelementptr inbounds i64, i64* %377, i64 %667
  store i64 %672, i64* %673, align 8
  %674 = add nsw i64 %663, 1
  %675 = load i64, i64* %306, align 8
  %676 = icmp ult i64 %674, %675
  br i1 %676, label %.lr.ph156..lr.ph156_crit_edge.preheader, label %._crit_edge157

.lr.ph156..lr.ph156_crit_edge.preheader:          ; preds = %.lr.ph156.preheader
  br label %.lr.ph156..lr.ph156_crit_edge

.lr.ph156..lr.ph156_crit_edge:                    ; preds = %.lr.ph156..lr.ph156_crit_edge, %.lr.ph156..lr.ph156_crit_edge.preheader
  %677 = phi i64 [ %688, %.lr.ph156..lr.ph156_crit_edge ], [ %674, %.lr.ph156..lr.ph156_crit_edge.preheader ]
  %.pre324 = load i64, i64* %307, align 8
  %678 = sub i64 %677, %.pre324
  %679 = getelementptr inbounds i64, i64* %startV.0, i64 %678
  %680 = load i64, i64* %679, align 8
  %681 = add i64 %677, %352
  %682 = getelementptr inbounds i64, i64* %376, i64 %681
  store i64 %680, i64* %682, align 8
  %683 = load i64, i64* %307, align 8
  %684 = sub i64 %677, %683
  %685 = getelementptr inbounds i64, i64* %endV.0, i64 %684
  %686 = load i64, i64* %685, align 8
  %687 = getelementptr inbounds i64, i64* %377, i64 %681
  store i64 %686, i64* %687, align 8
  %688 = add nsw i64 %677, 1
  %689 = load i64, i64* %306, align 8
  %690 = icmp ult i64 %688, %689
  br i1 %690, label %.lr.ph156..lr.ph156_crit_edge, label %._crit_edge157.loopexit

._crit_edge157.loopexit:                          ; preds = %.lr.ph156..lr.ph156_crit_edge
  br label %._crit_edge157

._crit_edge157:                                   ; preds = %._crit_edge157.loopexit, %.lr.ph156.preheader, %661
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %691 = add i64 %662, %352
  br i1 %11, label %692, label %.critedge6

; <label>:692                                     ; preds = %._crit_edge157
  %693 = getelementptr inbounds i8, i8* %argPtr, i64 32
  %694 = bitcast i8* %693 to i64*
  store i64 %691, i64* %694, align 8
  %puts = call i32 @puts(i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @str.1, i64 0, i64 0))
  %695 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13.77, i64 0, i64 0), i64 %352)
  %696 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14.78, i64 0, i64 0), i64 %662)
  %697 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15.79, i64 0, i64 0), i64 %691)
  %698 = bitcast i64* %304 to i8*
  call void @free(i8* %698) #6
  %699 = bitcast i64* %305 to i8*
  call void @free(i8* %699) #6
  %700 = bitcast i64* %82 to i8*
  call void @free(i8* %700) #6
  %701 = bitcast i64* %131 to i8*
  call void @free(i8* %701) #6
  %702 = bitcast i64* %130 to i8*
  call void @free(i8* %702) #6
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  call void @free(i8* %startV.0.in) #6
  call void @free(i8* %endV.0.in) #6
  %703 = shl i64 %691, 3
  %704 = call noalias i8* @malloc(i64 %703) #6
  %705 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %706 = bitcast i8* %705 to i8**
  store i8* %704, i8** %706, align 8
  %707 = icmp eq i8* %704, null
  br i1 %707, label %708, label %709

; <label>:708                                     ; preds = %692
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16.80, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 1366, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

.critedge6:                                       ; preds = %._crit_edge157
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  call void @free(i8* %startV.0.in) #6
  call void @free(i8* %endV.0.in) #6
  br label %709

; <label>:709                                     ; preds = %.critedge6, %692
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %710 = load float, float* @PERC_INT_WEIGHTS, align 4
  call void @createPartition(i64 0, i64 %691, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %711 = load i64, i64* %i_start, align 8
  %712 = load i64, i64* %i_stop, align 8
  %713 = icmp slt i64 %711, %712
  br i1 %713, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %709
  %714 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %715 = bitcast i8* %714 to i64**
  br label %716

; <label>:716                                     ; preds = %734, %.lr.ph151
  %i.13149 = phi i64 [ %711, %.lr.ph151 ], [ %735, %734 ]
  %numStrWtEdges.0148 = phi i64 [ 0, %.lr.ph151 ], [ %numStrWtEdges.1, %734 ]
  %717 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %718 = urem i64 %717, 1000
  %719 = uitofp i64 %718 to float
  %720 = fdiv float %719, 1.000000e+03
  %721 = fcmp ugt float %720, %710
  br i1 %721, label %730, label %722

; <label>:722                                     ; preds = %716
  %723 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %724 = load i64, i64* @MAX_INT_WEIGHT, align 8
  %725 = add i64 %724, -1
  %726 = urem i64 %723, %725
  %727 = add i64 %726, 1
  %728 = load i64*, i64** %715, align 8
  %729 = getelementptr inbounds i64, i64* %728, i64 %i.13149
  store i64 %727, i64* %729, align 8
  br label %734

; <label>:730                                     ; preds = %716
  %731 = load i64*, i64** %715, align 8
  %732 = getelementptr inbounds i64, i64* %731, i64 %i.13149
  store i64 -1, i64* %732, align 8
  %733 = add i64 %numStrWtEdges.0148, 1
  br label %734

; <label>:734                                     ; preds = %730, %722
  %numStrWtEdges.1 = phi i64 [ %numStrWtEdges.0148, %722 ], [ %733, %730 ]
  %735 = add nsw i64 %i.13149, 1
  %736 = load i64, i64* %i_stop, align 8
  %737 = icmp slt i64 %735, %736
  br i1 %737, label %716, label %._crit_edge152.loopexit

._crit_edge152.loopexit:                          ; preds = %734
  %numStrWtEdges.1.lcssa = phi i64 [ %numStrWtEdges.1, %734 ]
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %._crit_edge152.loopexit, %709
  %numStrWtEdges.0.lcssa = phi i64 [ 0, %709 ], [ %numStrWtEdges.1.lcssa, %._crit_edge152.loopexit ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %738 = icmp ne i64 %691, 0
  %or.cond249 = and i1 %11, %738
  br i1 %or.cond249, label %.lr.ph147, label %.outer32.preheader

.lr.ph147:                                        ; preds = %._crit_edge152
  %739 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %740 = bitcast i8* %739 to i64**
  %741 = add i64 %662, %352
  %xtraiter570 = and i64 %741, 1
  %lcmp.mod571 = icmp eq i64 %xtraiter570, 0
  br i1 %lcmp.mod571, label %.lr.ph147.split, label %742

; <label>:742                                     ; preds = %.lr.ph147
  %743 = load i64*, i64** %740, align 8
  %744 = load i64, i64* %743, align 8
  %745 = icmp slt i64 %744, 0
  br i1 %745, label %746, label %747

; <label>:746                                     ; preds = %742
  store i64 0, i64* %743, align 8
  br label %747

; <label>:747                                     ; preds = %746, %742
  %t26.1.prol = phi i64 [ 1, %746 ], [ 0, %742 ]
  br label %.lr.ph147.split

.lr.ph147.split:                                  ; preds = %747, %.lr.ph147
  %i.14146.unr = phi i64 [ 0, %.lr.ph147 ], [ 1, %747 ]
  %t26.0145.unr = phi i64 [ 0, %.lr.ph147 ], [ %t26.1.prol, %747 ]
  %748 = icmp eq i64 %741, 1
  br i1 %748, label %.outer32.preheader.loopexit, label %.lr.ph147.split.split

.lr.ph147.split.split:                            ; preds = %.lr.ph147.split
  br label %749

; <label>:749                                     ; preds = %1106, %.lr.ph147.split.split
  %i.14146 = phi i64 [ %i.14146.unr, %.lr.ph147.split.split ], [ %1107, %1106 ]
  %t26.0145 = phi i64 [ %t26.0145.unr, %.lr.ph147.split.split ], [ %t26.1.1, %1106 ]
  %750 = load i64*, i64** %740, align 8
  %751 = getelementptr inbounds i64, i64* %750, i64 %i.14146
  %752 = load i64, i64* %751, align 8
  %753 = icmp slt i64 %752, 0
  br i1 %753, label %754, label %757

; <label>:754                                     ; preds = %749
  %755 = sub nsw i64 0, %t26.0145
  store i64 %755, i64* %751, align 8
  %756 = add nsw i64 %t26.0145, 1
  br label %757

; <label>:757                                     ; preds = %754, %749
  %t26.1 = phi i64 [ %756, %754 ], [ %t26.0145, %749 ]
  %758 = add nuw nsw i64 %i.14146, 1
  %759 = load i64*, i64** %740, align 8
  %760 = getelementptr inbounds i64, i64* %759, i64 %758
  %761 = load i64, i64* %760, align 8
  %762 = icmp slt i64 %761, 0
  br i1 %762, label %1103, label %1106

.outer32.preheader.loopexit.unr-lcssa:            ; preds = %1106
  br label %.outer32.preheader.loopexit

.outer32.preheader.loopexit:                      ; preds = %.outer32.preheader.loopexit.unr-lcssa, %.lr.ph147.split
  br label %.outer32.preheader

.outer32.preheader:                               ; preds = %.outer32.preheader.loopexit, %._crit_edge152
  br label %.outer32

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %.lr.ph143
  call void @llvm.x86.sse2.pause() #6
  %763 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %764 = icmp eq i64 %763, 0
  br i1 %764, label %._crit_edge144.loopexit, label %.lr.ph143

._crit_edge144.loopexit:                          ; preds = %.lr.ph143
  br label %._crit_edge144

._crit_edge144:                                   ; preds = %.outer32, %._crit_edge144.loopexit
  %765 = icmp slt i32 %tries28.0.ph, 2
  br i1 %765, label %780, label %766

; <label>:766                                     ; preds = %._crit_edge144
  %767 = add nsw i32 %tries28.0.ph, -1
  %768 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 4, i64 0, i64 4, i64 4294967295) #6, !srcloc !36
  %769 = trunc i64 %768 to i32
  %770 = icmp eq i32 %769, -1
  br i1 %770, label %773, label %.outer32

.outer32:                                         ; preds = %766, %.outer32.preheader
  %tries28.0.ph = phi i32 [ %767, %766 ], [ 9, %.outer32.preheader ]
  %771 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %772 = icmp eq i64 %771, 0
  br i1 %772, label %._crit_edge144, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %.outer32
  br label %.lr.ph143

; <label>:773                                     ; preds = %766
  %774 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %775 = icmp eq i64 %774, 0
  br i1 %775, label %777, label %776

; <label>:776                                     ; preds = %773
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !37
  br label %777

; <label>:777                                     ; preds = %776, %773
  %778 = load i64, i64* @global_numStrWtEdges, align 8
  %779 = add i64 %778, %numStrWtEdges.0.lcssa
  store i64 %779, i64* @global_numStrWtEdges, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 4) #6, !srcloc !38
  br label %783

; <label>:780                                     ; preds = %._crit_edge144
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #6
  %781 = load i64, i64* @global_numStrWtEdges, align 8
  %782 = add i64 %781, %numStrWtEdges.0.lcssa
  store i64 %782, i64* @global_numStrWtEdges, align 8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #6
  br label %783

; <label>:783                                     ; preds = %780, %777
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %784 = load i64, i64* @global_numStrWtEdges, align 8
  br i1 %11, label %785, label %793

; <label>:785                                     ; preds = %783
  %786 = load i64, i64* @MAX_STRLEN, align 8
  %787 = mul i64 %786, %784
  %788 = call noalias i8* @malloc(i64 %787) #6
  %789 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %790 = bitcast i8* %789 to i8**
  store i8* %788, i8** %790, align 8
  %791 = icmp eq i8* %788, null
  br i1 %791, label %792, label %793

; <label>:792                                     ; preds = %785
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.81, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 1411, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:793                                     ; preds = %785, %783
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  call void @createPartition(i64 0, i64 %691, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %794 = load i64, i64* %i_start, align 8
  %795 = load i64, i64* %i_stop, align 8
  %796 = icmp slt i64 %794, %795
  br i1 %796, label %.lr.ph141, label %._crit_edge142

.lr.ph141:                                        ; preds = %793
  %797 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %798 = bitcast i8* %797 to i64**
  %799 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %800 = bitcast i8* %799 to i8**
  %.pre325 = load i64, i64* @MAX_STRLEN, align 8
  br label %801

; <label>:801                                     ; preds = %.loopexit30, %.lr.ph141
  %802 = phi i64 [ %795, %.lr.ph141 ], [ %824, %.loopexit30 ]
  %803 = phi i64 [ %.pre325, %.lr.ph141 ], [ %825, %.loopexit30 ]
  %i.15139 = phi i64 [ %794, %.lr.ph141 ], [ %826, %.loopexit30 ]
  %804 = load i64*, i64** %798, align 8
  %805 = getelementptr inbounds i64, i64* %804, i64 %i.15139
  %806 = load i64, i64* %805, align 8
  %807 = icmp slt i64 %806, 1
  %808 = icmp sgt i64 %803, 0
  %or.cond251 = and i1 %807, %808
  br i1 %or.cond251, label %.lr.ph138.preheader, label %.loopexit30

.lr.ph138.preheader:                              ; preds = %801
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138, %.lr.ph138.preheader
  %j29.0137 = phi i64 [ %821, %.lr.ph138 ], [ 0, %.lr.ph138.preheader ]
  %809 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %810 = urem i64 %809, 127
  %811 = add nuw nsw i64 %810, 1
  %812 = trunc i64 %811 to i8
  %813 = load i64*, i64** %798, align 8
  %814 = getelementptr inbounds i64, i64* %813, i64 %i.15139
  %815 = load i64, i64* %814, align 8
  %816 = load i64, i64* @MAX_STRLEN, align 8
  %817 = mul i64 %816, %815
  %818 = sub i64 %j29.0137, %817
  %819 = load i8*, i8** %800, align 8
  %820 = getelementptr inbounds i8, i8* %819, i64 %818
  store i8 %812, i8* %820, align 1
  %821 = add nuw nsw i64 %j29.0137, 1
  %822 = load i64, i64* @MAX_STRLEN, align 8
  %823 = icmp slt i64 %821, %822
  br i1 %823, label %.lr.ph138, label %.loopexit30.loopexit

.loopexit30.loopexit:                             ; preds = %.lr.ph138
  %.lcssa595 = phi i64 [ %822, %.lr.ph138 ]
  %.pre326 = load i64, i64* %i_stop, align 8
  br label %.loopexit30

.loopexit30:                                      ; preds = %.loopexit30.loopexit, %801
  %824 = phi i64 [ %.pre326, %.loopexit30.loopexit ], [ %802, %801 ]
  %825 = phi i64 [ %.lcssa595, %.loopexit30.loopexit ], [ %803, %801 ]
  %826 = add nsw i64 %i.15139, 1
  %827 = icmp slt i64 %826, %824
  br i1 %827, label %801, label %._crit_edge142.loopexit

._crit_edge142.loopexit:                          ; preds = %.loopexit30
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %._crit_edge142.loopexit, %793
  br i1 %11, label %828, label %.loopexit28

; <label>:828                                     ; preds = %._crit_edge142
  %829 = load i8*, i8** @SOUGHT_STRING, align 8
  %830 = call i64 @strlen(i8* %829) #17
  %831 = load i64, i64* @MAX_STRLEN, align 8
  %832 = icmp eq i64 %830, %831
  br i1 %832, label %837, label %833

; <label>:833                                     ; preds = %828
  %834 = call noalias i8* @malloc(i64 %831) #6
  store i8* %834, i8** @SOUGHT_STRING, align 8
  %835 = icmp eq i8* %834, null
  br i1 %835, label %836, label %837

; <label>:836                                     ; preds = %833
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18.82, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 1436, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:837                                     ; preds = %833, %828
  %838 = call i64 @random_generate(%struct.random* nonnull %7) #6
  %839 = urem i64 %838, %784
  %840 = load i64, i64* @MAX_STRLEN, align 8
  %841 = icmp sgt i64 %840, 0
  br i1 %841, label %.lr.ph136, label %.loopexit28

.lr.ph136:                                        ; preds = %837
  %842 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %843 = bitcast i8* %842 to i8**
  br label %844

; <label>:844                                     ; preds = %844, %.lr.ph136
  %845 = phi i64 [ %840, %.lr.ph136 ], [ %854, %844 ]
  %j31.0134 = phi i64 [ 0, %.lr.ph136 ], [ %853, %844 ]
  %846 = mul nsw i64 %845, %839
  %847 = add nsw i64 %846, %j31.0134
  %848 = load i8*, i8** %843, align 8
  %849 = getelementptr inbounds i8, i8* %848, i64 %847
  %850 = load i8, i8* %849, align 1
  %851 = load i8*, i8** @SOUGHT_STRING, align 8
  %852 = getelementptr inbounds i8, i8* %851, i64 %j31.0134
  store i8 %850, i8* %852, align 1
  %853 = add nuw nsw i64 %j31.0134, 1
  %854 = load i64, i64* @MAX_STRLEN, align 8
  %855 = icmp slt i64 %853, %854
  br i1 %855, label %844, label %.loopexit28.loopexit

.loopexit28.loopexit:                             ; preds = %844
  br label %.loopexit28

.loopexit28:                                      ; preds = %.loopexit28.loopexit, %837, %._crit_edge142
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %856 = load i64, i64* %i_start, align 8
  %857 = load i64, i64* %i_stop, align 8
  %858 = icmp slt i64 %856, %857
  br i1 %858, label %.lr.ph132.preheader, label %._crit_edge133

.lr.ph132.preheader:                              ; preds = %.loopexit28
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132, %.lr.ph132.preheader
  %i.16130 = phi i64 [ %867, %.lr.ph132 ], [ %856, %.lr.ph132.preheader ]
  %859 = getelementptr inbounds i64, i64* %376, i64 %i.16130
  %860 = load i64, i64* %859, align 8
  %861 = getelementptr inbounds i64, i64* %20, i64 %860
  %862 = load i64, i64* %861, align 8
  store i64 %862, i64* %859, align 8
  %863 = getelementptr inbounds i64, i64* %377, i64 %i.16130
  %864 = load i64, i64* %863, align 8
  %865 = getelementptr inbounds i64, i64* %20, i64 %864
  %866 = load i64, i64* %865, align 8
  store i64 %866, i64* %863, align 8
  %867 = add nsw i64 %i.16130, 1
  %868 = load i64, i64* %i_stop, align 8
  %869 = icmp slt i64 %867, %868
  br i1 %869, label %.lr.ph132, label %._crit_edge133.loopexit

._crit_edge133.loopexit:                          ; preds = %.lr.ph132
  br label %._crit_edge133

._crit_edge133:                                   ; preds = %._crit_edge133.loopexit, %.loopexit28
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %11, label %870, label %._crit_edge133._crit_edge

._crit_edge133._crit_edge:                        ; preds = %._crit_edge133
  %.pre337 = getelementptr inbounds i8, i8* %argPtr, i64 8
  br label %882

; <label>:870                                     ; preds = %._crit_edge133
  %871 = shl i64 %691, 3
  %872 = call noalias i8* @malloc(i64 %871) #6
  %873 = bitcast i8* %argPtr to i8**
  store i8* %872, i8** %873, align 8
  %874 = icmp eq i8* %872, null
  br i1 %874, label %875, label %876

; <label>:875                                     ; preds = %870
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19.83, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 1472, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:876                                     ; preds = %870
  %877 = call noalias i8* @malloc(i64 %871) #6
  %878 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %879 = bitcast i8* %878 to i8**
  store i8* %877, i8** %879, align 8
  %880 = icmp eq i8* %877, null
  br i1 %880, label %881, label %882

; <label>:881                                     ; preds = %876
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20.84, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 1474, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:882                                     ; preds = %876, %._crit_edge133._crit_edge
  %.pre-phi = phi i8* [ %.pre337, %._crit_edge133._crit_edge ], [ %878, %876 ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %883 = bitcast i8* %argPtr to i64**
  %884 = load i64*, i64** %883, align 8
  %885 = bitcast i8* %.pre-phi to i64**
  %886 = load i64*, i64** %885, align 8
  call void @all_radixsort_node_aux_s3(i64 %691, i64* %376, i64* %884, i64* %377, i64* %886) #6
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %11, label %887, label %890

; <label>:887                                     ; preds = %882
  %888 = bitcast i64* %376 to i8*
  call void @free(i8* %888) #6
  %889 = bitcast i64* %377 to i8*
  call void @free(i8* %889) #6
  br label %890

; <label>:890                                     ; preds = %887, %882
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %891 = load i64, i64* @SCALE, align 8
  %892 = icmp slt i64 %891, 12
  br i1 %892, label %893, label %993

; <label>:893                                     ; preds = %890
  br i1 %11, label %.preheader22, label %.critedge11

.preheader22:                                     ; preds = %893
  %894 = icmp eq i64 %691, 0
  br i1 %894, label %.critedge8, label %.preheader21.lr.ph.preheader

.preheader21.lr.ph.preheader:                     ; preds = %.preheader22
  %895 = add i64 %662, %352
  %896 = add i64 %895, 1
  %897 = add i64 %662, %352
  %898 = add i64 %897, -2
  br label %.preheader21.lr.ph

._crit_edge103:                                   ; preds = %.preheader21.lr.ph
  %899 = load i64*, i64** %883, align 8
  %900 = getelementptr inbounds i64, i64* %899, i64 %i1.0.ph111
  %901 = load i64, i64* %900, align 8
  %902 = load i64, i64* @TOT_VERTICES, align 8
  %903 = add i64 %902, -1
  %904 = icmp eq i64 %901, %903
  br i1 %904, label %.critedge8.loopexit509, label %.outer.loopexit

.outer.loopexit.loopexit:                         ; preds = %._crit_edge103.us
  %i1.1.us.lcssa = phi i64 [ %i1.1.us, %._crit_edge103.us ]
  %i.18.lcssa.us.lcssa = phi i64 [ %i.18.lcssa.us, %._crit_edge103.us ]
  br label %.outer.loopexit

.outer.loopexit:                                  ; preds = %.outer.loopexit.loopexit, %._crit_edge103
  %i1.1.lcssa = phi i64 [ %i1.0.ph111, %._crit_edge103 ], [ %i1.1.us.lcssa, %.outer.loopexit.loopexit ]
  %i.18.lcssa.lcssa = phi i64 [ %i1.0.ph111, %._crit_edge103 ], [ %i.18.lcssa.us.lcssa, %.outer.loopexit.loopexit ]
  %905 = icmp ult i64 %i.18.lcssa.lcssa, %691
  br i1 %905, label %.preheader21.lr.ph, label %.critedge8.loopexit509

.preheader21.lr.ph:                               ; preds = %.outer.loopexit, %.preheader21.lr.ph.preheader
  %i1.0.ph111 = phi i64 [ %i1.1.lcssa, %.outer.loopexit ], [ 0, %.preheader21.lr.ph.preheader ]
  %906 = icmp ult i64 %i1.0.ph111, %691
  br i1 %906, label %.lr.ph.us.preheader, label %._crit_edge103

.lr.ph.us.preheader:                              ; preds = %.preheader21.lr.ph
  %907 = xor i64 %i1.0.ph111, 1
  %908 = sub i64 -2, %i1.0.ph111
  %909 = sub i64 %896, %i1.0.ph111
  %910 = sub i64 %898, %i1.0.ph111
  br label %.lr.ph.us

; <label>:911                                     ; preds = %.lr.ph.us, %986
  %i.1892.us = phi i64 [ %i1.0.ph111, %.lr.ph.us ], [ %987, %986 ]
  %912 = getelementptr inbounds i64, i64* %990, i64 %i.1892.us
  %913 = load i64, i64* %912, align 8
  %914 = icmp eq i64 %913, %992
  br i1 %914, label %986, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %986, %911
  %i.18.lcssa.us = phi i64 [ %i.1892.us, %911 ], [ %987, %986 ]
  %i1.1.us = phi i64 [ %i.1892.us, %911 ], [ %i1.0109.us, %986 ]
  %915 = icmp slt i64 %i1.0.ph111, %i1.1.us
  br i1 %915, label %.lr.ph102.us.preheader, label %._crit_edge103.us

.lr.ph102.us.preheader:                           ; preds = %._crit_edge.us
  %916 = add i64 %i1.1.us, %907
  %917 = add i64 %908, %i1.1.us
  br label %.lr.ph102.us

._crit_edge103.us.loopexit:                       ; preds = %.loopexit19.us
  %.pre336 = load i64*, i64** %883, align 8
  br label %._crit_edge103.us

._crit_edge103.us:                                ; preds = %._crit_edge103.us.loopexit, %._crit_edge.us
  %918 = phi i64* [ %.pre336, %._crit_edge103.us.loopexit ], [ %990, %._crit_edge.us ]
  %919 = getelementptr inbounds i64, i64* %918, i64 %i1.0.ph111
  %920 = load i64, i64* %919, align 8
  %921 = load i64, i64* @TOT_VERTICES, align 8
  %922 = add i64 %921, -1
  %923 = icmp eq i64 %920, %922
  br i1 %923, label %.lr.ph108.us.preheader, label %.outer.loopexit.loopexit

.lr.ph108.us.preheader:                           ; preds = %._crit_edge103.us
  br label %.lr.ph108.us

.lr.ph108.us:                                     ; preds = %.loopexit.us, %.lr.ph108.us.preheader
  %indvar562 = phi i64 [ 0, %.lr.ph108.us.preheader ], [ %indvar.next563, %.loopexit.us ]
  %j35.0107.us = phi i64 [ %i1.0.ph111, %.lr.ph108.us.preheader ], [ %924, %.loopexit.us ]
  %924 = add nuw nsw i64 %j35.0107.us, 1
  %925 = icmp ult i64 %924, %691
  br i1 %925, label %.lr.ph106.us.preheader, label %.loopexit.us

.lr.ph106.us.preheader:                           ; preds = %.lr.ph108.us
  %926 = sub i64 %909, %indvar562
  %xtraiter564 = and i64 %926, 1
  %lcmp.mod565 = icmp eq i64 %xtraiter564, 0
  br i1 %lcmp.mod565, label %.lr.ph106.us.preheader.split, label %.lr.ph106.us.prol

.lr.ph106.us.prol:                                ; preds = %.lr.ph106.us.preheader
  %927 = load i64*, i64** %885, align 8
  %928 = getelementptr inbounds i64, i64* %927, i64 %924
  %929 = load i64, i64* %928, align 8
  %930 = getelementptr inbounds i64, i64* %927, i64 %j35.0107.us
  %931 = load i64, i64* %930, align 8
  %932 = icmp ult i64 %929, %931
  br i1 %932, label %933, label %936

; <label>:933                                     ; preds = %.lr.ph106.us.prol
  store i64 %929, i64* %930, align 8
  %934 = load i64*, i64** %885, align 8
  %935 = getelementptr inbounds i64, i64* %934, i64 %924
  store i64 %931, i64* %935, align 8
  br label %936

; <label>:936                                     ; preds = %933, %.lr.ph106.us.prol
  %937 = add nsw i64 %j35.0107.us, 2
  br label %.lr.ph106.us.preheader.split

.lr.ph106.us.preheader.split:                     ; preds = %936, %.lr.ph106.us.preheader
  %k36.0104.us.unr = phi i64 [ %924, %.lr.ph106.us.preheader ], [ %937, %936 ]
  %938 = icmp eq i64 %910, %indvar562
  br i1 %938, label %.loopexit.us.loopexit, label %.lr.ph106.us.preheader.split.split

.lr.ph106.us.preheader.split.split:               ; preds = %.lr.ph106.us.preheader.split
  br label %.lr.ph106.us

.lr.ph106.us:                                     ; preds = %1101, %.lr.ph106.us.preheader.split.split
  %k36.0104.us = phi i64 [ %k36.0104.us.unr, %.lr.ph106.us.preheader.split.split ], [ %1102, %1101 ]
  %939 = load i64*, i64** %885, align 8
  %940 = getelementptr inbounds i64, i64* %939, i64 %k36.0104.us
  %941 = load i64, i64* %940, align 8
  %942 = getelementptr inbounds i64, i64* %939, i64 %j35.0107.us
  %943 = load i64, i64* %942, align 8
  %944 = icmp ult i64 %941, %943
  br i1 %944, label %945, label %.lr.ph106.us.1566

; <label>:945                                     ; preds = %.lr.ph106.us
  store i64 %941, i64* %942, align 8
  %946 = load i64*, i64** %885, align 8
  %947 = getelementptr inbounds i64, i64* %946, i64 %k36.0104.us
  store i64 %943, i64* %947, align 8
  br label %.lr.ph106.us.1566

.lr.ph106.us.1566:                                ; preds = %945, %.lr.ph106.us
  %948 = add nsw i64 %k36.0104.us, 1
  %949 = load i64*, i64** %885, align 8
  %950 = getelementptr inbounds i64, i64* %949, i64 %948
  %951 = load i64, i64* %950, align 8
  %952 = getelementptr inbounds i64, i64* %949, i64 %j35.0107.us
  %953 = load i64, i64* %952, align 8
  %954 = icmp ult i64 %951, %953
  br i1 %954, label %1098, label %1101

.lr.ph102.us:                                     ; preds = %.loopexit19.us, %.lr.ph102.us.preheader
  %indvar = phi i64 [ 0, %.lr.ph102.us.preheader ], [ %indvar.next, %.loopexit19.us ]
  %j33.0100.us = phi i64 [ %i1.0.ph111, %.lr.ph102.us.preheader ], [ %955, %.loopexit19.us ]
  %955 = add nsw i64 %j33.0100.us, 1
  %956 = icmp slt i64 %955, %i1.1.us
  br i1 %956, label %.lr.ph99.us.preheader, label %.loopexit19.us

.lr.ph99.us.preheader:                            ; preds = %.lr.ph102.us
  %957 = sub i64 %916, %indvar
  %xtraiter = and i64 %957, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph99.us.preheader.split, label %.lr.ph99.us.prol

.lr.ph99.us.prol:                                 ; preds = %.lr.ph99.us.preheader
  %958 = load i64*, i64** %885, align 8
  %959 = getelementptr inbounds i64, i64* %958, i64 %955
  %960 = load i64, i64* %959, align 8
  %961 = getelementptr inbounds i64, i64* %958, i64 %j33.0100.us
  %962 = load i64, i64* %961, align 8
  %963 = icmp ult i64 %960, %962
  br i1 %963, label %964, label %967

; <label>:964                                     ; preds = %.lr.ph99.us.prol
  store i64 %960, i64* %961, align 8
  %965 = load i64*, i64** %885, align 8
  %966 = getelementptr inbounds i64, i64* %965, i64 %955
  store i64 %962, i64* %966, align 8
  br label %967

; <label>:967                                     ; preds = %964, %.lr.ph99.us.prol
  %968 = add nsw i64 %j33.0100.us, 2
  br label %.lr.ph99.us.preheader.split

.lr.ph99.us.preheader.split:                      ; preds = %967, %.lr.ph99.us.preheader
  %k.097.us.unr = phi i64 [ %955, %.lr.ph99.us.preheader ], [ %968, %967 ]
  %969 = icmp eq i64 %917, %indvar
  br i1 %969, label %.loopexit19.us.loopexit, label %.lr.ph99.us.preheader.split.split

.lr.ph99.us.preheader.split.split:                ; preds = %.lr.ph99.us.preheader.split
  br label %.lr.ph99.us

.lr.ph99.us:                                      ; preds = %1096, %.lr.ph99.us.preheader.split.split
  %k.097.us = phi i64 [ %k.097.us.unr, %.lr.ph99.us.preheader.split.split ], [ %1097, %1096 ]
  %970 = load i64*, i64** %885, align 8
  %971 = getelementptr inbounds i64, i64* %970, i64 %k.097.us
  %972 = load i64, i64* %971, align 8
  %973 = getelementptr inbounds i64, i64* %970, i64 %j33.0100.us
  %974 = load i64, i64* %973, align 8
  %975 = icmp ult i64 %972, %974
  br i1 %975, label %976, label %.lr.ph99.us.1561

; <label>:976                                     ; preds = %.lr.ph99.us
  store i64 %972, i64* %973, align 8
  %977 = load i64*, i64** %885, align 8
  %978 = getelementptr inbounds i64, i64* %977, i64 %k.097.us
  store i64 %974, i64* %978, align 8
  br label %.lr.ph99.us.1561

.lr.ph99.us.1561:                                 ; preds = %976, %.lr.ph99.us
  %979 = add nsw i64 %k.097.us, 1
  %980 = load i64*, i64** %885, align 8
  %981 = getelementptr inbounds i64, i64* %980, i64 %979
  %982 = load i64, i64* %981, align 8
  %983 = getelementptr inbounds i64, i64* %980, i64 %j33.0100.us
  %984 = load i64, i64* %983, align 8
  %985 = icmp ult i64 %982, %984
  br i1 %985, label %1093, label %1096

; <label>:986                                     ; preds = %911
  %987 = add nuw nsw i64 %i.1892.us, 1
  %988 = icmp ult i64 %987, %691
  br i1 %988, label %911, label %._crit_edge.us

.loopexit.us.loopexit.unr-lcssa:                  ; preds = %1101
  br label %.loopexit.us.loopexit

.loopexit.us.loopexit:                            ; preds = %.loopexit.us.loopexit.unr-lcssa, %.lr.ph106.us.preheader.split
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit, %.lr.ph108.us
  %exitcond301 = icmp eq i64 %924, %691
  %indvar.next563 = add i64 %indvar562, 1
  br i1 %exitcond301, label %.loopexit20.us, label %.lr.ph108.us

.loopexit19.us.loopexit.unr-lcssa:                ; preds = %1096
  br label %.loopexit19.us.loopexit

.loopexit19.us.loopexit:                          ; preds = %.loopexit19.us.loopexit.unr-lcssa, %.lr.ph99.us.preheader.split
  br label %.loopexit19.us

.loopexit19.us:                                   ; preds = %.loopexit19.us.loopexit, %.lr.ph102.us
  %exitcond299 = icmp eq i64 %955, %i1.1.us
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond299, label %._crit_edge103.us.loopexit, label %.lr.ph102.us

.loopexit20.us:                                   ; preds = %.loopexit.us
  %989 = icmp ult i64 %i.18.lcssa.us, %691
  br i1 %989, label %.lr.ph.us, label %.critedge8.loopexit

.lr.ph.us:                                        ; preds = %.loopexit20.us, %.lr.ph.us.preheader
  %i1.0109.us = phi i64 [ %i1.1.us, %.loopexit20.us ], [ %i1.0.ph111, %.lr.ph.us.preheader ]
  %990 = load i64*, i64** %883, align 8
  %991 = getelementptr inbounds i64, i64* %990, i64 %i1.0109.us
  %992 = load i64, i64* %991, align 8
  br label %911

; <label>:993                                     ; preds = %890
  br i1 %11, label %994, label %.critedge9

; <label>:994                                     ; preds = %993
  %995 = load i64, i64* @TOT_VERTICES, align 8
  %996 = shl i64 %995, 3
  %997 = add i64 %996, 8
  %998 = call noalias i8* @malloc(i64 %997) #6
  %999 = bitcast i8* %998 to i64*
  %1000 = icmp eq i8* %998, null
  br i1 %1000, label %1001, label %1002

; <label>:1001                                    ; preds = %994
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23.87, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.66, i64 0, i64 0), i32 1561, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #15
  unreachable

; <label>:1002                                    ; preds = %994
  store i8* %998, i8** bitcast (i64** @global_tempIndex to i8**), align 8
  store i64 0, i64* %999, align 8
  %1003 = getelementptr inbounds i64, i64* %999, i64 %995
  store i64 %691, i64* %1003, align 8
  %1004 = icmp eq i64 %995, 0
  br i1 %1004, label %.preheader25, label %.lr.ph126.preheader

.lr.ph126.preheader:                              ; preds = %1002
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.outer27, %.lr.ph126.preheader
  %i038.0.ph129 = phi i64 [ %.lcssa586, %.outer27 ], [ 0, %.lr.ph126.preheader ]
  %i.19.ph128 = phi i64 [ %.lcssa588, %.outer27 ], [ 0, %.lr.ph126.preheader ]
  %1005 = icmp ult i64 %i038.0.ph129, %691
  %.phi.trans.insert329 = getelementptr inbounds i64, i64* %999, i64 %i.19.ph128
  %.pre330 = load i64, i64* %.phi.trans.insert329, align 8
  br i1 %1005, label %.lr.ph126.split.us.preheader, label %.lr.ph126.split.preheader

.lr.ph126.split.us.preheader:                     ; preds = %.lr.ph126
  %.pre331 = load i64*, i64** %883, align 8
  %1006 = getelementptr inbounds i64, i64* %.pre331, i64 %i038.0.ph129
  br label %.lr.ph126.split.us

.lr.ph126.split.preheader:                        ; preds = %.lr.ph126
  %.pre330.lcssa = phi i64 [ %.pre330, %.lr.ph126 ]
  %i.19.ph128.lcssa = phi i64 [ %i.19.ph128, %.lr.ph126 ]
  %1007 = add i64 %i.19.ph128.lcssa, 1
  %1008 = icmp ugt i64 %995, %1007
  %umax = select i1 %1008, i64 %995, i64 %1007
  %1009 = sub i64 %umax, %i.19.ph128.lcssa
  %min.iters.check485 = icmp ult i64 %1009, 4
  br i1 %min.iters.check485, label %.lr.ph126.split.preheader510, label %min.iters.checked486

.lr.ph126.split.preheader510:                     ; preds = %middle.block483, %min.iters.checked486, %.lr.ph126.split.preheader
  %i.19125.ph = phi i64 [ %i.19.ph128.lcssa, %min.iters.checked486 ], [ %i.19.ph128.lcssa, %.lr.ph126.split.preheader ], [ %ind.end494, %middle.block483 ]
  br label %.lr.ph126.split

min.iters.checked486:                             ; preds = %.lr.ph126.split.preheader
  %n.vec488 = and i64 %1009, -4
  %cmp.zero489 = icmp eq i64 %n.vec488, 0
  %ind.end494 = add i64 %i.19.ph128.lcssa, %n.vec488
  br i1 %cmp.zero489, label %.lr.ph126.split.preheader510, label %vector.ph490

vector.ph490:                                     ; preds = %min.iters.checked486
  %broadcast.splatinsert501 = insertelement <2 x i64> undef, i64 %.pre330.lcssa, i32 0
  %broadcast.splat502 = shufflevector <2 x i64> %broadcast.splatinsert501, <2 x i64> undef, <2 x i32> zeroinitializer
  %1010 = add i64 %i.19.ph128.lcssa, 1
  %1011 = icmp ugt i64 %995, %1010
  %umax567 = select i1 %1011, i64 %995, i64 %1010
  %1012 = sub i64 %umax567, %i.19.ph128.lcssa
  %1013 = add i64 %1012, -4
  %1014 = lshr i64 %1013, 2
  %1015 = add nuw nsw i64 %1014, 1
  %xtraiter568 = and i64 %1015, 3
  %lcmp.mod569 = icmp eq i64 %xtraiter568, 0
  br i1 %lcmp.mod569, label %vector.ph490.split, label %vector.body482.prol.preheader

vector.body482.prol.preheader:                    ; preds = %vector.ph490
  br label %vector.body482.prol

vector.body482.prol:                              ; preds = %vector.body482.prol, %vector.body482.prol.preheader
  %index491.prol = phi i64 [ %index.next492.prol, %vector.body482.prol ], [ 0, %vector.body482.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %vector.body482.prol ], [ %xtraiter568, %vector.body482.prol.preheader ]
  %offset.idx496.prol = add i64 %i.19.ph128.lcssa, %index491.prol
  %1016 = add i64 %offset.idx496.prol, 1
  %1017 = getelementptr inbounds i64, i64* %999, i64 %1016
  %1018 = bitcast i64* %1017 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1018, align 8
  %1019 = getelementptr i64, i64* %1017, i64 2
  %1020 = bitcast i64* %1019 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1020, align 8
  %index.next492.prol = add i64 %index491.prol, 4
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %vector.ph490.split.loopexit, label %vector.body482.prol, !llvm.loop !45

vector.ph490.split.loopexit:                      ; preds = %vector.body482.prol
  %index.next492.prol.lcssa = phi i64 [ %index.next492.prol, %vector.body482.prol ]
  br label %vector.ph490.split

vector.ph490.split:                               ; preds = %vector.ph490.split.loopexit, %vector.ph490
  %index491.unr = phi i64 [ 0, %vector.ph490 ], [ %index.next492.prol.lcssa, %vector.ph490.split.loopexit ]
  %1021 = icmp ult i64 %1013, 12
  br i1 %1021, label %middle.block483, label %vector.ph490.split.split

vector.ph490.split.split:                         ; preds = %vector.ph490.split
  br label %vector.body482

vector.body482:                                   ; preds = %vector.body482, %vector.ph490.split.split
  %index491 = phi i64 [ %index491.unr, %vector.ph490.split.split ], [ %index.next492.3, %vector.body482 ]
  %offset.idx496 = add i64 %i.19.ph128.lcssa, %index491
  %1022 = add i64 %offset.idx496, 1
  %1023 = getelementptr inbounds i64, i64* %999, i64 %1022
  %1024 = bitcast i64* %1023 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1024, align 8
  %1025 = getelementptr i64, i64* %1023, i64 2
  %1026 = bitcast i64* %1025 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1026, align 8
  %index.next492 = add i64 %index491, 4
  %offset.idx496.1 = add i64 %i.19.ph128.lcssa, %index.next492
  %1027 = add i64 %offset.idx496.1, 1
  %1028 = getelementptr inbounds i64, i64* %999, i64 %1027
  %1029 = bitcast i64* %1028 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1029, align 8
  %1030 = getelementptr i64, i64* %1028, i64 2
  %1031 = bitcast i64* %1030 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1031, align 8
  %index.next492.1 = add i64 %index491, 8
  %offset.idx496.2 = add i64 %i.19.ph128.lcssa, %index.next492.1
  %1032 = add i64 %offset.idx496.2, 1
  %1033 = getelementptr inbounds i64, i64* %999, i64 %1032
  %1034 = bitcast i64* %1033 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1034, align 8
  %1035 = getelementptr i64, i64* %1033, i64 2
  %1036 = bitcast i64* %1035 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1036, align 8
  %index.next492.2 = add i64 %index491, 12
  %offset.idx496.3 = add i64 %i.19.ph128.lcssa, %index.next492.2
  %1037 = add i64 %offset.idx496.3, 1
  %1038 = getelementptr inbounds i64, i64* %999, i64 %1037
  %1039 = bitcast i64* %1038 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1039, align 8
  %1040 = getelementptr i64, i64* %1038, i64 2
  %1041 = bitcast i64* %1040 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1041, align 8
  %index.next492.3 = add i64 %index491, 16
  %1042 = icmp eq i64 %index.next492.3, %n.vec488
  br i1 %1042, label %middle.block483.unr-lcssa, label %vector.body482, !llvm.loop !46

middle.block483.unr-lcssa:                        ; preds = %vector.body482
  br label %middle.block483

middle.block483:                                  ; preds = %middle.block483.unr-lcssa, %vector.ph490.split
  %cmp.n495 = icmp eq i64 %1009, %n.vec488
  br i1 %cmp.n495, label %.preheader25, label %.lr.ph126.split.preheader510

.lr.ph126.split.us:                               ; preds = %..loopexit26_crit_edge.us, %.lr.ph126.split.us.preheader
  %i.19125.us = phi i64 [ %1043, %..loopexit26_crit_edge.us ], [ %i.19.ph128, %.lr.ph126.split.us.preheader ]
  %1043 = add nsw i64 %i.19125.us, 1
  %1044 = getelementptr inbounds i64, i64* %999, i64 %1043
  store i64 %.pre330, i64* %1044, align 8
  %1045 = load i64, i64* %1006, align 8
  %1046 = icmp eq i64 %1045, %i.19125.us
  br i1 %1046, label %.lr.ph124.split.us.us.preheader.preheader, label %..loopexit26_crit_edge.us

.lr.ph124.split.us.us.preheader.preheader:        ; preds = %.lr.ph126.split.us
  br label %.lr.ph124.split.us.us.preheader

..loopexit26_crit_edge.us.loopexit:               ; preds = %.lr.ph124.split.us.us.preheader
  br label %..loopexit26_crit_edge.us

..loopexit26_crit_edge.us:                        ; preds = %..loopexit26_crit_edge.us.loopexit, %.lr.ph126.split.us
  %1047 = icmp ult i64 %1043, %995
  br i1 %1047, label %.lr.ph126.split.us, label %.preheader25.loopexit511

.lr.ph124.split.us.us.preheader:                  ; preds = %..lr.ph124.split.us.us_crit_edge, %.lr.ph124.split.us.us.preheader.preheader
  %j39.0122.us.us425 = phi i64 [ %1048, %..lr.ph124.split.us.us_crit_edge ], [ %i038.0.ph129, %.lr.ph124.split.us.us.preheader.preheader ]
  %1048 = add nuw nsw i64 %j39.0122.us.us425, 1
  %1049 = icmp ult i64 %1048, %691
  br i1 %1049, label %..lr.ph124.split.us.us_crit_edge, label %..loopexit26_crit_edge.us.loopexit

..lr.ph124.split.us.us_crit_edge:                 ; preds = %.lr.ph124.split.us.us.preheader
  %.phi.trans.insert332 = getelementptr inbounds i64, i64* %.pre331, i64 %1048
  %.pre333 = load i64, i64* %.phi.trans.insert332, align 8
  %1050 = icmp eq i64 %.pre333, %i.19125.us
  br i1 %1050, label %.lr.ph124.split.us.us.preheader, label %.outer27

.lr.ph126.split:                                  ; preds = %.lr.ph126.split, %.lr.ph126.split.preheader510
  %i.19125 = phi i64 [ %1051, %.lr.ph126.split ], [ %i.19125.ph, %.lr.ph126.split.preheader510 ]
  %1051 = add nsw i64 %i.19125, 1
  %1052 = getelementptr inbounds i64, i64* %999, i64 %1051
  store i64 %.pre330.lcssa, i64* %1052, align 8
  %1053 = icmp ult i64 %1051, %995
  br i1 %1053, label %.lr.ph126.split, label %.preheader25.loopexit, !llvm.loop !47

.outer27:                                         ; preds = %..lr.ph124.split.us.us_crit_edge
  %.lcssa590 = phi i64* [ %1044, %..lr.ph124.split.us.us_crit_edge ]
  %.lcssa588 = phi i64 [ %1043, %..lr.ph124.split.us.us_crit_edge ]
  %.lcssa586 = phi i64 [ %1048, %..lr.ph124.split.us.us_crit_edge ]
  store i64 %.lcssa586, i64* %.lcssa590, align 8
  %1054 = icmp ult i64 %.lcssa588, %995
  br i1 %1054, label %.lr.ph126, label %.preheader25.loopexit512

.preheader25.loopexit:                            ; preds = %.lr.ph126.split
  br label %.preheader25

.preheader25.loopexit511:                         ; preds = %..loopexit26_crit_edge.us
  br label %.preheader25

.preheader25.loopexit512:                         ; preds = %.outer27
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.loopexit512, %.preheader25.loopexit511, %.preheader25.loopexit, %middle.block483, %1002
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %1055 = load i64*, i64** @global_tempIndex, align 8
  %1056 = load i64, i64* @TOT_VERTICES, align 8
  %1057 = icmp eq i64 %1056, 0
  br i1 %1057, label %.critedge8.thread, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %.preheader25
  %.pre334 = load i64, i64* %1055, align 8
  br label %.lr.ph120

.loopexit24.loopexit:                             ; preds = %.loopexit23
  %.lcssa584 = phi i64 [ %1066, %.loopexit23 ]
  br label %.loopexit24

.loopexit24:                                      ; preds = %.lr.ph120, %.loopexit24.loopexit
  %1058 = phi i64 [ %1064, %.lr.ph120 ], [ %.lcssa584, %.loopexit24.loopexit ]
  %1059 = load i64, i64* @TOT_VERTICES, align 8
  %1060 = icmp ult i64 %1062, %1059
  br i1 %1060, label %.lr.ph120, label %.critedge8.thread.loopexit

.lr.ph120:                                        ; preds = %.loopexit24, %.lr.ph120.preheader
  %1061 = phi i64 [ %1058, %.loopexit24 ], [ %.pre334, %.lr.ph120.preheader ]
  %i.20119 = phi i64 [ %1062, %.loopexit24 ], [ 0, %.lr.ph120.preheader ]
  %1062 = add nuw nsw i64 %i.20119, 1
  %1063 = getelementptr inbounds i64, i64* %1055, i64 %1062
  %1064 = load i64, i64* %1063, align 8
  %1065 = icmp ult i64 %1061, %1064
  br i1 %1065, label %.lr.ph117.preheader, label %.loopexit24

.lr.ph117.preheader:                              ; preds = %.lr.ph120
  br label %.lr.ph117

.loopexit23.loopexit:                             ; preds = %1081
  %.lcssa = phi i64 [ %1082, %1081 ]
  br label %.loopexit23

.loopexit23:                                      ; preds = %.lr.ph117, %.loopexit23.loopexit
  %1066 = phi i64 [ %1068, %.lr.ph117 ], [ %.lcssa, %.loopexit23.loopexit ]
  %1067 = icmp ult i64 %1069, %1066
  br i1 %1067, label %.lr.ph117, label %.loopexit24.loopexit

.lr.ph117:                                        ; preds = %.loopexit23, %.lr.ph117.preheader
  %1068 = phi i64 [ %1066, %.loopexit23 ], [ %1064, %.lr.ph117.preheader ]
  %j40.0115 = phi i64 [ %1069, %.loopexit23 ], [ %1061, %.lr.ph117.preheader ]
  %1069 = add nsw i64 %j40.0115, 1
  %1070 = icmp ult i64 %1069, %1068
  br i1 %1070, label %.lr.ph114.preheader, label %.loopexit23

.lr.ph114.preheader:                              ; preds = %.lr.ph117
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %1081, %.lr.ph114.preheader
  %1071 = phi i64 [ %1082, %1081 ], [ %1068, %.lr.ph114.preheader ]
  %k41.0112 = phi i64 [ %1083, %1081 ], [ %1069, %.lr.ph114.preheader ]
  %1072 = load i64*, i64** %885, align 8
  %1073 = getelementptr inbounds i64, i64* %1072, i64 %k41.0112
  %1074 = load i64, i64* %1073, align 8
  %1075 = getelementptr inbounds i64, i64* %1072, i64 %j40.0115
  %1076 = load i64, i64* %1075, align 8
  %1077 = icmp ult i64 %1074, %1076
  br i1 %1077, label %1078, label %1081

; <label>:1078                                    ; preds = %.lr.ph114
  store i64 %1074, i64* %1075, align 8
  %1079 = load i64*, i64** %885, align 8
  %1080 = getelementptr inbounds i64, i64* %1079, i64 %k41.0112
  store i64 %1076, i64* %1080, align 8
  %.pre335 = load i64, i64* %1063, align 8
  br label %1081

; <label>:1081                                    ; preds = %1078, %.lr.ph114
  %1082 = phi i64 [ %1071, %.lr.ph114 ], [ %.pre335, %1078 ]
  %1083 = add nsw i64 %k41.0112, 1
  %1084 = icmp ult i64 %1083, %1082
  br i1 %1084, label %.lr.ph114, label %.loopexit23.loopexit

.critedge8.thread.loopexit:                       ; preds = %.loopexit24
  br label %.critedge8.thread

.critedge8.thread:                                ; preds = %.critedge8.thread.loopexit, %.preheader25
  %1085 = bitcast i64* %1055 to i8*
  call void @free(i8* %1085) #6
  call void @Prandom_free(%struct.random* nonnull %7) #6
  br label %1086

.critedge8.loopexit:                              ; preds = %.loopexit20.us
  br label %.critedge8

.critedge8.loopexit509:                           ; preds = %.outer.loopexit, %._crit_edge103
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit509, %.critedge8.loopexit, %.preheader22
  call void @Prandom_free(%struct.random* nonnull %7) #6
  br label %1086

; <label>:1086                                    ; preds = %.critedge8, %.critedge8.thread
  %1087 = bitcast i64* %20 to i8*
  call void @free(i8* %1087) #6
  br label %1088

.critedge9:                                       ; preds = %993
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  call void @Prandom_free(%struct.random* nonnull %7) #6
  br label %1088

.critedge11:                                      ; preds = %893
  call void @Prandom_free(%struct.random* nonnull %7) #6
  br label %1088

; <label>:1088                                    ; preds = %.critedge11, %.critedge9, %1086
  %1089 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %1090 = trunc i64 %1089 to i32
  %1091 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %1092 = load i32, i32* %1091, align 4
  call void @SimRoiEnd(i32 %1090, i32 %1092) #6
  ret void

; <label>:1093                                    ; preds = %.lr.ph99.us.1561
  store i64 %982, i64* %983, align 8
  %1094 = load i64*, i64** %885, align 8
  %1095 = getelementptr inbounds i64, i64* %1094, i64 %979
  store i64 %984, i64* %1095, align 8
  br label %1096

; <label>:1096                                    ; preds = %1093, %.lr.ph99.us.1561
  %1097 = add nsw i64 %k.097.us, 2
  %exitcond298.1 = icmp eq i64 %1097, %i1.1.us
  br i1 %exitcond298.1, label %.loopexit19.us.loopexit.unr-lcssa, label %.lr.ph99.us

; <label>:1098                                    ; preds = %.lr.ph106.us.1566
  store i64 %951, i64* %952, align 8
  %1099 = load i64*, i64** %885, align 8
  %1100 = getelementptr inbounds i64, i64* %1099, i64 %948
  store i64 %953, i64* %1100, align 8
  br label %1101

; <label>:1101                                    ; preds = %1098, %.lr.ph106.us.1566
  %1102 = add nsw i64 %k36.0104.us, 2
  %exitcond300.1 = icmp eq i64 %1102, %691
  br i1 %exitcond300.1, label %.loopexit.us.loopexit.unr-lcssa, label %.lr.ph106.us

; <label>:1103                                    ; preds = %757
  %1104 = sub nsw i64 0, %t26.1
  store i64 %1104, i64* %760, align 8
  %1105 = add nsw i64 %t26.1, 1
  br label %1106

; <label>:1106                                    ; preds = %1103, %757
  %t26.1.1 = phi i64 [ %1105, %1103 ], [ %t26.1, %757 ]
  %1107 = add nsw i64 %i.14146, 2
  %exitcond303.1 = icmp eq i64 %1107, %691
  br i1 %exitcond303.1, label %.outer32.preheader.loopexit.unr-lcssa, label %749
}

; Function Attrs: nounwind uwtable
define void @getStartLists(i8* nocapture readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #6
  %5 = bitcast i8* %argPtr to %struct.graph**
  %6 = load %struct.graph*, %struct.graph** %5, align 8
  %7 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %8 = bitcast i8* %7 to %struct.edge***
  %9 = load %struct.edge**, %struct.edge*** %8, align 8
  %10 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %11 = bitcast i8* %10 to i64**
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %14 = bitcast i8* %13 to %struct.edge***
  %15 = load %struct.edge**, %struct.edge*** %14, align 8
  %16 = getelementptr inbounds i8, i8* %argPtr, i64 32
  %17 = bitcast i8* %16 to i64**
  %18 = load i64*, i64** %17, align 8
  %19 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %20 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #6
  %21 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 1
  %22 = load i64, i64* %21, align 8
  call void @createPartition(i64 0, i64 %22, i64 %19, i64 %20, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %23 = load i64, i64* %i_start, align 8
  %24 = load i64, i64* %i_stop, align 8
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %.lr.ph67, label %.preheader6

.lr.ph67:                                         ; preds = %0
  %26 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 13
  %27 = load i64*, i64** %26, align 8
  %28 = sub i64 %24, %23
  %min.iters.check = icmp ult i64 %28, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %min.iters.checked

scalar.ph.preheader:                              ; preds = %middle.block, %min.iters.checked, %.lr.ph67
  %maxWeight.065.ph = phi i64 [ 0, %min.iters.checked ], [ 0, %.lr.ph67 ], [ %59, %middle.block ]
  %i.064.ph = phi i64 [ %23, %min.iters.checked ], [ %23, %.lr.ph67 ], [ %ind.end, %middle.block ]
  br label %scalar.ph

min.iters.checked:                                ; preds = %.lr.ph67
  %n.vec = and i64 %28, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = add i64 %23, %n.vec
  br i1 %cmp.zero, label %scalar.ph.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  %29 = sub i64 %24, %23
  %30 = add i64 %29, -4
  %31 = lshr i64 %30, 2
  %32 = and i64 %31, 1
  %lcmp.mod93 = icmp eq i64 %32, 0
  br i1 %lcmp.mod93, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %33 = getelementptr inbounds i64, i64* %27, i64 %23
  %34 = bitcast i64* %33 to <2 x i64>*
  %wide.load.prol = load <2 x i64>, <2 x i64>* %34, align 8
  %35 = getelementptr i64, i64* %33, i64 2
  %36 = bitcast i64* %35 to <2 x i64>*
  %wide.load82.prol = load <2 x i64>, <2 x i64>* %36, align 8
  %37 = icmp sgt <2 x i64> %wide.load.prol, zeroinitializer
  %38 = icmp sgt <2 x i64> %wide.load82.prol, zeroinitializer
  %39 = select <2 x i1> %37, <2 x i64> %wide.load.prol, <2 x i64> zeroinitializer
  %40 = select <2 x i1> %38, <2 x i64> %wide.load82.prol, <2 x i64> zeroinitializer
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %.lcssa89.unr = phi <2 x i64> [ undef, %vector.body.preheader ], [ %40, %vector.body.prol ]
  %.lcssa.unr = phi <2 x i64> [ undef, %vector.body.preheader ], [ %39, %vector.body.prol ]
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 4, %vector.body.prol ]
  %vec.phi.unr = phi <2 x i64> [ zeroinitializer, %vector.body.preheader ], [ %39, %vector.body.prol ]
  %vec.phi80.unr = phi <2 x i64> [ zeroinitializer, %vector.body.preheader ], [ %40, %vector.body.prol ]
  %41 = icmp eq i64 %31, 0
  br i1 %41, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <2 x i64> [ %vec.phi.unr, %vector.body.preheader.split.split ], [ %56, %vector.body ]
  %vec.phi80 = phi <2 x i64> [ %vec.phi80.unr, %vector.body.preheader.split.split ], [ %57, %vector.body ]
  %offset.idx = add i64 %23, %index
  %42 = getelementptr inbounds i64, i64* %27, i64 %offset.idx
  %43 = bitcast i64* %42 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %43, align 8
  %44 = getelementptr i64, i64* %42, i64 2
  %45 = bitcast i64* %44 to <2 x i64>*
  %wide.load82 = load <2 x i64>, <2 x i64>* %45, align 8
  %46 = icmp sgt <2 x i64> %wide.load, %vec.phi
  %47 = icmp sgt <2 x i64> %wide.load82, %vec.phi80
  %48 = select <2 x i1> %46, <2 x i64> %wide.load, <2 x i64> %vec.phi
  %49 = select <2 x i1> %47, <2 x i64> %wide.load82, <2 x i64> %vec.phi80
  %index.next = add i64 %index, 4
  %offset.idx.1 = add i64 %23, %index.next
  %50 = getelementptr inbounds i64, i64* %27, i64 %offset.idx.1
  %51 = bitcast i64* %50 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %51, align 8
  %52 = getelementptr i64, i64* %50, i64 2
  %53 = bitcast i64* %52 to <2 x i64>*
  %wide.load82.1 = load <2 x i64>, <2 x i64>* %53, align 8
  %54 = icmp sgt <2 x i64> %wide.load.1, %48
  %55 = icmp sgt <2 x i64> %wide.load82.1, %49
  %56 = select <2 x i1> %54, <2 x i64> %wide.load.1, <2 x i64> %48
  %57 = select <2 x i1> %55, <2 x i64> %wide.load82.1, <2 x i64> %49
  %index.next.1 = add i64 %index, 8
  %58 = icmp eq i64 %index.next.1, %n.vec
  br i1 %58, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !48

middle.block.unr-lcssa:                           ; preds = %vector.body
  %.lcssa97 = phi <2 x i64> [ %57, %vector.body ]
  %.lcssa96 = phi <2 x i64> [ %56, %vector.body ]
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.preheader.split
  %.lcssa89 = phi <2 x i64> [ %.lcssa89.unr, %vector.body.preheader.split ], [ %.lcssa97, %middle.block.unr-lcssa ]
  %.lcssa = phi <2 x i64> [ %.lcssa.unr, %vector.body.preheader.split ], [ %.lcssa96, %middle.block.unr-lcssa ]
  %rdx.minmax.cmp = icmp sgt <2 x i64> %.lcssa, %.lcssa89
  %rdx.minmax.select = select <2 x i1> %rdx.minmax.cmp, <2 x i64> %.lcssa, <2 x i64> %.lcssa89
  %rdx.shuf = shufflevector <2 x i64> %rdx.minmax.select, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %rdx.minmax.cmp85 = icmp sgt <2 x i64> %rdx.minmax.select, %rdx.shuf
  %rdx.minmax.cmp85.elt = extractelement <2 x i1> %rdx.minmax.cmp85, i32 0
  %rdx.minmax.select.elt = extractelement <2 x i64> %rdx.minmax.select, i32 0
  %rdx.shuf.elt = extractelement <2 x i64> %rdx.minmax.select, i32 1
  %59 = select i1 %rdx.minmax.cmp85.elt, i64 %rdx.minmax.select.elt, i64 %rdx.shuf.elt
  %cmp.n = icmp eq i64 %28, %n.vec
  br i1 %cmp.n, label %.preheader6, label %scalar.ph.preheader

.preheader6.loopexit:                             ; preds = %scalar.ph
  %.maxWeight.0.lcssa = phi i64 [ %.maxWeight.0, %scalar.ph ]
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.loopexit, %middle.block, %0
  %maxWeight.0.lcssa = phi i64 [ 0, %0 ], [ %59, %middle.block ], [ %.maxWeight.0.lcssa, %.preheader6.loopexit ]
  br label %.outer

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %maxWeight.065 = phi i64 [ %.maxWeight.0, %scalar.ph ], [ %maxWeight.065.ph, %scalar.ph.preheader ]
  %i.064 = phi i64 [ %63, %scalar.ph ], [ %i.064.ph, %scalar.ph.preheader ]
  %60 = getelementptr inbounds i64, i64* %27, i64 %i.064
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, %maxWeight.065
  %.maxWeight.0 = select i1 %62, i64 %61, i64 %maxWeight.065
  %63 = add nsw i64 %i.064, 1
  %64 = icmp slt i64 %63, %24
  br i1 %64, label %scalar.ph, label %.preheader6.loopexit, !llvm.loop !49

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %.lr.ph62
  call void @llvm.x86.sse2.pause() #6
  %65 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %._crit_edge63.loopexit, label %.lr.ph62

._crit_edge63.loopexit:                           ; preds = %.lr.ph62
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %.outer, %._crit_edge63.loopexit
  %67 = icmp slt i32 %tries.0.ph, 2
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %._crit_edge63
  %tries.0.ph.lcssa = phi i32 [ %tries.0.ph, %._crit_edge63 ]
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #6
  br label %80

; <label>:69                                      ; preds = %._crit_edge63
  %70 = add nsw i32 %tries.0.ph, -1
  %71 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #6, !srcloc !50
  %72 = trunc i64 %71 to i32
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %76, label %.outer

.outer:                                           ; preds = %69, %.preheader6
  %tries.0.ph = phi i32 [ 9, %.preheader6 ], [ %70, %69 ]
  %74 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %._crit_edge63, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %.outer
  br label %.lr.ph62

; <label>:76                                      ; preds = %69
  %tries.0.ph.lcssa94 = phi i32 [ %tries.0.ph, %69 ]
  %77 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %80, label %79

; <label>:79                                      ; preds = %76
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !51
  br label %80

; <label>:80                                      ; preds = %79, %76, %68
  %tries.0.ph95 = phi i32 [ %tries.0.ph.lcssa94, %76 ], [ %tries.0.ph.lcssa94, %79 ], [ %tries.0.ph.lcssa, %68 ]
  %81 = load i64, i64* @global_maxWeight, align 8
  %82 = icmp sgt i64 %maxWeight.0.lcssa, %81
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %80
  store i64 %maxWeight.0.lcssa, i64* @global_maxWeight, align 8
  br label %84

; <label>:84                                      ; preds = %83, %80
  %85 = icmp sgt i32 %tries.0.ph95, 1
  br i1 %85, label %86, label %87

; <label>:86                                      ; preds = %84
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #6, !srcloc !52
  br label %88

; <label>:87                                      ; preds = %84
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #6
  br label %88

; <label>:88                                      ; preds = %87, %86
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %89 = load i64, i64* @global_maxWeight, align 8
  %90 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = uitofp i64 %91 to double
  %93 = fmul double %92, 1.500000e+00
  %94 = load i64, i64* @MAX_INT_WEIGHT, align 8
  %95 = uitofp i64 %94 to double
  %96 = fdiv double %93, %95
  %97 = call double @ceil(double %96) #16
  %98 = fadd double %97, 5.000000e+00
  %99 = fptosi double %98 to i64
  %100 = mul i64 %99, 24
  %101 = call noalias i8* @malloc(i64 %100) #6
  %102 = bitcast i8* %101 to %struct.edge*
  %103 = load i64, i64* %i_start, align 8
  %104 = load i64, i64* %i_stop, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %88
  %106 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 13
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 9
  %109 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 2
  %110 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %111 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  %112 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 0
  br label %113

; <label>:113                                     ; preds = %146, %.lr.ph59
  %i_edgeCounter.057 = phi i64 [ 0, %.lr.ph59 ], [ %i_edgeCounter.1, %146 ]
  %i.156 = phi i64 [ %103, %.lr.ph59 ], [ %147, %146 ]
  %114 = getelementptr inbounds i64, i64* %107, i64 %i.156
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, %89
  br i1 %116, label %.preheader5, label %146

.preheader5:                                      ; preds = %113
  %117 = load i64, i64* %109, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %._crit_edge45, label %.lr.ph44

.lr.ph44:                                         ; preds = %.preheader5
  %119 = load i64*, i64** %108, align 8
  br label %120

; <label>:120                                     ; preds = %124, %.lr.ph44
  %j.043 = phi i64 [ 0, %.lr.ph44 ], [ %125, %124 ]
  %121 = getelementptr inbounds i64, i64* %119, i64 %j.043
  %122 = load i64, i64* %121, align 8
  %123 = icmp ugt i64 %122, %i.156
  br i1 %123, label %._crit_edge45.loopexit, label %124

; <label>:124                                     ; preds = %120
  %125 = add nuw nsw i64 %j.043, 1
  %126 = icmp ult i64 %125, %117
  br i1 %126, label %120, label %._crit_edge45.loopexit

._crit_edge45.loopexit:                           ; preds = %124, %120
  %j.0.lcssa.ph = phi i64 [ %j.043, %120 ], [ %125, %124 ]
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %._crit_edge45.loopexit, %.preheader5
  %j.0.lcssa = phi i64 [ 0, %.preheader5 ], [ %j.0.lcssa.ph, %._crit_edge45.loopexit ]
  %127 = add nsw i64 %j.0.lcssa, -1
  %128 = load i64*, i64** %110, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 %127
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %i_edgeCounter.057, i32 1
  store i64 %130, i64* %131, align 8
  %132 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %i_edgeCounter.057, i32 2
  store i64 %127, i64* %132, align 8
  %133 = load i64, i64* %112, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge45
  %135 = load i64*, i64** %111, align 8
  br label %136

; <label>:136                                     ; preds = %140, %.lr.ph51
  %t.049 = phi i64 [ 0, %.lr.ph51 ], [ %141, %140 ]
  %137 = getelementptr inbounds i64, i64* %135, i64 %t.049
  %138 = load i64, i64* %137, align 8
  %139 = icmp ugt i64 %138, %127
  br i1 %139, label %._crit_edge52.loopexit, label %140

; <label>:140                                     ; preds = %136
  %141 = add nuw nsw i64 %t.049, 1
  %142 = icmp ult i64 %141, %133
  br i1 %142, label %136, label %._crit_edge52.loopexit

._crit_edge52.loopexit:                           ; preds = %140, %136
  %t.0.lcssa.ph = phi i64 [ %t.049, %136 ], [ %141, %140 ]
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.loopexit, %._crit_edge45
  %t.0.lcssa = phi i64 [ 0, %._crit_edge45 ], [ %t.0.lcssa.ph, %._crit_edge52.loopexit ]
  %143 = add nsw i64 %t.0.lcssa, -1
  %144 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %i_edgeCounter.057, i32 0
  store i64 %143, i64* %144, align 8
  %145 = add nsw i64 %i_edgeCounter.057, 1
  br label %146

; <label>:146                                     ; preds = %._crit_edge52, %113
  %i_edgeCounter.1 = phi i64 [ %145, %._crit_edge52 ], [ %i_edgeCounter.057, %113 ]
  %147 = add nsw i64 %i.156, 1
  %148 = icmp slt i64 %147, %104
  br i1 %148, label %113, label %._crit_edge60.loopexit

._crit_edge60.loopexit:                           ; preds = %146
  %i_edgeCounter.1.lcssa = phi i64 [ %i_edgeCounter.1, %146 ]
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %._crit_edge60.loopexit, %88
  %i_edgeCounter.0.lcssa = phi i64 [ 0, %88 ], [ %i_edgeCounter.1.lcssa, %._crit_edge60.loopexit ]
  %149 = icmp eq i64 %19, 0
  br i1 %149, label %150, label %160

; <label>:150                                     ; preds = %._crit_edge60
  %151 = shl i64 %20, 3
  %152 = call noalias i8* @malloc(i64 %151) #6
  %153 = icmp eq i8* %152, null
  br i1 %153, label %154, label %155

; <label>:154                                     ; preds = %150
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.88, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.89, i64 0, i64 0), i32 181, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i64 0, i64 0)) #15
  unreachable

; <label>:155                                     ; preds = %150
  store i8* %152, i8** bitcast (i64** @global_i_edgeStartCounter.90 to i8**), align 8
  %156 = call noalias i8* @malloc(i64 %151) #6
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %159

; <label>:158                                     ; preds = %155
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.91, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.89, i64 0, i64 0), i32 184, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i64 0, i64 0)) #15
  unreachable

; <label>:159                                     ; preds = %155
  store i8* %156, i8** bitcast (i64** @global_i_edgeEndCounter.92 to i8**), align 8
  store i64 0, i64* %12, align 8
  br label %160

; <label>:160                                     ; preds = %159, %._crit_edge60
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %161 = load i64*, i64** @global_i_edgeStartCounter.90, align 8
  %162 = load i64*, i64** @global_i_edgeEndCounter.92, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 %19
  store i64 %i_edgeCounter.0.lcssa, i64* %163, align 8
  %164 = getelementptr inbounds i64, i64* %161, i64 %19
  store i64 0, i64* %164, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %149, label %.preheader4, label %.critedge

.preheader4:                                      ; preds = %160
  %165 = icmp sgt i64 %20, 1
  br i1 %165, label %.lr.ph41.preheader, label %.loopexit75

.lr.ph41.preheader:                               ; preds = %.preheader4
  %166 = and i64 %20, 1
  %lcmp.mod91 = icmp eq i64 %166, 0
  br i1 %lcmp.mod91, label %.lr.ph41.prol, label %.lr.ph41.preheader.split

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader
  %167 = load i64, i64* %162, align 8
  %168 = getelementptr inbounds i64, i64* %162, i64 1
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, %167
  store i64 %170, i64* %168, align 8
  %171 = getelementptr inbounds i64, i64* %161, i64 1
  store i64 %167, i64* %171, align 8
  br label %.lr.ph41.preheader.split

.lr.ph41.preheader.split:                         ; preds = %.lr.ph41.prol, %.lr.ph41.preheader
  %i.240.unr = phi i64 [ 1, %.lr.ph41.preheader ], [ 2, %.lr.ph41.prol ]
  %172 = icmp eq i64 %20, 2
  br i1 %172, label %.loopexit75.loopexit, label %.lr.ph41.preheader.split.split

.lr.ph41.preheader.split.split:                   ; preds = %.lr.ph41.preheader.split
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41, %.lr.ph41.preheader.split.split
  %i.240 = phi i64 [ %i.240.unr, %.lr.ph41.preheader.split.split ], [ %187, %.lr.ph41 ]
  %173 = add nsw i64 %i.240, -1
  %174 = getelementptr inbounds i64, i64* %162, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i64, i64* %162, i64 %i.240
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, %175
  store i64 %178, i64* %176, align 8
  %179 = getelementptr inbounds i64, i64* %161, i64 %i.240
  store i64 %175, i64* %179, align 8
  %180 = add nuw nsw i64 %i.240, 1
  %181 = getelementptr inbounds i64, i64* %162, i64 %i.240
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i64, i64* %162, i64 %180
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, %182
  store i64 %185, i64* %183, align 8
  %186 = getelementptr inbounds i64, i64* %161, i64 %180
  store i64 %182, i64* %186, align 8
  %187 = add nsw i64 %i.240, 2
  %exitcond71.1 = icmp eq i64 %187, %20
  br i1 %exitcond71.1, label %.loopexit75.loopexit.unr-lcssa, label %.lr.ph41

.loopexit75.loopexit.unr-lcssa:                   ; preds = %.lr.ph41
  br label %.loopexit75.loopexit

.loopexit75.loopexit:                             ; preds = %.loopexit75.loopexit.unr-lcssa, %.lr.ph41.preheader.split
  br label %.loopexit75

.loopexit75:                                      ; preds = %.loopexit75.loopexit, %.preheader4
  %188 = load i64, i64* %12, align 8
  %189 = add nsw i64 %188, %i_edgeCounter.0.lcssa
  store i64 %189, i64* %12, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %190 = bitcast %struct.edge** %9 to i8**
  %191 = load i8*, i8** %190, align 8
  call void @free(i8* %191) #6
  %192 = load i64, i64* %12, align 8
  %193 = mul i64 %192, 24
  %194 = call noalias i8* @malloc(i64 %193) #6
  %195 = icmp eq i8* %194, null
  br i1 %195, label %196, label %197

; <label>:196                                     ; preds = %.loopexit75
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.93, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.89, i64 0, i64 0), i32 216, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i64 0, i64 0)) #15
  unreachable

; <label>:197                                     ; preds = %.loopexit75
  store i8* %194, i8** bitcast (%struct.edge** @global_maxIntWtList to i8**), align 8
  br label %200

.critedge:                                        ; preds = %160
  %198 = load i64, i64* %12, align 8
  %199 = add nsw i64 %198, %i_edgeCounter.0.lcssa
  store i64 %199, i64* %12, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br label %200

; <label>:200                                     ; preds = %.critedge, %197
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %201 = load %struct.edge*, %struct.edge** @global_maxIntWtList, align 8
  %202 = load i64, i64* %164, align 8
  %203 = load i64, i64* %163, align 8
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %.lr.ph38.preheader, label %._crit_edge39

.lr.ph38.preheader:                               ; preds = %200
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38..lr.ph38_crit_edge, %.lr.ph38.preheader
  %205 = phi i64 [ %.pre, %.lr.ph38..lr.ph38_crit_edge ], [ %202, %.lr.ph38.preheader ]
  %i.336 = phi i64 [ %220, %.lr.ph38..lr.ph38_crit_edge ], [ %202, %.lr.ph38.preheader ]
  %206 = sub nsw i64 %i.336, %205
  %207 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %206, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.edge, %struct.edge* %201, i64 %i.336, i32 0
  store i64 %208, i64* %209, align 8
  %210 = load i64, i64* %164, align 8
  %211 = sub nsw i64 %i.336, %210
  %212 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %211, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.edge, %struct.edge* %201, i64 %i.336, i32 1
  store i64 %213, i64* %214, align 8
  %215 = load i64, i64* %164, align 8
  %216 = sub nsw i64 %i.336, %215
  %217 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %216, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.edge, %struct.edge* %201, i64 %i.336, i32 2
  store i64 %218, i64* %219, align 8
  %220 = add nsw i64 %i.336, 1
  %221 = load i64, i64* %163, align 8
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %.lr.ph38..lr.ph38_crit_edge, label %._crit_edge39.loopexit

.lr.ph38..lr.ph38_crit_edge:                      ; preds = %.lr.ph38
  %.pre = load i64, i64* %164, align 8
  br label %.lr.ph38

._crit_edge39.loopexit:                           ; preds = %.lr.ph38
  br label %._crit_edge39

._crit_edge39:                                    ; preds = %._crit_edge39.loopexit, %200
  br i1 %149, label %223, label %224

; <label>:223                                     ; preds = %._crit_edge39
  store %struct.edge* %201, %struct.edge** %9, align 8
  br label %224

; <label>:224                                     ; preds = %223, %._crit_edge39
  %225 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 5
  %226 = load i64, i64* %225, align 8
  call void @createPartition(i64 0, i64 %226, i64 %19, i64 %20, i64* nonnull %i_start, i64* nonnull %i_stop) #6
  %227 = load i64, i64* %i_start, align 8
  %228 = load i64, i64* %i_stop, align 8
  %229 = icmp slt i64 %227, %228
  br i1 %229, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %224
  %230 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 14
  %231 = load i8*, i8** %230, align 8
  %232 = load i64, i64* @MAX_STRLEN, align 8
  %233 = load i8*, i8** @SOUGHT_STRING, align 8
  %234 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 13
  %235 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 9
  %236 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 2
  %237 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %238 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  %239 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 0
  br label %240

; <label>:240                                     ; preds = %285, %.lr.ph33
  %i_edgeCounter.231 = phi i64 [ 0, %.lr.ph33 ], [ %i_edgeCounter.3, %285 ]
  %i.430 = phi i64 [ %227, %.lr.ph33 ], [ %286, %285 ]
  %241 = mul nsw i64 %232, %i.430
  %242 = getelementptr inbounds i8, i8* %231, i64 %241
  %243 = call i32 @strncmp(i8* %242, i8* %233, i64 %232) #17
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %.preheader3, label %285

.preheader3:                                      ; preds = %240
  %245 = load i64, i64* %21, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %.preheader, label %.lr.ph14

.lr.ph14:                                         ; preds = %.preheader3
  %247 = load i64*, i64** %234, align 8
  %248 = sub nsw i64 0, %i.430
  br label %252

.preheader.loopexit:                              ; preds = %256, %252
  %t1.0.lcssa.ph = phi i64 [ %t1.013, %252 ], [ %257, %256 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader3
  %t1.0.lcssa = phi i64 [ 0, %.preheader3 ], [ %t1.0.lcssa.ph, %.preheader.loopexit ]
  %249 = load i64, i64* %236, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %._crit_edge19, label %.lr.ph18

.lr.ph18:                                         ; preds = %.preheader
  %251 = load i64*, i64** %235, align 8
  br label %259

; <label>:252                                     ; preds = %256, %.lr.ph14
  %t1.013 = phi i64 [ 0, %.lr.ph14 ], [ %257, %256 ]
  %253 = getelementptr inbounds i64, i64* %247, i64 %t1.013
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %254, %248
  br i1 %255, label %.preheader.loopexit, label %256

; <label>:256                                     ; preds = %252
  %257 = add nuw nsw i64 %t1.013, 1
  %258 = icmp ult i64 %257, %245
  br i1 %258, label %252, label %.preheader.loopexit

; <label>:259                                     ; preds = %263, %.lr.ph18
  %j2.017 = phi i64 [ 0, %.lr.ph18 ], [ %264, %263 ]
  %260 = getelementptr inbounds i64, i64* %251, i64 %j2.017
  %261 = load i64, i64* %260, align 8
  %262 = icmp ugt i64 %261, %t1.0.lcssa
  br i1 %262, label %._crit_edge19.loopexit, label %263

; <label>:263                                     ; preds = %259
  %264 = add nuw nsw i64 %j2.017, 1
  %265 = icmp ult i64 %264, %249
  br i1 %265, label %259, label %._crit_edge19.loopexit

._crit_edge19.loopexit:                           ; preds = %263, %259
  %j2.0.lcssa.ph = phi i64 [ %j2.017, %259 ], [ %264, %263 ]
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %._crit_edge19.loopexit, %.preheader
  %j2.0.lcssa = phi i64 [ 0, %.preheader ], [ %j2.0.lcssa.ph, %._crit_edge19.loopexit ]
  %266 = add nsw i64 %j2.0.lcssa, -1
  %267 = load i64*, i64** %237, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 %266
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %i_edgeCounter.231, i32 1
  store i64 %269, i64* %270, align 8
  %271 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %i_edgeCounter.231, i32 2
  store i64 %266, i64* %271, align 8
  %272 = load i64, i64* %239, align 8
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %._crit_edge19
  %274 = load i64*, i64** %238, align 8
  br label %275

; <label>:275                                     ; preds = %279, %.lr.ph25
  %t1.123 = phi i64 [ 0, %.lr.ph25 ], [ %280, %279 ]
  %276 = getelementptr inbounds i64, i64* %274, i64 %t1.123
  %277 = load i64, i64* %276, align 8
  %278 = icmp ugt i64 %277, %266
  br i1 %278, label %._crit_edge26.loopexit, label %279

; <label>:279                                     ; preds = %275
  %280 = add nuw nsw i64 %t1.123, 1
  %281 = icmp ult i64 %280, %272
  br i1 %281, label %275, label %._crit_edge26.loopexit

._crit_edge26.loopexit:                           ; preds = %279, %275
  %t1.1.lcssa.ph = phi i64 [ %t1.123, %275 ], [ %280, %279 ]
  br label %._crit_edge26

._crit_edge26:                                    ; preds = %._crit_edge26.loopexit, %._crit_edge19
  %t1.1.lcssa = phi i64 [ 0, %._crit_edge19 ], [ %t1.1.lcssa.ph, %._crit_edge26.loopexit ]
  %282 = add nsw i64 %t1.1.lcssa, -1
  %283 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %i_edgeCounter.231, i32 0
  store i64 %282, i64* %283, align 8
  %284 = add nsw i64 %i_edgeCounter.231, 1
  br label %285

; <label>:285                                     ; preds = %._crit_edge26, %240
  %i_edgeCounter.3 = phi i64 [ %284, %._crit_edge26 ], [ %i_edgeCounter.231, %240 ]
  %286 = add nsw i64 %i.430, 1
  %287 = icmp slt i64 %286, %228
  br i1 %287, label %240, label %._crit_edge34.loopexit

._crit_edge34.loopexit:                           ; preds = %285
  %i_edgeCounter.3.lcssa = phi i64 [ %i_edgeCounter.3, %285 ]
  br label %._crit_edge34

._crit_edge34:                                    ; preds = %._crit_edge34.loopexit, %224
  %i_edgeCounter.2.lcssa = phi i64 [ 0, %224 ], [ %i_edgeCounter.3.lcssa, %._crit_edge34.loopexit ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  store i64 %i_edgeCounter.2.lcssa, i64* %163, align 8
  store i64 0, i64* %164, align 8
  br i1 %149, label %288, label %.critedge1

; <label>:288                                     ; preds = %._crit_edge34
  store i64 0, i64* %18, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %289 = icmp sgt i64 %20, 1
  br i1 %289, label %.lr.ph12.preheader, label %.loopexit

.lr.ph12.preheader:                               ; preds = %288
  %290 = and i64 %20, 1
  %lcmp.mod = icmp eq i64 %290, 0
  br i1 %lcmp.mod, label %.lr.ph12.prol, label %.lr.ph12.preheader.split

.lr.ph12.prol:                                    ; preds = %.lr.ph12.preheader
  %291 = load i64, i64* %162, align 8
  %292 = getelementptr inbounds i64, i64* %162, i64 1
  %293 = load i64, i64* %292, align 8
  %294 = add nsw i64 %293, %291
  store i64 %294, i64* %292, align 8
  %295 = getelementptr inbounds i64, i64* %161, i64 1
  store i64 %291, i64* %295, align 8
  br label %.lr.ph12.preheader.split

.lr.ph12.preheader.split:                         ; preds = %.lr.ph12.prol, %.lr.ph12.preheader
  %i.510.unr = phi i64 [ 1, %.lr.ph12.preheader ], [ 2, %.lr.ph12.prol ]
  %296 = icmp eq i64 %20, 2
  br i1 %296, label %.loopexit.loopexit, label %.lr.ph12.preheader.split.split

.lr.ph12.preheader.split.split:                   ; preds = %.lr.ph12.preheader.split
  br label %.lr.ph12

.lr.ph12:                                         ; preds = %.lr.ph12, %.lr.ph12.preheader.split.split
  %i.510 = phi i64 [ %i.510.unr, %.lr.ph12.preheader.split.split ], [ %311, %.lr.ph12 ]
  %297 = add nsw i64 %i.510, -1
  %298 = getelementptr inbounds i64, i64* %162, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds i64, i64* %162, i64 %i.510
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %301, %299
  store i64 %302, i64* %300, align 8
  %303 = getelementptr inbounds i64, i64* %161, i64 %i.510
  store i64 %299, i64* %303, align 8
  %304 = add nuw nsw i64 %i.510, 1
  %305 = getelementptr inbounds i64, i64* %162, i64 %i.510
  %306 = load i64, i64* %305, align 8
  %307 = getelementptr inbounds i64, i64* %162, i64 %304
  %308 = load i64, i64* %307, align 8
  %309 = add nsw i64 %308, %306
  store i64 %309, i64* %307, align 8
  %310 = getelementptr inbounds i64, i64* %161, i64 %304
  store i64 %306, i64* %310, align 8
  %311 = add nsw i64 %i.510, 2
  %exitcond.1 = icmp eq i64 %311, %20
  br i1 %exitcond.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph12

.critedge1:                                       ; preds = %._crit_edge34
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph12
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph12.preheader.split
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.critedge1, %288
  %312 = load i64, i64* %18, align 8
  %313 = add nsw i64 %312, %i_edgeCounter.2.lcssa
  store i64 %313, i64* %18, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %149, label %314, label %323

; <label>:314                                     ; preds = %.loopexit
  %315 = bitcast %struct.edge** %15 to i8**
  %316 = load i8*, i8** %315, align 8
  call void @free(i8* %316) #6
  %317 = load i64, i64* %18, align 8
  %318 = mul i64 %317, 24
  %319 = call noalias i8* @malloc(i64 %318) #6
  %320 = icmp eq i8* %319, null
  br i1 %320, label %321, label %322

; <label>:321                                     ; preds = %314
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.94, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.89, i64 0, i64 0), i32 302, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i64 0, i64 0)) #15
  unreachable

; <label>:322                                     ; preds = %314
  store i8* %319, i8** bitcast (%struct.edge** @global_soughtStrWtList to i8**), align 8
  br label %323

; <label>:323                                     ; preds = %322, %.loopexit
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  %324 = load %struct.edge*, %struct.edge** @global_soughtStrWtList, align 8
  %325 = load i64, i64* %164, align 8
  %326 = load i64, i64* %163, align 8
  %327 = icmp slt i64 %325, %326
  br i1 %327, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %323
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph..lr.ph_crit_edge, %.lr.ph.preheader
  %328 = phi i64 [ %.pre74, %.lr.ph..lr.ph_crit_edge ], [ %325, %.lr.ph.preheader ]
  %i.69 = phi i64 [ %343, %.lr.ph..lr.ph_crit_edge ], [ %325, %.lr.ph.preheader ]
  %329 = sub nsw i64 %i.69, %328
  %330 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %329, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds %struct.edge, %struct.edge* %324, i64 %i.69, i32 0
  store i64 %331, i64* %332, align 8
  %333 = load i64, i64* %164, align 8
  %334 = sub nsw i64 %i.69, %333
  %335 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %334, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds %struct.edge, %struct.edge* %324, i64 %i.69, i32 1
  store i64 %336, i64* %337, align 8
  %338 = load i64, i64* %164, align 8
  %339 = sub nsw i64 %i.69, %338
  %340 = getelementptr inbounds %struct.edge, %struct.edge* %102, i64 %339, i32 2
  %341 = load i64, i64* %340, align 8
  %342 = getelementptr inbounds %struct.edge, %struct.edge* %324, i64 %i.69, i32 2
  store i64 %341, i64* %342, align 8
  %343 = add nsw i64 %i.69, 1
  %344 = load i64, i64* %163, align 8
  %345 = icmp slt i64 %343, %344
  br i1 %345, label %.lr.ph..lr.ph_crit_edge, label %._crit_edge.loopexit

.lr.ph..lr.ph_crit_edge:                          ; preds = %.lr.ph
  %.pre74 = load i64, i64* %164, align 8
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %323
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #6
  br i1 %149, label %346, label %349

; <label>:346                                     ; preds = %._crit_edge
  store %struct.edge* %324, %struct.edge** %15, align 8
  %347 = bitcast i64* %161 to i8*
  call void @free(i8* %347) #6
  %348 = bitcast i64* %162 to i8*
  call void @free(i8* %348) #6
  br label %349

; <label>:349                                     ; preds = %346, %._crit_edge
  call void @free(i8* %101) #6
  %350 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %351 = trunc i64 %350 to i32
  %352 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %353 = load i32, i32* %352, align 4
  call void @SimRoiEnd(i32 %351, i32 %353) #6
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #9

; Function Attrs: nounwind uwtable
define void @getUserParameters(i64 %argc, i8** %argv) #0 {
  store i64 1, i64* @THREADS, align 8
  store i64 20, i64* @SCALE, align 8
  store i64 3, i64* @MAX_PARAL_EDGES, align 8
  store float 0x3FE3333340000000, float* @PERC_INT_WEIGHTS, align 4
  store float 0x3FB99999A0000000, float* @PROB_UNIDIRECTIONAL, align 4
  store float 5.000000e-01, float* @PROB_INTERCL_EDGES, align 4
  store i64 3, i64* @SUBGR_EDGE_LENGTH, align 8
  store i64 2, i64* @K3_DS, align 8
  store i32 0, i32* @opterr, align 4
  %1 = trunc i64 %argc to i32
  %2 = tail call i32 @getopt(i32 %1, i8** %argv, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.97, i64 0, i64 0)) #6
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %._crit_edge5.i, label %.lr.ph4.i.preheader

.lr.ph4.i.preheader:                              ; preds = %0
  br label %.lr.ph4.i

.lr.ph4.i:                                        ; preds = %.backedge.i, %.lr.ph4.i.preheader
  %4 = phi i32 [ %14, %.backedge.i ], [ %2, %.lr.ph4.i.preheader ]
  %5 = sext i32 %4 to i64
  switch i64 %5, label %37 [
    i64 105, label %6
    i64 107, label %10
    i64 108, label %17
    i64 112, label %20
    i64 115, label %23
    i64 116, label %26
    i64 117, label %29
    i64 119, label %33
  ]

; <label>:6                                       ; preds = %.lr.ph4.i
  %7 = load i8*, i8** @optarg, align 8
  %8 = tail call double @atof(i8* %7) #17
  %9 = fptrunc double %8 to float
  store float %9, float* @PROB_INTERCL_EDGES, align 4
  br label %.backedge.i

; <label>:10                                      ; preds = %.lr.ph4.i
  %11 = load i8*, i8** @optarg, align 8
  %12 = tail call i64 @atol(i8* %11) #17
  store i64 %12, i64* @K3_DS, align 8
  %13 = icmp ult i64 %12, 3
  br i1 %13, label %.backedge.i, label %16

.backedge.i:                                      ; preds = %37, %33, %29, %26, %23, %20, %17, %10, %6
  %14 = tail call i32 @getopt(i32 %1, i8** %argv, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.97, i64 0, i64 0)) #6
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %._crit_edge5.i.loopexit, label %.lr.ph4.i

; <label>:16                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2.98, i64 0, i64 0), i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.99, i64 0, i64 0), i32 115, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.parseArgs, i64 0, i64 0)) #15
  unreachable

; <label>:17                                      ; preds = %.lr.ph4.i
  %18 = load i8*, i8** @optarg, align 8
  %19 = tail call i64 @atol(i8* %18) #17
  store i64 %19, i64* @SUBGR_EDGE_LENGTH, align 8
  br label %.backedge.i

; <label>:20                                      ; preds = %.lr.ph4.i
  %21 = load i8*, i8** @optarg, align 8
  %22 = tail call i64 @atol(i8* %21) #17
  store i64 %22, i64* @MAX_PARAL_EDGES, align 8
  br label %.backedge.i

; <label>:23                                      ; preds = %.lr.ph4.i
  %24 = load i8*, i8** @optarg, align 8
  %25 = tail call i64 @atol(i8* %24) #17
  store i64 %25, i64* @SCALE, align 8
  br label %.backedge.i

; <label>:26                                      ; preds = %.lr.ph4.i
  %27 = load i8*, i8** @optarg, align 8
  %28 = tail call i64 @atol(i8* %27) #17
  store i64 %28, i64* @THREADS, align 8
  br label %.backedge.i

; <label>:29                                      ; preds = %.lr.ph4.i
  %30 = load i8*, i8** @optarg, align 8
  %31 = tail call double @atof(i8* %30) #17
  %32 = fptrunc double %31 to float
  store float %32, float* @PROB_UNIDIRECTIONAL, align 4
  br label %.backedge.i

; <label>:33                                      ; preds = %.lr.ph4.i
  %34 = load i8*, i8** @optarg, align 8
  %35 = tail call double @atof(i8* %34) #17
  %36 = fptrunc double %35 to float
  store float %36, float* @PERC_INT_WEIGHTS, align 4
  br label %.backedge.i

; <label>:37                                      ; preds = %.lr.ph4.i
  %38 = load i32, i32* @opterr, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @opterr, align 4
  br label %.backedge.i

._crit_edge5.i.loopexit:                          ; preds = %.backedge.i
  br label %._crit_edge5.i

._crit_edge5.i:                                   ; preds = %._crit_edge5.i.loopexit, %0
  %40 = load i32, i32* @optind, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %41, %argc
  br i1 %42, label %.lr.ph.i.preheader, label %._crit_edge5.._crit_edge_crit_edge.i

.lr.ph.i.preheader:                               ; preds = %._crit_edge5.i
  br label %.lr.ph.i

._crit_edge5.._crit_edge_crit_edge.i:             ; preds = %._crit_edge5.i
  %.pre.i = load i32, i32* @opterr, align 4
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %i.02.i = phi i64 [ %49, %.lr.ph.i ], [ %41, %.lr.ph.i.preheader ]
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = getelementptr inbounds i8*, i8** %argv, i64 %i.02.i
  %45 = load i8*, i8** %44, align 8
  %46 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4.100, i64 0, i64 0), i8* %45) #18
  %47 = load i32, i32* @opterr, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @opterr, align 4
  %49 = add nsw i64 %i.02.i, 1
  %exitcond.i = icmp eq i64 %49, %argc
  br i1 %exitcond.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.lcssa = phi i32 [ %48, %.lr.ph.i ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %._crit_edge5.._crit_edge_crit_edge.i
  %50 = phi i32 [ %.pre.i, %._crit_edge5.._crit_edge_crit_edge.i ], [ %.lcssa, %._crit_edge.i.loopexit ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %parseArgs.exit, label %52

; <label>:52                                      ; preds = %._crit_edge.i
  %53 = load i8*, i8** %argv, align 8
  %54 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.101, i64 0, i64 0), i8* %53) #6
  %55 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6.102, i64 0, i64 0)) #6
  %56 = load float, float* @PROB_INTERCL_EDGES, align 4
  %57 = fpext float %56 to double
  %58 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7.103, i64 0, i64 0), double %57) #6
  %59 = load i64, i64* @K3_DS, align 8
  %60 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8.104, i64 0, i64 0), i64 %59) #6
  %61 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %62 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9.105, i64 0, i64 0), i64 %61) #6
  %63 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %64 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10.106, i64 0, i64 0), i64 %63) #6
  %65 = load i64, i64* @SCALE, align 8
  %66 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11.107, i64 0, i64 0), i64 %65) #6
  %67 = load i64, i64* @THREADS, align 8
  %68 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12.108, i64 0, i64 0), i64 %67) #6
  %69 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %70 = fpext float %69 to double
  %71 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13.109, i64 0, i64 0), double %70) #6
  %72 = load float, float* @PERC_INT_WEIGHTS, align 4
  %73 = fpext float %72 to double
  %74 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14.110, i64 0, i64 0), double %73) #6
  tail call void @profiler_print_stats() #6
  tail call void @exit(i32 1) #15
  unreachable

parseArgs.exit:                                   ; preds = %._crit_edge.i
  %75 = load i64, i64* @SCALE, align 8
  %76 = trunc i64 %75 to i32
  %77 = shl i32 1, %76
  %78 = sext i32 %77 to i64
  store i64 %78, i64* @TOT_VERTICES, align 8
  %79 = sdiv i64 %75, 3
  %80 = trunc i64 %79 to i32
  %81 = shl i32 1, %80
  %82 = sext i32 %81 to i64
  store i64 %82, i64* @MAX_CLIQUE_SIZE, align 8
  store i64 %78, i64* @MAX_INT_WEIGHT, align 8
  store i64 %75, i64* @MAX_STRLEN, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), i8** @SOUGHT_STRING, align 8
  store i64 %82, i64* @MAX_CLUSTER_SIZE, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #4

; Function Attrs: nounwind readonly
declare double @atof(i8* nocapture) #9

; Function Attrs: nounwind readonly
declare i64 @atol(i8* nocapture) #9

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #4

declare void @profiler_print_stats()

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @init_genrand(i64* %mt, i64* %mtiPtr, i64 %s) #10 {
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
define void @init_by_array(i64* %mt, i64* %mtiPtr, i64* %init_key, i64 %key_length) #10 {
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
define i64 @genrand_int32(i64* %mt, i64* %mtiPtr) #10 {
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
define i64 @genrand_int31(i64* %mt, i64* %mtiPtr) #10 {
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
define double @genrand_real1(i64* %mt, i64* %mtiPtr) #10 {
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
define double @genrand_real2(i64* %mt, i64* %mtiPtr) #10 {
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
define double @genrand_real3(i64* %mt, i64* %mtiPtr) #10 {
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
define double @genrand_res53(i64* %mt, i64* %mtiPtr) #10 {
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
define %struct.random* @random_alloc() #10 {
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
define %struct.random* @Prandom_alloc() #10 {
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
define void @random_free(%struct.random* %randomPtr) #10 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @Prandom_free(%struct.random* %randomPtr) #10 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @random_seed(%struct.random* %randomPtr, i64 %seed) #10 {
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
define i64 @random_generate(%struct.random* %randomPtr) #10 {
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
define void @RTM_output_stats() #10 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.158, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.158, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #15
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
  %14 = call i64 @lseek(i32 %10, i64 %13, i32 0) #6
  store i64 %14, i64* %offset, align 8
  %15 = load i64, i64* %offset, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %9
  br label %20

; <label>:18                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.159, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 189, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.158, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #15
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
define void @RTM_init_perfcounters() #10 {
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
define void @RTM_update_perfcounters(i32 %i) #10 {
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
  call void @llvm.x86.sse2.pause() #6
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
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !53
  %1 = load i64*, i64** @RTM_fallBackLock, align 8
  store volatile i64 0, i64* %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @update_reasons(i32 %status, i32 %i) #10 {
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
define i64 @determineNumProcs() #10 {
  %bitmask = alloca i64, align 8
  %num_procs = alloca i32, align 4
  %err = alloca i32, align 4
  %available_procs = alloca %struct.cpu_set_t, align 8
  %1 = call i64 @pthread_self() #16
  %2 = call i32 @pthread_getaffinity_np(i64 %1, i64 128, %struct.cpu_set_t* %available_procs) #6
  store i32 %2, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.168, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.determineNumProcs, i32 0, i32 0)) #15
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
define void @thread_startup(i64 %numThread) #10 {
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
  %3 = call i64 @pthread_self() #16
  %4 = call i32 @pthread_getaffinity_np(i64 %3, i64 128, %struct.cpu_set_t* %available_procs) #6
  store i32 %4, i32* %err, align 4
  %5 = load i32, i32* %err, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.168, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.171, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 463, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.174, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 465, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7.175, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8.176, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 486, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9.177, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 492, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10.178, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 494, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
define %struct.thread_barrier* @thread_barrier_alloc(i64 %numThread) #10 {
  %1 = alloca i64, align 8
  %barrierPtr = alloca %struct.thread_barrier*, align 8
  store i64 %numThread, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %7

; <label>:5                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.172, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 570, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12.173, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.157, i32 0, i32 0), i32 571, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #15
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
define void @thread_barrier_init(%struct.thread_barrier* %barrierPtr) #10 {
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
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #12

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_mutexattr_t*) #12

; Function Attrs: nounwind
declare i32 @pthread_key_create(i32*, void (i8*)*) #12

; Function Attrs: nounwind
declare i32 @pthread_attr_init(%union.pthread_attr_t*) #12

; Function Attrs: nounwind uwtable
define internal void @threadWait(i8* %argPtr) #10 {
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
declare i32 @pthread_setspecific(i32, i8*) #12

; Function Attrs: nounwind uwtable
define void @thread_barrier(%struct.thread_barrier* %barrierPtr, i64 %threadId) #10 {
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
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #12

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #13

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #12

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(%union.pthread_cond_t*) #12

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #12

; Function Attrs: nounwind uwtable
define void @thread_start(void (i8*)* %funcPtr, i8* %argPtr) #10 {
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
define void @thread_shutdown() #10 {
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

declare i32 @pthread_join(i64, i8**) #13

; Function Attrs: nounwind uwtable
define void @thread_barrier_free(%struct.thread_barrier* %barrierPtr) #10 {
  %1 = alloca %struct.thread_barrier*, align 8
  store %struct.thread_barrier* %barrierPtr, %struct.thread_barrier** %1, align 8
  %2 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %3 = bitcast %struct.thread_barrier* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @thread_getId() #10 {
  %1 = load i32, i32* @global_threadId, align 4
  %2 = call i8* @pthread_getspecific(i32 %1) #6
  %3 = ptrtoint i8* %2 to i64
  ret i64 %3
}

; Function Attrs: nounwind
declare i8* @pthread_getspecific(i32) #12

; Function Attrs: nounwind uwtable
define i64 @thread_getNumThread() #10 {
  %1 = load i64, i64* @global_numThread, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define void @thread_barrier_wait() #10 {
  %threadId = alloca i64, align 8
  %1 = call i64 @thread_getId()
  store i64 %1, i64* %threadId, align 8
  %2 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  %3 = load i64, i64* %threadId, align 8
  call void @thread_barrier(%struct.thread_barrier* %2, i64 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @memory_init(i64 %numThread, i64 %initBlockCapacity, i64 %blockGrowthFactor) #10 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.memory_init, i32 0, i32 0)) #15
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
define internal %struct.pool* @allocPool(i64 %initBlockCapacity, i64 %blockGrowthFactor) #10 {
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
define internal %struct.block* @allocBlock(i64 %capacity) #10 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.191, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.allocBlock, i32 0, i32 0)) #15
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
define void @memory_destroy() #10 {
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
define internal void @freePool(%struct.pool* %poolPtr) #10 {
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
define internal void @freeBlocks(%struct.block* %blockPtr) #10 {
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
define internal void @freeBlock(%struct.block* %blockPtr) #10 {
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
define i8* @memory_get(i64 %threadId, i64 %numByte) #10 {
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
define internal i8* @getMemoryFromPool(%struct.pool* %poolPtr, i64 %numByte) #10 {
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
define internal %struct.block* @addBlockToPool(%struct.pool* %poolPtr, i64 %numByte) #10 {
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
define internal i8* @getMemoryFromBlock(%struct.block* %blockPtr, i64 %numByte) #10 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.192, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.190, i32 0, i32 0), i32 304, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getMemoryFromBlock, i32 0, i32 0)) #15
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
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }
attributes #18 = { cold nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145956738, i32 -2145956702, i32 -2145956678}
!2 = !{i32 -2145962469, i32 -2145962433, i32 -2145962409}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.unroll.disable"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.vectorize.width", i32 1}
!9 = !{!"llvm.loop.interleave.count", i32 1}
!10 = distinct !{!10, !11, !8, !9}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{i32 1436342, i32 1436358, i32 1436394, i32 1436430, i32 1436466}
!13 = !{i32 1436943, i32 1436958, i32 1436992}
!14 = !{i32 1436714, i32 1436729, i32 1436757}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !8, !9}
!17 = distinct !{!17, !11, !8, !9}
!18 = distinct !{!18, !8, !9}
!19 = distinct !{!19, !11, !8, !9}
!20 = !{i32 1445680, i32 1445696, i32 1445732, i32 1445768, i32 1445804}
!21 = !{i32 1446281, i32 1446296, i32 1446330}
!22 = !{i32 1446052, i32 1446067, i32 1446095}
!23 = distinct !{!23, !8, !9}
!24 = distinct !{!24, !11, !8, !9}
!25 = distinct !{!25, !8, !9}
!26 = distinct !{!26, !11, !8, !9}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !8, !9}
!29 = distinct !{!29, !11, !8, !9}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !8, !9}
!32 = distinct !{!32, !11, !8, !9}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !8, !9}
!35 = distinct !{!35, !11, !8, !9}
!36 = !{i32 1724256, i32 1724272, i32 1724308, i32 1724344, i32 1724380}
!37 = !{i32 1724857, i32 1724872, i32 1724906}
!38 = !{i32 1724628, i32 1724643, i32 1724671}
!39 = distinct !{!39, !4}
!40 = distinct !{!40, !8, !9}
!41 = distinct !{!41, !11, !8, !9}
!42 = distinct !{!42, !4}
!43 = distinct !{!43, !8, !9}
!44 = distinct !{!44, !11, !8, !9}
!45 = distinct !{!45, !4}
!46 = distinct !{!46, !8, !9}
!47 = distinct !{!47, !11, !8, !9}
!48 = distinct !{!48, !8, !9}
!49 = distinct !{!49, !11, !8, !9}
!50 = !{i32 1667257, i32 1667273, i32 1667309, i32 1667345, i32 1667381}
!51 = !{i32 1667858, i32 1667873, i32 1667907}
!52 = !{i32 1667629, i32 1667644, i32 1667672}
!53 = !{i32 11658}
