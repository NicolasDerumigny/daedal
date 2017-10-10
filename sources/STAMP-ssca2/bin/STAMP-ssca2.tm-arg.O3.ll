; ModuleID = '../bin/STAMP-ssca2.tm-arg.ll'
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
%struct.graph = type { i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i8* }
%struct.graphSDG = type { i64*, i64*, i64*, i8*, i64 }
%struct.V = type { i64, i64 }
%struct.l = type { i64, i16, %struct.l* }
%struct.Vd = type { i64, i64*, %struct.V** }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.computeGragh_arg = type { %struct.graph*, %struct.graphSDG* }
%struct.timezone = type { i32, i32 }
%struct.cpu_set_t = type { [16 x i64] }
%union.pthread_mutexattr_t = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"myHisto\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"alg_radix_smp.c\00", align 1
@__PRETTY_FUNCTION__.all_countsort_node = private unnamed_addr constant [82 x i8] c"void all_countsort_node(long, unsigned long *, unsigned long *, long, long, long)\00", align 1
@global_myHisto = internal unnamed_addr global i64* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"psHisto\00", align 1
@global_psHisto = internal unnamed_addr global i64* null, align 8
@__PRETTY_FUNCTION__.all_countsort_node_aux_seq = private unnamed_addr constant [124 x i8] c"void all_countsort_node_aux_seq(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *, long, long, long)\00", align 1
@__PRETTY_FUNCTION__.all_countsort_node_aux = private unnamed_addr constant [120 x i8] c"void all_countsort_node_aux(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *, long, long, long)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"lTemp\00", align 1
@__PRETTY_FUNCTION__.all_radixsort_node_s3 = private unnamed_addr constant [67 x i8] c"void all_radixsort_node_s3(long, unsigned long *, unsigned long *)\00", align 1
@global_lTemp = internal unnamed_addr global i64* null, align 8
@__PRETTY_FUNCTION__.all_radixsort_node_s2 = private unnamed_addr constant [67 x i8] c"void all_radixsort_node_s2(long, unsigned long *, unsigned long *)\00", align 1
@__PRETTY_FUNCTION__.all_radixsort_node_aux_s3_seq = private unnamed_addr constant [109 x i8] c"void all_radixsort_node_aux_s3_seq(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"lTemp2\00", align 1
@__PRETTY_FUNCTION__.all_radixsort_node_aux_s3 = private unnamed_addr constant [105 x i8] c"void all_radixsort_node_aux_s3(long, unsigned long *, unsigned long *, unsigned long *, unsigned long *)\00", align 1
@global_lTemp2 = internal unnamed_addr global i64* null, align 8
@global_maxNumVertices = internal unnamed_addr global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"GPtr->outDegree\00", align 1
@.str.1.6 = private unnamed_addr constant [15 x i8] c"computeGraph.c\00", align 1
@__PRETTY_FUNCTION__.computeGraph = private unnamed_addr constant [26 x i8] c"void computeGraph(void *)\00", align 1
@.str.2.7 = private unnamed_addr constant [21 x i8] c"GPtr->outVertexIndex\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@__PRETTY_FUNCTION__.prefix_sums = private unnamed_addr constant [56 x i8] c"void prefix_sums(ULONGINT_T *, LONGINT_T *, ULONGINT_T)\00", align 1
@global_p = internal unnamed_addr global i64* null, align 8
@global_outVertexListSize = internal unnamed_addr global i64 0, align 8
@.str.3.8 = private unnamed_addr constant [20 x i8] c"GPtr->outVertexList\00", align 1
@.str.4.9 = private unnamed_addr constant [21 x i8] c"GPtr->paralEdgeIndex\00", align 1
@.str.5.10 = private unnamed_addr constant [15 x i8] c"GPtr->inDegree\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"GPtr->inVertexIndex\00", align 1
@global_impliedEdgeList = internal unnamed_addr global i64* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"auxArr\00", align 1
@global_auxArr = internal unnamed_addr global i64** null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.1.14 = private unnamed_addr constant [14 x i8] c"cutClusters.c\00", align 1
@__PRETTY_FUNCTION__.cutClusters = private unnamed_addr constant [25 x i8] c"void cutClusters(void *)\00", align 1
@global_Index = internal unnamed_addr global i64* null, align 8
@.str.2.15 = private unnamed_addr constant [15 x i8] c"neighbourArray\00", align 1
@global_neighbourArray = internal unnamed_addr global i64* null, align 8
@.str.3.16 = private unnamed_addr constant [12 x i8] c"IndexSorted\00", align 1
@global_IndexSorted = internal unnamed_addr global i64* null, align 8
@.str.4.17 = private unnamed_addr constant [21 x i8] c"neighbourArraySorted\00", align 1
@global_neighbourArraySorted = internal unnamed_addr global i64* null, align 8
@.str.5.18 = private unnamed_addr constant [8 x i8] c"vStatus\00", align 1
@global_vStatus = internal unnamed_addr global i64* null, align 8
@.str.6.19 = private unnamed_addr constant [8 x i8] c"pCutSet\00", align 1
@global_pCutSet = internal unnamed_addr global %struct.edge* null, align 8
@.str.7.20 = private unnamed_addr constant [7 x i8] c"startV\00", align 1
@global_startV = internal unnamed_addr global i64* null, align 8
@.str.8.21 = private unnamed_addr constant [12 x i8] c"clusterSize\00", align 1
@global_clusterSize = internal unnamed_addr global i64* null, align 8
@global_cliqueSize = internal unnamed_addr global i64 0, align 8
@global_iter = internal unnamed_addr global i64 0, align 8
@.str.9.22 = private unnamed_addr constant [17 x i8] c"edgeStartCounter\00", align 1
@global_edgeStartCounter = internal unnamed_addr global i64* null, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"edgeEndCounter\00", align 1
@global_edgeEndCounter = internal unnamed_addr global i64* null, align 8
@global_cutSetIndex = internal unnamed_addr global i64 0, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"cutSet\00", align 1
@global_cutSet = internal unnamed_addr global %struct.edge* null, align 8
@.str.23 = private unnamed_addr constant [8 x i8] c"visited\00", align 1
@.str.1.24 = private unnamed_addr constant [16 x i8] c"findSubGraphs.c\00", align 1
@__PRETTY_FUNCTION__.findSubGraphs0 = private unnamed_addr constant [28 x i8] c"void findSubGraphs0(void *)\00", align 1
@__PRETTY_FUNCTION__.findSubGraphs1 = private unnamed_addr constant [28 x i8] c"void findSubGraphs1(void *)\00", align 1
@.str.2.25 = private unnamed_addr constant [15 x i8] c"intWtVLList[i]\00", align 1
@.str.3.26 = private unnamed_addr constant [12 x i8] c"currV->next\00", align 1
@.str.4.27 = private unnamed_addr constant [15 x i8] c"strWtVLList[t]\00", align 1
@.str.5.28 = private unnamed_addr constant [23 x i8] c"(strWtVLList[t])->next\00", align 1
@.str.6.29 = private unnamed_addr constant [25 x i8] c"intWtVDList[i].arraySize\00", align 1
@__PRETTY_FUNCTION__.findSubGraphs2 = private unnamed_addr constant [28 x i8] c"void findSubGraphs2(void *)\00", align 1
@.str.7.30 = private unnamed_addr constant [21 x i8] c"intWtVDList[i].vList\00", align 1
@.str.8.31 = private unnamed_addr constant [24 x i8] c"intWtVDList[i].vList[0]\00", align 1
@.str.9.32 = private unnamed_addr constant [25 x i8] c"strWtVDList[t].arraySize\00", align 1
@.str.10.33 = private unnamed_addr constant [21 x i8] c"strWtVDList[t].vList\00", align 1
@.str.11.34 = private unnamed_addr constant [24 x i8] c"strWtVDList[t].vList[0]\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"intWtVDList[i].vList[intWtVDList[i].numArrays-1]\00", align 1
@.str.13.35 = private unnamed_addr constant [49 x i8] c"strWtVDList[t].vList[strWtVDList[t].numArrays-1]\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.1.37 = private unnamed_addr constant [14 x i8] c"genScalData.c\00", align 1
@__PRETTY_FUNCTION__.genScalData_seq = private unnamed_addr constant [33 x i8] c"void genScalData_seq(graphSDG *)\00", align 1
@.str.2.38 = private unnamed_addr constant [6 x i8] c"permV\00", align 1
@.str.3.39 = private unnamed_addr constant [12 x i8] c"cliqueSizes\00", align 1
@.str.4.40 = private unnamed_addr constant [16 x i8] c"lastVsInCliques\00", align 1
@.str.5.41 = private unnamed_addr constant [17 x i8] c"firstVsInCliques\00", align 1
@.str.6.42 = private unnamed_addr constant [7 x i8] c"startV\00", align 1
@.str.7.43 = private unnamed_addr constant [5 x i8] c"endV\00", align 1
@.str.8.44 = private unnamed_addr constant [15 x i8] c"tmpEdgeCounter\00", align 1
@.str.9.45 = private unnamed_addr constant [18 x i8] c"tmpEdgeCounter[i]\00", align 1
@.str.10.46 = private unnamed_addr constant [12 x i8] c"startVertex\00", align 1
@.str.11.47 = private unnamed_addr constant [10 x i8] c"endVertex\00", align 1
@str.1 = private unnamed_addr constant [26 x i8] c"Finished generating edges\00"
@.str.13.48 = private unnamed_addr constant [33 x i8] c"No. of intra-clique edges - %lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"No. of inter-clique edges - %lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Total no. of edges        - %lu\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"SDGdataPtr->intWeight\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"SDGdataPtr->strWeight\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"SOUGHT_STRING\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"SDGdataPtr->startVertex\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"SDGdataPtr->endVertex\00", align 1
@__PRETTY_FUNCTION__.genScalData = private unnamed_addr constant [25 x i8] c"void genScalData(void *)\00", align 1
@global_permV = internal unnamed_addr global i64* null, align 8
@global_cliqueSizes = internal unnamed_addr global i64* null, align 8
@global_lastVsInCliques = internal unnamed_addr global i64* null, align 8
@global_firstVsInCliques = internal unnamed_addr global i64* null, align 8
@global_totCliques = internal unnamed_addr global i64 0, align 8
@.str.21 = private unnamed_addr constant [19 x i8] c"i_edgeStartCounter\00", align 1
@global_i_edgeStartCounter = internal unnamed_addr global i64* null, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"i_edgeEndCounter\00", align 1
@global_i_edgeEndCounter = internal unnamed_addr global i64* null, align 8
@global_edgeNum = internal unnamed_addr global i64 0, align 8
@global_startVertex = internal unnamed_addr global i64* null, align 8
@global_endVertex = internal unnamed_addr global i64* null, align 8
@global_numStrWtEdges = internal unnamed_addr global i64 0, align 8
@.str.23.49 = private unnamed_addr constant [10 x i8] c"tempIndex\00", align 1
@global_tempIndex = internal unnamed_addr global i64* null, align 8
@global_maxWeight = internal unnamed_addr global i64 0, align 8
@.str.50 = private unnamed_addr constant [19 x i8] c"i_edgeStartCounter\00", align 1
@.str.1.51 = private unnamed_addr constant [16 x i8] c"getStartLists.c\00", align 1
@__PRETTY_FUNCTION__.getStartLists = private unnamed_addr constant [27 x i8] c"void getStartLists(void *)\00", align 1
@global_i_edgeStartCounter.52 = internal unnamed_addr global i64* null, align 8
@.str.2.53 = private unnamed_addr constant [17 x i8] c"i_edgeEndCounter\00", align 1
@global_i_edgeEndCounter.54 = internal unnamed_addr global i64* null, align 8
@.str.3.55 = private unnamed_addr constant [13 x i8] c"maxIntWtList\00", align 1
@global_maxIntWtList = internal unnamed_addr global %struct.edge* null, align 8
@.str.4.56 = private unnamed_addr constant [16 x i8] c"soughtStrWtList\00", align 1
@global_soughtStrWtList = internal unnamed_addr global %struct.edge* null, align 8
@opterr = external global i32, align 4
@.str.1.57 = private unnamed_addr constant [17 x i8] c"i:k:l:p:s:t:u:w:\00", align 1
@optarg = external global i8*, align 8
@.str.2.58 = private unnamed_addr constant [25 x i8] c"K3_DS >= 0 && K3_DS <= 2\00", align 1
@.str.3.59 = private unnamed_addr constant [20 x i8] c"getUserParameters.c\00", align 1
@__PRETTY_FUNCTION__.parseArgs = private unnamed_addr constant [36 x i8] c"void parseArgs(long, char *const *)\00", align 1
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.4.60 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.5.61 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.6.62 = private unnamed_addr constant [60 x i8] c"\0AOptions:                                       (defaults)\0A\00", align 1
@.str.7.63 = private unnamed_addr constant [53 x i8] c"    i <FLT>    Probability [i]nter-clique      (%f)\0A\00", align 1
@.str.8.64 = private unnamed_addr constant [54 x i8] c"    k <UINT>   [k]ind: 0=array 1=list 2=vector (%li)\0A\00", align 1
@.str.9.65 = private unnamed_addr constant [54 x i8] c"    l <UINT>   Max path [l]ength               (%li)\0A\00", align 1
@.str.10.66 = private unnamed_addr constant [54 x i8] c"    p <UINT>   Max [p]arallel edges            (%li)\0A\00", align 1
@.str.11.67 = private unnamed_addr constant [54 x i8] c"    s <UINT>   Problem [s]cale                 (%li)\0A\00", align 1
@.str.12.68 = private unnamed_addr constant [54 x i8] c"    t <UINT>   Number of [t]hreads             (%li)\0A\00", align 1
@.str.13.69 = private unnamed_addr constant [53 x i8] c"    u <FLT>    Probability [u]nidirectional    (%f)\0A\00", align 1
@.str.14.70 = private unnamed_addr constant [53 x i8] c"    w <FLT>    Fraction integer [w]eights      (%f)\0A\00", align 1
@.str.71 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
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
@.str.100 = private unnamed_addr constant [55 x i8] c"\0AHPCS SSCA #2 Graph Analysis Executable Specification:\00", align 1
@str = private unnamed_addr constant [13 x i8] c"\0ARunning...\0A\00"
@.str.3.101 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@.str.4.102 = private unnamed_addr constant [8 x i8] c"ssca2.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.5.103 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.7.104 = private unnamed_addr constant [33 x i8] c"Number of processors:       %ld\0A\00", align 1
@.str.8.105 = private unnamed_addr constant [33 x i8] c"Problem Scale:              %ld\0A\00", align 1
@.str.9.106 = private unnamed_addr constant [33 x i8] c"Max parallel edges:         %ld\0A\00", align 1
@.str.10.107 = private unnamed_addr constant [32 x i8] c"Percent int weights:        %f\0A\00", align 1
@.str.11.108 = private unnamed_addr constant [32 x i8] c"Probability unidirectional: %f\0A\00", align 1
@.str.12.109 = private unnamed_addr constant [32 x i8] c"Probability inter-clique:   %f\0A\00", align 1
@.str.13.110 = private unnamed_addr constant [33 x i8] c"Subgraph edge length:       %ld\0A\00", align 1
@.str.14.111 = private unnamed_addr constant [33 x i8] c"Kernel 3 data structure:    %ld\0A\00", align 1
@str.1.112 = private unnamed_addr constant [64 x i8] c"\0AScalable Data Generator - genScalData() beginning execution...\00"
@.str.16.113 = private unnamed_addr constant [8 x i8] c"SDGdata\00", align 1
@.str.17.114 = private unnamed_addr constant [57 x i8] c"\0ATime taken for Scalable Data Generation is %9.6f sec.\0A\0A\00", align 1
@str.2 = private unnamed_addr constant [37 x i8] c"\0A\09genScalData() completed execution.\00"
@str.3 = private unnamed_addr constant [50 x i8] c"\0AKernel 1 - computeGraph() beginning execution...\00"
@.str.20.115 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@str.4 = private unnamed_addr constant [38 x i8] c"\0A\09computeGraph() completed execution.\00"
@.str.22.116 = private unnamed_addr constant [40 x i8] c"\0ATime taken for kernel 1 is %9.6f sec.\0A\00", align 1
@.str.23.117 = private unnamed_addr constant [36 x i8] c"\0ATime taken for all is %9.6f sec.\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
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
@.str.134 = private unnamed_addr constant [11 x i8] c"offset > 0\00", align 1
@.str.1.135 = private unnamed_addr constant [9 x i8] c"thread.c\00", align 1
@__PRETTY_FUNCTION__.init_one_perfcounter = private unnamed_addr constant [46 x i8] c"void init_one_perfcounter(int, unsigned long)\00", align 1
@.str.2.136 = private unnamed_addr constant [8 x i8] c"ret > 0\00", align 1
@.str.3.137 = private unnamed_addr constant [9 x i8] c"offset>0\00", align 1
@__PRETTY_FUNCTION__.read_one_perfcounter = private unnamed_addr constant [47 x i8] c"void read_one_perfcounter(int, unsigned int *)\00", align 1
@M5_inSimulator = external global i32, align 4
@.str.4.146 = private unnamed_addr constant [9 x i8] c"err == 0\00", align 1
@__PRETTY_FUNCTION__.determineNumProcs = private unnamed_addr constant [25 x i8] c"long determineNumProcs()\00", align 1
@global_numThread = internal global i64 1, align 8
@global_doShutdown = internal global i64 0, align 8
@__PRETTY_FUNCTION__.thread_startup = private unnamed_addr constant [26 x i8] c"void thread_startup(long)\00", align 1
@global_barrierPtr = internal global %struct.thread_barrier* null, align 8
@.str.5.149 = private unnamed_addr constant [26 x i8] c"global_barrierPtr == NULL\00", align 1
@.str.11.150 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@__PRETTY_FUNCTION__.thread_barrier_alloc = private unnamed_addr constant [45 x i8] c"thread_barrier_t *thread_barrier_alloc(long)\00", align 1
@.str.12.151 = private unnamed_addr constant [35 x i8] c"(numThread & (numThread - 1)) == 0\00", align 1
@.str.6.152 = private unnamed_addr constant [18 x i8] c"global_barrierPtr\00", align 1
@global_threadId = internal global i32 0, align 4
@global_threadIds = internal global i64* null, align 8
@.str.7.153 = private unnamed_addr constant [25 x i8] c"global_threadIds == NULL\00", align 1
@.str.8.154 = private unnamed_addr constant [17 x i8] c"global_threadIds\00", align 1
@global_threads = internal global i64* null, align 8
@.str.9.155 = private unnamed_addr constant [23 x i8] c"global_threads == NULL\00", align 1
@.str.10.156 = private unnamed_addr constant [15 x i8] c"global_threads\00", align 1
@global_threadAttr = internal global %union.pthread_attr_t zeroinitializer, align 8
@global_funcPtr = internal global void (i8*)* null, align 8
@global_argPtr = internal global i8* null, align 8
@global_memoryPtr = global %struct.memory* null, align 8
@.str.167 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@.str.1.168 = private unnamed_addr constant [9 x i8] c"memory.c\00", align 1
@__PRETTY_FUNCTION__.memory_init = private unnamed_addr constant [39 x i8] c"bool_t memory_init(long, size_t, long)\00", align 1
@.str.2.169 = private unnamed_addr constant [13 x i8] c"capacity > 0\00", align 1
@__PRETTY_FUNCTION__.allocBlock = private unnamed_addr constant [28 x i8] c"block_t *allocBlock(size_t)\00", align 1
@.str.3.170 = private unnamed_addr constant [29 x i8] c"(size + numByte) <= capacity\00", align 1
@__PRETTY_FUNCTION__.getMemoryFromBlock = private unnamed_addr constant [44 x i8] c"void *getMemoryFromBlock(block_t *, size_t)\00", align 1

; Function Attrs: nounwind uwtable
define void @all_countsort_node(i64 %q, i64* nocapture readonly %lKey, i64* nocapture %lSorted, i64 %R, i64 %bitOff, i64 %m) #0 {
  %k_start = alloca i64, align 8
  %k_stop = alloca i64, align 8
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %2 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #5
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %15

; <label>:4                                       ; preds = %0
  %5 = shl i64 %R, 3
  %6 = mul i64 %5, %2
  %7 = tail call noalias i8* @malloc(i64 %6) #5
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 107, i8* nonnull getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.all_countsort_node, i64 0, i64 0)) #14
  unreachable

; <label>:10                                      ; preds = %4
  store i8* %7, i8** bitcast (i64** @global_myHisto to i8**), align 8
  %11 = tail call noalias i8* @malloc(i64 %6) #5
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 110, i8* nonnull getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.all_countsort_node, i64 0, i64 0)) #14
  unreachable

; <label>:14                                      ; preds = %10
  store i8* %11, i8** bitcast (i64** @global_psHisto to i8**), align 8
  br label %15

; <label>:15                                      ; preds = %14, %0
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
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
  call void @createPartition(i64 0, i64 %q, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #5
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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  call void @createPartition(i64 0, i64 %R, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #5
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
  br i1 %prol.iter.cmp, label %.lr.ph15.split.us.split.loopexit, label %50, !llvm.loop !1

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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  call void @createPartition(i64 0, i64 %q, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #5
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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %3, label %145, label %148

; <label>:145                                     ; preds = %._crit_edge
  %146 = bitcast i64* %17 to i8*
  call void @free(i8* %146) #5
  %147 = bitcast i64* %16 to i8*
  call void @free(i8* %147) #5
  br label %148

; <label>:148                                     ; preds = %145, %._crit_edge
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @all_countsort_node_aux_seq(i64 %q, i64* nocapture readonly %lKey, i64* nocapture %lSorted, i64* nocapture readonly %auxKey, i64* nocapture %auxSorted, i64 %R, i64 %bitOff, i64 %m) #0 {
  %1 = shl i64 %R, 3
  %2 = tail call noalias i8* @malloc(i64 %1) #5
  %3 = bitcast i8* %2 to i64*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 197, i8* nonnull getelementptr inbounds ([124 x i8], [124 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux_seq, i64 0, i64 0)) #14
  unreachable

; <label>:6                                       ; preds = %0
  %7 = tail call noalias i8* @malloc(i64 %1) #5
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
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 199, i8* nonnull getelementptr inbounds ([124 x i8], [124 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux_seq, i64 0, i64 0)) #14
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
  br i1 %prol.iter.cmp, label %.lr.ph8.preheader.split.loopexit, label %.lr.ph8.prol, !llvm.loop !3

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
  tail call void @free(i8* %7) #5
  tail call void @free(i8* nonnull %2) #5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @all_countsort_node_aux(i64 %q, i64* nocapture readonly %lKey, i64* nocapture %lSorted, i64* nocapture readonly %auxKey, i64* nocapture %auxSorted, i64 %R, i64 %bitOff, i64 %m) #0 {
  %k_start = alloca i64, align 8
  %k_stop = alloca i64, align 8
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %2 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #5
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %15

; <label>:4                                       ; preds = %0
  %5 = shl i64 %R, 3
  %6 = mul i64 %5, %2
  %7 = tail call noalias i8* @malloc(i64 %6) #5
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 265, i8* nonnull getelementptr inbounds ([120 x i8], [120 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux, i64 0, i64 0)) #14
  unreachable

; <label>:10                                      ; preds = %4
  store i8* %7, i8** bitcast (i64** @global_myHisto to i8**), align 8
  %11 = tail call noalias i8* @malloc(i64 %6) #5
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 268, i8* nonnull getelementptr inbounds ([120 x i8], [120 x i8]* @__PRETTY_FUNCTION__.all_countsort_node_aux, i64 0, i64 0)) #14
  unreachable

; <label>:14                                      ; preds = %10
  store i8* %11, i8** bitcast (i64** @global_psHisto to i8**), align 8
  br label %15

; <label>:15                                      ; preds = %14, %0
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
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
  call void @createPartition(i64 0, i64 %q, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #5
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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  call void @createPartition(i64 0, i64 %R, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #5
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
  br i1 %prol.iter.cmp, label %.lr.ph15.split.us.split.loopexit, label %50, !llvm.loop !4

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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  call void @createPartition(i64 0, i64 %q, i64 %1, i64 %2, i64* nonnull %k_start, i64* nonnull %k_stop) #5
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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %3, label %149, label %152

; <label>:149                                     ; preds = %._crit_edge
  %150 = bitcast i64* %17 to i8*
  call void @free(i8* %150) #5
  %151 = bitcast i64* %16 to i8*
  call void @free(i8* %151) #5
  br label %152

; <label>:152                                     ; preds = %149, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_s3(i64 %q, i64* nocapture readonly %lKeys, i64* nocapture %lSorted) #0 {
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = shl i64 %q, 3
  %5 = tail call noalias i8* @malloc(i64 %4) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 355, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_s3, i64 0, i64 0)) #14
  unreachable

; <label>:8                                       ; preds = %3
  store i8* %5, i8** bitcast (i64** @global_lTemp to i8**), align 8
  br label %9

; <label>:9                                       ; preds = %8, %0
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %10 = load i64*, i64** @global_lTemp, align 8
  tail call void @all_countsort_node(i64 %q, i64* %lKeys, i64* %lSorted, i64 2048, i64 0, i64 11)
  tail call void @all_countsort_node(i64 %q, i64* %lSorted, i64* %10, i64 2048, i64 11, i64 11)
  tail call void @all_countsort_node(i64 %q, i64* %10, i64* %lSorted, i64 1024, i64 22, i64 10)
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %2, label %11, label %13

; <label>:11                                      ; preds = %9
  %12 = bitcast i64* %10 to i8*
  tail call void @free(i8* %12) #5
  br label %13

; <label>:13                                      ; preds = %11, %9
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_s2(i64 %q, i64* nocapture readonly %lKeys, i64* nocapture %lSorted) #0 {
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = shl i64 %q, 3
  %5 = tail call noalias i8* @malloc(i64 %4) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 392, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_s2, i64 0, i64 0)) #14
  unreachable

; <label>:8                                       ; preds = %3
  store i8* %5, i8** bitcast (i64** @global_lTemp to i8**), align 8
  br label %9

; <label>:9                                       ; preds = %8, %0
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %10 = load i64*, i64** @global_lTemp, align 8
  tail call void @all_countsort_node(i64 %q, i64* %lKeys, i64* %10, i64 65536, i64 0, i64 16)
  tail call void @all_countsort_node(i64 %q, i64* %10, i64* %lSorted, i64 65536, i64 16, i64 16)
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %2, label %11, label %13

; <label>:11                                      ; preds = %9
  %12 = bitcast i64* %10 to i8*
  tail call void @free(i8* %12) #5
  br label %13

; <label>:13                                      ; preds = %11, %9
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_aux_s3_seq(i64 %q, i64* nocapture readonly %lKeys, i64* nocapture %lSorted, i64* nocapture readonly %auxKey, i64* nocapture %auxSorted) #0 {
  %1 = shl i64 %q, 3
  %2 = tail call noalias i8* @malloc(i64 %1) #5
  %3 = bitcast i8* %2 to i64*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 428, i8* nonnull getelementptr inbounds ([109 x i8], [109 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3_seq, i64 0, i64 0)) #14
  unreachable

; <label>:6                                       ; preds = %0
  %7 = tail call noalias i8* @malloc(i64 %1) #5
  %8 = bitcast i8* %7 to i64*
  %9 = icmp eq i8* %7, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 430, i8* nonnull getelementptr inbounds ([109 x i8], [109 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3_seq, i64 0, i64 0)) #14
  unreachable

; <label>:11                                      ; preds = %6
  tail call void @all_countsort_node_aux_seq(i64 %q, i64* %lKeys, i64* %lSorted, i64* %auxKey, i64* %auxSorted, i64 2048, i64 0, i64 11)
  tail call void @all_countsort_node_aux_seq(i64 %q, i64* %lSorted, i64* %3, i64* %auxSorted, i64* %8, i64 2048, i64 11, i64 11)
  tail call void @all_countsort_node_aux_seq(i64 %q, i64* %3, i64* %lSorted, i64* %8, i64* %auxSorted, i64 1024, i64 22, i64 10)
  tail call void @free(i8* nonnull %2) #5
  tail call void @free(i8* nonnull %7) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @all_radixsort_node_aux_s3(i64 %q, i64* nocapture readonly %lKeys, i64* nocapture %lSorted, i64* nocapture readonly %auxKey, i64* nocapture %auxSorted) #0 {
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = shl i64 %q, 3
  %5 = tail call noalias i8* @malloc(i64 %4) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 461, i8* nonnull getelementptr inbounds ([105 x i8], [105 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3, i64 0, i64 0)) #14
  unreachable

; <label>:8                                       ; preds = %3
  store i8* %5, i8** bitcast (i64** @global_lTemp to i8**), align 8
  %9 = tail call noalias i8* @malloc(i64 %4) #5
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 464, i8* nonnull getelementptr inbounds ([105 x i8], [105 x i8]* @__PRETTY_FUNCTION__.all_radixsort_node_aux_s3, i64 0, i64 0)) #14
  unreachable

; <label>:12                                      ; preds = %8
  store i8* %9, i8** bitcast (i64** @global_lTemp2 to i8**), align 8
  br label %13

; <label>:13                                      ; preds = %12, %0
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %14 = load i64*, i64** @global_lTemp, align 8
  %15 = load i64*, i64** @global_lTemp2, align 8
  tail call void @all_countsort_node_aux(i64 %q, i64* %lKeys, i64* %lSorted, i64* %auxKey, i64* %auxSorted, i64 2048, i64 0, i64 11)
  tail call void @all_countsort_node_aux(i64 %q, i64* %lSorted, i64* %14, i64* %auxSorted, i64* %15, i64 2048, i64 11, i64 11)
  tail call void @all_countsort_node_aux(i64 %q, i64* %14, i64* %lSorted, i64* %15, i64* %auxSorted, i64 1024, i64 22, i64 10)
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %2, label %16, label %19

; <label>:16                                      ; preds = %13
  %17 = bitcast i64* %14 to i8*
  tail call void @free(i8* %17) #5
  %18 = bitcast i64* %15 to i8*
  tail call void @free(i8* %18) #5
  br label %19

; <label>:19                                      ; preds = %16, %13
  ret void
}

; Function Attrs: nounwind uwtable
define void @computeGraph(i8* nocapture readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #5
  %5 = bitcast i8* %argPtr to %struct.graph**
  %6 = load %struct.graph*, %struct.graph** %5, align 8
  %7 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %8 = bitcast i8* %7 to %struct.graphSDG**
  %9 = load %struct.graphSDG*, %struct.graphSDG** %8, align 8
  %10 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %11 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #5
  %12 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 4
  %13 = load i64, i64* %12, align 8
  call void @createPartition(i64 0, i64 %13, i64 %10, i64 %11, i64* nonnull %i_start, i64* nonnull %i_stop) #5
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
  br i1 %45, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !5

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
  br i1 %51, label %scalar.ph, label %.preheader25.loopexit, !llvm.loop !8

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %.lr.ph123
  call void @llvm.x86.sse2.pause() #5
  %52 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %._crit_edge124.loopexit, label %.lr.ph123

._crit_edge124.loopexit:                          ; preds = %.lr.ph123
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %.outer26, %._crit_edge124.loopexit
  %54 = icmp slt i32 %tries.0.ph, 2
  br i1 %54, label %73, label %55

; <label>:55                                      ; preds = %._crit_edge124
  %56 = add nsw i32 %tries.0.ph, -1
  %57 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 7, i64 0, i64 7, i64 4294967295) #5, !srcloc !10
  %58 = trunc i64 %57 to i32
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %64, label %.outer26

.outer26:                                         ; preds = %55, %.preheader25
  %tries.0.ph = phi i32 [ 9, %.preheader25 ], [ %56, %55 ]
  %60 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %61 = icmp eq i64 %60, 0
  %62 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %62, i32 0, i32 3, i32 1)
  %63 = bitcast i64* @global_maxNumVertices to i8*
  call void @llvm.prefetch(i8* %63, i32 0, i32 3, i32 1)
  br i1 %61, label %._crit_edge124, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %.outer26
  br label %.lr.ph123

; <label>:64                                      ; preds = %55
  %65 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %68, label %67

; <label>:67                                      ; preds = %64
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !11
  br label %68

; <label>:68                                      ; preds = %67, %64
  %69 = load i64, i64* @global_maxNumVertices, align 8
  %70 = icmp ugt i64 %69, %maxNumVertices.0.lcssa
  %71 = select i1 %70, i64 %69, i64 %maxNumVertices.0.lcssa
  %72 = add i64 %71, 1
  store i64 %72, i64* @global_maxNumVertices, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 7) #5, !srcloc !12
  br label %78

; <label>:73                                      ; preds = %._crit_edge124
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #5
  %74 = load i64, i64* @global_maxNumVertices, align 8
  %75 = icmp ugt i64 %74, %maxNumVertices.0.lcssa
  %76 = select i1 %75, i64 %74, i64 %maxNumVertices.0.lcssa
  %77 = add i64 %76, 1
  store i64 %77, i64* @global_maxNumVertices, align 8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #5
  br label %78

; <label>:78                                      ; preds = %73, %68
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %79 = icmp eq i64 %10, 0
  br i1 %79, label %80, label %._crit_edge164

._crit_edge164:                                   ; preds = %78
  %.pre165 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 0
  br label %124

; <label>:80                                      ; preds = %78
  %81 = load i64, i64* @global_maxNumVertices, align 8
  %82 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 0
  store i64 %81, i64* %82, align 8
  %83 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 1
  store i64 %13, i64* %83, align 8
  %84 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 2
  %85 = bitcast i64** %84 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 13
  %88 = bitcast i64** %87 to i64*
  store i64 %86, i64* %88, align 8
  %89 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 3
  %90 = bitcast i8** %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 14
  %93 = bitcast i8** %92 to i64*
  store i64 %91, i64* %93, align 8
  %94 = icmp eq i64 %13, 0
  %95 = inttoptr i64 %86 to i64*
  br i1 %94, label %.loopexit24, label %.lr.ph122

.lr.ph122:                                        ; preds = %80
  %96 = add i64 %13, -1
  br label %99

; <label>:97                                      ; preds = %99
  %98 = icmp ugt i64 %13, %104
  br i1 %98, label %99, label %.loopexit24.loopexit

; <label>:99                                      ; preds = %97, %.lr.ph122
  %i.1120 = phi i64 [ 0, %.lr.ph122 ], [ %104, %97 ]
  %100 = sub i64 %96, %i.1120
  %101 = getelementptr inbounds i64, i64* %95, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %102, 0
  %104 = add nuw nsw i64 %i.1120, 1
  br i1 %103, label %105, label %97

; <label>:105                                     ; preds = %99
  %.lcssa280 = phi i64 [ %102, %99 ]
  %106 = sub i64 1, %.lcssa280
  %107 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 5
  store i64 %106, i64* %107, align 8
  %108 = sub i64 %13, %106
  %109 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 4
  store i64 %108, i64* %109, align 8
  br label %.loopexit24

.loopexit24.loopexit:                             ; preds = %97
  br label %.loopexit24

.loopexit24:                                      ; preds = %.loopexit24.loopexit, %105, %80
  %110 = shl i64 %81, 3
  %111 = call noalias i8* @malloc(i64 %110) #5
  %112 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 6
  %113 = bitcast i64** %112 to i8**
  store i8* %111, i8** %113, align 8
  %114 = icmp eq i8* %111, null
  br i1 %114, label %115, label %116

; <label>:115                                     ; preds = %.loopexit24
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.6, i64 0, i64 0), i32 210, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #14
  unreachable

; <label>:116                                     ; preds = %.loopexit24
  %117 = load i64, i64* %82, align 8
  %118 = shl i64 %117, 3
  %119 = call noalias i8* @malloc(i64 %118) #5
  %120 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  %121 = bitcast i64** %120 to i8**
  store i8* %119, i8** %121, align 8
  %122 = icmp eq i8* %119, null
  br i1 %122, label %123, label %124

; <label>:123                                     ; preds = %116
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.6, i64 0, i64 0), i32 214, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #14
  unreachable

; <label>:124                                     ; preds = %116, %._crit_edge164
  %.pre-phi = phi i64* [ %.pre165, %._crit_edge164 ], [ %82, %116 ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %125 = load i64, i64* %.pre-phi, align 8
  call void @createPartition(i64 0, i64 %125, i64 %10, i64 %11, i64* nonnull %i_start, i64* nonnull %i_stop) #5
  %126 = load i64, i64* %i_start, align 8
  %127 = load i64, i64* %i_stop, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %.lr.ph118, label %._crit_edge119

.lr.ph118:                                        ; preds = %124
  %129 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 6
  %130 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  br label %131

; <label>:131                                     ; preds = %131, %.lr.ph118
  %i.2116 = phi i64 [ %126, %.lr.ph118 ], [ %136, %131 ]
  %132 = load i64*, i64** %129, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 %i.2116
  store i64 0, i64* %133, align 8
  %134 = load i64*, i64** %130, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 %i.2116
  store i64 0, i64* %135, align 8
  %136 = add nsw i64 %i.2116, 1
  %137 = load i64, i64* %i_stop, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %131, label %._crit_edge119.loopexit

._crit_edge119.loopexit:                          ; preds = %131
  br label %._crit_edge119

._crit_edge119:                                   ; preds = %._crit_edge119.loopexit, %124
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %139 = load i64, i64* %i_start, align 8
  %140 = load i64, i64* %i_stop, align 8
  %141 = icmp slt i64 %139, %140
  %142 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 6
  br i1 %141, label %.lr.ph113, label %._crit_edge114

.lr.ph113:                                        ; preds = %._crit_edge119
  %143 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 1
  %144 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 0
  %145 = icmp eq i64 %13, 0
  br label %146

; <label>:146                                     ; preds = %.loopexit17, %.lr.ph113
  %i.3109 = phi i64 [ %139, %.lr.ph113 ], [ %220, %.loopexit17 ]
  %outVertexListSize.0108 = phi i64 [ 0, %.lr.ph113 ], [ %outVertexListSize.7, %.loopexit17 ]
  %i0.0107 = phi i64 [ -1, %.lr.ph113 ], [ %i0.5, %.loopexit17 ]
  %147 = icmp eq i64 %outVertexListSize.0108, 0
  %148 = icmp ne i64 %i.3109, 0
  %or.cond = and i1 %147, %148
  %149 = icmp eq i64 %i0.0107, -1
  %or.cond7 = and i1 %149, %or.cond
  br i1 %or.cond7, label %.preheader22, label %.loopexit23

.preheader22:                                     ; preds = %146
  br i1 %145, label %.preheader22.split.preheader, label %.lr.ph98.us.preheader

.preheader22.split.preheader:                     ; preds = %.preheader22
  br label %.preheader22.split

.lr.ph98.us.preheader:                            ; preds = %.preheader22
  %.pre = load i64*, i64** %144, align 8
  br label %.lr.ph98.us

; <label>:150                                     ; preds = %.lr.ph98.us, %154
  %j.096.us = phi i64 [ 0, %.lr.ph98.us ], [ %155, %154 ]
  %151 = getelementptr inbounds i64, i64* %.pre, i64 %j.096.us
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %k.0.us, %152
  br i1 %153, label %._crit_edge99.us, label %154

; <label>:154                                     ; preds = %150
  %155 = add nuw i64 %j.096.us, 1
  %156 = icmp ult i64 %155, %13
  br i1 %156, label %150, label %._crit_edge99.us.thread

._crit_edge99.us.thread:                          ; preds = %154
  %157 = add i64 %k.0.us, -1
  br label %.lr.ph98.us.backedge

._crit_edge99.us:                                 ; preds = %150
  %j.096.us.lcssa = phi i64 [ %j.096.us, %150 ]
  %158 = add i64 %k.0.us, -1
  %.old6.us = icmp eq i64 %j.096.us.lcssa, -1
  br i1 %.old6.us, label %.lr.ph98.us.backedge, label %.loopexit23.loopexit

.lr.ph98.us.backedge:                             ; preds = %._crit_edge99.us, %._crit_edge99.us.thread
  %k.0.us.be = phi i64 [ %158, %._crit_edge99.us ], [ %157, %._crit_edge99.us.thread ]
  br label %.lr.ph98.us

.lr.ph98.us:                                      ; preds = %.lr.ph98.us.backedge, %.lr.ph98.us.preheader
  %k.0.us = phi i64 [ %i.3109, %.lr.ph98.us.preheader ], [ %k.0.us.be, %.lr.ph98.us.backedge ]
  br label %150

.preheader22.split:                               ; preds = %.preheader22.split, %.preheader22.split.preheader
  br label %.preheader22.split

.loopexit23.loopexit:                             ; preds = %._crit_edge99.us
  %.lcssa276 = phi i64 [ %158, %._crit_edge99.us ]
  %j.096.us.lcssa.lcssa = phi i64 [ %j.096.us.lcssa, %._crit_edge99.us ]
  br label %.loopexit23

.loopexit23:                                      ; preds = %.loopexit23.loopexit, %146
  %k.1 = phi i64 [ %i.3109, %146 ], [ %.lcssa276, %.loopexit23.loopexit ]
  %i0.3 = phi i64 [ %i0.0107, %146 ], [ %j.096.us.lcssa.lcssa, %.loopexit23.loopexit ]
  %159 = or i64 %k.1, %outVertexListSize.0108
  %160 = icmp eq i64 %159, 0
  %.i0.3 = select i1 %160, i64 0, i64 %i0.3
  %161 = icmp ult i64 %.i0.3, %13
  br i1 %161, label %.lr.ph105, label %.loopexit19

.lr.ph105:                                        ; preds = %.loopexit23
  %162 = load i64, i64* %.pre-phi, align 8
  %163 = add i64 %162, -1
  %164 = icmp eq i64 %i.3109, %163
  br i1 %164, label %.loopexit19, label %.lr.ph105.split.preheader

.lr.ph105.split.preheader:                        ; preds = %.lr.ph105
  %.pre154 = load i64*, i64** %144, align 8
  br label %.lr.ph105.split

.lr.ph105.split:                                  ; preds = %195, %.lr.ph105.split.preheader
  %j.1103 = phi i64 [ %196, %195 ], [ %.i0.3, %.lr.ph105.split.preheader ]
  %165 = getelementptr inbounds i64, i64* %.pre154, i64 %j.1103
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %i.3109, %166
  br i1 %167, label %195, label %168

; <label>:168                                     ; preds = %.lr.ph105.split
  %j.1103.lcssa = phi i64 [ %j.1103, %.lr.ph105.split ]
  %169 = icmp eq i64 %j.1103.lcssa, 0
  br i1 %169, label %.loopexit19, label %170

; <label>:170                                     ; preds = %168
  %171 = add i64 %j.1103.lcssa, -1
  %172 = getelementptr inbounds i64, i64* %.pre154, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %i.3109, %173
  %175 = icmp eq i64 %j.1103.lcssa, %.i0.3
  %or.cond8 = or i1 %175, %174
  br i1 %or.cond8, label %.loopexit19, label %176

; <label>:176                                     ; preds = %170
  %177 = load i64*, i64** %142, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 %i.3109
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %178, align 8
  br label %.outer20

.outer20:                                         ; preds = %190, %176
  %t.0.in.ph = phi i64 [ %t.0.lcssa278, %190 ], [ %.i0.3, %176 ]
  %outVertexListSize.1.ph.in = phi i64 [ %outVertexListSize.1.ph, %190 ], [ %outVertexListSize.0108, %176 ]
  %outVertexListSize.1.ph = add i64 %outVertexListSize.1.ph.in, 1
  br label %181

; <label>:181                                     ; preds = %183, %.outer20
  %t.0.in = phi i64 [ %t.0, %183 ], [ %t.0.in.ph, %.outer20 ]
  %t.0 = add i64 %t.0.in, 1
  %182 = icmp ult i64 %t.0, %j.1103.lcssa
  br i1 %182, label %183, label %.loopexit19.loopexit

; <label>:183                                     ; preds = %181
  %184 = load i64*, i64** %143, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 %t.0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i64, i64* %184, i64 %t.0.in
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %186, %188
  br i1 %189, label %181, label %190

; <label>:190                                     ; preds = %183
  %t.0.lcssa278 = phi i64 [ %t.0, %183 ]
  %191 = load i64*, i64** %142, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 %i.3109
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, 1
  store i64 %194, i64* %192, align 8
  br label %.outer20

; <label>:195                                     ; preds = %.lr.ph105.split
  %196 = add nuw i64 %j.1103, 1
  %197 = icmp ult i64 %196, %13
  br i1 %197, label %.lr.ph105.split, label %.loopexit19.loopexit241

.loopexit19.loopexit:                             ; preds = %181
  %outVertexListSize.1.ph.lcssa = phi i64 [ %outVertexListSize.1.ph, %181 ]
  br label %.loopexit19

.loopexit19.loopexit241:                          ; preds = %195
  br label %.loopexit19

.loopexit19:                                      ; preds = %.loopexit19.loopexit241, %.loopexit19.loopexit, %170, %168, %.lr.ph105, %.loopexit23
  %i0.5 = phi i64 [ %j.1103.lcssa, %170 ], [ 0, %168 ], [ %.i0.3, %.lr.ph105 ], [ %.i0.3, %.loopexit23 ], [ %j.1103.lcssa, %.loopexit19.loopexit ], [ %.i0.3, %.loopexit19.loopexit241 ]
  %outVertexListSize.4 = phi i64 [ %outVertexListSize.0108, %170 ], [ %outVertexListSize.0108, %168 ], [ %outVertexListSize.0108, %.lr.ph105 ], [ %outVertexListSize.0108, %.loopexit23 ], [ %outVertexListSize.1.ph.lcssa, %.loopexit19.loopexit ], [ %outVertexListSize.0108, %.loopexit19.loopexit241 ]
  %198 = load i64, i64* %.pre-phi, align 8
  %199 = add i64 %198, -1
  %200 = icmp eq i64 %i.3109, %199
  br i1 %200, label %201, label %.loopexit17

; <label>:201                                     ; preds = %.loopexit19
  %202 = load i64*, i64** %142, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 %i.3109
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %203, align 8
  br label %.outer18

.outer18:                                         ; preds = %215, %201
  %t1.0.in.ph = phi i64 [ %t1.0.lcssa279, %215 ], [ %i0.5, %201 ]
  %outVertexListSize.5.ph.in = phi i64 [ %outVertexListSize.5.ph, %215 ], [ %outVertexListSize.4, %201 ]
  %outVertexListSize.5.ph = add i64 %outVertexListSize.5.ph.in, 1
  br label %206

; <label>:206                                     ; preds = %208, %.outer18
  %t1.0.in = phi i64 [ %t1.0, %208 ], [ %t1.0.in.ph, %.outer18 ]
  %t1.0 = add i64 %t1.0.in, 1
  %207 = icmp ult i64 %t1.0, %13
  br i1 %207, label %208, label %.loopexit17.loopexit

; <label>:208                                     ; preds = %206
  %209 = load i64*, i64** %143, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 %t1.0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds i64, i64* %209, i64 %t1.0.in
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %211, %213
  br i1 %214, label %206, label %215

; <label>:215                                     ; preds = %208
  %t1.0.lcssa279 = phi i64 [ %t1.0, %208 ]
  %216 = load i64*, i64** %142, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 %i.3109
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %217, align 8
  br label %.outer18

.loopexit17.loopexit:                             ; preds = %206
  %outVertexListSize.5.ph.lcssa = phi i64 [ %outVertexListSize.5.ph, %206 ]
  br label %.loopexit17

.loopexit17:                                      ; preds = %.loopexit17.loopexit, %.loopexit19
  %outVertexListSize.7 = phi i64 [ %outVertexListSize.4, %.loopexit19 ], [ %outVertexListSize.5.ph.lcssa, %.loopexit17.loopexit ]
  %220 = add nsw i64 %i.3109, 1
  %221 = load i64, i64* %i_stop, align 8
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %146, label %._crit_edge114.loopexit

._crit_edge114.loopexit:                          ; preds = %.loopexit17
  %outVertexListSize.7.lcssa = phi i64 [ %outVertexListSize.7, %.loopexit17 ]
  br label %._crit_edge114

._crit_edge114:                                   ; preds = %._crit_edge114.loopexit, %._crit_edge119
  %outVertexListSize.0.lcssa = phi i64 [ 0, %._crit_edge119 ], [ %outVertexListSize.7.lcssa, %._crit_edge114.loopexit ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %223 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  %224 = load i64*, i64** %223, align 8
  %225 = load i64*, i64** %142, align 8
  %226 = load i64, i64* %.pre-phi, align 8
  call fastcc void @prefix_sums(i64* %224, i64* %225, i64 %226)
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br label %.outer16

.outer16:                                         ; preds = %234, %._crit_edge114
  %tries3.0.ph = phi i32 [ %235, %234 ], [ 9, %._crit_edge114 ]
  %227 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %228 = icmp eq i64 %227, 0
  %229 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %229, i32 0, i32 3, i32 1)
  %230 = bitcast i64* @global_outVertexListSize to i8*
  call void @llvm.prefetch(i8* %230, i32 0, i32 3, i32 1)
  br i1 %228, label %._crit_edge95, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %.outer16
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94, %.lr.ph94.preheader
  call void @llvm.x86.sse2.pause() #5
  %231 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %._crit_edge95.loopexit, label %.lr.ph94

._crit_edge95.loopexit:                           ; preds = %.lr.ph94
  br label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge95.loopexit, %.outer16
  %233 = icmp slt i32 %tries3.0.ph, 2
  br i1 %233, label %246, label %234

; <label>:234                                     ; preds = %._crit_edge95
  %235 = add nsw i32 %tries3.0.ph, -1
  %236 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 8, i64 0, i64 8, i64 4294967295) #5, !srcloc !10
  %237 = trunc i64 %236 to i32
  %238 = icmp eq i32 %237, -1
  br i1 %238, label %239, label %.outer16

; <label>:239                                     ; preds = %234
  %240 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %243, label %242

; <label>:242                                     ; preds = %239
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !11
  br label %243

; <label>:243                                     ; preds = %242, %239
  %244 = load i64, i64* @global_outVertexListSize, align 8
  %245 = add i64 %244, %outVertexListSize.0.lcssa
  store i64 %245, i64* @global_outVertexListSize, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 8) #5, !srcloc !12
  br label %249

; <label>:246                                     ; preds = %._crit_edge95
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #5
  %247 = load i64, i64* @global_outVertexListSize, align 8
  %248 = add i64 %247, %outVertexListSize.0.lcssa
  store i64 %248, i64* @global_outVertexListSize, align 8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #5
  br label %249

; <label>:249                                     ; preds = %246, %243
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %250 = load i64, i64* @global_outVertexListSize, align 8
  br i1 %79, label %251, label %270

; <label>:251                                     ; preds = %249
  %252 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 2
  store i64 %250, i64* %252, align 8
  %253 = shl i64 %250, 3
  %254 = call noalias i8* @malloc(i64 %253) #5
  %255 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %256 = bitcast i64** %255 to i8**
  store i8* %254, i8** %256, align 8
  %257 = icmp eq i8* %254, null
  br i1 %257, label %258, label %259

; <label>:258                                     ; preds = %251
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.6, i64 0, i64 0), i32 314, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #14
  unreachable

; <label>:259                                     ; preds = %251
  %260 = call noalias i8* @malloc(i64 %253) #5
  %261 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 9
  %262 = bitcast i64** %261 to i8**
  store i8* %260, i8** %262, align 8
  %263 = icmp eq i8* %260, null
  br i1 %263, label %264, label %265

; <label>:264                                     ; preds = %259
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.6, i64 0, i64 0), i32 317, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #14
  unreachable

; <label>:265                                     ; preds = %259
  %266 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 1
  %267 = load i64*, i64** %266, align 8
  %268 = load i64, i64* %267, align 8
  %269 = load i64*, i64** %255, align 8
  store i64 %268, i64* %269, align 8
  br label %270

; <label>:270                                     ; preds = %265, %249
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %271 = load i64, i64* %i_start, align 8
  %272 = load i64, i64* %i_stop, align 8
  %273 = icmp slt i64 %271, %272
  br i1 %273, label %.preheader15.lr.ph, label %._crit_edge93

.preheader15.lr.ph:                               ; preds = %270
  %274 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 9
  %275 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 1
  %276 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %277 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 0
  %278 = icmp eq i64 %13, 0
  br label %.preheader15

.preheader15:                                     ; preds = %.loopexit, %.preheader15.lr.ph
  %indvar = phi i64 [ 0, %.preheader15.lr.ph ], [ %indvar.next, %.loopexit ]
  %i.490 = phi i64 [ %271, %.preheader15.lr.ph ], [ %384, %.loopexit ]
  %i0.689 = phi i64 [ -1, %.preheader15.lr.ph ], [ %i0.10, %.loopexit ]
  %279 = add i64 %271, %indvar
  %280 = add i64 %279, -16
  %281 = lshr i64 %280, 4
  %282 = add nuw nsw i64 %281, 1
  %283 = add i64 %271, %indvar
  %284 = icmp eq i64 %i0.689, -1
  %285 = icmp ne i64 %i.490, 0
  %286 = and i1 %285, %284
  br i1 %286, label %.preheader10.lr.ph, label %._crit_edge81

.preheader10.lr.ph:                               ; preds = %.preheader15
  br i1 %278, label %.preheader10.preheader, label %.lr.ph74.us.preheader

.preheader10.preheader:                           ; preds = %.preheader10.lr.ph
  %min.iters.check223 = icmp ult i64 %283, 16
  br i1 %min.iters.check223, label %.preheader10.preheader239, label %min.iters.checked224

.preheader10.preheader239:                        ; preds = %middle.block221, %min.iters.checked224, %.preheader10.preheader
  %k4.079.ph = phi i64 [ %i.490, %min.iters.checked224 ], [ %i.490, %.preheader10.preheader ], [ %ind.end232, %middle.block221 ]
  br label %.preheader10

min.iters.checked224:                             ; preds = %.preheader10.preheader
  %n.vec226 = and i64 %283, -16
  %cmp.zero227 = icmp eq i64 %n.vec226, 0
  %ind.end232 = sub i64 %i.490, %n.vec226
  br i1 %cmp.zero227, label %.preheader10.preheader239, label %vector.body220.preheader

vector.body220.preheader:                         ; preds = %min.iters.checked224
  %xtraiter = and i64 %282, 7
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
  br i1 %prol.iter.cmp, label %vector.body220.preheader.split.loopexit, label %vector.body220.prol, !llvm.loop !13

vector.body220.preheader.split.loopexit:          ; preds = %vector.body220.prol
  %index.next230.prol.lcssa = phi i64 [ %index.next230.prol, %vector.body220.prol ]
  br label %vector.body220.preheader.split

vector.body220.preheader.split:                   ; preds = %vector.body220.preheader.split.loopexit, %vector.body220.preheader
  %index229.unr = phi i64 [ 0, %vector.body220.preheader ], [ %index.next230.prol.lcssa, %vector.body220.preheader.split.loopexit ]
  %287 = icmp ult i64 %280, 112
  br i1 %287, label %middle.block221, label %vector.body220.preheader.split.split

vector.body220.preheader.split.split:             ; preds = %vector.body220.preheader.split
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.body220.preheader.split.split
  %index229 = phi i64 [ %index229.unr, %vector.body220.preheader.split.split ], [ %index.next230.7, %vector.body220 ]
  %index.next230.7 = add i64 %index229, 128
  %288 = icmp eq i64 %index.next230.7, %n.vec226
  br i1 %288, label %middle.block221.unr-lcssa, label %vector.body220, !llvm.loop !14

middle.block221.unr-lcssa:                        ; preds = %vector.body220
  br label %middle.block221

middle.block221:                                  ; preds = %middle.block221.unr-lcssa, %vector.body220.preheader.split
  %cmp.n233 = icmp eq i64 %283, %n.vec226
  br i1 %cmp.n233, label %._crit_edge81, label %.preheader10.preheader239

.lr.ph74.us.preheader:                            ; preds = %.preheader10.lr.ph
  %.pre155 = load i64*, i64** %277, align 8
  br label %.lr.ph74.us

; <label>:289                                     ; preds = %.lr.ph74.us, %293
  %j.273.us = phi i64 [ 0, %.lr.ph74.us ], [ %294, %293 ]
  %290 = getelementptr inbounds i64, i64* %.pre155, i64 %j.273.us
  %291 = load i64, i64* %290, align 8
  %292 = icmp eq i64 %k4.079.us, %291
  br i1 %292, label %._crit_edge75.us, label %293

; <label>:293                                     ; preds = %289
  %294 = add nuw i64 %j.273.us, 1
  %295 = icmp ult i64 %294, %13
  br i1 %295, label %289, label %._crit_edge75.us

._crit_edge75.us:                                 ; preds = %293, %289
  %i0.8.us = phi i64 [ %j.273.us, %289 ], [ -1, %293 ]
  %296 = add i64 %k4.079.us, -1
  %297 = icmp eq i64 %i0.8.us, -1
  %298 = icmp ne i64 %296, 0
  %299 = and i1 %298, %297
  br i1 %299, label %.lr.ph74.us, label %._crit_edge81.loopexit240

.lr.ph74.us:                                      ; preds = %._crit_edge75.us, %.lr.ph74.us.preheader
  %k4.079.us = phi i64 [ %296, %._crit_edge75.us ], [ %i.490, %.lr.ph74.us.preheader ]
  br label %289

.preheader10:                                     ; preds = %.preheader10, %.preheader10.preheader239
  %k4.079 = phi i64 [ %300, %.preheader10 ], [ %k4.079.ph, %.preheader10.preheader239 ]
  %300 = add i64 %k4.079, -1
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %._crit_edge81.loopexit, label %.preheader10, !llvm.loop !15

._crit_edge81.loopexit:                           ; preds = %.preheader10
  br label %._crit_edge81

._crit_edge81.loopexit240:                        ; preds = %._crit_edge75.us
  %.lcssa271 = phi i1 [ %297, %._crit_edge75.us ]
  %.lcssa270 = phi i64 [ %296, %._crit_edge75.us ]
  %i0.8.us.lcssa = phi i64 [ %i0.8.us, %._crit_edge75.us ]
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %._crit_edge81.loopexit240, %._crit_edge81.loopexit, %middle.block221, %.preheader15
  %.lcssa = phi i1 [ %284, %.preheader15 ], [ true, %middle.block221 ], [ true, %._crit_edge81.loopexit ], [ %.lcssa271, %._crit_edge81.loopexit240 ]
  %i0.7.lcssa = phi i64 [ %i0.689, %.preheader15 ], [ -1, %middle.block221 ], [ -1, %._crit_edge81.loopexit ], [ %i0.8.us.lcssa, %._crit_edge81.loopexit240 ]
  %k4.0.lcssa = phi i64 [ %i.490, %.preheader15 ], [ 0, %middle.block221 ], [ 0, %._crit_edge81.loopexit ], [ %.lcssa270, %._crit_edge81.loopexit240 ]
  %302 = icmp eq i64 %k4.0.lcssa, 0
  %or.cond5 = and i1 %302, %.lcssa
  %.i0.7 = select i1 %or.cond5, i64 0, i64 %i0.7.lcssa
  %303 = icmp ult i64 %.i0.7, %13
  br i1 %303, label %.lr.ph87, label %.loopexit12

.lr.ph87:                                         ; preds = %._crit_edge81
  %304 = load i64, i64* %.pre-phi, align 8
  %305 = add i64 %304, -1
  %306 = icmp eq i64 %i.490, %305
  br i1 %306, label %.loopexit12, label %.lr.ph87.split.preheader

.lr.ph87.split.preheader:                         ; preds = %.lr.ph87
  %.pre156 = load i64*, i64** %277, align 8
  br label %.lr.ph87.split

.lr.ph87.split:                                   ; preds = %348, %.lr.ph87.split.preheader
  %j.385 = phi i64 [ %349, %348 ], [ %.i0.7, %.lr.ph87.split.preheader ]
  %307 = getelementptr inbounds i64, i64* %.pre156, i64 %j.385
  %308 = load i64, i64* %307, align 8
  %309 = icmp eq i64 %i.490, %308
  br i1 %309, label %348, label %310

; <label>:310                                     ; preds = %.lr.ph87.split
  %j.385.lcssa = phi i64 [ %j.385, %.lr.ph87.split ]
  %311 = icmp eq i64 %j.385.lcssa, 0
  br i1 %311, label %.loopexit12, label %312

; <label>:312                                     ; preds = %310
  %313 = add i64 %j.385.lcssa, -1
  %314 = getelementptr inbounds i64, i64* %.pre156, i64 %313
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %i.490, %315
  %317 = icmp eq i64 %j.385.lcssa, %.i0.7
  %or.cond9 = or i1 %317, %316
  br i1 %or.cond9, label %.loopexit12, label %318

; <label>:318                                     ; preds = %312
  %319 = load i64*, i64** %223, align 8
  %320 = getelementptr inbounds i64, i64* %319, i64 %i.490
  %321 = load i64, i64* %320, align 8
  %322 = load i64*, i64** %274, align 8
  %323 = getelementptr inbounds i64, i64* %322, i64 %321
  store i64 %.i0.7, i64* %323, align 8
  %324 = load i64*, i64** %275, align 8
  %325 = getelementptr inbounds i64, i64* %324, i64 %.i0.7
  %326 = load i64, i64* %325, align 8
  %327 = load i64*, i64** %276, align 8
  %328 = getelementptr inbounds i64, i64* %327, i64 %321
  store i64 %326, i64* %328, align 8
  br label %.outer13

.outer13:                                         ; preds = %338, %318
  %r.0.ph = phi i64 [ %347, %338 ], [ 1, %318 ]
  %t5.0.in.ph = phi i64 [ %t5.0.lcssa273, %338 ], [ %.i0.7, %318 ]
  br label %329

; <label>:329                                     ; preds = %331, %.outer13
  %t5.0.in = phi i64 [ %t5.0, %331 ], [ %t5.0.in.ph, %.outer13 ]
  %t5.0 = add i64 %t5.0.in, 1
  %330 = icmp ult i64 %t5.0, %j.385.lcssa
  br i1 %330, label %331, label %.loopexit12.loopexit

; <label>:331                                     ; preds = %329
  %332 = load i64*, i64** %275, align 8
  %333 = getelementptr inbounds i64, i64* %332, i64 %t5.0
  %334 = load i64, i64* %333, align 8
  %335 = getelementptr inbounds i64, i64* %332, i64 %t5.0.in
  %336 = load i64, i64* %335, align 8
  %337 = icmp eq i64 %334, %336
  br i1 %337, label %329, label %338

; <label>:338                                     ; preds = %331
  %t5.0.lcssa273 = phi i64 [ %t5.0, %331 ]
  %339 = add i64 %r.0.ph, %321
  %340 = load i64*, i64** %274, align 8
  %341 = getelementptr inbounds i64, i64* %340, i64 %339
  store i64 %t5.0.lcssa273, i64* %341, align 8
  %342 = load i64*, i64** %275, align 8
  %343 = getelementptr inbounds i64, i64* %342, i64 %t5.0.lcssa273
  %344 = load i64, i64* %343, align 8
  %345 = load i64*, i64** %276, align 8
  %346 = getelementptr inbounds i64, i64* %345, i64 %339
  store i64 %344, i64* %346, align 8
  %347 = add i64 %r.0.ph, 1
  br label %.outer13

; <label>:348                                     ; preds = %.lr.ph87.split
  %349 = add nuw i64 %j.385, 1
  %350 = icmp ult i64 %349, %13
  br i1 %350, label %.lr.ph87.split, label %.loopexit12.loopexit238

.loopexit12.loopexit:                             ; preds = %329
  br label %.loopexit12

.loopexit12.loopexit238:                          ; preds = %348
  br label %.loopexit12

.loopexit12:                                      ; preds = %.loopexit12.loopexit238, %.loopexit12.loopexit, %312, %310, %.lr.ph87, %._crit_edge81
  %i0.10 = phi i64 [ %j.385.lcssa, %312 ], [ 0, %310 ], [ %.i0.7, %.lr.ph87 ], [ %.i0.7, %._crit_edge81 ], [ %j.385.lcssa, %.loopexit12.loopexit ], [ %.i0.7, %.loopexit12.loopexit238 ]
  %351 = load i64, i64* %.pre-phi, align 8
  %352 = add i64 %351, -1
  %353 = icmp eq i64 %i.490, %352
  br i1 %353, label %354, label %.loopexit

; <label>:354                                     ; preds = %.loopexit12
  %355 = load i64*, i64** %223, align 8
  %356 = getelementptr inbounds i64, i64* %355, i64 %i.490
  %357 = load i64, i64* %356, align 8
  %358 = load i64*, i64** %274, align 8
  %359 = getelementptr inbounds i64, i64* %358, i64 %357
  store i64 %i0.10, i64* %359, align 8
  %360 = load i64*, i64** %275, align 8
  %361 = getelementptr inbounds i64, i64* %360, i64 %i0.10
  %362 = load i64, i64* %361, align 8
  %363 = load i64*, i64** %276, align 8
  %364 = getelementptr inbounds i64, i64* %363, i64 %357
  store i64 %362, i64* %364, align 8
  br label %.outer11

.outer11:                                         ; preds = %374, %354
  %r6.0.ph = phi i64 [ %383, %374 ], [ 1, %354 ]
  %t8.0.in.ph = phi i64 [ %t8.0.lcssa274, %374 ], [ %i0.10, %354 ]
  br label %365

; <label>:365                                     ; preds = %367, %.outer11
  %t8.0.in = phi i64 [ %t8.0, %367 ], [ %t8.0.in.ph, %.outer11 ]
  %t8.0 = add i64 %t8.0.in, 1
  %366 = icmp ult i64 %t8.0, %13
  br i1 %366, label %367, label %.loopexit.loopexit

; <label>:367                                     ; preds = %365
  %368 = load i64*, i64** %275, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 %t8.0
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds i64, i64* %368, i64 %t8.0.in
  %372 = load i64, i64* %371, align 8
  %373 = icmp eq i64 %370, %372
  br i1 %373, label %365, label %374

; <label>:374                                     ; preds = %367
  %t8.0.lcssa274 = phi i64 [ %t8.0, %367 ]
  %375 = add i64 %r6.0.ph, %357
  %376 = load i64*, i64** %274, align 8
  %377 = getelementptr inbounds i64, i64* %376, i64 %375
  store i64 %t8.0.lcssa274, i64* %377, align 8
  %378 = load i64*, i64** %275, align 8
  %379 = getelementptr inbounds i64, i64* %378, i64 %t8.0.lcssa274
  %380 = load i64, i64* %379, align 8
  %381 = load i64*, i64** %276, align 8
  %382 = getelementptr inbounds i64, i64* %381, i64 %375
  store i64 %380, i64* %382, align 8
  %383 = add i64 %r6.0.ph, 1
  br label %.outer11

.loopexit.loopexit:                               ; preds = %365
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit12
  %384 = add nsw i64 %i.490, 1
  %385 = load i64, i64* %i_stop, align 8
  %386 = icmp slt i64 %384, %385
  %indvar.next = add i64 %indvar, 1
  br i1 %386, label %.preheader15, label %._crit_edge93.loopexit

._crit_edge93.loopexit:                           ; preds = %.loopexit
  br label %._crit_edge93

._crit_edge93:                                    ; preds = %._crit_edge93.loopexit, %270
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %79, label %387, label %408

; <label>:387                                     ; preds = %._crit_edge93
  %388 = bitcast %struct.graphSDG* %9 to i8**
  %389 = load i8*, i8** %388, align 8
  call void @free(i8* %389) #5
  %390 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %9, i64 0, i32 1
  %391 = bitcast i64** %390 to i8**
  %392 = load i8*, i8** %391, align 8
  call void @free(i8* %392) #5
  %393 = load i64, i64* %.pre-phi, align 8
  %394 = shl i64 %393, 3
  %395 = call noalias i8* @malloc(i64 %394) #5
  %396 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 10
  %397 = bitcast i64** %396 to i8**
  store i8* %395, i8** %397, align 8
  %398 = icmp eq i8* %395, null
  br i1 %398, label %399, label %400

; <label>:399                                     ; preds = %387
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.6, i64 0, i64 0), i32 403, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #14
  unreachable

; <label>:400                                     ; preds = %387
  %401 = load i64, i64* %.pre-phi, align 8
  %402 = shl i64 %401, 3
  %403 = call noalias i8* @malloc(i64 %402) #5
  %404 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 11
  %405 = bitcast i64** %404 to i8**
  store i8* %403, i8** %405, align 8
  %406 = icmp eq i8* %403, null
  br i1 %406, label %407, label %408

; <label>:407                                     ; preds = %400
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.6, i64 0, i64 0), i32 406, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #14
  unreachable

; <label>:408                                     ; preds = %400, %._crit_edge93
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %409 = load i64, i64* %i_start, align 8
  %410 = load i64, i64* %i_stop, align 8
  %411 = icmp slt i64 %409, %410
  br i1 %411, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %408
  %412 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 10
  %413 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 11
  br label %414

; <label>:414                                     ; preds = %414, %.lr.ph71
  %i.569 = phi i64 [ %409, %.lr.ph71 ], [ %419, %414 ]
  %415 = load i64*, i64** %412, align 8
  %416 = getelementptr inbounds i64, i64* %415, i64 %i.569
  store i64 0, i64* %416, align 8
  %417 = load i64*, i64** %413, align 8
  %418 = getelementptr inbounds i64, i64* %417, i64 %i.569
  store i64 0, i64* %418, align 8
  %419 = add nsw i64 %i.569, 1
  %420 = load i64, i64* %i_stop, align 8
  %421 = icmp slt i64 %419, %420
  br i1 %421, label %414, label %._crit_edge72.loopexit

._crit_edge72.loopexit:                           ; preds = %414
  br label %._crit_edge72

._crit_edge72:                                    ; preds = %._crit_edge72.loopexit, %408
  br i1 %79, label %422, label %428

; <label>:422                                     ; preds = %._crit_edge72
  %423 = load i64, i64* %.pre-phi, align 8
  %424 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %425 = shl i64 %423, 3
  %426 = mul i64 %425, %424
  %427 = call noalias i8* @malloc(i64 %426) #5
  store i8* %427, i8** bitcast (i64** @global_impliedEdgeList to i8**), align 8
  br label %428

; <label>:428                                     ; preds = %422, %._crit_edge72
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %429 = load i64*, i64** @global_impliedEdgeList, align 8
  %430 = load i64, i64* %.pre-phi, align 8
  %431 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %432 = mul i64 %431, %430
  call void @createPartition(i64 0, i64 %432, i64 %10, i64 %11, i64* nonnull %i_start, i64* nonnull %i_stop) #5
  %433 = load i64, i64* %i_start, align 8
  %434 = load i64, i64* %i_stop, align 8
  %435 = icmp slt i64 %433, %434
  br i1 %435, label %.lr.ph67.preheader, label %._crit_edge68

.lr.ph67.preheader:                               ; preds = %428
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67, %.lr.ph67.preheader
  %i.665 = phi i64 [ %437, %.lr.ph67 ], [ %433, %.lr.ph67.preheader ]
  %436 = getelementptr inbounds i64, i64* %429, i64 %i.665
  store i64 0, i64* %436, align 8
  %437 = add nsw i64 %i.665, 1
  %438 = load i64, i64* %i_stop, align 8
  %439 = icmp slt i64 %437, %438
  br i1 %439, label %.lr.ph67, label %._crit_edge68.loopexit

._crit_edge68.loopexit:                           ; preds = %.lr.ph67
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %._crit_edge68.loopexit, %428
  br i1 %79, label %440, label %447

; <label>:440                                     ; preds = %._crit_edge68
  %441 = load i64, i64* %.pre-phi, align 8
  %442 = shl i64 %441, 3
  %443 = call noalias i8* @malloc(i64 %442) #5
  %444 = icmp eq i8* %443, null
  br i1 %444, label %445, label %446

; <label>:445                                     ; preds = %440
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.6, i64 0, i64 0), i32 448, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #14
  unreachable

; <label>:446                                     ; preds = %440
  store i8* %443, i8** bitcast (i64*** @global_auxArr to i8**), align 8
  br label %447

; <label>:447                                     ; preds = %446, %._crit_edge68
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %448 = load i64**, i64*** @global_auxArr, align 8
  %449 = load i64, i64* %.pre-phi, align 8
  call void @createPartition(i64 0, i64 %449, i64 %10, i64 %11, i64* nonnull %i_start, i64* nonnull %i_stop) #5
  %450 = load i64, i64* %i_start, align 8
  %451 = load i64, i64* %i_stop, align 8
  %452 = icmp slt i64 %450, %451
  br i1 %452, label %.lr.ph63, label %.._crit_edge64_crit_edge

.._crit_edge64_crit_edge:                         ; preds = %447
  %.pre168 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 10
  br label %._crit_edge64

.lr.ph63:                                         ; preds = %447
  %453 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %454 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 10
  %.pre157 = load i64*, i64** %223, align 8
  %.pre158 = load i64*, i64** %142, align 8
  br label %455

; <label>:455                                     ; preds = %._crit_edge60, %.lr.ph63
  %456 = phi i64* [ %.pre158, %.lr.ph63 ], [ %546, %._crit_edge60 ]
  %457 = phi i64* [ %.pre157, %.lr.ph63 ], [ %547, %._crit_edge60 ]
  %i.761 = phi i64 [ %450, %.lr.ph63 ], [ %548, %._crit_edge60 ]
  %458 = getelementptr inbounds i64, i64* %457, i64 %i.761
  %459 = load i64, i64* %458, align 8
  %460 = getelementptr inbounds i64, i64* %456, i64 %i.761
  %461 = load i64, i64* %460, align 8
  %462 = add i64 %461, %459
  %463 = icmp ult i64 %459, %462
  br i1 %463, label %.lr.ph59.preheader, label %._crit_edge60

.lr.ph59.preheader:                               ; preds = %455
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %536, %.lr.ph59.preheader
  %464 = phi i64* [ %541, %536 ], [ %456, %.lr.ph59.preheader ]
  %465 = phi i64* [ %538, %536 ], [ %457, %.lr.ph59.preheader ]
  %j.457 = phi i64 [ %537, %536 ], [ %459, %.lr.ph59.preheader ]
  %466 = load i64*, i64** %453, align 8
  %467 = getelementptr inbounds i64, i64* %466, i64 %j.457
  %468 = load i64, i64* %467, align 8
  %469 = getelementptr inbounds i64, i64* %465, i64 %468
  %470 = load i64, i64* %469, align 8
  %471 = getelementptr inbounds i64, i64* %464, i64 %468
  %472 = load i64, i64* %471, align 8
  %473 = add i64 %472, %470
  %474 = icmp ult i64 %470, %473
  br i1 %474, label %.lr.ph51.preheader, label %._crit_edge52

.lr.ph51.preheader:                               ; preds = %.lr.ph59
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %478, %.lr.ph51.preheader
  %k9.049 = phi i64 [ %479, %478 ], [ %470, %.lr.ph51.preheader ]
  %475 = getelementptr inbounds i64, i64* %466, i64 %k9.049
  %476 = load i64, i64* %475, align 8
  %477 = icmp eq i64 %476, %i.761
  br i1 %477, label %._crit_edge52.loopexit, label %478

; <label>:478                                     ; preds = %.lr.ph51
  %479 = add i64 %k9.049, 1
  %480 = icmp ult i64 %479, %473
  br i1 %480, label %.lr.ph51, label %._crit_edge52.loopexit

._crit_edge52.loopexit:                           ; preds = %478, %.lr.ph51
  %k9.0.lcssa.ph = phi i64 [ %k9.049, %.lr.ph51 ], [ %479, %478 ]
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.loopexit, %.lr.ph59
  %k9.0.lcssa = phi i64 [ %470, %.lr.ph59 ], [ %k9.0.lcssa.ph, %._crit_edge52.loopexit ]
  %481 = icmp eq i64 %k9.0.lcssa, %473
  br i1 %481, label %.outer.preheader, label %536

.outer.preheader:                                 ; preds = %._crit_edge52
  br label %.outer

.outer:                                           ; preds = %493, %.outer.preheader
  %tries11.0.ph = phi i32 [ %494, %493 ], [ 9, %.outer.preheader ]
  %482 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %483 = icmp eq i64 %482, 0
  %484 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %484, i32 0, i32 3, i32 1)
  %485 = bitcast i64** %454 to i8*
  call void @llvm.prefetch(i8* %485, i32 0, i32 3, i32 1)
  %486 = bitcast i64* @MAX_CLUSTER_SIZE to i8*
  call void @llvm.prefetch(i8* %486, i32 0, i32 3, i32 1)
  %487 = getelementptr inbounds i64*, i64** %448, i64 %468
  %488 = bitcast i64** %487 to i8*
  call void @llvm.prefetch(i8* %488, i32 0, i32 3, i32 1)
  br i1 %483, label %._crit_edge56, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.outer
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55, %.lr.ph55.preheader
  call void @llvm.x86.sse2.pause() #5
  %489 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %490 = icmp eq i64 %489, 0
  br i1 %490, label %._crit_edge56.loopexit, label %.lr.ph55

._crit_edge56.loopexit:                           ; preds = %.lr.ph55
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %._crit_edge56.loopexit, %.outer
  %491 = icmp slt i32 %tries11.0.ph, 2
  br i1 %491, label %492, label %493

; <label>:492                                     ; preds = %._crit_edge56
  %tries11.0.ph.lcssa = phi i32 [ %tries11.0.ph, %._crit_edge56 ]
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #5
  br label %502

; <label>:493                                     ; preds = %._crit_edge56
  %494 = add nsw i32 %tries11.0.ph, -1
  %495 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 9, i64 0, i64 9, i64 4294967295) #5, !srcloc !10
  %496 = trunc i64 %495 to i32
  %497 = icmp eq i32 %496, -1
  br i1 %497, label %498, label %.outer

; <label>:498                                     ; preds = %493
  %tries11.0.ph.lcssa266 = phi i32 [ %tries11.0.ph, %493 ]
  %499 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %500 = icmp eq i64 %499, 0
  br i1 %500, label %502, label %501

; <label>:501                                     ; preds = %498
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !11
  br label %502

; <label>:502                                     ; preds = %501, %498, %492
  %tries11.0.ph267 = phi i32 [ %tries11.0.ph.lcssa266, %498 ], [ %tries11.0.ph.lcssa266, %501 ], [ %tries11.0.ph.lcssa, %492 ]
  %503 = load i64*, i64** %454, align 8
  %504 = getelementptr inbounds i64, i64* %503, i64 %468
  %505 = load i64, i64* %504, align 8
  %506 = add nsw i64 %505, 1
  store i64 %506, i64* %504, align 8
  %507 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %508 = icmp slt i64 %505, %507
  br i1 %508, label %509, label %513

; <label>:509                                     ; preds = %502
  %510 = mul i64 %507, %468
  %511 = add i64 %510, %505
  %512 = getelementptr inbounds i64, i64* %429, i64 %511
  store i64 %i.761, i64* %512, align 8
  br label %532

; <label>:513                                     ; preds = %502
  %514 = srem i64 %505, %507
  %515 = icmp eq i64 %514, 0
  br i1 %515, label %516, label %525

; <label>:516                                     ; preds = %513
  %517 = shl i64 %507, 3
  %518 = call noalias i8* @malloc(i64 %517) #5
  %519 = icmp eq i8* %518, null
  br i1 %519, label %520, label %521

; <label>:520                                     ; preds = %516
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.6, i64 0, i64 0), i32 489, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.computeGraph, i64 0, i64 0)) #14
  unreachable

; <label>:521                                     ; preds = %516
  %522 = bitcast i8* %518 to i64*
  %523 = getelementptr inbounds i64*, i64** %448, i64 %468
  %524 = bitcast i64** %523 to i8**
  store i8* %518, i8** %524, align 8
  %.pre159 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  br label %528

; <label>:525                                     ; preds = %513
  %526 = getelementptr inbounds i64*, i64** %448, i64 %468
  %527 = load i64*, i64** %526, align 8
  br label %528

; <label>:528                                     ; preds = %525, %521
  %529 = phi i64 [ %.pre159, %521 ], [ %507, %525 ]
  %a.0 = phi i64* [ %522, %521 ], [ %527, %525 ]
  %530 = srem i64 %505, %529
  %531 = getelementptr inbounds i64, i64* %a.0, i64 %530
  store i64 %i.761, i64* %531, align 8
  br label %532

; <label>:532                                     ; preds = %528, %509
  %533 = icmp sgt i32 %tries11.0.ph267, 1
  br i1 %533, label %534, label %535

; <label>:534                                     ; preds = %532
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 9) #5, !srcloc !12
  br label %536

; <label>:535                                     ; preds = %532
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #5
  br label %536

; <label>:536                                     ; preds = %535, %534, %._crit_edge52
  %537 = add i64 %j.457, 1
  %538 = load i64*, i64** %223, align 8
  %539 = getelementptr inbounds i64, i64* %538, i64 %i.761
  %540 = load i64, i64* %539, align 8
  %541 = load i64*, i64** %142, align 8
  %542 = getelementptr inbounds i64, i64* %541, i64 %i.761
  %543 = load i64, i64* %542, align 8
  %544 = add i64 %543, %540
  %545 = icmp ult i64 %537, %544
  br i1 %545, label %.lr.ph59, label %._crit_edge60.loopexit

._crit_edge60.loopexit:                           ; preds = %536
  %.lcssa269 = phi i64* [ %541, %536 ]
  %.lcssa268 = phi i64* [ %538, %536 ]
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %._crit_edge60.loopexit, %455
  %546 = phi i64* [ %456, %455 ], [ %.lcssa269, %._crit_edge60.loopexit ]
  %547 = phi i64* [ %457, %455 ], [ %.lcssa268, %._crit_edge60.loopexit ]
  %548 = add nsw i64 %i.761, 1
  %549 = load i64, i64* %i_stop, align 8
  %550 = icmp slt i64 %548, %549
  br i1 %550, label %455, label %._crit_edge64.loopexit

._crit_edge64.loopexit:                           ; preds = %._crit_edge60
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %.._crit_edge64_crit_edge
  %.pre-phi169 = phi i64** [ %.pre168, %.._crit_edge64_crit_edge ], [ %454, %._crit_edge64.loopexit ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %551 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 11
  %552 = load i64*, i64** %551, align 8
  %553 = load i64*, i64** %.pre-phi169, align 8
  %554 = load i64, i64* %.pre-phi, align 8
  call fastcc void @prefix_sums(i64* %552, i64* %553, i64 %554)
  br i1 %79, label %555, label %570

; <label>:555                                     ; preds = %._crit_edge64
  %556 = load i64, i64* %.pre-phi, align 8
  %557 = add i64 %556, -1
  %558 = load i64*, i64** %551, align 8
  %559 = getelementptr inbounds i64, i64* %558, i64 %557
  %560 = load i64, i64* %559, align 8
  %561 = load i64*, i64** %.pre-phi169, align 8
  %562 = getelementptr inbounds i64, i64* %561, i64 %557
  %563 = load i64, i64* %562, align 8
  %564 = add i64 %563, %560
  %565 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 3
  store i64 %564, i64* %565, align 8
  %566 = shl i64 %564, 3
  %567 = call noalias i8* @malloc(i64 %566) #5
  %568 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 12
  %569 = bitcast i64** %568 to i8**
  store i8* %567, i8** %569, align 8
  br label %570

; <label>:570                                     ; preds = %555, %._crit_edge64
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %571 = load i64, i64* %i_start, align 8
  %572 = load i64, i64* %i_stop, align 8
  %573 = icmp slt i64 %571, %572
  br i1 %573, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %570
  %574 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 12
  %.pre160 = load i64*, i64** %551, align 8
  %.pre161 = load i64*, i64** %.pre-phi169, align 8
  br label %575

; <label>:575                                     ; preds = %._crit_edge43, %.lr.ph47
  %576 = phi i64 [ %572, %.lr.ph47 ], [ %615, %._crit_edge43 ]
  %577 = phi i64* [ %.pre161, %.lr.ph47 ], [ %616, %._crit_edge43 ]
  %578 = phi i64* [ %.pre160, %.lr.ph47 ], [ %617, %._crit_edge43 ]
  %i.844 = phi i64 [ %571, %.lr.ph47 ], [ %618, %._crit_edge43 ]
  %579 = getelementptr inbounds i64, i64* %578, i64 %i.844
  %580 = load i64, i64* %579, align 8
  %581 = getelementptr inbounds i64, i64* %577, i64 %i.844
  %582 = load i64, i64* %581, align 8
  %583 = add i64 %582, %580
  %584 = icmp ult i64 %580, %583
  br i1 %584, label %.lr.ph42, label %._crit_edge43

.lr.ph42:                                         ; preds = %575
  %585 = getelementptr inbounds i64*, i64** %448, i64 %i.844
  br label %586

; <label>:586                                     ; preds = %605, %.lr.ph42
  %587 = phi i64 [ %580, %.lr.ph42 ], [ %609, %605 ]
  %j.540 = phi i64 [ %580, %.lr.ph42 ], [ %606, %605 ]
  %588 = sub i64 %j.540, %587
  %589 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %590 = icmp ult i64 %588, %589
  br i1 %590, label %591, label %598

; <label>:591                                     ; preds = %586
  %592 = mul nsw i64 %589, %i.844
  %593 = add i64 %588, %592
  %594 = getelementptr inbounds i64, i64* %429, i64 %593
  %595 = load i64, i64* %594, align 8
  %596 = load i64*, i64** %574, align 8
  %597 = getelementptr inbounds i64, i64* %596, i64 %j.540
  store i64 %595, i64* %597, align 8
  br label %605

; <label>:598                                     ; preds = %586
  %599 = urem i64 %588, %589
  %600 = load i64*, i64** %585, align 8
  %601 = getelementptr inbounds i64, i64* %600, i64 %599
  %602 = load i64, i64* %601, align 8
  %603 = load i64*, i64** %574, align 8
  %604 = getelementptr inbounds i64, i64* %603, i64 %j.540
  store i64 %602, i64* %604, align 8
  br label %605

; <label>:605                                     ; preds = %598, %591
  %606 = add i64 %j.540, 1
  %607 = load i64*, i64** %551, align 8
  %608 = getelementptr inbounds i64, i64* %607, i64 %i.844
  %609 = load i64, i64* %608, align 8
  %610 = load i64*, i64** %.pre-phi169, align 8
  %611 = getelementptr inbounds i64, i64* %610, i64 %i.844
  %612 = load i64, i64* %611, align 8
  %613 = add i64 %612, %609
  %614 = icmp ult i64 %606, %613
  br i1 %614, label %586, label %._crit_edge43.loopexit

._crit_edge43.loopexit:                           ; preds = %605
  %.lcssa265 = phi i64* [ %610, %605 ]
  %.lcssa264 = phi i64* [ %607, %605 ]
  %.pre162 = load i64, i64* %i_stop, align 8
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %._crit_edge43.loopexit, %575
  %615 = phi i64 [ %.pre162, %._crit_edge43.loopexit ], [ %576, %575 ]
  %616 = phi i64* [ %.lcssa265, %._crit_edge43.loopexit ], [ %577, %575 ]
  %617 = phi i64* [ %.lcssa264, %._crit_edge43.loopexit ], [ %578, %575 ]
  %618 = add nsw i64 %i.844, 1
  %619 = icmp slt i64 %618, %615
  br i1 %619, label %575, label %._crit_edge48.loopexit

._crit_edge48.loopexit:                           ; preds = %._crit_edge43
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %._crit_edge48.loopexit, %570
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %79, label %620, label %622

; <label>:620                                     ; preds = %._crit_edge48
  %621 = bitcast i64* %429 to i8*
  call void @free(i8* %621) #5
  br label %622

; <label>:622                                     ; preds = %620, %._crit_edge48
  %623 = load i64, i64* %i_start, align 8
  %624 = load i64, i64* %i_stop, align 8
  %625 = icmp slt i64 %623, %624
  br i1 %625, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %622
  br label %.lr.ph

.lr.ph:                                           ; preds = %636, %.lr.ph.preheader
  %626 = phi i64 [ %637, %636 ], [ %624, %.lr.ph.preheader ]
  %i.939 = phi i64 [ %638, %636 ], [ %623, %.lr.ph.preheader ]
  %627 = load i64*, i64** %.pre-phi169, align 8
  %628 = getelementptr inbounds i64, i64* %627, i64 %i.939
  %629 = load i64, i64* %628, align 8
  %630 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %631 = icmp sgt i64 %629, %630
  br i1 %631, label %632, label %636

; <label>:632                                     ; preds = %.lr.ph
  %633 = getelementptr inbounds i64*, i64** %448, i64 %i.939
  %634 = bitcast i64** %633 to i8**
  %635 = load i8*, i8** %634, align 8
  call void @free(i8* %635) #5
  %.pre163 = load i64, i64* %i_stop, align 8
  br label %636

; <label>:636                                     ; preds = %632, %.lr.ph
  %637 = phi i64 [ %626, %.lr.ph ], [ %.pre163, %632 ]
  %638 = add nsw i64 %i.939, 1
  %639 = icmp slt i64 %638, %637
  br i1 %639, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %636
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %622
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %79, label %640, label %642

; <label>:640                                     ; preds = %._crit_edge
  %641 = bitcast i64** %448 to i8*
  call void @free(i8* %641) #5
  br label %642

; <label>:642                                     ; preds = %640, %._crit_edge
  %643 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %644 = trunc i64 %643 to i32
  %645 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %646 = load i32, i32* %645, align 4
  call void @SimRoiEnd(i32 %644, i32 %646) #5
  ret void
}

declare void @SimRoiStart(i32) #4

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #5

; Function Attrs: nounwind uwtable
define internal fastcc void @prefix_sums(i64* nocapture %result, i64* nocapture readonly %input, i64 %arraySize) unnamed_addr #0 {
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %2 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #5
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = shl i64 %2, 10
  %6 = tail call noalias i8* @malloc(i64 %5) #5
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.6, i64 0, i64 0), i32 98, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.prefix_sums, i64 0, i64 0)) #14
  unreachable

; <label>:9                                       ; preds = %4
  store i8* %6, i8** bitcast (i64** @global_p to i8**), align 8
  br label %10

; <label>:10                                      ; preds = %9, %0
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
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
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
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
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
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
  br i1 %92, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !16

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
  br i1 %97, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !17

.loopexit.loopexit:                               ; preds = %.lr.ph
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %middle.block, %53, %.loopexit1
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %3, label %98, label %100

; <label>:98                                      ; preds = %.loopexit
  %99 = bitcast i64* %11 to i8*
  tail call void @free(i8* %99) #5
  br label %100

; <label>:100                                     ; preds = %98, %.loopexit
  ret void
}

declare void @SimRoiEnd(i32, i32) #4

; Function Attrs: norecurse nounwind uwtable
define void @createPartition(i64 %min, i64 %max, i64 %id, i64 %n, i64* nocapture %startPtr, i64* nocapture %stopPtr) #6 {
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
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #5
  %5 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %6 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #5
  %7 = icmp eq i64 %5, 0
  %8 = bitcast i8* %argPtr to i64*
  br i1 %7, label %9, label %._crit_edge131

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %8, align 8
  %11 = shl i64 %10, 3
  %12 = tail call noalias i8* @malloc(i64 %11) #5
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %9
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.14, i64 0, i64 0), i32 121, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #14
  unreachable

; <label>:15                                      ; preds = %9
  store i8* %12, i8** bitcast (i64** @global_Index to i8**), align 8
  %16 = tail call noalias i8* @malloc(i64 %11) #5
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %15
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.15, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.14, i64 0, i64 0), i32 124, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #14
  unreachable

; <label>:19                                      ; preds = %15
  store i8* %16, i8** bitcast (i64** @global_neighbourArray to i8**), align 8
  %20 = tail call noalias i8* @malloc(i64 %11) #5
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %19
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.16, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.14, i64 0, i64 0), i32 127, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #14
  unreachable

; <label>:23                                      ; preds = %19
  store i8* %20, i8** bitcast (i64** @global_IndexSorted to i8**), align 8
  %24 = tail call noalias i8* @malloc(i64 %11) #5
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %23
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4.17, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.14, i64 0, i64 0), i32 130, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #14
  unreachable

; <label>:27                                      ; preds = %23
  store i8* %24, i8** bitcast (i64** @global_neighbourArraySorted to i8**), align 8
  br label %._crit_edge131

._crit_edge131:                                   ; preds = %27, %0
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %28 = load i64*, i64** @global_Index, align 8
  %29 = load i64*, i64** @global_neighbourArray, align 8
  %30 = load i64*, i64** @global_IndexSorted, align 8
  %31 = load i64*, i64** @global_neighbourArraySorted, align 8
  %32 = load i64, i64* %8, align 8
  call void @createPartition(i64 0, i64 %32, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #5
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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %53 = load i64, i64* %8, align 8
  call void @all_radixsort_node_aux_s3(i64 %53, i64* %29, i64* %31, i64* %28, i64* %30) #5
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %7, label %54, label %93

; <label>:54                                      ; preds = %._crit_edge104
  %55 = bitcast i64* %28 to i8*
  call void @free(i8* %55) #5
  %56 = bitcast i64* %29 to i8*
  call void @free(i8* %56) #5
  %57 = load i64, i64* %8, align 8
  %58 = shl i64 %57, 3
  %59 = call noalias i8* @malloc(i64 %58) #5
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %54
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5.18, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.14, i64 0, i64 0), i32 179, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #14
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
  %71 = call noalias i8* @malloc(i64 %70) #5
  br label %80

; <label>:72                                      ; preds = %62
  %73 = uitofp i64 %67 to double
  %74 = fmul double %73, 2.000000e-01
  %75 = sitofp i64 %6 to double
  %76 = fdiv double %74, %75
  %77 = fmul double %76, 2.400000e+01
  %78 = fptoui double %77 to i64
  %79 = call noalias i8* @malloc(i64 %78) #5
  br label %80

; <label>:80                                      ; preds = %72, %68
  %pCutSet.0.in = phi i8* [ %71, %68 ], [ %79, %72 ]
  %81 = icmp eq i8* %pCutSet.0.in, null
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %80
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.19, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.14, i64 0, i64 0), i32 194, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #14
  unreachable

; <label>:83                                      ; preds = %80
  store i8* %pCutSet.0.in, i8** bitcast (%struct.edge** @global_pCutSet to i8**), align 8
  %84 = shl i64 %6, 3
  %85 = call noalias i8* @malloc(i64 %84) #5
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %83
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.20, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.14, i64 0, i64 0), i32 201, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #14
  unreachable

; <label>:88                                      ; preds = %83
  store i8* %85, i8** bitcast (i64** @global_startV to i8**), align 8
  %89 = call noalias i8* @malloc(i64 %84) #5
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %88
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8.21, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.14, i64 0, i64 0), i32 204, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #14
  unreachable

; <label>:92                                      ; preds = %88
  store i8* %89, i8** bitcast (i64** @global_clusterSize to i8**), align 8
  br label %93

; <label>:93                                      ; preds = %92, %._crit_edge104
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
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

; <label>:119                                     ; preds = %524, %._crit_edge100
  %120 = phi i64 [ %.pre, %._crit_edge100 ], [ %529, %524 ]
  %cutSetIndex.0 = phi i64 [ 0, %._crit_edge100 ], [ %cutSetIndex.14, %524 ]
  %currIndex.0 = phi i64 [ 0, %._crit_edge100 ], [ %currIndex.4, %524 ]
  %iter.0 = phi i64 [ 0, %._crit_edge100 ], [ %525, %524 ]
  %verticesVisited.0 = phi i64 [ 0, %._crit_edge100 ], [ %527, %524 ]
  %121 = icmp ult i64 %verticesVisited.0, %120
  br i1 %121, label %122, label %535

; <label>:122                                     ; preds = %119
  store i64 -1, i64* %105, align 8
  store i64 0, i64* %106, align 8
  %123 = load i64, i64* %8, align 8
  %124 = icmp eq i64 %currIndex.0, %123
  %.currIndex.0 = select i1 %124, i64 0, i64 %currIndex.0
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %501 = add nsw i64 %iter.0, 1
  store i64 %501, i64* @global_iter, align 8
  br label %.outer17.preheader

.critedge:                                        ; preds = %.loopexit19
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br label %.outer17.preheader

.outer17.preheader:                               ; preds = %.critedge, %500
  br label %.outer17

.outer17:                                         ; preds = %509, %.outer17.preheader
  %tries.0.ph = phi i32 [ %510, %509 ], [ 9, %.outer17.preheader ]
  %502 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %503 = icmp eq i64 %502, 0
  %504 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %504, i32 0, i32 3, i32 1)
  %505 = bitcast i64* @global_cliqueSize to i8*
  call void @llvm.prefetch(i8* %505, i32 0, i32 3, i32 1)
  br i1 %503, label %._crit_edge96, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %.outer17
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95, %.lr.ph95.preheader
  call void @llvm.x86.sse2.pause() #5
  %506 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %507 = icmp eq i64 %506, 0
  br i1 %507, label %._crit_edge96.loopexit, label %.lr.ph95

._crit_edge96.loopexit:                           ; preds = %.lr.ph95
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge96.loopexit, %.outer17
  %508 = icmp slt i32 %tries.0.ph, 2
  br i1 %508, label %521, label %509

; <label>:509                                     ; preds = %._crit_edge96
  %510 = add nsw i32 %tries.0.ph, -1
  %511 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 5, i64 0, i64 5, i64 4294967295) #5, !srcloc !18
  %512 = trunc i64 %511 to i32
  %513 = icmp eq i32 %512, -1
  br i1 %513, label %514, label %.outer17

; <label>:514                                     ; preds = %509
  %515 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %516 = icmp eq i64 %515, 0
  br i1 %516, label %518, label %517

; <label>:517                                     ; preds = %514
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !19
  br label %518

; <label>:518                                     ; preds = %517, %514
  %519 = load i64, i64* @global_cliqueSize, align 8
  %520 = add i64 %519, %cliqueSize.5
  store i64 %520, i64* @global_cliqueSize, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 5) #5, !srcloc !20
  br label %524

; <label>:521                                     ; preds = %._crit_edge96
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #5
  %522 = load i64, i64* @global_cliqueSize, align 8
  %523 = add i64 %522, %cliqueSize.5
  store i64 %523, i64* @global_cliqueSize, align 8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #5
  br label %524

; <label>:524                                     ; preds = %521, %518
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %525 = load i64, i64* @global_iter, align 8
  %526 = load i64, i64* @global_cliqueSize, align 8
  %527 = add i64 %526, %verticesVisited.0
  %528 = uitofp i64 %527 to double
  %529 = load i64, i64* %8, align 8
  %530 = uitofp i64 %529 to double
  %531 = fmul double %530, 9.500000e-01
  %532 = fcmp oge double %528, %531
  %533 = lshr i64 %529, 1
  %534 = icmp ugt i64 %525, %533
  %or.cond6 = or i1 %534, %532
  br i1 %or.cond6, label %535, label %119

; <label>:535                                     ; preds = %524, %119
  %cutSetIndex.15 = phi i64 [ %cutSetIndex.14, %524 ], [ %cutSetIndex.0, %119 ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %7, label %536, label %546

; <label>:536                                     ; preds = %535
  %537 = shl i64 %6, 3
  %538 = call noalias i8* @malloc(i64 %537) #5
  %539 = icmp eq i8* %538, null
  br i1 %539, label %540, label %541

; <label>:540                                     ; preds = %536
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9.22, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.14, i64 0, i64 0), i32 579, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #14
  unreachable

; <label>:541                                     ; preds = %536
  store i8* %538, i8** bitcast (i64** @global_edgeStartCounter to i8**), align 8
  %542 = call noalias i8* @malloc(i64 %537) #5
  %543 = icmp eq i8* %542, null
  br i1 %543, label %544, label %545

; <label>:544                                     ; preds = %541
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.14, i64 0, i64 0), i32 582, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #14
  unreachable

; <label>:545                                     ; preds = %541
  store i8* %542, i8** bitcast (i64** @global_edgeEndCounter to i8**), align 8
  br label %546

; <label>:546                                     ; preds = %545, %535
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %547 = load i64*, i64** @global_edgeStartCounter, align 8
  %548 = load i64*, i64** @global_edgeEndCounter, align 8
  %549 = getelementptr inbounds i64, i64* %548, i64 %5
  store i64 %cutSetIndex.15, i64* %549, align 8
  %550 = getelementptr inbounds i64, i64* %547, i64 %5
  store i64 0, i64* %550, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %551 = icmp sgt i64 %6, 1
  %or.cond106 = and i1 %7, %551
  br i1 %or.cond106, label %.lr.ph33.preheader, label %.outer.preheader

.lr.ph33.preheader:                               ; preds = %546
  %552 = and i64 %6, 1
  %lcmp.mod = icmp eq i64 %552, 0
  br i1 %lcmp.mod, label %.lr.ph33.prol, label %.lr.ph33.preheader.split

.lr.ph33.prol:                                    ; preds = %.lr.ph33.preheader
  %553 = load i64, i64* %548, align 8
  %554 = getelementptr inbounds i64, i64* %548, i64 1
  %555 = load i64, i64* %554, align 8
  %556 = add i64 %555, %553
  store i64 %556, i64* %554, align 8
  %557 = getelementptr inbounds i64, i64* %547, i64 1
  store i64 %553, i64* %557, align 8
  br label %.lr.ph33.preheader.split

.lr.ph33.preheader.split:                         ; preds = %.lr.ph33.prol, %.lr.ph33.preheader
  %t20.032.unr = phi i64 [ 1, %.lr.ph33.preheader ], [ 2, %.lr.ph33.prol ]
  %558 = icmp eq i64 %6, 2
  br i1 %558, label %.outer.preheader.loopexit, label %.lr.ph33.preheader.split.split

.lr.ph33.preheader.split.split:                   ; preds = %.lr.ph33.preheader.split
  br label %.lr.ph33

.lr.ph33:                                         ; preds = %.lr.ph33, %.lr.ph33.preheader.split.split
  %t20.032 = phi i64 [ %t20.032.unr, %.lr.ph33.preheader.split.split ], [ %573, %.lr.ph33 ]
  %559 = add nsw i64 %t20.032, -1
  %560 = getelementptr inbounds i64, i64* %548, i64 %559
  %561 = load i64, i64* %560, align 8
  %562 = getelementptr inbounds i64, i64* %548, i64 %t20.032
  %563 = load i64, i64* %562, align 8
  %564 = add i64 %563, %561
  store i64 %564, i64* %562, align 8
  %565 = getelementptr inbounds i64, i64* %547, i64 %t20.032
  store i64 %561, i64* %565, align 8
  %566 = add nuw nsw i64 %t20.032, 1
  %567 = getelementptr inbounds i64, i64* %548, i64 %t20.032
  %568 = load i64, i64* %567, align 8
  %569 = getelementptr inbounds i64, i64* %548, i64 %566
  %570 = load i64, i64* %569, align 8
  %571 = add i64 %570, %568
  store i64 %571, i64* %569, align 8
  %572 = getelementptr inbounds i64, i64* %547, i64 %566
  store i64 %568, i64* %572, align 8
  %573 = add nsw i64 %t20.032, 2
  %exitcond.1 = icmp eq i64 %573, %6
  br i1 %exitcond.1, label %.outer.preheader.loopexit.unr-lcssa, label %.lr.ph33

.outer.preheader.loopexit.unr-lcssa:              ; preds = %.lr.ph33
  br label %.outer.preheader.loopexit

.outer.preheader.loopexit:                        ; preds = %.outer.preheader.loopexit.unr-lcssa, %.lr.ph33.preheader.split
  br label %.outer.preheader

.outer.preheader:                                 ; preds = %.outer.preheader.loopexit, %546
  br label %.outer

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %.lr.ph30
  call void @llvm.x86.sse2.pause() #5
  %574 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %575 = icmp eq i64 %574, 0
  br i1 %575, label %._crit_edge31.loopexit, label %.lr.ph30

._crit_edge31.loopexit:                           ; preds = %.lr.ph30
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %.outer, %._crit_edge31.loopexit
  %576 = icmp slt i32 %tries22.0.ph, 2
  br i1 %576, label %593, label %577

; <label>:577                                     ; preds = %._crit_edge31
  %578 = add nsw i32 %tries22.0.ph, -1
  %579 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 6, i64 0, i64 6, i64 4294967295) #5, !srcloc !18
  %580 = trunc i64 %579 to i32
  %581 = icmp eq i32 %580, -1
  br i1 %581, label %586, label %.outer

.outer:                                           ; preds = %577, %.outer.preheader
  %tries22.0.ph = phi i32 [ %578, %577 ], [ 9, %.outer.preheader ]
  %582 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %583 = icmp eq i64 %582, 0
  %584 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %584, i32 0, i32 3, i32 1)
  %585 = bitcast i64* @global_cutSetIndex to i8*
  call void @llvm.prefetch(i8* %585, i32 0, i32 3, i32 1)
  br i1 %583, label %._crit_edge31, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.outer
  br label %.lr.ph30

; <label>:586                                     ; preds = %577
  %587 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %588 = icmp eq i64 %587, 0
  br i1 %588, label %590, label %589

; <label>:589                                     ; preds = %586
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !19
  br label %590

; <label>:590                                     ; preds = %589, %586
  %591 = load i64, i64* @global_cutSetIndex, align 8
  %592 = add i64 %591, %cutSetIndex.15
  store i64 %592, i64* @global_cutSetIndex, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 6) #5, !srcloc !20
  br label %596

; <label>:593                                     ; preds = %._crit_edge31
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #5
  %594 = load i64, i64* @global_cutSetIndex, align 8
  %595 = add i64 %594, %cutSetIndex.15
  store i64 %595, i64* @global_cutSetIndex, align 8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #5
  br label %596

; <label>:596                                     ; preds = %593, %590
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %7, label %597, label %604

; <label>:597                                     ; preds = %596
  %598 = load i64, i64* @global_cutSetIndex, align 8
  %599 = mul i64 %598, 24
  %600 = call noalias i8* @malloc(i64 %599) #5
  %601 = icmp eq i8* %600, null
  br i1 %601, label %602, label %603

; <label>:602                                     ; preds = %597
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.14, i64 0, i64 0), i32 619, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.cutClusters, i64 0, i64 0)) #14
  unreachable

; <label>:603                                     ; preds = %597
  store i8* %600, i8** bitcast (%struct.edge** @global_cutSet to i8**), align 8
  br label %604

; <label>:604                                     ; preds = %603, %596
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %605 = load %struct.edge*, %struct.edge** @global_cutSet, align 8
  %606 = load i64, i64* %550, align 8
  %607 = load i64, i64* %549, align 8
  %608 = icmp ult i64 %606, %607
  br i1 %608, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %604
  %609 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 0, i32 0
  %610 = load i64, i64* %609, align 8
  %611 = getelementptr inbounds %struct.edge, %struct.edge* %605, i64 %606, i32 0
  store i64 %610, i64* %611, align 8
  %612 = load i64, i64* %550, align 8
  %613 = sub i64 %606, %612
  %614 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %613, i32 1
  %615 = load i64, i64* %614, align 8
  %616 = getelementptr inbounds %struct.edge, %struct.edge* %605, i64 %606, i32 1
  store i64 %615, i64* %616, align 8
  %617 = add nsw i64 %606, 1
  %618 = load i64, i64* %549, align 8
  %619 = icmp ult i64 %617, %618
  br i1 %619, label %.lr.ph..lr.ph_crit_edge.preheader, label %._crit_edge

.lr.ph..lr.ph_crit_edge.preheader:                ; preds = %.lr.ph.preheader
  br label %.lr.ph..lr.ph_crit_edge

.lr.ph..lr.ph_crit_edge:                          ; preds = %.lr.ph..lr.ph_crit_edge, %.lr.ph..lr.ph_crit_edge.preheader
  %620 = phi i64 [ %630, %.lr.ph..lr.ph_crit_edge ], [ %617, %.lr.ph..lr.ph_crit_edge.preheader ]
  %.pre130 = load i64, i64* %550, align 8
  %621 = sub i64 %620, %.pre130
  %622 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %621, i32 0
  %623 = load i64, i64* %622, align 8
  %624 = getelementptr inbounds %struct.edge, %struct.edge* %605, i64 %620, i32 0
  store i64 %623, i64* %624, align 8
  %625 = load i64, i64* %550, align 8
  %626 = sub i64 %620, %625
  %627 = getelementptr inbounds %struct.edge, %struct.edge* %95, i64 %626, i32 1
  %628 = load i64, i64* %627, align 8
  %629 = getelementptr inbounds %struct.edge, %struct.edge* %605, i64 %620, i32 1
  store i64 %628, i64* %629, align 8
  %630 = add nsw i64 %620, 1
  %631 = load i64, i64* %549, align 8
  %632 = icmp ult i64 %630, %631
  br i1 %632, label %.lr.ph..lr.ph_crit_edge, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph..lr.ph_crit_edge
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.preheader, %604
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %7, label %633, label %643

; <label>:633                                     ; preds = %._crit_edge
  %634 = bitcast i64* %547 to i8*
  call void @free(i8* %634) #5
  %635 = bitcast i64* %548 to i8*
  call void @free(i8* %635) #5
  %636 = bitcast %struct.edge* %95 to i8*
  call void @free(i8* %636) #5
  %637 = bitcast i64* %30 to i8*
  call void @free(i8* %637) #5
  %638 = bitcast i64* %31 to i8*
  call void @free(i8* %638) #5
  %639 = bitcast i64* %96 to i8*
  call void @free(i8* %639) #5
  %640 = bitcast i64* %97 to i8*
  call void @free(i8* %640) #5
  %641 = bitcast %struct.edge* %605 to i8*
  call void @free(i8* %641) #5
  %642 = bitcast i64* %94 to i8*
  call void @free(i8* %642) #5
  br label %643

; <label>:643                                     ; preds = %633, %._crit_edge
  %644 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %645 = trunc i64 %644 to i32
  %646 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %647 = load i32, i32* %646, align 4
  call void @SimRoiEnd(i32 %645, i32 %647) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @findSubGraphs0(i8* nocapture readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = bitcast i8* %argPtr to %struct.graph**
  %2 = load %struct.graph*, %struct.graph** %1, align 8
  %3 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %4 = bitcast i8* %3 to %struct.V**
  %5 = load %struct.V*, %struct.V** %4, align 8
  %6 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %7 = bitcast i8* %6 to %struct.V**
  %8 = load %struct.V*, %struct.V** %7, align 8
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
  %21 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %22 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #5
  %23 = add nsw i64 %20, %14
  call void @createPartition(i64 0, i64 %23, i64 %21, i64 %22, i64* nonnull %i_start, i64* nonnull %i_stop) #5
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
  %34 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %33, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* %27, align 8
  %36 = mul i64 %35, %i.026
  %37 = add i64 %36, %j.024
  %38 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %37, i32 1
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
  %49 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %48, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* %27, align 8
  %51 = mul i64 %50, %43
  %52 = add i64 %51, %j1.021
  %53 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %52, i32 1
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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %60 = load i64, i64* %27, align 8
  %61 = shl i64 %60, 3
  %62 = call noalias i8* @malloc(i64 %61) #5
  %63 = bitcast i8* %62 to i64*
  %64 = icmp eq i8* %62, null
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %._crit_edge31
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 128, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs0, i64 0, i64 0)) #14
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
  %82 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %81, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %27, align 8
  %84 = mul i64 %83, %i.117
  %85 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %84, i32 1
  store i64 -1, i64* %85, align 8
  %86 = getelementptr inbounds %struct.edge, %struct.edge* %11, i64 %i.117, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %27, align 8
  %89 = mul i64 %88, %i.117
  %90 = add i64 %89, 1
  %91 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %90, i32 0
  store i64 %87, i64* %91, align 8
  %92 = load i64, i64* %27, align 8
  %93 = mul i64 %92, %i.117
  %94 = add i64 %93, 1
  %95 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %94, i32 1
  store i64 1, i64* %95, align 8
  %96 = load i64, i64* %27, align 8
  %97 = mul i64 %96, %i.117
  %98 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %97, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i64, i64* %63, i64 %99
  store i64 1, i64* %100, align 8
  %101 = add i64 %97, 1
  %102 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %101, i32 0
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
  %111 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %110, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 1
  %114 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %110, i32 0
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
  %134 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %133, i32 0
  store i64 %126, i64* %134, align 8
  %135 = load i64, i64* %27, align 8
  %136 = mul i64 %135, %i.117
  %137 = add i64 %136, %verticesVisited.113
  %138 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %137, i32 1
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
  %152 = getelementptr inbounds %struct.V, %struct.V* %5, i64 %151, i32 1
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
  %162 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %161, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load i64, i64* %27, align 8
  %164 = mul i64 %163, %158
  %165 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %164, i32 1
  store i64 -1, i64* %165, align 8
  %166 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %158, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %27, align 8
  %169 = mul i64 %168, %158
  %170 = add i64 %169, 1
  %171 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %170, i32 0
  store i64 %167, i64* %171, align 8
  %172 = load i64, i64* %27, align 8
  %173 = mul i64 %172, %158
  %174 = add i64 %173, 1
  %175 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %174, i32 1
  store i64 1, i64* %175, align 8
  %176 = load i64, i64* %27, align 8
  %177 = mul i64 %176, %158
  %178 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %177, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i64, i64* %63, i64 %179
  store i64 1, i64* %180, align 8
  %181 = add i64 %177, 1
  %182 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %181, i32 0
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
  %191 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %190, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 1
  %194 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %190, i32 0
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
  %214 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %213, i32 0
  store i64 %206, i64* %214, align 8
  %215 = load i64, i64* %27, align 8
  %216 = mul i64 %215, %158
  %217 = add i64 %216, %verticesVisited5.17
  %218 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %217, i32 1
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
  %230 = getelementptr inbounds %struct.V, %struct.V* %8, i64 %229, i32 1
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
  call void @free(i8* %62) #5
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
  %21 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %22 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #5
  %23 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = tail call noalias i8* @malloc(i64 %24) #5
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 257, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #14
  unreachable

; <label>:28                                      ; preds = %0
  %29 = add nsw i64 %20, %14
  call void @createPartition(i64 0, i64 %29, i64 %21, i64 %22, i64* nonnull %i_start, i64* nonnull %i_stop) #5
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
  %41 = call noalias i8* @malloc(i64 24) #5
  %42 = getelementptr inbounds %struct.l*, %struct.l** %5, i64 %i.020
  %43 = bitcast %struct.l** %42 to i8**
  store i8* %41, i8** %43, align 8
  %44 = icmp eq i8* %41, null
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %40
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.25, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 279, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #14
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
  %56 = call noalias i8* @malloc(i64 24) #5
  %57 = load %struct.l*, %struct.l** %42, align 8
  %58 = getelementptr inbounds %struct.l, %struct.l* %57, i64 0, i32 2
  %59 = bitcast %struct.l** %58 to i8**
  store i8* %56, i8** %59, align 8
  %60 = load %struct.l*, %struct.l** %42, align 8
  %61 = getelementptr inbounds %struct.l, %struct.l* %60, i64 0, i32 2
  %62 = bitcast %struct.l** %61 to i8**
  %63 = load i8*, i8** %62, align 8
  call void @free(i8* %63) #5
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
  %107 = call noalias i8* @malloc(i64 24) #5
  %108 = getelementptr inbounds %struct.l, %struct.l* %currV.115, i64 0, i32 2
  %109 = bitcast %struct.l** %108 to i8**
  store i8* %107, i8** %109, align 8
  %110 = icmp eq i8* %107, null
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %106
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.26, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 308, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #14
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
  %137 = call noalias i8* @malloc(i64 24) #5
  %138 = getelementptr inbounds %struct.l*, %struct.l** %8, i64 %136
  %139 = bitcast %struct.l** %138 to i8**
  store i8* %137, i8** %139, align 8
  %140 = icmp eq i8* %137, null
  br i1 %140, label %141, label %142

; <label>:141                                     ; preds = %135
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.27, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 330, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #14
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
  %152 = call noalias i8* @malloc(i64 24) #5
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
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.28, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 336, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #14
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
  %202 = call noalias i8* @malloc(i64 24) #5
  %203 = getelementptr inbounds %struct.l, %struct.l* %currV1.17, i64 0, i32 2
  %204 = bitcast %struct.l** %203 to i8**
  store i8* %202, i8** %204, align 8
  %205 = icmp eq i8* %202, null
  br i1 %205, label %206, label %207

; <label>:206                                     ; preds = %201
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.26, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 360, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs1, i64 0, i64 0)) #14
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
  call void @free(i8* %25) #5
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
  %21 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %22 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #5
  %23 = load i64, i64* @MAX_CLUSTER_SIZE, align 8
  %24 = mul nsw i64 %23, 5
  %25 = add nsw i64 %20, %14
  call void @createPartition(i64 0, i64 %25, i64 %21, i64 %22, i64* nonnull %i_start, i64* nonnull %i_stop) #5
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
  %42 = call noalias i8* @malloc(i64 240) #5
  %43 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %40, i32 1
  %44 = bitcast i64** %43 to i8**
  store i8* %42, i8** %44, align 8
  %45 = icmp eq i8* %42, null
  br i1 %45, label %.us-lcssa.us.loopexit, label %46

; <label>:46                                      ; preds = %39
  %47 = bitcast i8* %42 to i64*
  store i64 0, i64* %47, align 8
  %48 = call noalias i8* @malloc(i64 240) #5
  %49 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %40, i32 2
  %50 = bitcast %struct.V*** %49 to i8**
  store i8* %48, i8** %50, align 8
  %51 = icmp eq i8* %48, null
  br i1 %51, label %.us-lcssa29.us.loopexit, label %52

; <label>:52                                      ; preds = %46
  %53 = call noalias i8* @malloc(i64 %29) #5
  %54 = bitcast %struct.V*** %49 to i8***
  %55 = load i8**, i8*** %54, align 8
  store i8* %53, i8** %55, align 8
  %56 = load %struct.V**, %struct.V*** %49, align 8
  %57 = load %struct.V*, %struct.V** %56, align 8
  %58 = icmp eq %struct.V* %57, null
  br i1 %58, label %.us-lcssa30.us.loopexit, label %.lr.ph22.us.preheader

.lr.ph22.us.preheader:                            ; preds = %52
  %59 = getelementptr inbounds %struct.V, %struct.V* %57, i64 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.V**, %struct.V*** %49, align 8
  %61 = load %struct.V*, %struct.V** %60, align 8
  %62 = getelementptr inbounds %struct.V, %struct.V* %61, i64 0, i32 1
  store i64 0, i64* %62, align 8
  br i1 %36, label %.lr.ph22.us..lr.ph22.us_crit_edge.preheader, label %.loopexit6.us

.lr.ph22.us..lr.ph22.us_crit_edge.preheader:      ; preds = %.lr.ph22.us.preheader
  br i1 %lcmp.mod, label %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split, label %.lr.ph22.us..lr.ph22.us_crit_edge.prol

.lr.ph22.us..lr.ph22.us_crit_edge.prol:           ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge.preheader
  %.pre.prol = load %struct.V**, %struct.V*** %49, align 8
  %.pre43.prol = load %struct.V*, %struct.V** %.pre.prol, align 8
  %63 = getelementptr inbounds %struct.V, %struct.V* %.pre43.prol, i64 1, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.V**, %struct.V*** %49, align 8
  %65 = load %struct.V*, %struct.V** %64, align 8
  %66 = getelementptr inbounds %struct.V, %struct.V* %65, i64 1, i32 1
  store i64 0, i64* %66, align 8
  br label %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split

.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split: ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge.prol, %.lr.ph22.us..lr.ph22.us_crit_edge.preheader
  %.unr = phi i64 [ 1, %.lr.ph22.us..lr.ph22.us_crit_edge.preheader ], [ 2, %.lr.ph22.us..lr.ph22.us_crit_edge.prol ]
  br i1 %37, label %.loopexit6.us.loopexit66, label %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split.split

.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split.split: ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split
  br label %.lr.ph22.us..lr.ph22.us_crit_edge

.lr.ph22.us..lr.ph22.us_crit_edge:                ; preds = %.lr.ph22.us..lr.ph22.us_crit_edge, %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split.split
  %67 = phi i64 [ %.unr, %.lr.ph22.us..lr.ph22.us_crit_edge.preheader.split.split ], [ %77, %.lr.ph22.us..lr.ph22.us_crit_edge ]
  %.pre = load %struct.V**, %struct.V*** %49, align 8
  %.pre43 = load %struct.V*, %struct.V** %.pre, align 8
  %68 = getelementptr inbounds %struct.V, %struct.V* %.pre43, i64 %67, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.V**, %struct.V*** %49, align 8
  %70 = load %struct.V*, %struct.V** %69, align 8
  %71 = getelementptr inbounds %struct.V, %struct.V* %70, i64 %67, i32 1
  store i64 0, i64* %71, align 8
  %72 = add nuw nsw i64 %67, 1
  %.pre.1 = load %struct.V**, %struct.V*** %49, align 8
  %.pre43.1 = load %struct.V*, %struct.V** %.pre.1, align 8
  %73 = getelementptr inbounds %struct.V, %struct.V* %.pre43.1, i64 %72, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.V**, %struct.V*** %49, align 8
  %75 = load %struct.V*, %struct.V** %74, align 8
  %76 = getelementptr inbounds %struct.V, %struct.V* %75, i64 %72, i32 1
  store i64 0, i64* %76, align 8
  %77 = add nsw i64 %67, 2
  %78 = icmp slt i64 %77, %24
  br i1 %78, label %.lr.ph22.us..lr.ph22.us_crit_edge, label %.loopexit6.us.loopexit66.unr-lcssa

; <label>:79                                      ; preds = %.lr.ph27.split.us
  %80 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025.us, i32 0
  store i64 1, i64* %80, align 8
  %81 = call noalias i8* @malloc(i64 240) #5
  %82 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025.us, i32 1
  %83 = bitcast i64** %82 to i8**
  store i8* %81, i8** %83, align 8
  %84 = icmp eq i8* %81, null
  br i1 %84, label %.us-lcssa31.us.loopexit, label %85

; <label>:85                                      ; preds = %79
  %86 = bitcast i8* %81 to i64*
  store i64 0, i64* %86, align 8
  %87 = call noalias i8* @malloc(i64 240) #5
  %88 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025.us, i32 2
  %89 = bitcast %struct.V*** %88 to i8**
  store i8* %87, i8** %89, align 8
  %90 = icmp eq i8* %87, null
  br i1 %90, label %.us-lcssa32.us.loopexit, label %91

; <label>:91                                      ; preds = %85
  %92 = call noalias i8* @malloc(i64 %29) #5
  %93 = bitcast %struct.V*** %88 to i8***
  %94 = load i8**, i8*** %93, align 8
  store i8* %92, i8** %94, align 8
  %95 = load %struct.V**, %struct.V*** %88, align 8
  %96 = load %struct.V*, %struct.V** %95, align 8
  %97 = icmp eq %struct.V* %96, null
  br i1 %97, label %.us-lcssa33.us.loopexit, label %.lr.ph24.us.preheader

.lr.ph24.us.preheader:                            ; preds = %91
  %98 = getelementptr inbounds %struct.V, %struct.V* %96, i64 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.V**, %struct.V*** %88, align 8
  %100 = load %struct.V*, %struct.V** %99, align 8
  %101 = getelementptr inbounds %struct.V, %struct.V* %100, i64 0, i32 1
  store i64 0, i64* %101, align 8
  br i1 %34, label %.lr.ph24.us..lr.ph24.us_crit_edge.preheader, label %.loopexit6.us

.lr.ph24.us..lr.ph24.us_crit_edge.preheader:      ; preds = %.lr.ph24.us.preheader
  br i1 %lcmp.mod75, label %.lr.ph24.us..lr.ph24.us_crit_edge.preheader.split, label %.lr.ph24.us..lr.ph24.us_crit_edge.prol

.lr.ph24.us..lr.ph24.us_crit_edge.prol:           ; preds = %.lr.ph24.us..lr.ph24.us_crit_edge.preheader
  %.pre44.prol = load %struct.V**, %struct.V*** %88, align 8
  %.pre45.prol = load %struct.V*, %struct.V** %.pre44.prol, align 8
  %102 = getelementptr inbounds %struct.V, %struct.V* %.pre45.prol, i64 1, i32 0
  store i64 0, i64* %102, align 8
  %103 = load %struct.V**, %struct.V*** %88, align 8
  %104 = load %struct.V*, %struct.V** %103, align 8
  %105 = getelementptr inbounds %struct.V, %struct.V* %104, i64 1, i32 1
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
  %.pre44 = load %struct.V**, %struct.V*** %88, align 8
  %.pre45 = load %struct.V*, %struct.V** %.pre44, align 8
  %110 = getelementptr inbounds %struct.V, %struct.V* %.pre45, i64 %109, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.V**, %struct.V*** %88, align 8
  %112 = load %struct.V*, %struct.V** %111, align 8
  %113 = getelementptr inbounds %struct.V, %struct.V* %112, i64 %109, i32 1
  store i64 0, i64* %113, align 8
  %114 = add nuw nsw i64 %109, 1
  %.pre44.1 = load %struct.V**, %struct.V*** %88, align 8
  %.pre45.1 = load %struct.V*, %struct.V** %.pre44.1, align 8
  %115 = getelementptr inbounds %struct.V, %struct.V* %.pre45.1, i64 %114, i32 0
  store i64 0, i64* %115, align 8
  %116 = load %struct.V**, %struct.V*** %88, align 8
  %117 = load %struct.V*, %struct.V** %116, align 8
  %118 = getelementptr inbounds %struct.V, %struct.V* %117, i64 %114, i32 1
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
  %124 = call noalias i8* @malloc(i64 240) #5
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
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.29, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 426, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #14
  unreachable

; <label>:128                                     ; preds = %122
  %129 = bitcast i8* %124 to i64*
  store i64 0, i64* %129, align 8
  %130 = call noalias i8* @malloc(i64 240) #5
  %131 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.025, i32 2
  %132 = bitcast %struct.V*** %131 to i8**
  store i8* %130, i8** %132, align 8
  %133 = icmp eq i8* %130, null
  br i1 %133, label %.us-lcssa32.us.loopexit71, label %134

.us-lcssa32.us.loopexit:                          ; preds = %85
  br label %.us-lcssa32.us

.us-lcssa32.us.loopexit71:                        ; preds = %128
  br label %.us-lcssa32.us

.us-lcssa32.us:                                   ; preds = %.us-lcssa32.us.loopexit71, %.us-lcssa32.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.30, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 429, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #14
  unreachable

; <label>:134                                     ; preds = %128
  %135 = call noalias i8* @malloc(i64 %29) #5
  %136 = bitcast %struct.V*** %131 to i8***
  %137 = load i8**, i8*** %136, align 8
  store i8* %135, i8** %137, align 8
  %138 = load %struct.V**, %struct.V*** %131, align 8
  %139 = load %struct.V*, %struct.V** %138, align 8
  %140 = icmp eq %struct.V* %139, null
  br i1 %140, label %.us-lcssa33.us.loopexit72, label %.loopexit4

.us-lcssa33.us.loopexit:                          ; preds = %91
  br label %.us-lcssa33.us

.us-lcssa33.us.loopexit72:                        ; preds = %134
  br label %.us-lcssa33.us

.us-lcssa33.us:                                   ; preds = %.us-lcssa33.us.loopexit72, %.us-lcssa33.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8.31, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 431, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #14
  unreachable

; <label>:141                                     ; preds = %.lr.ph27.split
  %142 = sub nsw i64 %i.025, %14
  %143 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %142, i32 0
  store i64 1, i64* %143, align 8
  %144 = call noalias i8* @malloc(i64 240) #5
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
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9.32, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 442, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #14
  unreachable

; <label>:148                                     ; preds = %141
  %149 = bitcast i8* %144 to i64*
  store i64 0, i64* %149, align 8
  %150 = call noalias i8* @malloc(i64 240) #5
  %151 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %142, i32 2
  %152 = bitcast %struct.V*** %151 to i8**
  store i8* %150, i8** %152, align 8
  %153 = icmp eq i8* %150, null
  br i1 %153, label %.us-lcssa29.us.loopexit68, label %154

.us-lcssa29.us.loopexit:                          ; preds = %46
  br label %.us-lcssa29.us

.us-lcssa29.us.loopexit68:                        ; preds = %148
  br label %.us-lcssa29.us

.us-lcssa29.us:                                   ; preds = %.us-lcssa29.us.loopexit68, %.us-lcssa29.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10.33, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 445, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #14
  unreachable

; <label>:154                                     ; preds = %148
  %155 = call noalias i8* @malloc(i64 %29) #5
  %156 = bitcast %struct.V*** %151 to i8***
  %157 = load i8**, i8*** %156, align 8
  store i8* %155, i8** %157, align 8
  %158 = load %struct.V**, %struct.V*** %151, align 8
  %159 = load %struct.V*, %struct.V** %158, align 8
  %160 = icmp eq %struct.V* %159, null
  br i1 %160, label %.us-lcssa30.us.loopexit69, label %.loopexit4

.us-lcssa30.us.loopexit:                          ; preds = %52
  br label %.us-lcssa30.us

.us-lcssa30.us.loopexit69:                        ; preds = %154
  br label %.us-lcssa30.us

.us-lcssa30.us:                                   ; preds = %.us-lcssa30.us.loopexit69, %.us-lcssa30.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11.34, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 447, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #14
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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %164 = getelementptr inbounds %struct.graph, %struct.graph* %2, i64 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call noalias i8* @malloc(i64 %165) #5
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %169

; <label>:168                                     ; preds = %._crit_edge28
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 459, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #14
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
  %186 = load %struct.V**, %struct.V*** %185, align 8
  %187 = load %struct.V*, %struct.V** %186, align 8
  %188 = getelementptr inbounds %struct.V, %struct.V* %187, i64 0, i32 0
  store i64 %184, i64* %188, align 8
  %189 = load %struct.V**, %struct.V*** %185, align 8
  %190 = load %struct.V*, %struct.V** %189, align 8
  %191 = getelementptr inbounds %struct.V, %struct.V* %190, i64 0, i32 1
  store i64 -1, i64* %191, align 8
  %192 = getelementptr inbounds %struct.edge, %struct.edge* %11, i64 %i.117, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.V**, %struct.V*** %185, align 8
  %195 = load %struct.V*, %struct.V** %194, align 8
  %196 = getelementptr inbounds %struct.V, %struct.V* %195, i64 1, i32 0
  store i64 %193, i64* %196, align 8
  %197 = load %struct.V**, %struct.V*** %185, align 8
  %198 = load %struct.V*, %struct.V** %197, align 8
  %199 = getelementptr inbounds %struct.V, %struct.V* %198, i64 1, i32 1
  store i64 1, i64* %199, align 8
  %200 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.117, i32 1
  %201 = load i64*, i64** %200, align 8
  store i64 2, i64* %201, align 8
  %202 = load %struct.V**, %struct.V*** %185, align 8
  %203 = load %struct.V*, %struct.V** %202, align 8
  %204 = getelementptr inbounds %struct.V, %struct.V* %203, i64 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i8, i8* %166, i64 %205
  store i8 118, i8* %206, align 1
  %207 = getelementptr inbounds %struct.V, %struct.V* %203, i64 1, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i8, i8* %166, i64 %208
  store i8 118, i8* %209, align 1
  %210 = getelementptr inbounds %struct.Vd, %struct.Vd* %5, i64 %i.117, i32 0
  br label %211

; <label>:211                                     ; preds = %289, %182
  %212 = phi %struct.V** [ %202, %182 ], [ %293, %289 ]
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
  %220 = getelementptr inbounds %struct.V*, %struct.V** %212, i64 %218
  %221 = load %struct.V*, %struct.V** %220, align 8
  %222 = getelementptr inbounds %struct.V, %struct.V* %221, i64 %219, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.V, %struct.V* %221, i64 %219, i32 1
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
  %244 = load %struct.V**, %struct.V*** %185, align 8
  %245 = getelementptr inbounds %struct.V*, %struct.V** %244, i64 %242
  %246 = load %struct.V*, %struct.V** %245, align 8
  %247 = getelementptr inbounds %struct.V, %struct.V* %246, i64 %243, i32 0
  store i64 %237, i64* %247, align 8
  %248 = getelementptr inbounds %struct.V, %struct.V* %246, i64 %243, i32 1
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
  %267 = call noalias i8* @malloc(i64 %176) #5
  %268 = load i64, i64* %210, align 8
  %269 = add i64 %268, -1
  %270 = load %struct.V**, %struct.V*** %185, align 8
  %271 = getelementptr inbounds %struct.V*, %struct.V** %270, i64 %269
  %272 = bitcast %struct.V** %271 to i8**
  store i8* %267, i8** %272, align 8
  %273 = load i64, i64* %210, align 8
  %274 = add i64 %273, -1
  %275 = load %struct.V**, %struct.V*** %185, align 8
  %276 = getelementptr inbounds %struct.V*, %struct.V** %275, i64 %274
  %277 = load %struct.V*, %struct.V** %276, align 8
  %278 = icmp eq %struct.V* %277, null
  br i1 %278, label %279, label %280

; <label>:279                                     ; preds = %265
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 522, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #14
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
  %293 = load %struct.V**, %struct.V*** %185, align 8
  %294 = getelementptr inbounds %struct.V*, %struct.V** %293, i64 %291
  %295 = load %struct.V*, %struct.V** %294, align 8
  %296 = getelementptr inbounds %struct.V, %struct.V* %295, i64 %292, i32 1
  %297 = load i64, i64* %296, align 8
  br label %211

; <label>:298                                     ; preds = %._crit_edge
  %299 = sub nsw i64 %i.117, %14
  %300 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %299, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %299, i32 2
  %303 = load %struct.V**, %struct.V*** %302, align 8
  %304 = load %struct.V*, %struct.V** %303, align 8
  %305 = getelementptr inbounds %struct.V, %struct.V* %304, i64 0, i32 0
  store i64 %301, i64* %305, align 8
  %306 = load %struct.V**, %struct.V*** %302, align 8
  %307 = load %struct.V*, %struct.V** %306, align 8
  %308 = getelementptr inbounds %struct.V, %struct.V* %307, i64 0, i32 1
  store i64 -1, i64* %308, align 8
  %309 = getelementptr inbounds %struct.edge, %struct.edge* %17, i64 %299, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.V**, %struct.V*** %302, align 8
  %312 = load %struct.V*, %struct.V** %311, align 8
  %313 = getelementptr inbounds %struct.V, %struct.V* %312, i64 1, i32 0
  store i64 %310, i64* %313, align 8
  %314 = load %struct.V**, %struct.V*** %302, align 8
  %315 = load %struct.V*, %struct.V** %314, align 8
  %316 = getelementptr inbounds %struct.V, %struct.V* %315, i64 1, i32 1
  store i64 1, i64* %316, align 8
  %317 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %299, i32 1
  %318 = load i64*, i64** %317, align 8
  store i64 2, i64* %318, align 8
  %319 = load %struct.V**, %struct.V*** %302, align 8
  %320 = load %struct.V*, %struct.V** %319, align 8
  %321 = getelementptr inbounds %struct.V, %struct.V* %320, i64 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds i8, i8* %166, i64 %322
  store i8 118, i8* %323, align 1
  %324 = getelementptr inbounds %struct.V, %struct.V* %320, i64 1, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds i8, i8* %166, i64 %325
  store i8 118, i8* %326, align 1
  %327 = getelementptr inbounds %struct.Vd, %struct.Vd* %8, i64 %299, i32 0
  br label %328

; <label>:328                                     ; preds = %406, %298
  %329 = phi %struct.V** [ %319, %298 ], [ %410, %406 ]
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
  %337 = getelementptr inbounds %struct.V*, %struct.V** %329, i64 %335
  %338 = load %struct.V*, %struct.V** %337, align 8
  %339 = getelementptr inbounds %struct.V, %struct.V* %338, i64 %336, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds %struct.V, %struct.V* %338, i64 %336, i32 1
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
  %361 = load %struct.V**, %struct.V*** %302, align 8
  %362 = getelementptr inbounds %struct.V*, %struct.V** %361, i64 %359
  %363 = load %struct.V*, %struct.V** %362, align 8
  %364 = getelementptr inbounds %struct.V, %struct.V* %363, i64 %360, i32 0
  store i64 %354, i64* %364, align 8
  %365 = getelementptr inbounds %struct.V, %struct.V* %363, i64 %360, i32 1
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
  %384 = call noalias i8* @malloc(i64 %176) #5
  %385 = load i64, i64* %327, align 8
  %386 = add i64 %385, -1
  %387 = load %struct.V**, %struct.V*** %302, align 8
  %388 = getelementptr inbounds %struct.V*, %struct.V** %387, i64 %386
  %389 = bitcast %struct.V** %388 to i8**
  store i8* %384, i8** %389, align 8
  %390 = load i64, i64* %327, align 8
  %391 = add i64 %390, -1
  %392 = load %struct.V**, %struct.V*** %302, align 8
  %393 = getelementptr inbounds %struct.V*, %struct.V** %392, i64 %391
  %394 = load %struct.V*, %struct.V** %393, align 8
  %395 = icmp eq %struct.V* %394, null
  br i1 %395, label %396, label %397

; <label>:396                                     ; preds = %382
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13.35, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.24, i64 0, i64 0), i32 591, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.findSubGraphs2, i64 0, i64 0)) #14
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
  %410 = load %struct.V**, %struct.V*** %302, align 8
  %411 = getelementptr inbounds %struct.V*, %struct.V** %410, i64 %408
  %412 = load %struct.V*, %struct.V** %411, align 8
  %413 = getelementptr inbounds %struct.V, %struct.V* %412, i64 %409, i32 1
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
  call void @free(i8* %166) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @genScalData_seq(%struct.graphSDG* nocapture %SDGdataPtr) #0 {
  %1 = tail call %struct.random* (...) bitcast (%struct.random* ()* @random_alloc to %struct.random* (...)*)() #5
  %2 = icmp eq %struct.random* %1, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 107, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
  unreachable

; <label>:4                                       ; preds = %0
  tail call void @random_seed(%struct.random* nonnull %1, i64 0) #5
  %5 = load i64, i64* @TOT_VERTICES, align 8
  %6 = shl i64 %5, 3
  %7 = tail call noalias i8* @malloc(i64 %6) #5
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
  br i1 %26, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !21

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.preheader.split
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %.preheader50, label %.lr.ph212.preheader617

; <label>:27                                      ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.38, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 112, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
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
  br i1 %30, label %.lr.ph212, label %.preheader50.loopexit, !llvm.loop !22

.lr.ph208:                                        ; preds = %42, %.lr.ph208.preheader
  %i.1207 = phi i64 [ %43, %42 ], [ 0, %.lr.ph208.preheader ]
  %31 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
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
  %52 = tail call double @ceil(double %51) #15
  %53 = fptosi double %52 to i64
  %54 = shl i64 %53, 3
  %55 = tail call noalias i8* @malloc(i64 %54) #5
  %56 = bitcast i8* %55 to i64*
  %57 = icmp eq i8* %55, null
  br i1 %57, label %59, label %.preheader49

.preheader49:                                     ; preds = %._crit_edge209
  %58 = icmp sgt i64 %53, 0
  br i1 %58, label %.lr.ph205.preheader, label %._crit_edge206

.lr.ph205.preheader:                              ; preds = %.preheader49
  br label %.lr.ph205

; <label>:59                                      ; preds = %._crit_edge209
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.39, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 144, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
  unreachable

.lr.ph205:                                        ; preds = %.lr.ph205, %.lr.ph205.preheader
  %i.2204 = phi i64 [ %65, %.lr.ph205 ], [ 0, %.lr.ph205.preheader ]
  %60 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
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
  %67 = tail call noalias i8* @malloc(i64 %54) #5
  %68 = bitcast i8* %67 to i64*
  %69 = icmp eq i8* %67, null
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %._crit_edge206
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.40, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 162, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
  unreachable

; <label>:71                                      ; preds = %._crit_edge206
  %72 = tail call noalias i8* @malloc(i64 %54) #5
  %73 = bitcast i8* %72 to i64*
  %74 = icmp eq i8* %72, null
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %71
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5.41, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 164, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
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
  br i1 %136, label %middle.block505.unr-lcssa, label %vector.body504, !llvm.loop !23

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
  br i1 %exitcond317, label %._crit_edge196.loopexit, label %.lr.ph195, !llvm.loop !24

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
  %159 = tail call double @ceil(double %.sink) #15
  %estTotEdges.0 = fptosi double %159 to i64
  %160 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %161 = shl i64 %estTotEdges.0, 3
  %162 = tail call noalias i8* @malloc(i64 %161) #5
  %163 = bitcast i8* %162 to i64*
  %164 = tail call noalias i8* @malloc(i64 %161) #5
  %165 = bitcast i8* %164 to i64*
  %166 = icmp eq i8* %162, null
  br i1 %166, label %167, label %168

; <label>:167                                     ; preds = %158
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.42, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 241, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
  unreachable

; <label>:168                                     ; preds = %158
  %169 = icmp eq i8* %164, null
  br i1 %169, label %170, label %171

; <label>:170                                     ; preds = %168
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.43, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 242, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
  unreachable

; <label>:171                                     ; preds = %168
  %172 = shl i64 %66, 3
  %173 = tail call noalias i8* @malloc(i64 %172) #5
  %174 = bitcast i8* %173 to i64**
  %175 = icmp eq i8* %173, null
  br i1 %175, label %177, label %.preheader48

.preheader48:                                     ; preds = %171
  %176 = icmp sgt i64 %66, 0
  br i1 %176, label %.lr.ph192.preheader, label %.preheader47

.lr.ph192.preheader:                              ; preds = %.preheader48
  br label %.lr.ph192

; <label>:177                                     ; preds = %171
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8.44, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 249, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
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
  %181 = tail call noalias i8* @malloc(i64 %172) #5
  %182 = getelementptr inbounds i64*, i64** %174, i64 %i.5191
  %183 = bitcast i64** %182 to i8**
  store i8* %181, i8** %183, align 8
  %184 = icmp eq i8* %181, null
  %185 = add nuw nsw i64 %i.5191, 1
  br i1 %184, label %186, label %178

; <label>:186                                     ; preds = %.lr.ph192
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9.45, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 253, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
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
  %198 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
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
  %236 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
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
  %242 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
  %243 = urem i64 %242, %190
  %244 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
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
  %255 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
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
  tail call void @free(i8* %273) #5
  %274 = add nuw nsw i64 %i.7169, 1
  %275 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %276 = icmp slt i64 %274, %275
  br i1 %276, label %.lr.ph170, label %._crit_edge171.loopexit

._crit_edge171.loopexit:                          ; preds = %.lr.ph170
  br label %._crit_edge171

._crit_edge171:                                   ; preds = %._crit_edge171.loopexit, %.preheader44
  tail call void @free(i8* %173) #5
  %277 = load i64, i64* @SCALE, align 8
  %278 = icmp slt i64 %277, 10
  br i1 %278, label %279, label %283

; <label>:279                                     ; preds = %._crit_edge171
  %280 = shl i64 %i_edgePtr.0.lcssa, 4
  %281 = tail call noalias i8* @malloc(i64 %280) #5
  %282 = tail call noalias i8* @malloc(i64 %280) #5
  br label %291

; <label>:283                                     ; preds = %._crit_edge171
  %284 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %285 = load i64, i64* @TOT_VERTICES, align 8
  %286 = mul i64 %285, %284
  %287 = add i64 %286, %i_edgePtr.0.lcssa
  %288 = shl i64 %287, 3
  %289 = tail call noalias i8* @malloc(i64 %288) #5
  %290 = tail call noalias i8* @malloc(i64 %288) #5
  br label %291

; <label>:291                                     ; preds = %283, %279
  %endVertex.0.in = phi i8* [ %282, %279 ], [ %290, %283 ]
  %startVertex.0.in = phi i8* [ %281, %279 ], [ %289, %283 ]
  %startVertex.0 = bitcast i8* %startVertex.0.in to i64*
  %endVertex.0 = bitcast i8* %endVertex.0.in to i64*
  %292 = icmp eq i8* %startVertex.0.in, null
  br i1 %292, label %293, label %294

; <label>:293                                     ; preds = %291
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10.46, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 367, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
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
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11.47, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 368, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
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
  %328 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
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
  %360 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
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
  br i1 %prol.iter711.cmp, label %vector.ph562.split.loopexit, label %vector.body554.prol, !llvm.loop !25

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
  br i1 %411, label %middle.block555.unr-lcssa, label %vector.body554, !llvm.loop !26

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
  br i1 %exitcond310, label %.loopexit32.loopexit.loopexit, label %.lr.ph149, !llvm.loop !27

.loopexit32.loopexit.loopexit:                    ; preds = %.lr.ph149
  br label %.loopexit32.loopexit

.loopexit32.loopexit:                             ; preds = %.loopexit32.loopexit.loopexit, %middle.block555
  %416 = add i64 %365, %362
  br label %.loopexit32

.loopexit32:                                      ; preds = %.loopexit32.loopexit, %359, %.loopexit33, %.lr.ph160
  %i_edgePtr.10 = phi i64 [ %i_edgePtr.8158, %.loopexit33 ], [ %i_edgePtr.8158, %.lr.ph160 ], [ %i_edgePtr.8158, %359 ], [ %416, %.loopexit32.loopexit ]
  %417 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
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
  %449 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
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
  br i1 %prol.iter714.cmp, label %vector.ph532.split.loopexit, label %vector.body524.prol, !llvm.loop !28

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
  br i1 %500, label %middle.block525.unr-lcssa, label %vector.body524, !llvm.loop !29

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
  br i1 %exitcond311, label %.loopexit27.loopexit.loopexit, label %.lr.ph154, !llvm.loop !30

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
  %515 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13.48, i64 0, i64 0), i64 %i_edgePtr.0.lcssa)
  %516 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i64 %i_edgePtr.7.lcssa341)
  %517 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i64 %513)
  tail call void @free(i8* %55) #5
  tail call void @free(i8* %72) #5
  tail call void @free(i8* %67) #5
  tail call void @free(i8* %162) #5
  tail call void @free(i8* %164) #5
  %518 = shl i64 %513, 3
  %519 = tail call noalias i8* @malloc(i64 %518) #5
  %520 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %SDGdataPtr, i64 0, i32 2
  %521 = bitcast i64** %520 to i8**
  store i8* %519, i8** %521, align 8
  %522 = icmp eq i8* %519, null
  br i1 %522, label %523, label %524

; <label>:523                                     ; preds = %._crit_edge145
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 563, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
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
  %534 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
  %535 = urem i64 %534, 1000
  %536 = uitofp i64 %535 to float
  %537 = fdiv float %536, 1.000000e+03
  %538 = fcmp ugt float %537, %525
  br i1 %538, label %547, label %539

; <label>:539                                     ; preds = %.lr.ph141
  %540 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
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
  %567 = tail call noalias i8* @malloc(i64 %566) #5
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
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 589, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
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
  %577 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
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
  %596 = tail call i64 @strlen(i8* %595) #16
  %597 = icmp eq i64 %596, %594
  br i1 %597, label %602, label %598

; <label>:598                                     ; preds = %._crit_edge133
  %599 = tail call noalias i8* @malloc(i64 %594) #5
  store i8* %599, i8** @SOUGHT_STRING, align 8
  %600 = icmp eq i8* %599, null
  br i1 %600, label %601, label %602

; <label>:601                                     ; preds = %598
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 607, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
  unreachable

; <label>:602                                     ; preds = %598, %._crit_edge133
  %603 = tail call i64 @random_generate(%struct.random* nonnull %1) #5
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
  %644 = tail call noalias i8* @malloc(i64 %518) #5
  %645 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %SDGdataPtr, i64 0, i32 0
  %646 = bitcast %struct.graphSDG* %SDGdataPtr to i8**
  store i8* %644, i8** %646, align 8
  %647 = icmp eq i8* %644, null
  %648 = bitcast i8* %644 to i64*
  br i1 %647, label %649, label %650

; <label>:649                                     ; preds = %._crit_edge125
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 636, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
  unreachable

; <label>:650                                     ; preds = %._crit_edge125
  %651 = tail call noalias i8* @malloc(i64 %518) #5
  %652 = getelementptr inbounds %struct.graphSDG, %struct.graphSDG* %SDGdataPtr, i64 0, i32 1
  %653 = bitcast i64** %652 to i8**
  store i8* %651, i8** %653, align 8
  %654 = icmp eq i8* %651, null
  br i1 %654, label %655, label %656

; <label>:655                                     ; preds = %650
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 638, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.genScalData_seq, i64 0, i64 0)) #14
  unreachable

; <label>:656                                     ; preds = %650
  %657 = bitcast i8* %651 to i64*
  tail call void @all_radixsort_node_aux_s3_seq(i64 %513, i64* %startVertex.0, i64* %648, i64* %endVertex.0, i64* %657) #5
  tail call void @free(i8* %startVertex.0.in) #5
  tail call void @free(i8* %endVertex.0.in) #5
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
  %762 = tail call noalias i8* @malloc(i64 %761) #5
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
  br i1 %prol.iter.cmp, label %vector.ph592.split.loopexit, label %vector.body584.prol, !llvm.loop !31

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
  br i1 %802, label %middle.block585.unr-lcssa, label %vector.body584, !llvm.loop !32

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
  br i1 %815, label %.lr.ph120.split, label %.preheader18.loopexit, !llvm.loop !33

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
  tail call void @free(i8* %762) #5
  br label %.loopexit15

.loopexit15.loopexit:                             ; preds = %.loopexit12.us
  br label %.loopexit15

.loopexit15.loopexit607:                          ; preds = %.outer.loopexit, %._crit_edge97
  br label %.loopexit15

.loopexit15:                                      ; preds = %.loopexit15.loopexit607, %.loopexit15.loopexit, %._crit_edge115, %.preheader14
  tail call void @random_free(%struct.random* nonnull %1) #5
  tail call void @free(i8* %7) #5
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
declare double @ceil(double) #7

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #8

; Function Attrs: nounwind uwtable
define void @genScalData(i8* nocapture %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #5
  %5 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %6 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #5
  %7 = tail call %struct.random* (...) bitcast (%struct.random* ()* @Prandom_alloc to %struct.random* (...)*)() #5
  %8 = icmp eq %struct.random* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 780, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:10                                      ; preds = %0
  tail call void @random_seed(%struct.random* nonnull %7, i64 %5) #5
  %11 = icmp eq i64 %5, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %10
  %13 = load i64, i64* @TOT_VERTICES, align 8
  %14 = shl i64 %13, 3
  %15 = tail call noalias i8* @malloc(i64 %14) #5
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %12
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.38, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 787, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:18                                      ; preds = %12
  store i8* %15, i8** bitcast (i64** @global_permV to i8**), align 8
  br label %19

; <label>:19                                      ; preds = %18, %10
  tail call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %20 = load i64*, i64** @global_permV, align 8
  %21 = load i64, i64* @TOT_VERTICES, align 8
  call void @createPartition(i64 0, i64 %21, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #5
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
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %29 = load i64, i64* %i_start, align 8
  %30 = load i64, i64* %i_stop, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %.lr.ph238.preheader, label %._crit_edge239

.lr.ph238.preheader:                              ; preds = %._crit_edge243
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %66, %.lr.ph238.preheader
  %i.1236 = phi i64 [ %67, %66 ], [ %29, %.lr.ph238.preheader ]
  %32 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %33 = load i64, i64* @TOT_VERTICES, align 8
  %34 = sub i64 %33, %i.1236
  %35 = urem i64 %32, %34
  %36 = add i64 %35, %i.1236
  %37 = icmp eq i64 %35, 0
  br i1 %37, label %66, label %.outer59.preheader

.outer59.preheader:                               ; preds = %.lr.ph238
  br label %.outer59

.outer59:                                         ; preds = %49, %.outer59.preheader
  %tries.0.ph = phi i32 [ %50, %49 ], [ 9, %.outer59.preheader ]
  %38 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %39 = icmp eq i64 %38, 0
  %40 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %40, i32 0, i32 3, i32 1)
  %41 = getelementptr inbounds i64, i64* %20, i64 %36
  %42 = bitcast i64* %41 to i8*
  call void @llvm.prefetch(i8* %42, i32 0, i32 3, i32 1)
  %43 = getelementptr inbounds i64, i64* %20, i64 %i.1236
  %44 = bitcast i64* %43 to i8*
  call void @llvm.prefetch(i8* %44, i32 0, i32 3, i32 1)
  br i1 %39, label %._crit_edge235, label %.lr.ph234.preheader

.lr.ph234.preheader:                              ; preds = %.outer59
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph234, %.lr.ph234.preheader
  call void @llvm.x86.sse2.pause() #5
  %45 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %._crit_edge235.loopexit, label %.lr.ph234

._crit_edge235.loopexit:                          ; preds = %.lr.ph234
  br label %._crit_edge235

._crit_edge235:                                   ; preds = %._crit_edge235.loopexit, %.outer59
  %47 = icmp slt i32 %tries.0.ph, 2
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %._crit_edge235
  %tries.0.ph.lcssa = phi i32 [ %tries.0.ph, %._crit_edge235 ]
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #5
  br label %58

; <label>:49                                      ; preds = %._crit_edge235
  %50 = add nsw i32 %tries.0.ph, -1
  %51 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #5, !srcloc !34
  %52 = trunc i64 %51 to i32
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %.outer59

; <label>:54                                      ; preds = %49
  %tries.0.ph.lcssa626 = phi i32 [ %tries.0.ph, %49 ]
  %55 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %58, label %57

; <label>:57                                      ; preds = %54
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !35
  br label %58

; <label>:58                                      ; preds = %57, %54, %48
  %tries.0.ph627 = phi i32 [ %tries.0.ph.lcssa626, %54 ], [ %tries.0.ph.lcssa626, %57 ], [ %tries.0.ph.lcssa, %48 ]
  %59 = getelementptr inbounds i64, i64* %20, i64 %36
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %20, i64 %i.1236
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %59, align 8
  store i64 %60, i64* %61, align 8
  %63 = icmp sgt i32 %tries.0.ph627, 1
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %58
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #5, !srcloc !36
  br label %66

; <label>:65                                      ; preds = %58
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #5
  br label %66

; <label>:66                                      ; preds = %65, %64, %.lr.ph238
  %67 = add nsw i64 %i.1236, 1
  %68 = load i64, i64* %i_stop, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %.lr.ph238, label %._crit_edge239.loopexit

._crit_edge239.loopexit:                          ; preds = %66
  br label %._crit_edge239

._crit_edge239:                                   ; preds = %._crit_edge239.loopexit, %._crit_edge243
  %70 = load i64, i64* @TOT_VERTICES, align 8
  %71 = uitofp i64 %70 to double
  %72 = fmul double %71, 1.500000e+00
  %73 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %74 = add nsw i64 %73, 1
  %75 = sdiv i64 %74, 2
  %76 = sitofp i64 %75 to double
  %77 = fdiv double %72, %76
  %78 = call double @ceil(double %77) #15
  %79 = fptosi double %78 to i64
  br i1 %11, label %80, label %86

; <label>:80                                      ; preds = %._crit_edge239
  %81 = shl i64 %79, 3
  %82 = call noalias i8* @malloc(i64 %81) #5
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %80
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.39, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 833, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:85                                      ; preds = %80
  store i8* %82, i8** bitcast (i64** @global_cliqueSizes to i8**), align 8
  br label %86

; <label>:86                                      ; preds = %85, %._crit_edge239
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %87 = load i64*, i64** @global_cliqueSizes, align 8
  call void @createPartition(i64 0, i64 %79, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #5
  %88 = load i64, i64* %i_start, align 8
  %89 = load i64, i64* %i_stop, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %.lr.ph232.preheader, label %._crit_edge233

.lr.ph232.preheader:                              ; preds = %86
  br label %.lr.ph232

.lr.ph232:                                        ; preds = %.lr.ph232, %.lr.ph232.preheader
  %i.2230 = phi i64 [ %96, %.lr.ph232 ], [ %88, %.lr.ph232.preheader ]
  %91 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %92 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %93 = urem i64 %91, %92
  %94 = add i64 %93, 1
  %95 = getelementptr inbounds i64, i64* %87, i64 %i.2230
  store i64 %94, i64* %95, align 8
  %96 = add nsw i64 %i.2230, 1
  %97 = load i64, i64* %i_stop, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %.lr.ph232, label %._crit_edge233.loopexit

._crit_edge233.loopexit:                          ; preds = %.lr.ph232
  br label %._crit_edge233

._crit_edge233:                                   ; preds = %._crit_edge233.loopexit, %86
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %11, label %99, label %134

; <label>:99                                      ; preds = %._crit_edge233
  %100 = shl i64 %79, 3
  %101 = call noalias i8* @malloc(i64 %100) #5
  %102 = bitcast i8* %101 to i64*
  %103 = icmp eq i8* %101, null
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %99
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.40, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 862, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:105                                     ; preds = %99
  store i8* %101, i8** bitcast (i64** @global_lastVsInCliques to i8**), align 8
  %106 = call noalias i8* @malloc(i64 %100) #5
  %107 = bitcast i8* %106 to i64*
  %108 = icmp eq i8* %106, null
  br i1 %108, label %109, label %110

; <label>:109                                     ; preds = %105
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5.41, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 865, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:110                                     ; preds = %105
  store i8* %106, i8** bitcast (i64** @global_firstVsInCliques to i8**), align 8
  %111 = load i64, i64* %87, align 8
  %112 = add nsw i64 %111, -1
  store i64 %112, i64* %102, align 8
  %113 = icmp sgt i64 %79, 1
  %.pre = load i64, i64* @TOT_VERTICES, align 8
  br i1 %113, label %.lr.ph225.preheader, label %._crit_edge226

.lr.ph225.preheader:                              ; preds = %110
  %114 = add i64 %.pre, -1
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %121, %.lr.ph225.preheader
  %115 = phi i64 [ %118, %121 ], [ %112, %.lr.ph225.preheader ]
  %i.3223 = phi i64 [ %122, %121 ], [ 1, %.lr.ph225.preheader ]
  %116 = getelementptr inbounds i64, i64* %87, i64 %i.3223
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %115, %117
  %119 = getelementptr inbounds i64, i64* %102, i64 %i.3223
  store i64 %118, i64* %119, align 8
  %120 = icmp ult i64 %118, %114
  br i1 %120, label %121, label %._crit_edge226.loopexit

; <label>:121                                     ; preds = %.lr.ph225
  %122 = add nuw nsw i64 %i.3223, 1
  %123 = icmp slt i64 %122, %79
  br i1 %123, label %.lr.ph225, label %._crit_edge226.loopexit

._crit_edge226.loopexit:                          ; preds = %121, %.lr.ph225
  %i.3.lcssa.ph = phi i64 [ %i.3223, %.lr.ph225 ], [ %122, %121 ]
  br label %._crit_edge226

._crit_edge226:                                   ; preds = %._crit_edge226.loopexit, %110
  %i.3.lcssa = phi i64 [ 1, %110 ], [ %i.3.lcssa.ph, %._crit_edge226.loopexit ]
  %124 = add nsw i64 %i.3.lcssa, 1
  store i64 %124, i64* @global_totCliques, align 8
  %125 = add nsw i64 %i.3.lcssa, -1
  %126 = getelementptr inbounds i64, i64* %102, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %.pre, -1
  %129 = sub i64 %128, %127
  %130 = getelementptr inbounds i64, i64* %87, i64 %i.3.lcssa
  store i64 %129, i64* %130, align 8
  %131 = load i64, i64* @TOT_VERTICES, align 8
  %132 = add i64 %131, -1
  %133 = getelementptr inbounds i64, i64* %102, i64 %i.3.lcssa
  store i64 %132, i64* %133, align 8
  store i64 0, i64* %107, align 8
  br label %134

; <label>:134                                     ; preds = %._crit_edge226, %._crit_edge233
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %135 = load i64*, i64** @global_lastVsInCliques, align 8
  %136 = load i64*, i64** @global_firstVsInCliques, align 8
  %137 = load i64, i64* @global_totCliques, align 8
  call void @createPartition(i64 1, i64 %137, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #5
  %138 = load i64, i64* %i_start, align 8
  %139 = load i64, i64* %i_stop, align 8
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %.lr.ph221.preheader, label %._crit_edge222

.lr.ph221.preheader:                              ; preds = %134
  br label %.lr.ph221

.lr.ph221:                                        ; preds = %.lr.ph221, %.lr.ph221.preheader
  %i.4219 = phi i64 [ %146, %.lr.ph221 ], [ %138, %.lr.ph221.preheader ]
  %141 = add nsw i64 %i.4219, -1
  %142 = getelementptr inbounds i64, i64* %135, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, 1
  %145 = getelementptr inbounds i64, i64* %136, i64 %i.4219
  store i64 %144, i64* %145, align 8
  %146 = add nsw i64 %i.4219, 1
  %147 = load i64, i64* %i_stop, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %.lr.ph221, label %._crit_edge222.loopexit

._crit_edge222.loopexit:                          ; preds = %.lr.ph221
  br label %._crit_edge222

._crit_edge222:                                   ; preds = %._crit_edge222.loopexit, %134
  %149 = load i64, i64* @SCALE, align 8
  %150 = icmp sgt i64 %149, 11
  %151 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %152 = add nsw i64 %151, -1
  %153 = load i64, i64* @TOT_VERTICES, align 8
  %154 = mul i64 %152, %153
  br i1 %150, label %155, label %157

; <label>:155                                     ; preds = %._crit_edge222
  %156 = uitofp i64 %154 to double
  br label %166

; <label>:157                                     ; preds = %._crit_edge222
  %158 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %159 = add nsw i64 %158, 1
  %160 = sdiv i64 %159, 2
  %161 = mul i64 %160, %154
  %162 = shl i64 %153, 1
  %163 = add i64 %161, %162
  %164 = uitofp i64 %163 to double
  %165 = fmul double %164, 1.200000e+00
  br label %166

; <label>:166                                     ; preds = %157, %155
  %.sink = phi double [ %156, %155 ], [ %165, %157 ]
  %167 = call double @ceil(double %.sink) #15
  %estTotEdges.0 = fptosi double %167 to i64
  %168 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %169 = icmp sgt i64 %6, 3
  %170 = sdiv i64 %estTotEdges.0, %6
  br i1 %169, label %171, label %178

; <label>:171                                     ; preds = %166
  %172 = sitofp i64 %170 to double
  %173 = fmul double %172, 1.500000e+00
  %174 = fmul double %173, 8.000000e+00
  %175 = fptosi double %174 to i64
  %176 = call noalias i8* @malloc(i64 %175) #5
  %177 = call noalias i8* @malloc(i64 %175) #5
  br label %182

; <label>:178                                     ; preds = %166
  %179 = shl i64 %170, 3
  %180 = call noalias i8* @malloc(i64 %179) #5
  %181 = call noalias i8* @malloc(i64 %179) #5
  br label %182

; <label>:182                                     ; preds = %178, %171
  %endV.0.in = phi i8* [ %177, %171 ], [ %181, %178 ]
  %startV.0.in = phi i8* [ %176, %171 ], [ %180, %178 ]
  %startV.0 = bitcast i8* %startV.0.in to i64*
  %endV.0 = bitcast i8* %endV.0.in to i64*
  %183 = icmp eq i8* %startV.0.in, null
  br i1 %183, label %184, label %185

; <label>:184                                     ; preds = %182
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.42, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 964, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:185                                     ; preds = %182
  %186 = icmp eq i8* %endV.0.in, null
  br i1 %186, label %187, label %188

; <label>:187                                     ; preds = %185
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.43, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 965, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:188                                     ; preds = %185
  %189 = shl i64 %151, 3
  %190 = call noalias i8* @malloc(i64 %189) #5
  %191 = bitcast i8* %190 to i64**
  %192 = icmp eq i8* %190, null
  br i1 %192, label %194, label %.preheader57

.preheader57:                                     ; preds = %188
  %193 = icmp sgt i64 %151, 0
  br i1 %193, label %.lr.ph217.preheader, label %._crit_edge218

.lr.ph217.preheader:                              ; preds = %.preheader57
  br label %.lr.ph217

; <label>:194                                     ; preds = %188
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8.44, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 972, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:195                                     ; preds = %.lr.ph217
  %196 = icmp slt i64 %201, %151
  br i1 %196, label %.lr.ph217, label %._crit_edge218.loopexit

.lr.ph217:                                        ; preds = %195, %.lr.ph217.preheader
  %i.5216 = phi i64 [ %201, %195 ], [ 0, %.lr.ph217.preheader ]
  %197 = call noalias i8* @malloc(i64 %189) #5
  %198 = getelementptr inbounds i64*, i64** %191, i64 %i.5216
  %199 = bitcast i64** %198 to i8**
  store i8* %197, i8** %199, align 8
  %200 = icmp eq i8* %197, null
  %201 = add nuw nsw i64 %i.5216, 1
  br i1 %200, label %202, label %195

; <label>:202                                     ; preds = %.lr.ph217
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9.45, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 976, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

._crit_edge218.loopexit:                          ; preds = %195
  br label %._crit_edge218

._crit_edge218:                                   ; preds = %._crit_edge218.loopexit, %.preheader57
  call void @createPartition(i64 0, i64 %137, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #5
  %203 = load i64, i64* %i_start, align 8
  %204 = load i64, i64* %i_stop, align 8
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %.lr.ph214.preheader, label %.preheader54

.lr.ph214.preheader:                              ; preds = %._crit_edge218
  br label %.lr.ph214

.preheader54.loopexit:                            ; preds = %.loopexit56
  %i_edgePtr.6.lcssa = phi i64 [ %i_edgePtr.6, %.loopexit56 ]
  br label %.preheader54

.preheader54:                                     ; preds = %.preheader54.loopexit, %._crit_edge218
  %i_edgePtr.0.lcssa = phi i64 [ 0, %._crit_edge218 ], [ %i_edgePtr.6.lcssa, %.preheader54.loopexit ]
  %206 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %207 = icmp sgt i64 %206, 0
  br i1 %207, label %.lr.ph194.preheader, label %._crit_edge195

.lr.ph194.preheader:                              ; preds = %.preheader54
  br label %.lr.ph194

.lr.ph214:                                        ; preds = %.loopexit56, %.lr.ph214.preheader
  %i_edgePtr.0212 = phi i64 [ %i_edgePtr.6, %.loopexit56 ], [ 0, %.lr.ph214.preheader ]
  %i_clique.0211 = phi i64 [ %289, %.loopexit56 ], [ %203, %.lr.ph214.preheader ]
  %208 = getelementptr inbounds i64, i64* %87, i64 %i_clique.0211
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds i64, i64* %136, i64 %i_clique.0211
  %211 = load i64, i64* %210, align 8
  %212 = icmp sgt i64 %209, 0
  br i1 %212, label %.preheader55.preheader, label %._crit_edge204.thread

.preheader55.preheader:                           ; preds = %.lr.ph214
  br label %.preheader55

.preheader55:                                     ; preds = %._crit_edge199, %.preheader55.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge199 ], [ 0, %.preheader55.preheader ]
  %i_edgePtr.1201 = phi i64 [ %i_edgePtr.2.lcssa, %._crit_edge199 ], [ %i_edgePtr.0212, %.preheader55.preheader ]
  %213 = icmp sgt i64 %indvars.iv, 0
  br i1 %213, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %.preheader55
  %214 = add nsw i64 %indvars.iv, %211
  %215 = getelementptr inbounds i64*, i64** %191, i64 %indvars.iv
  br label %216

; <label>:216                                     ; preds = %252, %.lr.ph198
  %i_edgePtr.2197 = phi i64 [ %i_edgePtr.1201, %.lr.ph198 ], [ %i_edgePtr.3, %252 ]
  %j.0196 = phi i64 [ 0, %.lr.ph198 ], [ %253, %252 ]
  %217 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %218 = urem i64 %217, 1000
  %219 = uitofp i64 %218 to float
  %220 = fdiv float %219, 1.000000e+03
  %221 = fcmp ult float %220, %168
  br i1 %221, label %234, label %222

; <label>:222                                     ; preds = %216
  %223 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.2197
  store i64 %214, i64* %223, align 8
  %224 = add nsw i64 %j.0196, %211
  %225 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.2197
  store i64 %224, i64* %225, align 8
  %226 = add nsw i64 %i_edgePtr.2197, 1
  %227 = load i64*, i64** %215, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 %j.0196
  store i64 1, i64* %228, align 8
  %229 = getelementptr inbounds i64, i64* %startV.0, i64 %226
  store i64 %224, i64* %229, align 8
  %230 = getelementptr inbounds i64, i64* %endV.0, i64 %226
  store i64 %214, i64* %230, align 8
  %231 = getelementptr inbounds i64*, i64** %191, i64 %j.0196
  %232 = load i64*, i64** %231, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 %indvars.iv
  store i64 1, i64* %233, align 8
  br label %252

; <label>:234                                     ; preds = %216
  %235 = fcmp ult float %220, 5.000000e-01
  %236 = getelementptr inbounds i64*, i64** %191, i64 %j.0196
  %237 = load i64*, i64** %236, align 8
  br i1 %235, label %245, label %238

; <label>:238                                     ; preds = %234
  %239 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.2197
  store i64 %214, i64* %239, align 8
  %240 = add nsw i64 %j.0196, %211
  %241 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.2197
  store i64 %240, i64* %241, align 8
  %242 = load i64*, i64** %215, align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 %j.0196
  store i64 1, i64* %243, align 8
  %244 = getelementptr inbounds i64, i64* %237, i64 %indvars.iv
  store i64 0, i64* %244, align 8
  br label %252

; <label>:245                                     ; preds = %234
  %246 = add nsw i64 %j.0196, %211
  %247 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.2197
  store i64 %246, i64* %247, align 8
  %248 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.2197
  store i64 %214, i64* %248, align 8
  %249 = getelementptr inbounds i64, i64* %237, i64 %indvars.iv
  store i64 1, i64* %249, align 8
  %250 = load i64*, i64** %215, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 %j.0196
  store i64 0, i64* %251, align 8
  br label %252

; <label>:252                                     ; preds = %245, %238, %222
  %i_edgePtr.3.in = phi i64 [ %226, %222 ], [ %i_edgePtr.2197, %238 ], [ %i_edgePtr.2197, %245 ]
  %i_edgePtr.3 = add nsw i64 %i_edgePtr.3.in, 1
  %253 = add nuw nsw i64 %j.0196, 1
  %exitcond308 = icmp eq i64 %253, %indvars.iv
  br i1 %exitcond308, label %._crit_edge199.loopexit, label %216

._crit_edge199.loopexit:                          ; preds = %252
  %i_edgePtr.3.lcssa = phi i64 [ %i_edgePtr.3, %252 ]
  br label %._crit_edge199

._crit_edge199:                                   ; preds = %._crit_edge199.loopexit, %.preheader55
  %i_edgePtr.2.lcssa = phi i64 [ %i_edgePtr.1201, %.preheader55 ], [ %i_edgePtr.3.lcssa, %._crit_edge199.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond309 = icmp eq i64 %indvars.iv.next, %209
  br i1 %exitcond309, label %._crit_edge204, label %.preheader55

._crit_edge204:                                   ; preds = %._crit_edge199
  %i_edgePtr.2.lcssa.lcssa = phi i64 [ %i_edgePtr.2.lcssa, %._crit_edge199 ]
  %254 = icmp eq i64 %209, 1
  br i1 %254, label %.loopexit56, label %._crit_edge204.thread

._crit_edge204.thread:                            ; preds = %._crit_edge204, %.lr.ph214
  %i_edgePtr.1.lcssa338 = phi i64 [ %i_edgePtr.2.lcssa.lcssa, %._crit_edge204 ], [ %i_edgePtr.0212, %.lr.ph214 ]
  %255 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %256 = shl i64 %209, 1
  %257 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %258 = mul nsw i64 %256, %257
  %259 = urem i64 %255, %258
  %260 = icmp sgt i64 %259, 0
  br i1 %260, label %.lr.ph209.preheader, label %.loopexit56

.lr.ph209.preheader:                              ; preds = %._crit_edge204.thread
  br label %.lr.ph209

.lr.ph209:                                        ; preds = %287, %.lr.ph209.preheader
  %i_edgePtr.4207 = phi i64 [ %i_edgePtr.5, %287 ], [ %i_edgePtr.1.lcssa338, %.lr.ph209.preheader ]
  %i_paralEdge.0206 = phi i64 [ %288, %287 ], [ 0, %.lr.ph209.preheader ]
  %261 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %262 = urem i64 %261, %209
  %263 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %264 = urem i64 %263, %209
  %265 = icmp eq i64 %262, %264
  br i1 %265, label %287, label %266

; <label>:266                                     ; preds = %.lr.ph209
  %267 = getelementptr inbounds i64*, i64** %191, i64 %262
  %268 = load i64*, i64** %267, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 %264
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %272 = icmp ult i64 %270, %271
  br i1 %272, label %273, label %287

; <label>:273                                     ; preds = %266
  %274 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %275 = urem i64 %274, 1000
  %276 = uitofp i64 %275 to float
  %277 = fdiv float %276, 1.000000e+03
  %278 = fcmp ult float %277, %168
  br i1 %278, label %287, label %279

; <label>:279                                     ; preds = %273
  %280 = add nsw i64 %262, %211
  %281 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.4207
  store i64 %280, i64* %281, align 8
  %282 = add nsw i64 %264, %211
  %283 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.4207
  store i64 %282, i64* %283, align 8
  %284 = add nsw i64 %i_edgePtr.4207, 1
  %285 = load i64, i64* %269, align 8
  %286 = add i64 %285, 1
  store i64 %286, i64* %269, align 8
  br label %287

; <label>:287                                     ; preds = %279, %273, %266, %.lr.ph209
  %i_edgePtr.5 = phi i64 [ %284, %279 ], [ %i_edgePtr.4207, %273 ], [ %i_edgePtr.4207, %266 ], [ %i_edgePtr.4207, %.lr.ph209 ]
  %288 = add nuw nsw i64 %i_paralEdge.0206, 1
  %exitcond310 = icmp eq i64 %288, %259
  br i1 %exitcond310, label %.loopexit56.loopexit, label %.lr.ph209

.loopexit56.loopexit:                             ; preds = %287
  %i_edgePtr.5.lcssa = phi i64 [ %i_edgePtr.5, %287 ]
  br label %.loopexit56

.loopexit56:                                      ; preds = %.loopexit56.loopexit, %._crit_edge204.thread, %._crit_edge204
  %i_edgePtr.6 = phi i64 [ %i_edgePtr.2.lcssa.lcssa, %._crit_edge204 ], [ %i_edgePtr.1.lcssa338, %._crit_edge204.thread ], [ %i_edgePtr.5.lcssa, %.loopexit56.loopexit ]
  %289 = add nsw i64 %i_clique.0211, 1
  %290 = load i64, i64* %i_stop, align 8
  %291 = icmp slt i64 %289, %290
  br i1 %291, label %.lr.ph214, label %.preheader54.loopexit

.lr.ph194:                                        ; preds = %.lr.ph194, %.lr.ph194.preheader
  %i.7193 = phi i64 [ %295, %.lr.ph194 ], [ 0, %.lr.ph194.preheader ]
  %292 = getelementptr inbounds i64*, i64** %191, i64 %i.7193
  %293 = bitcast i64** %292 to i8**
  %294 = load i8*, i8** %293, align 8
  call void @free(i8* %294) #5
  %295 = add nuw nsw i64 %i.7193, 1
  %296 = load i64, i64* @MAX_CLIQUE_SIZE, align 8
  %297 = icmp slt i64 %295, %296
  br i1 %297, label %.lr.ph194, label %._crit_edge195.loopexit

._crit_edge195.loopexit:                          ; preds = %.lr.ph194
  br label %._crit_edge195

._crit_edge195:                                   ; preds = %._crit_edge195.loopexit, %.preheader54
  call void @free(i8* %190) #5
  br i1 %11, label %298, label %308

; <label>:298                                     ; preds = %._crit_edge195
  %299 = shl i64 %6, 3
  %300 = call noalias i8* @malloc(i64 %299) #5
  %301 = icmp eq i8* %300, null
  br i1 %301, label %302, label %303

; <label>:302                                     ; preds = %298
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 1075, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:303                                     ; preds = %298
  store i8* %300, i8** bitcast (i64** @global_i_edgeStartCounter to i8**), align 8
  %304 = call noalias i8* @malloc(i64 %299) #5
  %305 = icmp eq i8* %304, null
  br i1 %305, label %306, label %307

; <label>:306                                     ; preds = %303
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 1078, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:307                                     ; preds = %303
  store i8* %304, i8** bitcast (i64** @global_i_edgeEndCounter to i8**), align 8
  br label %308

; <label>:308                                     ; preds = %307, %._crit_edge195
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %309 = load i64*, i64** @global_i_edgeStartCounter, align 8
  %310 = load i64*, i64** @global_i_edgeEndCounter, align 8
  %311 = getelementptr inbounds i64, i64* %310, i64 %5
  store i64 %i_edgePtr.0.lcssa, i64* %311, align 8
  %312 = getelementptr inbounds i64, i64* %309, i64 %5
  store i64 0, i64* %312, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %313 = icmp sgt i64 %6, 1
  %or.cond = and i1 %11, %313
  br i1 %or.cond, label %.lr.ph192.preheader, label %.outer52.preheader

.lr.ph192.preheader:                              ; preds = %308
  %314 = and i64 %6, 1
  %lcmp.mod581 = icmp eq i64 %314, 0
  br i1 %lcmp.mod581, label %.lr.ph192.prol, label %.lr.ph192.preheader.split

.lr.ph192.prol:                                   ; preds = %.lr.ph192.preheader
  %315 = load i64, i64* %310, align 8
  %316 = getelementptr inbounds i64, i64* %310, i64 1
  %317 = load i64, i64* %316, align 8
  %318 = add i64 %317, %315
  store i64 %318, i64* %316, align 8
  %319 = getelementptr inbounds i64, i64* %309, i64 1
  store i64 %315, i64* %319, align 8
  br label %.lr.ph192.preheader.split

.lr.ph192.preheader.split:                        ; preds = %.lr.ph192.prol, %.lr.ph192.preheader
  %i.8191.unr = phi i64 [ 1, %.lr.ph192.preheader ], [ 2, %.lr.ph192.prol ]
  %320 = icmp eq i64 %6, 2
  br i1 %320, label %.outer52.preheader.loopexit, label %.lr.ph192.preheader.split.split

.lr.ph192.preheader.split.split:                  ; preds = %.lr.ph192.preheader.split
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192, %.lr.ph192.preheader.split.split
  %i.8191 = phi i64 [ %i.8191.unr, %.lr.ph192.preheader.split.split ], [ %335, %.lr.ph192 ]
  %321 = add nsw i64 %i.8191, -1
  %322 = getelementptr inbounds i64, i64* %310, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = getelementptr inbounds i64, i64* %310, i64 %i.8191
  %325 = load i64, i64* %324, align 8
  %326 = add i64 %325, %323
  store i64 %326, i64* %324, align 8
  %327 = getelementptr inbounds i64, i64* %309, i64 %i.8191
  store i64 %323, i64* %327, align 8
  %328 = add nuw nsw i64 %i.8191, 1
  %329 = getelementptr inbounds i64, i64* %310, i64 %i.8191
  %330 = load i64, i64* %329, align 8
  %331 = getelementptr inbounds i64, i64* %310, i64 %328
  %332 = load i64, i64* %331, align 8
  %333 = add i64 %332, %330
  store i64 %333, i64* %331, align 8
  %334 = getelementptr inbounds i64, i64* %309, i64 %328
  store i64 %330, i64* %334, align 8
  %335 = add nsw i64 %i.8191, 2
  %exitcond307.1 = icmp eq i64 %335, %6
  br i1 %exitcond307.1, label %.outer52.preheader.loopexit.unr-lcssa, label %.lr.ph192

.outer52.preheader.loopexit.unr-lcssa:            ; preds = %.lr.ph192
  br label %.outer52.preheader.loopexit

.outer52.preheader.loopexit:                      ; preds = %.outer52.preheader.loopexit.unr-lcssa, %.lr.ph192.preheader.split
  br label %.outer52.preheader

.outer52.preheader:                               ; preds = %.outer52.preheader.loopexit, %308
  br label %.outer52

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %.lr.ph189
  call void @llvm.x86.sse2.pause() #5
  %336 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %._crit_edge190.loopexit, label %.lr.ph189

._crit_edge190.loopexit:                          ; preds = %.lr.ph189
  br label %._crit_edge190

._crit_edge190:                                   ; preds = %.outer52, %._crit_edge190.loopexit
  %338 = icmp slt i32 %tries5.0.ph, 2
  br i1 %338, label %355, label %339

; <label>:339                                     ; preds = %._crit_edge190
  %340 = add nsw i32 %tries5.0.ph, -1
  %341 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #5, !srcloc !34
  %342 = trunc i64 %341 to i32
  %343 = icmp eq i32 %342, -1
  br i1 %343, label %348, label %.outer52

.outer52:                                         ; preds = %339, %.outer52.preheader
  %tries5.0.ph = phi i32 [ %340, %339 ], [ 9, %.outer52.preheader ]
  %344 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %345 = icmp eq i64 %344, 0
  %346 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %346, i32 0, i32 3, i32 1)
  %347 = bitcast i64* @global_edgeNum to i8*
  call void @llvm.prefetch(i8* %347, i32 0, i32 3, i32 1)
  br i1 %345, label %._crit_edge190, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %.outer52
  br label %.lr.ph189

; <label>:348                                     ; preds = %339
  %349 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %352, label %351

; <label>:351                                     ; preds = %348
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !35
  br label %352

; <label>:352                                     ; preds = %351, %348
  %353 = load i64, i64* @global_edgeNum, align 8
  %354 = add nsw i64 %353, %i_edgePtr.0.lcssa
  store i64 %354, i64* @global_edgeNum, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #5, !srcloc !36
  br label %358

; <label>:355                                     ; preds = %._crit_edge190
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #5
  %356 = load i64, i64* @global_edgeNum, align 8
  %357 = add nsw i64 %356, %i_edgePtr.0.lcssa
  store i64 %357, i64* @global_edgeNum, align 8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #5
  br label %358

; <label>:358                                     ; preds = %355, %352
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %359 = load i64, i64* @global_edgeNum, align 8
  br i1 %11, label %360, label %382

; <label>:360                                     ; preds = %358
  %361 = load i64, i64* @SCALE, align 8
  %362 = icmp slt i64 %361, 10
  br i1 %362, label %363, label %367

; <label>:363                                     ; preds = %360
  %364 = shl i64 %359, 4
  %365 = call noalias i8* @malloc(i64 %364) #5
  %366 = call noalias i8* @malloc(i64 %364) #5
  br label %375

; <label>:367                                     ; preds = %360
  %368 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %369 = load i64, i64* @TOT_VERTICES, align 8
  %370 = mul i64 %369, %368
  %371 = add i64 %370, %359
  %372 = shl i64 %371, 3
  %373 = call noalias i8* @malloc(i64 %372) #5
  %374 = call noalias i8* @malloc(i64 %372) #5
  br label %375

; <label>:375                                     ; preds = %367, %363
  %endVertex.0.in = phi i8* [ %366, %363 ], [ %374, %367 ]
  %startVertex.0.in = phi i8* [ %365, %363 ], [ %373, %367 ]
  %376 = icmp eq i8* %startVertex.0.in, null
  br i1 %376, label %377, label %378

; <label>:377                                     ; preds = %375
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10.46, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 1126, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:378                                     ; preds = %375
  %379 = icmp eq i8* %endVertex.0.in, null
  br i1 %379, label %380, label %381

; <label>:380                                     ; preds = %378
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11.47, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 1127, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:381                                     ; preds = %378
  store i8* %startVertex.0.in, i8** bitcast (i64** @global_startVertex to i8**), align 8
  store i8* %endVertex.0.in, i8** bitcast (i64** @global_endVertex to i8**), align 8
  br label %382

; <label>:382                                     ; preds = %381, %358
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %383 = load i64*, i64** @global_startVertex, align 8
  %384 = load i64*, i64** @global_endVertex, align 8
  %385 = load i64, i64* %312, align 8
  %386 = load i64, i64* %311, align 8
  %387 = icmp ult i64 %385, %386
  br i1 %387, label %.lr.ph187.preheader, label %._crit_edge188

.lr.ph187.preheader:                              ; preds = %382
  %388 = load i64, i64* %startV.0, align 8
  %389 = getelementptr inbounds i64, i64* %383, i64 %385
  store i64 %388, i64* %389, align 8
  %390 = load i64, i64* %312, align 8
  %391 = sub i64 %385, %390
  %392 = getelementptr inbounds i64, i64* %endV.0, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = getelementptr inbounds i64, i64* %384, i64 %385
  store i64 %393, i64* %394, align 8
  %395 = add nsw i64 %385, 1
  %396 = load i64, i64* %311, align 8
  %397 = icmp ult i64 %395, %396
  br i1 %397, label %.lr.ph187..lr.ph187_crit_edge.preheader, label %._crit_edge188

.lr.ph187..lr.ph187_crit_edge.preheader:          ; preds = %.lr.ph187.preheader
  br label %.lr.ph187..lr.ph187_crit_edge

.lr.ph187..lr.ph187_crit_edge:                    ; preds = %.lr.ph187..lr.ph187_crit_edge, %.lr.ph187..lr.ph187_crit_edge.preheader
  %398 = phi i64 [ %408, %.lr.ph187..lr.ph187_crit_edge ], [ %395, %.lr.ph187..lr.ph187_crit_edge.preheader ]
  %.pre314 = load i64, i64* %312, align 8
  %399 = sub i64 %398, %.pre314
  %400 = getelementptr inbounds i64, i64* %startV.0, i64 %399
  %401 = load i64, i64* %400, align 8
  %402 = getelementptr inbounds i64, i64* %383, i64 %398
  store i64 %401, i64* %402, align 8
  %403 = load i64, i64* %312, align 8
  %404 = sub i64 %398, %403
  %405 = getelementptr inbounds i64, i64* %endV.0, i64 %404
  %406 = load i64, i64* %405, align 8
  %407 = getelementptr inbounds i64, i64* %384, i64 %398
  store i64 %406, i64* %407, align 8
  %408 = add nsw i64 %398, 1
  %409 = load i64, i64* %311, align 8
  %410 = icmp ult i64 %408, %409
  br i1 %410, label %.lr.ph187..lr.ph187_crit_edge, label %._crit_edge188.loopexit

._crit_edge188.loopexit:                          ; preds = %.lr.ph187..lr.ph187_crit_edge
  br label %._crit_edge188

._crit_edge188:                                   ; preds = %._crit_edge188.loopexit, %.lr.ph187.preheader, %382
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %411 = load i64, i64* @TOT_VERTICES, align 8
  call void @createPartition(i64 0, i64 %411, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #5
  %412 = load i64, i64* %i_start, align 8
  %413 = load i64, i64* %i_stop, align 8
  %414 = icmp slt i64 %412, %413
  br i1 %414, label %.preheader47.preheader, label %._crit_edge183

.preheader47.preheader:                           ; preds = %._crit_edge188
  br label %.preheader47

.preheader47:                                     ; preds = %._crit_edge178, %.preheader47.preheader
  %415 = phi i64 [ %622, %._crit_edge178 ], [ %413, %.preheader47.preheader ]
  %i.10181 = phi i64 [ %623, %._crit_edge178 ], [ %412, %.preheader47.preheader ]
  %i_edgePtr.7180 = phi i64 [ %i_edgePtr.8.lcssa, %._crit_edge178 ], [ 0, %.preheader47.preheader ]
  br label %.outer48

.outer48:                                         ; preds = %.us-lcssa.us, %.preheader47
  %h.0.ph = phi i64 [ %137, %.preheader47 ], [ %.lcssa598, %.us-lcssa.us ]
  %l.0.ph = phi i64 [ 0, %.preheader47 ], [ %l.0.ph50426.lcssa, %.us-lcssa.us ]
  %416 = sub nsw i64 %h.0.ph, %l.0.ph
  %417 = icmp sgt i64 %416, 1
  br i1 %417, label %.outer49.split.us.preheader, label %.thread.preheader.loopexit

.outer49.split.us.preheader:                      ; preds = %.outer48
  br label %.outer49.split.us

.outer49.split.us:                                ; preds = %.outer49.backedge, %.outer49.split.us.preheader
  %.pn508 = phi i64 [ %418, %.outer49.backedge ], [ %l.0.ph, %.outer49.split.us.preheader ]
  %l.0.ph50426 = phi i64 [ %418, %.outer49.backedge ], [ %l.0.ph, %.outer49.split.us.preheader ]
  %.in506 = add nsw i64 %.pn508, %h.0.ph
  %418 = sdiv i64 %.in506, 2
  %419 = getelementptr inbounds i64, i64* %136, i64 %418
  %420 = icmp sgt i64 %.in506, 1
  %421 = load i64, i64* %419, align 8
  %422 = icmp ult i64 %i.10181, %421
  br i1 %420, label %.outer49.split.us.split.us, label %.outer49.split.us.split.preheader

.outer49.split.us.split.preheader:                ; preds = %.outer49.split.us
  br label %.outer49.split.us.split

.outer49.split.us.split.us:                       ; preds = %.outer49.split.us
  br i1 %422, label %.us-lcssa.us, label %.outer49.backedge

.outer49.backedge.loopexit:                       ; preds = %.outer49.split.us.split
  br label %.outer49.backedge

.outer49.backedge:                                ; preds = %.outer49.backedge.loopexit, %.outer49.split.us.split.us
  %423 = sub nsw i64 %h.0.ph, %418
  %424 = icmp sgt i64 %423, 1
  br i1 %424, label %.outer49.split.us, label %.thread.loopexit

.outer49.split.us.split:                          ; preds = %.outer49.split.us.split, %.outer49.split.us.split.preheader
  br i1 %422, label %.outer49.split.us.split, label %.outer49.backedge.loopexit

.us-lcssa.us:                                     ; preds = %.outer49.split.us.split.us
  %.lcssa598 = phi i64 [ %418, %.outer49.split.us.split.us ]
  %.in506.lcssa = phi i64 [ %.in506, %.outer49.split.us.split.us ]
  %l.0.ph50426.lcssa = phi i64 [ %l.0.ph50426, %.outer49.split.us.split.us ]
  %425 = add nsw i64 %.lcssa598, -1
  %426 = getelementptr inbounds i64, i64* %136, i64 %425
  %427 = load i64, i64* %426, align 8
  %428 = icmp ult i64 %i.10181, %427
  br i1 %428, label %.outer48, label %429

; <label>:429                                     ; preds = %.us-lcssa.us
  %.lcssa605 = phi i64 [ %427, %.us-lcssa.us ]
  %h.0.ph.lcssa601 = phi i64 [ %h.0.ph, %.us-lcssa.us ]
  %.in506.lcssa.lcssa = phi i64 [ %.in506.lcssa, %.us-lcssa.us ]
  %l.0.ph50426.lcssa.lcssa = phi i64 [ %l.0.ph50426.lcssa, %.us-lcssa.us ]
  %.off18 = add i64 %.in506.lcssa.lcssa, 1
  %430 = icmp ult i64 %.off18, 3
  br i1 %430, label %.thread.preheader, label %.loopexit46

.thread.loopexit:                                 ; preds = %.outer49.backedge
  %h.0.ph.lcssa600 = phi i64 [ %h.0.ph, %.outer49.backedge ]
  %.lcssa599 = phi i64 [ %418, %.outer49.backedge ]
  br label %.thread.preheader

.thread.preheader.loopexit:                       ; preds = %.outer48
  %l.0.ph.lcssa = phi i64 [ %l.0.ph, %.outer48 ]
  %h.0.ph.lcssa = phi i64 [ %h.0.ph, %.outer48 ]
  br label %.thread.preheader

.thread.preheader:                                ; preds = %.thread.preheader.loopexit, %.thread.loopexit, %429
  %h.0.ph602 = phi i64 [ %h.0.ph.lcssa600, %.thread.loopexit ], [ %h.0.ph.lcssa601, %429 ], [ %h.0.ph.lcssa, %.thread.preheader.loopexit ]
  %m9.0.in.ph = phi i64 [ %.lcssa599, %.thread.loopexit ], [ %l.0.ph50426.lcssa.lcssa, %429 ], [ %l.0.ph.lcssa, %.thread.preheader.loopexit ]
  br label %.thread

.thread:                                          ; preds = %432, %.thread.preheader
  %m9.0.in = phi i64 [ %m9.0, %432 ], [ %m9.0.in.ph, %.thread.preheader ]
  %m9.0 = add nsw i64 %m9.0.in, 1
  %431 = icmp slt i64 %m9.0, %h.0.ph602
  br i1 %431, label %432, label %.loopexit46.loopexit

; <label>:432                                     ; preds = %.thread
  %433 = getelementptr inbounds i64, i64* %136, i64 %m9.0
  %434 = load i64, i64* %433, align 8
  %435 = icmp ult i64 %i.10181, %434
  br i1 %435, label %.loopexit46.loopexit, label %.thread

.loopexit46.loopexit:                             ; preds = %432, %.thread
  %m9.0.in.lcssa = phi i64 [ %m9.0.in, %432 ], [ %m9.0.in, %.thread ]
  %.phi.trans.insert = getelementptr inbounds i64, i64* %136, i64 %m9.0.in.lcssa
  %.pre316 = load i64, i64* %.phi.trans.insert, align 8
  br label %.loopexit46

.loopexit46:                                      ; preds = %.loopexit46.loopexit, %429
  %436 = phi i64 [ %.lcssa605, %429 ], [ %.pre316, %.loopexit46.loopexit ]
  %437 = load i64, i64* @TOT_VERTICES, align 8
  %438 = icmp ugt i64 %437, 1
  br i1 %438, label %.lr.ph177.preheader, label %._crit_edge178

.lr.ph177.preheader:                              ; preds = %.loopexit46
  %439 = load float, float* @PROB_INTERCL_EDGES, align 4
  %broadcast.splatinsert446 = insertelement <2 x i64> undef, i64 %i.10181, i32 0
  %broadcast.splat447 = shufflevector <2 x i64> %broadcast.splatinsert446, <2 x i64> undef, <2 x i32> zeroinitializer
  %broadcast.splatinsert476 = insertelement <2 x i64> undef, i64 %i.10181, i32 0
  %broadcast.splat477 = shufflevector <2 x i64> %broadcast.splatinsert476, <2 x i64> undef, <2 x i32> zeroinitializer
  br label %.lr.ph177

.lr.ph177:                                        ; preds = %.loopexit36, %.lr.ph177.preheader
  %i_edgePtr.8175 = phi i64 [ %i_edgePtr.12, %.loopexit36 ], [ %i_edgePtr.7180, %.lr.ph177.preheader ]
  %p.0174 = phi float [ %619, %.loopexit36 ], [ %439, %.lr.ph177.preheader ]
  %d.0173 = phi i64 [ %618, %.loopexit36 ], [ 1, %.lr.ph177.preheader ]
  %440 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %441 = urem i64 %440, 1000
  %442 = uitofp i64 %441 to float
  %443 = fdiv float %442, 1.000000e+03
  %444 = fcmp ugt float %443, %p.0174
  br i1 %444, label %.loopexit41, label %445

; <label>:445                                     ; preds = %.lr.ph177
  %446 = add i64 %d.0173, %i.10181
  %447 = load i64, i64* @TOT_VERTICES, align 8
  %448 = urem i64 %446, %447
  br label %.outer43

.outer43:                                         ; preds = %.us-lcssa247.us, %445
  %h.1.ph = phi i64 [ %.lcssa608, %.us-lcssa247.us ], [ %137, %445 ]
  %l.1.ph = phi i64 [ %l.1.ph45430.lcssa, %.us-lcssa247.us ], [ 0, %445 ]
  %449 = sub nsw i64 %h.1.ph, %l.1.ph
  %450 = icmp sgt i64 %449, 1
  br i1 %450, label %.outer44.split.us.preheader, label %.thread12.preheader.loopexit

.outer44.split.us.preheader:                      ; preds = %.outer43
  br label %.outer44.split.us

.outer44.split.us:                                ; preds = %.outer44.backedge, %.outer44.split.us.preheader
  %.pn507 = phi i64 [ %451, %.outer44.backedge ], [ %l.1.ph, %.outer44.split.us.preheader ]
  %l.1.ph45430 = phi i64 [ %451, %.outer44.backedge ], [ %l.1.ph, %.outer44.split.us.preheader ]
  %.in505 = add nsw i64 %.pn507, %h.1.ph
  %451 = sdiv i64 %.in505, 2
  %452 = getelementptr inbounds i64, i64* %136, i64 %451
  %453 = icmp sgt i64 %.in505, 1
  %454 = load i64, i64* %452, align 8
  %455 = icmp ult i64 %448, %454
  br i1 %453, label %.outer44.split.us.split.us, label %.outer44.split.us.split.preheader

.outer44.split.us.split.preheader:                ; preds = %.outer44.split.us
  br label %.outer44.split.us.split

.outer44.split.us.split.us:                       ; preds = %.outer44.split.us
  br i1 %455, label %.us-lcssa247.us, label %.outer44.backedge

.outer44.backedge.loopexit:                       ; preds = %.outer44.split.us.split
  br label %.outer44.backedge

.outer44.backedge:                                ; preds = %.outer44.backedge.loopexit, %.outer44.split.us.split.us
  %456 = sub nsw i64 %h.1.ph, %451
  %457 = icmp sgt i64 %456, 1
  br i1 %457, label %.outer44.split.us, label %.thread12.loopexit

.outer44.split.us.split:                          ; preds = %.outer44.split.us.split, %.outer44.split.us.split.preheader
  br i1 %455, label %.outer44.split.us.split, label %.outer44.backedge.loopexit

.us-lcssa247.us:                                  ; preds = %.outer44.split.us.split.us
  %.lcssa608 = phi i64 [ %451, %.outer44.split.us.split.us ]
  %.in505.lcssa = phi i64 [ %.in505, %.outer44.split.us.split.us ]
  %l.1.ph45430.lcssa = phi i64 [ %l.1.ph45430, %.outer44.split.us.split.us ]
  %458 = add nsw i64 %.lcssa608, -1
  %459 = getelementptr inbounds i64, i64* %136, i64 %458
  %460 = load i64, i64* %459, align 8
  %461 = icmp ugt i64 %460, %448
  br i1 %461, label %.outer43, label %462

; <label>:462                                     ; preds = %.us-lcssa247.us
  %.lcssa615 = phi i64 [ %460, %.us-lcssa247.us ]
  %h.1.ph.lcssa611 = phi i64 [ %h.1.ph, %.us-lcssa247.us ]
  %.in505.lcssa.lcssa = phi i64 [ %.in505.lcssa, %.us-lcssa247.us ]
  %l.1.ph45430.lcssa.lcssa = phi i64 [ %l.1.ph45430.lcssa, %.us-lcssa247.us ]
  %.off17 = add i64 %.in505.lcssa.lcssa, 1
  %463 = icmp ult i64 %.off17, 3
  br i1 %463, label %.thread12.preheader, label %.loopexit42

.thread12.loopexit:                               ; preds = %.outer44.backedge
  %h.1.ph.lcssa610 = phi i64 [ %h.1.ph, %.outer44.backedge ]
  %.lcssa609 = phi i64 [ %451, %.outer44.backedge ]
  br label %.thread12.preheader

.thread12.preheader.loopexit:                     ; preds = %.outer43
  %l.1.ph.lcssa = phi i64 [ %l.1.ph, %.outer43 ]
  %h.1.ph.lcssa = phi i64 [ %h.1.ph, %.outer43 ]
  br label %.thread12.preheader

.thread12.preheader:                              ; preds = %.thread12.preheader.loopexit, %.thread12.loopexit, %462
  %h.1.ph612 = phi i64 [ %h.1.ph.lcssa610, %.thread12.loopexit ], [ %h.1.ph.lcssa611, %462 ], [ %h.1.ph.lcssa, %.thread12.preheader.loopexit ]
  %m13.0.in.ph = phi i64 [ %.lcssa609, %.thread12.loopexit ], [ %l.1.ph45430.lcssa.lcssa, %462 ], [ %l.1.ph.lcssa, %.thread12.preheader.loopexit ]
  br label %.thread12

.thread12:                                        ; preds = %465, %.thread12.preheader
  %m13.0.in = phi i64 [ %m13.0, %465 ], [ %m13.0.in.ph, %.thread12.preheader ]
  %m13.0 = add nsw i64 %m13.0.in, 1
  %464 = icmp slt i64 %m13.0, %h.1.ph612
  br i1 %464, label %465, label %.loopexit42.loopexit

; <label>:465                                     ; preds = %.thread12
  %466 = getelementptr inbounds i64, i64* %136, i64 %m13.0
  %467 = load i64, i64* %466, align 8
  %468 = icmp ult i64 %448, %467
  br i1 %468, label %.loopexit42.loopexit, label %.thread12

.loopexit42.loopexit:                             ; preds = %465, %.thread12
  %m13.0.in.lcssa = phi i64 [ %m13.0.in, %465 ], [ %m13.0.in, %.thread12 ]
  %.phi.trans.insert318 = getelementptr inbounds i64, i64* %136, i64 %m13.0.in.lcssa
  %.pre319 = load i64, i64* %.phi.trans.insert318, align 8
  br label %.loopexit42

.loopexit42:                                      ; preds = %.loopexit42.loopexit, %462
  %469 = phi i64 [ %.lcssa615, %462 ], [ %.pre319, %.loopexit42.loopexit ]
  %470 = icmp eq i64 %436, %469
  br i1 %470, label %.loopexit41, label %471

; <label>:471                                     ; preds = %.loopexit42
  %472 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %473 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %474 = urem i64 %472, %473
  %475 = add i64 %474, 1
  %476 = icmp sgt i64 %475, 0
  br i1 %476, label %.lr.ph166.preheader, label %.loopexit41

.lr.ph166.preheader:                              ; preds = %471
  %477 = add i64 %i_edgePtr.8175, 1
  %478 = add i64 %474, 1
  %min.iters.check455 = icmp ult i64 %478, 4
  br i1 %min.iters.check455, label %.lr.ph166.preheader514, label %min.iters.checked456

min.iters.checked456:                             ; preds = %.lr.ph166.preheader
  %n.vec458 = and i64 %478, -4
  %cmp.zero459 = icmp eq i64 %n.vec458, 0
  %ind.end464 = add i64 %i_edgePtr.8175, %n.vec458
  br i1 %cmp.zero459, label %.lr.ph166.preheader514, label %vector.ph460

vector.ph460:                                     ; preds = %min.iters.checked456
  %broadcast.splatinsert478 = insertelement <2 x i64> undef, i64 %448, i32 0
  %broadcast.splat479 = shufflevector <2 x i64> %broadcast.splatinsert478, <2 x i64> undef, <2 x i32> zeroinitializer
  %479 = add i64 %474, -3
  %480 = lshr i64 %479, 2
  %481 = add nuw nsw i64 %480, 1
  %xtraiter574 = and i64 %481, 3
  %lcmp.mod575 = icmp eq i64 %xtraiter574, 0
  br i1 %lcmp.mod575, label %vector.ph460.split, label %vector.body452.prol.preheader

vector.body452.prol.preheader:                    ; preds = %vector.ph460
  br label %vector.body452.prol

vector.body452.prol:                              ; preds = %vector.body452.prol, %vector.body452.prol.preheader
  %index461.prol = phi i64 [ %index.next462.prol, %vector.body452.prol ], [ 0, %vector.body452.prol.preheader ]
  %prol.iter576 = phi i64 [ %prol.iter576.sub, %vector.body452.prol ], [ %xtraiter574, %vector.body452.prol.preheader ]
  %offset.idx467.prol = add i64 %i_edgePtr.8175, %index461.prol
  %482 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467.prol
  %483 = bitcast i64* %482 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %483, align 8
  %484 = getelementptr i64, i64* %482, i64 2
  %485 = bitcast i64* %484 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %485, align 8
  %486 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467.prol
  %487 = bitcast i64* %486 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %487, align 8
  %488 = getelementptr i64, i64* %486, i64 2
  %489 = bitcast i64* %488 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %489, align 8
  %index.next462.prol = add i64 %index461.prol, 4
  %prol.iter576.sub = add i64 %prol.iter576, -1
  %prol.iter576.cmp = icmp eq i64 %prol.iter576.sub, 0
  br i1 %prol.iter576.cmp, label %vector.ph460.split.loopexit, label %vector.body452.prol, !llvm.loop !37

vector.ph460.split.loopexit:                      ; preds = %vector.body452.prol
  %index.next462.prol.lcssa = phi i64 [ %index.next462.prol, %vector.body452.prol ]
  br label %vector.ph460.split

vector.ph460.split:                               ; preds = %vector.ph460.split.loopexit, %vector.ph460
  %index461.unr = phi i64 [ 0, %vector.ph460 ], [ %index.next462.prol.lcssa, %vector.ph460.split.loopexit ]
  %490 = icmp ult i64 %479, 12
  br i1 %490, label %middle.block453, label %vector.ph460.split.split

vector.ph460.split.split:                         ; preds = %vector.ph460.split
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph460.split.split
  %index461 = phi i64 [ %index461.unr, %vector.ph460.split.split ], [ %index.next462.3, %vector.body452 ]
  %offset.idx467 = add i64 %i_edgePtr.8175, %index461
  %491 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467
  %492 = bitcast i64* %491 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %492, align 8
  %493 = getelementptr i64, i64* %491, i64 2
  %494 = bitcast i64* %493 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %494, align 8
  %495 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467
  %496 = bitcast i64* %495 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %496, align 8
  %497 = getelementptr i64, i64* %495, i64 2
  %498 = bitcast i64* %497 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %498, align 8
  %index.next462 = add i64 %index461, 4
  %offset.idx467.1 = add i64 %i_edgePtr.8175, %index.next462
  %499 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467.1
  %500 = bitcast i64* %499 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %500, align 8
  %501 = getelementptr i64, i64* %499, i64 2
  %502 = bitcast i64* %501 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %502, align 8
  %503 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467.1
  %504 = bitcast i64* %503 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %504, align 8
  %505 = getelementptr i64, i64* %503, i64 2
  %506 = bitcast i64* %505 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %506, align 8
  %index.next462.1 = add i64 %index461, 8
  %offset.idx467.2 = add i64 %i_edgePtr.8175, %index.next462.1
  %507 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467.2
  %508 = bitcast i64* %507 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %508, align 8
  %509 = getelementptr i64, i64* %507, i64 2
  %510 = bitcast i64* %509 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %510, align 8
  %511 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467.2
  %512 = bitcast i64* %511 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %512, align 8
  %513 = getelementptr i64, i64* %511, i64 2
  %514 = bitcast i64* %513 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %514, align 8
  %index.next462.2 = add i64 %index461, 12
  %offset.idx467.3 = add i64 %i_edgePtr.8175, %index.next462.2
  %515 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx467.3
  %516 = bitcast i64* %515 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %516, align 8
  %517 = getelementptr i64, i64* %515, i64 2
  %518 = bitcast i64* %517 to <2 x i64>*
  store <2 x i64> %broadcast.splat477, <2 x i64>* %518, align 8
  %519 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx467.3
  %520 = bitcast i64* %519 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %520, align 8
  %521 = getelementptr i64, i64* %519, i64 2
  %522 = bitcast i64* %521 to <2 x i64>*
  store <2 x i64> %broadcast.splat479, <2 x i64>* %522, align 8
  %index.next462.3 = add i64 %index461, 16
  %523 = icmp eq i64 %index.next462.3, %n.vec458
  br i1 %523, label %middle.block453.unr-lcssa, label %vector.body452, !llvm.loop !38

middle.block453.unr-lcssa:                        ; preds = %vector.body452
  br label %middle.block453

middle.block453:                                  ; preds = %middle.block453.unr-lcssa, %vector.ph460.split
  %cmp.n466 = icmp eq i64 %478, %n.vec458
  br i1 %cmp.n466, label %.loopexit41.loopexit, label %.lr.ph166.preheader514

.lr.ph166.preheader514:                           ; preds = %middle.block453, %min.iters.checked456, %.lr.ph166.preheader
  %i_edgePtr.9164.ph = phi i64 [ %i_edgePtr.8175, %min.iters.checked456 ], [ %i_edgePtr.8175, %.lr.ph166.preheader ], [ %ind.end464, %middle.block453 ]
  %j16.0163.ph = phi i64 [ 0, %min.iters.checked456 ], [ 0, %.lr.ph166.preheader ], [ %n.vec458, %middle.block453 ]
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166, %.lr.ph166.preheader514
  %i_edgePtr.9164 = phi i64 [ %526, %.lr.ph166 ], [ %i_edgePtr.9164.ph, %.lr.ph166.preheader514 ]
  %j16.0163 = phi i64 [ %527, %.lr.ph166 ], [ %j16.0163.ph, %.lr.ph166.preheader514 ]
  %524 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.9164
  store i64 %i.10181, i64* %524, align 8
  %525 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.9164
  store i64 %448, i64* %525, align 8
  %526 = add nsw i64 %i_edgePtr.9164, 1
  %527 = add nuw nsw i64 %j16.0163, 1
  %exitcond305 = icmp eq i64 %527, %475
  br i1 %exitcond305, label %.loopexit41.loopexit.loopexit, label %.lr.ph166, !llvm.loop !39

.loopexit41.loopexit.loopexit:                    ; preds = %.lr.ph166
  br label %.loopexit41.loopexit

.loopexit41.loopexit:                             ; preds = %.loopexit41.loopexit.loopexit, %middle.block453
  %528 = add i64 %477, %474
  br label %.loopexit41

.loopexit41:                                      ; preds = %.loopexit41.loopexit, %471, %.loopexit42, %.lr.ph177
  %i_edgePtr.10 = phi i64 [ %i_edgePtr.8175, %.loopexit42 ], [ %i_edgePtr.8175, %.lr.ph177 ], [ %i_edgePtr.8175, %471 ], [ %528, %.loopexit41.loopexit ]
  %529 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %530 = urem i64 %529, 1000
  %531 = uitofp i64 %530 to float
  %532 = fdiv float %531, 1.000000e+03
  %533 = fcmp ugt float %532, %p.0174
  br i1 %533, label %.loopexit36, label %534

; <label>:534                                     ; preds = %.loopexit41
  %535 = sub i64 %i.10181, %d.0173
  %536 = load i64, i64* @TOT_VERTICES, align 8
  %537 = urem i64 %535, %536
  br label %.outer38

.outer38:                                         ; preds = %.us-lcssa248.us, %534
  %h.2.ph = phi i64 [ %.lcssa618, %.us-lcssa248.us ], [ %137, %534 ]
  %l.2.ph = phi i64 [ %l.2.ph40435.lcssa, %.us-lcssa248.us ], [ 0, %534 ]
  %538 = sub nsw i64 %h.2.ph, %l.2.ph
  %539 = icmp sgt i64 %538, 1
  br i1 %539, label %.outer39.split.us.preheader, label %.thread13.preheader.loopexit

.outer39.split.us.preheader:                      ; preds = %.outer38
  br label %.outer39.split.us

.outer39.split.us:                                ; preds = %.outer39.backedge, %.outer39.split.us.preheader
  %.pn = phi i64 [ %540, %.outer39.backedge ], [ %l.2.ph, %.outer39.split.us.preheader ]
  %l.2.ph40435 = phi i64 [ %540, %.outer39.backedge ], [ %l.2.ph, %.outer39.split.us.preheader ]
  %.in = add nsw i64 %.pn, %h.2.ph
  %540 = sdiv i64 %.in, 2
  %541 = getelementptr inbounds i64, i64* %136, i64 %540
  %542 = icmp sgt i64 %.in, 1
  %543 = load i64, i64* %541, align 8
  %544 = icmp ult i64 %537, %543
  br i1 %542, label %.outer39.split.us.split.us, label %.outer39.split.us.split.preheader

.outer39.split.us.split.preheader:                ; preds = %.outer39.split.us
  br label %.outer39.split.us.split

.outer39.split.us.split.us:                       ; preds = %.outer39.split.us
  br i1 %544, label %.us-lcssa248.us, label %.outer39.backedge

.outer39.backedge.loopexit:                       ; preds = %.outer39.split.us.split
  br label %.outer39.backedge

.outer39.backedge:                                ; preds = %.outer39.backedge.loopexit, %.outer39.split.us.split.us
  %545 = sub nsw i64 %h.2.ph, %540
  %546 = icmp sgt i64 %545, 1
  br i1 %546, label %.outer39.split.us, label %.thread13.loopexit

.outer39.split.us.split:                          ; preds = %.outer39.split.us.split, %.outer39.split.us.split.preheader
  br i1 %544, label %.outer39.split.us.split, label %.outer39.backedge.loopexit

.us-lcssa248.us:                                  ; preds = %.outer39.split.us.split.us
  %.lcssa618 = phi i64 [ %540, %.outer39.split.us.split.us ]
  %.in.lcssa = phi i64 [ %.in, %.outer39.split.us.split.us ]
  %l.2.ph40435.lcssa = phi i64 [ %l.2.ph40435, %.outer39.split.us.split.us ]
  %547 = add nsw i64 %.lcssa618, -1
  %548 = getelementptr inbounds i64, i64* %136, i64 %547
  %549 = load i64, i64* %548, align 8
  %550 = icmp ugt i64 %549, %537
  br i1 %550, label %.outer38, label %551

; <label>:551                                     ; preds = %.us-lcssa248.us
  %.lcssa625 = phi i64 [ %549, %.us-lcssa248.us ]
  %h.2.ph.lcssa621 = phi i64 [ %h.2.ph, %.us-lcssa248.us ]
  %.in.lcssa.lcssa = phi i64 [ %.in.lcssa, %.us-lcssa248.us ]
  %l.2.ph40435.lcssa.lcssa = phi i64 [ %l.2.ph40435.lcssa, %.us-lcssa248.us ]
  %.off = add i64 %.in.lcssa.lcssa, 1
  %552 = icmp ult i64 %.off, 3
  br i1 %552, label %.thread13.preheader, label %.loopexit37

.thread13.loopexit:                               ; preds = %.outer39.backedge
  %h.2.ph.lcssa620 = phi i64 [ %h.2.ph, %.outer39.backedge ]
  %.lcssa619 = phi i64 [ %540, %.outer39.backedge ]
  br label %.thread13.preheader

.thread13.preheader.loopexit:                     ; preds = %.outer38
  %l.2.ph.lcssa = phi i64 [ %l.2.ph, %.outer38 ]
  %h.2.ph.lcssa = phi i64 [ %h.2.ph, %.outer38 ]
  br label %.thread13.preheader

.thread13.preheader:                              ; preds = %.thread13.preheader.loopexit, %.thread13.loopexit, %551
  %h.2.ph622 = phi i64 [ %h.2.ph.lcssa620, %.thread13.loopexit ], [ %h.2.ph.lcssa621, %551 ], [ %h.2.ph.lcssa, %.thread13.preheader.loopexit ]
  %m19.0.in.ph = phi i64 [ %.lcssa619, %.thread13.loopexit ], [ %l.2.ph40435.lcssa.lcssa, %551 ], [ %l.2.ph.lcssa, %.thread13.preheader.loopexit ]
  br label %.thread13

.thread13:                                        ; preds = %554, %.thread13.preheader
  %m19.0.in = phi i64 [ %m19.0, %554 ], [ %m19.0.in.ph, %.thread13.preheader ]
  %m19.0 = add nsw i64 %m19.0.in, 1
  %553 = icmp slt i64 %m19.0, %h.2.ph622
  br i1 %553, label %554, label %.loopexit37.loopexit

; <label>:554                                     ; preds = %.thread13
  %555 = getelementptr inbounds i64, i64* %136, i64 %m19.0
  %556 = load i64, i64* %555, align 8
  %557 = icmp ult i64 %537, %556
  br i1 %557, label %.loopexit37.loopexit, label %.thread13

.loopexit37.loopexit:                             ; preds = %554, %.thread13
  %m19.0.in.lcssa = phi i64 [ %m19.0.in, %554 ], [ %m19.0.in, %.thread13 ]
  %.phi.trans.insert321 = getelementptr inbounds i64, i64* %136, i64 %m19.0.in.lcssa
  %.pre322 = load i64, i64* %.phi.trans.insert321, align 8
  br label %.loopexit37

.loopexit37:                                      ; preds = %.loopexit37.loopexit, %551
  %558 = phi i64 [ %.lcssa625, %551 ], [ %.pre322, %.loopexit37.loopexit ]
  %559 = icmp eq i64 %436, %558
  br i1 %559, label %.loopexit36, label %560

; <label>:560                                     ; preds = %.loopexit37
  %561 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %562 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %563 = urem i64 %561, %562
  %564 = add i64 %563, 1
  %565 = icmp sgt i64 %564, 0
  br i1 %565, label %.lr.ph171.preheader, label %.loopexit36

.lr.ph171.preheader:                              ; preds = %560
  %566 = add i64 %i_edgePtr.10, 1
  %567 = add i64 %563, 1
  %min.iters.check = icmp ult i64 %567, 4
  br i1 %min.iters.check, label %.lr.ph171.preheader513, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph171.preheader
  %n.vec = and i64 %567, -4
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = add i64 %i_edgePtr.10, %n.vec
  br i1 %cmp.zero, label %.lr.ph171.preheader513, label %vector.ph

vector.ph:                                        ; preds = %min.iters.checked
  %broadcast.splatinsert448 = insertelement <2 x i64> undef, i64 %537, i32 0
  %broadcast.splat449 = shufflevector <2 x i64> %broadcast.splatinsert448, <2 x i64> undef, <2 x i32> zeroinitializer
  %568 = add i64 %563, -3
  %569 = lshr i64 %568, 2
  %570 = add nuw nsw i64 %569, 1
  %xtraiter577 = and i64 %570, 3
  %lcmp.mod578 = icmp eq i64 %xtraiter577, 0
  br i1 %lcmp.mod578, label %vector.ph.split, label %vector.body.prol.preheader

vector.body.prol.preheader:                       ; preds = %vector.ph
  br label %vector.body.prol

vector.body.prol:                                 ; preds = %vector.body.prol, %vector.body.prol.preheader
  %index.prol = phi i64 [ %index.next.prol, %vector.body.prol ], [ 0, %vector.body.prol.preheader ]
  %prol.iter579 = phi i64 [ %prol.iter579.sub, %vector.body.prol ], [ %xtraiter577, %vector.body.prol.preheader ]
  %offset.idx.prol = add i64 %i_edgePtr.10, %index.prol
  %571 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx.prol
  %572 = bitcast i64* %571 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %572, align 8
  %573 = getelementptr i64, i64* %571, i64 2
  %574 = bitcast i64* %573 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %574, align 8
  %575 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx.prol
  %576 = bitcast i64* %575 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %576, align 8
  %577 = getelementptr i64, i64* %575, i64 2
  %578 = bitcast i64* %577 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %578, align 8
  %index.next.prol = add i64 %index.prol, 4
  %prol.iter579.sub = add i64 %prol.iter579, -1
  %prol.iter579.cmp = icmp eq i64 %prol.iter579.sub, 0
  br i1 %prol.iter579.cmp, label %vector.ph.split.loopexit, label %vector.body.prol, !llvm.loop !40

vector.ph.split.loopexit:                         ; preds = %vector.body.prol
  %index.next.prol.lcssa = phi i64 [ %index.next.prol, %vector.body.prol ]
  br label %vector.ph.split

vector.ph.split:                                  ; preds = %vector.ph.split.loopexit, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.prol.lcssa, %vector.ph.split.loopexit ]
  %579 = icmp ult i64 %568, 12
  br i1 %579, label %middle.block, label %vector.ph.split.split

vector.ph.split.split:                            ; preds = %vector.ph.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.split.split
  %index = phi i64 [ %index.unr, %vector.ph.split.split ], [ %index.next.3, %vector.body ]
  %offset.idx = add i64 %i_edgePtr.10, %index
  %580 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx
  %581 = bitcast i64* %580 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %581, align 8
  %582 = getelementptr i64, i64* %580, i64 2
  %583 = bitcast i64* %582 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %583, align 8
  %584 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx
  %585 = bitcast i64* %584 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %585, align 8
  %586 = getelementptr i64, i64* %584, i64 2
  %587 = bitcast i64* %586 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %587, align 8
  %index.next = add i64 %index, 4
  %offset.idx.1 = add i64 %i_edgePtr.10, %index.next
  %588 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx.1
  %589 = bitcast i64* %588 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %589, align 8
  %590 = getelementptr i64, i64* %588, i64 2
  %591 = bitcast i64* %590 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %591, align 8
  %592 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx.1
  %593 = bitcast i64* %592 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %593, align 8
  %594 = getelementptr i64, i64* %592, i64 2
  %595 = bitcast i64* %594 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %595, align 8
  %index.next.1 = add i64 %index, 8
  %offset.idx.2 = add i64 %i_edgePtr.10, %index.next.1
  %596 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx.2
  %597 = bitcast i64* %596 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %597, align 8
  %598 = getelementptr i64, i64* %596, i64 2
  %599 = bitcast i64* %598 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %599, align 8
  %600 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx.2
  %601 = bitcast i64* %600 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %601, align 8
  %602 = getelementptr i64, i64* %600, i64 2
  %603 = bitcast i64* %602 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %603, align 8
  %index.next.2 = add i64 %index, 12
  %offset.idx.3 = add i64 %i_edgePtr.10, %index.next.2
  %604 = getelementptr inbounds i64, i64* %startV.0, i64 %offset.idx.3
  %605 = bitcast i64* %604 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %605, align 8
  %606 = getelementptr i64, i64* %604, i64 2
  %607 = bitcast i64* %606 to <2 x i64>*
  store <2 x i64> %broadcast.splat447, <2 x i64>* %607, align 8
  %608 = getelementptr inbounds i64, i64* %endV.0, i64 %offset.idx.3
  %609 = bitcast i64* %608 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %609, align 8
  %610 = getelementptr i64, i64* %608, i64 2
  %611 = bitcast i64* %610 to <2 x i64>*
  store <2 x i64> %broadcast.splat449, <2 x i64>* %611, align 8
  %index.next.3 = add i64 %index, 16
  %612 = icmp eq i64 %index.next.3, %n.vec
  br i1 %612, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !41

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.ph.split
  %cmp.n = icmp eq i64 %567, %n.vec
  br i1 %cmp.n, label %.loopexit36.loopexit, label %.lr.ph171.preheader513

.lr.ph171.preheader513:                           ; preds = %middle.block, %min.iters.checked, %.lr.ph171.preheader
  %i_edgePtr.11169.ph = phi i64 [ %i_edgePtr.10, %min.iters.checked ], [ %i_edgePtr.10, %.lr.ph171.preheader ], [ %ind.end, %middle.block ]
  %j22.0168.ph = phi i64 [ 0, %min.iters.checked ], [ 0, %.lr.ph171.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171, %.lr.ph171.preheader513
  %i_edgePtr.11169 = phi i64 [ %615, %.lr.ph171 ], [ %i_edgePtr.11169.ph, %.lr.ph171.preheader513 ]
  %j22.0168 = phi i64 [ %616, %.lr.ph171 ], [ %j22.0168.ph, %.lr.ph171.preheader513 ]
  %613 = getelementptr inbounds i64, i64* %startV.0, i64 %i_edgePtr.11169
  store i64 %i.10181, i64* %613, align 8
  %614 = getelementptr inbounds i64, i64* %endV.0, i64 %i_edgePtr.11169
  store i64 %537, i64* %614, align 8
  %615 = add nsw i64 %i_edgePtr.11169, 1
  %616 = add nuw nsw i64 %j22.0168, 1
  %exitcond306 = icmp eq i64 %616, %564
  br i1 %exitcond306, label %.loopexit36.loopexit.loopexit, label %.lr.ph171, !llvm.loop !42

.loopexit36.loopexit.loopexit:                    ; preds = %.lr.ph171
  br label %.loopexit36.loopexit

.loopexit36.loopexit:                             ; preds = %.loopexit36.loopexit.loopexit, %middle.block
  %617 = add i64 %566, %563
  br label %.loopexit36

.loopexit36:                                      ; preds = %.loopexit36.loopexit, %560, %.loopexit37, %.loopexit41
  %i_edgePtr.12 = phi i64 [ %i_edgePtr.10, %.loopexit37 ], [ %i_edgePtr.10, %.loopexit41 ], [ %i_edgePtr.10, %560 ], [ %617, %.loopexit36.loopexit ]
  %618 = shl i64 %d.0173, 1
  %619 = fmul float %p.0174, 5.000000e-01
  %620 = load i64, i64* @TOT_VERTICES, align 8
  %621 = icmp ult i64 %618, %620
  br i1 %621, label %.lr.ph177, label %._crit_edge178.loopexit

._crit_edge178.loopexit:                          ; preds = %.loopexit36
  %i_edgePtr.12.lcssa = phi i64 [ %i_edgePtr.12, %.loopexit36 ]
  %.pre323 = load i64, i64* %i_stop, align 8
  br label %._crit_edge178

._crit_edge178:                                   ; preds = %._crit_edge178.loopexit, %.loopexit46
  %622 = phi i64 [ %415, %.loopexit46 ], [ %.pre323, %._crit_edge178.loopexit ]
  %i_edgePtr.8.lcssa = phi i64 [ %i_edgePtr.7180, %.loopexit46 ], [ %i_edgePtr.12.lcssa, %._crit_edge178.loopexit ]
  %623 = add nsw i64 %i.10181, 1
  %624 = icmp slt i64 %623, %622
  br i1 %624, label %.preheader47, label %._crit_edge183.loopexit

._crit_edge183.loopexit:                          ; preds = %._crit_edge178
  %i_edgePtr.8.lcssa.lcssa = phi i64 [ %i_edgePtr.8.lcssa, %._crit_edge178 ]
  br label %._crit_edge183

._crit_edge183:                                   ; preds = %._crit_edge183.loopexit, %._crit_edge188
  %i_edgePtr.7.lcssa = phi i64 [ 0, %._crit_edge188 ], [ %i_edgePtr.8.lcssa.lcssa, %._crit_edge183.loopexit ]
  store i64 %i_edgePtr.7.lcssa, i64* %311, align 8
  store i64 0, i64* %312, align 8
  br i1 %11, label %625, label %.critedge

; <label>:625                                     ; preds = %._crit_edge183
  store i64 0, i64* @global_edgeNum, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %313, label %.lr.ph162.preheader, label %.outer35.preheader

.lr.ph162.preheader:                              ; preds = %625
  %626 = and i64 %6, 1
  %lcmp.mod573 = icmp eq i64 %626, 0
  br i1 %lcmp.mod573, label %.lr.ph162.prol, label %.lr.ph162.preheader.split

.lr.ph162.prol:                                   ; preds = %.lr.ph162.preheader
  %627 = load i64, i64* %310, align 8
  %628 = getelementptr inbounds i64, i64* %310, i64 1
  %629 = load i64, i64* %628, align 8
  %630 = add i64 %629, %627
  store i64 %630, i64* %628, align 8
  %631 = getelementptr inbounds i64, i64* %309, i64 1
  store i64 %627, i64* %631, align 8
  br label %.lr.ph162.preheader.split

.lr.ph162.preheader.split:                        ; preds = %.lr.ph162.prol, %.lr.ph162.preheader
  %i.11160.unr = phi i64 [ 1, %.lr.ph162.preheader ], [ 2, %.lr.ph162.prol ]
  %632 = icmp eq i64 %6, 2
  br i1 %632, label %.outer35.preheader.loopexit, label %.lr.ph162.preheader.split.split

.lr.ph162.preheader.split.split:                  ; preds = %.lr.ph162.preheader.split
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162, %.lr.ph162.preheader.split.split
  %i.11160 = phi i64 [ %i.11160.unr, %.lr.ph162.preheader.split.split ], [ %647, %.lr.ph162 ]
  %633 = add nsw i64 %i.11160, -1
  %634 = getelementptr inbounds i64, i64* %310, i64 %633
  %635 = load i64, i64* %634, align 8
  %636 = getelementptr inbounds i64, i64* %310, i64 %i.11160
  %637 = load i64, i64* %636, align 8
  %638 = add i64 %637, %635
  store i64 %638, i64* %636, align 8
  %639 = getelementptr inbounds i64, i64* %309, i64 %i.11160
  store i64 %635, i64* %639, align 8
  %640 = add nuw nsw i64 %i.11160, 1
  %641 = getelementptr inbounds i64, i64* %310, i64 %i.11160
  %642 = load i64, i64* %641, align 8
  %643 = getelementptr inbounds i64, i64* %310, i64 %640
  %644 = load i64, i64* %643, align 8
  %645 = add i64 %644, %642
  store i64 %645, i64* %643, align 8
  %646 = getelementptr inbounds i64, i64* %309, i64 %640
  store i64 %642, i64* %646, align 8
  %647 = add nsw i64 %i.11160, 2
  %exitcond304.1 = icmp eq i64 %647, %6
  br i1 %exitcond304.1, label %.outer35.preheader.loopexit.unr-lcssa, label %.lr.ph162

.critedge:                                        ; preds = %._crit_edge183
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br label %.outer35.preheader

.outer35.preheader.loopexit.unr-lcssa:            ; preds = %.lr.ph162
  br label %.outer35.preheader.loopexit

.outer35.preheader.loopexit:                      ; preds = %.outer35.preheader.loopexit.unr-lcssa, %.lr.ph162.preheader.split
  br label %.outer35.preheader

.outer35.preheader:                               ; preds = %.outer35.preheader.loopexit, %.critedge, %625
  br label %.outer35

.outer35:                                         ; preds = %655, %.outer35.preheader
  %tries24.0.ph = phi i32 [ %656, %655 ], [ 9, %.outer35.preheader ]
  %648 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %649 = icmp eq i64 %648, 0
  %650 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %650, i32 0, i32 3, i32 1)
  %651 = bitcast i64* @global_edgeNum to i8*
  call void @llvm.prefetch(i8* %651, i32 0, i32 3, i32 1)
  br i1 %649, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %.outer35
  br label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158, %.lr.ph158.preheader
  call void @llvm.x86.sse2.pause() #5
  %652 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %653 = icmp eq i64 %652, 0
  br i1 %653, label %._crit_edge159.loopexit, label %.lr.ph158

._crit_edge159.loopexit:                          ; preds = %.lr.ph158
  br label %._crit_edge159

._crit_edge159:                                   ; preds = %._crit_edge159.loopexit, %.outer35
  %654 = icmp slt i32 %tries24.0.ph, 2
  br i1 %654, label %667, label %655

; <label>:655                                     ; preds = %._crit_edge159
  %656 = add nsw i32 %tries24.0.ph, -1
  %657 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 0, i64 3, i64 4294967295) #5, !srcloc !34
  %658 = trunc i64 %657 to i32
  %659 = icmp eq i32 %658, -1
  br i1 %659, label %660, label %.outer35

; <label>:660                                     ; preds = %655
  %661 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %662 = icmp eq i64 %661, 0
  br i1 %662, label %664, label %663

; <label>:663                                     ; preds = %660
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !35
  br label %664

; <label>:664                                     ; preds = %663, %660
  %665 = load i64, i64* @global_edgeNum, align 8
  %666 = add nsw i64 %665, %i_edgePtr.7.lcssa
  store i64 %666, i64* @global_edgeNum, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 3) #5, !srcloc !36
  br label %670

; <label>:667                                     ; preds = %._crit_edge159
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #5
  %668 = load i64, i64* @global_edgeNum, align 8
  %669 = add nsw i64 %668, %i_edgePtr.7.lcssa
  store i64 %669, i64* @global_edgeNum, align 8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #5
  br label %670

; <label>:670                                     ; preds = %667, %664
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %671 = load i64, i64* @global_edgeNum, align 8
  %672 = load i64, i64* %312, align 8
  %673 = load i64, i64* %311, align 8
  %674 = icmp ult i64 %672, %673
  br i1 %674, label %.lr.ph156.preheader, label %._crit_edge157

.lr.ph156.preheader:                              ; preds = %670
  %675 = load i64, i64* %startV.0, align 8
  %676 = add i64 %672, %359
  %677 = getelementptr inbounds i64, i64* %383, i64 %676
  store i64 %675, i64* %677, align 8
  %678 = load i64, i64* %312, align 8
  %679 = sub i64 %672, %678
  %680 = getelementptr inbounds i64, i64* %endV.0, i64 %679
  %681 = load i64, i64* %680, align 8
  %682 = getelementptr inbounds i64, i64* %384, i64 %676
  store i64 %681, i64* %682, align 8
  %683 = add nsw i64 %672, 1
  %684 = load i64, i64* %311, align 8
  %685 = icmp ult i64 %683, %684
  br i1 %685, label %.lr.ph156..lr.ph156_crit_edge.preheader, label %._crit_edge157

.lr.ph156..lr.ph156_crit_edge.preheader:          ; preds = %.lr.ph156.preheader
  br label %.lr.ph156..lr.ph156_crit_edge

.lr.ph156..lr.ph156_crit_edge:                    ; preds = %.lr.ph156..lr.ph156_crit_edge, %.lr.ph156..lr.ph156_crit_edge.preheader
  %686 = phi i64 [ %697, %.lr.ph156..lr.ph156_crit_edge ], [ %683, %.lr.ph156..lr.ph156_crit_edge.preheader ]
  %.pre324 = load i64, i64* %312, align 8
  %687 = sub i64 %686, %.pre324
  %688 = getelementptr inbounds i64, i64* %startV.0, i64 %687
  %689 = load i64, i64* %688, align 8
  %690 = add i64 %686, %359
  %691 = getelementptr inbounds i64, i64* %383, i64 %690
  store i64 %689, i64* %691, align 8
  %692 = load i64, i64* %312, align 8
  %693 = sub i64 %686, %692
  %694 = getelementptr inbounds i64, i64* %endV.0, i64 %693
  %695 = load i64, i64* %694, align 8
  %696 = getelementptr inbounds i64, i64* %384, i64 %690
  store i64 %695, i64* %696, align 8
  %697 = add nsw i64 %686, 1
  %698 = load i64, i64* %311, align 8
  %699 = icmp ult i64 %697, %698
  br i1 %699, label %.lr.ph156..lr.ph156_crit_edge, label %._crit_edge157.loopexit

._crit_edge157.loopexit:                          ; preds = %.lr.ph156..lr.ph156_crit_edge
  br label %._crit_edge157

._crit_edge157:                                   ; preds = %._crit_edge157.loopexit, %.lr.ph156.preheader, %670
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %700 = add i64 %671, %359
  br i1 %11, label %701, label %.critedge6

; <label>:701                                     ; preds = %._crit_edge157
  %702 = getelementptr inbounds i8, i8* %argPtr, i64 32
  %703 = bitcast i8* %702 to i64*
  store i64 %700, i64* %703, align 8
  %puts = call i32 @puts(i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @str.1, i64 0, i64 0))
  %704 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13.48, i64 0, i64 0), i64 %359)
  %705 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i64 %671)
  %706 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i64 %700)
  %707 = bitcast i64* %309 to i8*
  call void @free(i8* %707) #5
  %708 = bitcast i64* %310 to i8*
  call void @free(i8* %708) #5
  %709 = bitcast i64* %87 to i8*
  call void @free(i8* %709) #5
  %710 = bitcast i64* %136 to i8*
  call void @free(i8* %710) #5
  %711 = bitcast i64* %135 to i8*
  call void @free(i8* %711) #5
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  call void @free(i8* %startV.0.in) #5
  call void @free(i8* %endV.0.in) #5
  %712 = shl i64 %700, 3
  %713 = call noalias i8* @malloc(i64 %712) #5
  %714 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %715 = bitcast i8* %714 to i8**
  store i8* %713, i8** %715, align 8
  %716 = icmp eq i8* %713, null
  br i1 %716, label %717, label %718

; <label>:717                                     ; preds = %701
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 1366, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

.critedge6:                                       ; preds = %._crit_edge157
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  call void @free(i8* %startV.0.in) #5
  call void @free(i8* %endV.0.in) #5
  br label %718

; <label>:718                                     ; preds = %.critedge6, %701
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %719 = load float, float* @PERC_INT_WEIGHTS, align 4
  call void @createPartition(i64 0, i64 %700, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #5
  %720 = load i64, i64* %i_start, align 8
  %721 = load i64, i64* %i_stop, align 8
  %722 = icmp slt i64 %720, %721
  br i1 %722, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %718
  %723 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %724 = bitcast i8* %723 to i64**
  br label %725

; <label>:725                                     ; preds = %743, %.lr.ph151
  %i.13149 = phi i64 [ %720, %.lr.ph151 ], [ %744, %743 ]
  %numStrWtEdges.0148 = phi i64 [ 0, %.lr.ph151 ], [ %numStrWtEdges.1, %743 ]
  %726 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %727 = urem i64 %726, 1000
  %728 = uitofp i64 %727 to float
  %729 = fdiv float %728, 1.000000e+03
  %730 = fcmp ugt float %729, %719
  br i1 %730, label %739, label %731

; <label>:731                                     ; preds = %725
  %732 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %733 = load i64, i64* @MAX_INT_WEIGHT, align 8
  %734 = add i64 %733, -1
  %735 = urem i64 %732, %734
  %736 = add i64 %735, 1
  %737 = load i64*, i64** %724, align 8
  %738 = getelementptr inbounds i64, i64* %737, i64 %i.13149
  store i64 %736, i64* %738, align 8
  br label %743

; <label>:739                                     ; preds = %725
  %740 = load i64*, i64** %724, align 8
  %741 = getelementptr inbounds i64, i64* %740, i64 %i.13149
  store i64 -1, i64* %741, align 8
  %742 = add i64 %numStrWtEdges.0148, 1
  br label %743

; <label>:743                                     ; preds = %739, %731
  %numStrWtEdges.1 = phi i64 [ %numStrWtEdges.0148, %731 ], [ %742, %739 ]
  %744 = add nsw i64 %i.13149, 1
  %745 = load i64, i64* %i_stop, align 8
  %746 = icmp slt i64 %744, %745
  br i1 %746, label %725, label %._crit_edge152.loopexit

._crit_edge152.loopexit:                          ; preds = %743
  %numStrWtEdges.1.lcssa = phi i64 [ %numStrWtEdges.1, %743 ]
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %._crit_edge152.loopexit, %718
  %numStrWtEdges.0.lcssa = phi i64 [ 0, %718 ], [ %numStrWtEdges.1.lcssa, %._crit_edge152.loopexit ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %747 = icmp ne i64 %700, 0
  %or.cond249 = and i1 %11, %747
  br i1 %or.cond249, label %.lr.ph147, label %.outer32.preheader

.lr.ph147:                                        ; preds = %._crit_edge152
  %748 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %749 = bitcast i8* %748 to i64**
  %750 = add i64 %671, %359
  %xtraiter570 = and i64 %750, 1
  %lcmp.mod571 = icmp eq i64 %xtraiter570, 0
  br i1 %lcmp.mod571, label %.lr.ph147.split, label %751

; <label>:751                                     ; preds = %.lr.ph147
  %752 = load i64*, i64** %749, align 8
  %753 = load i64, i64* %752, align 8
  %754 = icmp slt i64 %753, 0
  br i1 %754, label %755, label %756

; <label>:755                                     ; preds = %751
  store i64 0, i64* %752, align 8
  br label %756

; <label>:756                                     ; preds = %755, %751
  %t26.1.prol = phi i64 [ 1, %755 ], [ 0, %751 ]
  br label %.lr.ph147.split

.lr.ph147.split:                                  ; preds = %756, %.lr.ph147
  %i.14146.unr = phi i64 [ 0, %.lr.ph147 ], [ 1, %756 ]
  %t26.0145.unr = phi i64 [ 0, %.lr.ph147 ], [ %t26.1.prol, %756 ]
  %757 = icmp eq i64 %750, 1
  br i1 %757, label %.outer32.preheader.loopexit, label %.lr.ph147.split.split

.lr.ph147.split.split:                            ; preds = %.lr.ph147.split
  br label %758

; <label>:758                                     ; preds = %1117, %.lr.ph147.split.split
  %i.14146 = phi i64 [ %i.14146.unr, %.lr.ph147.split.split ], [ %1118, %1117 ]
  %t26.0145 = phi i64 [ %t26.0145.unr, %.lr.ph147.split.split ], [ %t26.1.1, %1117 ]
  %759 = load i64*, i64** %749, align 8
  %760 = getelementptr inbounds i64, i64* %759, i64 %i.14146
  %761 = load i64, i64* %760, align 8
  %762 = icmp slt i64 %761, 0
  br i1 %762, label %763, label %766

; <label>:763                                     ; preds = %758
  %764 = sub nsw i64 0, %t26.0145
  store i64 %764, i64* %760, align 8
  %765 = add nsw i64 %t26.0145, 1
  br label %766

; <label>:766                                     ; preds = %763, %758
  %t26.1 = phi i64 [ %765, %763 ], [ %t26.0145, %758 ]
  %767 = add nuw nsw i64 %i.14146, 1
  %768 = load i64*, i64** %749, align 8
  %769 = getelementptr inbounds i64, i64* %768, i64 %767
  %770 = load i64, i64* %769, align 8
  %771 = icmp slt i64 %770, 0
  br i1 %771, label %1114, label %1117

.outer32.preheader.loopexit.unr-lcssa:            ; preds = %1117
  br label %.outer32.preheader.loopexit

.outer32.preheader.loopexit:                      ; preds = %.outer32.preheader.loopexit.unr-lcssa, %.lr.ph147.split
  br label %.outer32.preheader

.outer32.preheader:                               ; preds = %.outer32.preheader.loopexit, %._crit_edge152
  br label %.outer32

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %.lr.ph143
  call void @llvm.x86.sse2.pause() #5
  %772 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %773 = icmp eq i64 %772, 0
  br i1 %773, label %._crit_edge144.loopexit, label %.lr.ph143

._crit_edge144.loopexit:                          ; preds = %.lr.ph143
  br label %._crit_edge144

._crit_edge144:                                   ; preds = %.outer32, %._crit_edge144.loopexit
  %774 = icmp slt i32 %tries28.0.ph, 2
  br i1 %774, label %791, label %775

; <label>:775                                     ; preds = %._crit_edge144
  %776 = add nsw i32 %tries28.0.ph, -1
  %777 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 4, i64 0, i64 4, i64 4294967295) #5, !srcloc !34
  %778 = trunc i64 %777 to i32
  %779 = icmp eq i32 %778, -1
  br i1 %779, label %784, label %.outer32

.outer32:                                         ; preds = %775, %.outer32.preheader
  %tries28.0.ph = phi i32 [ %776, %775 ], [ 9, %.outer32.preheader ]
  %780 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %781 = icmp eq i64 %780, 0
  %782 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %782, i32 0, i32 3, i32 1)
  %783 = bitcast i64* @global_numStrWtEdges to i8*
  call void @llvm.prefetch(i8* %783, i32 0, i32 3, i32 1)
  br i1 %781, label %._crit_edge144, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %.outer32
  br label %.lr.ph143

; <label>:784                                     ; preds = %775
  %785 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %786 = icmp eq i64 %785, 0
  br i1 %786, label %788, label %787

; <label>:787                                     ; preds = %784
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !35
  br label %788

; <label>:788                                     ; preds = %787, %784
  %789 = load i64, i64* @global_numStrWtEdges, align 8
  %790 = add i64 %789, %numStrWtEdges.0.lcssa
  store i64 %790, i64* @global_numStrWtEdges, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 4) #5, !srcloc !36
  br label %794

; <label>:791                                     ; preds = %._crit_edge144
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #5
  %792 = load i64, i64* @global_numStrWtEdges, align 8
  %793 = add i64 %792, %numStrWtEdges.0.lcssa
  store i64 %793, i64* @global_numStrWtEdges, align 8
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #5
  br label %794

; <label>:794                                     ; preds = %791, %788
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %795 = load i64, i64* @global_numStrWtEdges, align 8
  br i1 %11, label %796, label %804

; <label>:796                                     ; preds = %794
  %797 = load i64, i64* @MAX_STRLEN, align 8
  %798 = mul i64 %797, %795
  %799 = call noalias i8* @malloc(i64 %798) #5
  %800 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %801 = bitcast i8* %800 to i8**
  store i8* %799, i8** %801, align 8
  %802 = icmp eq i8* %799, null
  br i1 %802, label %803, label %804

; <label>:803                                     ; preds = %796
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 1411, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:804                                     ; preds = %796, %794
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  call void @createPartition(i64 0, i64 %700, i64 %5, i64 %6, i64* nonnull %i_start, i64* nonnull %i_stop) #5
  %805 = load i64, i64* %i_start, align 8
  %806 = load i64, i64* %i_stop, align 8
  %807 = icmp slt i64 %805, %806
  br i1 %807, label %.lr.ph141, label %._crit_edge142

.lr.ph141:                                        ; preds = %804
  %808 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %809 = bitcast i8* %808 to i64**
  %810 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %811 = bitcast i8* %810 to i8**
  %.pre325 = load i64, i64* @MAX_STRLEN, align 8
  br label %812

; <label>:812                                     ; preds = %.loopexit30, %.lr.ph141
  %813 = phi i64 [ %806, %.lr.ph141 ], [ %835, %.loopexit30 ]
  %814 = phi i64 [ %.pre325, %.lr.ph141 ], [ %836, %.loopexit30 ]
  %i.15139 = phi i64 [ %805, %.lr.ph141 ], [ %837, %.loopexit30 ]
  %815 = load i64*, i64** %809, align 8
  %816 = getelementptr inbounds i64, i64* %815, i64 %i.15139
  %817 = load i64, i64* %816, align 8
  %818 = icmp slt i64 %817, 1
  %819 = icmp sgt i64 %814, 0
  %or.cond251 = and i1 %818, %819
  br i1 %or.cond251, label %.lr.ph138.preheader, label %.loopexit30

.lr.ph138.preheader:                              ; preds = %812
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138, %.lr.ph138.preheader
  %j29.0137 = phi i64 [ %832, %.lr.ph138 ], [ 0, %.lr.ph138.preheader ]
  %820 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %821 = urem i64 %820, 127
  %822 = add nuw nsw i64 %821, 1
  %823 = trunc i64 %822 to i8
  %824 = load i64*, i64** %809, align 8
  %825 = getelementptr inbounds i64, i64* %824, i64 %i.15139
  %826 = load i64, i64* %825, align 8
  %827 = load i64, i64* @MAX_STRLEN, align 8
  %828 = mul i64 %827, %826
  %829 = sub i64 %j29.0137, %828
  %830 = load i8*, i8** %811, align 8
  %831 = getelementptr inbounds i8, i8* %830, i64 %829
  store i8 %823, i8* %831, align 1
  %832 = add nuw nsw i64 %j29.0137, 1
  %833 = load i64, i64* @MAX_STRLEN, align 8
  %834 = icmp slt i64 %832, %833
  br i1 %834, label %.lr.ph138, label %.loopexit30.loopexit

.loopexit30.loopexit:                             ; preds = %.lr.ph138
  %.lcssa595 = phi i64 [ %833, %.lr.ph138 ]
  %.pre326 = load i64, i64* %i_stop, align 8
  br label %.loopexit30

.loopexit30:                                      ; preds = %.loopexit30.loopexit, %812
  %835 = phi i64 [ %.pre326, %.loopexit30.loopexit ], [ %813, %812 ]
  %836 = phi i64 [ %.lcssa595, %.loopexit30.loopexit ], [ %814, %812 ]
  %837 = add nsw i64 %i.15139, 1
  %838 = icmp slt i64 %837, %835
  br i1 %838, label %812, label %._crit_edge142.loopexit

._crit_edge142.loopexit:                          ; preds = %.loopexit30
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %._crit_edge142.loopexit, %804
  br i1 %11, label %839, label %.loopexit28

; <label>:839                                     ; preds = %._crit_edge142
  %840 = load i8*, i8** @SOUGHT_STRING, align 8
  %841 = call i64 @strlen(i8* %840) #16
  %842 = load i64, i64* @MAX_STRLEN, align 8
  %843 = icmp eq i64 %841, %842
  br i1 %843, label %848, label %844

; <label>:844                                     ; preds = %839
  %845 = call noalias i8* @malloc(i64 %842) #5
  store i8* %845, i8** @SOUGHT_STRING, align 8
  %846 = icmp eq i8* %845, null
  br i1 %846, label %847, label %848

; <label>:847                                     ; preds = %844
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 1436, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:848                                     ; preds = %844, %839
  %849 = call i64 @random_generate(%struct.random* nonnull %7) #5
  %850 = urem i64 %849, %795
  %851 = load i64, i64* @MAX_STRLEN, align 8
  %852 = icmp sgt i64 %851, 0
  br i1 %852, label %.lr.ph136, label %.loopexit28

.lr.ph136:                                        ; preds = %848
  %853 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %854 = bitcast i8* %853 to i8**
  br label %855

; <label>:855                                     ; preds = %855, %.lr.ph136
  %856 = phi i64 [ %851, %.lr.ph136 ], [ %865, %855 ]
  %j31.0134 = phi i64 [ 0, %.lr.ph136 ], [ %864, %855 ]
  %857 = mul nsw i64 %856, %850
  %858 = add nsw i64 %857, %j31.0134
  %859 = load i8*, i8** %854, align 8
  %860 = getelementptr inbounds i8, i8* %859, i64 %858
  %861 = load i8, i8* %860, align 1
  %862 = load i8*, i8** @SOUGHT_STRING, align 8
  %863 = getelementptr inbounds i8, i8* %862, i64 %j31.0134
  store i8 %861, i8* %863, align 1
  %864 = add nuw nsw i64 %j31.0134, 1
  %865 = load i64, i64* @MAX_STRLEN, align 8
  %866 = icmp slt i64 %864, %865
  br i1 %866, label %855, label %.loopexit28.loopexit

.loopexit28.loopexit:                             ; preds = %855
  br label %.loopexit28

.loopexit28:                                      ; preds = %.loopexit28.loopexit, %848, %._crit_edge142
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %867 = load i64, i64* %i_start, align 8
  %868 = load i64, i64* %i_stop, align 8
  %869 = icmp slt i64 %867, %868
  br i1 %869, label %.lr.ph132.preheader, label %._crit_edge133

.lr.ph132.preheader:                              ; preds = %.loopexit28
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132, %.lr.ph132.preheader
  %i.16130 = phi i64 [ %878, %.lr.ph132 ], [ %867, %.lr.ph132.preheader ]
  %870 = getelementptr inbounds i64, i64* %383, i64 %i.16130
  %871 = load i64, i64* %870, align 8
  %872 = getelementptr inbounds i64, i64* %20, i64 %871
  %873 = load i64, i64* %872, align 8
  store i64 %873, i64* %870, align 8
  %874 = getelementptr inbounds i64, i64* %384, i64 %i.16130
  %875 = load i64, i64* %874, align 8
  %876 = getelementptr inbounds i64, i64* %20, i64 %875
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %874, align 8
  %878 = add nsw i64 %i.16130, 1
  %879 = load i64, i64* %i_stop, align 8
  %880 = icmp slt i64 %878, %879
  br i1 %880, label %.lr.ph132, label %._crit_edge133.loopexit

._crit_edge133.loopexit:                          ; preds = %.lr.ph132
  br label %._crit_edge133

._crit_edge133:                                   ; preds = %._crit_edge133.loopexit, %.loopexit28
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %11, label %881, label %._crit_edge133._crit_edge

._crit_edge133._crit_edge:                        ; preds = %._crit_edge133
  %.pre337 = getelementptr inbounds i8, i8* %argPtr, i64 8
  br label %893

; <label>:881                                     ; preds = %._crit_edge133
  %882 = shl i64 %700, 3
  %883 = call noalias i8* @malloc(i64 %882) #5
  %884 = bitcast i8* %argPtr to i8**
  store i8* %883, i8** %884, align 8
  %885 = icmp eq i8* %883, null
  br i1 %885, label %886, label %887

; <label>:886                                     ; preds = %881
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 1472, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:887                                     ; preds = %881
  %888 = call noalias i8* @malloc(i64 %882) #5
  %889 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %890 = bitcast i8* %889 to i8**
  store i8* %888, i8** %890, align 8
  %891 = icmp eq i8* %888, null
  br i1 %891, label %892, label %893

; <label>:892                                     ; preds = %887
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 1474, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:893                                     ; preds = %887, %._crit_edge133._crit_edge
  %.pre-phi = phi i8* [ %.pre337, %._crit_edge133._crit_edge ], [ %889, %887 ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %894 = bitcast i8* %argPtr to i64**
  %895 = load i64*, i64** %894, align 8
  %896 = bitcast i8* %.pre-phi to i64**
  %897 = load i64*, i64** %896, align 8
  call void @all_radixsort_node_aux_s3(i64 %700, i64* %383, i64* %895, i64* %384, i64* %897) #5
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %11, label %898, label %901

; <label>:898                                     ; preds = %893
  %899 = bitcast i64* %383 to i8*
  call void @free(i8* %899) #5
  %900 = bitcast i64* %384 to i8*
  call void @free(i8* %900) #5
  br label %901

; <label>:901                                     ; preds = %898, %893
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %902 = load i64, i64* @SCALE, align 8
  %903 = icmp slt i64 %902, 12
  br i1 %903, label %904, label %1004

; <label>:904                                     ; preds = %901
  br i1 %11, label %.preheader22, label %.critedge11

.preheader22:                                     ; preds = %904
  %905 = icmp eq i64 %700, 0
  br i1 %905, label %.critedge8, label %.preheader21.lr.ph.preheader

.preheader21.lr.ph.preheader:                     ; preds = %.preheader22
  %906 = add i64 %671, %359
  %907 = add i64 %906, 1
  %908 = add i64 %671, %359
  %909 = add i64 %908, -2
  br label %.preheader21.lr.ph

._crit_edge103:                                   ; preds = %.preheader21.lr.ph
  %910 = load i64*, i64** %894, align 8
  %911 = getelementptr inbounds i64, i64* %910, i64 %i1.0.ph111
  %912 = load i64, i64* %911, align 8
  %913 = load i64, i64* @TOT_VERTICES, align 8
  %914 = add i64 %913, -1
  %915 = icmp eq i64 %912, %914
  br i1 %915, label %.critedge8.loopexit509, label %.outer.loopexit

.outer.loopexit.loopexit:                         ; preds = %._crit_edge103.us
  %i1.1.us.lcssa = phi i64 [ %i1.1.us, %._crit_edge103.us ]
  %i.18.lcssa.us.lcssa = phi i64 [ %i.18.lcssa.us, %._crit_edge103.us ]
  br label %.outer.loopexit

.outer.loopexit:                                  ; preds = %.outer.loopexit.loopexit, %._crit_edge103
  %i1.1.lcssa = phi i64 [ %i1.0.ph111, %._crit_edge103 ], [ %i1.1.us.lcssa, %.outer.loopexit.loopexit ]
  %i.18.lcssa.lcssa = phi i64 [ %i1.0.ph111, %._crit_edge103 ], [ %i.18.lcssa.us.lcssa, %.outer.loopexit.loopexit ]
  %916 = icmp ult i64 %i.18.lcssa.lcssa, %700
  br i1 %916, label %.preheader21.lr.ph, label %.critedge8.loopexit509

.preheader21.lr.ph:                               ; preds = %.outer.loopexit, %.preheader21.lr.ph.preheader
  %i1.0.ph111 = phi i64 [ %i1.1.lcssa, %.outer.loopexit ], [ 0, %.preheader21.lr.ph.preheader ]
  %917 = icmp ult i64 %i1.0.ph111, %700
  br i1 %917, label %.lr.ph.us.preheader, label %._crit_edge103

.lr.ph.us.preheader:                              ; preds = %.preheader21.lr.ph
  %918 = xor i64 %i1.0.ph111, 1
  %919 = sub i64 -2, %i1.0.ph111
  %920 = sub i64 %907, %i1.0.ph111
  %921 = sub i64 %909, %i1.0.ph111
  br label %.lr.ph.us

; <label>:922                                     ; preds = %.lr.ph.us, %997
  %i.1892.us = phi i64 [ %i1.0.ph111, %.lr.ph.us ], [ %998, %997 ]
  %923 = getelementptr inbounds i64, i64* %1001, i64 %i.1892.us
  %924 = load i64, i64* %923, align 8
  %925 = icmp eq i64 %924, %1003
  br i1 %925, label %997, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %997, %922
  %i.18.lcssa.us = phi i64 [ %i.1892.us, %922 ], [ %998, %997 ]
  %i1.1.us = phi i64 [ %i.1892.us, %922 ], [ %i1.0109.us, %997 ]
  %926 = icmp slt i64 %i1.0.ph111, %i1.1.us
  br i1 %926, label %.lr.ph102.us.preheader, label %._crit_edge103.us

.lr.ph102.us.preheader:                           ; preds = %._crit_edge.us
  %927 = add i64 %i1.1.us, %918
  %928 = add i64 %919, %i1.1.us
  br label %.lr.ph102.us

._crit_edge103.us.loopexit:                       ; preds = %.loopexit19.us
  %.pre336 = load i64*, i64** %894, align 8
  br label %._crit_edge103.us

._crit_edge103.us:                                ; preds = %._crit_edge103.us.loopexit, %._crit_edge.us
  %929 = phi i64* [ %.pre336, %._crit_edge103.us.loopexit ], [ %1001, %._crit_edge.us ]
  %930 = getelementptr inbounds i64, i64* %929, i64 %i1.0.ph111
  %931 = load i64, i64* %930, align 8
  %932 = load i64, i64* @TOT_VERTICES, align 8
  %933 = add i64 %932, -1
  %934 = icmp eq i64 %931, %933
  br i1 %934, label %.lr.ph108.us.preheader, label %.outer.loopexit.loopexit

.lr.ph108.us.preheader:                           ; preds = %._crit_edge103.us
  br label %.lr.ph108.us

.lr.ph108.us:                                     ; preds = %.loopexit.us, %.lr.ph108.us.preheader
  %indvar562 = phi i64 [ 0, %.lr.ph108.us.preheader ], [ %indvar.next563, %.loopexit.us ]
  %j35.0107.us = phi i64 [ %i1.0.ph111, %.lr.ph108.us.preheader ], [ %935, %.loopexit.us ]
  %935 = add nuw nsw i64 %j35.0107.us, 1
  %936 = icmp ult i64 %935, %700
  br i1 %936, label %.lr.ph106.us.preheader, label %.loopexit.us

.lr.ph106.us.preheader:                           ; preds = %.lr.ph108.us
  %937 = sub i64 %920, %indvar562
  %xtraiter564 = and i64 %937, 1
  %lcmp.mod565 = icmp eq i64 %xtraiter564, 0
  br i1 %lcmp.mod565, label %.lr.ph106.us.preheader.split, label %.lr.ph106.us.prol

.lr.ph106.us.prol:                                ; preds = %.lr.ph106.us.preheader
  %938 = load i64*, i64** %896, align 8
  %939 = getelementptr inbounds i64, i64* %938, i64 %935
  %940 = load i64, i64* %939, align 8
  %941 = getelementptr inbounds i64, i64* %938, i64 %j35.0107.us
  %942 = load i64, i64* %941, align 8
  %943 = icmp ult i64 %940, %942
  br i1 %943, label %944, label %947

; <label>:944                                     ; preds = %.lr.ph106.us.prol
  store i64 %940, i64* %941, align 8
  %945 = load i64*, i64** %896, align 8
  %946 = getelementptr inbounds i64, i64* %945, i64 %935
  store i64 %942, i64* %946, align 8
  br label %947

; <label>:947                                     ; preds = %944, %.lr.ph106.us.prol
  %948 = add nsw i64 %j35.0107.us, 2
  br label %.lr.ph106.us.preheader.split

.lr.ph106.us.preheader.split:                     ; preds = %947, %.lr.ph106.us.preheader
  %k36.0104.us.unr = phi i64 [ %935, %.lr.ph106.us.preheader ], [ %948, %947 ]
  %949 = icmp eq i64 %921, %indvar562
  br i1 %949, label %.loopexit.us.loopexit, label %.lr.ph106.us.preheader.split.split

.lr.ph106.us.preheader.split.split:               ; preds = %.lr.ph106.us.preheader.split
  br label %.lr.ph106.us

.lr.ph106.us:                                     ; preds = %1112, %.lr.ph106.us.preheader.split.split
  %k36.0104.us = phi i64 [ %k36.0104.us.unr, %.lr.ph106.us.preheader.split.split ], [ %1113, %1112 ]
  %950 = load i64*, i64** %896, align 8
  %951 = getelementptr inbounds i64, i64* %950, i64 %k36.0104.us
  %952 = load i64, i64* %951, align 8
  %953 = getelementptr inbounds i64, i64* %950, i64 %j35.0107.us
  %954 = load i64, i64* %953, align 8
  %955 = icmp ult i64 %952, %954
  br i1 %955, label %956, label %.lr.ph106.us.1566

; <label>:956                                     ; preds = %.lr.ph106.us
  store i64 %952, i64* %953, align 8
  %957 = load i64*, i64** %896, align 8
  %958 = getelementptr inbounds i64, i64* %957, i64 %k36.0104.us
  store i64 %954, i64* %958, align 8
  br label %.lr.ph106.us.1566

.lr.ph106.us.1566:                                ; preds = %956, %.lr.ph106.us
  %959 = add nsw i64 %k36.0104.us, 1
  %960 = load i64*, i64** %896, align 8
  %961 = getelementptr inbounds i64, i64* %960, i64 %959
  %962 = load i64, i64* %961, align 8
  %963 = getelementptr inbounds i64, i64* %960, i64 %j35.0107.us
  %964 = load i64, i64* %963, align 8
  %965 = icmp ult i64 %962, %964
  br i1 %965, label %1109, label %1112

.lr.ph102.us:                                     ; preds = %.loopexit19.us, %.lr.ph102.us.preheader
  %indvar = phi i64 [ 0, %.lr.ph102.us.preheader ], [ %indvar.next, %.loopexit19.us ]
  %j33.0100.us = phi i64 [ %i1.0.ph111, %.lr.ph102.us.preheader ], [ %966, %.loopexit19.us ]
  %966 = add nsw i64 %j33.0100.us, 1
  %967 = icmp slt i64 %966, %i1.1.us
  br i1 %967, label %.lr.ph99.us.preheader, label %.loopexit19.us

.lr.ph99.us.preheader:                            ; preds = %.lr.ph102.us
  %968 = sub i64 %927, %indvar
  %xtraiter = and i64 %968, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph99.us.preheader.split, label %.lr.ph99.us.prol

.lr.ph99.us.prol:                                 ; preds = %.lr.ph99.us.preheader
  %969 = load i64*, i64** %896, align 8
  %970 = getelementptr inbounds i64, i64* %969, i64 %966
  %971 = load i64, i64* %970, align 8
  %972 = getelementptr inbounds i64, i64* %969, i64 %j33.0100.us
  %973 = load i64, i64* %972, align 8
  %974 = icmp ult i64 %971, %973
  br i1 %974, label %975, label %978

; <label>:975                                     ; preds = %.lr.ph99.us.prol
  store i64 %971, i64* %972, align 8
  %976 = load i64*, i64** %896, align 8
  %977 = getelementptr inbounds i64, i64* %976, i64 %966
  store i64 %973, i64* %977, align 8
  br label %978

; <label>:978                                     ; preds = %975, %.lr.ph99.us.prol
  %979 = add nsw i64 %j33.0100.us, 2
  br label %.lr.ph99.us.preheader.split

.lr.ph99.us.preheader.split:                      ; preds = %978, %.lr.ph99.us.preheader
  %k.097.us.unr = phi i64 [ %966, %.lr.ph99.us.preheader ], [ %979, %978 ]
  %980 = icmp eq i64 %928, %indvar
  br i1 %980, label %.loopexit19.us.loopexit, label %.lr.ph99.us.preheader.split.split

.lr.ph99.us.preheader.split.split:                ; preds = %.lr.ph99.us.preheader.split
  br label %.lr.ph99.us

.lr.ph99.us:                                      ; preds = %1107, %.lr.ph99.us.preheader.split.split
  %k.097.us = phi i64 [ %k.097.us.unr, %.lr.ph99.us.preheader.split.split ], [ %1108, %1107 ]
  %981 = load i64*, i64** %896, align 8
  %982 = getelementptr inbounds i64, i64* %981, i64 %k.097.us
  %983 = load i64, i64* %982, align 8
  %984 = getelementptr inbounds i64, i64* %981, i64 %j33.0100.us
  %985 = load i64, i64* %984, align 8
  %986 = icmp ult i64 %983, %985
  br i1 %986, label %987, label %.lr.ph99.us.1561

; <label>:987                                     ; preds = %.lr.ph99.us
  store i64 %983, i64* %984, align 8
  %988 = load i64*, i64** %896, align 8
  %989 = getelementptr inbounds i64, i64* %988, i64 %k.097.us
  store i64 %985, i64* %989, align 8
  br label %.lr.ph99.us.1561

.lr.ph99.us.1561:                                 ; preds = %987, %.lr.ph99.us
  %990 = add nsw i64 %k.097.us, 1
  %991 = load i64*, i64** %896, align 8
  %992 = getelementptr inbounds i64, i64* %991, i64 %990
  %993 = load i64, i64* %992, align 8
  %994 = getelementptr inbounds i64, i64* %991, i64 %j33.0100.us
  %995 = load i64, i64* %994, align 8
  %996 = icmp ult i64 %993, %995
  br i1 %996, label %1104, label %1107

; <label>:997                                     ; preds = %922
  %998 = add nuw nsw i64 %i.1892.us, 1
  %999 = icmp ult i64 %998, %700
  br i1 %999, label %922, label %._crit_edge.us

.loopexit.us.loopexit.unr-lcssa:                  ; preds = %1112
  br label %.loopexit.us.loopexit

.loopexit.us.loopexit:                            ; preds = %.loopexit.us.loopexit.unr-lcssa, %.lr.ph106.us.preheader.split
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit, %.lr.ph108.us
  %exitcond301 = icmp eq i64 %935, %700
  %indvar.next563 = add i64 %indvar562, 1
  br i1 %exitcond301, label %.loopexit20.us, label %.lr.ph108.us

.loopexit19.us.loopexit.unr-lcssa:                ; preds = %1107
  br label %.loopexit19.us.loopexit

.loopexit19.us.loopexit:                          ; preds = %.loopexit19.us.loopexit.unr-lcssa, %.lr.ph99.us.preheader.split
  br label %.loopexit19.us

.loopexit19.us:                                   ; preds = %.loopexit19.us.loopexit, %.lr.ph102.us
  %exitcond299 = icmp eq i64 %966, %i1.1.us
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond299, label %._crit_edge103.us.loopexit, label %.lr.ph102.us

.loopexit20.us:                                   ; preds = %.loopexit.us
  %1000 = icmp ult i64 %i.18.lcssa.us, %700
  br i1 %1000, label %.lr.ph.us, label %.critedge8.loopexit

.lr.ph.us:                                        ; preds = %.loopexit20.us, %.lr.ph.us.preheader
  %i1.0109.us = phi i64 [ %i1.1.us, %.loopexit20.us ], [ %i1.0.ph111, %.lr.ph.us.preheader ]
  %1001 = load i64*, i64** %894, align 8
  %1002 = getelementptr inbounds i64, i64* %1001, i64 %i1.0109.us
  %1003 = load i64, i64* %1002, align 8
  br label %922

; <label>:1004                                    ; preds = %901
  br i1 %11, label %1005, label %.critedge9

; <label>:1005                                    ; preds = %1004
  %1006 = load i64, i64* @TOT_VERTICES, align 8
  %1007 = shl i64 %1006, 3
  %1008 = add i64 %1007, 8
  %1009 = call noalias i8* @malloc(i64 %1008) #5
  %1010 = bitcast i8* %1009 to i64*
  %1011 = icmp eq i8* %1009, null
  br i1 %1011, label %1012, label %1013

; <label>:1012                                    ; preds = %1005
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23.49, i64 0, i64 0), i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.37, i64 0, i64 0), i32 1561, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.genScalData, i64 0, i64 0)) #14
  unreachable

; <label>:1013                                    ; preds = %1005
  store i8* %1009, i8** bitcast (i64** @global_tempIndex to i8**), align 8
  store i64 0, i64* %1010, align 8
  %1014 = getelementptr inbounds i64, i64* %1010, i64 %1006
  store i64 %700, i64* %1014, align 8
  %1015 = icmp eq i64 %1006, 0
  br i1 %1015, label %.preheader25, label %.lr.ph126.preheader

.lr.ph126.preheader:                              ; preds = %1013
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.outer27, %.lr.ph126.preheader
  %i038.0.ph129 = phi i64 [ %.lcssa586, %.outer27 ], [ 0, %.lr.ph126.preheader ]
  %i.19.ph128 = phi i64 [ %.lcssa588, %.outer27 ], [ 0, %.lr.ph126.preheader ]
  %1016 = icmp ult i64 %i038.0.ph129, %700
  %.phi.trans.insert329 = getelementptr inbounds i64, i64* %1010, i64 %i.19.ph128
  %.pre330 = load i64, i64* %.phi.trans.insert329, align 8
  br i1 %1016, label %.lr.ph126.split.us.preheader, label %.lr.ph126.split.preheader

.lr.ph126.split.us.preheader:                     ; preds = %.lr.ph126
  %.pre331 = load i64*, i64** %894, align 8
  %1017 = getelementptr inbounds i64, i64* %.pre331, i64 %i038.0.ph129
  br label %.lr.ph126.split.us

.lr.ph126.split.preheader:                        ; preds = %.lr.ph126
  %.pre330.lcssa = phi i64 [ %.pre330, %.lr.ph126 ]
  %i.19.ph128.lcssa = phi i64 [ %i.19.ph128, %.lr.ph126 ]
  %1018 = add i64 %i.19.ph128.lcssa, 1
  %1019 = icmp ugt i64 %1006, %1018
  %umax = select i1 %1019, i64 %1006, i64 %1018
  %1020 = sub i64 %umax, %i.19.ph128.lcssa
  %min.iters.check485 = icmp ult i64 %1020, 4
  br i1 %min.iters.check485, label %.lr.ph126.split.preheader510, label %min.iters.checked486

.lr.ph126.split.preheader510:                     ; preds = %middle.block483, %min.iters.checked486, %.lr.ph126.split.preheader
  %i.19125.ph = phi i64 [ %i.19.ph128.lcssa, %min.iters.checked486 ], [ %i.19.ph128.lcssa, %.lr.ph126.split.preheader ], [ %ind.end494, %middle.block483 ]
  br label %.lr.ph126.split

min.iters.checked486:                             ; preds = %.lr.ph126.split.preheader
  %n.vec488 = and i64 %1020, -4
  %cmp.zero489 = icmp eq i64 %n.vec488, 0
  %ind.end494 = add i64 %i.19.ph128.lcssa, %n.vec488
  br i1 %cmp.zero489, label %.lr.ph126.split.preheader510, label %vector.ph490

vector.ph490:                                     ; preds = %min.iters.checked486
  %broadcast.splatinsert501 = insertelement <2 x i64> undef, i64 %.pre330.lcssa, i32 0
  %broadcast.splat502 = shufflevector <2 x i64> %broadcast.splatinsert501, <2 x i64> undef, <2 x i32> zeroinitializer
  %1021 = add i64 %i.19.ph128.lcssa, 1
  %1022 = icmp ugt i64 %1006, %1021
  %umax567 = select i1 %1022, i64 %1006, i64 %1021
  %1023 = sub i64 %umax567, %i.19.ph128.lcssa
  %1024 = add i64 %1023, -4
  %1025 = lshr i64 %1024, 2
  %1026 = add nuw nsw i64 %1025, 1
  %xtraiter568 = and i64 %1026, 3
  %lcmp.mod569 = icmp eq i64 %xtraiter568, 0
  br i1 %lcmp.mod569, label %vector.ph490.split, label %vector.body482.prol.preheader

vector.body482.prol.preheader:                    ; preds = %vector.ph490
  br label %vector.body482.prol

vector.body482.prol:                              ; preds = %vector.body482.prol, %vector.body482.prol.preheader
  %index491.prol = phi i64 [ %index.next492.prol, %vector.body482.prol ], [ 0, %vector.body482.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %vector.body482.prol ], [ %xtraiter568, %vector.body482.prol.preheader ]
  %offset.idx496.prol = add i64 %i.19.ph128.lcssa, %index491.prol
  %1027 = add i64 %offset.idx496.prol, 1
  %1028 = getelementptr inbounds i64, i64* %1010, i64 %1027
  %1029 = bitcast i64* %1028 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1029, align 8
  %1030 = getelementptr i64, i64* %1028, i64 2
  %1031 = bitcast i64* %1030 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1031, align 8
  %index.next492.prol = add i64 %index491.prol, 4
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %vector.ph490.split.loopexit, label %vector.body482.prol, !llvm.loop !43

vector.ph490.split.loopexit:                      ; preds = %vector.body482.prol
  %index.next492.prol.lcssa = phi i64 [ %index.next492.prol, %vector.body482.prol ]
  br label %vector.ph490.split

vector.ph490.split:                               ; preds = %vector.ph490.split.loopexit, %vector.ph490
  %index491.unr = phi i64 [ 0, %vector.ph490 ], [ %index.next492.prol.lcssa, %vector.ph490.split.loopexit ]
  %1032 = icmp ult i64 %1024, 12
  br i1 %1032, label %middle.block483, label %vector.ph490.split.split

vector.ph490.split.split:                         ; preds = %vector.ph490.split
  br label %vector.body482

vector.body482:                                   ; preds = %vector.body482, %vector.ph490.split.split
  %index491 = phi i64 [ %index491.unr, %vector.ph490.split.split ], [ %index.next492.3, %vector.body482 ]
  %offset.idx496 = add i64 %i.19.ph128.lcssa, %index491
  %1033 = add i64 %offset.idx496, 1
  %1034 = getelementptr inbounds i64, i64* %1010, i64 %1033
  %1035 = bitcast i64* %1034 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1035, align 8
  %1036 = getelementptr i64, i64* %1034, i64 2
  %1037 = bitcast i64* %1036 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1037, align 8
  %index.next492 = add i64 %index491, 4
  %offset.idx496.1 = add i64 %i.19.ph128.lcssa, %index.next492
  %1038 = add i64 %offset.idx496.1, 1
  %1039 = getelementptr inbounds i64, i64* %1010, i64 %1038
  %1040 = bitcast i64* %1039 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1040, align 8
  %1041 = getelementptr i64, i64* %1039, i64 2
  %1042 = bitcast i64* %1041 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1042, align 8
  %index.next492.1 = add i64 %index491, 8
  %offset.idx496.2 = add i64 %i.19.ph128.lcssa, %index.next492.1
  %1043 = add i64 %offset.idx496.2, 1
  %1044 = getelementptr inbounds i64, i64* %1010, i64 %1043
  %1045 = bitcast i64* %1044 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1045, align 8
  %1046 = getelementptr i64, i64* %1044, i64 2
  %1047 = bitcast i64* %1046 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1047, align 8
  %index.next492.2 = add i64 %index491, 12
  %offset.idx496.3 = add i64 %i.19.ph128.lcssa, %index.next492.2
  %1048 = add i64 %offset.idx496.3, 1
  %1049 = getelementptr inbounds i64, i64* %1010, i64 %1048
  %1050 = bitcast i64* %1049 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1050, align 8
  %1051 = getelementptr i64, i64* %1049, i64 2
  %1052 = bitcast i64* %1051 to <2 x i64>*
  store <2 x i64> %broadcast.splat502, <2 x i64>* %1052, align 8
  %index.next492.3 = add i64 %index491, 16
  %1053 = icmp eq i64 %index.next492.3, %n.vec488
  br i1 %1053, label %middle.block483.unr-lcssa, label %vector.body482, !llvm.loop !44

middle.block483.unr-lcssa:                        ; preds = %vector.body482
  br label %middle.block483

middle.block483:                                  ; preds = %middle.block483.unr-lcssa, %vector.ph490.split
  %cmp.n495 = icmp eq i64 %1020, %n.vec488
  br i1 %cmp.n495, label %.preheader25, label %.lr.ph126.split.preheader510

.lr.ph126.split.us:                               ; preds = %..loopexit26_crit_edge.us, %.lr.ph126.split.us.preheader
  %i.19125.us = phi i64 [ %1054, %..loopexit26_crit_edge.us ], [ %i.19.ph128, %.lr.ph126.split.us.preheader ]
  %1054 = add nsw i64 %i.19125.us, 1
  %1055 = getelementptr inbounds i64, i64* %1010, i64 %1054
  store i64 %.pre330, i64* %1055, align 8
  %1056 = load i64, i64* %1017, align 8
  %1057 = icmp eq i64 %1056, %i.19125.us
  br i1 %1057, label %.lr.ph124.split.us.us.preheader.preheader, label %..loopexit26_crit_edge.us

.lr.ph124.split.us.us.preheader.preheader:        ; preds = %.lr.ph126.split.us
  br label %.lr.ph124.split.us.us.preheader

..loopexit26_crit_edge.us.loopexit:               ; preds = %.lr.ph124.split.us.us.preheader
  br label %..loopexit26_crit_edge.us

..loopexit26_crit_edge.us:                        ; preds = %..loopexit26_crit_edge.us.loopexit, %.lr.ph126.split.us
  %1058 = icmp ult i64 %1054, %1006
  br i1 %1058, label %.lr.ph126.split.us, label %.preheader25.loopexit511

.lr.ph124.split.us.us.preheader:                  ; preds = %..lr.ph124.split.us.us_crit_edge, %.lr.ph124.split.us.us.preheader.preheader
  %j39.0122.us.us425 = phi i64 [ %1059, %..lr.ph124.split.us.us_crit_edge ], [ %i038.0.ph129, %.lr.ph124.split.us.us.preheader.preheader ]
  %1059 = add nuw nsw i64 %j39.0122.us.us425, 1
  %1060 = icmp ult i64 %1059, %700
  br i1 %1060, label %..lr.ph124.split.us.us_crit_edge, label %..loopexit26_crit_edge.us.loopexit

..lr.ph124.split.us.us_crit_edge:                 ; preds = %.lr.ph124.split.us.us.preheader
  %.phi.trans.insert332 = getelementptr inbounds i64, i64* %.pre331, i64 %1059
  %.pre333 = load i64, i64* %.phi.trans.insert332, align 8
  %1061 = icmp eq i64 %.pre333, %i.19125.us
  br i1 %1061, label %.lr.ph124.split.us.us.preheader, label %.outer27

.lr.ph126.split:                                  ; preds = %.lr.ph126.split, %.lr.ph126.split.preheader510
  %i.19125 = phi i64 [ %1062, %.lr.ph126.split ], [ %i.19125.ph, %.lr.ph126.split.preheader510 ]
  %1062 = add nsw i64 %i.19125, 1
  %1063 = getelementptr inbounds i64, i64* %1010, i64 %1062
  store i64 %.pre330.lcssa, i64* %1063, align 8
  %1064 = icmp ult i64 %1062, %1006
  br i1 %1064, label %.lr.ph126.split, label %.preheader25.loopexit, !llvm.loop !45

.outer27:                                         ; preds = %..lr.ph124.split.us.us_crit_edge
  %.lcssa590 = phi i64* [ %1055, %..lr.ph124.split.us.us_crit_edge ]
  %.lcssa588 = phi i64 [ %1054, %..lr.ph124.split.us.us_crit_edge ]
  %.lcssa586 = phi i64 [ %1059, %..lr.ph124.split.us.us_crit_edge ]
  store i64 %.lcssa586, i64* %.lcssa590, align 8
  %1065 = icmp ult i64 %.lcssa588, %1006
  br i1 %1065, label %.lr.ph126, label %.preheader25.loopexit512

.preheader25.loopexit:                            ; preds = %.lr.ph126.split
  br label %.preheader25

.preheader25.loopexit511:                         ; preds = %..loopexit26_crit_edge.us
  br label %.preheader25

.preheader25.loopexit512:                         ; preds = %.outer27
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.loopexit512, %.preheader25.loopexit511, %.preheader25.loopexit, %middle.block483, %1013
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %1066 = load i64*, i64** @global_tempIndex, align 8
  %1067 = load i64, i64* @TOT_VERTICES, align 8
  %1068 = icmp eq i64 %1067, 0
  br i1 %1068, label %.critedge8.thread, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %.preheader25
  %.pre334 = load i64, i64* %1066, align 8
  br label %.lr.ph120

.loopexit24.loopexit:                             ; preds = %.loopexit23
  %.lcssa584 = phi i64 [ %1077, %.loopexit23 ]
  br label %.loopexit24

.loopexit24:                                      ; preds = %.lr.ph120, %.loopexit24.loopexit
  %1069 = phi i64 [ %1075, %.lr.ph120 ], [ %.lcssa584, %.loopexit24.loopexit ]
  %1070 = load i64, i64* @TOT_VERTICES, align 8
  %1071 = icmp ult i64 %1073, %1070
  br i1 %1071, label %.lr.ph120, label %.critedge8.thread.loopexit

.lr.ph120:                                        ; preds = %.loopexit24, %.lr.ph120.preheader
  %1072 = phi i64 [ %1069, %.loopexit24 ], [ %.pre334, %.lr.ph120.preheader ]
  %i.20119 = phi i64 [ %1073, %.loopexit24 ], [ 0, %.lr.ph120.preheader ]
  %1073 = add nuw nsw i64 %i.20119, 1
  %1074 = getelementptr inbounds i64, i64* %1066, i64 %1073
  %1075 = load i64, i64* %1074, align 8
  %1076 = icmp ult i64 %1072, %1075
  br i1 %1076, label %.lr.ph117.preheader, label %.loopexit24

.lr.ph117.preheader:                              ; preds = %.lr.ph120
  br label %.lr.ph117

.loopexit23.loopexit:                             ; preds = %1092
  %.lcssa = phi i64 [ %1093, %1092 ]
  br label %.loopexit23

.loopexit23:                                      ; preds = %.lr.ph117, %.loopexit23.loopexit
  %1077 = phi i64 [ %1079, %.lr.ph117 ], [ %.lcssa, %.loopexit23.loopexit ]
  %1078 = icmp ult i64 %1080, %1077
  br i1 %1078, label %.lr.ph117, label %.loopexit24.loopexit

.lr.ph117:                                        ; preds = %.loopexit23, %.lr.ph117.preheader
  %1079 = phi i64 [ %1077, %.loopexit23 ], [ %1075, %.lr.ph117.preheader ]
  %j40.0115 = phi i64 [ %1080, %.loopexit23 ], [ %1072, %.lr.ph117.preheader ]
  %1080 = add nsw i64 %j40.0115, 1
  %1081 = icmp ult i64 %1080, %1079
  br i1 %1081, label %.lr.ph114.preheader, label %.loopexit23

.lr.ph114.preheader:                              ; preds = %.lr.ph117
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %1092, %.lr.ph114.preheader
  %1082 = phi i64 [ %1093, %1092 ], [ %1079, %.lr.ph114.preheader ]
  %k41.0112 = phi i64 [ %1094, %1092 ], [ %1080, %.lr.ph114.preheader ]
  %1083 = load i64*, i64** %896, align 8
  %1084 = getelementptr inbounds i64, i64* %1083, i64 %k41.0112
  %1085 = load i64, i64* %1084, align 8
  %1086 = getelementptr inbounds i64, i64* %1083, i64 %j40.0115
  %1087 = load i64, i64* %1086, align 8
  %1088 = icmp ult i64 %1085, %1087
  br i1 %1088, label %1089, label %1092

; <label>:1089                                    ; preds = %.lr.ph114
  store i64 %1085, i64* %1086, align 8
  %1090 = load i64*, i64** %896, align 8
  %1091 = getelementptr inbounds i64, i64* %1090, i64 %k41.0112
  store i64 %1087, i64* %1091, align 8
  %.pre335 = load i64, i64* %1074, align 8
  br label %1092

; <label>:1092                                    ; preds = %1089, %.lr.ph114
  %1093 = phi i64 [ %1082, %.lr.ph114 ], [ %.pre335, %1089 ]
  %1094 = add nsw i64 %k41.0112, 1
  %1095 = icmp ult i64 %1094, %1093
  br i1 %1095, label %.lr.ph114, label %.loopexit23.loopexit

.critedge8.thread.loopexit:                       ; preds = %.loopexit24
  br label %.critedge8.thread

.critedge8.thread:                                ; preds = %.critedge8.thread.loopexit, %.preheader25
  %1096 = bitcast i64* %1066 to i8*
  call void @free(i8* %1096) #5
  call void @Prandom_free(%struct.random* nonnull %7) #5
  br label %1097

.critedge8.loopexit:                              ; preds = %.loopexit20.us
  br label %.critedge8

.critedge8.loopexit509:                           ; preds = %.outer.loopexit, %._crit_edge103
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit509, %.critedge8.loopexit, %.preheader22
  call void @Prandom_free(%struct.random* nonnull %7) #5
  br label %1097

; <label>:1097                                    ; preds = %.critedge8, %.critedge8.thread
  %1098 = bitcast i64* %20 to i8*
  call void @free(i8* %1098) #5
  br label %1099

.critedge9:                                       ; preds = %1004
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  call void @Prandom_free(%struct.random* nonnull %7) #5
  br label %1099

.critedge11:                                      ; preds = %904
  call void @Prandom_free(%struct.random* nonnull %7) #5
  br label %1099

; <label>:1099                                    ; preds = %.critedge11, %.critedge9, %1097
  %1100 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %1101 = trunc i64 %1100 to i32
  %1102 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %1103 = load i32, i32* %1102, align 4
  call void @SimRoiEnd(i32 %1101, i32 %1103) #5
  ret void

; <label>:1104                                    ; preds = %.lr.ph99.us.1561
  store i64 %993, i64* %994, align 8
  %1105 = load i64*, i64** %896, align 8
  %1106 = getelementptr inbounds i64, i64* %1105, i64 %990
  store i64 %995, i64* %1106, align 8
  br label %1107

; <label>:1107                                    ; preds = %1104, %.lr.ph99.us.1561
  %1108 = add nsw i64 %k.097.us, 2
  %exitcond298.1 = icmp eq i64 %1108, %i1.1.us
  br i1 %exitcond298.1, label %.loopexit19.us.loopexit.unr-lcssa, label %.lr.ph99.us

; <label>:1109                                    ; preds = %.lr.ph106.us.1566
  store i64 %962, i64* %963, align 8
  %1110 = load i64*, i64** %896, align 8
  %1111 = getelementptr inbounds i64, i64* %1110, i64 %959
  store i64 %964, i64* %1111, align 8
  br label %1112

; <label>:1112                                    ; preds = %1109, %.lr.ph106.us.1566
  %1113 = add nsw i64 %k36.0104.us, 2
  %exitcond300.1 = icmp eq i64 %1113, %700
  br i1 %exitcond300.1, label %.loopexit.us.loopexit.unr-lcssa, label %.lr.ph106.us

; <label>:1114                                    ; preds = %766
  %1115 = sub nsw i64 0, %t26.1
  store i64 %1115, i64* %769, align 8
  %1116 = add nsw i64 %t26.1, 1
  br label %1117

; <label>:1117                                    ; preds = %1114, %766
  %t26.1.1 = phi i64 [ %1116, %1114 ], [ %t26.1, %766 ]
  %1118 = add nsw i64 %i.14146, 2
  %exitcond303.1 = icmp eq i64 %1118, %700
  br i1 %exitcond303.1, label %.outer32.preheader.loopexit.unr-lcssa, label %758
}

; Function Attrs: nounwind uwtable
define void @getStartLists(i8* nocapture readonly %argPtr) #0 {
  %i_start = alloca i64, align 8
  %i_stop = alloca i64, align 8
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #5
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
  %19 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %20 = tail call i64 (...) bitcast (i64 ()* @thread_getNumThread to i64 (...)*)() #5
  %21 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 1
  %22 = load i64, i64* %21, align 8
  call void @createPartition(i64 0, i64 %22, i64 %19, i64 %20, i64* nonnull %i_start, i64* nonnull %i_stop) #5
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
  br i1 %58, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !46

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
  br i1 %64, label %scalar.ph, label %.preheader6.loopexit, !llvm.loop !47

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %.lr.ph62
  call void @llvm.x86.sse2.pause() #5
  %65 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %._crit_edge63.loopexit, label %.lr.ph62

._crit_edge63.loopexit:                           ; preds = %.lr.ph62
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %.outer, %._crit_edge63.loopexit
  %67 = icmp slt i32 %tries.0.ph, 2
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %._crit_edge63
  %tries.0.ph.lcssa = phi i32 [ %tries.0.ph, %._crit_edge63 ]
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #5
  br label %82

; <label>:69                                      ; preds = %._crit_edge63
  %70 = add nsw i32 %tries.0.ph, -1
  %71 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #5, !srcloc !48
  %72 = trunc i64 %71 to i32
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %78, label %.outer

.outer:                                           ; preds = %69, %.preheader6
  %tries.0.ph = phi i32 [ 9, %.preheader6 ], [ %70, %69 ]
  %74 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %75 = icmp eq i64 %74, 0
  %76 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %76, i32 0, i32 3, i32 1)
  %77 = bitcast i64* @global_maxWeight to i8*
  call void @llvm.prefetch(i8* %77, i32 0, i32 3, i32 1)
  br i1 %75, label %._crit_edge63, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %.outer
  br label %.lr.ph62

; <label>:78                                      ; preds = %69
  %tries.0.ph.lcssa94 = phi i32 [ %tries.0.ph, %69 ]
  %79 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #5
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %82, label %81

; <label>:81                                      ; preds = %78
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !49
  br label %82

; <label>:82                                      ; preds = %81, %78, %68
  %tries.0.ph95 = phi i32 [ %tries.0.ph.lcssa94, %78 ], [ %tries.0.ph.lcssa94, %81 ], [ %tries.0.ph.lcssa, %68 ]
  %83 = load i64, i64* @global_maxWeight, align 8
  %84 = icmp sgt i64 %maxWeight.0.lcssa, %83
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %82
  store i64 %maxWeight.0.lcssa, i64* @global_maxWeight, align 8
  br label %86

; <label>:86                                      ; preds = %85, %82
  %87 = icmp sgt i32 %tries.0.ph95, 1
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %86
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !srcloc !50
  br label %90

; <label>:89                                      ; preds = %86
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #5
  br label %90

; <label>:90                                      ; preds = %89, %88
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %91 = load i64, i64* @global_maxWeight, align 8
  %92 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = uitofp i64 %93 to double
  %95 = fmul double %94, 1.500000e+00
  %96 = load i64, i64* @MAX_INT_WEIGHT, align 8
  %97 = uitofp i64 %96 to double
  %98 = fdiv double %95, %97
  %99 = call double @ceil(double %98) #15
  %100 = fadd double %99, 5.000000e+00
  %101 = fptosi double %100 to i64
  %102 = mul i64 %101, 24
  %103 = call noalias i8* @malloc(i64 %102) #5
  %104 = bitcast i8* %103 to %struct.edge*
  %105 = load i64, i64* %i_start, align 8
  %106 = load i64, i64* %i_stop, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %90
  %108 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 13
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 9
  %111 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 2
  %112 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %113 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  %114 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 0
  br label %115

; <label>:115                                     ; preds = %148, %.lr.ph59
  %i_edgeCounter.057 = phi i64 [ 0, %.lr.ph59 ], [ %i_edgeCounter.1, %148 ]
  %i.156 = phi i64 [ %105, %.lr.ph59 ], [ %149, %148 ]
  %116 = getelementptr inbounds i64, i64* %109, i64 %i.156
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, %91
  br i1 %118, label %.preheader5, label %148

.preheader5:                                      ; preds = %115
  %119 = load i64, i64* %111, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %._crit_edge45, label %.lr.ph44

.lr.ph44:                                         ; preds = %.preheader5
  %121 = load i64*, i64** %110, align 8
  br label %122

; <label>:122                                     ; preds = %126, %.lr.ph44
  %j.043 = phi i64 [ 0, %.lr.ph44 ], [ %127, %126 ]
  %123 = getelementptr inbounds i64, i64* %121, i64 %j.043
  %124 = load i64, i64* %123, align 8
  %125 = icmp ugt i64 %124, %i.156
  br i1 %125, label %._crit_edge45.loopexit, label %126

; <label>:126                                     ; preds = %122
  %127 = add nuw nsw i64 %j.043, 1
  %128 = icmp ult i64 %127, %119
  br i1 %128, label %122, label %._crit_edge45.loopexit

._crit_edge45.loopexit:                           ; preds = %126, %122
  %j.0.lcssa.ph = phi i64 [ %j.043, %122 ], [ %127, %126 ]
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %._crit_edge45.loopexit, %.preheader5
  %j.0.lcssa = phi i64 [ 0, %.preheader5 ], [ %j.0.lcssa.ph, %._crit_edge45.loopexit ]
  %129 = add nsw i64 %j.0.lcssa, -1
  %130 = load i64*, i64** %112, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 %129
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.edge, %struct.edge* %104, i64 %i_edgeCounter.057, i32 1
  store i64 %132, i64* %133, align 8
  %134 = getelementptr inbounds %struct.edge, %struct.edge* %104, i64 %i_edgeCounter.057, i32 2
  store i64 %129, i64* %134, align 8
  %135 = load i64, i64* %114, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge45
  %137 = load i64*, i64** %113, align 8
  br label %138

; <label>:138                                     ; preds = %142, %.lr.ph51
  %t.049 = phi i64 [ 0, %.lr.ph51 ], [ %143, %142 ]
  %139 = getelementptr inbounds i64, i64* %137, i64 %t.049
  %140 = load i64, i64* %139, align 8
  %141 = icmp ugt i64 %140, %129
  br i1 %141, label %._crit_edge52.loopexit, label %142

; <label>:142                                     ; preds = %138
  %143 = add nuw nsw i64 %t.049, 1
  %144 = icmp ult i64 %143, %135
  br i1 %144, label %138, label %._crit_edge52.loopexit

._crit_edge52.loopexit:                           ; preds = %142, %138
  %t.0.lcssa.ph = phi i64 [ %t.049, %138 ], [ %143, %142 ]
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.loopexit, %._crit_edge45
  %t.0.lcssa = phi i64 [ 0, %._crit_edge45 ], [ %t.0.lcssa.ph, %._crit_edge52.loopexit ]
  %145 = add nsw i64 %t.0.lcssa, -1
  %146 = getelementptr inbounds %struct.edge, %struct.edge* %104, i64 %i_edgeCounter.057, i32 0
  store i64 %145, i64* %146, align 8
  %147 = add nsw i64 %i_edgeCounter.057, 1
  br label %148

; <label>:148                                     ; preds = %._crit_edge52, %115
  %i_edgeCounter.1 = phi i64 [ %147, %._crit_edge52 ], [ %i_edgeCounter.057, %115 ]
  %149 = add nsw i64 %i.156, 1
  %150 = icmp slt i64 %149, %106
  br i1 %150, label %115, label %._crit_edge60.loopexit

._crit_edge60.loopexit:                           ; preds = %148
  %i_edgeCounter.1.lcssa = phi i64 [ %i_edgeCounter.1, %148 ]
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %._crit_edge60.loopexit, %90
  %i_edgeCounter.0.lcssa = phi i64 [ 0, %90 ], [ %i_edgeCounter.1.lcssa, %._crit_edge60.loopexit ]
  %151 = icmp eq i64 %19, 0
  br i1 %151, label %152, label %162

; <label>:152                                     ; preds = %._crit_edge60
  %153 = shl i64 %20, 3
  %154 = call noalias i8* @malloc(i64 %153) #5
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %157

; <label>:156                                     ; preds = %152
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.51, i64 0, i64 0), i32 181, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i64 0, i64 0)) #14
  unreachable

; <label>:157                                     ; preds = %152
  store i8* %154, i8** bitcast (i64** @global_i_edgeStartCounter.52 to i8**), align 8
  %158 = call noalias i8* @malloc(i64 %153) #5
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %161

; <label>:160                                     ; preds = %157
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.53, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.51, i64 0, i64 0), i32 184, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i64 0, i64 0)) #14
  unreachable

; <label>:161                                     ; preds = %157
  store i8* %158, i8** bitcast (i64** @global_i_edgeEndCounter.54 to i8**), align 8
  store i64 0, i64* %12, align 8
  br label %162

; <label>:162                                     ; preds = %161, %._crit_edge60
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %163 = load i64*, i64** @global_i_edgeStartCounter.52, align 8
  %164 = load i64*, i64** @global_i_edgeEndCounter.54, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 %19
  store i64 %i_edgeCounter.0.lcssa, i64* %165, align 8
  %166 = getelementptr inbounds i64, i64* %163, i64 %19
  store i64 0, i64* %166, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %151, label %.preheader4, label %.critedge

.preheader4:                                      ; preds = %162
  %167 = icmp sgt i64 %20, 1
  br i1 %167, label %.lr.ph41.preheader, label %.loopexit75

.lr.ph41.preheader:                               ; preds = %.preheader4
  %168 = and i64 %20, 1
  %lcmp.mod91 = icmp eq i64 %168, 0
  br i1 %lcmp.mod91, label %.lr.ph41.prol, label %.lr.ph41.preheader.split

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader
  %169 = load i64, i64* %164, align 8
  %170 = getelementptr inbounds i64, i64* %164, i64 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, %169
  store i64 %172, i64* %170, align 8
  %173 = getelementptr inbounds i64, i64* %163, i64 1
  store i64 %169, i64* %173, align 8
  br label %.lr.ph41.preheader.split

.lr.ph41.preheader.split:                         ; preds = %.lr.ph41.prol, %.lr.ph41.preheader
  %i.240.unr = phi i64 [ 1, %.lr.ph41.preheader ], [ 2, %.lr.ph41.prol ]
  %174 = icmp eq i64 %20, 2
  br i1 %174, label %.loopexit75.loopexit, label %.lr.ph41.preheader.split.split

.lr.ph41.preheader.split.split:                   ; preds = %.lr.ph41.preheader.split
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41, %.lr.ph41.preheader.split.split
  %i.240 = phi i64 [ %i.240.unr, %.lr.ph41.preheader.split.split ], [ %189, %.lr.ph41 ]
  %175 = add nsw i64 %i.240, -1
  %176 = getelementptr inbounds i64, i64* %164, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i64, i64* %164, i64 %i.240
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, %177
  store i64 %180, i64* %178, align 8
  %181 = getelementptr inbounds i64, i64* %163, i64 %i.240
  store i64 %177, i64* %181, align 8
  %182 = add nuw nsw i64 %i.240, 1
  %183 = getelementptr inbounds i64, i64* %164, i64 %i.240
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i64, i64* %164, i64 %182
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, %184
  store i64 %187, i64* %185, align 8
  %188 = getelementptr inbounds i64, i64* %163, i64 %182
  store i64 %184, i64* %188, align 8
  %189 = add nsw i64 %i.240, 2
  %exitcond71.1 = icmp eq i64 %189, %20
  br i1 %exitcond71.1, label %.loopexit75.loopexit.unr-lcssa, label %.lr.ph41

.loopexit75.loopexit.unr-lcssa:                   ; preds = %.lr.ph41
  br label %.loopexit75.loopexit

.loopexit75.loopexit:                             ; preds = %.loopexit75.loopexit.unr-lcssa, %.lr.ph41.preheader.split
  br label %.loopexit75

.loopexit75:                                      ; preds = %.loopexit75.loopexit, %.preheader4
  %190 = load i64, i64* %12, align 8
  %191 = add nsw i64 %190, %i_edgeCounter.0.lcssa
  store i64 %191, i64* %12, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %192 = bitcast %struct.edge** %9 to i8**
  %193 = load i8*, i8** %192, align 8
  call void @free(i8* %193) #5
  %194 = load i64, i64* %12, align 8
  %195 = mul i64 %194, 24
  %196 = call noalias i8* @malloc(i64 %195) #5
  %197 = icmp eq i8* %196, null
  br i1 %197, label %198, label %199

; <label>:198                                     ; preds = %.loopexit75
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.55, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.51, i64 0, i64 0), i32 216, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i64 0, i64 0)) #14
  unreachable

; <label>:199                                     ; preds = %.loopexit75
  store i8* %196, i8** bitcast (%struct.edge** @global_maxIntWtList to i8**), align 8
  br label %202

.critedge:                                        ; preds = %162
  %200 = load i64, i64* %12, align 8
  %201 = add nsw i64 %200, %i_edgeCounter.0.lcssa
  store i64 %201, i64* %12, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br label %202

; <label>:202                                     ; preds = %.critedge, %199
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %203 = load %struct.edge*, %struct.edge** @global_maxIntWtList, align 8
  %204 = load i64, i64* %166, align 8
  %205 = load i64, i64* %165, align 8
  %206 = icmp slt i64 %204, %205
  br i1 %206, label %.lr.ph38.preheader, label %._crit_edge39

.lr.ph38.preheader:                               ; preds = %202
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38..lr.ph38_crit_edge, %.lr.ph38.preheader
  %207 = phi i64 [ %.pre, %.lr.ph38..lr.ph38_crit_edge ], [ %204, %.lr.ph38.preheader ]
  %i.336 = phi i64 [ %222, %.lr.ph38..lr.ph38_crit_edge ], [ %204, %.lr.ph38.preheader ]
  %208 = sub nsw i64 %i.336, %207
  %209 = getelementptr inbounds %struct.edge, %struct.edge* %104, i64 %208, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.edge, %struct.edge* %203, i64 %i.336, i32 0
  store i64 %210, i64* %211, align 8
  %212 = load i64, i64* %166, align 8
  %213 = sub nsw i64 %i.336, %212
  %214 = getelementptr inbounds %struct.edge, %struct.edge* %104, i64 %213, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.edge, %struct.edge* %203, i64 %i.336, i32 1
  store i64 %215, i64* %216, align 8
  %217 = load i64, i64* %166, align 8
  %218 = sub nsw i64 %i.336, %217
  %219 = getelementptr inbounds %struct.edge, %struct.edge* %104, i64 %218, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.edge, %struct.edge* %203, i64 %i.336, i32 2
  store i64 %220, i64* %221, align 8
  %222 = add nsw i64 %i.336, 1
  %223 = load i64, i64* %165, align 8
  %224 = icmp slt i64 %222, %223
  br i1 %224, label %.lr.ph38..lr.ph38_crit_edge, label %._crit_edge39.loopexit

.lr.ph38..lr.ph38_crit_edge:                      ; preds = %.lr.ph38
  %.pre = load i64, i64* %166, align 8
  br label %.lr.ph38

._crit_edge39.loopexit:                           ; preds = %.lr.ph38
  br label %._crit_edge39

._crit_edge39:                                    ; preds = %._crit_edge39.loopexit, %202
  br i1 %151, label %225, label %226

; <label>:225                                     ; preds = %._crit_edge39
  store %struct.edge* %203, %struct.edge** %9, align 8
  br label %226

; <label>:226                                     ; preds = %225, %._crit_edge39
  %227 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 5
  %228 = load i64, i64* %227, align 8
  call void @createPartition(i64 0, i64 %228, i64 %19, i64 %20, i64* nonnull %i_start, i64* nonnull %i_stop) #5
  %229 = load i64, i64* %i_start, align 8
  %230 = load i64, i64* %i_stop, align 8
  %231 = icmp slt i64 %229, %230
  br i1 %231, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %226
  %232 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 14
  %233 = load i8*, i8** %232, align 8
  %234 = load i64, i64* @MAX_STRLEN, align 8
  %235 = load i8*, i8** @SOUGHT_STRING, align 8
  %236 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 13
  %237 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 9
  %238 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 2
  %239 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 8
  %240 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 7
  %241 = getelementptr inbounds %struct.graph, %struct.graph* %6, i64 0, i32 0
  br label %242

; <label>:242                                     ; preds = %287, %.lr.ph33
  %i_edgeCounter.231 = phi i64 [ 0, %.lr.ph33 ], [ %i_edgeCounter.3, %287 ]
  %i.430 = phi i64 [ %229, %.lr.ph33 ], [ %288, %287 ]
  %243 = mul nsw i64 %234, %i.430
  %244 = getelementptr inbounds i8, i8* %233, i64 %243
  %245 = call i32 @strncmp(i8* %244, i8* %235, i64 %234) #16
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %.preheader3, label %287

.preheader3:                                      ; preds = %242
  %247 = load i64, i64* %21, align 8
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %.preheader, label %.lr.ph14

.lr.ph14:                                         ; preds = %.preheader3
  %249 = load i64*, i64** %236, align 8
  %250 = sub nsw i64 0, %i.430
  br label %254

.preheader.loopexit:                              ; preds = %258, %254
  %t1.0.lcssa.ph = phi i64 [ %t1.013, %254 ], [ %259, %258 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader3
  %t1.0.lcssa = phi i64 [ 0, %.preheader3 ], [ %t1.0.lcssa.ph, %.preheader.loopexit ]
  %251 = load i64, i64* %238, align 8
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %._crit_edge19, label %.lr.ph18

.lr.ph18:                                         ; preds = %.preheader
  %253 = load i64*, i64** %237, align 8
  br label %261

; <label>:254                                     ; preds = %258, %.lr.ph14
  %t1.013 = phi i64 [ 0, %.lr.ph14 ], [ %259, %258 ]
  %255 = getelementptr inbounds i64, i64* %249, i64 %t1.013
  %256 = load i64, i64* %255, align 8
  %257 = icmp eq i64 %256, %250
  br i1 %257, label %.preheader.loopexit, label %258

; <label>:258                                     ; preds = %254
  %259 = add nuw nsw i64 %t1.013, 1
  %260 = icmp ult i64 %259, %247
  br i1 %260, label %254, label %.preheader.loopexit

; <label>:261                                     ; preds = %265, %.lr.ph18
  %j2.017 = phi i64 [ 0, %.lr.ph18 ], [ %266, %265 ]
  %262 = getelementptr inbounds i64, i64* %253, i64 %j2.017
  %263 = load i64, i64* %262, align 8
  %264 = icmp ugt i64 %263, %t1.0.lcssa
  br i1 %264, label %._crit_edge19.loopexit, label %265

; <label>:265                                     ; preds = %261
  %266 = add nuw nsw i64 %j2.017, 1
  %267 = icmp ult i64 %266, %251
  br i1 %267, label %261, label %._crit_edge19.loopexit

._crit_edge19.loopexit:                           ; preds = %265, %261
  %j2.0.lcssa.ph = phi i64 [ %j2.017, %261 ], [ %266, %265 ]
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %._crit_edge19.loopexit, %.preheader
  %j2.0.lcssa = phi i64 [ 0, %.preheader ], [ %j2.0.lcssa.ph, %._crit_edge19.loopexit ]
  %268 = add nsw i64 %j2.0.lcssa, -1
  %269 = load i64*, i64** %239, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 %268
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.edge, %struct.edge* %104, i64 %i_edgeCounter.231, i32 1
  store i64 %271, i64* %272, align 8
  %273 = getelementptr inbounds %struct.edge, %struct.edge* %104, i64 %i_edgeCounter.231, i32 2
  store i64 %268, i64* %273, align 8
  %274 = load i64, i64* %241, align 8
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %._crit_edge19
  %276 = load i64*, i64** %240, align 8
  br label %277

; <label>:277                                     ; preds = %281, %.lr.ph25
  %t1.123 = phi i64 [ 0, %.lr.ph25 ], [ %282, %281 ]
  %278 = getelementptr inbounds i64, i64* %276, i64 %t1.123
  %279 = load i64, i64* %278, align 8
  %280 = icmp ugt i64 %279, %268
  br i1 %280, label %._crit_edge26.loopexit, label %281

; <label>:281                                     ; preds = %277
  %282 = add nuw nsw i64 %t1.123, 1
  %283 = icmp ult i64 %282, %274
  br i1 %283, label %277, label %._crit_edge26.loopexit

._crit_edge26.loopexit:                           ; preds = %281, %277
  %t1.1.lcssa.ph = phi i64 [ %t1.123, %277 ], [ %282, %281 ]
  br label %._crit_edge26

._crit_edge26:                                    ; preds = %._crit_edge26.loopexit, %._crit_edge19
  %t1.1.lcssa = phi i64 [ 0, %._crit_edge19 ], [ %t1.1.lcssa.ph, %._crit_edge26.loopexit ]
  %284 = add nsw i64 %t1.1.lcssa, -1
  %285 = getelementptr inbounds %struct.edge, %struct.edge* %104, i64 %i_edgeCounter.231, i32 0
  store i64 %284, i64* %285, align 8
  %286 = add nsw i64 %i_edgeCounter.231, 1
  br label %287

; <label>:287                                     ; preds = %._crit_edge26, %242
  %i_edgeCounter.3 = phi i64 [ %286, %._crit_edge26 ], [ %i_edgeCounter.231, %242 ]
  %288 = add nsw i64 %i.430, 1
  %289 = icmp slt i64 %288, %230
  br i1 %289, label %242, label %._crit_edge34.loopexit

._crit_edge34.loopexit:                           ; preds = %287
  %i_edgeCounter.3.lcssa = phi i64 [ %i_edgeCounter.3, %287 ]
  br label %._crit_edge34

._crit_edge34:                                    ; preds = %._crit_edge34.loopexit, %226
  %i_edgeCounter.2.lcssa = phi i64 [ 0, %226 ], [ %i_edgeCounter.3.lcssa, %._crit_edge34.loopexit ]
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  store i64 %i_edgeCounter.2.lcssa, i64* %165, align 8
  store i64 0, i64* %166, align 8
  br i1 %151, label %290, label %.critedge1

; <label>:290                                     ; preds = %._crit_edge34
  store i64 0, i64* %18, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %291 = icmp sgt i64 %20, 1
  br i1 %291, label %.lr.ph12.preheader, label %.loopexit

.lr.ph12.preheader:                               ; preds = %290
  %292 = and i64 %20, 1
  %lcmp.mod = icmp eq i64 %292, 0
  br i1 %lcmp.mod, label %.lr.ph12.prol, label %.lr.ph12.preheader.split

.lr.ph12.prol:                                    ; preds = %.lr.ph12.preheader
  %293 = load i64, i64* %164, align 8
  %294 = getelementptr inbounds i64, i64* %164, i64 1
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %295, %293
  store i64 %296, i64* %294, align 8
  %297 = getelementptr inbounds i64, i64* %163, i64 1
  store i64 %293, i64* %297, align 8
  br label %.lr.ph12.preheader.split

.lr.ph12.preheader.split:                         ; preds = %.lr.ph12.prol, %.lr.ph12.preheader
  %i.510.unr = phi i64 [ 1, %.lr.ph12.preheader ], [ 2, %.lr.ph12.prol ]
  %298 = icmp eq i64 %20, 2
  br i1 %298, label %.loopexit.loopexit, label %.lr.ph12.preheader.split.split

.lr.ph12.preheader.split.split:                   ; preds = %.lr.ph12.preheader.split
  br label %.lr.ph12

.lr.ph12:                                         ; preds = %.lr.ph12, %.lr.ph12.preheader.split.split
  %i.510 = phi i64 [ %i.510.unr, %.lr.ph12.preheader.split.split ], [ %313, %.lr.ph12 ]
  %299 = add nsw i64 %i.510, -1
  %300 = getelementptr inbounds i64, i64* %164, i64 %299
  %301 = load i64, i64* %300, align 8
  %302 = getelementptr inbounds i64, i64* %164, i64 %i.510
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %303, %301
  store i64 %304, i64* %302, align 8
  %305 = getelementptr inbounds i64, i64* %163, i64 %i.510
  store i64 %301, i64* %305, align 8
  %306 = add nuw nsw i64 %i.510, 1
  %307 = getelementptr inbounds i64, i64* %164, i64 %i.510
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds i64, i64* %164, i64 %306
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %310, %308
  store i64 %311, i64* %309, align 8
  %312 = getelementptr inbounds i64, i64* %163, i64 %306
  store i64 %308, i64* %312, align 8
  %313 = add nsw i64 %i.510, 2
  %exitcond.1 = icmp eq i64 %313, %20
  br i1 %exitcond.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph12

.critedge1:                                       ; preds = %._crit_edge34
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph12
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph12.preheader.split
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.critedge1, %290
  %314 = load i64, i64* %18, align 8
  %315 = add nsw i64 %314, %i_edgeCounter.2.lcssa
  store i64 %315, i64* %18, align 8
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %151, label %316, label %325

; <label>:316                                     ; preds = %.loopexit
  %317 = bitcast %struct.edge** %15 to i8**
  %318 = load i8*, i8** %317, align 8
  call void @free(i8* %318) #5
  %319 = load i64, i64* %18, align 8
  %320 = mul i64 %319, 24
  %321 = call noalias i8* @malloc(i64 %320) #5
  %322 = icmp eq i8* %321, null
  br i1 %322, label %323, label %324

; <label>:323                                     ; preds = %316
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.56, i64 0, i64 0), i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.51, i64 0, i64 0), i32 302, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.getStartLists, i64 0, i64 0)) #14
  unreachable

; <label>:324                                     ; preds = %316
  store i8* %321, i8** bitcast (%struct.edge** @global_soughtStrWtList to i8**), align 8
  br label %325

; <label>:325                                     ; preds = %324, %.loopexit
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  %326 = load %struct.edge*, %struct.edge** @global_soughtStrWtList, align 8
  %327 = load i64, i64* %166, align 8
  %328 = load i64, i64* %165, align 8
  %329 = icmp slt i64 %327, %328
  br i1 %329, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %325
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph..lr.ph_crit_edge, %.lr.ph.preheader
  %330 = phi i64 [ %.pre74, %.lr.ph..lr.ph_crit_edge ], [ %327, %.lr.ph.preheader ]
  %i.69 = phi i64 [ %345, %.lr.ph..lr.ph_crit_edge ], [ %327, %.lr.ph.preheader ]
  %331 = sub nsw i64 %i.69, %330
  %332 = getelementptr inbounds %struct.edge, %struct.edge* %104, i64 %331, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = getelementptr inbounds %struct.edge, %struct.edge* %326, i64 %i.69, i32 0
  store i64 %333, i64* %334, align 8
  %335 = load i64, i64* %166, align 8
  %336 = sub nsw i64 %i.69, %335
  %337 = getelementptr inbounds %struct.edge, %struct.edge* %104, i64 %336, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = getelementptr inbounds %struct.edge, %struct.edge* %326, i64 %i.69, i32 1
  store i64 %338, i64* %339, align 8
  %340 = load i64, i64* %166, align 8
  %341 = sub nsw i64 %i.69, %340
  %342 = getelementptr inbounds %struct.edge, %struct.edge* %104, i64 %341, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = getelementptr inbounds %struct.edge, %struct.edge* %326, i64 %i.69, i32 2
  store i64 %343, i64* %344, align 8
  %345 = add nsw i64 %i.69, 1
  %346 = load i64, i64* %165, align 8
  %347 = icmp slt i64 %345, %346
  br i1 %347, label %.lr.ph..lr.ph_crit_edge, label %._crit_edge.loopexit

.lr.ph..lr.ph_crit_edge:                          ; preds = %.lr.ph
  %.pre74 = load i64, i64* %166, align 8
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %325
  call void (...) bitcast (void ()* @thread_barrier_wait to void (...)*)() #5
  br i1 %151, label %348, label %351

; <label>:348                                     ; preds = %._crit_edge
  store %struct.edge* %326, %struct.edge** %15, align 8
  %349 = bitcast i64* %163 to i8*
  call void @free(i8* %349) #5
  %350 = bitcast i64* %164 to i8*
  call void @free(i8* %350) #5
  br label %351

; <label>:351                                     ; preds = %348, %._crit_edge
  call void @free(i8* %103) #5
  %352 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #5
  %353 = trunc i64 %352 to i32
  %354 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %355 = load i32, i32* %354, align 4
  call void @SimRoiEnd(i32 %353, i32 %355) #5
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #8

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
  %2 = tail call i32 @getopt(i32 %1, i8** %argv, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.57, i64 0, i64 0)) #5
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
  %8 = tail call double @atof(i8* %7) #16
  %9 = fptrunc double %8 to float
  store float %9, float* @PROB_INTERCL_EDGES, align 4
  br label %.backedge.i

; <label>:10                                      ; preds = %.lr.ph4.i
  %11 = load i8*, i8** @optarg, align 8
  %12 = tail call i64 @atol(i8* %11) #16
  store i64 %12, i64* @K3_DS, align 8
  %13 = icmp ult i64 %12, 3
  br i1 %13, label %.backedge.i, label %16

.backedge.i:                                      ; preds = %37, %33, %29, %26, %23, %20, %17, %10, %6
  %14 = tail call i32 @getopt(i32 %1, i8** %argv, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.57, i64 0, i64 0)) #5
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %._crit_edge5.i.loopexit, label %.lr.ph4.i

; <label>:16                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2.58, i64 0, i64 0), i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.59, i64 0, i64 0), i32 115, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.parseArgs, i64 0, i64 0)) #14
  unreachable

; <label>:17                                      ; preds = %.lr.ph4.i
  %18 = load i8*, i8** @optarg, align 8
  %19 = tail call i64 @atol(i8* %18) #16
  store i64 %19, i64* @SUBGR_EDGE_LENGTH, align 8
  br label %.backedge.i

; <label>:20                                      ; preds = %.lr.ph4.i
  %21 = load i8*, i8** @optarg, align 8
  %22 = tail call i64 @atol(i8* %21) #16
  store i64 %22, i64* @MAX_PARAL_EDGES, align 8
  br label %.backedge.i

; <label>:23                                      ; preds = %.lr.ph4.i
  %24 = load i8*, i8** @optarg, align 8
  %25 = tail call i64 @atol(i8* %24) #16
  store i64 %25, i64* @SCALE, align 8
  br label %.backedge.i

; <label>:26                                      ; preds = %.lr.ph4.i
  %27 = load i8*, i8** @optarg, align 8
  %28 = tail call i64 @atol(i8* %27) #16
  store i64 %28, i64* @THREADS, align 8
  br label %.backedge.i

; <label>:29                                      ; preds = %.lr.ph4.i
  %30 = load i8*, i8** @optarg, align 8
  %31 = tail call double @atof(i8* %30) #16
  %32 = fptrunc double %31 to float
  store float %32, float* @PROB_UNIDIRECTIONAL, align 4
  br label %.backedge.i

; <label>:33                                      ; preds = %.lr.ph4.i
  %34 = load i8*, i8** @optarg, align 8
  %35 = tail call double @atof(i8* %34) #16
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
  %46 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4.60, i64 0, i64 0), i8* %45) #17
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
  %54 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.61, i64 0, i64 0), i8* %53) #5
  %55 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6.62, i64 0, i64 0)) #5
  %56 = load float, float* @PROB_INTERCL_EDGES, align 4
  %57 = fpext float %56 to double
  %58 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7.63, i64 0, i64 0), double %57) #5
  %59 = load i64, i64* @K3_DS, align 8
  %60 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8.64, i64 0, i64 0), i64 %59) #5
  %61 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %62 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9.65, i64 0, i64 0), i64 %61) #5
  %63 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %64 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10.66, i64 0, i64 0), i64 %63) #5
  %65 = load i64, i64* @SCALE, align 8
  %66 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11.67, i64 0, i64 0), i64 %65) #5
  %67 = load i64, i64* @THREADS, align 8
  %68 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12.68, i64 0, i64 0), i64 %67) #5
  %69 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %70 = fpext float %69 to double
  %71 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13.69, i64 0, i64 0), double %70) #5
  %72 = load float, float* @PERC_INT_WEIGHTS, align 4
  %73 = fpext float %72 to double
  %74 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14.70, i64 0, i64 0), double %73) #5
  tail call void @exit(i32 1) #14
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
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.71, i64 0, i64 0), i8** @SOUGHT_STRING, align 8
  store i64 %82, i64* @MAX_CLUSTER_SIZE, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare double @atof(i8* nocapture) #8

; Function Attrs: nounwind readonly
declare i64 @atol(i8* nocapture) #8

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %start = alloca %struct.V, align 8
  %stop = alloca %struct.V, align 8
  %computeGraphArgs = alloca %struct.computeGragh_arg, align 8
  %1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.100, i64 0, i64 0))
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str, i64 0, i64 0))
  %2 = sext i32 %argc to i64
  tail call void @getUserParameters(i64 %2, i8** %argv) #5
  %3 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #15, !srcloc !51
  %4 = extractvalue { i32, i32, i32, i32 } %3, 0
  %5 = icmp sgt i32 %4, 6
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3.101, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.102, i64 0, i64 0), i32 145, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:7                                       ; preds = %0
  %8 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #15, !srcloc !52
  %9 = extractvalue { i32, i32, i32, i32 } %8, 1
  %10 = and i32 %9, 2048
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %7
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5.103, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.102, i64 0, i64 0), i32 145, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:13                                      ; preds = %7
  tail call void (...) bitcast (void ()* @RTM_spinlock_init to void (...)*)() #5
  %14 = load i64, i64* @THREADS, align 8
  tail call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %14) #5
  %15 = load i64, i64* @THREADS, align 8
  tail call void @thread_startup(i64 %15) #5
  %putchar = tail call i32 @putchar(i32 10) #5
  %16 = load i64, i64* @THREADS, align 8
  %17 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7.104, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* @SCALE, align 8
  %19 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8.105, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* @MAX_PARAL_EDGES, align 8
  %21 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9.106, i64 0, i64 0), i64 %20)
  %22 = load float, float* @PERC_INT_WEIGHTS, align 4
  %23 = fpext float %22 to double
  %24 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.107, i64 0, i64 0), double %23)
  %25 = load float, float* @PROB_UNIDIRECTIONAL, align 4
  %26 = fpext float %25 to double
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11.108, i64 0, i64 0), double %26)
  %28 = load float, float* @PROB_INTERCL_EDGES, align 4
  %29 = fpext float %28 to double
  %30 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12.109, i64 0, i64 0), double %29)
  %31 = load i64, i64* @SUBGR_EDGE_LENGTH, align 8
  %32 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13.110, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* @K3_DS, align 8
  %34 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14.111, i64 0, i64 0), i64 %33)
  %putchar1 = tail call i32 @putchar(i32 10) #5
  %puts2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @str.1.112, i64 0, i64 0))
  %35 = tail call noalias i8* @malloc(i64 40) #5
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %13
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16.113, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.102, i64 0, i64 0), i32 167, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:38                                      ; preds = %13
  %39 = bitcast i8* %35 to %struct.graphSDG*
  %40 = call i32 @gettimeofday(%struct.V* nonnull %start, %struct.timezone* null) #5
  tail call void @genScalData_seq(%struct.graphSDG* %39) #5
  %41 = call i32 @gettimeofday(%struct.V* nonnull %stop, %struct.timezone* null) #5
  %42 = getelementptr inbounds %struct.V, %struct.V* %stop, i64 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sitofp i64 %43 to double
  %45 = getelementptr inbounds %struct.V, %struct.V* %stop, i64 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sitofp i64 %46 to double
  %48 = fdiv double %47, 1.000000e+06
  %49 = fadd double %44, %48
  %50 = getelementptr inbounds %struct.V, %struct.V* %start, i64 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sitofp i64 %51 to double
  %53 = getelementptr inbounds %struct.V, %struct.V* %start, i64 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sitofp i64 %54 to double
  %56 = fdiv double %55, 1.000000e+06
  %57 = fadd double %52, %56
  %58 = fsub double %49, %57
  %59 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17.114, i64 0, i64 0), double %58)
  %puts3 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @str.2, i64 0, i64 0))
  %puts4 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @str.3, i64 0, i64 0))
  %60 = tail call noalias i8* @malloc(i64 120) #5
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

; <label>:62                                      ; preds = %38
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20.115, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.102, i64 0, i64 0), i32 209, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:63                                      ; preds = %38
  %64 = fadd double %58, 0.000000e+00
  %65 = bitcast %struct.computeGragh_arg* %computeGraphArgs to i8**
  store i8* %60, i8** %65, align 8
  %66 = getelementptr inbounds %struct.computeGragh_arg, %struct.computeGragh_arg* %computeGraphArgs, i64 0, i32 1
  %67 = bitcast %struct.graphSDG** %66 to i8**
  store i8* %35, i8** %67, align 8
  %68 = call i32 @gettimeofday(%struct.V* nonnull %start, %struct.timezone* null) #5
  %69 = bitcast %struct.computeGragh_arg* %computeGraphArgs to i8*
  call void @thread_start(void (i8*)* nonnull @computeGraph, i8* %69) #5
  %70 = call i32 @gettimeofday(%struct.V* nonnull %stop, %struct.timezone* null) #5
  %71 = load i64, i64* %42, align 8
  %72 = sitofp i64 %71 to double
  %73 = load i64, i64* %45, align 8
  %74 = sitofp i64 %73 to double
  %75 = fdiv double %74, 1.000000e+06
  %76 = fadd double %72, %75
  %77 = load i64, i64* %50, align 8
  %78 = sitofp i64 %77 to double
  %79 = load i64, i64* %53, align 8
  %80 = sitofp i64 %79 to double
  %81 = fdiv double %80, 1.000000e+06
  %82 = fadd double %78, %81
  %83 = fsub double %76, %82
  %84 = fadd double %64, %83
  %puts5 = call i32 @puts(i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @str.4, i64 0, i64 0))
  %85 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22.116, i64 0, i64 0), double %83)
  %86 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23.117, i64 0, i64 0), double %84)
  %87 = getelementptr inbounds i8, i8* %60, i64 48
  %88 = bitcast i8* %87 to i8**
  %89 = load i8*, i8** %88, align 8
  call void @free(i8* %89) #5
  %90 = getelementptr inbounds i8, i8* %60, i64 56
  %91 = bitcast i8* %90 to i8**
  %92 = load i8*, i8** %91, align 8
  call void @free(i8* %92) #5
  %93 = getelementptr inbounds i8, i8* %60, i64 64
  %94 = bitcast i8* %93 to i8**
  %95 = load i8*, i8** %94, align 8
  call void @free(i8* %95) #5
  %96 = getelementptr inbounds i8, i8* %60, i64 72
  %97 = bitcast i8* %96 to i8**
  %98 = load i8*, i8** %97, align 8
  call void @free(i8* %98) #5
  %99 = getelementptr inbounds i8, i8* %60, i64 80
  %100 = bitcast i8* %99 to i8**
  %101 = load i8*, i8** %100, align 8
  call void @free(i8* %101) #5
  %102 = getelementptr inbounds i8, i8* %60, i64 88
  %103 = bitcast i8* %102 to i8**
  %104 = load i8*, i8** %103, align 8
  call void @free(i8* %104) #5
  %105 = getelementptr inbounds i8, i8* %60, i64 96
  %106 = bitcast i8* %105 to i8**
  %107 = load i8*, i8** %106, align 8
  call void @free(i8* %107) #5
  %108 = getelementptr inbounds i8, i8* %60, i64 104
  %109 = bitcast i8* %108 to i8**
  %110 = load i8*, i8** %109, align 8
  call void @free(i8* %110) #5
  %111 = getelementptr inbounds i8, i8* %60, i64 112
  %112 = bitcast i8* %111 to i8**
  %113 = load i8*, i8** %112, align 8
  call void @free(i8* %113) #5
  %114 = load i8*, i8** @SOUGHT_STRING, align 8
  call void @free(i8* %114) #5
  call void @free(i8* nonnull %60) #5
  call void @free(i8* nonnull %35) #5
  %115 = call i64 (...) @getWorkItemCount() #5
  %116 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i64 %115)
  %117 = call i32 @fflush(%struct._IO_FILE* null)
  call void (...) bitcast (void ()* @thread_shutdown to void (...)*)() #5
  call void (...) bitcast (void ()* @RTM_output_stats to void (...)*)() #5
  ret i32 0
}

declare void @SimStartup(...) #4

declare i32 @putchar(i32)

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.V* nocapture, %struct.timezone* nocapture) #1

declare i64 @getWorkItemCount(...) #4

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

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
  %1 = call noalias i8* @malloc(i64 5008) #5
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
  %1 = call noalias i8* @malloc(i64 5008) #5
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
  call void @free(i8* %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @Prandom_free(%struct.random* %randomPtr) #9 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #5
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
define void @init_one_perfcounter(i32 %number, i64 %whatToMeasure) #10 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %ret = alloca i32, align 4
  %offset = alloca i64, align 8
  %zeros = alloca i8*, align 8
  store i32 %number, i32* %1, align 4
  store i64 %whatToMeasure, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 8) #5
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
  %16 = call i64 @lseek(i32 %12, i64 %15, i32 0) #5
  store i64 %16, i64* %offset, align 8
  %17 = load i64, i64* %offset, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %11
  br label %22

; <label>:20                                      ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.136, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %32

; <label>:32                                      ; preds = %31, %29
  %33 = load i32, i32* @FD, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 193, %34
  %36 = sext i32 %35 to i64
  %37 = call i64 @lseek(i32 %33, i64 %36, i32 0) #5
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.136, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %47

; <label>:47                                      ; preds = %46, %44
  %48 = load i8*, i8** %zeros, align 8
  call void @free(i8* %48) #5
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
  %14 = call i64 @lseek(i32 %10, i64 %13, i32 0) #5
  store i64 %14, i64* %offset, align 8
  %15 = load i64, i64* %offset, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %9
  br label %20

; <label>:18                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.137, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 189, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.136, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #14
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
  call void @llvm.x86.sse2.pause() #5
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
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !53
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
  %1 = call i64 @pthread_self() #15
  %2 = call i32 @pthread_getaffinity_np(i64 %1, i64 128, %struct.cpu_set_t* %available_procs) #5
  store i32 %2, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.146, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.determineNumProcs, i32 0, i32 0)) #14
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
  %3 = call i64 @pthread_self() #15
  %4 = call i32 @pthread_getaffinity_np(i64 %3, i64 128, %struct.cpu_set_t* %available_procs) #5
  store i32 %4, i32* %err, align 4
  %5 = load i32, i32* %err, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.146, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.149, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 463, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.152, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 465, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load %struct.thread_barrier*, %struct.thread_barrier** @global_barrierPtr, align 8
  call void @thread_barrier_init(%struct.thread_barrier* %39)
  %40 = load i64, i64* %1, align 8
  %41 = mul i64 %40, 72
  %42 = call noalias i8* @malloc(i64 %41) #5
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
  %78 = call i32 @pthread_key_create(i32* @global_threadId, void (i8*)* null) #5
  %79 = load i64*, i64** @global_threadIds, align 8
  %80 = icmp eq i64* %79, null
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %77
  br label %84

; <label>:82                                      ; preds = %77
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7.153, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %84

; <label>:84                                      ; preds = %83, %81
  %85 = load i64, i64* %1, align 8
  %86 = mul i64 %85, 8
  %87 = call noalias i8* @malloc(i64 %86) #5
  %88 = bitcast i8* %87 to i64*
  store i64* %88, i64** @global_threadIds, align 8
  %89 = load i64*, i64** @global_threadIds, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %84
  br label %94

; <label>:92                                      ; preds = %84
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8.154, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 486, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9.155, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 492, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %113

; <label>:113                                     ; preds = %112, %110
  %114 = load i64, i64* %1, align 8
  %115 = mul i64 %114, 8
  %116 = call noalias i8* @malloc(i64 %115) #5
  %117 = bitcast i8* %116 to i64*
  store i64* %117, i64** @global_threads, align 8
  %118 = load i64*, i64** @global_threads, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %121

; <label>:120                                     ; preds = %113
  br label %123

; <label>:121                                     ; preds = %113
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10.156, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 494, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %123

; <label>:123                                     ; preds = %122, %120
  %124 = call i32 @pthread_attr_init(%union.pthread_attr_t* @global_threadAttr) #5
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
  %137 = call i32 @pthread_create(i64* %132, %union.pthread_attr_t* @global_threadAttr, i8* (i8*)* bitcast (void (i8*)* @threadWait to i8* (i8*)*), i8* %136) #5
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
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.150, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 570, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12.151, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.135, i32 0, i32 0), i32 571, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = load i64, i64* %1, align 8
  %18 = mul i64 %17, 152
  %19 = call noalias i8* @malloc(i64 %18) #5
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
  %18 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %17, %union.pthread_mutexattr_t* null) #5
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %21 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %20, i64 %19
  %22 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %21, i32 0, i32 1
  %23 = call i32 @pthread_cond_init(%union.pthread_cond_t* %22, %union.pthread_mutexattr_t* null) #5
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %26 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %25, i64 %24
  %27 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %26, i32 0, i32 2
  %28 = call i32 @pthread_cond_init(%union.pthread_cond_t* %27, %union.pthread_mutexattr_t* null) #5
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
  %8 = call i32 @pthread_setspecific(i32 %5, i8* %7) #5
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
  %25 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %24) #5
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
  %54 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %53) #5
  br label %98

; <label>:55                                      ; preds = %10
  %56 = load i64, i64* %index, align 8
  %57 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %58 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %57, i64 %56
  %59 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %58, i32 0, i32 0
  %60 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %59) #5
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
  %78 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %77) #5
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
  %97 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %96) #5
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
  %131 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %130) #5
  %132 = load i64, i64* %index, align 8
  %133 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %134 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %133, i64 %132
  %135 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %134, i32 0, i32 3
  store i64 0, i64* %135, align 8
  %136 = load i64, i64* %index, align 8
  %137 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %138 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %137, i64 %136
  %139 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %138, i32 0, i32 2
  %140 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %139) #5
  %141 = load i64, i64* %index, align 8
  %142 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %143 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %142, i64 %141
  %144 = getelementptr inbounds %struct.thread_barrier, %struct.thread_barrier* %143, i32 0, i32 0
  %145 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %144) #5
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
  call void @free(i8* %19) #5
  store i64* null, i64** @global_threadIds, align 8
  %20 = load i64*, i64** @global_threads, align 8
  %21 = bitcast i64* %20 to i8*
  call void @free(i8* %21) #5
  store i64* null, i64** @global_threads, align 8
  store i64 1, i64* @global_numThread, align 8
  ret void
}

declare i32 @pthread_join(i64, i8**) #12

; Function Attrs: nounwind uwtable
define void @thread_barrier_free(%struct.thread_barrier* %barrierPtr) #9 {
  %1 = alloca %struct.thread_barrier*, align 8
  store %struct.thread_barrier* %barrierPtr, %struct.thread_barrier** %1, align 8
  %2 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %3 = bitcast %struct.thread_barrier* %2 to i8*
  call void @free(i8* %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @thread_getId() #9 {
  %1 = load i32, i32* @global_threadId, align 4
  %2 = call i8* @pthread_getspecific(i32 %1) #5
  %3 = ptrtoint i8* %2 to i64
  ret i64 %3
}

; Function Attrs: nounwind
declare i8* @pthread_getspecific(i32) #11

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
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.168, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.memory_init, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = call noalias i8* @malloc(i64 16) #5
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
  %19 = call noalias i8* @malloc(i64 %18) #5
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
  %4 = call noalias i8* @malloc(i64 32) #5
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
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.169, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.168, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.allocBlock, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %8

; <label>:8                                       ; preds = %7, %5
  %9 = call noalias i8* @malloc(i64 160) #5
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
  %23 = call noalias i8* @malloc(i64 %22) #5
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
  call void @free(i8* %22) #5
  %23 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %24 = bitcast %struct.memory* %23 to i8*
  call void @free(i8* %24) #5
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
  call void @free(i8* %6) #5
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
  call void @free(i8* %4) #5
  %5 = load %struct.block*, %struct.block** %1, align 8
  %6 = bitcast %struct.block* %5 to i8*
  call void @free(i8* %6) #5
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
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.170, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.168, i32 0, i32 0), i32 304, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getMemoryFromBlock, i32 0, i32 0)) #14
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
declare void @llvm.prefetch(i8* nocapture, i32, i32, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }
attributes #17 = { cold nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
!3 = distinct !{!3, !2}
!4 = distinct !{!4, !2}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.vectorize.width", i32 1}
!7 = !{!"llvm.loop.interleave.count", i32 1}
!8 = distinct !{!8, !9, !6, !7}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{i32 1436342, i32 1436358, i32 1436394, i32 1436430, i32 1436466}
!11 = !{i32 1436943, i32 1436958, i32 1436992}
!12 = !{i32 1436714, i32 1436729, i32 1436757}
!13 = distinct !{!13, !2}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !9, !6, !7}
!16 = distinct !{!16, !6, !7}
!17 = distinct !{!17, !9, !6, !7}
!18 = !{i32 1445680, i32 1445696, i32 1445732, i32 1445768, i32 1445804}
!19 = !{i32 1446281, i32 1446296, i32 1446330}
!20 = !{i32 1446052, i32 1446067, i32 1446095}
!21 = distinct !{!21, !6, !7}
!22 = distinct !{!22, !9, !6, !7}
!23 = distinct !{!23, !6, !7}
!24 = distinct !{!24, !9, !6, !7}
!25 = distinct !{!25, !2}
!26 = distinct !{!26, !6, !7}
!27 = distinct !{!27, !9, !6, !7}
!28 = distinct !{!28, !2}
!29 = distinct !{!29, !6, !7}
!30 = distinct !{!30, !9, !6, !7}
!31 = distinct !{!31, !2}
!32 = distinct !{!32, !6, !7}
!33 = distinct !{!33, !9, !6, !7}
!34 = !{i32 1724256, i32 1724272, i32 1724308, i32 1724344, i32 1724380}
!35 = !{i32 1724857, i32 1724872, i32 1724906}
!36 = !{i32 1724628, i32 1724643, i32 1724671}
!37 = distinct !{!37, !2}
!38 = distinct !{!38, !6, !7}
!39 = distinct !{!39, !9, !6, !7}
!40 = distinct !{!40, !2}
!41 = distinct !{!41, !6, !7}
!42 = distinct !{!42, !9, !6, !7}
!43 = distinct !{!43, !2}
!44 = distinct !{!44, !6, !7}
!45 = distinct !{!45, !9, !6, !7}
!46 = distinct !{!46, !6, !7}
!47 = distinct !{!47, !9, !6, !7}
!48 = !{i32 1667257, i32 1667273, i32 1667309, i32 1667345, i32 1667381}
!49 = !{i32 1667858, i32 1667873, i32 1667907}
!50 = !{i32 1667629, i32 1667644, i32 1667672}
!51 = !{i32 -2145962469, i32 -2145962433, i32 -2145962409}
!52 = !{i32 -2145956738, i32 -2145956702, i32 -2145956678}
!53 = !{i32 11658}
