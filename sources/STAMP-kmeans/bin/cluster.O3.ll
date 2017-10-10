; ModuleID = '../bin/cluster.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }

@.str = private unnamed_addr constant [11 x i8] c"membership\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"cluster.c\00", align 1
@__PRETTY_FUNCTION__.cluster_exec = private unnamed_addr constant [89 x i8] c"int cluster_exec(int, int, int, float **, int, int, int, float, int *, float ***, int *)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"randomPtr\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"single_variable\00", align 1
@__PRETTY_FUNCTION__.zscoreTransform = private unnamed_addr constant [41 x i8] c"void zscoreTransform(float **, int, int)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cluster_exec(i32 %nthreads, i32 %numObjects, i32 %numAttributes, float** %attributes, i32 %use_zscore_transform, i32 %min_nclusters, i32 %max_nclusters, float %threshold, i32* nocapture %best_nclusters, float*** nocapture %cluster_centres, i32* nocapture readnone %cluster_assign) #0 {
  %1 = sext i32 %numObjects to i64
  %2 = shl nsw i64 %1, 2
  %3 = tail call noalias i8* @malloc(i64 %2) #4
  %4 = bitcast i8* %3 to i32*
  %5 = icmp eq i8* %3, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 192, i8* nonnull getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__.cluster_exec, i64 0, i64 0)) #5
  unreachable

; <label>:7                                       ; preds = %0
  %8 = tail call %struct.random* (...) @random_alloc() #4
  %9 = icmp eq %struct.random* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 195, i8* nonnull getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__.cluster_exec, i64 0, i64 0)) #5
  unreachable

; <label>:11                                      ; preds = %7
  %12 = icmp eq i32 %use_zscore_transform, 0
  br i1 %12, label %.preheader, label %13

; <label>:13                                      ; preds = %11
  %14 = tail call noalias i8* @calloc(i64 %1, i64 4) #4
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

.preheader.i.prol:                                ; preds = %.preheader.i.prol.preheader, %.preheader.i.prol
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

.lr.ph4.i.us.i:                                   ; preds = %.lr.ph4.i.us.i, %.lr.ph4.i.us.i.preheader.split.split
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

.split.us.preheader.i.us.i.split:                 ; preds = %.split.us.preheader.i.us.i, %56
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

; <label>:78                                      ; preds = %78, %.lr.ph5.us.i.split.split
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

; <label>:91                                      ; preds = %91, %.lr.ph.us.i.split.split
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

.lr.ph4.i.us.i.preheader.split:                   ; preds = %.lr.ph4.i.us.i.preheader, %.lr.ph4.i.us.i.preheader.split.loopexit
  %.lcssa.unr = phi float [ undef, %.lr.ph4.i.us.i.preheader ], [ %.lcssa34, %.lr.ph4.i.us.i.preheader.split.loopexit ]
  %indvars.iv11.i.us.i.unr = phi i64 [ 0, %.lr.ph4.i.us.i.preheader ], [ %indvars.iv.next12.i.us.i.prol.lcssa, %.lr.ph4.i.us.i.preheader.split.loopexit ]
  %.unr = phi float [ 0.000000e+00, %.lr.ph4.i.us.i.preheader ], [ %.lcssa34, %.lr.ph4.i.us.i.preheader.split.loopexit ]
  br i1 %27, label %.split.us.preheader.i.us.i, label %.lr.ph4.i.us.i.preheader.split.split

.lr.ph4.i.us.i.preheader.split.split:             ; preds = %.lr.ph4.i.us.i.preheader.split
  br label %.lr.ph4.i.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge6.us.i
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

.lr.ph.us.i.split:                                ; preds = %.lr.ph.us.i, %.lr.ph.us.i.split.loopexit
  %indvars.iv.i.unr = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i.prol.lcssa, %.lr.ph.us.i.split.loopexit ]
  br i1 %26, label %.lr.ph4.i.us.i.preheader, label %.lr.ph.us.i.split.split

.lr.ph.us.i.split.split:                          ; preds = %.lr.ph.us.i.split
  br label %91

.lr.ph5.us.i.unr-lcssa:                           ; preds = %62
  %.lcssa33 = phi float [ %77, %62 ]
  br label %.lr.ph5.us.i

.lr.ph5.us.i:                                     ; preds = %.split.us.preheader.i.us.i.split, %.lr.ph5.us.i.unr-lcssa
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

.lr.ph5.us.i.split:                               ; preds = %.lr.ph5.us.i, %133
  %indvars.iv18.i.unr = phi i64 [ 0, %.lr.ph5.us.i ], [ 1, %133 ]
  br i1 %29, label %._crit_edge6.us.i, label %.lr.ph5.us.i.split.split

.lr.ph5.us.i.split.split:                         ; preds = %.lr.ph5.us.i.split
  br label %78

; <label>:139                                     ; preds = %13
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 150, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.zscoreTransform, i64 0, i64 0)) #5
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

zscoreTransform.exit.loopexit18:                  ; preds = %.preheader.i.preheader.split, %zscoreTransform.exit.loopexit18.unr-lcssa
  br label %zscoreTransform.exit

zscoreTransform.exit:                             ; preds = %zscoreTransform.exit.loopexit18, %zscoreTransform.exit.loopexit, %.preheader1.i
  tail call void @free(i8* %14) #4
  br label %.preheader

.preheader:                                       ; preds = %11, %zscoreTransform.exit
  %140 = icmp sgt i32 %min_nclusters, %max_nclusters
  br i1 %140, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %141 = bitcast float*** %cluster_centres to i8**
  br label %142

; <label>:142                                     ; preds = %150, %.lr.ph
  %nclusters.03 = phi i32 [ %min_nclusters, %.lr.ph ], [ %151, %150 ]
  tail call void @random_seed(%struct.random* nonnull %8, i64 7) #4
  %143 = tail call float** @normal_exec(i32 %nthreads, float** %attributes, i32 %numAttributes, i32 %numObjects, i32 %nclusters.03, float %threshold, i32* %4, %struct.random* nonnull %8) #4
  %144 = load float**, float*** %cluster_centres, align 8
  %145 = icmp eq float** %144, null
  br i1 %145, label %150, label %146

; <label>:146                                     ; preds = %142
  %147 = bitcast float** %144 to i8**
  %148 = load i8*, i8** %147, align 8
  tail call void @free(i8* %148) #4
  %149 = load i8*, i8** %141, align 8
  tail call void @free(i8* %149) #4
  br label %150

; <label>:150                                     ; preds = %142, %146
  store float** %143, float*** %cluster_centres, align 8
  store i32 %nclusters.03, i32* %best_nclusters, align 4
  %151 = add nsw i32 %nclusters.03, 1
  %152 = icmp slt i32 %nclusters.03, %max_nclusters
  br i1 %152, label %142, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %150
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  tail call void @free(i8* %3) #4
  tail call void @random_free(%struct.random* nonnull %8) #4
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare %struct.random* @random_alloc(...) #3

declare void @random_seed(%struct.random*, i64) #3

declare float** @normal_exec(i32, float**, i32, i32, i32, float, i32*, %struct.random*) #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

declare void @random_free(%struct.random*) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare float @sqrtf(float)

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
!3 = distinct !{!3, !2}
!4 = distinct !{!4, !2}
