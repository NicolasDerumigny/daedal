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
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.args = type { float**, i32, i32, i32, i32*, float**, i32**, float** }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.cpu_set_t = type { [16 x i64] }
%union.pthread_mutexattr_t = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"membership\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"cluster.c\00", align 1
@__PRETTY_FUNCTION__.cluster_exec = private unnamed_addr constant [89 x i8] c"int cluster_exec(int, int, int, float **, int, int, int, float, int *, float ***, int *)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"randomPtr\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"single_variable\00", align 1
@__PRETTY_FUNCTION__.zscoreTransform = private unnamed_addr constant [41 x i8] c"void zscoreTransform(float **, int, int)\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [402 x i8] c"Usage: %s [switches] -i filename\0A       -i filename:     file containing data to be clustered\0A       -b               input file is in binary format\0A       -m max_clusters: maximum number of clusters allowed\0A       -n min_clusters: minimum number of clusters allowed\0A       -z             : don't zscore transform data\0A       -t threshold   : threshold value\0A       -p nproc       : number of threads\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [13 x i8] c"p:i:m:n:t:bz\00", align 1
@optarg = external global i8*, align 8
@.str.2.6 = private unnamed_addr constant [45 x i8] c"Error: max_clusters must be >= min_clusters\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [5 x i8] c"0600\00", align 1
@.str.4.8 = private unnamed_addr constant [26 x i8] c"Error: no such file (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"kmeans.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"attributes[0]\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" ,\09\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"__get_cpuid_max(0, NULL) >= 7 && \22RTM is not present\22\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"!!(b & CPUID_RTM) && \22RTM is not present\22\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"cluster_assign\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Time: %lg seconds\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1
@global_time = global double 0.000000e+00, align 8
@global_i = common global i64 0, align 8
@global_delta = common global float 0.000000e+00, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"clusters\00", align 1
@.str.1.19 = private unnamed_addr constant [9 x i8] c"normal.c\00", align 1
@__PRETTY_FUNCTION__.normal_exec = private unnamed_addr constant [76 x i8] c"float **normal_exec(int, float **, int, int, int, float, int *, random_t *)\00", align 1
@.str.2.20 = private unnamed_addr constant [12 x i8] c"clusters[0]\00", align 1
@.str.3.21 = private unnamed_addr constant [47 x i8] c"alloc_memory && new_centers && new_centers_len\00", align 1
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
@.str.34 = private unnamed_addr constant [11 x i8] c"offset > 0\00", align 1
@.str.1.35 = private unnamed_addr constant [9 x i8] c"thread.c\00", align 1
@__PRETTY_FUNCTION__.init_one_perfcounter = private unnamed_addr constant [46 x i8] c"void init_one_perfcounter(int, unsigned long)\00", align 1
@.str.2.36 = private unnamed_addr constant [8 x i8] c"ret > 0\00", align 1
@.str.3.37 = private unnamed_addr constant [9 x i8] c"offset>0\00", align 1
@__PRETTY_FUNCTION__.read_one_perfcounter = private unnamed_addr constant [47 x i8] c"void read_one_perfcounter(int, unsigned int *)\00", align 1
@M5_inSimulator = external global i32, align 4
@.str.4.46 = private unnamed_addr constant [9 x i8] c"err == 0\00", align 1
@__PRETTY_FUNCTION__.determineNumProcs = private unnamed_addr constant [25 x i8] c"long determineNumProcs()\00", align 1
@global_numThread = internal global i64 1, align 8
@global_doShutdown = internal global i64 0, align 8
@__PRETTY_FUNCTION__.thread_startup = private unnamed_addr constant [26 x i8] c"void thread_startup(long)\00", align 1
@global_barrierPtr = internal global %struct.thread_barrier* null, align 8
@.str.5.49 = private unnamed_addr constant [26 x i8] c"global_barrierPtr == NULL\00", align 1
@.str.11.50 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@__PRETTY_FUNCTION__.thread_barrier_alloc = private unnamed_addr constant [45 x i8] c"thread_barrier_t *thread_barrier_alloc(long)\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"(numThread & (numThread - 1)) == 0\00", align 1
@.str.6.51 = private unnamed_addr constant [18 x i8] c"global_barrierPtr\00", align 1
@global_threadId = internal global i32 0, align 4
@global_threadIds = internal global i64* null, align 8
@.str.7.52 = private unnamed_addr constant [25 x i8] c"global_threadIds == NULL\00", align 1
@.str.8.53 = private unnamed_addr constant [17 x i8] c"global_threadIds\00", align 1
@global_threads = internal global i64* null, align 8
@.str.9.54 = private unnamed_addr constant [23 x i8] c"global_threads == NULL\00", align 1
@.str.10.55 = private unnamed_addr constant [15 x i8] c"global_threads\00", align 1
@global_threadAttr = internal global %union.pthread_attr_t zeroinitializer, align 8
@global_funcPtr = internal global void (i8*)* null, align 8
@global_argPtr = internal global i8* null, align 8
@global_memoryPtr = global %struct.memory* null, align 8
@.str.62 = private unnamed_addr constant [14 x i8] c"numThread > 0\00", align 1
@.str.1.63 = private unnamed_addr constant [9 x i8] c"memory.c\00", align 1
@__PRETTY_FUNCTION__.memory_init = private unnamed_addr constant [39 x i8] c"bool_t memory_init(long, size_t, long)\00", align 1
@.str.2.64 = private unnamed_addr constant [13 x i8] c"capacity > 0\00", align 1
@__PRETTY_FUNCTION__.allocBlock = private unnamed_addr constant [28 x i8] c"block_t *allocBlock(size_t)\00", align 1
@.str.3.65 = private unnamed_addr constant [29 x i8] c"(size + numByte) <= capacity\00", align 1
@__PRETTY_FUNCTION__.getMemoryFromBlock = private unnamed_addr constant [44 x i8] c"void *getMemoryFromBlock(block_t *, size_t)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cluster_exec(i32 %nthreads, i32 %numObjects, i32 %numAttributes, float** %attributes, i32 %use_zscore_transform, i32 %min_nclusters, i32 %max_nclusters, float %threshold, i32* nocapture %best_nclusters, float*** nocapture %cluster_centres, i32* nocapture readnone %cluster_assign) #0 {
  %1 = sext i32 %numObjects to i64
  %2 = shl nsw i64 %1, 2
  %3 = tail call noalias i8* @malloc(i64 %2) #6
  %4 = bitcast i8* %3 to i32*
  %5 = icmp eq i8* %3, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 192, i8* nonnull getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__.cluster_exec, i64 0, i64 0)) #14
  unreachable

; <label>:7                                       ; preds = %0
  %8 = tail call %struct.random* (...) bitcast (%struct.random* ()* @random_alloc to %struct.random* (...)*)() #6
  %9 = icmp eq %struct.random* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 195, i8* nonnull getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__.cluster_exec, i64 0, i64 0)) #14
  unreachable

; <label>:11                                      ; preds = %7
  %12 = icmp eq i32 %use_zscore_transform, 0
  br i1 %12, label %.preheader, label %13

; <label>:13                                      ; preds = %11
  %14 = tail call noalias i8* @calloc(i64 %1, i64 4) #6
  %15 = bitcast i8* %14 to float*
  %16 = icmp eq i8* %14, null
  br i1 %16, label %139, label %.preheader1.i

.preheader1.i:                                    ; preds = %13
  %17 = icmp sgt i32 %numAttributes, 0
  br i1 %17, label %.preheader.lr.ph.i, label %zscoreTransform.exit

.preheader.lr.ph.i:                               ; preds = %.preheader1.i
  %18 = icmp sgt i32 %numObjects, 0
  %19 = sitofp i32 %numObjects to float
  %20 = fdiv float 0.000000e+00, %19
  %21 = sext i32 %numAttributes to i64
  br i1 %18, label %.lr.ph.us.i.preheader, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.i
  %22 = sext i32 %numAttributes to i64
  %23 = add nsw i64 %22, -1
  %xtraiter29 = and i64 %22, 7
  %lcmp.mod30 = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30, label %.preheader.i.preheader.split, label %.preheader.i.prol.preheader

.preheader.i.prol.preheader:                      ; preds = %.preheader.i.preheader
  br label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.prol, %.preheader.i.prol.preheader
  %indvars.iv32.i.prol = phi i64 [ %indvars.iv.next33.i.prol, %.preheader.i.prol ], [ 0, %.preheader.i.prol.preheader ]
  %prol.iter31 = phi i64 [ %prol.iter31.sub, %.preheader.i.prol ], [ %xtraiter29, %.preheader.i.prol.preheader ]
  %sqrtf.i.prol = tail call float @sqrtf(float %20) #1
  %indvars.iv.next33.i.prol = add nuw nsw i64 %indvars.iv32.i.prol, 1
  %prol.iter31.sub = add i64 %prol.iter31, -1
  %prol.iter31.cmp = icmp eq i64 %prol.iter31.sub, 0
  br i1 %prol.iter31.cmp, label %.preheader.i.preheader.split.loopexit, label %.preheader.i.prol, !llvm.loop !1

.preheader.i.preheader.split.loopexit:            ; preds = %.preheader.i.prol
  %indvars.iv.next33.i.prol.lcssa = phi i64 [ %indvars.iv.next33.i.prol, %.preheader.i.prol ]
  br label %.preheader.i.preheader.split

.preheader.i.preheader.split:                     ; preds = %.preheader.i.preheader.split.loopexit, %.preheader.i.preheader
  %indvars.iv32.i.unr = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next33.i.prol.lcssa, %.preheader.i.preheader.split.loopexit ]
  %24 = icmp ult i64 %23, 7
  br i1 %24, label %zscoreTransform.exit.loopexit18, label %.preheader.i.preheader.split.split

.preheader.i.preheader.split.split:               ; preds = %.preheader.i.preheader.split
  br label %.preheader.i

.lr.ph.us.i.preheader:                            ; preds = %.preheader.lr.ph.i
  %25 = add i32 %numObjects, -1
  %xtraiter = and i32 %numObjects, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  %26 = icmp ult i32 %25, 3
  %xtraiter21 = and i32 %numObjects, 7
  %lcmp.mod22 = icmp eq i32 %xtraiter21, 0
  %27 = icmp ult i32 %25, 7
  %xtraiter24 = and i32 %numObjects, 1
  %lcmp.mod25 = icmp eq i32 %xtraiter24, 0
  %28 = icmp eq i32 %25, 0
  %xtraiter27 = and i32 %numObjects, 1
  %lcmp.mod28 = icmp eq i32 %xtraiter27, 0
  %29 = icmp eq i32 %25, 0
  br label %.lr.ph.us.i

.lr.ph4.i.us.i:                                   ; preds = %.lr.ph4.i.us.i.preheader.split.split, %.lr.ph4.i.us.i
  %indvars.iv11.i.us.i = phi i64 [ %indvars.iv11.i.us.i.unr, %.lr.ph4.i.us.i.preheader.split.split ], [ %indvars.iv.next12.i.us.i.7, %.lr.ph4.i.us.i ]
  %30 = phi float [ %.unr, %.lr.ph4.i.us.i.preheader.split.split ], [ %54, %.lr.ph4.i.us.i ]
  %31 = getelementptr inbounds float, float* %15, i64 %indvars.iv11.i.us.i
  %32 = load float, float* %31, align 4
  %33 = fadd float %30, %32
  %indvars.iv.next12.i.us.i = add nuw nsw i64 %indvars.iv11.i.us.i, 1
  %34 = getelementptr inbounds float, float* %15, i64 %indvars.iv.next12.i.us.i
  %35 = load float, float* %34, align 4
  %36 = fadd float %33, %35
  %indvars.iv.next12.i.us.i.1 = add nsw i64 %indvars.iv11.i.us.i, 2
  %37 = getelementptr inbounds float, float* %15, i64 %indvars.iv.next12.i.us.i.1
  %38 = load float, float* %37, align 4
  %39 = fadd float %36, %38
  %indvars.iv.next12.i.us.i.2 = add nsw i64 %indvars.iv11.i.us.i, 3
  %40 = getelementptr inbounds float, float* %15, i64 %indvars.iv.next12.i.us.i.2
  %41 = load float, float* %40, align 4
  %42 = fadd float %39, %41
  %indvars.iv.next12.i.us.i.3 = add nsw i64 %indvars.iv11.i.us.i, 4
  %43 = getelementptr inbounds float, float* %15, i64 %indvars.iv.next12.i.us.i.3
  %44 = load float, float* %43, align 4
  %45 = fadd float %42, %44
  %indvars.iv.next12.i.us.i.4 = add nsw i64 %indvars.iv11.i.us.i, 5
  %46 = getelementptr inbounds float, float* %15, i64 %indvars.iv.next12.i.us.i.4
  %47 = load float, float* %46, align 4
  %48 = fadd float %45, %47
  %indvars.iv.next12.i.us.i.5 = add nsw i64 %indvars.iv11.i.us.i, 6
  %49 = getelementptr inbounds float, float* %15, i64 %indvars.iv.next12.i.us.i.5
  %50 = load float, float* %49, align 4
  %51 = fadd float %48, %50
  %indvars.iv.next12.i.us.i.6 = add nsw i64 %indvars.iv11.i.us.i, 7
  %52 = getelementptr inbounds float, float* %15, i64 %indvars.iv.next12.i.us.i.6
  %53 = load float, float* %52, align 4
  %54 = fadd float %51, %53
  %indvars.iv.next12.i.us.i.7 = add nsw i64 %indvars.iv11.i.us.i, 8
  %lftr.wideiv6.7 = trunc i64 %indvars.iv.next12.i.us.i.7 to i32
  %exitcond7.7 = icmp eq i32 %lftr.wideiv6.7, %numObjects
  br i1 %exitcond7.7, label %.split.us.preheader.i.us.i.unr-lcssa, label %.lr.ph4.i.us.i

.split.us.preheader.i.us.i.unr-lcssa:             ; preds = %.lr.ph4.i.us.i
  %.lcssa32 = phi float [ %54, %.lr.ph4.i.us.i ]
  br label %.split.us.preheader.i.us.i

.split.us.preheader.i.us.i:                       ; preds = %.lr.ph4.i.us.i.preheader.split, %.split.us.preheader.i.us.i.unr-lcssa
  %.lcssa = phi float [ %.lcssa.unr, %.lr.ph4.i.us.i.preheader.split ], [ %.lcssa32, %.split.us.preheader.i.us.i.unr-lcssa ]
  %55 = fdiv float %.lcssa, %19
  br i1 %lcmp.mod25, label %.split.us.preheader.i.us.i.split, label %56

; <label>:56                                      ; preds = %.split.us.preheader.i.us.i
  %57 = load float, float* %15, align 4
  %58 = fsub float %57, %55
  %59 = fpext float %58 to double
  %pow2.i.us.i.prol = fmul double %59, %59
  %60 = fadd double %pow2.i.us.i.prol, 0.000000e+00
  %61 = fptrunc double %60 to float
  br label %.split.us.preheader.i.us.i.split

.split.us.preheader.i.us.i.split:                 ; preds = %56, %.split.us.preheader.i.us.i
  %.lcssa19.unr = phi float [ undef, %.split.us.preheader.i.us.i ], [ %61, %56 ]
  %.unr26 = phi float [ 0.000000e+00, %.split.us.preheader.i.us.i ], [ %61, %56 ]
  %indvars.iv.i.us.i.unr = phi i64 [ 0, %.split.us.preheader.i.us.i ], [ 1, %56 ]
  br i1 %28, label %.lr.ph5.us.i, label %.split.us.preheader.i.us.i.split.split

.split.us.preheader.i.us.i.split.split:           ; preds = %.split.us.preheader.i.us.i.split
  br label %62

; <label>:62                                      ; preds = %62, %.split.us.preheader.i.us.i.split.split
  %63 = phi float [ %.unr26, %.split.us.preheader.i.us.i.split.split ], [ %77, %62 ]
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.i.us.i.unr, %.split.us.preheader.i.us.i.split.split ], [ %indvars.iv.next.i.us.i.1, %62 ]
  %64 = getelementptr inbounds float, float* %15, i64 %indvars.iv.i.us.i
  %65 = load float, float* %64, align 4
  %66 = fsub float %65, %55
  %67 = fpext float %66 to double
  %pow2.i.us.i = fmul double %67, %67
  %68 = fpext float %63 to double
  %69 = fadd double %68, %pow2.i.us.i
  %70 = fptrunc double %69 to float
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1
  %71 = getelementptr inbounds float, float* %15, i64 %indvars.iv.next.i.us.i
  %72 = load float, float* %71, align 4
  %73 = fsub float %72, %55
  %74 = fpext float %73 to double
  %pow2.i.us.i.1 = fmul double %74, %74
  %75 = fpext float %70 to double
  %76 = fadd double %75, %pow2.i.us.i.1
  %77 = fptrunc double %76 to float
  %indvars.iv.next.i.us.i.1 = add nsw i64 %indvars.iv.i.us.i, 2
  %lftr.wideiv8.1 = trunc i64 %indvars.iv.next.i.us.i.1 to i32
  %exitcond9.1 = icmp eq i32 %lftr.wideiv8.1, %numObjects
  br i1 %exitcond9.1, label %.lr.ph5.us.i.unr-lcssa, label %62

._crit_edge6.us.i.unr-lcssa:                      ; preds = %78
  br label %._crit_edge6.us.i

._crit_edge6.us.i:                                ; preds = %.lr.ph5.us.i.split, %._crit_edge6.us.i.unr-lcssa
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next23.i, %21
  br i1 %exitcond12, label %zscoreTransform.exit.loopexit, label %.lr.ph.us.i

; <label>:78                                      ; preds = %.lr.ph5.us.i.split.split, %78
  %indvars.iv18.i = phi i64 [ %indvars.iv18.i.unr, %.lr.ph5.us.i.split.split ], [ %indvars.iv.next19.i.1, %78 ]
  %79 = getelementptr inbounds float*, float** %attributes, i64 %indvars.iv18.i
  %80 = load float*, float** %79, align 8
  %81 = getelementptr inbounds float, float* %80, i64 %indvars.iv22.i
  %82 = load float, float* %81, align 4
  %83 = fsub float %82, %55
  %84 = fdiv float %83, %sqrtf.us.i
  store float %84, float* %81, align 4
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %85 = getelementptr inbounds float*, float** %attributes, i64 %indvars.iv.next19.i
  %86 = load float*, float** %85, align 8
  %87 = getelementptr inbounds float, float* %86, i64 %indvars.iv22.i
  %88 = load float, float* %87, align 4
  %89 = fsub float %88, %55
  %90 = fdiv float %89, %sqrtf.us.i
  store float %90, float* %87, align 4
  %indvars.iv.next19.i.1 = add nsw i64 %indvars.iv18.i, 2
  %lftr.wideiv10.1 = trunc i64 %indvars.iv.next19.i.1 to i32
  %exitcond11.1 = icmp eq i32 %lftr.wideiv10.1, %numObjects
  br i1 %exitcond11.1, label %._crit_edge6.us.i.unr-lcssa, label %78

; <label>:91                                      ; preds = %.lr.ph.us.i.split.split, %91
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %.lr.ph.us.i.split.split ], [ %indvars.iv.next.i.3, %91 ]
  %92 = getelementptr inbounds float*, float** %attributes, i64 %indvars.iv.i
  %93 = load float*, float** %92, align 8
  %94 = getelementptr inbounds float, float* %93, i64 %indvars.iv22.i
  %95 = bitcast float* %94 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds float, float* %15, i64 %indvars.iv.i
  %98 = bitcast float* %97 to i32*
  store i32 %96, i32* %98, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %99 = getelementptr inbounds float*, float** %attributes, i64 %indvars.iv.next.i
  %100 = load float*, float** %99, align 8
  %101 = getelementptr inbounds float, float* %100, i64 %indvars.iv22.i
  %102 = bitcast float* %101 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds float, float* %15, i64 %indvars.iv.next.i
  %105 = bitcast float* %104 to i32*
  store i32 %103, i32* %105, align 4
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %106 = getelementptr inbounds float*, float** %attributes, i64 %indvars.iv.next.i.1
  %107 = load float*, float** %106, align 8
  %108 = getelementptr inbounds float, float* %107, i64 %indvars.iv22.i
  %109 = bitcast float* %108 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds float, float* %15, i64 %indvars.iv.next.i.1
  %112 = bitcast float* %111 to i32*
  store i32 %110, i32* %112, align 4
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3
  %113 = getelementptr inbounds float*, float** %attributes, i64 %indvars.iv.next.i.2
  %114 = load float*, float** %113, align 8
  %115 = getelementptr inbounds float, float* %114, i64 %indvars.iv22.i
  %116 = bitcast float* %115 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds float, float* %15, i64 %indvars.iv.next.i.2
  %119 = bitcast float* %118 to i32*
  store i32 %117, i32* %119, align 4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond.3 = icmp eq i32 %lftr.wideiv.3, %numObjects
  br i1 %exitcond.3, label %.lr.ph4.i.us.i.preheader.unr-lcssa, label %91

.lr.ph4.i.us.i.preheader.unr-lcssa:               ; preds = %91
  br label %.lr.ph4.i.us.i.preheader

.lr.ph4.i.us.i.preheader:                         ; preds = %.lr.ph.us.i.split, %.lr.ph4.i.us.i.preheader.unr-lcssa
  br i1 %lcmp.mod22, label %.lr.ph4.i.us.i.preheader.split, label %.lr.ph4.i.us.i.prol.preheader

.lr.ph4.i.us.i.prol.preheader:                    ; preds = %.lr.ph4.i.us.i.preheader
  br label %.lr.ph4.i.us.i.prol

.lr.ph4.i.us.i.prol:                              ; preds = %.lr.ph4.i.us.i.prol, %.lr.ph4.i.us.i.prol.preheader
  %indvars.iv11.i.us.i.prol = phi i64 [ %indvars.iv.next12.i.us.i.prol, %.lr.ph4.i.us.i.prol ], [ 0, %.lr.ph4.i.us.i.prol.preheader ]
  %120 = phi float [ %123, %.lr.ph4.i.us.i.prol ], [ 0.000000e+00, %.lr.ph4.i.us.i.prol.preheader ]
  %prol.iter23 = phi i32 [ %prol.iter23.sub, %.lr.ph4.i.us.i.prol ], [ %xtraiter21, %.lr.ph4.i.us.i.prol.preheader ]
  %121 = getelementptr inbounds float, float* %15, i64 %indvars.iv11.i.us.i.prol
  %122 = load float, float* %121, align 4
  %123 = fadd float %120, %122
  %indvars.iv.next12.i.us.i.prol = add nuw nsw i64 %indvars.iv11.i.us.i.prol, 1
  %prol.iter23.sub = add i32 %prol.iter23, -1
  %prol.iter23.cmp = icmp eq i32 %prol.iter23.sub, 0
  br i1 %prol.iter23.cmp, label %.lr.ph4.i.us.i.preheader.split.loopexit, label %.lr.ph4.i.us.i.prol, !llvm.loop !3

.lr.ph4.i.us.i.preheader.split.loopexit:          ; preds = %.lr.ph4.i.us.i.prol
  %indvars.iv.next12.i.us.i.prol.lcssa = phi i64 [ %indvars.iv.next12.i.us.i.prol, %.lr.ph4.i.us.i.prol ]
  %.lcssa34 = phi float [ %123, %.lr.ph4.i.us.i.prol ]
  br label %.lr.ph4.i.us.i.preheader.split

.lr.ph4.i.us.i.preheader.split:                   ; preds = %.lr.ph4.i.us.i.preheader.split.loopexit, %.lr.ph4.i.us.i.preheader
  %.lcssa.unr = phi float [ undef, %.lr.ph4.i.us.i.preheader ], [ %.lcssa34, %.lr.ph4.i.us.i.preheader.split.loopexit ]
  %indvars.iv11.i.us.i.unr = phi i64 [ 0, %.lr.ph4.i.us.i.preheader ], [ %indvars.iv.next12.i.us.i.prol.lcssa, %.lr.ph4.i.us.i.preheader.split.loopexit ]
  %.unr = phi float [ 0.000000e+00, %.lr.ph4.i.us.i.preheader ], [ %.lcssa34, %.lr.ph4.i.us.i.preheader.split.loopexit ]
  br i1 %27, label %.split.us.preheader.i.us.i, label %.lr.ph4.i.us.i.preheader.split.split

.lr.ph4.i.us.i.preheader.split.split:             ; preds = %.lr.ph4.i.us.i.preheader.split
  br label %.lr.ph4.i.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge6.us.i, %.lr.ph.us.i.preheader
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i, %._crit_edge6.us.i ], [ 0, %.lr.ph.us.i.preheader ]
  br i1 %lcmp.mod, label %.lr.ph.us.i.split, label %.preheader20

.preheader20:                                     ; preds = %.lr.ph.us.i
  br label %124

; <label>:124                                     ; preds = %124, %.preheader20
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %124 ], [ 0, %.preheader20 ]
  %prol.iter = phi i32 [ %prol.iter.sub, %124 ], [ %xtraiter, %.preheader20 ]
  %125 = getelementptr inbounds float*, float** %attributes, i64 %indvars.iv.i.prol
  %126 = load float*, float** %125, align 8
  %127 = getelementptr inbounds float, float* %126, i64 %indvars.iv22.i
  %128 = bitcast float* %127 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds float, float* %15, i64 %indvars.iv.i.prol
  %131 = bitcast float* %130 to i32*
  store i32 %129, i32* %131, align 4
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph.us.i.split.loopexit, label %124, !llvm.loop !4

.lr.ph.us.i.split.loopexit:                       ; preds = %124
  %indvars.iv.next.i.prol.lcssa = phi i64 [ %indvars.iv.next.i.prol, %124 ]
  br label %.lr.ph.us.i.split

.lr.ph.us.i.split:                                ; preds = %.lr.ph.us.i.split.loopexit, %.lr.ph.us.i
  %indvars.iv.i.unr = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i.prol.lcssa, %.lr.ph.us.i.split.loopexit ]
  br i1 %26, label %.lr.ph4.i.us.i.preheader, label %.lr.ph.us.i.split.split

.lr.ph.us.i.split.split:                          ; preds = %.lr.ph.us.i.split
  br label %91

.lr.ph5.us.i.unr-lcssa:                           ; preds = %62
  %.lcssa33 = phi float [ %77, %62 ]
  br label %.lr.ph5.us.i

.lr.ph5.us.i:                                     ; preds = %.lr.ph5.us.i.unr-lcssa, %.split.us.preheader.i.us.i.split
  %.lcssa19 = phi float [ %.lcssa19.unr, %.split.us.preheader.i.us.i.split ], [ %.lcssa33, %.lr.ph5.us.i.unr-lcssa ]
  %132 = fdiv float %.lcssa19, %19
  %sqrtf.us.i = tail call float @sqrtf(float %132) #1
  br i1 %lcmp.mod28, label %.lr.ph5.us.i.split, label %133

; <label>:133                                     ; preds = %.lr.ph5.us.i
  %134 = load float*, float** %attributes, align 8
  %135 = getelementptr inbounds float, float* %134, i64 %indvars.iv22.i
  %136 = load float, float* %135, align 4
  %137 = fsub float %136, %55
  %138 = fdiv float %137, %sqrtf.us.i
  store float %138, float* %135, align 4
  br label %.lr.ph5.us.i.split

.lr.ph5.us.i.split:                               ; preds = %133, %.lr.ph5.us.i
  %indvars.iv18.i.unr = phi i64 [ 0, %.lr.ph5.us.i ], [ 1, %133 ]
  br i1 %29, label %._crit_edge6.us.i, label %.lr.ph5.us.i.split.split

.lr.ph5.us.i.split.split:                         ; preds = %.lr.ph5.us.i.split
  br label %78

; <label>:139                                     ; preds = %13
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 150, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.zscoreTransform, i64 0, i64 0)) #14
  unreachable

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.split.split
  %indvars.iv32.i = phi i64 [ %indvars.iv32.i.unr, %.preheader.i.preheader.split.split ], [ %indvars.iv.next33.i.7, %.preheader.i ]
  %sqrtf.i = tail call float @sqrtf(float %20) #1
  %sqrtf.i.1 = tail call float @sqrtf(float %20) #1
  %sqrtf.i.2 = tail call float @sqrtf(float %20) #1
  %sqrtf.i.3 = tail call float @sqrtf(float %20) #1
  %sqrtf.i.4 = tail call float @sqrtf(float %20) #1
  %sqrtf.i.5 = tail call float @sqrtf(float %20) #1
  %sqrtf.i.6 = tail call float @sqrtf(float %20) #1
  %sqrtf.i.7 = tail call float @sqrtf(float %20) #1
  %indvars.iv.next33.i.7 = add nsw i64 %indvars.iv32.i, 8
  %exitcond13.7 = icmp eq i64 %indvars.iv.next33.i.7, %21
  br i1 %exitcond13.7, label %zscoreTransform.exit.loopexit18.unr-lcssa, label %.preheader.i

zscoreTransform.exit.loopexit:                    ; preds = %._crit_edge6.us.i
  br label %zscoreTransform.exit

zscoreTransform.exit.loopexit18.unr-lcssa:        ; preds = %.preheader.i
  br label %zscoreTransform.exit.loopexit18

zscoreTransform.exit.loopexit18:                  ; preds = %zscoreTransform.exit.loopexit18.unr-lcssa, %.preheader.i.preheader.split
  br label %zscoreTransform.exit

zscoreTransform.exit:                             ; preds = %zscoreTransform.exit.loopexit18, %zscoreTransform.exit.loopexit, %.preheader1.i
  tail call void @free(i8* %14) #6
  br label %.preheader

.preheader:                                       ; preds = %zscoreTransform.exit, %11
  %140 = icmp sgt i32 %min_nclusters, %max_nclusters
  br i1 %140, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %141 = bitcast float*** %cluster_centres to i8**
  br label %142

; <label>:142                                     ; preds = %150, %.lr.ph
  %nclusters.03 = phi i32 [ %min_nclusters, %.lr.ph ], [ %151, %150 ]
  tail call void @random_seed(%struct.random* nonnull %8, i64 7) #6
  %143 = tail call float** @normal_exec(i32 %nthreads, float** %attributes, i32 %numAttributes, i32 %numObjects, i32 %nclusters.03, float %threshold, i32* %4, %struct.random* nonnull %8) #6
  %144 = load float**, float*** %cluster_centres, align 8
  %145 = icmp eq float** %144, null
  br i1 %145, label %150, label %146

; <label>:146                                     ; preds = %142
  %147 = bitcast float** %144 to i8**
  %148 = load i8*, i8** %147, align 8
  tail call void @free(i8* %148) #6
  %149 = load i8*, i8** %141, align 8
  tail call void @free(i8* %149) #6
  br label %150

; <label>:150                                     ; preds = %146, %142
  store float** %143, float*** %cluster_centres, align 8
  store i32 %nclusters.03, i32* %best_nclusters, align 4
  %151 = add nsw i32 %nclusters.03, 1
  %152 = icmp slt i32 %nclusters.03, %max_nclusters
  br i1 %152, label %142, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %150
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  tail call void @free(i8* %3) #6
  tail call void @random_free(%struct.random* nonnull %8) #6
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare float @sqrtf(float)

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: norecurse nounwind readonly uwtable
define float @common_euclidDist2(float* nocapture readonly %pt1, float* nocapture readonly %pt2, i32 %numdims) #3 {
  %1 = icmp sgt i32 %numdims, 0
  br i1 %1, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  %2 = add i32 %numdims, -1
  %xtraiter = and i32 %numdims, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.preheader.split, label %.lr.ph.prol.preheader

.lr.ph.prol.preheader:                            ; preds = %.lr.ph.preheader
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ 0, %.lr.ph.prol.preheader ]
  %ans.02.prol = phi float [ %9, %.lr.ph.prol ], [ 0.000000e+00, %.lr.ph.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %.lr.ph.prol ], [ %xtraiter, %.lr.ph.prol.preheader ]
  %3 = getelementptr inbounds float, float* %pt1, i64 %indvars.iv.prol
  %4 = load float, float* %3, align 4
  %5 = getelementptr inbounds float, float* %pt2, i64 %indvars.iv.prol
  %6 = load float, float* %5, align 4
  %7 = fsub float %4, %6
  %8 = fmul float %7, %7
  %9 = fadd float %ans.02.prol, %8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph.preheader.split.loopexit, label %.lr.ph.prol, !llvm.loop !5

.lr.ph.preheader.split.loopexit:                  ; preds = %.lr.ph.prol
  %indvars.iv.next.prol.lcssa = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.lcssa4 = phi float [ %9, %.lr.ph.prol ]
  br label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.preheader.split.loopexit, %.lr.ph.preheader
  %.lcssa.unr = phi float [ undef, %.lr.ph.preheader ], [ %.lcssa4, %.lr.ph.preheader.split.loopexit ]
  %indvars.iv.unr = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.prol.lcssa, %.lr.ph.preheader.split.loopexit ]
  %ans.02.unr = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.lcssa4, %.lr.ph.preheader.split.loopexit ]
  %10 = icmp ult i32 %2, 3
  br i1 %10, label %._crit_edge.loopexit, label %.lr.ph.preheader.split.split

.lr.ph.preheader.split.split:                     ; preds = %.lr.ph.preheader.split
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.split.split
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.preheader.split.split ], [ %indvars.iv.next.3, %.lr.ph ]
  %ans.02 = phi float [ %ans.02.unr, %.lr.ph.preheader.split.split ], [ %38, %.lr.ph ]
  %11 = getelementptr inbounds float, float* %pt1, i64 %indvars.iv
  %12 = load float, float* %11, align 4
  %13 = getelementptr inbounds float, float* %pt2, i64 %indvars.iv
  %14 = load float, float* %13, align 4
  %15 = fsub float %12, %14
  %16 = fmul float %15, %15
  %17 = fadd float %ans.02, %16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %18 = getelementptr inbounds float, float* %pt1, i64 %indvars.iv.next
  %19 = load float, float* %18, align 4
  %20 = getelementptr inbounds float, float* %pt2, i64 %indvars.iv.next
  %21 = load float, float* %20, align 4
  %22 = fsub float %19, %21
  %23 = fmul float %22, %22
  %24 = fadd float %17, %23
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %25 = getelementptr inbounds float, float* %pt1, i64 %indvars.iv.next.1
  %26 = load float, float* %25, align 4
  %27 = getelementptr inbounds float, float* %pt2, i64 %indvars.iv.next.1
  %28 = load float, float* %27, align 4
  %29 = fsub float %26, %28
  %30 = fmul float %29, %29
  %31 = fadd float %24, %30
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %32 = getelementptr inbounds float, float* %pt1, i64 %indvars.iv.next.2
  %33 = load float, float* %32, align 4
  %34 = getelementptr inbounds float, float* %pt2, i64 %indvars.iv.next.2
  %35 = load float, float* %34, align 4
  %36 = fsub float %33, %35
  %37 = fmul float %36, %36
  %38 = fadd float %31, %37
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.3 = icmp eq i32 %lftr.wideiv.3, %numdims
  br i1 %exitcond.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %.lcssa3 = phi float [ %38, %.lr.ph ]
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader.split
  %.lcssa = phi float [ %.lcssa.unr, %.lr.ph.preheader.split ], [ %.lcssa3, %._crit_edge.loopexit.unr-lcssa ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %ans.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %.lcssa, %._crit_edge.loopexit ]
  ret float %ans.0.lcssa
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @common_findNearestPoint(float* nocapture readonly %pt, i32 %nfeatures, float** nocapture readonly %pts, i32 %npts) #3 {
  %1 = icmp sgt i32 %npts, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = icmp sgt i32 %nfeatures, 0
  br i1 %2, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %3 = sext i32 %npts to i64
  %4 = add i32 %nfeatures, -1
  %xtraiter = and i32 %nfeatures, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  %5 = icmp ult i32 %4, 3
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %46, %.lr.ph.split.us.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %46 ]
  %index.03.us = phi i32 [ -1, %.lr.ph.split.us.preheader ], [ %index.1.us, %46 ]
  %max_dist.01.us = phi float [ 0x47EFFFFFE0000000, %.lr.ph.split.us.preheader ], [ %max_dist.1.us, %46 ]
  %6 = getelementptr inbounds float*, float** %pts, i64 %indvars.iv
  %7 = load float*, float** %6, align 8
  br i1 %lcmp.mod, label %.lr.ph.split.us.split, label %.lr.ph.i.us.prol.preheader

.lr.ph.i.us.prol.preheader:                       ; preds = %.lr.ph.split.us
  br label %.lr.ph.i.us.prol

.lr.ph.i.us.prol:                                 ; preds = %.lr.ph.i.us.prol, %.lr.ph.i.us.prol.preheader
  %indvars.iv.i.us.prol = phi i64 [ %indvars.iv.next.i.us.prol, %.lr.ph.i.us.prol ], [ 0, %.lr.ph.i.us.prol.preheader ]
  %ans.02.i.us.prol = phi float [ %14, %.lr.ph.i.us.prol ], [ 0.000000e+00, %.lr.ph.i.us.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %.lr.ph.i.us.prol ], [ %xtraiter, %.lr.ph.i.us.prol.preheader ]
  %8 = getelementptr inbounds float, float* %pt, i64 %indvars.iv.i.us.prol
  %9 = load float, float* %8, align 4
  %10 = getelementptr inbounds float, float* %7, i64 %indvars.iv.i.us.prol
  %11 = load float, float* %10, align 4
  %12 = fsub float %9, %11
  %13 = fmul float %12, %12
  %14 = fadd float %ans.02.i.us.prol, %13
  %indvars.iv.next.i.us.prol = add nuw nsw i64 %indvars.iv.i.us.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph.split.us.split.loopexit, label %.lr.ph.i.us.prol, !llvm.loop !6

.lr.ph.split.us.split.loopexit:                   ; preds = %.lr.ph.i.us.prol
  %indvars.iv.next.i.us.prol.lcssa = phi i64 [ %indvars.iv.next.i.us.prol, %.lr.ph.i.us.prol ]
  %.lcssa10 = phi float [ %14, %.lr.ph.i.us.prol ]
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.loopexit, %.lr.ph.split.us
  %.lcssa.unr = phi float [ undef, %.lr.ph.split.us ], [ %.lcssa10, %.lr.ph.split.us.split.loopexit ]
  %indvars.iv.i.us.unr = phi i64 [ 0, %.lr.ph.split.us ], [ %indvars.iv.next.i.us.prol.lcssa, %.lr.ph.split.us.split.loopexit ]
  %ans.02.i.us.unr = phi float [ 0.000000e+00, %.lr.ph.split.us ], [ %.lcssa10, %.lr.ph.split.us.split.loopexit ]
  br i1 %5, label %common_euclidDist2.exit.loopexit.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %.lr.ph.split.us.split.split
  %indvars.iv.i.us = phi i64 [ %indvars.iv.i.us.unr, %.lr.ph.split.us.split.split ], [ %indvars.iv.next.i.us.3, %.lr.ph.i.us ]
  %ans.02.i.us = phi float [ %ans.02.i.us.unr, %.lr.ph.split.us.split.split ], [ %42, %.lr.ph.i.us ]
  %15 = getelementptr inbounds float, float* %pt, i64 %indvars.iv.i.us
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds float, float* %7, i64 %indvars.iv.i.us
  %18 = load float, float* %17, align 4
  %19 = fsub float %16, %18
  %20 = fmul float %19, %19
  %21 = fadd float %ans.02.i.us, %20
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1
  %22 = getelementptr inbounds float, float* %pt, i64 %indvars.iv.next.i.us
  %23 = load float, float* %22, align 4
  %24 = getelementptr inbounds float, float* %7, i64 %indvars.iv.next.i.us
  %25 = load float, float* %24, align 4
  %26 = fsub float %23, %25
  %27 = fmul float %26, %26
  %28 = fadd float %21, %27
  %indvars.iv.next.i.us.1 = add nsw i64 %indvars.iv.i.us, 2
  %29 = getelementptr inbounds float, float* %pt, i64 %indvars.iv.next.i.us.1
  %30 = load float, float* %29, align 4
  %31 = getelementptr inbounds float, float* %7, i64 %indvars.iv.next.i.us.1
  %32 = load float, float* %31, align 4
  %33 = fsub float %30, %32
  %34 = fmul float %33, %33
  %35 = fadd float %28, %34
  %indvars.iv.next.i.us.2 = add nsw i64 %indvars.iv.i.us, 3
  %36 = getelementptr inbounds float, float* %pt, i64 %indvars.iv.next.i.us.2
  %37 = load float, float* %36, align 4
  %38 = getelementptr inbounds float, float* %7, i64 %indvars.iv.next.i.us.2
  %39 = load float, float* %38, align 4
  %40 = fsub float %37, %39
  %41 = fmul float %40, %40
  %42 = fadd float %35, %41
  %indvars.iv.next.i.us.3 = add nsw i64 %indvars.iv.i.us, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.i.us.3 to i32
  %exitcond.3 = icmp eq i32 %lftr.wideiv.3, %nfeatures
  br i1 %exitcond.3, label %common_euclidDist2.exit.loopexit.us.unr-lcssa, label %.lr.ph.i.us

; <label>:43                                      ; preds = %common_euclidDist2.exit.loopexit.us
  %44 = fcmp oeq float %.lcssa, 0.000000e+00
  %45 = trunc i64 %indvars.iv to i32
  br i1 %44, label %._crit_edge.loopexit, label %46

; <label>:46                                      ; preds = %common_euclidDist2.exit.loopexit.us, %43
  %max_dist.1.us = phi float [ %.lcssa, %43 ], [ %max_dist.01.us, %common_euclidDist2.exit.loopexit.us ]
  %index.1.us = phi i32 [ %45, %43 ], [ %index.03.us, %common_euclidDist2.exit.loopexit.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %47 = icmp slt i64 %indvars.iv.next, %3
  br i1 %47, label %.lr.ph.split.us, label %._crit_edge.loopexit

common_euclidDist2.exit.loopexit.us.unr-lcssa:    ; preds = %.lr.ph.i.us
  %.lcssa9 = phi float [ %42, %.lr.ph.i.us ]
  br label %common_euclidDist2.exit.loopexit.us

common_euclidDist2.exit.loopexit.us:              ; preds = %common_euclidDist2.exit.loopexit.us.unr-lcssa, %.lr.ph.split.us.split
  %.lcssa = phi float [ %.lcssa.unr, %.lr.ph.split.us.split ], [ %.lcssa9, %common_euclidDist2.exit.loopexit.us.unr-lcssa ]
  %48 = fdiv float %.lcssa, %max_dist.01.us
  %49 = fcmp olt float %48, 0x3FEFFFEB00000000
  br i1 %49, label %43, label %46

._crit_edge.loopexit:                             ; preds = %46, %43
  %index.2.ph = phi i32 [ %45, %43 ], [ %index.1.us, %46 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph, %0
  %index.2 = phi i32 [ -1, %0 ], [ 0, %.lr.ph ], [ %index.2.ph, %._crit_edge.loopexit ]
  ret i32 %index.2
}

; Function Attrs: noreturn nounwind uwtable
define void @usage(i8* %argv0) #4 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([402 x i8], [402 x i8]* @.str.4, i64 0, i64 0), i8* %argv0) #15
  tail call void @exit(i32 -1) #14
  unreachable
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %cluster_centres = alloca float**, align 8
  %best_nclusters = alloca i32, align 4
  %numAttributes = alloca i32, align 4
  %numObjects = alloca i32, align 4
  store float** null, float*** %cluster_centres, align 8
  %1 = tail call noalias i8* @malloc(i64 1000000) #6
  br label %.outer9

.outer9.loopexit:                                 ; preds = %2
  %nthreads.0.ph11.lcssa289 = phi i32 [ %nthreads.0.ph11, %2 ]
  %threshold.0.ph18.lcssa285 = phi float [ %threshold.0.ph18, %2 ]
  %use_zscore_transform.0.ph24.lcssa280 = phi i32 [ %use_zscore_transform.0.ph24, %2 ]
  %filename.0.ph29.lcssa274 = phi i8* [ %filename.0.ph29, %2 ]
  %min_nclusters.0.ph33.lcssa268 = phi i32 [ %min_nclusters.0.ph33, %2 ]
  %max_nclusters.0.lcssa260 = phi i32 [ %max_nclusters.0, %2 ]
  br label %.outer9

.outer9:                                          ; preds = %.outer9.loopexit, %0
  %isBinaryFile.0.ph = phi i32 [ 0, %0 ], [ 1, %.outer9.loopexit ]
  %nthreads.0.ph = phi i32 [ 1, %0 ], [ %nthreads.0.ph11.lcssa289, %.outer9.loopexit ]
  %threshold.0.ph = phi float [ 0x3F50624DE0000000, %0 ], [ %threshold.0.ph18.lcssa285, %.outer9.loopexit ]
  %use_zscore_transform.0.ph = phi i32 [ 1, %0 ], [ %use_zscore_transform.0.ph24.lcssa280, %.outer9.loopexit ]
  %filename.0.ph = phi i8* [ null, %0 ], [ %filename.0.ph29.lcssa274, %.outer9.loopexit ]
  %min_nclusters.0.ph = phi i32 [ 4, %0 ], [ %min_nclusters.0.ph33.lcssa268, %.outer9.loopexit ]
  %max_nclusters.0.ph = phi i32 [ 13, %0 ], [ %max_nclusters.0.lcssa260, %.outer9.loopexit ]
  br label %.outer10

.outer10:                                         ; preds = %16, %.outer9
  %nthreads.0.ph11 = phi i32 [ %nthreads.0.ph, %.outer9 ], [ %18, %16 ]
  %threshold.0.ph12 = phi float [ %threshold.0.ph, %.outer9 ], [ %threshold.0.ph18.lcssa286, %16 ]
  %use_zscore_transform.0.ph13 = phi i32 [ %use_zscore_transform.0.ph, %.outer9 ], [ %use_zscore_transform.0.ph24.lcssa282, %16 ]
  %filename.0.ph14 = phi i8* [ %filename.0.ph, %.outer9 ], [ %filename.0.ph29.lcssa277, %16 ]
  %min_nclusters.0.ph15 = phi i32 [ %min_nclusters.0.ph, %.outer9 ], [ %min_nclusters.0.ph33.lcssa271, %16 ]
  %max_nclusters.0.ph16 = phi i32 [ %max_nclusters.0.ph, %.outer9 ], [ %max_nclusters.0.lcssa264, %16 ]
  br label %.outer17

.outer17:                                         ; preds = %6, %.outer10
  %threshold.0.ph18 = phi float [ %threshold.0.ph12, %.outer10 ], [ %9, %6 ]
  %use_zscore_transform.0.ph19 = phi i32 [ %use_zscore_transform.0.ph13, %.outer10 ], [ %use_zscore_transform.0.ph24.lcssa281, %6 ]
  %filename.0.ph20 = phi i8* [ %filename.0.ph14, %.outer10 ], [ %filename.0.ph29.lcssa275, %6 ]
  %min_nclusters.0.ph21 = phi i32 [ %min_nclusters.0.ph15, %.outer10 ], [ %min_nclusters.0.ph33.lcssa269, %6 ]
  %max_nclusters.0.ph22 = phi i32 [ %max_nclusters.0.ph16, %.outer10 ], [ %max_nclusters.0.lcssa261, %6 ]
  br label %.outer23

.outer23.loopexit:                                ; preds = %2
  %filename.0.ph29.lcssa276 = phi i8* [ %filename.0.ph29, %2 ]
  %min_nclusters.0.ph33.lcssa270 = phi i32 [ %min_nclusters.0.ph33, %2 ]
  %max_nclusters.0.lcssa263 = phi i32 [ %max_nclusters.0, %2 ]
  br label %.outer23

.outer23:                                         ; preds = %.outer23.loopexit, %.outer17
  %use_zscore_transform.0.ph24 = phi i32 [ %use_zscore_transform.0.ph19, %.outer17 ], [ 0, %.outer23.loopexit ]
  %filename.0.ph25 = phi i8* [ %filename.0.ph20, %.outer17 ], [ %filename.0.ph29.lcssa276, %.outer23.loopexit ]
  %min_nclusters.0.ph26 = phi i32 [ %min_nclusters.0.ph21, %.outer17 ], [ %min_nclusters.0.ph33.lcssa270, %.outer23.loopexit ]
  %max_nclusters.0.ph27 = phi i32 [ %max_nclusters.0.ph22, %.outer17 ], [ %max_nclusters.0.lcssa263, %.outer23.loopexit ]
  br label %.outer28

.outer28:                                         ; preds = %4, %.outer23
  %filename.0.ph29 = phi i8* [ %filename.0.ph25, %.outer23 ], [ %5, %4 ]
  %min_nclusters.0.ph30 = phi i32 [ %min_nclusters.0.ph26, %.outer23 ], [ %min_nclusters.0.ph33.lcssa267, %4 ]
  %max_nclusters.0.ph31 = phi i32 [ %max_nclusters.0.ph27, %.outer23 ], [ %max_nclusters.0.lcssa259, %4 ]
  br label %.outer32

.outer32:                                         ; preds = %13, %.outer28
  %min_nclusters.0.ph33 = phi i32 [ %min_nclusters.0.ph30, %.outer28 ], [ %15, %13 ]
  %max_nclusters.0.ph34 = phi i32 [ %max_nclusters.0.ph31, %.outer28 ], [ %max_nclusters.0.lcssa262, %13 ]
  br label %2

; <label>:2                                       ; preds = %10, %.outer32
  %max_nclusters.0 = phi i32 [ %12, %10 ], [ %max_nclusters.0.ph34, %.outer32 ]
  %3 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.5, i64 0, i64 0)) #6
  switch i32 %3, label %21 [
    i32 -1, label %23
    i32 105, label %4
    i32 98, label %.outer9.loopexit
    i32 116, label %6
    i32 109, label %10
    i32 110, label %13
    i32 122, label %.outer23.loopexit
    i32 112, label %16
    i32 63, label %19
  ]

; <label>:4                                       ; preds = %2
  %min_nclusters.0.ph33.lcssa267 = phi i32 [ %min_nclusters.0.ph33, %2 ]
  %max_nclusters.0.lcssa259 = phi i32 [ %max_nclusters.0, %2 ]
  %5 = load i8*, i8** @optarg, align 8
  br label %.outer28

; <label>:6                                       ; preds = %2
  %use_zscore_transform.0.ph24.lcssa281 = phi i32 [ %use_zscore_transform.0.ph24, %2 ]
  %filename.0.ph29.lcssa275 = phi i8* [ %filename.0.ph29, %2 ]
  %min_nclusters.0.ph33.lcssa269 = phi i32 [ %min_nclusters.0.ph33, %2 ]
  %max_nclusters.0.lcssa261 = phi i32 [ %max_nclusters.0, %2 ]
  %7 = load i8*, i8** @optarg, align 8
  %8 = tail call double @atof(i8* %7) #16
  %9 = fptrunc double %8 to float
  br label %.outer17

; <label>:10                                      ; preds = %2
  %11 = load i8*, i8** @optarg, align 8
  %12 = tail call i32 @atoi(i8* %11) #16
  br label %2

; <label>:13                                      ; preds = %2
  %max_nclusters.0.lcssa262 = phi i32 [ %max_nclusters.0, %2 ]
  %14 = load i8*, i8** @optarg, align 8
  %15 = tail call i32 @atoi(i8* %14) #16
  br label %.outer32

; <label>:16                                      ; preds = %2
  %threshold.0.ph18.lcssa286 = phi float [ %threshold.0.ph18, %2 ]
  %use_zscore_transform.0.ph24.lcssa282 = phi i32 [ %use_zscore_transform.0.ph24, %2 ]
  %filename.0.ph29.lcssa277 = phi i8* [ %filename.0.ph29, %2 ]
  %min_nclusters.0.ph33.lcssa271 = phi i32 [ %min_nclusters.0.ph33, %2 ]
  %max_nclusters.0.lcssa264 = phi i32 [ %max_nclusters.0, %2 ]
  %17 = load i8*, i8** @optarg, align 8
  %18 = tail call i32 @atoi(i8* %17) #16
  br label %.outer10

; <label>:19                                      ; preds = %2
  %20 = load i8*, i8** %argv, align 8
  tail call void @usage(i8* %20)
  unreachable

; <label>:21                                      ; preds = %2
  %22 = load i8*, i8** %argv, align 8
  tail call void @usage(i8* %22)
  unreachable

; <label>:23                                      ; preds = %2
  %isBinaryFile.0.ph.lcssa291 = phi i32 [ %isBinaryFile.0.ph, %2 ]
  %nthreads.0.ph11.lcssa288 = phi i32 [ %nthreads.0.ph11, %2 ]
  %threshold.0.ph18.lcssa284 = phi float [ %threshold.0.ph18, %2 ]
  %use_zscore_transform.0.ph24.lcssa279 = phi i32 [ %use_zscore_transform.0.ph24, %2 ]
  %filename.0.ph29.lcssa273 = phi i8* [ %filename.0.ph29, %2 ]
  %min_nclusters.0.ph33.lcssa266 = phi i32 [ %min_nclusters.0.ph33, %2 ]
  %max_nclusters.0.lcssa258 = phi i32 [ %max_nclusters.0, %2 ]
  %24 = icmp eq i8* %filename.0.ph29.lcssa273, null
  br i1 %24, label %25, label %27

; <label>:25                                      ; preds = %23
  %26 = load i8*, i8** %argv, align 8
  tail call void @usage(i8* %26)
  unreachable

; <label>:27                                      ; preds = %23
  %28 = icmp slt i32 %max_nclusters.0.lcssa258, %min_nclusters.0.ph33.lcssa266
  br i1 %28, label %29, label %33

; <label>:29                                      ; preds = %27
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2.6, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %30) #15
  %32 = load i8*, i8** %argv, align 8
  tail call void @usage(i8* %32)
  unreachable

; <label>:33                                      ; preds = %27
  store i32 0, i32* %numAttributes, align 4
  store i32 0, i32* %numObjects, align 4
  %34 = icmp eq i32 %isBinaryFile.0.ph.lcssa291, 0
  br i1 %34, label %99, label %35

; <label>:35                                      ; preds = %33
  %36 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %filename.0.ph29.lcssa273, i32 0, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.7, i64 0, i64 0)) #6
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4.8, i64 0, i64 0), i8* nonnull %filename.0.ph29.lcssa273) #15
  tail call void @exit(i32 1) #14
  unreachable

; <label>:41                                      ; preds = %35
  %42 = bitcast i32* %numObjects to i8*
  %43 = call i64 @read(i32 %36, i8* %42, i64 4) #6
  %44 = bitcast i32* %numAttributes to i8*
  %45 = call i64 @read(i32 %36, i8* %44, i64 4) #6
  %46 = load i32, i32* %numObjects, align 4
  %47 = load i32, i32* %numAttributes, align 4
  %48 = mul nsw i32 %47, %46
  %49 = sext i32 %48 to i64
  %50 = shl nsw i64 %49, 2
  %51 = tail call noalias i8* @malloc(i64 %50) #6
  %52 = bitcast i8* %51 to float*
  %53 = icmp eq i8* %51, null
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %41
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 221, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:55                                      ; preds = %41
  %56 = sext i32 %46 to i64
  %57 = shl nsw i64 %56, 3
  %58 = tail call noalias i8* @malloc(i64 %57) #6
  %59 = bitcast i8* %58 to float**
  %60 = icmp eq i8* %58, null
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %55
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 223, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:62                                      ; preds = %55
  %63 = tail call noalias i8* @malloc(i64 %50) #6
  %64 = bitcast i8* %58 to i8**
  store i8* %63, i8** %64, align 8
  %65 = icmp eq i8* %63, null
  %66 = bitcast i8* %63 to float*
  br i1 %65, label %77, label %.preheader8

.preheader8:                                      ; preds = %62
  %67 = icmp sgt i32 %46, 1
  br i1 %67, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %.preheader8
  %68 = sext i32 %47 to i64
  %69 = sext i32 %46 to i64
  %70 = add nsw i64 %69, 7
  %71 = add nsw i64 %69, -2
  %xtraiter252 = and i64 %70, 7
  %lcmp.mod253 = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253, label %.lr.ph85.split, label %.preheader256

.preheader256:                                    ; preds = %.lr.ph85
  br label %72

; <label>:72                                      ; preds = %72, %.preheader256
  %73 = phi float* [ %74, %72 ], [ %66, %.preheader256 ]
  %indvars.iv135.prol = phi i64 [ %indvars.iv.next136.prol, %72 ], [ 1, %.preheader256 ]
  %prol.iter254 = phi i64 [ %prol.iter254.sub, %72 ], [ %xtraiter252, %.preheader256 ]
  %74 = getelementptr inbounds float, float* %73, i64 %68
  %75 = getelementptr inbounds float*, float** %59, i64 %indvars.iv135.prol
  store float* %74, float** %75, align 8
  %indvars.iv.next136.prol = add nuw nsw i64 %indvars.iv135.prol, 1
  %prol.iter254.sub = add i64 %prol.iter254, -1
  %prol.iter254.cmp = icmp eq i64 %prol.iter254.sub, 0
  br i1 %prol.iter254.cmp, label %.lr.ph85.split.loopexit, label %72, !llvm.loop !7

.lr.ph85.split.loopexit:                          ; preds = %72
  %indvars.iv.next136.prol.lcssa = phi i64 [ %indvars.iv.next136.prol, %72 ]
  %.lcssa294 = phi float* [ %74, %72 ]
  br label %.lr.ph85.split

.lr.ph85.split:                                   ; preds = %.lr.ph85.split.loopexit, %.lr.ph85
  %.unr255 = phi float* [ %66, %.lr.ph85 ], [ %.lcssa294, %.lr.ph85.split.loopexit ]
  %indvars.iv135.unr = phi i64 [ 1, %.lr.ph85 ], [ %indvars.iv.next136.prol.lcssa, %.lr.ph85.split.loopexit ]
  %76 = icmp ult i64 %71, 7
  br i1 %76, label %._crit_edge86.loopexit, label %.lr.ph85.split.split

.lr.ph85.split.split:                             ; preds = %.lr.ph85.split
  br label %78

; <label>:77                                      ; preds = %62
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 225, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:78                                      ; preds = %78, %.lr.ph85.split.split
  %79 = phi float* [ %.unr255, %.lr.ph85.split.split ], [ %94, %78 ]
  %indvars.iv135 = phi i64 [ %indvars.iv135.unr, %.lr.ph85.split.split ], [ %indvars.iv.next136.7, %78 ]
  %80 = getelementptr inbounds float, float* %79, i64 %68
  %81 = getelementptr inbounds float*, float** %59, i64 %indvars.iv135
  store float* %80, float** %81, align 8
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %82 = getelementptr inbounds float, float* %80, i64 %68
  %83 = getelementptr inbounds float*, float** %59, i64 %indvars.iv.next136
  store float* %82, float** %83, align 8
  %indvars.iv.next136.1 = add nsw i64 %indvars.iv135, 2
  %84 = getelementptr inbounds float, float* %82, i64 %68
  %85 = getelementptr inbounds float*, float** %59, i64 %indvars.iv.next136.1
  store float* %84, float** %85, align 8
  %indvars.iv.next136.2 = add nsw i64 %indvars.iv135, 3
  %86 = getelementptr inbounds float, float* %84, i64 %68
  %87 = getelementptr inbounds float*, float** %59, i64 %indvars.iv.next136.2
  store float* %86, float** %87, align 8
  %indvars.iv.next136.3 = add nsw i64 %indvars.iv135, 4
  %88 = getelementptr inbounds float, float* %86, i64 %68
  %89 = getelementptr inbounds float*, float** %59, i64 %indvars.iv.next136.3
  store float* %88, float** %89, align 8
  %indvars.iv.next136.4 = add nsw i64 %indvars.iv135, 5
  %90 = getelementptr inbounds float, float* %88, i64 %68
  %91 = getelementptr inbounds float*, float** %59, i64 %indvars.iv.next136.4
  store float* %90, float** %91, align 8
  %indvars.iv.next136.5 = add nsw i64 %indvars.iv135, 6
  %92 = getelementptr inbounds float, float* %90, i64 %68
  %93 = getelementptr inbounds float*, float** %59, i64 %indvars.iv.next136.5
  store float* %92, float** %93, align 8
  %indvars.iv.next136.6 = add nsw i64 %indvars.iv135, 7
  %94 = getelementptr inbounds float, float* %92, i64 %68
  %95 = getelementptr inbounds float*, float** %59, i64 %indvars.iv.next136.6
  store float* %94, float** %95, align 8
  %indvars.iv.next136.7 = add nsw i64 %indvars.iv135, 8
  %96 = icmp slt i64 %indvars.iv.next136.7, %56
  br i1 %96, label %78, label %._crit_edge86.loopexit.unr-lcssa

._crit_edge86.loopexit.unr-lcssa:                 ; preds = %78
  br label %._crit_edge86.loopexit

._crit_edge86.loopexit:                           ; preds = %._crit_edge86.loopexit.unr-lcssa, %.lr.ph85.split
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %._crit_edge86.loopexit, %.preheader8
  %97 = tail call i64 @read(i32 %36, i8* nonnull %51, i64 %50) #6
  %98 = tail call i32 @close(i32 %36) #6
  br label %198

; <label>:99                                      ; preds = %33
  %100 = tail call %struct._IO_FILE* @fopen(i8* nonnull %filename.0.ph29.lcssa273, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %101 = icmp eq %struct._IO_FILE* %100, null
  br i1 %101, label %104, label %.preheader7

.preheader7:                                      ; preds = %99
  %102 = tail call i8* @fgets(i8* %1, i32 1000000, %struct._IO_FILE* nonnull %100)
  %103 = icmp eq i8* %102, null
  br i1 %103, label %._crit_edge83, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.preheader7
  br label %.lr.ph82

; <label>:104                                     ; preds = %99
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %106 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4.8, i64 0, i64 0), i8* nonnull %filename.0.ph29.lcssa273) #15
  tail call void @exit(i32 1) #14
  unreachable

.lr.ph82:                                         ; preds = %.backedge, %.lr.ph82.preheader
  %107 = phi i32 [ %112, %.backedge ], [ 0, %.lr.ph82.preheader ]
  %108 = tail call i8* @strtok(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #6
  %109 = icmp eq i8* %108, null
  br i1 %109, label %.backedge, label %110

; <label>:110                                     ; preds = %.lr.ph82
  %111 = add nsw i32 %107, 1
  store i32 %111, i32* %numObjects, align 4
  br label %.backedge

.backedge:                                        ; preds = %110, %.lr.ph82
  %112 = phi i32 [ %111, %110 ], [ %107, %.lr.ph82 ]
  %113 = tail call i8* @fgets(i8* %1, i32 1000000, %struct._IO_FILE* nonnull %100)
  %114 = icmp eq i8* %113, null
  br i1 %114, label %._crit_edge83.loopexit, label %.lr.ph82

._crit_edge83.loopexit:                           ; preds = %.backedge
  %.lcssa257 = phi i32 [ %112, %.backedge ]
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %._crit_edge83.loopexit, %.preheader7
  %115 = phi i32 [ 0, %.preheader7 ], [ %.lcssa257, %._crit_edge83.loopexit ]
  tail call void @rewind(%struct._IO_FILE* nonnull %100)
  br label %116

; <label>:116                                     ; preds = %119, %._crit_edge83
  %117 = tail call i8* @fgets(i8* %1, i32 1000000, %struct._IO_FILE* nonnull %100)
  %118 = icmp eq i8* %117, null
  br i1 %118, label %.loopexit5.loopexit, label %119

; <label>:119                                     ; preds = %116
  %120 = tail call i8* @strtok(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #6
  %121 = icmp eq i8* %120, null
  br i1 %121, label %116, label %.preheader4

.preheader4:                                      ; preds = %119
  %122 = tail call i8* @strtok(i8* null, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #6
  %123 = icmp eq i8* %122, null
  br i1 %123, label %.loopexit5, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %.preheader4
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81, %.lr.ph81.preheader
  %124 = phi i32 [ %125, %.lr.ph81 ], [ 0, %.lr.ph81.preheader ]
  %125 = add nsw i32 %124, 1
  %126 = tail call i8* @strtok(i8* null, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #6
  %127 = icmp eq i8* %126, null
  br i1 %127, label %..loopexit5_crit_edge, label %.lr.ph81

..loopexit5_crit_edge:                            ; preds = %.lr.ph81
  %.lcssa = phi i32 [ %125, %.lr.ph81 ]
  store i32 %.lcssa, i32* %numAttributes, align 4
  br label %.loopexit5

.loopexit5.loopexit:                              ; preds = %116
  br label %.loopexit5

.loopexit5:                                       ; preds = %.loopexit5.loopexit, %..loopexit5_crit_edge, %.preheader4
  %128 = phi i32 [ 0, %.preheader4 ], [ %.lcssa, %..loopexit5_crit_edge ], [ 0, %.loopexit5.loopexit ]
  %129 = mul nsw i32 %128, %115
  %130 = sext i32 %129 to i64
  %131 = shl nsw i64 %130, 2
  %132 = tail call noalias i8* @malloc(i64 %131) #6
  %133 = bitcast i8* %132 to float*
  %134 = icmp eq i8* %132, null
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %.loopexit5
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 255, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:136                                     ; preds = %.loopexit5
  %137 = sext i32 %115 to i64
  %138 = shl nsw i64 %137, 3
  %139 = tail call noalias i8* @malloc(i64 %138) #6
  %140 = bitcast i8* %139 to float**
  %141 = icmp eq i8* %139, null
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %136
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 257, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:143                                     ; preds = %136
  %144 = tail call noalias i8* @malloc(i64 %131) #6
  %145 = bitcast i8* %139 to i8**
  store i8* %144, i8** %145, align 8
  %146 = icmp eq i8* %144, null
  %147 = bitcast i8* %144 to float*
  br i1 %146, label %158, label %.preheader3

.preheader3:                                      ; preds = %143
  %148 = icmp sgt i32 %115, 1
  br i1 %148, label %.lr.ph79, label %._crit_edge80

.lr.ph79:                                         ; preds = %.preheader3
  %149 = sext i32 %128 to i64
  %150 = sext i32 %115 to i64
  %151 = add nsw i64 %150, 7
  %152 = add nsw i64 %150, -2
  %xtraiter = and i64 %151, 7
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph79.split, label %.preheader

.preheader:                                       ; preds = %.lr.ph79
  br label %153

; <label>:153                                     ; preds = %153, %.preheader
  %154 = phi float* [ %155, %153 ], [ %147, %.preheader ]
  %indvars.iv133.prol = phi i64 [ %indvars.iv.next134.prol, %153 ], [ 1, %.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %153 ], [ %xtraiter, %.preheader ]
  %155 = getelementptr inbounds float, float* %154, i64 %149
  %156 = getelementptr inbounds float*, float** %140, i64 %indvars.iv133.prol
  store float* %155, float** %156, align 8
  %indvars.iv.next134.prol = add nuw nsw i64 %indvars.iv133.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph79.split.loopexit, label %153, !llvm.loop !8

.lr.ph79.split.loopexit:                          ; preds = %153
  %indvars.iv.next134.prol.lcssa = phi i64 [ %indvars.iv.next134.prol, %153 ]
  %.lcssa293 = phi float* [ %155, %153 ]
  br label %.lr.ph79.split

.lr.ph79.split:                                   ; preds = %.lr.ph79.split.loopexit, %.lr.ph79
  %.unr = phi float* [ %147, %.lr.ph79 ], [ %.lcssa293, %.lr.ph79.split.loopexit ]
  %indvars.iv133.unr = phi i64 [ 1, %.lr.ph79 ], [ %indvars.iv.next134.prol.lcssa, %.lr.ph79.split.loopexit ]
  %157 = icmp ult i64 %152, 7
  br i1 %157, label %._crit_edge80.loopexit, label %.lr.ph79.split.split

.lr.ph79.split.split:                             ; preds = %.lr.ph79.split
  br label %159

; <label>:158                                     ; preds = %143
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 259, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:159                                     ; preds = %159, %.lr.ph79.split.split
  %160 = phi float* [ %.unr, %.lr.ph79.split.split ], [ %175, %159 ]
  %indvars.iv133 = phi i64 [ %indvars.iv133.unr, %.lr.ph79.split.split ], [ %indvars.iv.next134.7, %159 ]
  %161 = getelementptr inbounds float, float* %160, i64 %149
  %162 = getelementptr inbounds float*, float** %140, i64 %indvars.iv133
  store float* %161, float** %162, align 8
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %163 = getelementptr inbounds float, float* %161, i64 %149
  %164 = getelementptr inbounds float*, float** %140, i64 %indvars.iv.next134
  store float* %163, float** %164, align 8
  %indvars.iv.next134.1 = add nsw i64 %indvars.iv133, 2
  %165 = getelementptr inbounds float, float* %163, i64 %149
  %166 = getelementptr inbounds float*, float** %140, i64 %indvars.iv.next134.1
  store float* %165, float** %166, align 8
  %indvars.iv.next134.2 = add nsw i64 %indvars.iv133, 3
  %167 = getelementptr inbounds float, float* %165, i64 %149
  %168 = getelementptr inbounds float*, float** %140, i64 %indvars.iv.next134.2
  store float* %167, float** %168, align 8
  %indvars.iv.next134.3 = add nsw i64 %indvars.iv133, 4
  %169 = getelementptr inbounds float, float* %167, i64 %149
  %170 = getelementptr inbounds float*, float** %140, i64 %indvars.iv.next134.3
  store float* %169, float** %170, align 8
  %indvars.iv.next134.4 = add nsw i64 %indvars.iv133, 5
  %171 = getelementptr inbounds float, float* %169, i64 %149
  %172 = getelementptr inbounds float*, float** %140, i64 %indvars.iv.next134.4
  store float* %171, float** %172, align 8
  %indvars.iv.next134.5 = add nsw i64 %indvars.iv133, 6
  %173 = getelementptr inbounds float, float* %171, i64 %149
  %174 = getelementptr inbounds float*, float** %140, i64 %indvars.iv.next134.5
  store float* %173, float** %174, align 8
  %indvars.iv.next134.6 = add nsw i64 %indvars.iv133, 7
  %175 = getelementptr inbounds float, float* %173, i64 %149
  %176 = getelementptr inbounds float*, float** %140, i64 %indvars.iv.next134.6
  store float* %175, float** %176, align 8
  %indvars.iv.next134.7 = add nsw i64 %indvars.iv133, 8
  %177 = icmp slt i64 %indvars.iv.next134.7, %137
  br i1 %177, label %159, label %._crit_edge80.loopexit.unr-lcssa

._crit_edge80.loopexit.unr-lcssa:                 ; preds = %159
  br label %._crit_edge80.loopexit

._crit_edge80.loopexit:                           ; preds = %._crit_edge80.loopexit.unr-lcssa, %.lr.ph79.split
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %._crit_edge80.loopexit, %.preheader3
  tail call void @rewind(%struct._IO_FILE* nonnull %100)
  %178 = icmp sgt i32 %128, 0
  br i1 %178, label %.outer.us.preheader, label %.outer.preheader

.outer.us.preheader:                              ; preds = %._crit_edge80
  br label %.outer.us

.outer.preheader:                                 ; preds = %._crit_edge80
  %179 = tail call i8* @fgets(i8* %1, i32 1000000, %struct._IO_FILE* nonnull %100)
  %180 = icmp eq i8* %179, null
  br i1 %180, label %.us-lcssa.us, label %.outer.backedge.preheader

.outer.backedge.preheader:                        ; preds = %.outer.preheader
  br label %.outer.backedge

.outer.us.loopexit:                               ; preds = %.lr.ph77.us
  %181 = add i32 %128, %i.2.ph.us
  br label %.outer.us

.outer.us:                                        ; preds = %.outer.us.loopexit, %.outer.us.preheader
  %i.2.ph.us = phi i32 [ %181, %.outer.us.loopexit ], [ 0, %.outer.us.preheader ]
  br label %191

; <label>:182                                     ; preds = %191
  %183 = tail call i8* @strtok(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #6
  %184 = icmp eq i8* %183, null
  br i1 %184, label %191, label %.lr.ph77.us.preheader

.lr.ph77.us.preheader:                            ; preds = %182
  %185 = sext i32 %i.2.ph.us to i64
  br label %.lr.ph77.us

.lr.ph77.us:                                      ; preds = %.lr.ph77.us, %.lr.ph77.us.preheader
  %indvars.iv130 = phi i64 [ %185, %.lr.ph77.us.preheader ], [ %indvars.iv.next131, %.lr.ph77.us ]
  %j.075.us = phi i32 [ 0, %.lr.ph77.us.preheader ], [ %190, %.lr.ph77.us ]
  %186 = tail call i8* @strtok(i8* null, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #6
  %187 = tail call double @atof(i8* %186) #16
  %188 = fptrunc double %187 to float
  %189 = getelementptr inbounds float, float* %133, i64 %indvars.iv130
  store float %188, float* %189, align 4
  %190 = add nuw nsw i32 %j.075.us, 1
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, 1
  %exitcond132 = icmp eq i32 %190, %128
  br i1 %exitcond132, label %.outer.us.loopexit, label %.lr.ph77.us

; <label>:191                                     ; preds = %182, %.outer.us
  %192 = tail call i8* @fgets(i8* %1, i32 1000000, %struct._IO_FILE* nonnull %100)
  %193 = icmp eq i8* %192, null
  br i1 %193, label %.us-lcssa.us.loopexit, label %182

.outer.backedge:                                  ; preds = %.outer.backedge, %.outer.backedge.preheader
  %194 = tail call i8* @strtok(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #6
  %195 = tail call i8* @fgets(i8* %1, i32 1000000, %struct._IO_FILE* nonnull %100)
  %196 = icmp eq i8* %195, null
  br i1 %196, label %.us-lcssa.us.loopexit215, label %.outer.backedge

.us-lcssa.us.loopexit:                            ; preds = %191
  br label %.us-lcssa.us

.us-lcssa.us.loopexit215:                         ; preds = %.outer.backedge
  br label %.us-lcssa.us

.us-lcssa.us:                                     ; preds = %.us-lcssa.us.loopexit215, %.us-lcssa.us.loopexit, %.outer.preheader
  %197 = tail call i32 @fclose(%struct._IO_FILE* nonnull %100)
  br label %198

; <label>:198                                     ; preds = %.us-lcssa.us, %._crit_edge86
  %199 = phi i32 [ %47, %._crit_edge86 ], [ %128, %.us-lcssa.us ]
  %200 = phi i32 [ %46, %._crit_edge86 ], [ %115, %.us-lcssa.us ]
  %attributes.0 = phi float** [ %59, %._crit_edge86 ], [ %140, %.us-lcssa.us ]
  %buf.0 = phi float* [ %52, %._crit_edge86 ], [ %133, %.us-lcssa.us ]
  %201 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #17, !srcloc !9
  %202 = extractvalue { i32, i32, i32, i32 } %201, 0
  %203 = icmp sgt i32 %202, 6
  br i1 %203, label %205, label %204

; <label>:204                                     ; preds = %198
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 277, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:205                                     ; preds = %198
  %206 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #17, !srcloc !10
  %207 = extractvalue { i32, i32, i32, i32 } %206, 1
  %208 = and i32 %207, 2048
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

; <label>:210                                     ; preds = %205
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 277, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:211                                     ; preds = %205
  tail call void (...) bitcast (void ()* @RTM_spinlock_init to void (...)*)() #6
  tail call void (i32, ...) bitcast (void (...)* @SimStartup to void (i32, ...)*)(i32 %nthreads.0.ph11.lcssa288) #6
  %212 = sext i32 %nthreads.0.ph11.lcssa288 to i64
  tail call void @thread_startup(i64 %212) #6
  %213 = sext i32 %200 to i64
  %214 = shl nsw i64 %213, 2
  %215 = tail call noalias i8* @malloc(i64 %214) #6
  %216 = icmp eq i8* %215, null
  br i1 %216, label %227, label %.preheader1

.preheader1:                                      ; preds = %211
  %217 = bitcast i8* %215 to i32*
  %218 = bitcast float** %attributes.0 to i8**
  %219 = bitcast float* %buf.0 to i8*
  %220 = mul nsw i32 %199, %200
  %221 = sext i32 %220 to i64
  %222 = shl nsw i64 %221, 2
  %223 = load i8*, i8** %218, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %223, i8* %219, i64 %222, i32 4, i1 false)
  store float** null, float*** %cluster_centres, align 8
  %224 = call i32 @cluster_exec(i32 %nthreads.0.ph11.lcssa288, i32 %200, i32 %199, float** %attributes.0, i32 %use_zscore_transform.0.ph24.lcssa279, i32 %min_nclusters.0.ph33.lcssa266, i32 %max_nclusters.0.lcssa258, float %threshold.0.ph18.lcssa284, i32* nonnull %best_nclusters, float*** nonnull %cluster_centres, i32* %217) #6
  %225 = load i32, i32* %best_nclusters, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %.lr.ph72, label %._crit_edge73

; <label>:227                                     ; preds = %211
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 284, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

.lr.ph72:                                         ; preds = %.preheader1
  %228 = icmp sgt i32 %199, 0
  br i1 %228, label %.lr.ph72.split.us.preheader, label %.lr.ph72.split.preheader

.lr.ph72.split.preheader:                         ; preds = %.lr.ph72
  br label %.lr.ph72.split

.lr.ph72.split.us.preheader:                      ; preds = %.lr.ph72
  br label %.lr.ph72.split.us

.lr.ph72.split.us:                                ; preds = %._crit_edge.us, %.lr.ph72.split.us.preheader
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %._crit_edge.us ], [ 0, %.lr.ph72.split.us.preheader ]
  %229 = trunc i64 %indvars.iv128 to i32
  %230 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %229)
  br label %231

; <label>:231                                     ; preds = %231, %.lr.ph72.split.us
  %indvars.iv = phi i64 [ 0, %.lr.ph72.split.us ], [ %indvars.iv.next, %231 ]
  %232 = load float**, float*** %cluster_centres, align 8
  %233 = getelementptr inbounds float*, float** %232, i64 %indvars.iv128
  %234 = load float*, float** %233, align 8
  %235 = getelementptr inbounds float, float* %234, i64 %indvars.iv
  %236 = load float, float* %235, align 4
  %237 = fpext float %236 to double
  %238 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), double %237)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %199
  br i1 %exitcond, label %._crit_edge.us, label %231

._crit_edge.us:                                   ; preds = %231
  %putchar.us = call i32 @putchar(i32 10) #6
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %239 = load i32, i32* %best_nclusters, align 4
  %240 = sext i32 %239 to i64
  %241 = icmp slt i64 %indvars.iv.next129, %240
  br i1 %241, label %.lr.ph72.split.us, label %._crit_edge73.loopexit

.lr.ph72.split:                                   ; preds = %.lr.ph72.split, %.lr.ph72.split.preheader
  %i.571 = phi i32 [ %243, %.lr.ph72.split ], [ 0, %.lr.ph72.split.preheader ]
  %242 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %i.571)
  %putchar = call i32 @putchar(i32 10) #6
  %243 = add nuw nsw i32 %i.571, 1
  %244 = load i32, i32* %best_nclusters, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %.lr.ph72.split, label %._crit_edge73.loopexit214

._crit_edge73.loopexit:                           ; preds = %._crit_edge.us
  br label %._crit_edge73

._crit_edge73.loopexit214:                        ; preds = %.lr.ph72.split
  br label %._crit_edge73

._crit_edge73:                                    ; preds = %._crit_edge73.loopexit214, %._crit_edge73.loopexit, %.preheader1
  %246 = load double, double* @global_time, align 8
  %247 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), double %246)
  call void @free(i8* %215) #6
  %248 = bitcast float** %attributes.0 to i8*
  call void @free(i8* %248) #6
  %249 = bitcast float*** %cluster_centres to i8***
  %250 = load i8**, i8*** %249, align 8
  %251 = load i8*, i8** %250, align 8
  call void @free(i8* %251) #6
  %252 = bitcast float*** %cluster_centres to i8**
  %253 = load i8*, i8** %252, align 8
  call void @free(i8* %253) #6
  call void @free(i8* %219) #6
  %254 = call i64 (...) @getWorkItemCount() #6
  %255 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i64 %254)
  %256 = call i32 @fflush(%struct._IO_FILE* null)
  call void (...) bitcast (void ()* @thread_shutdown to void (...)*)() #6
  call void (...) bitcast (void ()* @RTM_output_stats to void (...)*)() #6
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare double @atof(i8* nocapture) #5

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

declare i32 @open(i8* nocapture readonly, i32, ...) #7

declare i64 @read(i32, i8* nocapture, i64) #7

declare i32 @close(i32) #7

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare void @rewind(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

declare void @SimStartup(...) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

declare i32 @putchar(i32)

declare i64 @getWorkItemCount(...) #7

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind uwtable
define float** @normal_exec(i32 %nthreads, float** %feature, i32 %nfeatures, i32 %npoints, i32 %nclusters, float %threshold, i32* %membership, %struct.random* %randomPtr) #0 {
  %membership66 = bitcast i32* %membership to i8*
  %args = alloca %struct.args, align 8
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %1 = sext i32 %nclusters to i64
  %2 = shl nsw i64 %1, 3
  %3 = tail call noalias i8* @malloc(i64 %2) #6
  %4 = bitcast i8* %3 to float**
  %5 = icmp eq i8* %3, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.19, i64 0, i64 0), i32 228, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i64 0, i64 0)) #14
  unreachable

; <label>:7                                       ; preds = %0
  %8 = mul nsw i32 %nclusters, %nfeatures
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call noalias i8* @malloc(i64 %10) #6
  %12 = bitcast i8* %3 to i8**
  store i8* %11, i8** %12, align 8
  %13 = icmp eq i8* %11, null
  %14 = bitcast i8* %11 to float*
  br i1 %13, label %24, label %.preheader7

.preheader7:                                      ; preds = %7
  %15 = icmp sgt i32 %nclusters, 1
  br i1 %15, label %.lr.ph24, label %.preheader6

.lr.ph24:                                         ; preds = %.preheader7
  %16 = sext i32 %nfeatures to i64
  %17 = add i32 %nclusters, 7
  %18 = add i32 %nclusters, -2
  %xtraiter82 = and i32 %17, 7
  %lcmp.mod83 = icmp eq i32 %xtraiter82, 0
  br i1 %lcmp.mod83, label %.lr.ph24.split, label %.preheader85

.preheader85:                                     ; preds = %.lr.ph24
  br label %19

; <label>:19                                      ; preds = %19, %.preheader85
  %20 = phi float* [ %21, %19 ], [ %14, %.preheader85 ]
  %indvars.iv62.prol = phi i64 [ %indvars.iv.next63.prol, %19 ], [ 1, %.preheader85 ]
  %prol.iter84 = phi i32 [ %prol.iter84.sub, %19 ], [ %xtraiter82, %.preheader85 ]
  %21 = getelementptr inbounds float, float* %20, i64 %16
  %22 = getelementptr inbounds float*, float** %4, i64 %indvars.iv62.prol
  store float* %21, float** %22, align 8
  %indvars.iv.next63.prol = add nuw nsw i64 %indvars.iv62.prol, 1
  %prol.iter84.sub = add i32 %prol.iter84, -1
  %prol.iter84.cmp = icmp eq i32 %prol.iter84.sub, 0
  br i1 %prol.iter84.cmp, label %.lr.ph24.split.loopexit, label %19, !llvm.loop !11

.lr.ph24.split.loopexit:                          ; preds = %19
  %indvars.iv.next63.prol.lcssa = phi i64 [ %indvars.iv.next63.prol, %19 ]
  %.lcssa86 = phi float* [ %21, %19 ]
  br label %.lr.ph24.split

.lr.ph24.split:                                   ; preds = %.lr.ph24.split.loopexit, %.lr.ph24
  %.unr = phi float* [ %14, %.lr.ph24 ], [ %.lcssa86, %.lr.ph24.split.loopexit ]
  %indvars.iv62.unr = phi i64 [ 1, %.lr.ph24 ], [ %indvars.iv.next63.prol.lcssa, %.lr.ph24.split.loopexit ]
  %23 = icmp ult i32 %18, 7
  br i1 %23, label %.preheader6.loopexit, label %.lr.ph24.split.split

.lr.ph24.split.split:                             ; preds = %.lr.ph24.split
  br label %72

; <label>:24                                      ; preds = %7
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.20, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.19, i64 0, i64 0), i32 230, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i64 0, i64 0)) #14
  unreachable

.preheader6.loopexit.unr-lcssa:                   ; preds = %72
  br label %.preheader6.loopexit

.preheader6.loopexit:                             ; preds = %.preheader6.loopexit.unr-lcssa, %.lr.ph24.split
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.loopexit, %.preheader7
  %25 = icmp sgt i32 %nclusters, 0
  br i1 %25, label %.lr.ph22, label %.preheader5

.lr.ph22:                                         ; preds = %.preheader6
  %26 = sext i32 %npoints to i64
  %27 = icmp sgt i32 %nfeatures, 0
  br i1 %27, label %.lr.ph22.split.us.preheader, label %.lr.ph22.split.preheader

.lr.ph22.split.preheader:                         ; preds = %.lr.ph22
  br label %.lr.ph22.split

.lr.ph22.split.us.preheader:                      ; preds = %.lr.ph22
  %28 = add i32 %nfeatures, -1
  %xtraiter79 = and i32 %nfeatures, 3
  %lcmp.mod80 = icmp eq i32 %xtraiter79, 0
  %29 = icmp ult i32 %28, 3
  br label %.lr.ph22.split.us

.lr.ph22.split.us:                                ; preds = %._crit_edge20.us, %.lr.ph22.split.us.preheader
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %._crit_edge20.us ], [ 0, %.lr.ph22.split.us.preheader ]
  %30 = tail call i64 @random_generate(%struct.random* %randomPtr) #6
  %31 = urem i64 %30, %26
  %sext.us = shl i64 %31, 32
  %32 = ashr exact i64 %sext.us, 32
  %33 = getelementptr inbounds float*, float** %feature, i64 %32
  %34 = getelementptr inbounds float*, float** %4, i64 %indvars.iv57
  br i1 %lcmp.mod80, label %.lr.ph22.split.us.split, label %.preheader

.preheader:                                       ; preds = %.lr.ph22.split.us
  br label %35

; <label>:35                                      ; preds = %35, %.preheader
  %indvars.iv53.prol = phi i64 [ %indvars.iv.next54.prol, %35 ], [ 0, %.preheader ]
  %prol.iter81 = phi i32 [ %prol.iter81.sub, %35 ], [ %xtraiter79, %.preheader ]
  %36 = load float*, float** %33, align 8
  %37 = getelementptr inbounds float, float* %36, i64 %indvars.iv53.prol
  %38 = bitcast float* %37 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = load float*, float** %34, align 8
  %41 = getelementptr inbounds float, float* %40, i64 %indvars.iv53.prol
  %42 = bitcast float* %41 to i32*
  store i32 %39, i32* %42, align 4
  %indvars.iv.next54.prol = add nuw nsw i64 %indvars.iv53.prol, 1
  %prol.iter81.sub = add i32 %prol.iter81, -1
  %prol.iter81.cmp = icmp eq i32 %prol.iter81.sub, 0
  br i1 %prol.iter81.cmp, label %.lr.ph22.split.us.split.loopexit, label %35, !llvm.loop !12

.lr.ph22.split.us.split.loopexit:                 ; preds = %35
  %indvars.iv.next54.prol.lcssa = phi i64 [ %indvars.iv.next54.prol, %35 ]
  br label %.lr.ph22.split.us.split

.lr.ph22.split.us.split:                          ; preds = %.lr.ph22.split.us.split.loopexit, %.lr.ph22.split.us
  %indvars.iv53.unr = phi i64 [ 0, %.lr.ph22.split.us ], [ %indvars.iv.next54.prol.lcssa, %.lr.ph22.split.us.split.loopexit ]
  br i1 %29, label %._crit_edge20.us, label %.lr.ph22.split.us.split.split

.lr.ph22.split.us.split.split:                    ; preds = %.lr.ph22.split.us.split
  br label %43

; <label>:43                                      ; preds = %43, %.lr.ph22.split.us.split.split
  %indvars.iv53 = phi i64 [ %indvars.iv53.unr, %.lr.ph22.split.us.split.split ], [ %indvars.iv.next54.3, %43 ]
  %44 = load float*, float** %33, align 8
  %45 = getelementptr inbounds float, float* %44, i64 %indvars.iv53
  %46 = bitcast float* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = load float*, float** %34, align 8
  %49 = getelementptr inbounds float, float* %48, i64 %indvars.iv53
  %50 = bitcast float* %49 to i32*
  store i32 %47, i32* %50, align 4
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %51 = load float*, float** %33, align 8
  %52 = getelementptr inbounds float, float* %51, i64 %indvars.iv.next54
  %53 = bitcast float* %52 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = load float*, float** %34, align 8
  %56 = getelementptr inbounds float, float* %55, i64 %indvars.iv.next54
  %57 = bitcast float* %56 to i32*
  store i32 %54, i32* %57, align 4
  %indvars.iv.next54.1 = add nsw i64 %indvars.iv53, 2
  %58 = load float*, float** %33, align 8
  %59 = getelementptr inbounds float, float* %58, i64 %indvars.iv.next54.1
  %60 = bitcast float* %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = load float*, float** %34, align 8
  %63 = getelementptr inbounds float, float* %62, i64 %indvars.iv.next54.1
  %64 = bitcast float* %63 to i32*
  store i32 %61, i32* %64, align 4
  %indvars.iv.next54.2 = add nsw i64 %indvars.iv53, 3
  %65 = load float*, float** %33, align 8
  %66 = getelementptr inbounds float, float* %65, i64 %indvars.iv.next54.2
  %67 = bitcast float* %66 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = load float*, float** %34, align 8
  %70 = getelementptr inbounds float, float* %69, i64 %indvars.iv.next54.2
  %71 = bitcast float* %70 to i32*
  store i32 %68, i32* %71, align 4
  %indvars.iv.next54.3 = add nsw i64 %indvars.iv53, 4
  %lftr.wideiv55.3 = trunc i64 %indvars.iv.next54.3 to i32
  %exitcond56.3 = icmp eq i32 %lftr.wideiv55.3, %nfeatures
  br i1 %exitcond56.3, label %._crit_edge20.us.unr-lcssa, label %43

._crit_edge20.us.unr-lcssa:                       ; preds = %43
  br label %._crit_edge20.us

._crit_edge20.us:                                 ; preds = %._crit_edge20.us.unr-lcssa, %.lr.ph22.split.us.split
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %lftr.wideiv59 = trunc i64 %indvars.iv.next58 to i32
  %exitcond60 = icmp eq i32 %lftr.wideiv59, %nclusters
  br i1 %exitcond60, label %.preheader5.loopexit, label %.lr.ph22.split.us

; <label>:72                                      ; preds = %72, %.lr.ph24.split.split
  %73 = phi float* [ %.unr, %.lr.ph24.split.split ], [ %88, %72 ]
  %indvars.iv62 = phi i64 [ %indvars.iv62.unr, %.lr.ph24.split.split ], [ %indvars.iv.next63.7, %72 ]
  %74 = getelementptr inbounds float, float* %73, i64 %16
  %75 = getelementptr inbounds float*, float** %4, i64 %indvars.iv62
  store float* %74, float** %75, align 8
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %76 = getelementptr inbounds float, float* %74, i64 %16
  %77 = getelementptr inbounds float*, float** %4, i64 %indvars.iv.next63
  store float* %76, float** %77, align 8
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, 2
  %78 = getelementptr inbounds float, float* %76, i64 %16
  %79 = getelementptr inbounds float*, float** %4, i64 %indvars.iv.next63.1
  store float* %78, float** %79, align 8
  %indvars.iv.next63.2 = add nsw i64 %indvars.iv62, 3
  %80 = getelementptr inbounds float, float* %78, i64 %16
  %81 = getelementptr inbounds float*, float** %4, i64 %indvars.iv.next63.2
  store float* %80, float** %81, align 8
  %indvars.iv.next63.3 = add nsw i64 %indvars.iv62, 4
  %82 = getelementptr inbounds float, float* %80, i64 %16
  %83 = getelementptr inbounds float*, float** %4, i64 %indvars.iv.next63.3
  store float* %82, float** %83, align 8
  %indvars.iv.next63.4 = add nsw i64 %indvars.iv62, 5
  %84 = getelementptr inbounds float, float* %82, i64 %16
  %85 = getelementptr inbounds float*, float** %4, i64 %indvars.iv.next63.4
  store float* %84, float** %85, align 8
  %indvars.iv.next63.5 = add nsw i64 %indvars.iv62, 6
  %86 = getelementptr inbounds float, float* %84, i64 %16
  %87 = getelementptr inbounds float*, float** %4, i64 %indvars.iv.next63.5
  store float* %86, float** %87, align 8
  %indvars.iv.next63.6 = add nsw i64 %indvars.iv62, 7
  %88 = getelementptr inbounds float, float* %86, i64 %16
  %89 = getelementptr inbounds float*, float** %4, i64 %indvars.iv.next63.6
  store float* %88, float** %89, align 8
  %indvars.iv.next63.7 = add nsw i64 %indvars.iv62, 8
  %lftr.wideiv64.7 = trunc i64 %indvars.iv.next63.7 to i32
  %exitcond65.7 = icmp eq i32 %lftr.wideiv64.7, %nclusters
  br i1 %exitcond65.7, label %.preheader6.loopexit.unr-lcssa, label %72

.preheader5.loopexit:                             ; preds = %._crit_edge20.us
  br label %.preheader5

.preheader5.loopexit75:                           ; preds = %.lr.ph22.split
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader5.loopexit75, %.preheader5.loopexit, %.preheader6
  %90 = icmp sgt i32 %npoints, 0
  br i1 %90, label %.lr.ph15.preheader, label %._crit_edge16

.lr.ph15.preheader:                               ; preds = %.preheader5
  %91 = add i32 %npoints, -1
  %92 = zext i32 %91 to i64
  %93 = shl nuw nsw i64 %92, 2
  %94 = add nuw nsw i64 %93, 4
  call void @llvm.memset.p0i8.i64(i8* %membership66, i8 -1, i64 %94, i32 4, i1 false)
  br label %._crit_edge16

.lr.ph22.split:                                   ; preds = %.lr.ph22.split, %.lr.ph22.split.preheader
  %i.121 = phi i32 [ %96, %.lr.ph22.split ], [ 0, %.lr.ph22.split.preheader ]
  %95 = tail call i64 @random_generate(%struct.random* %randomPtr) #6
  %96 = add nuw nsw i32 %i.121, 1
  %exitcond61 = icmp eq i32 %96, %nclusters
  br i1 %exitcond61, label %.preheader5.loopexit75, label %.lr.ph22.split

._crit_edge16:                                    ; preds = %.lr.ph15.preheader, %.preheader5
  %97 = shl i32 %nfeatures, 2
  %98 = add i32 %97, 4
  %99 = or i32 %97, 3
  %100 = srem i32 %99, 32
  %101 = sub nsw i32 31, %100
  %102 = add nsw i32 %98, %101
  %103 = sext i32 %102 to i64
  %104 = tail call noalias i8* @calloc(i64 %1, i64 %103) #6
  %105 = tail call noalias i8* @malloc(i64 %2) #6
  %106 = bitcast i8* %105 to i32**
  %107 = tail call noalias i8* @malloc(i64 %2) #6
  %108 = bitcast i8* %107 to float**
  %109 = icmp ne i8* %104, null
  %110 = icmp ne i8* %107, null
  %or.cond = and i1 %109, %110
  %111 = icmp ne i8* %105, null
  %or.cond3 = and i1 %111, %or.cond
  br i1 %or.cond3, label %.preheader4, label %121

.preheader4:                                      ; preds = %._crit_edge16
  br i1 %25, label %.lr.ph12.preheader, label %._crit_edge13

.lr.ph12.preheader:                               ; preds = %.preheader4
  %112 = add i32 %nclusters, -1
  %xtraiter76 = and i32 %nclusters, 3
  %lcmp.mod77 = icmp eq i32 %xtraiter76, 0
  br i1 %lcmp.mod77, label %.lr.ph12.preheader.split, label %.lr.ph12.prol.preheader

.lr.ph12.prol.preheader:                          ; preds = %.lr.ph12.preheader
  br label %.lr.ph12.prol

.lr.ph12.prol:                                    ; preds = %.lr.ph12.prol, %.lr.ph12.prol.preheader
  %indvars.iv45.prol = phi i64 [ %indvars.iv.next46.prol, %.lr.ph12.prol ], [ 0, %.lr.ph12.prol.preheader ]
  %prol.iter78 = phi i32 [ %prol.iter78.sub, %.lr.ph12.prol ], [ %xtraiter76, %.lr.ph12.prol.preheader ]
  %113 = mul nsw i64 %indvars.iv45.prol, %103
  %114 = getelementptr inbounds i8, i8* %104, i64 %113
  %115 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv45.prol
  %116 = bitcast i32** %115 to i8**
  store i8* %114, i8** %116, align 8
  %117 = getelementptr inbounds i8, i8* %114, i64 4
  %118 = getelementptr inbounds float*, float** %108, i64 %indvars.iv45.prol
  %119 = bitcast float** %118 to i8**
  store i8* %117, i8** %119, align 8
  %indvars.iv.next46.prol = add nuw nsw i64 %indvars.iv45.prol, 1
  %prol.iter78.sub = add i32 %prol.iter78, -1
  %prol.iter78.cmp = icmp eq i32 %prol.iter78.sub, 0
  br i1 %prol.iter78.cmp, label %.lr.ph12.preheader.split.loopexit, label %.lr.ph12.prol, !llvm.loop !13

.lr.ph12.preheader.split.loopexit:                ; preds = %.lr.ph12.prol
  %indvars.iv.next46.prol.lcssa = phi i64 [ %indvars.iv.next46.prol, %.lr.ph12.prol ]
  br label %.lr.ph12.preheader.split

.lr.ph12.preheader.split:                         ; preds = %.lr.ph12.preheader.split.loopexit, %.lr.ph12.preheader
  %indvars.iv45.unr = phi i64 [ 0, %.lr.ph12.preheader ], [ %indvars.iv.next46.prol.lcssa, %.lr.ph12.preheader.split.loopexit ]
  %120 = icmp ult i32 %112, 3
  br i1 %120, label %._crit_edge13.loopexit, label %.lr.ph12.preheader.split.split

.lr.ph12.preheader.split.split:                   ; preds = %.lr.ph12.preheader.split
  br label %.lr.ph12

; <label>:121                                     ; preds = %._crit_edge16
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3.21, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.19, i64 0, i64 0), i32 258, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i64 0, i64 0)) #14
  unreachable

.lr.ph12:                                         ; preds = %.lr.ph12, %.lr.ph12.preheader.split.split
  %indvars.iv45 = phi i64 [ %indvars.iv45.unr, %.lr.ph12.preheader.split.split ], [ %indvars.iv.next46.3, %.lr.ph12 ]
  %122 = mul nsw i64 %indvars.iv45, %103
  %123 = getelementptr inbounds i8, i8* %104, i64 %122
  %124 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv45
  %125 = bitcast i32** %124 to i8**
  store i8* %123, i8** %125, align 8
  %126 = getelementptr inbounds i8, i8* %123, i64 4
  %127 = getelementptr inbounds float*, float** %108, i64 %indvars.iv45
  %128 = bitcast float** %127 to i8**
  store i8* %126, i8** %128, align 8
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %129 = mul nsw i64 %indvars.iv.next46, %103
  %130 = getelementptr inbounds i8, i8* %104, i64 %129
  %131 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv.next46
  %132 = bitcast i32** %131 to i8**
  store i8* %130, i8** %132, align 8
  %133 = getelementptr inbounds i8, i8* %130, i64 4
  %134 = getelementptr inbounds float*, float** %108, i64 %indvars.iv.next46
  %135 = bitcast float** %134 to i8**
  store i8* %133, i8** %135, align 8
  %indvars.iv.next46.1 = add nsw i64 %indvars.iv45, 2
  %136 = mul nsw i64 %indvars.iv.next46.1, %103
  %137 = getelementptr inbounds i8, i8* %104, i64 %136
  %138 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv.next46.1
  %139 = bitcast i32** %138 to i8**
  store i8* %137, i8** %139, align 8
  %140 = getelementptr inbounds i8, i8* %137, i64 4
  %141 = getelementptr inbounds float*, float** %108, i64 %indvars.iv.next46.1
  %142 = bitcast float** %141 to i8**
  store i8* %140, i8** %142, align 8
  %indvars.iv.next46.2 = add nsw i64 %indvars.iv45, 3
  %143 = mul nsw i64 %indvars.iv.next46.2, %103
  %144 = getelementptr inbounds i8, i8* %104, i64 %143
  %145 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv.next46.2
  %146 = bitcast i32** %145 to i8**
  store i8* %144, i8** %146, align 8
  %147 = getelementptr inbounds i8, i8* %144, i64 4
  %148 = getelementptr inbounds float*, float** %108, i64 %indvars.iv.next46.2
  %149 = bitcast float** %148 to i8**
  store i8* %147, i8** %149, align 8
  %indvars.iv.next46.3 = add nsw i64 %indvars.iv45, 4
  %lftr.wideiv47.3 = trunc i64 %indvars.iv.next46.3 to i32
  %exitcond48.3 = icmp eq i32 %lftr.wideiv47.3, %nclusters
  br i1 %exitcond48.3, label %._crit_edge13.loopexit.unr-lcssa, label %.lr.ph12

._crit_edge13.loopexit.unr-lcssa:                 ; preds = %.lr.ph12
  br label %._crit_edge13.loopexit

._crit_edge13.loopexit:                           ; preds = %._crit_edge13.loopexit.unr-lcssa, %.lr.ph12.preheader.split
  br label %._crit_edge13

._crit_edge13:                                    ; preds = %._crit_edge13.loopexit, %.preheader4
  %150 = call i32 @gettimeofday(%struct.timeval* nonnull %start, %struct.timezone* null) #6
  %151 = sitofp i32 %npoints to float
  %152 = getelementptr inbounds %struct.args, %struct.args* %args, i64 0, i32 0
  %153 = getelementptr inbounds %struct.args, %struct.args* %args, i64 0, i32 1
  %154 = getelementptr inbounds %struct.args, %struct.args* %args, i64 0, i32 2
  %155 = getelementptr inbounds %struct.args, %struct.args* %args, i64 0, i32 3
  %156 = getelementptr inbounds %struct.args, %struct.args* %args, i64 0, i32 4
  %157 = getelementptr inbounds %struct.args, %struct.args* %args, i64 0, i32 5
  %158 = bitcast float*** %157 to i8**
  %159 = getelementptr inbounds %struct.args, %struct.args* %args, i64 0, i32 6
  %160 = bitcast i32*** %159 to i8**
  %161 = getelementptr inbounds %struct.args, %struct.args* %args, i64 0, i32 7
  %162 = bitcast float*** %161 to i8**
  %163 = mul nsw i32 %nthreads, 3
  %164 = sext i32 %163 to i64
  %165 = bitcast %struct.args* %args to i8*
  %166 = icmp sgt i32 %nfeatures, 0
  br i1 %25, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %._crit_edge13
  br label %.split

.split.us.preheader:                              ; preds = %._crit_edge13
  %167 = add i32 %nclusters, -1
  %xtraiter = and i32 %nclusters, 7
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  %168 = icmp ult i32 %167, 7
  br label %.split.us

.split.us:                                        ; preds = %172, %.split.us.preheader
  %loop.0.us = phi i32 [ %173, %172 ], [ 0, %.split.us.preheader ]
  store float** %feature, float*** %152, align 8
  store i32 %nfeatures, i32* %153, align 8
  store i32 %npoints, i32* %154, align 4
  store i32 %nclusters, i32* %155, align 8
  store i32* %membership, i32** %156, align 8
  store i8* %3, i8** %158, align 8
  store i8* %105, i8** %160, align 8
  store i8* %107, i8** %162, align 8
  store i64 %164, i64* @global_i, align 8
  store float 0.000000e+00, float* @global_delta, align 4
  call void @thread_start(void (i8*)* nonnull @work, i8* %165) #6
  %169 = load float, float* @global_delta, align 4
  br i1 %166, label %.preheader.us.us.preheader, label %.preheader.us27.preheader

.preheader.us27.preheader:                        ; preds = %.split.us
  br i1 %lcmp.mod, label %.preheader.us27.preheader.split, label %.preheader.us27.prol.preheader

.preheader.us27.prol.preheader:                   ; preds = %.preheader.us27.preheader
  br label %.preheader.us27.prol

.preheader.us27.prol:                             ; preds = %.preheader.us27.prol, %.preheader.us27.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.preheader.us27.prol ], [ 0, %.preheader.us27.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %.preheader.us27.prol ], [ %xtraiter, %.preheader.us27.prol.preheader ]
  %170 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv.prol
  %171 = load i32*, i32** %170, align 8
  store i32 0, i32* %171, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.preheader.us27.preheader.split.loopexit, label %.preheader.us27.prol, !llvm.loop !14

.preheader.us27.preheader.split.loopexit:         ; preds = %.preheader.us27.prol
  %indvars.iv.next.prol.lcssa = phi i64 [ %indvars.iv.next.prol, %.preheader.us27.prol ]
  br label %.preheader.us27.preheader.split

.preheader.us27.preheader.split:                  ; preds = %.preheader.us27.preheader.split.loopexit, %.preheader.us27.preheader
  %indvars.iv.unr = phi i64 [ 0, %.preheader.us27.preheader ], [ %indvars.iv.next.prol.lcssa, %.preheader.us27.preheader.split.loopexit ]
  br i1 %168, label %._crit_edge10.us.loopexit73, label %.preheader.us27.preheader.split.split

.preheader.us27.preheader.split.split:            ; preds = %.preheader.us27.preheader.split
  br label %.preheader.us27

.preheader.us.us.preheader:                       ; preds = %.split.us
  br label %.preheader.us.us

; <label>:172                                     ; preds = %._crit_edge10.us
  %173 = add nuw nsw i32 %loop.0.us, 1
  %174 = icmp slt i32 %loop.0.us, 500
  br i1 %174, label %.split.us, label %.critedge.loopexit

.preheader.us27:                                  ; preds = %.preheader.us27, %.preheader.us27.preheader.split.split
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.preheader.us27.preheader.split.split ], [ %indvars.iv.next.7, %.preheader.us27 ]
  %175 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv
  %176 = load i32*, i32** %175, align 8
  store i32 0, i32* %176, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %177 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv.next
  %178 = load i32*, i32** %177, align 8
  store i32 0, i32* %178, align 4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %179 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv.next.1
  %180 = load i32*, i32** %179, align 8
  store i32 0, i32* %180, align 4
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %181 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv.next.2
  %182 = load i32*, i32** %181, align 8
  store i32 0, i32* %182, align 4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %183 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv.next.3
  %184 = load i32*, i32** %183, align 8
  store i32 0, i32* %184, align 4
  %indvars.iv.next.4 = add nsw i64 %indvars.iv, 5
  %185 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv.next.4
  %186 = load i32*, i32** %185, align 8
  store i32 0, i32* %186, align 4
  %indvars.iv.next.5 = add nsw i64 %indvars.iv, 6
  %187 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv.next.5
  %188 = load i32*, i32** %187, align 8
  store i32 0, i32* %188, align 4
  %indvars.iv.next.6 = add nsw i64 %indvars.iv, 7
  %189 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv.next.6
  %190 = load i32*, i32** %189, align 8
  store i32 0, i32* %190, align 4
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next.7 to i32
  %exitcond.7 = icmp eq i32 %lftr.wideiv.7, %nclusters
  br i1 %exitcond.7, label %._crit_edge10.us.loopexit73.unr-lcssa, label %.preheader.us27

._crit_edge10.us.loopexit:                        ; preds = %._crit_edge.us.us
  br label %._crit_edge10.us

._crit_edge10.us.loopexit73.unr-lcssa:            ; preds = %.preheader.us27
  br label %._crit_edge10.us.loopexit73

._crit_edge10.us.loopexit73:                      ; preds = %._crit_edge10.us.loopexit73.unr-lcssa, %.preheader.us27.preheader.split
  br label %._crit_edge10.us

._crit_edge10.us:                                 ; preds = %._crit_edge10.us.loopexit73, %._crit_edge10.us.loopexit
  %191 = fdiv float %169, %151
  %192 = fcmp ogt float %191, %threshold
  br i1 %192, label %172, label %.critedge.loopexit

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.us.us.preheader
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %._crit_edge.us.us ], [ 0, %.preheader.us.us.preheader ]
  %193 = getelementptr inbounds i32*, i32** %106, i64 %indvars.iv41
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds float*, float** %108, i64 %indvars.iv41
  %196 = getelementptr inbounds float*, float** %4, i64 %indvars.iv41
  br label %197

._crit_edge.us.us:                                ; preds = %209
  %.lcssa = phi i32* [ %212, %209 ]
  store i32 0, i32* %.lcssa, align 4
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %lftr.wideiv43 = trunc i64 %indvars.iv.next42 to i32
  %exitcond44 = icmp eq i32 %lftr.wideiv43, %nclusters
  br i1 %exitcond44, label %._crit_edge10.us.loopexit, label %.preheader.us.us

; <label>:197                                     ; preds = %209, %.preheader.us.us
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %209 ], [ 0, %.preheader.us.us ]
  %198 = phi i32* [ %212, %209 ], [ %194, %.preheader.us.us ]
  %199 = icmp eq i32* %198, null
  br i1 %199, label %209, label %200

; <label>:200                                     ; preds = %197
  %201 = load float*, float** %195, align 8
  %202 = getelementptr inbounds float, float* %201, i64 %indvars.iv37
  %203 = load float, float* %202, align 4
  %204 = load i32, i32* %198, align 4
  %205 = sitofp i32 %204 to float
  %206 = fdiv float %203, %205
  %207 = load float*, float** %196, align 8
  %208 = getelementptr inbounds float, float* %207, i64 %indvars.iv37
  store float %206, float* %208, align 4
  br label %209

; <label>:209                                     ; preds = %200, %197
  %210 = load float*, float** %195, align 8
  %211 = getelementptr inbounds float, float* %210, i64 %indvars.iv37
  store float 0.000000e+00, float* %211, align 4
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %212 = load i32*, i32** %193, align 8
  %lftr.wideiv39 = trunc i64 %indvars.iv.next38 to i32
  %exitcond40 = icmp eq i32 %lftr.wideiv39, %nfeatures
  br i1 %exitcond40, label %._crit_edge.us.us, label %197

.split:                                           ; preds = %216, %.split.preheader
  %loop.0 = phi i32 [ %217, %216 ], [ 0, %.split.preheader ]
  store float** %feature, float*** %152, align 8
  store i32 %nfeatures, i32* %153, align 8
  store i32 %npoints, i32* %154, align 4
  store i32 %nclusters, i32* %155, align 8
  store i32* %membership, i32** %156, align 8
  store i8* %3, i8** %158, align 8
  store i8* %105, i8** %160, align 8
  store i8* %107, i8** %162, align 8
  store i64 %164, i64* @global_i, align 8
  store float 0.000000e+00, float* @global_delta, align 4
  call void @thread_start(void (i8*)* nonnull @work, i8* %165) #6
  %213 = load float, float* @global_delta, align 4
  %214 = fdiv float %213, %151
  %215 = fcmp ogt float %214, %threshold
  br i1 %215, label %216, label %.critedge.loopexit74

; <label>:216                                     ; preds = %.split
  %217 = add nuw nsw i32 %loop.0, 1
  %218 = icmp slt i32 %loop.0, 500
  br i1 %218, label %.split, label %.critedge.loopexit74

.critedge.loopexit:                               ; preds = %._crit_edge10.us, %172
  br label %.critedge

.critedge.loopexit74:                             ; preds = %216, %.split
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit74, %.critedge.loopexit
  %219 = call i32 @gettimeofday(%struct.timeval* nonnull %stop, %struct.timezone* null) #6
  %220 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = sitofp i64 %221 to double
  %223 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = sitofp i64 %224 to double
  %226 = fdiv double %225, 1.000000e+06
  %227 = fadd double %222, %226
  %228 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = sitofp i64 %229 to double
  %231 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = sitofp i64 %232 to double
  %234 = fdiv double %233, 1.000000e+06
  %235 = fadd double %230, %234
  %236 = fsub double %227, %235
  %237 = load double, double* @global_time, align 8
  %238 = fadd double %237, %236
  store double %238, double* @global_time, align 8
  call void @free(i8* %104) #6
  call void @free(i8* %107) #6
  call void @free(i8* %105) #6
  ret float** %4
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #8

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @work(i8* nocapture readonly %argPtr) #0 {
  %1 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #6
  %5 = bitcast i8* %argPtr to float***
  %6 = load float**, float*** %5, align 8
  %7 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %17 = bitcast i8* %16 to i32**
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i8, i8* %argPtr, i64 32
  %20 = bitcast i8* %19 to float***
  %21 = load float**, float*** %20, align 8
  %22 = getelementptr inbounds i8, i8* %argPtr, i64 40
  %23 = bitcast i8* %22 to i32***
  %24 = load i32**, i32*** %23, align 8
  %25 = getelementptr inbounds i8, i8* %argPtr, i64 48
  %26 = bitcast i8* %25 to float***
  %27 = load float**, float*** %26, align 8
  %28 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %29 = trunc i64 %28 to i32
  %30 = mul nsw i32 %29, 3
  %31 = icmp slt i32 %30, %12
  br i1 %31, label %.lr.ph23, label %._crit_edge24

.lr.ph23:                                         ; preds = %0
  %32 = icmp sgt i32 %10, 0
  %33 = trunc i64 %9 to i32
  %xtraiter = and i32 %33, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  %34 = icmp eq i32 %33, 1
  br label %35

; <label>:35                                      ; preds = %.backedge, %.lr.ph23
  %delta.021 = phi float [ 0.000000e+00, %.lr.ph23 ], [ %delta.1.lcssa, %.backedge ]
  %start.020 = phi i32 [ %30, %.lr.ph23 ], [ %146, %.backedge ]
  %36 = add nsw i32 %start.020, 3
  %37 = icmp slt i32 %36, %12
  %38 = select i1 %37, i32 %36, i32 %12
  %39 = icmp slt i32 %start.020, %38
  br i1 %39, label %.lr.ph16, label %._crit_edge17

.lr.ph16:                                         ; preds = %35
  %40 = sext i32 %start.020 to i64
  %41 = sext i32 %38 to i64
  br i1 %32, label %.lr.ph16.split.us.preheader, label %.lr.ph16.split.preheader

.lr.ph16.split.preheader:                         ; preds = %.lr.ph16
  br label %.lr.ph16.split

.lr.ph16.split.us.preheader:                      ; preds = %.lr.ph16
  br label %.lr.ph16.split.us

.lr.ph16.split.us:                                ; preds = %76, %.lr.ph16.split.us.preheader
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %76 ], [ %40, %.lr.ph16.split.us.preheader ]
  %delta.114.us = phi float [ %delta.1..us, %76 ], [ %delta.021, %.lr.ph16.split.us.preheader ]
  %42 = getelementptr inbounds float*, float** %6, i64 %indvars.iv37
  %43 = load float*, float** %42, align 8
  %44 = tail call i32 @common_findNearestPoint(float* %43, i32 %10, float** %21, i32 %15) #6
  %45 = getelementptr inbounds i32, i32* %18, i64 %indvars.iv37
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, %44
  %48 = fadd float %delta.114.us, 1.000000e+00
  %delta.1..us = select i1 %47, float %delta.114.us, float %48
  store i32 %44, i32* %45, align 4
  br label %.outer1.us

.lr.ph7.us:                                       ; preds = %.lr.ph7.us.preheader, %.lr.ph7.us
  tail call void @llvm.x86.sse2.pause() #6
  %49 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %._crit_edge8.us.loopexit, label %.lr.ph7.us

._crit_edge8.us.loopexit:                         ; preds = %.lr.ph7.us
  br label %._crit_edge8.us

._crit_edge8.us:                                  ; preds = %.outer1.us, %._crit_edge8.us.loopexit
  %51 = icmp slt i32 %tries.0.ph.us, 2
  br i1 %51, label %61, label %52

; <label>:52                                      ; preds = %._crit_edge8.us
  %53 = add nsw i32 %tries.0.ph.us, -1
  %54 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #6, !srcloc !15
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %.outer1.us

; <label>:57                                      ; preds = %52
  %tries.0.ph.us.lcssa62 = phi i32 [ %tries.0.ph.us, %52 ]
  %58 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %.lr.ph11.us, label %60

; <label>:60                                      ; preds = %57
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !16
  br label %.lr.ph11.us

; <label>:61                                      ; preds = %._crit_edge8.us
  %tries.0.ph.us.lcssa = phi i32 [ %tries.0.ph.us, %._crit_edge8.us ]
  tail call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #6
  br label %.lr.ph11.us

.lr.ph11.us:                                      ; preds = %61, %60, %57
  %tries.0.ph.us63 = phi i32 [ %tries.0.ph.us.lcssa, %61 ], [ %tries.0.ph.us.lcssa62, %60 ], [ %tries.0.ph.us.lcssa62, %57 ]
  %62 = sext i32 %44 to i64
  %63 = getelementptr inbounds i32*, i32** %24, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = getelementptr inbounds float*, float** %27, i64 %62
  br i1 %lcmp.mod, label %.lr.ph11.us.split, label %68

; <label>:68                                      ; preds = %.lr.ph11.us
  %69 = load float*, float** %67, align 8
  %70 = load float, float* %69, align 4
  %71 = load float*, float** %42, align 8
  %72 = load float, float* %71, align 4
  %73 = fadd float %70, %72
  store float %73, float* %69, align 4
  br label %.lr.ph11.us.split

.lr.ph11.us.split:                                ; preds = %68, %.lr.ph11.us
  %indvars.iv35.unr = phi i64 [ 0, %.lr.ph11.us ], [ 1, %68 ]
  br i1 %34, label %._crit_edge12.us, label %.lr.ph11.us.split.split

.lr.ph11.us.split.split:                          ; preds = %.lr.ph11.us.split
  br label %78

; <label>:74                                      ; preds = %._crit_edge12.us
  tail call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #6
  br label %76

; <label>:75                                      ; preds = %._crit_edge12.us
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #6, !srcloc !17
  br label %76

; <label>:76                                      ; preds = %75, %74
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, 1
  %77 = icmp slt i64 %indvars.iv.next38, %41
  br i1 %77, label %.lr.ph16.split.us, label %._crit_edge17.loopexit

; <label>:78                                      ; preds = %78, %.lr.ph11.us.split.split
  %indvars.iv35 = phi i64 [ %indvars.iv35.unr, %.lr.ph11.us.split.split ], [ %indvars.iv.next36.1, %78 ]
  %79 = load float*, float** %67, align 8
  %80 = getelementptr inbounds float, float* %79, i64 %indvars.iv35
  %81 = load float, float* %80, align 4
  %82 = load float*, float** %42, align 8
  %83 = getelementptr inbounds float, float* %82, i64 %indvars.iv35
  %84 = load float, float* %83, align 4
  %85 = fadd float %81, %84
  store float %85, float* %80, align 4
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %86 = load float*, float** %67, align 8
  %87 = getelementptr inbounds float, float* %86, i64 %indvars.iv.next36
  %88 = load float, float* %87, align 4
  %89 = load float*, float** %42, align 8
  %90 = getelementptr inbounds float, float* %89, i64 %indvars.iv.next36
  %91 = load float, float* %90, align 4
  %92 = fadd float %88, %91
  store float %92, float* %87, align 4
  %indvars.iv.next36.1 = add nsw i64 %indvars.iv35, 2
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next36.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv.1, %10
  br i1 %exitcond.1, label %._crit_edge12.us.unr-lcssa, label %78, !llvm.loop !18

.outer1.us:                                       ; preds = %52, %.lr.ph16.split.us
  %tries.0.ph.us = phi i32 [ %53, %52 ], [ 9, %.lr.ph16.split.us ]
  %93 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %._crit_edge8.us, label %.lr.ph7.us.preheader

.lr.ph7.us.preheader:                             ; preds = %.outer1.us
  br label %.lr.ph7.us

._crit_edge12.us.unr-lcssa:                       ; preds = %78
  br label %._crit_edge12.us

._crit_edge12.us:                                 ; preds = %._crit_edge12.us.unr-lcssa, %.lr.ph11.us.split
  %95 = icmp sgt i32 %tries.0.ph.us63, 1
  br i1 %95, label %75, label %74

.lr.ph16.split:                                   ; preds = %127, %.lr.ph16.split.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %127 ], [ %40, %.lr.ph16.split.preheader ]
  %delta.114 = phi float [ %delta.1., %127 ], [ %delta.021, %.lr.ph16.split.preheader ]
  %96 = getelementptr inbounds float*, float** %6, i64 %indvars.iv
  %97 = load float*, float** %96, align 8
  %98 = tail call i32 @common_findNearestPoint(float* %97, i32 %10, float** %21, i32 %15) #6
  %99 = getelementptr inbounds i32, i32* %18, i64 %indvars.iv
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, %98
  %102 = fadd float %delta.114, 1.000000e+00
  %delta.1. = select i1 %101, float %delta.114, float %102
  store i32 %98, i32* %99, align 4
  br label %.outer1

.outer1:                                          ; preds = %109, %.lr.ph16.split
  %tries.0.ph = phi i32 [ %110, %109 ], [ 9, %.lr.ph16.split ]
  %103 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %._crit_edge8, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %.outer1
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7, %.lr.ph7.preheader
  tail call void @llvm.x86.sse2.pause() #6
  %105 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %._crit_edge8.loopexit, label %.lr.ph7

._crit_edge8.loopexit:                            ; preds = %.lr.ph7
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %._crit_edge8.loopexit, %.outer1
  %107 = icmp slt i32 %tries.0.ph, 2
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %._crit_edge8
  %tries.0.ph.lcssa = phi i32 [ %tries.0.ph, %._crit_edge8 ]
  tail call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #6
  br label %118

; <label>:109                                     ; preds = %._crit_edge8
  %110 = add nsw i32 %tries.0.ph, -1
  %111 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #6, !srcloc !15
  %112 = trunc i64 %111 to i32
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %.outer1

; <label>:114                                     ; preds = %109
  %tries.0.ph.lcssa60 = phi i32 [ %tries.0.ph, %109 ]
  %115 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %118, label %117

; <label>:117                                     ; preds = %114
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !16
  br label %118

; <label>:118                                     ; preds = %117, %114, %108
  %tries.0.ph61 = phi i32 [ %tries.0.ph.lcssa60, %114 ], [ %tries.0.ph.lcssa60, %117 ], [ %tries.0.ph.lcssa, %108 ]
  %119 = sext i32 %98 to i64
  %120 = getelementptr inbounds i32*, i32** %24, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = icmp sgt i32 %tries.0.ph61, 1
  br i1 %124, label %125, label %126

; <label>:125                                     ; preds = %118
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #6, !srcloc !17
  br label %127

; <label>:126                                     ; preds = %118
  tail call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #6
  br label %127

; <label>:127                                     ; preds = %126, %125
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %128 = icmp slt i64 %indvars.iv.next, %41
  br i1 %128, label %.lr.ph16.split, label %._crit_edge17.loopexit53

._crit_edge17.loopexit:                           ; preds = %76
  %delta.1..us.lcssa = phi float [ %delta.1..us, %76 ]
  br label %._crit_edge17

._crit_edge17.loopexit53:                         ; preds = %127
  %delta.1..lcssa = phi float [ %delta.1., %127 ]
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit53, %._crit_edge17.loopexit, %35
  %delta.1.lcssa = phi float [ %delta.021, %35 ], [ %delta.1..us.lcssa, %._crit_edge17.loopexit ], [ %delta.1..lcssa, %._crit_edge17.loopexit53 ]
  br i1 %37, label %.outer2.preheader, label %._crit_edge24.loopexit

.outer2.preheader:                                ; preds = %._crit_edge17
  br label %.outer2

.outer2:                                          ; preds = %135, %.outer2.preheader
  %tries2.0.ph = phi i32 [ %136, %135 ], [ 9, %.outer2.preheader ]
  %129 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %._crit_edge19, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %.outer2
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18, %.lr.ph18.preheader
  tail call void @llvm.x86.sse2.pause() #6
  %131 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %._crit_edge19.loopexit, label %.lr.ph18

._crit_edge19.loopexit:                           ; preds = %.lr.ph18
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %._crit_edge19.loopexit, %.outer2
  %133 = icmp slt i32 %tries2.0.ph, 2
  br i1 %133, label %134, label %135

; <label>:134                                     ; preds = %._crit_edge19
  %tries2.0.ph.lcssa = phi i32 [ %tries2.0.ph, %._crit_edge19 ]
  tail call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #6
  br label %144

; <label>:135                                     ; preds = %._crit_edge19
  %136 = add nsw i32 %tries2.0.ph, -1
  %137 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #6, !srcloc !15
  %138 = trunc i64 %137 to i32
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %.outer2

; <label>:140                                     ; preds = %135
  %tries2.0.ph.lcssa64 = phi i32 [ %tries2.0.ph, %135 ]
  %141 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %144, label %143

; <label>:143                                     ; preds = %140
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !16
  br label %144

; <label>:144                                     ; preds = %143, %140, %134
  %tries2.0.ph65 = phi i32 [ %tries2.0.ph.lcssa64, %140 ], [ %tries2.0.ph.lcssa64, %143 ], [ %tries2.0.ph.lcssa, %134 ]
  %145 = load i64, i64* @global_i, align 8
  %146 = trunc i64 %145 to i32
  %147 = shl i64 %145, 32
  %sext = add i64 %147, 12884901888
  %148 = ashr exact i64 %sext, 32
  store i64 %148, i64* @global_i, align 8
  %149 = icmp sgt i32 %tries2.0.ph65, 1
  br i1 %149, label %150, label %152

; <label>:150                                     ; preds = %144
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #6, !srcloc !17
  br label %.backedge

.backedge:                                        ; preds = %152, %150
  %151 = icmp slt i32 %146, %12
  br i1 %151, label %35, label %._crit_edge24.loopexit

; <label>:152                                     ; preds = %144
  tail call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #6
  br label %.backedge

._crit_edge24.loopexit:                           ; preds = %.backedge, %._crit_edge17
  %delta.1.lcssa.lcssa = phi float [ %delta.1.lcssa, %._crit_edge17 ], [ %delta.1.lcssa, %.backedge ]
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %._crit_edge24.loopexit, %0
  %delta.3 = phi float [ 0.000000e+00, %0 ], [ %delta.1.lcssa.lcssa, %._crit_edge24.loopexit ]
  br label %.outer

.outer:                                           ; preds = %158, %._crit_edge24
  %tries4.0.ph = phi i32 [ %159, %158 ], [ 9, %._crit_edge24 ]
  %153 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.outer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  tail call void @llvm.x86.sse2.pause() #6
  %155 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.outer
  %157 = icmp slt i32 %tries4.0.ph, 2
  br i1 %157, label %170, label %158

; <label>:158                                     ; preds = %._crit_edge
  %159 = add nsw i32 %tries4.0.ph, -1
  %160 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #6, !srcloc !15
  %161 = trunc i64 %160 to i32
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %.outer

; <label>:163                                     ; preds = %158
  %164 = tail call i64 (...) bitcast (i64 ()* @RTM_fallback_isLocked to i64 (...)*)() #6
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %167, label %166

; <label>:166                                     ; preds = %163
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !16
  br label %167

; <label>:167                                     ; preds = %166, %163
  %168 = load float, float* @global_delta, align 4
  %169 = fadd float %delta.3, %168
  store float %169, float* @global_delta, align 4
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #6, !srcloc !17
  br label %173

; <label>:170                                     ; preds = %._crit_edge
  tail call void (...) bitcast (void ()* @RTM_fallback_lock to void (...)*)() #6
  %171 = load float, float* @global_delta, align 4
  %172 = fadd float %delta.3, %171
  store float %172, float* @global_delta, align 4
  tail call void (...) bitcast (void ()* @RTM_fallback_unlock to void (...)*)() #6
  br label %173

; <label>:173                                     ; preds = %170, %167
  %174 = tail call i64 (...) bitcast (i64 ()* @thread_getId to i64 (...)*)() #6
  %175 = trunc i64 %174 to i32
  %176 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %177 = load i32, i32* %176, align 4
  tail call void @SimRoiEnd(i32 %175, i32 %177) #6
  ret void
}

declare void @SimRoiStart(i32) #7

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #6

declare void @SimRoiEnd(i32, i32) #7

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
define %struct.random* @Prandom_alloc() #9 {
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
define void @random_free(%struct.random* %randomPtr) #9 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @Prandom_free(%struct.random* %randomPtr) #9 {
  %1 = alloca %struct.random*, align 8
  store %struct.random* %randomPtr, %struct.random** %1, align 8
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = bitcast %struct.random* %2 to i8*
  call void @free(i8* %3) #6
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
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.init_one_perfcounter, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 189, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.read_one_perfcounter, i32 0, i32 0)) #14
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
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !20
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
  %2 = call i32 @pthread_getaffinity_np(i64 %1, i64 128, %struct.cpu_set_t* %available_procs) #6
  store i32 %2, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.46, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.determineNumProcs, i32 0, i32 0)) #14
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
  %3 = call i64 @pthread_self() #17
  %4 = call i32 @pthread_getaffinity_np(i64 %3, i64 128, %struct.cpu_set_t* %available_procs) #6
  store i32 %4, i32* %err, align 4
  %5 = load i32, i32* %err, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.46, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 451, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 463, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.51, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 465, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7.52, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8.53, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 486, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9.54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 492, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10.55, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 494, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.thread_startup, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.50, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 570, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #14
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
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.35, i32 0, i32 0), i32 571, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.thread_barrier_alloc, i32 0, i32 0)) #14
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
define void @thread_barrier_free(%struct.thread_barrier* %barrierPtr) #9 {
  %1 = alloca %struct.thread_barrier*, align 8
  store %struct.thread_barrier* %barrierPtr, %struct.thread_barrier** %1, align 8
  %2 = load %struct.thread_barrier*, %struct.thread_barrier** %1, align 8
  %3 = bitcast %struct.thread_barrier* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @thread_getId() #9 {
  %1 = load i32, i32* @global_threadId, align 4
  %2 = call i8* @pthread_getspecific(i32 %1) #6
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
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.63, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.memory_init, i32 0, i32 0)) #14
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
define internal %struct.pool* @allocPool(i64 %initBlockCapacity, i64 %blockGrowthFactor) #9 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.63, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.allocBlock, i32 0, i32 0)) #14
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
  call void @free(i8* %22) #6
  %23 = load %struct.memory*, %struct.memory** @global_memoryPtr, align 8
  %24 = bitcast %struct.memory* %23 to i8*
  call void @free(i8* %24) #6
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
  call void @free(i8* %6) #6
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
  call void @free(i8* %4) #6
  %5 = load %struct.block*, %struct.block** %1, align 8
  %6 = bitcast %struct.block* %5 to i8*
  call void @free(i8* %6) #6
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
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.65, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.63, i32 0, i32 0), i32 304, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getMemoryFromBlock, i32 0, i32 0)) #14
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
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { cold }
attributes #16 = { nounwind readonly }
attributes #17 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
!3 = distinct !{!3, !2}
!4 = distinct !{!4, !2}
!5 = distinct !{!5, !2}
!6 = distinct !{!6, !2}
!7 = distinct !{!7, !2}
!8 = distinct !{!8, !2}
!9 = !{i32 -2145596277, i32 -2145596241, i32 -2145596217}
!10 = !{i32 -2145586231, i32 -2145586195, i32 -2145586171}
!11 = distinct !{!11, !2}
!12 = distinct !{!12, !2}
!13 = distinct !{!13, !2}
!14 = distinct !{!14, !2}
!15 = !{i32 1658281, i32 1658297, i32 1658333, i32 1658369, i32 1658405}
!16 = !{i32 1658882, i32 1658897, i32 1658931}
!17 = !{i32 1658653, i32 1658668, i32 1658696}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.vectorize.width", i32 1337}
!20 = !{i32 11658}
