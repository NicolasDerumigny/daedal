; ModuleID = '../bin/kmeans.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [402 x i8] c"Usage: %s [switches] -i filename\0A       -i filename:     file containing data to be clustered\0A       -b               input file is in binary format\0A       -m max_clusters: maximum number of clusters allowed\0A       -n min_clusters: minimum number of clusters allowed\0A       -z             : don't zscore transform data\0A       -t threshold   : threshold value\0A       -p nproc       : number of threads\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"p:i:m:n:t:bz\00", align 1
@optarg = external global i8*, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Error: max_clusters must be >= min_clusters\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"0600\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Error: no such file (%s)\0A\00", align 1
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
@global_time = external global double, align 8
@.str.20 = private unnamed_addr constant [22 x i8] c"Work item count: %li\0A\00", align 1

; Function Attrs: noreturn nounwind uwtable
define void @usage(i8* %argv0) #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([402 x i8], [402 x i8]* @.str, i64 0, i64 0), i8* %argv0) #8
  tail call void @exit(i32 -1) #9
  unreachable
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #3 {
  %cluster_centres = alloca float**, align 8
  %best_nclusters = alloca i32, align 4
  %numAttributes = alloca i32, align 4
  %numObjects = alloca i32, align 4
  store float** null, float*** %cluster_centres, align 8
  %1 = tail call noalias i8* @malloc(i64 1000000) #7
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

.outer10:                                         ; preds = %.outer9, %16
  %nthreads.0.ph11 = phi i32 [ %nthreads.0.ph, %.outer9 ], [ %18, %16 ]
  %threshold.0.ph12 = phi float [ %threshold.0.ph, %.outer9 ], [ %threshold.0.ph18.lcssa286, %16 ]
  %use_zscore_transform.0.ph13 = phi i32 [ %use_zscore_transform.0.ph, %.outer9 ], [ %use_zscore_transform.0.ph24.lcssa282, %16 ]
  %filename.0.ph14 = phi i8* [ %filename.0.ph, %.outer9 ], [ %filename.0.ph29.lcssa277, %16 ]
  %min_nclusters.0.ph15 = phi i32 [ %min_nclusters.0.ph, %.outer9 ], [ %min_nclusters.0.ph33.lcssa271, %16 ]
  %max_nclusters.0.ph16 = phi i32 [ %max_nclusters.0.ph, %.outer9 ], [ %max_nclusters.0.lcssa264, %16 ]
  br label %.outer17

.outer17:                                         ; preds = %.outer10, %6
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

.outer28:                                         ; preds = %.outer23, %4
  %filename.0.ph29 = phi i8* [ %filename.0.ph25, %.outer23 ], [ %5, %4 ]
  %min_nclusters.0.ph30 = phi i32 [ %min_nclusters.0.ph26, %.outer23 ], [ %min_nclusters.0.ph33.lcssa267, %4 ]
  %max_nclusters.0.ph31 = phi i32 [ %max_nclusters.0.ph27, %.outer23 ], [ %max_nclusters.0.lcssa259, %4 ]
  br label %.outer32

.outer32:                                         ; preds = %.outer28, %13
  %min_nclusters.0.ph33 = phi i32 [ %min_nclusters.0.ph30, %.outer28 ], [ %15, %13 ]
  %max_nclusters.0.ph34 = phi i32 [ %max_nclusters.0.ph31, %.outer28 ], [ %max_nclusters.0.lcssa262, %13 ]
  br label %2

; <label>:2                                       ; preds = %.outer32, %10
  %max_nclusters.0 = phi i32 [ %12, %10 ], [ %max_nclusters.0.ph34, %.outer32 ]
  %3 = tail call i32 @getopt(i32 %argc, i8** %argv, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #7
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
  %8 = tail call double @atof(i8* %7) #10
  %9 = fptrunc double %8 to float
  br label %.outer17

; <label>:10                                      ; preds = %2
  %11 = load i8*, i8** @optarg, align 8
  %12 = tail call i32 @atoi(i8* %11) #10
  br label %2

; <label>:13                                      ; preds = %2
  %max_nclusters.0.lcssa262 = phi i32 [ %max_nclusters.0, %2 ]
  %14 = load i8*, i8** @optarg, align 8
  %15 = tail call i32 @atoi(i8* %14) #10
  br label %.outer32

; <label>:16                                      ; preds = %2
  %threshold.0.ph18.lcssa286 = phi float [ %threshold.0.ph18, %2 ]
  %use_zscore_transform.0.ph24.lcssa282 = phi i32 [ %use_zscore_transform.0.ph24, %2 ]
  %filename.0.ph29.lcssa277 = phi i8* [ %filename.0.ph29, %2 ]
  %min_nclusters.0.ph33.lcssa271 = phi i32 [ %min_nclusters.0.ph33, %2 ]
  %max_nclusters.0.lcssa264 = phi i32 [ %max_nclusters.0, %2 ]
  %17 = load i8*, i8** @optarg, align 8
  %18 = tail call i32 @atoi(i8* %17) #10
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
  %31 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %30) #8
  %32 = load i8*, i8** %argv, align 8
  tail call void @usage(i8* %32)
  unreachable

; <label>:33                                      ; preds = %27
  store i32 0, i32* %numAttributes, align 4
  store i32 0, i32* %numObjects, align 4
  %34 = icmp eq i32 %isBinaryFile.0.ph.lcssa291, 0
  br i1 %34, label %99, label %35

; <label>:35                                      ; preds = %33
  %36 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %filename.0.ph29.lcssa273, i32 0, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #7
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %filename.0.ph29.lcssa273) #8
  tail call void @exit(i32 1) #9
  unreachable

; <label>:41                                      ; preds = %35
  %42 = bitcast i32* %numObjects to i8*
  %43 = call i64 @read(i32 %36, i8* %42, i64 4) #7
  %44 = bitcast i32* %numAttributes to i8*
  %45 = call i64 @read(i32 %36, i8* %44, i64 4) #7
  %46 = load i32, i32* %numObjects, align 4
  %47 = load i32, i32* %numAttributes, align 4
  %48 = mul nsw i32 %47, %46
  %49 = sext i32 %48 to i64
  %50 = shl nsw i64 %49, 2
  %51 = tail call noalias i8* @malloc(i64 %50) #7
  %52 = bitcast i8* %51 to float*
  %53 = icmp eq i8* %51, null
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %41
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 221, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

; <label>:55                                      ; preds = %41
  %56 = sext i32 %46 to i64
  %57 = shl nsw i64 %56, 3
  %58 = tail call noalias i8* @malloc(i64 %57) #7
  %59 = bitcast i8* %58 to float**
  %60 = icmp eq i8* %58, null
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %55
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 223, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

; <label>:62                                      ; preds = %55
  %63 = tail call noalias i8* @malloc(i64 %50) #7
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

; <label>:72                                      ; preds = %.preheader256, %72
  %73 = phi float* [ %74, %72 ], [ %66, %.preheader256 ]
  %indvars.iv135.prol = phi i64 [ %indvars.iv.next136.prol, %72 ], [ 1, %.preheader256 ]
  %prol.iter254 = phi i64 [ %prol.iter254.sub, %72 ], [ %xtraiter252, %.preheader256 ]
  %74 = getelementptr inbounds float, float* %73, i64 %68
  %75 = getelementptr inbounds float*, float** %59, i64 %indvars.iv135.prol
  store float* %74, float** %75, align 8
  %indvars.iv.next136.prol = add nuw nsw i64 %indvars.iv135.prol, 1
  %prol.iter254.sub = add i64 %prol.iter254, -1
  %prol.iter254.cmp = icmp eq i64 %prol.iter254.sub, 0
  br i1 %prol.iter254.cmp, label %.lr.ph85.split.loopexit, label %72, !llvm.loop !1

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
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 225, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
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

._crit_edge86.loopexit:                           ; preds = %.lr.ph85.split, %._crit_edge86.loopexit.unr-lcssa
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %._crit_edge86.loopexit, %.preheader8
  %97 = tail call i64 @read(i32 %36, i8* nonnull %51, i64 %50) #7
  %98 = tail call i32 @close(i32 %36) #7
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
  %106 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %filename.0.ph29.lcssa273) #8
  tail call void @exit(i32 1) #9
  unreachable

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %.backedge
  %107 = phi i32 [ %112, %.backedge ], [ 0, %.lr.ph82.preheader ]
  %108 = tail call i8* @strtok(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #7
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
  %120 = tail call i8* @strtok(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #7
  %121 = icmp eq i8* %120, null
  br i1 %121, label %116, label %.preheader4

.preheader4:                                      ; preds = %119
  %122 = tail call i8* @strtok(i8* null, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #7
  %123 = icmp eq i8* %122, null
  br i1 %123, label %.loopexit5, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %.preheader4
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %.lr.ph81
  %124 = phi i32 [ %125, %.lr.ph81 ], [ 0, %.lr.ph81.preheader ]
  %125 = add nsw i32 %124, 1
  %126 = tail call i8* @strtok(i8* null, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #7
  %127 = icmp eq i8* %126, null
  br i1 %127, label %..loopexit5_crit_edge, label %.lr.ph81

..loopexit5_crit_edge:                            ; preds = %.lr.ph81
  %.lcssa = phi i32 [ %125, %.lr.ph81 ]
  store i32 %.lcssa, i32* %numAttributes, align 4
  br label %.loopexit5

.loopexit5.loopexit:                              ; preds = %116
  br label %.loopexit5

.loopexit5:                                       ; preds = %.loopexit5.loopexit, %.preheader4, %..loopexit5_crit_edge
  %128 = phi i32 [ 0, %.preheader4 ], [ %.lcssa, %..loopexit5_crit_edge ], [ 0, %.loopexit5.loopexit ]
  %129 = mul nsw i32 %128, %115
  %130 = sext i32 %129 to i64
  %131 = shl nsw i64 %130, 2
  %132 = tail call noalias i8* @malloc(i64 %131) #7
  %133 = bitcast i8* %132 to float*
  %134 = icmp eq i8* %132, null
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %.loopexit5
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 255, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

; <label>:136                                     ; preds = %.loopexit5
  %137 = sext i32 %115 to i64
  %138 = shl nsw i64 %137, 3
  %139 = tail call noalias i8* @malloc(i64 %138) #7
  %140 = bitcast i8* %139 to float**
  %141 = icmp eq i8* %139, null
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %136
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 257, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

; <label>:143                                     ; preds = %136
  %144 = tail call noalias i8* @malloc(i64 %131) #7
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

; <label>:153                                     ; preds = %.preheader, %153
  %154 = phi float* [ %155, %153 ], [ %147, %.preheader ]
  %indvars.iv133.prol = phi i64 [ %indvars.iv.next134.prol, %153 ], [ 1, %.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %153 ], [ %xtraiter, %.preheader ]
  %155 = getelementptr inbounds float, float* %154, i64 %149
  %156 = getelementptr inbounds float*, float** %140, i64 %indvars.iv133.prol
  store float* %155, float** %156, align 8
  %indvars.iv.next134.prol = add nuw nsw i64 %indvars.iv133.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph79.split.loopexit, label %153, !llvm.loop !3

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
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 259, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
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

._crit_edge80.loopexit:                           ; preds = %.lr.ph79.split, %._crit_edge80.loopexit.unr-lcssa
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

.outer.us:                                        ; preds = %.outer.us.preheader, %.outer.us.loopexit
  %i.2.ph.us = phi i32 [ %181, %.outer.us.loopexit ], [ 0, %.outer.us.preheader ]
  br label %191

; <label>:182                                     ; preds = %191
  %183 = tail call i8* @strtok(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #7
  %184 = icmp eq i8* %183, null
  br i1 %184, label %191, label %.lr.ph77.us.preheader

.lr.ph77.us.preheader:                            ; preds = %182
  %185 = sext i32 %i.2.ph.us to i64
  br label %.lr.ph77.us

.lr.ph77.us:                                      ; preds = %.lr.ph77.us, %.lr.ph77.us.preheader
  %indvars.iv130 = phi i64 [ %185, %.lr.ph77.us.preheader ], [ %indvars.iv.next131, %.lr.ph77.us ]
  %j.075.us = phi i32 [ 0, %.lr.ph77.us.preheader ], [ %190, %.lr.ph77.us ]
  %186 = tail call i8* @strtok(i8* null, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #7
  %187 = tail call double @atof(i8* %186) #10
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

.outer.backedge:                                  ; preds = %.outer.backedge.preheader, %.outer.backedge
  %194 = tail call i8* @strtok(i8* %1, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #7
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

; <label>:198                                     ; preds = %._crit_edge86, %.us-lcssa.us
  %199 = phi i32 [ %47, %._crit_edge86 ], [ %128, %.us-lcssa.us ]
  %200 = phi i32 [ %46, %._crit_edge86 ], [ %115, %.us-lcssa.us ]
  %attributes.0 = phi float** [ %59, %._crit_edge86 ], [ %140, %.us-lcssa.us ]
  %buf.0 = phi float* [ %52, %._crit_edge86 ], [ %133, %.us-lcssa.us ]
  %201 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 0) #11, !srcloc !4
  %202 = extractvalue { i32, i32, i32, i32 } %201, 0
  %203 = icmp sgt i32 %202, 6
  br i1 %203, label %205, label %204

; <label>:204                                     ; preds = %198
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 277, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

; <label>:205                                     ; preds = %198
  %206 = tail call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #11, !srcloc !5
  %207 = extractvalue { i32, i32, i32, i32 } %206, 1
  %208 = and i32 %207, 2048
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

; <label>:210                                     ; preds = %205
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 277, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

; <label>:211                                     ; preds = %205
  tail call void (...) @RTM_spinlock_init() #7
  tail call void (i32, ...) bitcast (void (...)* @SimStartup to void (i32, ...)*)(i32 %nthreads.0.ph11.lcssa288) #7
  %212 = sext i32 %nthreads.0.ph11.lcssa288 to i64
  tail call void @thread_startup(i64 %212) #7
  %213 = sext i32 %200 to i64
  %214 = shl nsw i64 %213, 2
  %215 = tail call noalias i8* @malloc(i64 %214) #7
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
  %224 = call i32 @cluster_exec(i32 %nthreads.0.ph11.lcssa288, i32 %200, i32 %199, float** %attributes.0, i32 %use_zscore_transform.0.ph24.lcssa279, i32 %min_nclusters.0.ph33.lcssa266, i32 %max_nclusters.0.lcssa258, float %threshold.0.ph18.lcssa284, i32* nonnull %best_nclusters, float*** nonnull %cluster_centres, i32* %217) #7
  %225 = load i32, i32* %best_nclusters, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %.lr.ph72, label %._crit_edge73

; <label>:227                                     ; preds = %211
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 284, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

.lr.ph72:                                         ; preds = %.preheader1
  %228 = icmp sgt i32 %199, 0
  br i1 %228, label %.lr.ph72.split.us.preheader, label %.lr.ph72.split.preheader

.lr.ph72.split.preheader:                         ; preds = %.lr.ph72
  br label %.lr.ph72.split

.lr.ph72.split.us.preheader:                      ; preds = %.lr.ph72
  br label %.lr.ph72.split.us

.lr.ph72.split.us:                                ; preds = %.lr.ph72.split.us.preheader, %._crit_edge.us
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
  %putchar.us = call i32 @putchar(i32 10) #7
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %239 = load i32, i32* %best_nclusters, align 4
  %240 = sext i32 %239 to i64
  %241 = icmp slt i64 %indvars.iv.next129, %240
  br i1 %241, label %.lr.ph72.split.us, label %._crit_edge73.loopexit

.lr.ph72.split:                                   ; preds = %.lr.ph72.split.preheader, %.lr.ph72.split
  %i.571 = phi i32 [ %243, %.lr.ph72.split ], [ 0, %.lr.ph72.split.preheader ]
  %242 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %i.571)
  %putchar = call i32 @putchar(i32 10) #7
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
  call void @free(i8* %215) #7
  %248 = bitcast float** %attributes.0 to i8*
  call void @free(i8* %248) #7
  %249 = bitcast float*** %cluster_centres to i8***
  %250 = load i8**, i8*** %249, align 8
  %251 = load i8*, i8** %250, align 8
  call void @free(i8* %251) #7
  %252 = bitcast float*** %cluster_centres to i8**
  %253 = load i8*, i8** %252, align 8
  call void @free(i8* %253) #7
  call void @free(i8* %219) #7
  %254 = call i64 (...) @getWorkItemCount() #7
  %255 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i64 %254)
  %256 = call i32 @fflush(%struct._IO_FILE* null)
  call void (...) @thread_shutdown() #7
  call void (...) @RTM_output_stats() #7
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) #4

declare i32 @open(i8* nocapture readonly, i32, ...) #5

declare i64 @read(i32, i8* nocapture, i64) #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare i32 @close(i32) #5

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

declare void @RTM_spinlock_init(...) #5

declare void @SimStartup(...) #5

declare void @thread_startup(i64) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare i32 @cluster_exec(i32, i32, i32, float**, i32, i32, i32, float, i32*, float***, i32*) #5

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

declare i64 @getWorkItemCount(...) #5

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

declare void @thread_shutdown(...) #5

declare void @RTM_output_stats(...) #5

declare i32 @putchar(i32)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #7

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
!3 = distinct !{!3, !2}
!4 = !{i32 -2145596277, i32 -2145596241, i32 -2145596217}
!5 = !{i32 -2145586231, i32 -2145586195, i32 -2145586171}
