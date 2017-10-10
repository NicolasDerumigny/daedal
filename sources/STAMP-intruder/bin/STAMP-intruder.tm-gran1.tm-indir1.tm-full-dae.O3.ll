; ModuleID = '../bin/STAMP-intruder.tm-gran1.tm-dae.ll'
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
%struct.decoder = type { %struct.rbtree*, %struct.queue* }
%struct.rbtree = type { %struct.node*, i64 (i8*, i8*)* }
%struct.node = type { i8*, i8*, %struct.node*, %struct.node*, %struct.node*, i64 }
%struct.queue = type { i64, i64, i64, i8** }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.packet = type { i64, i64, i64, i64, [0 x i8] }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.decoded = type { i64, i8* }
%struct.arg = type { %struct.stream*, %struct.decoder*, %struct.vector** }
%struct.stream = type { i64, %struct.random*, %struct.vector*, %struct.queue*, %struct.rbtree* }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.vector = type { i64, i64, i8** }
%struct.detector = type { %struct.vector*, %struct.vector* }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.pair = type { i8*, i8* }
%struct.cpu_set_t = type { [16 x i64] }
%union.pthread_mutexattr_t = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"decoderPtr->fragmentedMapPtr\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"decoder.c\00", align 1
@__PRETTY_FUNCTION__.decoder_alloc = private unnamed_addr constant [27 x i8] c"decoder_t *decoder_alloc()\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"decoderPtr->decodedQueuePtr\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fragmentListPtr\00", align 1
@__PRETTY_FUNCTION__.decoder_process = private unnamed_addr constant [51 x i8] c"error_t decoder_process(decoder_t *, char *, long)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"list_iter_hasNext(&it, fragmentListPtr)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"fragmentPtr->flowId == flowId\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"dst == data + numByte\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"decodedPtr\00", align 1
@__PRETTY_FUNCTION__.TMdecoder_process = private unnamed_addr constant [53 x i8] c"error_t TMdecoder_process(decoder_t *, char *, long)\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"TMLIST_ITER_HASNEXT(&it, fragmentListPtr)\00", align 1
@global_params = global [256 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 10, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 16, i64 0, i64 1048576, i64 0, i64 0, i64 0, i64 0, i64 1, i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], align 16
@.str.11 = private unnamed_addr constant [12 x i8] c"detectorPtr\00", align 1
@.str.1.12 = private unnamed_addr constant [11 x i8] c"intruder.c\00", align 1
@__PRETTY_FUNCTION__.processPackets = private unnamed_addr constant [28 x i8] c"void processPackets(void *)\00", align 1
@.str.2.13 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3.14 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@opterr = external global i32, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"a:l:n:s:t:\00", align 1
@optarg = external global i8*, align 8
@optind = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.22 = private unnamed_addr constant [25 x i8] c"Non-option argument: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"\0AOptions:                            (defaults)\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"    a <UINT>   Percent [a]ttack     (%i)\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"    l <UINT>   Max data [l]ength    (%i)\0A\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"    n <UINT>   [n]umber of flows    (%i)\0A\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"    s <UINT>   Random [s]eed        (%i)\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"    t <UINT>   Number of [t]hreads  (%i)\0A\00", align 1
@.str.5.15 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.6.16 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.7.17 = private unnamed_addr constant [23 x i8] c"Percent attack  = %li\0A\00", align 1
@.str.8.18 = private unnamed_addr constant [23 x i8] c"Max data length = %li\0A\00", align 1
@.str.9.19 = private unnamed_addr constant [23 x i8] c"Num flow        = %li\0A\00", align 1
@.str.10.20 = private unnamed_addr constant [23 x i8] c"Random seed     = %li\0A\00", align 1
@.str.11.21 = private unnamed_addr constant [14 x i8] c"dictionaryPtr\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"streamPtr\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Num attack      = %li\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"decoderPtr\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"errorVectors\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"errorVectorPtr\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Elapsed time    = %f seconds\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Num found       = %li\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"numFound == numAttack\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"detectorPtr->dictionaryPtr\00", align 1
@.str.1.31 = private unnamed_addr constant [11 x i8] c"detector.c\00", align 1
@__PRETTY_FUNCTION__.detector_alloc = private unnamed_addr constant [29 x i8] c"detector_t *detector_alloc()\00", align 1
@.str.2.32 = private unnamed_addr constant [35 x i8] c"detectorPtr->preprocessorVectorPtr\00", align 1
@__PRETTY_FUNCTION__.Pdetector_alloc = private unnamed_addr constant [30 x i8] c"detector_t *Pdetector_alloc()\00", align 1
@.str.3.39 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@__PRETTY_FUNCTION__.detector_addPreprocessor = private unnamed_addr constant [60 x i8] c"void detector_addPreprocessor(detector_t *, preprocessor_t)\00", align 1
@global_defaultSignatures = global [71 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.43, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5.47, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7.49, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8.50, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9.51, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11.53, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14.56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.57, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.59, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18.60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19.61, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20.62, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21.63, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23.65, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24.66, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25.67, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26.68, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28.70, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30.72, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42.73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0)], align 16
@.str.42 = private unnamed_addr constant [6 x i8] c"about\00", align 1
@.str.1.43 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.2.44 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.3.45 = private unnamed_addr constant [5 x i8] c"also\00", align 1
@.str.4.46 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.5.47 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.6.48 = private unnamed_addr constant [5 x i8] c"back\00", align 1
@.str.7.49 = private unnamed_addr constant [8 x i8] c"because\00", align 1
@.str.8.50 = private unnamed_addr constant [4 x i8] c"but\00", align 1
@.str.9.51 = private unnamed_addr constant [4 x i8] c"can\00", align 1
@.str.10.52 = private unnamed_addr constant [5 x i8] c"come\00", align 1
@.str.11.53 = private unnamed_addr constant [6 x i8] c"could\00", align 1
@.str.12.54 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.13.55 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@.str.14.56 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.15.57 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.16.58 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.17.59 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.18.60 = private unnamed_addr constant [5 x i8] c"give\00", align 1
@.str.19.61 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.20.62 = private unnamed_addr constant [5 x i8] c"have\00", align 1
@.str.21.63 = private unnamed_addr constant [4 x i8] c"him\00", align 1
@.str.22.64 = private unnamed_addr constant [4 x i8] c"how\00", align 1
@.str.23.65 = private unnamed_addr constant [5 x i8] c"into\00", align 1
@.str.24.66 = private unnamed_addr constant [4 x i8] c"its\00", align 1
@.str.25.67 = private unnamed_addr constant [5 x i8] c"just\00", align 1
@.str.26.68 = private unnamed_addr constant [5 x i8] c"know\00", align 1
@.str.27.69 = private unnamed_addr constant [5 x i8] c"like\00", align 1
@.str.28.70 = private unnamed_addr constant [5 x i8] c"look\00", align 1
@.str.29.71 = private unnamed_addr constant [5 x i8] c"make\00", align 1
@.str.30.72 = private unnamed_addr constant [5 x i8] c"most\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"only\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"over\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"people\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"say\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"see\00", align 1
@.str.42.73 = private unnamed_addr constant [4 x i8] c"she\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"some\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"take\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"than\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"that\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"their\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"them\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"there\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"these\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"they\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"think\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"want\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"way\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"well\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"which\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"will\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"work\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"would\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"your\00", align 1
@global_numDefaultSignature = constant i64 71, align 8
@.str.71 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"dictionary.c\00", align 1
@__PRETTY_FUNCTION__.dictionary_alloc = private unnamed_addr constant [33 x i8] c"dictionary_t *dictionary_alloc()\00", align 1
@__PRETTY_FUNCTION__.Pdictionary_alloc = private unnamed_addr constant [34 x i8] c"dictionary_t *Pdictionary_alloc()\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"hex[0]\00", align 1
@.str.1.87 = private unnamed_addr constant [15 x i8] c"preprocessor.c\00", align 1
@__PRETTY_FUNCTION__.preprocessor_convertURNHex = private unnamed_addr constant [40 x i8] c"void preprocessor_convertURNHex(char *)\00", align 1
@.str.2.88 = private unnamed_addr constant [7 x i8] c"hex[1]\00", align 1
@.str.3.89 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.4.90 = private unnamed_addr constant [7 x i8] c"n == 1\00", align 1
@.str.95 = private unnamed_addr constant [43 x i8] c"percentAttack >= 0 && percentAttack <= 100\00", align 1
@.str.1.96 = private unnamed_addr constant [9 x i8] c"stream.c\00", align 1
@__PRETTY_FUNCTION__.stream_alloc = private unnamed_addr constant [29 x i8] c"stream_t *stream_alloc(long)\00", align 1
@.str.2.97 = private unnamed_addr constant [21 x i8] c"streamPtr->randomPtr\00", align 1
@.str.3.98 = private unnamed_addr constant [26 x i8] c"streamPtr->allocVectorPtr\00", align 1
@.str.4.99 = private unnamed_addr constant [26 x i8] c"streamPtr->packetQueuePtr\00", align 1
@.str.5.100 = private unnamed_addr constant [24 x i8] c"streamPtr->attackMapPtr\00", align 1
@.str.6.105 = private unnamed_addr constant [12 x i8] c"detectorPtr\00", align 1
@__PRETTY_FUNCTION__.stream_generate = private unnamed_addr constant [67 x i8] c"long stream_generate(stream_t *, dictionary_t *, long, long, long)\00", align 1
@.str.8.106 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.9.107 = private unnamed_addr constant [5 x i8] c"str2\00", align 1
@.str.10.108 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@__PRETTY_FUNCTION__.splitIntoPackets = private unnamed_addr constant [71 x i8] c"void splitIntoPackets(char *, long, random_t *, vector_t *, queue_t *)\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"listPtr->size >= 0\00", align 1
@.str.1.142 = private unnamed_addr constant [7 x i8] c"list.c\00", align 1
@__PRETTY_FUNCTION__.list_remove = private unnamed_addr constant [37 x i8] c"bool_t list_remove(list_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.Plist_remove = private unnamed_addr constant [38 x i8] c"bool_t Plist_remove(list_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.TMlist_remove = private unnamed_addr constant [39 x i8] c"bool_t TMlist_remove(list_t *, void *)\00", align 1
@genrand_int32.mag01 = internal global [2 x i64] [i64 0, i64 2567483615], align 16
@.str.153 = private unnamed_addr constant [12 x i8] c"pop != push\00", align 1
@.str.1.154 = private unnamed_addr constant [8 x i8] c"queue.c\00", align 1
@__PRETTY_FUNCTION__.queue_push = private unnamed_addr constant [37 x i8] c"bool_t queue_push(queue_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.Pqueue_push = private unnamed_addr constant [38 x i8] c"bool_t Pqueue_push(queue_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.TMqueue_push = private unnamed_addr constant [39 x i8] c"bool_t TMqueue_push(queue_t *, void *)\00", align 1
@.str.169 = private unnamed_addr constant [18 x i8] c"Integrity check: \00", align 1
@.str.1.170 = private unnamed_addr constant [33 x i8] c"  (WARNING) root %lX parent=%lX\0A\00", align 1
@.str.2.171 = private unnamed_addr constant [32 x i8] c"  (WARNING) root %lX color=%lX\0A\00", align 1
@.str.3.172 = private unnamed_addr constant [12 x i8] c"Bad parent\0A\00", align 1
@.str.4.173 = private unnamed_addr constant [39 x i8] c"Key order %lX (%ld %ld) %lX (%ld %ld)\0A\00", align 1
@.str.6.174 = private unnamed_addr constant [33 x i8] c" Imbalance @depth=%ld : %ld %ld\0A\00", align 1
@.str.7.175 = private unnamed_addr constant [10 x i8] c" lineage\0A\00", align 1
@.str.8.176 = private unnamed_addr constant [11 x i8] c"VERIFY %d\0A\00", align 1
@.str.5.177 = private unnamed_addr constant [22 x i8] c" Nodes=%ld Depth=%ld\0A\00", align 1
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
@.str.202 = private unnamed_addr constant [11 x i8] c"offset > 0\00", align 1
@.str.1.203 = private unnamed_addr constant [9 x i8] c"thread.c\00", align 1
@__PRETTY_FUNCTION__.init_one_perfcounter = private unnamed_addr constant [46 x i8] c"void init_one_perfcounter(int, unsigned long)\00", align 1
@.str.2.204 = private unnamed_addr constant [8 x i8] c"ret > 0\00", align 1
@.str.3.205 = private unnamed_addr constant [9 x i8] c"offset>0\00", align 1
@__PRETTY_FUNCTION__.read_one_perfcounter = private unnamed_addr constant [47 x i8] c"void read_one_perfcounter(int, unsigned int *)\00", align 1
@M5_inSimulator = external global i32, align 4
@.str.4.214 = private unnamed_addr constant [9 x i8] c"err == 0\00", align 1
@__PRETTY_FUNCTION__.determineNumProcs = private unnamed_addr constant [25 x i8] c"long determineNumProcs()\00", align 1
@global_numThread = internal global i64 1, align 8
@global_doShutdown = internal global i64 0, align 8
@__PRETTY_FUNCTION__.thread_startup = private unnamed_addr constant [26 x i8] c"void thread_startup(long)\00", align 1
@global_barrierPtr = internal global %struct.thread_barrier* null, align 8
@.str.5.217 = private unnamed_addr constant [26 x i8] c"global_barrierPtr == NULL\00", align 1
@.str.11.218 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@__PRETTY_FUNCTION__.thread_barrier_alloc = private unnamed_addr constant [45 x i8] c"thread_barrier_t *thread_barrier_alloc(long)\00", align 1
@.str.12.219 = private unnamed_addr constant [35 x i8] c"(numThread & (numThread - 1)) == 0\00", align 1
@.str.6.220 = private unnamed_addr constant [18 x i8] c"global_barrierPtr\00", align 1
@global_threadId = internal global i32 0, align 4
@global_threadIds = internal global i64* null, align 8
@.str.7.221 = private unnamed_addr constant [25 x i8] c"global_threadIds == NULL\00", align 1
@.str.8.222 = private unnamed_addr constant [17 x i8] c"global_threadIds\00", align 1
@global_threads = internal global i64* null, align 8
@.str.9.223 = private unnamed_addr constant [23 x i8] c"global_threads == NULL\00", align 1
@.str.10.224 = private unnamed_addr constant [15 x i8] c"global_threads\00", align 1
@global_threadAttr = internal global %union.pthread_attr_t zeroinitializer, align 8
@global_funcPtr = internal global void (i8*)* null, align 8
@global_argPtr = internal global i8* null, align 8
@global_memoryPtr = global %struct.memory* null, align 8
@.str.247 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@.str.1.248 = private unnamed_addr constant [9 x i8] c"memory.c\00", align 1
@__PRETTY_FUNCTION__.memory_init = private unnamed_addr constant [39 x i8] c"bool_t memory_init(long, size_t, long)\00", align 1
@.str.2.249 = private unnamed_addr constant [13 x i8] c"capacity > 0\00", align 1
@__PRETTY_FUNCTION__.allocBlock = private unnamed_addr constant [28 x i8] c"block_t *allocBlock(size_t)\00", align 1
@.str.3.250 = private unnamed_addr constant [29 x i8] c"(size + numByte) <= capacity\00", align 1
@__PRETTY_FUNCTION__.getMemoryFromBlock = private unnamed_addr constant [44 x i8] c"void *getMemoryFromBlock(block_t *, size_t)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.decoder* @decoder_alloc() #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 16) #5
  %2 = bitcast i8* %1 to %struct.decoder*
  %3 = icmp ne %struct.decoder* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %23

; <label>:4                                       ; preds = %0
  %5 = call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null)
  %6 = getelementptr inbounds %struct.decoder, %struct.decoder* %2, i32 0, i32 0
  store %struct.rbtree* %5, %struct.rbtree** %6, align 8
  %7 = getelementptr inbounds %struct.decoder, %struct.decoder* %2, i32 0, i32 0
  %8 = load %struct.rbtree*, %struct.rbtree** %7, align 8
  %9 = icmp ne %struct.rbtree* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %4
  br label %13

; <label>:11                                      ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.decoder_alloc, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = call %struct.queue* @queue_alloc(i64 1024)
  %15 = getelementptr inbounds %struct.decoder, %struct.decoder* %2, i32 0, i32 1
  store %struct.queue* %14, %struct.queue** %15, align 8
  %16 = getelementptr inbounds %struct.decoder, %struct.decoder* %2, i32 0, i32 1
  %17 = load %struct.queue*, %struct.queue** %16, align 8
  %18 = icmp ne %struct.queue* %17, null
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %13
  br label %22

; <label>:20                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.decoder_alloc, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  br label %23

; <label>:23                                      ; preds = %22, %._crit_edge
  ret %struct.decoder* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @decoder_free(%struct.decoder* %decoderPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  call void @queue_free(%struct.queue* %2)
  %3 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 0
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  call void @rbtree_free(%struct.rbtree* %4)
  %5 = bitcast %struct.decoder* %decoderPtr to i8*
  call void @free(i8* %5) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @decoder_process(%struct.decoder* %decoderPtr, i8* %bytes, i64 %numByte) #0 {
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = icmp ult i64 %numByte, 32
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  br label %203

; <label>:3                                       ; preds = %0
  %4 = bitcast i8* %bytes to %struct.packet*
  %5 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %6, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %3
  br label %203

; <label>:15                                      ; preds = %3
  %16 = icmp slt i64 %8, 0
  br i1 %16, label %._crit_edge, label %17

._crit_edge:                                      ; preds = %15
  br label %19

; <label>:17                                      ; preds = %15
  %18 = icmp sge i64 %8, %10
  br i1 %18, label %._crit_edge1, label %20

._crit_edge1:                                     ; preds = %17
  br label %19

; <label>:19                                      ; preds = %._crit_edge1, %._crit_edge
  br label %203

; <label>:20                                      ; preds = %17
  %21 = icmp slt i64 %12, 0
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %20
  br label %203

; <label>:23                                      ; preds = %20
  %24 = icmp sgt i64 %10, 1
  br i1 %24, label %25, label %170

; <label>:25                                      ; preds = %23
  %26 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 0
  %27 = load %struct.rbtree*, %struct.rbtree** %26, align 8
  %28 = inttoptr i64 %6 to i8*
  %29 = call i8* @rbtree_get(%struct.rbtree* %27, i8* %28)
  %30 = bitcast i8* %29 to %struct.list*
  %31 = icmp eq %struct.list* %30, null
  br i1 %31, label %32, label %54

; <label>:32                                      ; preds = %25
  %33 = call %struct.list* @list_alloc(i64 (i8*, i8*)* @packet_compareFragmentId)
  %34 = icmp ne %struct.list* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %32
  br label %38

; <label>:36                                      ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 186, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = bitcast %struct.packet* %4 to i8*
  %40 = call i64 @list_insert(%struct.list* %33, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %38
  br label %45

; <label>:43                                      ; preds = %38
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 188, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = inttoptr i64 %6 to i8*
  %47 = bitcast %struct.list* %33 to i8*
  %48 = call i64 @rbtree_insert(%struct.rbtree* %27, i8* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %45
  br label %53

; <label>:51                                      ; preds = %45
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 192, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %53

; <label>:53                                      ; preds = %52, %50
  br label %169

; <label>:54                                      ; preds = %25
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %30)
  %55 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #16
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %54
  br label %60

; <label>:58                                      ; preds = %54
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 198, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %60

; <label>:60                                      ; preds = %59, %57
  %61 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %30)
  %62 = bitcast i8* %61 to %struct.packet*
  %63 = getelementptr inbounds %struct.packet, %struct.packet* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %10, %64
  br i1 %65, label %66, label %74

; <label>:66                                      ; preds = %60
  %67 = inttoptr i64 %6 to i8*
  %68 = call i64 @rbtree_delete(%struct.rbtree* %27, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %66
  br label %73

; <label>:71                                      ; preds = %66
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 205, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %73

; <label>:73                                      ; preds = %72, %70
  br label %203

; <label>:74                                      ; preds = %60
  %75 = bitcast %struct.packet* %4 to i8*
  %76 = call i64 @list_insert(%struct.list* %30, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %74
  br label %81

; <label>:79                                      ; preds = %74
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 210, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %81

; <label>:81                                      ; preds = %80, %78
  %82 = call i64 @list_getSize(%struct.list* %30)
  %83 = icmp eq i64 %82, %10
  br i1 %83, label %84, label %._crit_edge2

._crit_edge2:                                     ; preds = %81
  br label %168

; <label>:84                                      ; preds = %81
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %30)
  br label %85

; <label>:85                                      ; preds = %109, %84
  %numByte1.0 = phi i64 [ 0, %84 ], [ %112, %109 ]
  %i.0 = phi i64 [ 0, %84 ], [ %113, %109 ]
  %86 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #16
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %114

; <label>:88                                      ; preds = %85
  %89 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %30)
  %90 = bitcast i8* %89 to %struct.packet*
  %91 = getelementptr inbounds %struct.packet, %struct.packet* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, %6
  br i1 %93, label %94, label %95

; <label>:94                                      ; preds = %88
  br label %97

; <label>:95                                      ; preds = %88
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 224, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:97                                      ; preds = %94
  %98 = getelementptr inbounds %struct.packet, %struct.packet* %90, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, %i.0
  br i1 %100, label %101, label %109

; <label>:101                                     ; preds = %97
  %102 = inttoptr i64 %6 to i8*
  %103 = call i64 @rbtree_delete(%struct.rbtree* %27, i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

; <label>:105                                     ; preds = %101
  br label %108

; <label>:106                                     ; preds = %101
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 227, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %108

; <label>:108                                     ; preds = %107, %105
  br label %203

; <label>:109                                     ; preds = %97
  %110 = getelementptr inbounds %struct.packet, %struct.packet* %90, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %numByte1.0, %111
  %113 = add nsw i64 %i.0, 1
  br label %85

; <label>:114                                     ; preds = %85
  %115 = add nsw i64 %numByte1.0, 1
  %116 = call noalias i8* @malloc(i64 %115) #5
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %119

; <label>:118                                     ; preds = %114
  br label %121

; <label>:119                                     ; preds = %114
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 235, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %121

; <label>:121                                     ; preds = %120, %118
  %122 = getelementptr inbounds i8, i8* %116, i64 %numByte1.0
  store i8 0, i8* %122, align 1
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %30)
  br label %123

; <label>:123                                     ; preds = %126, %121
  %dst.0 = phi i8* [ %116, %121 ], [ %135, %126 ]
  %124 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #16
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

; <label>:126                                     ; preds = %123
  %127 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %30)
  %128 = bitcast i8* %127 to %struct.packet*
  %129 = getelementptr inbounds %struct.packet, %struct.packet* %128, i32 0, i32 4
  %130 = getelementptr inbounds [0 x i8], [0 x i8]* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.packet, %struct.packet* %128, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst.0, i8* %130, i64 %132, i32 1, i1 false)
  %133 = getelementptr inbounds %struct.packet, %struct.packet* %128, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i8, i8* %dst.0, i64 %134
  br label %123

; <label>:136                                     ; preds = %123
  %137 = getelementptr inbounds i8, i8* %116, i64 %numByte1.0
  %138 = icmp eq i8* %dst.0, %137
  br i1 %138, label %139, label %140

; <label>:139                                     ; preds = %136
  br label %142

; <label>:140                                     ; preds = %136
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 245, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %142

; <label>:142                                     ; preds = %141, %139
  %143 = call noalias i8* @malloc(i64 16) #5
  %144 = bitcast i8* %143 to %struct.decoded*
  %145 = icmp ne %struct.decoded* %144, null
  br i1 %145, label %146, label %147

; <label>:146                                     ; preds = %142
  br label %149

; <label>:147                                     ; preds = %142
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 248, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %149

; <label>:149                                     ; preds = %148, %146
  %150 = getelementptr inbounds %struct.decoded, %struct.decoded* %144, i32 0, i32 0
  store i64 %6, i64* %150, align 8
  %151 = getelementptr inbounds %struct.decoded, %struct.decoded* %144, i32 0, i32 1
  store i8* %116, i8** %151, align 8
  %152 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %153 = load %struct.queue*, %struct.queue** %152, align 8
  %154 = bitcast %struct.decoded* %144 to i8*
  %155 = call i64 @queue_push(%struct.queue* %153, i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %149
  br label %160

; <label>:158                                     ; preds = %149
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 254, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %160

; <label>:160                                     ; preds = %159, %157
  call void @list_free(%struct.list* %30)
  %161 = inttoptr i64 %6 to i8*
  %162 = call i64 @rbtree_delete(%struct.rbtree* %27, i8* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

; <label>:164                                     ; preds = %160
  br label %167

; <label>:165                                     ; preds = %160
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 258, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %167

; <label>:167                                     ; preds = %166, %164
  br label %168

; <label>:168                                     ; preds = %167, %._crit_edge2
  br label %169

; <label>:169                                     ; preds = %168, %53
  br label %202

; <label>:170                                     ; preds = %23
  %171 = icmp ne i64 %8, 0
  br i1 %171, label %172, label %173

; <label>:172                                     ; preds = %170
  br label %203

; <label>:173                                     ; preds = %170
  %174 = add nsw i64 %12, 1
  %175 = call noalias i8* @malloc(i64 %174) #5
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %178

; <label>:177                                     ; preds = %173
  br label %180

; <label>:178                                     ; preds = %173
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 274, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %180

; <label>:180                                     ; preds = %179, %177
  %181 = getelementptr inbounds i8, i8* %175, i64 %12
  store i8 0, i8* %181, align 1
  %182 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 4
  %183 = getelementptr inbounds [0 x i8], [0 x i8]* %182, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %175, i8* %183, i64 %12, i32 1, i1 false)
  %184 = call noalias i8* @malloc(i64 16) #5
  %185 = bitcast i8* %184 to %struct.decoded*
  %186 = icmp ne %struct.decoded* %185, null
  br i1 %186, label %187, label %188

; <label>:187                                     ; preds = %180
  br label %190

; <label>:188                                     ; preds = %180
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 279, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %190

; <label>:190                                     ; preds = %189, %187
  %191 = getelementptr inbounds %struct.decoded, %struct.decoded* %185, i32 0, i32 0
  store i64 %6, i64* %191, align 8
  %192 = getelementptr inbounds %struct.decoded, %struct.decoded* %185, i32 0, i32 1
  store i8* %175, i8** %192, align 8
  %193 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %194 = load %struct.queue*, %struct.queue** %193, align 8
  %195 = bitcast %struct.decoded* %185 to i8*
  %196 = call i64 @queue_push(%struct.queue* %194, i8* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

; <label>:198                                     ; preds = %190
  br label %201

; <label>:199                                     ; preds = %190
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 285, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.decoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %201

; <label>:201                                     ; preds = %200, %198
  br label %202

; <label>:202                                     ; preds = %201, %169
  br label %203

; <label>:203                                     ; preds = %202, %172, %108, %73, %22, %19, %14, %2
  %.0 = phi i32 [ 1, %2 ], [ 2, %14 ], [ 3, %19 ], [ 4, %22 ], [ 0, %202 ], [ 5, %73 ], [ 6, %108 ], [ 3, %172 ]
  ret i32 %.0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @TMdecoder_process(%struct.decoder* %decoderPtr, i8* %bytes, i64 %numByte) #0 {
  %structArg3 = alloca { %struct.list_node**, %struct.list*, i64, i64 }
  %structArg = alloca { i8*, %struct.list_node**, %struct.list*, i8* }
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = icmp ult i64 %numByte, 32
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  br label %206

; <label>:3                                       ; preds = %0
  %4 = bitcast i8* %bytes to %struct.packet*
  %5 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %6, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %3
  br label %206

; <label>:15                                      ; preds = %3
  %16 = icmp slt i64 %8, 0
  br i1 %16, label %._crit_edge, label %17

._crit_edge:                                      ; preds = %15
  br label %19

; <label>:17                                      ; preds = %15
  %18 = icmp sge i64 %8, %10
  br i1 %18, label %._crit_edge1, label %20

._crit_edge1:                                     ; preds = %17
  br label %19

; <label>:19                                      ; preds = %._crit_edge1, %._crit_edge
  br label %206

; <label>:20                                      ; preds = %17
  %21 = icmp slt i64 %12, 0
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %20
  br label %206

; <label>:23                                      ; preds = %20
  %24 = icmp sgt i64 %10, 1
  br i1 %24, label %25, label %173

; <label>:25                                      ; preds = %23
  %26 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 0
  %27 = load %struct.rbtree*, %struct.rbtree** %26, align 8
  %28 = inttoptr i64 %6 to i8*
  %29 = call i8* @TMrbtree_get(%struct.rbtree* %27, i8* %28)
  %30 = bitcast i8* %29 to %struct.list*
  %31 = icmp eq %struct.list* %30, null
  br i1 %31, label %32, label %54

; <label>:32                                      ; preds = %25
  %33 = call %struct.list* @TMlist_alloc(i64 (i8*, i8*)* @packet_compareFragmentId)
  %34 = icmp ne %struct.list* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %32
  br label %38

; <label>:36                                      ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 350, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = bitcast %struct.packet* %4 to i8*
  %40 = call i64 @TMlist_insert(%struct.list* %33, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %38
  br label %45

; <label>:43                                      ; preds = %38
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 352, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = inttoptr i64 %6 to i8*
  %47 = bitcast %struct.list* %33 to i8*
  %48 = call i64 @TMrbtree_insert(%struct.rbtree* %27, i8* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %45
  br label %53

; <label>:51                                      ; preds = %45
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 356, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %53

; <label>:53                                      ; preds = %52, %50
  br label %172

; <label>:54                                      ; preds = %25
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %30)
  %55 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #16
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %54
  br label %60

; <label>:58                                      ; preds = %54
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 362, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %60

; <label>:60                                      ; preds = %59, %57
  %61 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %30)
  %62 = bitcast i8* %61 to %struct.packet*
  %63 = getelementptr inbounds %struct.packet, %struct.packet* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %10, %64
  br i1 %65, label %66, label %74

; <label>:66                                      ; preds = %60
  %67 = inttoptr i64 %6 to i8*
  %68 = call i64 @TMrbtree_delete(%struct.rbtree* %27, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %66
  br label %73

; <label>:71                                      ; preds = %66
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 369, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %73

; <label>:73                                      ; preds = %72, %70
  br label %206

; <label>:74                                      ; preds = %60
  %75 = bitcast %struct.packet* %4 to i8*
  %76 = call i64 @TMlist_insert(%struct.list* %30, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %74
  br label %81

; <label>:79                                      ; preds = %74
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 374, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %81

; <label>:81                                      ; preds = %80, %78
  %82 = call i64 @TMlist_getSize(%struct.list* %30)
  %83 = icmp eq i64 %82, %10
  br i1 %83, label %84, label %._crit_edge2

._crit_edge2:                                     ; preds = %81
  br label %171

; <label>:84                                      ; preds = %81
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %30)
  br label %codeRepl2

codeRepl2:                                        ; preds = %84
  %gep_it4 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 0
  store %struct.list_node** %it, %struct.list_node*** %gep_it4
  %gep_5 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 1
  store %struct.list* %30, %struct.list** %gep_5
  %gep_6 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 2
  store i64 %6, i64* %gep_6
  %gep_it.i = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 0
  %85 = bitcast %struct.list_node*** %gep_it.i to i8*
  call void @llvm.prefetch(i8* %85, i32 0, i32 3, i32 1) #5
  %loadgep_it.i = load %struct.list_node**, %struct.list_node*** %gep_it.i
  %gep_.i = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 1
  %86 = bitcast %struct.list** %gep_.i to i8*
  call void @llvm.prefetch(i8* %86, i32 0, i32 3, i32 1) #5
  %loadgep_.i = load %struct.list*, %struct.list** %gep_.i
  %gep_1.i = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 2
  %87 = bitcast i64* %gep_1.i to i8*
  call void @llvm.prefetch(i8* %87, i32 0, i32 3, i32 1) #5
  %loadgep_2.i = load i64, i64* %gep_1.i
  %gep_it.i1 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 0
  %loadgep_it.i2 = load %struct.list_node**, %struct.list_node*** %gep_it.i1
  %gep_.i3 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 1
  %loadgep_.i4 = load %struct.list*, %struct.list** %gep_.i3
  %gep_1.i5 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 2
  %loadgep_2.i6 = load i64, i64* %gep_1.i5
  br label %__kernel__TMdecoder_process1.i

.exitStub.i:                                      ; preds = %__kernel__TMdecoder_process1.i
  %gep_numByte1.0.i = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 3
  store i64 %numByte1.0.i, i64* %gep_numByte1.0.i, !GlobalAlias !1
  br label %TMdecoder_process___kernel__TMdecoder_process1_clone.1.exit

.exitStub3.i:                                     ; preds = %90
  %gep_numByte1.04.i = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 3
  store i64 %numByte1.0.i, i64* %gep_numByte1.04.i, !GlobalAlias !1
  br label %TMdecoder_process___kernel__TMdecoder_process1_clone.1.exit

.exitStub5.i:                                     ; preds = %96
  %gep_numByte1.06.i = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 3
  store i64 %numByte1.0.i, i64* %gep_numByte1.06.i, !GlobalAlias !1
  br label %TMdecoder_process___kernel__TMdecoder_process1_clone.1.exit

__kernel__TMdecoder_process1.i:                   ; preds = %100, %codeRepl2
  %numByte1.0.i = phi i64 [ 0, %codeRepl2 ], [ %103, %100 ]
  %i.0.i = phi i64 [ 0, %codeRepl2 ], [ %104, %100 ]
  %88 = call i64 @TMlist_iter_hasNext(%struct.list_node** %loadgep_it.i2, %struct.list* %loadgep_.i4) #16
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %.exitStub.i

; <label>:90                                      ; preds = %__kernel__TMdecoder_process1.i
  %91 = call i8* @TMlist_iter_next(%struct.list_node** %loadgep_it.i2, %struct.list* %loadgep_.i4) #5
  %92 = bitcast i8* %91 to %struct.packet*
  %93 = getelementptr inbounds %struct.packet, %struct.packet* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, %loadgep_2.i6
  br i1 %95, label %96, label %.exitStub3.i

; <label>:96                                      ; preds = %90
  %97 = getelementptr inbounds %struct.packet, %struct.packet* %92, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, %i.0.i
  br i1 %99, label %.exitStub5.i, label %100

; <label>:100                                     ; preds = %96
  %101 = getelementptr inbounds %struct.packet, %struct.packet* %92, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %numByte1.0.i, %102
  %104 = add nsw i64 %i.0.i, 1
  br label %__kernel__TMdecoder_process1.i, !llvm.loop !2

TMdecoder_process___kernel__TMdecoder_process1_clone.1.exit: ; preds = %.exitStub5.i, %.exitStub3.i, %.exitStub.i
  %targetBlock7 = phi i16 [ 0, %.exitStub.i ], [ 1, %.exitStub3.i ], [ 2, %.exitStub5.i ]
  %gep_reload_numByte1.0 = getelementptr { %struct.list_node**, %struct.list*, i64, i64 }, { %struct.list_node**, %struct.list*, i64, i64 }* %structArg3, i32 0, i32 3
  %numByte1.0.reload = load i64, i64* %gep_reload_numByte1.0
  switch i16 %targetBlock7, label %107 [
    i16 0, label %115
    i16 1, label %105
  ]

; <label>:105                                     ; preds = %TMdecoder_process___kernel__TMdecoder_process1_clone.1.exit
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 389, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:107                                     ; preds = %TMdecoder_process___kernel__TMdecoder_process1_clone.1.exit
  %108 = inttoptr i64 %6 to i8*
  %109 = call i64 @TMrbtree_delete(%struct.rbtree* %27, i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %107
  br label %114

; <label>:112                                     ; preds = %107
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 392, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %114

; <label>:114                                     ; preds = %113, %111
  br label %206

; <label>:115                                     ; preds = %TMdecoder_process___kernel__TMdecoder_process1_clone.1.exit
  %116 = add nsw i64 %numByte1.0.reload, 1
  %117 = call noalias i8* @malloc(i64 %116) #5
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %120

; <label>:119                                     ; preds = %115
  br label %122

; <label>:120                                     ; preds = %115
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 400, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %122

; <label>:122                                     ; preds = %121, %119
  %123 = getelementptr inbounds i8, i8* %117, i64 %numByte1.0.reload
  store i8 0, i8* %123, align 1
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %30)
  br label %codeRepl

codeRepl:                                         ; preds = %122
  %gep_ = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 0
  store i8* %117, i8** %gep_
  %gep_it = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 1
  store %struct.list_node** %it, %struct.list_node*** %gep_it
  %gep_1 = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 2
  store %struct.list* %30, %struct.list** %gep_1
  %gep_.i8 = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 0
  %124 = bitcast i8** %gep_.i8 to i8*
  call void @llvm.prefetch(i8* %124, i32 0, i32 3, i32 1) #5
  %loadgep_.i9 = load i8*, i8** %gep_.i8
  %gep_it.i10 = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 1
  %125 = bitcast %struct.list_node*** %gep_it.i10 to i8*
  call void @llvm.prefetch(i8* %125, i32 0, i32 3, i32 1) #5
  %loadgep_it.i11 = load %struct.list_node**, %struct.list_node*** %gep_it.i10
  %gep_1.i12 = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 2
  %126 = bitcast %struct.list** %gep_1.i12 to i8*
  call void @llvm.prefetch(i8* %126, i32 0, i32 3, i32 1) #5
  %loadgep_2.i13 = load %struct.list*, %struct.list** %gep_1.i12
  br label %__kernel__TMdecoder_process0.i

__kernel__TMdecoder_process0.i:                   ; preds = %__kernel__TMdecoder_process0.i, %codeRepl
  br i1 undef, label %__kernel__TMdecoder_process0.i, label %TMdecoder_process___kernel__TMdecoder_process0.exit

TMdecoder_process___kernel__TMdecoder_process0.exit: ; preds = %__kernel__TMdecoder_process0.i
  %gep_.i15 = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 0
  %loadgep_.i16 = load i8*, i8** %gep_.i15
  %gep_it.i17 = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 1
  %loadgep_it.i18 = load %struct.list_node**, %struct.list_node*** %gep_it.i17
  %gep_1.i19 = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 2
  %loadgep_2.i20 = load %struct.list*, %struct.list** %gep_1.i19
  br label %__kernel__TMdecoder_process0.i22

__kernel__TMdecoder_process0.i22:                 ; preds = %129, %TMdecoder_process___kernel__TMdecoder_process0.exit
  %dst.0.i = phi i8* [ %loadgep_.i16, %TMdecoder_process___kernel__TMdecoder_process0.exit ], [ %138, %129 ]
  %127 = call i64 @TMlist_iter_hasNext(%struct.list_node** %loadgep_it.i18, %struct.list* %loadgep_2.i20) #16
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %TMdecoder_process___kernel__TMdecoder_process0_clone.2.exit

; <label>:129                                     ; preds = %__kernel__TMdecoder_process0.i22
  %130 = call i8* @TMlist_iter_next(%struct.list_node** %loadgep_it.i18, %struct.list* %loadgep_2.i20) #5
  %131 = bitcast i8* %130 to %struct.packet*
  %132 = getelementptr inbounds %struct.packet, %struct.packet* %131, i32 0, i32 4
  %133 = getelementptr inbounds [0 x i8], [0 x i8]* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.packet, %struct.packet* %131, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst.0.i, i8* %133, i64 %135, i32 1, i1 false) #5
  %136 = getelementptr inbounds %struct.packet, %struct.packet* %131, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i8, i8* %dst.0.i, i64 %137
  br label %__kernel__TMdecoder_process0.i22, !llvm.loop !4

TMdecoder_process___kernel__TMdecoder_process0_clone.2.exit: ; preds = %__kernel__TMdecoder_process0.i22
  %gep_dst.0.i = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 3
  store i8* %dst.0.i, i8** %gep_dst.0.i, !GlobalAlias !1
  %gep_reload_dst.0 = getelementptr { i8*, %struct.list_node**, %struct.list*, i8* }, { i8*, %struct.list_node**, %struct.list*, i8* }* %structArg, i32 0, i32 3
  %dst.0.reload = load i8*, i8** %gep_reload_dst.0
  br label %139

; <label>:139                                     ; preds = %TMdecoder_process___kernel__TMdecoder_process0_clone.2.exit
  %140 = getelementptr inbounds i8, i8* %117, i64 %numByte1.0.reload
  %141 = icmp eq i8* %dst.0.reload, %140
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %139
  br label %145

; <label>:143                                     ; preds = %139
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 411, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %145

; <label>:145                                     ; preds = %144, %142
  %146 = call noalias i8* @malloc(i64 16) #5
  %147 = bitcast i8* %146 to %struct.decoded*
  %148 = icmp ne %struct.decoded* %147, null
  br i1 %148, label %149, label %150

; <label>:149                                     ; preds = %145
  br label %152

; <label>:150                                     ; preds = %145
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 414, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %152

; <label>:152                                     ; preds = %151, %149
  %153 = getelementptr inbounds %struct.decoded, %struct.decoded* %147, i32 0, i32 0
  store i64 %6, i64* %153, align 8
  %154 = getelementptr inbounds %struct.decoded, %struct.decoded* %147, i32 0, i32 1
  store i8* %117, i8** %154, align 8
  %155 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %156 = load %struct.queue*, %struct.queue** %155, align 8
  %157 = bitcast %struct.decoded* %147 to i8*
  %158 = call i64 @TMqueue_push(%struct.queue* %156, i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

; <label>:160                                     ; preds = %152
  br label %163

; <label>:161                                     ; preds = %152
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %163

; <label>:163                                     ; preds = %162, %160
  call void @TMlist_free(%struct.list* %30)
  %164 = inttoptr i64 %6 to i8*
  %165 = call i64 @TMrbtree_delete(%struct.rbtree* %27, i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

; <label>:167                                     ; preds = %163
  br label %170

; <label>:168                                     ; preds = %163
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 424, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %170

; <label>:170                                     ; preds = %169, %167
  br label %171

; <label>:171                                     ; preds = %170, %._crit_edge2
  br label %172

; <label>:172                                     ; preds = %171, %53
  br label %205

; <label>:173                                     ; preds = %23
  %174 = icmp ne i64 %8, 0
  br i1 %174, label %175, label %176

; <label>:175                                     ; preds = %173
  br label %206

; <label>:176                                     ; preds = %173
  %177 = add nsw i64 %12, 1
  %178 = call noalias i8* @malloc(i64 %177) #5
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %181

; <label>:180                                     ; preds = %176
  br label %183

; <label>:181                                     ; preds = %176
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 440, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %183

; <label>:183                                     ; preds = %182, %180
  %184 = getelementptr inbounds i8, i8* %178, i64 %12
  store i8 0, i8* %184, align 1
  %185 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 4
  %186 = getelementptr inbounds [0 x i8], [0 x i8]* %185, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %178, i8* %186, i64 %12, i32 1, i1 false)
  %187 = call noalias i8* @malloc(i64 16) #5
  %188 = bitcast i8* %187 to %struct.decoded*
  %189 = icmp ne %struct.decoded* %188, null
  br i1 %189, label %190, label %191

; <label>:190                                     ; preds = %183
  br label %193

; <label>:191                                     ; preds = %183
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 445, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %193

; <label>:193                                     ; preds = %192, %190
  %194 = getelementptr inbounds %struct.decoded, %struct.decoded* %188, i32 0, i32 0
  store i64 %6, i64* %194, align 8
  %195 = getelementptr inbounds %struct.decoded, %struct.decoded* %188, i32 0, i32 1
  store i8* %178, i8** %195, align 8
  %196 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %197 = load %struct.queue*, %struct.queue** %196, align 8
  %198 = bitcast %struct.decoded* %188 to i8*
  %199 = call i64 @TMqueue_push(%struct.queue* %197, i8* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

; <label>:201                                     ; preds = %193
  br label %204

; <label>:202                                     ; preds = %193
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.TMdecoder_process, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %204

; <label>:204                                     ; preds = %203, %201
  br label %205

; <label>:205                                     ; preds = %204, %172
  br label %206

; <label>:206                                     ; preds = %205, %175, %114, %73, %22, %19, %14, %2
  %.0 = phi i32 [ 1, %2 ], [ 2, %14 ], [ 3, %19 ], [ 4, %22 ], [ 0, %205 ], [ 5, %73 ], [ 6, %114 ], [ 3, %175 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i8* @decoder_getComplete(%struct.decoder* %decoderPtr, i64* %decodedFlowIdPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = call i8* @queue_pop(%struct.queue* %2)
  %4 = bitcast i8* %3 to %struct.decoded*
  %5 = icmp ne %struct.decoded* %4, null
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.decoded, %struct.decoded* %4, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %decodedFlowIdPtr, align 8
  %9 = getelementptr inbounds %struct.decoded, %struct.decoded* %4, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast %struct.decoded* %4 to i8*
  call void @free(i8* %11) #5
  br label %13

; <label>:12                                      ; preds = %0
  store i64 -1, i64* %decodedFlowIdPtr, align 8
  br label %13

; <label>:13                                      ; preds = %12, %6
  %data.0 = phi i8* [ %10, %6 ], [ null, %12 ]
  ret i8* %data.0
}

; Function Attrs: nounwind uwtable
define i8* @TMdecoder_getComplete(%struct.decoder* %decoderPtr, i64* %decodedFlowIdPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.decoder, %struct.decoder* %decoderPtr, i32 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = call i8* @TMqueue_pop(%struct.queue* %2)
  %4 = bitcast i8* %3 to %struct.decoded*
  %5 = icmp ne %struct.decoded* %4, null
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.decoded, %struct.decoded* %4, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %decodedFlowIdPtr, align 8
  %9 = getelementptr inbounds %struct.decoded, %struct.decoded* %4, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast %struct.decoded* %4 to i8*
  call void @free(i8* %11) #5
  br label %13

; <label>:12                                      ; preds = %0
  store i64 -1, i64* %decodedFlowIdPtr, align 8
  br label %13

; <label>:13                                      ; preds = %12, %6
  %data.0 = phi i8* [ %10, %6 ], [ null, %12 ]
  ret i8* %data.0
}

; Function Attrs: nounwind uwtable
define void @processPackets(i8* %argPtr) #0 {
  %decodedFlowId = alloca i64, align 8
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
  %9 = bitcast i8* %argPtr to %struct.arg*
  %10 = getelementptr inbounds %struct.arg, %struct.arg* %9, i32 0, i32 0
  %11 = load %struct.stream*, %struct.stream** %10, align 8
  %12 = bitcast i8* %argPtr to %struct.arg*
  %13 = getelementptr inbounds %struct.arg, %struct.arg* %12, i32 0, i32 1
  %14 = load %struct.decoder*, %struct.decoder** %13, align 8
  %15 = bitcast i8* %argPtr to %struct.arg*
  %16 = getelementptr inbounds %struct.arg, %struct.arg* %15, i32 0, i32 2
  %17 = load %struct.vector**, %struct.vector*** %16, align 8
  %18 = call %struct.detector* (...) bitcast (%struct.detector* ()* @Pdetector_alloc to %struct.detector* (...)*)()
  %19 = icmp ne %struct.detector* %18, null
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %7
  br label %23

; <label>:21                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.12, i32 0, i32 0), i32 191, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.processPackets, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  call void @detector_addPreprocessor(%struct.detector* %18, void (i8*)* @preprocessor_toLower)
  %24 = getelementptr inbounds %struct.vector*, %struct.vector** %17, i64 %8
  %25 = load %struct.vector*, %struct.vector** %24, align 8
  %26 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 0
  %27 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  br label %28

; <label>:28                                      ; preds = %141, %23
  br label %29

; <label>:29                                      ; preds = %28
  %30 = load i32, i32* %26, align 8
  %31 = call i32 @workBegin(i32 0, i32 %30)
  store i32 %31, i32* %27, align 4
  br label %32

; <label>:32                                      ; preds = %29
  br label %33

; <label>:33                                      ; preds = %47, %32
  %tries.0 = phi i32 [ 9, %32 ], [ %40, %47 ]
  br label %34

; <label>:34                                      ; preds = %38, %33
  %35 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %36 = icmp ne i64 %35, 0
  %37 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %37, i32 0, i32 3, i32 1)
  br i1 %36, label %38, label %39

; <label>:38                                      ; preds = %34
  call void @llvm.x86.sse2.pause() #5
  br label %34

; <label>:39                                      ; preds = %34
  %40 = add nsw i32 %tries.0, -1
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %39
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %53

; <label>:43                                      ; preds = %39
  %44 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #5, !srcloc !5
  %45 = trunc i64 %44 to i32
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %43
  br label %33

; <label>:48                                      ; preds = %43
  %49 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %._crit_edge

._crit_edge:                                      ; preds = %48
  br label %52

; <label>:51                                      ; preds = %48
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !6
  br label %52

; <label>:52                                      ; preds = %51, %._crit_edge
  br label %53

; <label>:53                                      ; preds = %52, %42
  %54 = call i8* @TMstream_getPacket(%struct.stream* %11)
  %55 = icmp sgt i32 %40, 0
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %53
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !srcloc !7
  br label %58

; <label>:57                                      ; preds = %53
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %58

; <label>:58                                      ; preds = %57, %56
  %59 = icmp ne i8* %54, null
  br i1 %59, label %61, label %60

; <label>:60                                      ; preds = %58
  br label %142

; <label>:61                                      ; preds = %58
  %62 = bitcast i8* %54 to %struct.packet*
  %63 = getelementptr inbounds %struct.packet, %struct.packet* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  br label %65

; <label>:65                                      ; preds = %81, %61
  %tries3.0 = phi i32 [ 9, %61 ], [ %74, %81 ]
  br label %66

; <label>:66                                      ; preds = %72, %65
  %67 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %68 = icmp ne i64 %67, 0
  %69 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %69, i32 0, i32 3, i32 1)
  %70 = getelementptr inbounds %struct.packet, %struct.packet* %62, i32 0, i32 3
  %71 = bitcast i64* %70 to i8*
  call void @llvm.prefetch(i8* %71, i32 0, i32 3, i32 1)
  br i1 %68, label %72, label %73

; <label>:72                                      ; preds = %66
  call void @llvm.x86.sse2.pause() #5
  br label %66

; <label>:73                                      ; preds = %66
  %74 = add nsw i32 %tries3.0, -1
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %73
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %87

; <label>:77                                      ; preds = %73
  %78 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #5, !srcloc !5
  %79 = trunc i64 %78 to i32
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %77
  br label %65

; <label>:82                                      ; preds = %77
  %83 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %._crit_edge1

._crit_edge1:                                     ; preds = %82
  br label %86

; <label>:85                                      ; preds = %82
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !6
  br label %86

; <label>:86                                      ; preds = %85, %._crit_edge1
  br label %87

; <label>:87                                      ; preds = %86, %76
  %88 = getelementptr inbounds %struct.packet, %struct.packet* %62, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = add i64 32, %89
  %91 = call i32 @TMdecoder_process(%struct.decoder* %14, i8* %54, i64 %90)
  %92 = icmp sgt i32 %74, 0
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %87
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #5, !srcloc !7
  br label %95

; <label>:94                                      ; preds = %87
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %95

; <label>:95                                      ; preds = %94, %93
  %96 = icmp ne i32 %91, 0
  br i1 %96, label %97, label %98

; <label>:97                                      ; preds = %95
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.12, i32 0, i32 0), i32 219, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.processPackets, i32 0, i32 0)) #15
  unreachable

; <label>:98                                      ; preds = %95
  br label %99

; <label>:99                                      ; preds = %113, %98
  %tries5.0 = phi i32 [ 9, %98 ], [ %106, %113 ]
  br label %100

; <label>:100                                     ; preds = %104, %99
  %101 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %102 = icmp ne i64 %101, 0
  %103 = bitcast i64** @RTM_fallBackLock to i8*
  call void @llvm.prefetch(i8* %103, i32 0, i32 3, i32 1)
  br i1 %102, label %104, label %105

; <label>:104                                     ; preds = %100
  call void @llvm.x86.sse2.pause() #5
  br label %100

; <label>:105                                     ; preds = %100
  %106 = add nsw i32 %tries5.0, -1
  %107 = icmp sle i32 %106, 0
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %105
  call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)()
  br label %119

; <label>:109                                     ; preds = %105
  %110 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #5, !srcloc !5
  %111 = trunc i64 %110 to i32
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %114

; <label>:113                                     ; preds = %109
  br label %99

; <label>:114                                     ; preds = %109
  %115 = call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)()
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %._crit_edge2

._crit_edge2:                                     ; preds = %114
  br label %118

; <label>:117                                     ; preds = %114
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !6
  br label %118

; <label>:118                                     ; preds = %117, %._crit_edge2
  br label %119

; <label>:119                                     ; preds = %118, %108
  %120 = call i8* @TMdecoder_getComplete(%struct.decoder* %14, i64* %decodedFlowId)
  %121 = icmp sgt i32 %106, 0
  br i1 %121, label %122, label %123

; <label>:122                                     ; preds = %119
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #5, !srcloc !7
  br label %124

; <label>:123                                     ; preds = %119
  call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)()
  br label %124

; <label>:124                                     ; preds = %123, %122
  %125 = icmp ne i8* %120, null
  br i1 %125, label %126, label %._crit_edge3

._crit_edge3:                                     ; preds = %124
  br label %139

; <label>:126                                     ; preds = %124
  %127 = call i32 @detector_process(%struct.detector* %18, i8* %120)
  call void @free(i8* %120) #5
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %._crit_edge4

._crit_edge4:                                     ; preds = %126
  br label %138

; <label>:129                                     ; preds = %126
  %130 = load i64, i64* %decodedFlowId, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = call i64 @Pvector_pushBack(%struct.vector* %25, i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

; <label>:134                                     ; preds = %129
  br label %137

; <label>:135                                     ; preds = %129
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.12, i32 0, i32 0), i32 235, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.processPackets, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:137                                     ; preds = %134
  br label %138

; <label>:138                                     ; preds = %137, %._crit_edge4
  br label %139

; <label>:139                                     ; preds = %138, %._crit_edge3
  br label %140

; <label>:140                                     ; preds = %139
  call void @workEnd(i32 0, i32 0)
  br label %141

; <label>:141                                     ; preds = %140
  br label %28

; <label>:142                                     ; preds = %60
  call void @Pdetector_free(%struct.detector* %18)
  br label %143

; <label>:143                                     ; preds = %142
  %144 = call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)()
  %145 = trunc i64 %144 to i32
  %146 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  call void @SimRoiEnd(i32 %145, i32 %147)
  br label %148

; <label>:148                                     ; preds = %143
  ret void
}

declare void @SimRoiStart(i32) #4

declare i32 @workBegin(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #5

declare void @workEnd(i32, i32) #4

declare void @SimRoiEnd(i32, i32) #4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %arg = alloca %struct.arg, align 8
  %startTime = alloca %struct.timeval, align 8
  %stopTime = alloca %struct.timeval, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sext i32 %argc to i64
  call void @parseArgs(i64 %1, i8** %argv)
  %2 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 116), align 16
  br label %3

; <label>:3                                       ; preds = %0
  %4 = call i32 @__get_cpuid_max(i32 0, i32* null)
  %5 = icmp sge i32 %4, 7
  br i1 %5, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %3
  br label %8

; <label>:6                                       ; preds = %3
  br i1 true, label %7, label %._crit_edge1

._crit_edge1:                                     ; preds = %6
  br label %8

; <label>:7                                       ; preds = %6
  br label %10

; <label>:8                                       ; preds = %._crit_edge1, %._crit_edge
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.12, i32 0, i32 0), i32 262, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #17, !srcloc !8
  %12 = extractvalue { i32, i32, i32, i32 } %11, 0
  %13 = extractvalue { i32, i32, i32, i32 } %11, 1
  %14 = extractvalue { i32, i32, i32, i32 } %11, 2
  %15 = extractvalue { i32, i32, i32, i32 } %11, 3
  %16 = and i32 %13, 2048
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %._crit_edge2

._crit_edge2:                                     ; preds = %10
  br label %20

; <label>:18                                      ; preds = %10
  br i1 true, label %19, label %._crit_edge3

._crit_edge3:                                     ; preds = %18
  br label %20

; <label>:19                                      ; preds = %18
  br label %22

; <label>:20                                      ; preds = %._crit_edge3, %._crit_edge2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.12, i32 0, i32 0), i32 262, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  call void (...) bitcast (void ()* @RTM_spinlock_init to void (...)*)()
  call void (i64, ...) bitcast (void (...)* @SimStartup to void (i64, ...)*)(i64 %2)
  br label %23

; <label>:23                                      ; preds = %22
  call void @thread_startup(i64 %2)
  %24 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 97), align 8
  %25 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 108), align 16
  %26 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 110), align 16
  %27 = load i64, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @global_params, i64 0, i64 115), align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.17, i32 0, i32 0), i64 %24)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.18, i32 0, i32 0), i64 %25)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9.19, i32 0, i32 0), i64 %26)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10.20, i32 0, i32 0), i64 %27)
  %32 = call %struct.vector* (...) bitcast (%struct.vector* ()* @dictionary_alloc to %struct.vector* (...)*)()
  %33 = icmp ne %struct.vector* %32, null
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %23
  br label %37

; <label>:35                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.12, i32 0, i32 0), i32 276, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %37

; <label>:37                                      ; preds = %36, %34
  %38 = call %struct.stream* @stream_alloc(i64 %24)
  %39 = icmp ne %struct.stream* %38, null
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %37
  br label %43

; <label>:41                                      ; preds = %37
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.12, i32 0, i32 0), i32 278, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %43

; <label>:43                                      ; preds = %42, %40
  %44 = call i64 @stream_generate(%struct.stream* %38, %struct.vector* %32, i64 %26, i64 %27, i64 %25)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i64 %44)
  %46 = call %struct.decoder* (...) bitcast (%struct.decoder* ()* @decoder_alloc to %struct.decoder* (...)*)()
  %47 = icmp ne %struct.decoder* %46, null
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %43
  br label %51

; <label>:49                                      ; preds = %43
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.12, i32 0, i32 0), i32 287, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %51

; <label>:51                                      ; preds = %50, %48
  %52 = mul i64 %2, 8
  %53 = call noalias i8* @malloc(i64 %52) #5
  %54 = bitcast i8* %53 to %struct.vector**
  %55 = icmp ne %struct.vector** %54, null
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %51
  br label %59

; <label>:57                                      ; preds = %51
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.12, i32 0, i32 0), i32 290, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  br label %60

; <label>:60                                      ; preds = %70, %59
  %i.0 = phi i64 [ 0, %59 ], [ %71, %70 ]
  %61 = icmp slt i64 %i.0, %2
  br i1 %61, label %62, label %72

; <label>:62                                      ; preds = %60
  %63 = call %struct.vector* @vector_alloc(i64 %26)
  %64 = icmp ne %struct.vector* %63, null
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %62
  br label %68

; <label>:66                                      ; preds = %62
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.12, i32 0, i32 0), i32 294, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:68                                      ; preds = %65
  %69 = getelementptr inbounds %struct.vector*, %struct.vector** %54, i64 %i.0
  store %struct.vector* %63, %struct.vector** %69, align 8
  br label %70

; <label>:70                                      ; preds = %68
  %71 = add nsw i64 %i.0, 1
  br label %60

; <label>:72                                      ; preds = %60
  %73 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i32 0, i32 0
  store %struct.stream* %38, %struct.stream** %73, align 8
  %74 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i32 0, i32 1
  store %struct.decoder* %46, %struct.decoder** %74, align 8
  %75 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i32 0, i32 2
  store %struct.vector** %54, %struct.vector*** %75, align 8
  %76 = call i32 @gettimeofday(%struct.timeval* %startTime, %struct.timezone* null) #5
  %77 = bitcast %struct.arg* %arg to i8*
  call void @thread_start(void (i8*)* @processPackets, i8* %77)
  %78 = call i32 @gettimeofday(%struct.timeval* %stopTime, %struct.timezone* null) #5
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sitofp i64 %80 to double
  %82 = getelementptr inbounds %struct.timeval, %struct.timeval* %stopTime, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sitofp i64 %83 to double
  %85 = fdiv double %84, 1.000000e+06
  %86 = fadd double %81, %85
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sitofp i64 %88 to double
  %90 = getelementptr inbounds %struct.timeval, %struct.timeval* %startTime, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to double
  %93 = fdiv double %92, 1.000000e+06
  %94 = fadd double %89, %93
  %95 = fsub double %86, %94
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0), double %95)
  br label %97

; <label>:97                                      ; preds = %118, %72
  %i.1 = phi i64 [ 0, %72 ], [ %119, %118 ]
  %numFound.0 = phi i64 [ 0, %72 ], [ %103, %118 ]
  %98 = icmp slt i64 %i.1, %2
  br i1 %98, label %99, label %120

; <label>:99                                      ; preds = %97
  %100 = getelementptr inbounds %struct.vector*, %struct.vector** %54, i64 %i.1
  %101 = load %struct.vector*, %struct.vector** %100, align 8
  %102 = call i64 @vector_getSize(%struct.vector* %101)
  %103 = add nsw i64 %numFound.0, %102
  br label %104

; <label>:104                                     ; preds = %115, %99
  %e.0 = phi i64 [ 0, %99 ], [ %116, %115 ]
  %105 = icmp slt i64 %e.0, %102
  br i1 %105, label %106, label %117

; <label>:106                                     ; preds = %104
  %107 = call i8* @vector_at(%struct.vector* %101, i64 %e.0)
  %108 = ptrtoint i8* %107 to i64
  %109 = call i64 @stream_isAttack(%struct.stream* %38, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %106
  br label %114

; <label>:112                                     ; preds = %106
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.12, i32 0, i32 0), i32 337, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:114                                     ; preds = %111
  br label %115

; <label>:115                                     ; preds = %114
  %116 = add nsw i64 %e.0, 1
  br label %104

; <label>:117                                     ; preds = %104
  br label %118

; <label>:118                                     ; preds = %117
  %119 = add nsw i64 %i.1, 1
  br label %97

; <label>:120                                     ; preds = %97
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i64 %numFound.0)
  %122 = icmp eq i64 %numFound.0, %44
  br i1 %122, label %123, label %124

; <label>:123                                     ; preds = %120
  br label %126

; <label>:124                                     ; preds = %120
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.12, i32 0, i32 0), i32 341, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) #15
  unreachable
                                                  ; No predecessors!
  br label %126

; <label>:126                                     ; preds = %125, %123
  br label %127

; <label>:127                                     ; preds = %132, %126
  %i.2 = phi i64 [ 0, %126 ], [ %133, %132 ]
  %128 = icmp slt i64 %i.2, %2
  br i1 %128, label %129, label %134

; <label>:129                                     ; preds = %127
  %130 = getelementptr inbounds %struct.vector*, %struct.vector** %54, i64 %i.2
  %131 = load %struct.vector*, %struct.vector** %130, align 8
  call void @vector_free(%struct.vector* %131)
  br label %132

; <label>:132                                     ; preds = %129
  %133 = add nsw i64 %i.2, 1
  br label %127

; <label>:134                                     ; preds = %127
  %135 = bitcast %struct.vector** %54 to i8*
  call void @free(i8* %135) #5
  call void @decoder_free(%struct.decoder* %46)
  call void @stream_free(%struct.stream* %38)
  call void @dictionary_free(%struct.vector* %32)
  br label %136

; <label>:136                                     ; preds = %134
  %137 = call i64 (...) @getWorkItemCount()
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i64 %137)
  %139 = call i32 @fflush(%struct._IO_FILE* null)
  br label %140

; <label>:140                                     ; preds = %136
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

; <label>:2                                       ; preds = %17, %0
  %3 = call i32 @getopt(i32 %1, i8** %argv, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)) #5
  %4 = sext i32 %3 to i64
  %5 = icmp ne i64 %4, -1
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %2
  switch i64 %4, label %._crit_edge [
    i64 97, label %._crit_edge1
    i64 108, label %._crit_edge2
    i64 110, label %._crit_edge3
    i64 115, label %._crit_edge4
    i64 116, label %._crit_edge5
    i64 63, label %13
  ]

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
  br label %14

; <label>:7                                       ; preds = %._crit_edge1, %._crit_edge2, %._crit_edge3, %._crit_edge4, %._crit_edge5
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
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i8* %26)
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
  br i1 %34, label %35, label %._crit_edge6

._crit_edge6:                                     ; preds = %32
  br label %38

; <label>:35                                      ; preds = %32
  %36 = getelementptr inbounds i8*, i8** %argv, i64 0
  %37 = load i8*, i8** %36, align 8
  call void @displayUsage(i8* %37)
  br label %38

; <label>:38                                      ; preds = %35, %._crit_edge6
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #6

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal void @displayUsage(i8* %appName) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* %appName)
  %2 = call i32 @puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i32 0, i32 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i32 0, i32 0), i32 10)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i32 0, i32 0), i32 16)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0), i32 1048576)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i32 0, i32 0), i32 1)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0), i32 1)
  call void @profiler_print_stats()
  call void @exit(i32 1) #15
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #4

declare i32 @puts(i8*) #4

declare void @profiler_print_stats()

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %__level, i32* %__sig) #7 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %__level) #17, !srcloc !9
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

declare void @SimStartup(...) #4

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare i64 @getWorkItemCount(...) #4

declare i32 @fflush(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define noalias %struct.detector* @detector_alloc() #0 {
  %1 = tail call noalias i8* @malloc(i64 16) #5
  %2 = bitcast i8* %1 to %struct.detector*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %15, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.vector* (...) bitcast (%struct.vector* ()* @dictionary_alloc to %struct.vector* (...)*)() #5
  %6 = bitcast i8* %1 to %struct.vector**
  store %struct.vector* %5, %struct.vector** %6, align 8
  %7 = icmp eq %struct.vector* %5, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.31, i64 0, i64 0), i32 100, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.detector_alloc, i64 0, i64 0)) #15
  unreachable

; <label>:9                                       ; preds = %4
  %10 = tail call %struct.vector* @vector_alloc(i64 1) #5
  %11 = getelementptr inbounds i8, i8* %1, i64 8
  %12 = bitcast i8* %11 to %struct.vector**
  store %struct.vector* %10, %struct.vector** %12, align 8
  %13 = icmp eq %struct.vector* %10, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %9
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2.32, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.31, i64 0, i64 0), i32 102, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.detector_alloc, i64 0, i64 0)) #15
  unreachable

; <label>:15                                      ; preds = %9, %0
  ret %struct.detector* %2
}

; Function Attrs: nounwind uwtable
define noalias %struct.detector* @Pdetector_alloc() #0 {
  %1 = tail call noalias i8* @malloc(i64 16) #5
  %2 = bitcast i8* %1 to %struct.detector*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %15, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.vector* (...) bitcast (%struct.vector* ()* @Pdictionary_alloc to %struct.vector* (...)*)() #5
  %6 = bitcast i8* %1 to %struct.vector**
  store %struct.vector* %5, %struct.vector** %6, align 8
  %7 = icmp eq %struct.vector* %5, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.31, i64 0, i64 0), i32 121, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.Pdetector_alloc, i64 0, i64 0)) #15
  unreachable

; <label>:9                                       ; preds = %4
  %10 = tail call %struct.vector* @Pvector_alloc(i64 1) #5
  %11 = getelementptr inbounds i8, i8* %1, i64 8
  %12 = bitcast i8* %11 to %struct.vector**
  store %struct.vector* %10, %struct.vector** %12, align 8
  %13 = icmp eq %struct.vector* %10, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %9
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2.32, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.31, i64 0, i64 0), i32 123, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.Pdetector_alloc, i64 0, i64 0)) #15
  unreachable

; <label>:15                                      ; preds = %9, %0
  ret %struct.detector* %2
}

; Function Attrs: nounwind uwtable
define void @detector_free(%struct.detector* nocapture %detectorPtr) #0 {
  %1 = getelementptr inbounds %struct.detector, %struct.detector* %detectorPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @dictionary_free(%struct.vector* %2) #5
  %3 = getelementptr inbounds %struct.detector, %struct.detector* %detectorPtr, i64 0, i32 1
  %4 = load %struct.vector*, %struct.vector** %3, align 8
  tail call void @vector_free(%struct.vector* %4) #5
  %5 = bitcast %struct.detector* %detectorPtr to i8*
  tail call void @free(i8* %5) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @Pdetector_free(%struct.detector* nocapture %detectorPtr) #0 {
  %1 = getelementptr inbounds %struct.detector, %struct.detector* %detectorPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @Pdictionary_free(%struct.vector* %2) #5
  %3 = getelementptr inbounds %struct.detector, %struct.detector* %detectorPtr, i64 0, i32 1
  %4 = load %struct.vector*, %struct.vector** %3, align 8
  tail call void @Pvector_free(%struct.vector* %4) #5
  %5 = bitcast %struct.detector* %detectorPtr to i8*
  tail call void @free(i8* %5) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @detector_addPreprocessor(%struct.detector* nocapture readonly %detectorPtr, void (i8*)* %p) #0 {
  %1 = getelementptr inbounds %struct.detector, %struct.detector* %detectorPtr, i64 0, i32 1
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = bitcast void (i8*)* %p to i8*
  %4 = tail call i64 @vector_pushBack(%struct.vector* %2, i8* %3) #5
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.39, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.31, i64 0, i64 0), i32 165, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.detector_addPreprocessor, i64 0, i64 0)) #15
  unreachable

; <label>:7                                       ; preds = %0
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @detector_process(%struct.detector* nocapture readonly %detectorPtr, i8* %str) #0 {
  %1 = getelementptr inbounds %struct.detector, %struct.detector* %detectorPtr, i64 0, i32 1
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i64 @vector_getSize(%struct.vector* %2) #5
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %p.01 = phi i64 [ %7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %5 = tail call i8* @vector_at(%struct.vector* %2, i64 %p.01) #5
  %6 = bitcast i8* %5 to void (i8*)*
  tail call void %6(i8* %str) #5
  %7 = add nuw nsw i64 %p.01, 1
  %exitcond = icmp eq i64 %7, %3
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %8 = getelementptr inbounds %struct.detector, %struct.detector* %detectorPtr, i64 0, i32 0
  %9 = load %struct.vector*, %struct.vector** %8, align 8
  %10 = tail call i8* @dictionary_match(%struct.vector* %9, i8* %str) #5
  %11 = icmp eq i8* %10, null
  %. = select i1 %11, i32 0, i32 7
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define %struct.vector* @dictionary_alloc() #0 {
  %1 = tail call %struct.vector* @vector_alloc(i64 71) #5
  %2 = icmp eq %struct.vector* %1, null
  br i1 %2, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %0
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  %4 = icmp slt i64 %9, 71
  br i1 %4, label %.preheader, label %.loopexit.loopexit

.preheader:                                       ; preds = %3, %.preheader.preheader
  %s.01 = phi i64 [ %9, %3 ], [ 0, %.preheader.preheader ]
  %5 = getelementptr inbounds [71 x i8*], [71 x i8*]* @global_defaultSignatures, i64 0, i64 %s.01
  %6 = load i8*, i8** %5, align 8
  %7 = tail call i64 @vector_pushBack(%struct.vector* nonnull %1, i8* %6) #5
  %8 = icmp eq i64 %7, 0
  %9 = add nuw nsw i64 %s.01, 1
  br i1 %8, label %10, label %3

; <label>:10                                      ; preds = %.preheader
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i64 0, i64 0), i32 174, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.dictionary_alloc, i64 0, i64 0)) #15
  unreachable

.loopexit.loopexit:                               ; preds = %3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  ret %struct.vector* %1
}

; Function Attrs: nounwind uwtable
define %struct.vector* @Pdictionary_alloc() #0 {
  %1 = tail call %struct.vector* @Pvector_alloc(i64 71) #5
  %2 = icmp eq %struct.vector* %1, null
  br i1 %2, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %0
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  %4 = icmp slt i64 %9, 71
  br i1 %4, label %.preheader, label %.loopexit.loopexit

.preheader:                                       ; preds = %3, %.preheader.preheader
  %s.01 = phi i64 [ %9, %3 ], [ 0, %.preheader.preheader ]
  %5 = getelementptr inbounds [71 x i8*], [71 x i8*]* @global_defaultSignatures, i64 0, i64 %s.01
  %6 = load i8*, i8** %5, align 8
  %7 = tail call i64 @Pvector_pushBack(%struct.vector* nonnull %1, i8* %6) #5
  %8 = icmp eq i64 %7, 0
  %9 = add nuw nsw i64 %s.01, 1
  br i1 %8, label %10, label %3

; <label>:10                                      ; preds = %.preheader
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i64 0, i64 0), i32 197, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.Pdictionary_alloc, i64 0, i64 0)) #15
  unreachable

.loopexit.loopexit:                               ; preds = %3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  ret %struct.vector* %1
}

; Function Attrs: nounwind uwtable
define void @dictionary_free(%struct.vector* %dictionaryPtr) #0 {
  tail call void @vector_free(%struct.vector* %dictionaryPtr) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @Pdictionary_free(%struct.vector* %dictionaryPtr) #0 {
  tail call void @Pvector_free(%struct.vector* %dictionaryPtr) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @dictionary_add(%struct.vector* %dictionaryPtr, i8* %str) #0 {
  %1 = tail call i64 @vector_pushBack(%struct.vector* %dictionaryPtr, i8* %str) #5
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i8* @dictionary_get(%struct.vector* %dictionaryPtr, i64 %i) #0 {
  %1 = tail call i8* @vector_at(%struct.vector* %dictionaryPtr, i64 %i) #5
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i8* @dictionary_match(%struct.vector* %dictionaryPtr, i8* readonly %str) #0 {
  %1 = tail call i64 @vector_getSize(%struct.vector* %dictionaryPtr) #5
  %2 = icmp sgt i64 %1, 0
  br i1 %2, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

; <label>:3                                       ; preds = %.lr.ph
  %4 = icmp slt i64 %8, %1
  br i1 %4, label %.lr.ph, label %._crit_edge.loopexit

.lr.ph:                                           ; preds = %3, %.lr.ph.preheader
  %s.01 = phi i64 [ %8, %3 ], [ 0, %.lr.ph.preheader ]
  %5 = tail call i8* @vector_at(%struct.vector* %dictionaryPtr, i64 %s.01) #5
  %6 = tail call i8* @strstr(i8* %str, i8* %5) #16
  %7 = icmp eq i8* %6, null
  %8 = add nuw nsw i64 %s.01, 1
  br i1 %7, label %3, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph, %3
  %.0.ph = phi i8* [ null, %3 ], [ %5, %.lr.ph ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %.0 = phi i8* [ null, %0 ], [ %.0.ph, %._crit_edge.loopexit ]
  ret i8* %.0
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8* nocapture) #6

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @packet_compareFlowId(i8* nocapture readonly %aPtr, i8* nocapture readonly %bPtr) #8 {
  %1 = bitcast i8* %aPtr to i64*
  %2 = load i64, i64* %1, align 8
  %3 = bitcast i8* %bPtr to i64*
  %4 = load i64, i64* %3, align 8
  %5 = sub nsw i64 %2, %4
  ret i64 %5
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @packet_compareFragmentId(i8* nocapture readonly %aPtr, i8* nocapture readonly %bPtr) #8 {
  %1 = getelementptr inbounds i8, i8* %aPtr, i64 8
  %2 = bitcast i8* %1 to i64*
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds i8, i8* %bPtr, i64 8
  %5 = bitcast i8* %4 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = sub nsw i64 %3, %6
  %sext = shl i64 %7, 32
  %8 = ashr exact i64 %sext, 32
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define void @preprocessor_convertURNHex(i8* nocapture %str) #0 {
  %hex = alloca [3 x i8], align 1
  %i = alloca i32, align 4
  %1 = getelementptr inbounds [3 x i8], [3 x i8]* %hex, i64 0, i64 0
  %2 = getelementptr inbounds [3 x i8], [3 x i8]* %hex, i64 0, i64 1
  %3 = getelementptr inbounds [3 x i8], [3 x i8]* %hex, i64 0, i64 2
  br label %4

; <label>:4                                       ; preds = %29, %0
  %dst.0 = phi i8* [ %str, %0 ], [ %32, %29 ]
  %src.0 = phi i8* [ %str, %0 ], [ %31, %29 ]
  %5 = load i8, i8* %src.0, align 1
  switch i8 %5, label %29 [
    i8 0, label %33
    i8 37, label %6
  ]

; <label>:6                                       ; preds = %4
  %7 = getelementptr inbounds i8, i8* %src.0, i64 1
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = call i32 @tolower(i32 %9) #5
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %1, align 1
  %sext.mask = and i32 %10, 255
  %12 = icmp eq i32 %sext.mask, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %6
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.87, i64 0, i64 0), i32 95, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.preprocessor_convertURNHex, i64 0, i64 0)) #15
  unreachable

; <label>:14                                      ; preds = %6
  %15 = getelementptr inbounds i8, i8* %src.0, i64 2
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 @tolower(i32 %17) #5
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %2, align 1
  %sext.mask1 = and i32 %18, 255
  %20 = icmp eq i32 %sext.mask1, 0
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %14
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.88, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.87, i64 0, i64 0), i32 97, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.preprocessor_convertURNHex, i64 0, i64 0)) #15
  unreachable

; <label>:22                                      ; preds = %14
  store i8 0, i8* %3, align 1
  %23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %1, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.89, i64 0, i64 0), i32* nonnull %i) #5
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %26, label %25

; <label>:25                                      ; preds = %22
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.90, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.87, i64 0, i64 0), i32 101, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.preprocessor_convertURNHex, i64 0, i64 0)) #15
  unreachable

; <label>:26                                      ; preds = %22
  %27 = load i32, i32* %i, align 4
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %15, align 1
  br label %29

; <label>:29                                      ; preds = %26, %4
  %30 = phi i8 [ %28, %26 ], [ %5, %4 ]
  %src.1 = phi i8* [ %15, %26 ], [ %src.0, %4 ]
  store i8 %30, i8* %dst.0, align 1
  %31 = getelementptr inbounds i8, i8* %src.1, i64 1
  %32 = getelementptr inbounds i8, i8* %dst.0, i64 1
  br label %4

; <label>:33                                      ; preds = %4
  %dst.0.lcssa = phi i8* [ %dst.0, %4 ]
  store i8 0, i8* %dst.0.lcssa, align 1
  ret void
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind uwtable
define void @preprocessor_toLower(i8* nocapture %str) #0 {
  %1 = load i8, i8* %str, align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %3 = phi i8 [ %8, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %src.01 = phi i8* [ %7, %.lr.ph ], [ %str, %.lr.ph.preheader ]
  %4 = sext i8 %3 to i32
  %5 = tail call i32 @tolower(i32 %4) #5
  %6 = trunc i32 %5 to i8
  store i8 %6, i8* %src.01, align 1
  %7 = getelementptr inbounds i8, i8* %src.01, i64 1
  %8 = load i8, i8* %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void
}

; Function Attrs: nounwind uwtable
define noalias %struct.stream* @stream_alloc(i64 %percentAttack) #0 {
  %1 = tail call noalias i8* @malloc(i64 40) #5
  %2 = bitcast i8* %1 to %struct.stream*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %32, label %4

; <label>:4                                       ; preds = %0
  %5 = icmp ult i64 %percentAttack, 101
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 107, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i64 0, i64 0)) #15
  unreachable

; <label>:7                                       ; preds = %4
  %8 = bitcast i8* %1 to i64*
  store i64 %percentAttack, i64* %8, align 8
  %9 = tail call %struct.random* (...) bitcast (%struct.random* ()* @random_alloc to %struct.random* (...)*)() #5
  %10 = getelementptr inbounds i8, i8* %1, i64 8
  %11 = bitcast i8* %10 to %struct.random**
  store %struct.random* %9, %struct.random** %11, align 8
  %12 = icmp eq %struct.random* %9, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %7
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.97, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 110, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i64 0, i64 0)) #15
  unreachable

; <label>:14                                      ; preds = %7
  %15 = tail call %struct.vector* @vector_alloc(i64 1) #5
  %16 = getelementptr inbounds i8, i8* %1, i64 16
  %17 = bitcast i8* %16 to %struct.vector**
  store %struct.vector* %15, %struct.vector** %17, align 8
  %18 = icmp eq %struct.vector* %15, null
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %14
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3.98, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 112, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i64 0, i64 0)) #15
  unreachable

; <label>:20                                      ; preds = %14
  %21 = tail call %struct.queue* @queue_alloc(i64 -1) #5
  %22 = getelementptr inbounds i8, i8* %1, i64 24
  %23 = bitcast i8* %22 to %struct.queue**
  store %struct.queue* %21, %struct.queue** %23, align 8
  %24 = icmp eq %struct.queue* %21, null
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %20
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4.99, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 114, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i64 0, i64 0)) #15
  unreachable

; <label>:26                                      ; preds = %20
  %27 = tail call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null) #5
  %28 = getelementptr inbounds i8, i8* %1, i64 32
  %29 = bitcast i8* %28 to %struct.rbtree**
  store %struct.rbtree* %27, %struct.rbtree** %29, align 8
  %30 = icmp eq %struct.rbtree* %27, null
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %26
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5.100, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 116, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i64 0, i64 0)) #15
  unreachable

; <label>:32                                      ; preds = %26, %0
  ret %struct.stream* %2
}

; Function Attrs: nounwind uwtable
define void @stream_free(%struct.stream* nocapture %streamPtr) #0 {
  %1 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 2
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i64 @vector_getSize(%struct.vector* %2) #5
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %a.01 = phi i64 [ %6, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %5 = tail call i8* @vector_at(%struct.vector* %2, i64 %a.01) #5
  tail call void @free(i8* %5) #5
  %6 = add nuw nsw i64 %a.01, 1
  %exitcond = icmp eq i64 %6, %3
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 4
  %8 = load %struct.rbtree*, %struct.rbtree** %7, align 8
  tail call void @rbtree_free(%struct.rbtree* %8) #5
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 3
  %10 = load %struct.queue*, %struct.queue** %9, align 8
  tail call void @queue_free(%struct.queue* %10) #5
  %11 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @vector_free(%struct.vector* %11) #5
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 1
  %13 = load %struct.random*, %struct.random** %12, align 8
  tail call void @random_free(%struct.random* %13) #5
  %14 = bitcast %struct.stream* %streamPtr to i8*
  tail call void @free(i8* %14) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @stream_generate(%struct.stream* nocapture readonly %streamPtr, %struct.vector* %dictionaryPtr, i64 %numFlow, i64 %seed, i64 %maxLength) #0 {
  %1 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 1
  %4 = load %struct.random*, %struct.random** %3, align 8
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 2
  %6 = load %struct.vector*, %struct.vector** %5, align 8
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 3
  %8 = load %struct.queue*, %struct.queue** %7, align 8
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 4
  %10 = load %struct.rbtree*, %struct.rbtree** %9, align 8
  %11 = tail call %struct.detector* (...) bitcast (%struct.detector* ()* @detector_alloc to %struct.detector* (...)*)() #5
  %12 = icmp eq %struct.detector* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6.105, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 220, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i64 0, i64 0)) #15
  unreachable

; <label>:14                                      ; preds = %0
  tail call void @detector_addPreprocessor(%struct.detector* nonnull %11, void (i8*)* nonnull @preprocessor_toLower) #5
  tail call void @random_seed(%struct.random* %4, i64 %seed) #5
  tail call void @queue_clear(%struct.queue* %8) #5
  %15 = icmp slt i64 %numFlow, 1
  br i1 %15, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %14
  %16 = load i64, i64* @global_numDefaultSignature, align 8
  br label %20

; <label>:17                                      ; preds = %108
  %18 = add nuw nsw i64 %f.012, 1
  %19 = icmp slt i64 %f.012, %numFlow
  br i1 %19, label %20, label %._crit_edge17.loopexit

; <label>:20                                      ; preds = %17, %.lr.ph16
  %numAttack.014 = phi i64 [ 0, %.lr.ph16 ], [ %numAttack.2, %17 ]
  %f.012 = phi i64 [ 1, %.lr.ph16 ], [ %18, %17 ]
  %21 = tail call i64 @random_generate(%struct.random* %4) #5
  %22 = urem i64 %21, 100
  %23 = icmp ult i64 %22, %2
  %24 = tail call i64 @random_generate(%struct.random* %4) #5
  br i1 %23, label %25, label %34

; <label>:25                                      ; preds = %20
  %26 = urem i64 %24, %16
  %27 = tail call i8* @dictionary_get(%struct.vector* %dictionaryPtr, i64 %26) #5
  %28 = inttoptr i64 %f.012 to i8*
  %29 = tail call i64 @rbtree_insert(%struct.rbtree* %10, i8* %28, i8* %27) #5
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %25
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.106, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 237, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i64 0, i64 0)) #15
  unreachable

; <label>:32                                      ; preds = %25
  %33 = add nsw i64 %numAttack.014, 1
  br label %65

; <label>:34                                      ; preds = %20
  %35 = urem i64 %24, %maxLength
  %36 = add i64 %35, 1
  %37 = add i64 %35, 2
  %38 = tail call noalias i8* @malloc(i64 %37) #5
  %39 = tail call i64 @vector_pushBack(%struct.vector* %6, i8* %38) #5
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %42, label %.preheader

.preheader:                                       ; preds = %34
  %41 = icmp sgt i64 %36, 0
  br i1 %41, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

; <label>:42                                      ; preds = %34
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.106, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 246, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i64 0, i64 0)) #15
  unreachable

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %l.011 = phi i64 [ %48, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %43 = tail call i64 @random_generate(%struct.random* %4) #5
  %44 = urem i64 %43, 95
  %45 = trunc i64 %44 to i8
  %46 = add nuw i8 %45, 32
  %47 = getelementptr inbounds i8, i8* %38, i64 %l.011
  store i8 %46, i8* %47, align 1
  %48 = add nuw nsw i64 %l.011, 1
  %exitcond = icmp eq i64 %48, %36
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %l.0.lcssa = phi i64 [ 0, %.preheader ], [ %36, %._crit_edge.loopexit ]
  %49 = getelementptr inbounds i8, i8* %38, i64 %l.0.lcssa
  store i8 0, i8* %49, align 1
  %50 = tail call noalias i8* @malloc(i64 %37) #5
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %._crit_edge
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.107, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 253, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i64 0, i64 0)) #15
  unreachable

; <label>:53                                      ; preds = %._crit_edge
  %54 = tail call i8* @strcpy(i8* nonnull %50, i8* nonnull %38) #5
  %55 = tail call i32 @detector_process(%struct.detector* nonnull %11, i8* nonnull %50) #5
  %56 = icmp eq i32 %55, 7
  br i1 %56, label %57, label %64

; <label>:57                                      ; preds = %53
  %58 = inttoptr i64 %f.012 to i8*
  %59 = tail call i64 @rbtree_insert(%struct.rbtree* %10, i8* %58, i8* nonnull %38) #5
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %57
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.106, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 260, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i64 0, i64 0)) #15
  unreachable

; <label>:62                                      ; preds = %57
  %63 = add nsw i64 %numAttack.014, 1
  br label %64

; <label>:64                                      ; preds = %62, %53
  %numAttack.1 = phi i64 [ %63, %62 ], [ %numAttack.014, %53 ]
  tail call void @free(i8* nonnull %50) #5
  br label %65

; <label>:65                                      ; preds = %64, %32
  %str.0 = phi i8* [ %27, %32 ], [ %38, %64 ]
  %numAttack.2 = phi i64 [ %33, %32 ], [ %numAttack.1, %64 ]
  %66 = tail call i64 @strlen(i8* %str.0) #16
  %67 = tail call i64 @random_generate(%struct.random* %4) #5
  %68 = urem i64 %67, %66
  %69 = add i64 %68, 1
  %70 = sdiv i64 %66, %69
  %71 = icmp sgt i64 %68, 0
  br i1 %71, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %65
  %72 = add i64 %70, 32
  br label %73

; <label>:73                                      ; preds = %95, %.lr.ph.i
  %p.04.i = phi i64 [ 0, %.lr.ph.i ], [ %96, %95 ]
  %74 = tail call noalias i8* @malloc(i64 %72) #5
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %73
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10.108, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 169, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i64 0, i64 0)) #15
  unreachable

; <label>:77                                      ; preds = %73
  %78 = tail call i64 @vector_pushBack(%struct.vector* %6, i8* nonnull %74) #5
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %77
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.106, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 171, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i64 0, i64 0)) #15
  unreachable

; <label>:81                                      ; preds = %77
  %82 = bitcast i8* %74 to i64*
  store i64 %f.012, i64* %82, align 8
  %83 = getelementptr inbounds i8, i8* %74, i64 8
  %84 = bitcast i8* %83 to i64*
  store i64 %p.04.i, i64* %84, align 8
  %85 = getelementptr inbounds i8, i8* %74, i64 16
  %86 = bitcast i8* %85 to i64*
  store i64 %69, i64* %86, align 8
  %87 = getelementptr inbounds i8, i8* %74, i64 24
  %88 = bitcast i8* %87 to i64*
  store i64 %70, i64* %88, align 8
  %89 = getelementptr inbounds i8, i8* %74, i64 32
  %90 = mul nsw i64 %p.04.i, %70
  %91 = getelementptr inbounds i8, i8* %str.0, i64 %90
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %91, i64 %70, i32 1, i1 false) #5
  %92 = tail call i64 @queue_push(%struct.queue* %8, i8* nonnull %74) #5
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

; <label>:94                                      ; preds = %81
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.106, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 179, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i64 0, i64 0)) #15
  unreachable

; <label>:95                                      ; preds = %81
  %96 = add nuw nsw i64 %p.04.i, 1
  %97 = icmp slt i64 %96, %68
  br i1 %97, label %73, label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %95
  %.lcssa = phi i64 [ %96, %95 ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %65
  %p.0.lcssa.i = phi i64 [ 0, %65 ], [ %.lcssa, %._crit_edge.i.loopexit ]
  %98 = srem i64 %66, %69
  %99 = add nsw i64 %98, %70
  %100 = add i64 %99, 32
  %101 = tail call noalias i8* @malloc(i64 %100) #5
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %104

; <label>:103                                     ; preds = %._crit_edge.i
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10.108, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 185, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i64 0, i64 0)) #15
  unreachable

; <label>:104                                     ; preds = %._crit_edge.i
  %105 = tail call i64 @vector_pushBack(%struct.vector* %6, i8* nonnull %101) #5
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

; <label>:107                                     ; preds = %104
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.106, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 187, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i64 0, i64 0)) #15
  unreachable

; <label>:108                                     ; preds = %104
  %109 = bitcast i8* %101 to i64*
  store i64 %f.012, i64* %109, align 8
  %110 = getelementptr inbounds i8, i8* %101, i64 8
  %111 = bitcast i8* %110 to i64*
  store i64 %p.0.lcssa.i, i64* %111, align 8
  %112 = getelementptr inbounds i8, i8* %101, i64 16
  %113 = bitcast i8* %112 to i64*
  store i64 %69, i64* %113, align 8
  %114 = getelementptr inbounds i8, i8* %101, i64 24
  %115 = bitcast i8* %114 to i64*
  store i64 %99, i64* %115, align 8
  %116 = getelementptr inbounds i8, i8* %101, i64 32
  %117 = mul nsw i64 %p.0.lcssa.i, %70
  %118 = getelementptr inbounds i8, i8* %str.0, i64 %117
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %118, i64 %99, i32 1, i1 false) #5
  %119 = tail call i64 @queue_push(%struct.queue* %8, i8* nonnull %101) #5
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %17

; <label>:121                                     ; preds = %108
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.106, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i64 0, i64 0), i32 195, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i64 0, i64 0)) #15
  unreachable

._crit_edge17.loopexit:                           ; preds = %17
  %numAttack.2.lcssa49 = phi i64 [ %numAttack.2, %17 ]
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit, %14
  %numAttack.0.lcssa = phi i64 [ 0, %14 ], [ %numAttack.2.lcssa49, %._crit_edge17.loopexit ]
  tail call void @queue_shuffle(%struct.queue* %8, %struct.random* %4) #5
  tail call void @detector_free(%struct.detector* nonnull %11) #5
  ret i64 %numAttack.0.lcssa
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind uwtable
define i8* @stream_getPacket(%struct.stream* nocapture readonly %streamPtr) #0 {
  %1 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 3
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = tail call i8* @queue_pop(%struct.queue* %2) #5
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i8* @TMstream_getPacket(%struct.stream* nocapture readonly %streamPtr) #0 {
  %1 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 3
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = tail call i8* @TMqueue_pop(%struct.queue* %2) #5
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define i64 @stream_isAttack(%struct.stream* nocapture readonly %streamPtr, i64 %flowId) #0 {
  %1 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 4
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %flowId to i8*
  %4 = tail call i64 @rbtree_contains(%struct.rbtree* %2, i8* %3) #5
  ret i64 %4
}

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
  %3 = call noalias i8* @malloc(i64 32) #5
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
  %3 = call noalias i8* @malloc(i64 32) #5
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
  %3 = call noalias i8* @malloc(i64 32) #5
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
  call void @free(i8* %7) #5
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
  call void @free(i8* %3) #5
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
  call void @free(i8* %7) #5
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
  call void @free(i8* %3) #5
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
  call void @free(i8* %8) #5
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
  call void @free(i8* %3) #5
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
  %3 = call noalias i8* @malloc(i64 16) #5
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
  %3 = call noalias i8* @malloc(i64 16) #5
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
  %3 = call noalias i8* @malloc(i64 16) #5
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.142, i32 0, i32 0), i32 703, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.list_remove, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.142, i32 0, i32 0), i32 732, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Plist_remove, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.142, i32 0, i32 0), i32 761, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMlist_remove, i32 0, i32 0)) #15
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
  %3 = call noalias i8* @malloc(i64 16) #5
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
  %3 = call noalias i8* @malloc(i64 16) #5
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
  %3 = call noalias i8* @malloc(i64 16) #5
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
  call void @free(i8* %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ppair_free(%struct.pair* %pairPtr) #9 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMpair_free(%struct.pair* %pairPtr) #9 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %pairPtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %2 to i8*
  call void @free(i8* %3) #5
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
  %3 = call noalias i8* @malloc(i64 32) #5
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
  %17 = call noalias i8* @malloc(i64 %16) #5
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
  call void @free(i8* %27) #5
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
  %3 = call noalias i8* @malloc(i64 32) #5
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
  %17 = call noalias i8* @malloc(i64 %16) #5
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
  call void @free(i8* %27) #5
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
  %3 = call noalias i8* @malloc(i64 32) #5
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
  %17 = call noalias i8* @malloc(i64 %16) #5
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
  call void @free(i8* %27) #5
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
  call void @free(i8* %5) #5
  %6 = load %struct.queue*, %struct.queue** %1, align 8
  %7 = bitcast %struct.queue* %6 to i8*
  call void @free(i8* %7) #5
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
  call void @free(i8* %5) #5
  %6 = load %struct.queue*, %struct.queue** %1, align 8
  %7 = bitcast %struct.queue* %6 to i8*
  call void @free(i8* %7) #5
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
  call void @free(i8* %5) #5
  %6 = load %struct.queue*, %struct.queue** %1, align 8
  %7 = bitcast %struct.queue* %6 to i8*
  call void @free(i8* %7) #5
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
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.154, i32 0, i32 0), i32 290, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.queue_push, i32 0, i32 0)) #15
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
  %32 = call noalias i8* @malloc(i64 %31) #5
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
  call void @free(i8* %106) #5
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
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.154, i32 0, i32 0), i32 345, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Pqueue_push, i32 0, i32 0)) #15
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
  %32 = call noalias i8* @malloc(i64 %31) #5
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
  call void @free(i8* %106) #5
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
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.154, i32 0, i32 0), i32 401, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMqueue_push, i32 0, i32 0)) #15
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
  %37 = call noalias i8* @malloc(i64 %36) #5
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
  call void @free(i8* %111) #5
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
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.169, i32 0, i32 0))
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
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1.170, i32 0, i32 0), i64 %22, i64 %26)
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
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.171, i32 0, i32 0), i64 %35, i64 %38)
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
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.172, i32 0, i32 0))
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
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.172, i32 0, i32 0))
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
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4.173, i32 0, i32 0), i64 %96, i64 %100, i64 %104, i64 %106, i64 %110, i64 %114)
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
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5.177, i32 0, i32 0), i64 %124, i64 %125)
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
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6.174, i32 0, i32 0), i64 %31, i64 %32, i64 %33)
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
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7.175, i32 0, i32 0))
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
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7.175, i32 0, i32 0))
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
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8.176, i32 0, i32 0), i32 1179)
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
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8.176, i32 0, i32 0), i32 1183)
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
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8.176, i32 0, i32 0), i32 1189)
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
  %2 = call noalias i8* @malloc(i64 16) #5
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
  %2 = call noalias i8* @malloc(i64 16) #5
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
  call void @freeNode.182(%struct.node* %4)
  %5 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %6 = bitcast %struct.rbtree* %5 to i8*
  call void @free(i8* %6) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeNode.182(%struct.node* %n) #9 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %12

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 3
  %7 = load %struct.node*, %struct.node** %6, align 8
  call void @freeNode.182(%struct.node* %7)
  %8 = load %struct.node*, %struct.node** %1, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %10 = load %struct.node*, %struct.node** %9, align 8
  call void @freeNode.182(%struct.node* %10)
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
  call void @free(i8* %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMrbtree_free(%struct.rbtree* %r) #9 {
  %1 = alloca %struct.rbtree*, align 8
  store %struct.rbtree* %r, %struct.rbtree** %1, align 8
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %2, i32 0, i32 0
  %4 = load %struct.node*, %struct.node** %3, align 8
  call void @TMfreeNode.183(%struct.node* %4)
  %5 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %6 = bitcast %struct.rbtree* %5 to i8*
  call void @free(i8* %6) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMfreeNode.183(%struct.node* %n) #9 {
  %1 = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %1, align 8
  %2 = load %struct.node*, %struct.node** %1, align 8
  %3 = icmp ne %struct.node* %2, null
  br i1 %3, label %4, label %12

; <label>:4                                       ; preds = %0
  %5 = load %struct.node*, %struct.node** %1, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 3
  %7 = load %struct.node*, %struct.node** %6, align 8
  call void @TMfreeNode.183(%struct.node* %7)
  %8 = load %struct.node*, %struct.node** %1, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %10 = load %struct.node*, %struct.node** %9, align 8
  call void @TMfreeNode.183(%struct.node* %10)
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
  call void @free(i8* %3) #5
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
  %1 = call noalias i8* @malloc(i64 48) #5
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
  %1 = call noalias i8* @malloc(i64 48) #5
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
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.204, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.204, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #15
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

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
  %14 = call i64 @lseek(i32 %10, i64 %13, i32 0) #5
  store i64 %14, i64* %offset, align 8
  %15 = load i64, i64* %offset, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %9
  br label %20

; <label>:18                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.205, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 189, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.204, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #15
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
  call void @llvm.x86.sse2.pause() #5
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
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !10
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
  %1 = call i64 @pthread_self() #17
  %2 = call i32 @pthread_getaffinity_np(i64 %1, i64 128, %struct.cpu_set_t* %available_procs) #5
  store i32 %2, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.214, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.determineNumProcs, i32 0, i32 0)) #15
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
  %3 = call i64 @pthread_self() #17
  %4 = call i32 @pthread_getaffinity_np(i64 %3, i64 128, %struct.cpu_set_t* %available_procs) #5
  store i32 %4, i32* %err, align 4
  %5 = load i32, i32* %err, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.214, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.217, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 463, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.220, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 465, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7.221, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8.222, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 486, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9.223, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 492, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10.224, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 494, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.218, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 570, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12.219, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.203, i32 0, i32 0), i32 571, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #15
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
  call void @free(i8* %19) #5
  store i64* null, i64** @global_threadIds, align 8
  %20 = load i64*, i64** @global_threads, align 8
  %21 = bitcast i64* %20 to i8*
  call void @free(i8* %21) #5
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
  %17 = call noalias i8* @malloc(i64 24) #5
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
  %29 = call noalias i8* @malloc(i64 %28) #5
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
  %17 = call noalias i8* @malloc(i64 24) #5
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
  %29 = call noalias i8* @malloc(i64 %28) #5
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
  call void @free(i8* %5) #5
  %6 = load %struct.vector*, %struct.vector** %1, align 8
  %7 = bitcast %struct.vector* %6 to i8*
  call void @free(i8* %7) #5
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
  call void @free(i8* %5) #5
  %6 = load %struct.vector*, %struct.vector** %1, align 8
  %7 = bitcast %struct.vector* %6 to i8*
  call void @free(i8* %7) #5
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
  %18 = call noalias i8* @malloc(i64 %17) #5
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
  call void @free(i8* %50) #5
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
  %18 = call noalias i8* @malloc(i64 %17) #5
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
  call void @free(i8* %50) #5
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
  %19 = call noalias i8* @malloc(i64 %18) #5
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
  call void @free(i8* %28) #5
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
  %19 = call noalias i8* @malloc(i64 %18) #5
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
  call void @free(i8* %28) #5
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
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.248, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.memory_init, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.249, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.248, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.allocBlock, i32 0, i32 0)) #15
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
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.250, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.248, i32 0, i32 0), i32 304, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getMemoryFromBlock, i32 0, i32 0)) #15
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
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind readonly }
attributes #17 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{!"MayAlias"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.vectorize.width", i32 1337}
!4 = distinct !{!4, !3}
!5 = !{i32 1426813, i32 1426829, i32 1426865, i32 1426901, i32 1426937}
!6 = !{i32 1427414, i32 1427429, i32 1427463}
!7 = !{i32 1427185, i32 1427200, i32 1427228}
!8 = !{i32 -2145869420, i32 -2145869384, i32 -2145869360}
!9 = !{i32 -2146009986, i32 -2146009950, i32 -2146009926}
!10 = !{i32 11658}
