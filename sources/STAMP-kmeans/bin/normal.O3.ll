; ModuleID = '../bin/normal.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.args = type { float**, i32, i32, i32, i32*, float**, i32**, float** }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@global_time = global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [9 x i8] c"clusters\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"normal.c\00", align 1
@__PRETTY_FUNCTION__.normal_exec = private unnamed_addr constant [76 x i8] c"float **normal_exec(int, float **, int, int, int, float, int *, random_t *)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"clusters[0]\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"alloc_memory && new_centers && new_centers_len\00", align 1
@global_i = common global i64 0, align 8
@global_delta = common global float 0.000000e+00, align 4
@thread_contexts = external global %struct._tm_thread_context_t*, align 8

; Function Attrs: nounwind uwtable
define float** @normal_exec(i32 %nthreads, float** %feature, i32 %nfeatures, i32 %npoints, i32 %nclusters, float %threshold, i32* %membership, %struct.random* %randomPtr) #0 {
  %membership66 = bitcast i32* %membership to i8*
  %args = alloca %struct.args, align 8
  %start = alloca %struct.timeval, align 8
  %stop = alloca %struct.timeval, align 8
  %1 = sext i32 %nclusters to i64
  %2 = shl nsw i64 %1, 3
  %3 = tail call noalias i8* @malloc(i64 %2) #4
  %4 = bitcast i8* %3 to float**
  %5 = icmp eq i8* %3, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 228, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i64 0, i64 0)) #6
  unreachable

; <label>:7                                       ; preds = %0
  %8 = mul nsw i32 %nclusters, %nfeatures
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call noalias i8* @malloc(i64 %10) #4
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

; <label>:19                                      ; preds = %.preheader85, %19
  %20 = phi float* [ %21, %19 ], [ %14, %.preheader85 ]
  %indvars.iv62.prol = phi i64 [ %indvars.iv.next63.prol, %19 ], [ 1, %.preheader85 ]
  %prol.iter84 = phi i32 [ %prol.iter84.sub, %19 ], [ %xtraiter82, %.preheader85 ]
  %21 = getelementptr inbounds float, float* %20, i64 %16
  %22 = getelementptr inbounds float*, float** %4, i64 %indvars.iv62.prol
  store float* %21, float** %22, align 8
  %indvars.iv.next63.prol = add nuw nsw i64 %indvars.iv62.prol, 1
  %prol.iter84.sub = add i32 %prol.iter84, -1
  %prol.iter84.cmp = icmp eq i32 %prol.iter84.sub, 0
  br i1 %prol.iter84.cmp, label %.lr.ph24.split.loopexit, label %19, !llvm.loop !1

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
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 230, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i64 0, i64 0)) #6
  unreachable

.preheader6.loopexit.unr-lcssa:                   ; preds = %72
  br label %.preheader6.loopexit

.preheader6.loopexit:                             ; preds = %.lr.ph24.split, %.preheader6.loopexit.unr-lcssa
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

.lr.ph22.split.us:                                ; preds = %.lr.ph22.split.us.preheader, %._crit_edge20.us
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %._crit_edge20.us ], [ 0, %.lr.ph22.split.us.preheader ]
  %30 = tail call i64 @random_generate(%struct.random* %randomPtr) #4
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
  br i1 %prol.iter81.cmp, label %.lr.ph22.split.us.split.loopexit, label %35, !llvm.loop !3

.lr.ph22.split.us.split.loopexit:                 ; preds = %35
  %indvars.iv.next54.prol.lcssa = phi i64 [ %indvars.iv.next54.prol, %35 ]
  br label %.lr.ph22.split.us.split

.lr.ph22.split.us.split:                          ; preds = %.lr.ph22.split.us, %.lr.ph22.split.us.split.loopexit
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

._crit_edge20.us:                                 ; preds = %.lr.ph22.split.us.split, %._crit_edge20.us.unr-lcssa
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

.lr.ph22.split:                                   ; preds = %.lr.ph22.split.preheader, %.lr.ph22.split
  %i.121 = phi i32 [ %96, %.lr.ph22.split ], [ 0, %.lr.ph22.split.preheader ]
  %95 = tail call i64 @random_generate(%struct.random* %randomPtr) #4
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
  %104 = tail call noalias i8* @calloc(i64 %1, i64 %103) #4
  %105 = tail call noalias i8* @malloc(i64 %2) #4
  %106 = bitcast i8* %105 to i32**
  %107 = tail call noalias i8* @malloc(i64 %2) #4
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

.lr.ph12.prol:                                    ; preds = %.lr.ph12.prol.preheader, %.lr.ph12.prol
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
  br i1 %prol.iter78.cmp, label %.lr.ph12.preheader.split.loopexit, label %.lr.ph12.prol, !llvm.loop !4

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
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 258, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.normal_exec, i64 0, i64 0)) #6
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

._crit_edge13.loopexit:                           ; preds = %.lr.ph12.preheader.split, %._crit_edge13.loopexit.unr-lcssa
  br label %._crit_edge13

._crit_edge13:                                    ; preds = %._crit_edge13.loopexit, %.preheader4
  %150 = call i32 @gettimeofday(%struct.timeval* nonnull %start, %struct.timezone* null) #4
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

.split.us:                                        ; preds = %.split.us.preheader, %172
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
  call void @thread_start(void (i8*)* nonnull @work, i8* %165) #4
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
  br i1 %prol.iter.cmp, label %.preheader.us27.preheader.split.loopexit, label %.preheader.us27.prol, !llvm.loop !5

.preheader.us27.preheader.split.loopexit:         ; preds = %.preheader.us27.prol
  %indvars.iv.next.prol.lcssa = phi i64 [ %indvars.iv.next.prol, %.preheader.us27.prol ]
  br label %.preheader.us27.preheader.split

.preheader.us27.preheader.split:                  ; preds = %.preheader.us27.preheader, %.preheader.us27.preheader.split.loopexit
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

._crit_edge10.us.loopexit73:                      ; preds = %.preheader.us27.preheader.split, %._crit_edge10.us.loopexit73.unr-lcssa
  br label %._crit_edge10.us

._crit_edge10.us:                                 ; preds = %._crit_edge10.us.loopexit73, %._crit_edge10.us.loopexit
  %191 = fdiv float %169, %151
  %192 = fcmp ogt float %191, %threshold
  br i1 %192, label %172, label %.critedge.loopexit

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.us.us
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

.split:                                           ; preds = %.split.preheader, %216
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
  call void @thread_start(void (i8*)* nonnull @work, i8* %165) #4
  %213 = load float, float* @global_delta, align 4
  %214 = fdiv float %213, %151
  %215 = fcmp ogt float %214, %threshold
  br i1 %215, label %216, label %.critedge.loopexit74

; <label>:216                                     ; preds = %.split
  %217 = add nuw nsw i32 %loop.0, 1
  %218 = icmp slt i32 %loop.0, 500
  br i1 %218, label %.split, label %.critedge.loopexit74

.critedge.loopexit:                               ; preds = %172, %._crit_edge10.us
  br label %.critedge

.critedge.loopexit74:                             ; preds = %216, %.split
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit74, %.critedge.loopexit
  %219 = call i32 @gettimeofday(%struct.timeval* nonnull %stop, %struct.timezone* null) #4
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
  call void @free(i8* %104) #4
  call void @free(i8* %107) #4
  call void @free(i8* %105) #4
  ret float** %4
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare i64 @random_generate(%struct.random*) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

declare void @thread_start(void (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @work(i8* nocapture readonly %argPtr) #0 {
  %1 = tail call i64 (...) @thread_getId() #4
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) @thread_getId() #4
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #4
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
  %28 = tail call i64 (...) @thread_getId() #4
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

; <label>:35                                      ; preds = %.lr.ph23, %.backedge
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

.lr.ph16.split.us:                                ; preds = %.lr.ph16.split.us.preheader, %76
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %76 ], [ %40, %.lr.ph16.split.us.preheader ]
  %delta.114.us = phi float [ %delta.1..us, %76 ], [ %delta.021, %.lr.ph16.split.us.preheader ]
  %42 = getelementptr inbounds float*, float** %6, i64 %indvars.iv37
  %43 = load float*, float** %42, align 8
  %44 = tail call i32 @common_findNearestPoint(float* %43, i32 %10, float** %21, i32 %15) #4
  %45 = getelementptr inbounds i32, i32* %18, i64 %indvars.iv37
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, %44
  %48 = fadd float %delta.114.us, 1.000000e+00
  %delta.1..us = select i1 %47, float %delta.114.us, float %48
  store i32 %44, i32* %45, align 4
  br label %.outer1.us

.lr.ph7.us:                                       ; preds = %.lr.ph7.us.preheader, %.lr.ph7.us
  tail call void @llvm.x86.sse2.pause() #4
  %49 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %._crit_edge8.us.loopexit, label %.lr.ph7.us

._crit_edge8.us.loopexit:                         ; preds = %.lr.ph7.us
  br label %._crit_edge8.us

._crit_edge8.us:                                  ; preds = %._crit_edge8.us.loopexit, %.outer1.us
  %51 = icmp slt i32 %tries.0.ph.us, 2
  br i1 %51, label %61, label %52

; <label>:52                                      ; preds = %._crit_edge8.us
  %53 = add nsw i32 %tries.0.ph.us, -1
  %54 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #4, !srcloc !6
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %.outer1.us

; <label>:57                                      ; preds = %52
  %tries.0.ph.us.lcssa62 = phi i32 [ %tries.0.ph.us, %52 ]
  %58 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %.lr.ph11.us, label %60

; <label>:60                                      ; preds = %57
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !7
  br label %.lr.ph11.us

; <label>:61                                      ; preds = %._crit_edge8.us
  %tries.0.ph.us.lcssa = phi i32 [ %tries.0.ph.us, %._crit_edge8.us ]
  tail call void (...) @RTM_fallback_lock() #4
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

.lr.ph11.us.split:                                ; preds = %.lr.ph11.us, %68
  %indvars.iv35.unr = phi i64 [ 0, %.lr.ph11.us ], [ 1, %68 ]
  br i1 %34, label %._crit_edge12.us, label %.lr.ph11.us.split.split

.lr.ph11.us.split.split:                          ; preds = %.lr.ph11.us.split
  br label %78

; <label>:74                                      ; preds = %._crit_edge12.us
  tail call void (...) @RTM_fallback_unlock() #4
  br label %76

; <label>:75                                      ; preds = %._crit_edge12.us
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #4, !srcloc !8
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
  br i1 %exitcond.1, label %._crit_edge12.us.unr-lcssa, label %78, !llvm.loop !9

.outer1.us:                                       ; preds = %52, %.lr.ph16.split.us
  %tries.0.ph.us = phi i32 [ %53, %52 ], [ 9, %.lr.ph16.split.us ]
  %93 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %._crit_edge8.us, label %.lr.ph7.us.preheader

.lr.ph7.us.preheader:                             ; preds = %.outer1.us
  br label %.lr.ph7.us

._crit_edge12.us.unr-lcssa:                       ; preds = %78
  br label %._crit_edge12.us

._crit_edge12.us:                                 ; preds = %.lr.ph11.us.split, %._crit_edge12.us.unr-lcssa
  %95 = icmp sgt i32 %tries.0.ph.us63, 1
  br i1 %95, label %75, label %74

.lr.ph16.split:                                   ; preds = %.lr.ph16.split.preheader, %127
  %indvars.iv = phi i64 [ %indvars.iv.next, %127 ], [ %40, %.lr.ph16.split.preheader ]
  %delta.114 = phi float [ %delta.1., %127 ], [ %delta.021, %.lr.ph16.split.preheader ]
  %96 = getelementptr inbounds float*, float** %6, i64 %indvars.iv
  %97 = load float*, float** %96, align 8
  %98 = tail call i32 @common_findNearestPoint(float* %97, i32 %10, float** %21, i32 %15) #4
  %99 = getelementptr inbounds i32, i32* %18, i64 %indvars.iv
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, %98
  %102 = fadd float %delta.114, 1.000000e+00
  %delta.1. = select i1 %101, float %delta.114, float %102
  store i32 %98, i32* %99, align 4
  br label %.outer1

.outer1:                                          ; preds = %109, %.lr.ph16.split
  %tries.0.ph = phi i32 [ %110, %109 ], [ 9, %.lr.ph16.split ]
  %103 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %._crit_edge8, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %.outer1
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %.lr.ph7
  tail call void @llvm.x86.sse2.pause() #4
  %105 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %._crit_edge8.loopexit, label %.lr.ph7

._crit_edge8.loopexit:                            ; preds = %.lr.ph7
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %._crit_edge8.loopexit, %.outer1
  %107 = icmp slt i32 %tries.0.ph, 2
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %._crit_edge8
  %tries.0.ph.lcssa = phi i32 [ %tries.0.ph, %._crit_edge8 ]
  tail call void (...) @RTM_fallback_lock() #4
  br label %118

; <label>:109                                     ; preds = %._crit_edge8
  %110 = add nsw i32 %tries.0.ph, -1
  %111 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #4, !srcloc !6
  %112 = trunc i64 %111 to i32
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %.outer1

; <label>:114                                     ; preds = %109
  %tries.0.ph.lcssa60 = phi i32 [ %tries.0.ph, %109 ]
  %115 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %118, label %117

; <label>:117                                     ; preds = %114
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !7
  br label %118

; <label>:118                                     ; preds = %114, %117, %108
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
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #4, !srcloc !8
  br label %127

; <label>:126                                     ; preds = %118
  tail call void (...) @RTM_fallback_unlock() #4
  br label %127

; <label>:127                                     ; preds = %125, %126
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

.outer2:                                          ; preds = %.outer2.preheader, %135
  %tries2.0.ph = phi i32 [ %136, %135 ], [ 9, %.outer2.preheader ]
  %129 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %._crit_edge19, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %.outer2
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18.preheader, %.lr.ph18
  tail call void @llvm.x86.sse2.pause() #4
  %131 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %._crit_edge19.loopexit, label %.lr.ph18

._crit_edge19.loopexit:                           ; preds = %.lr.ph18
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %._crit_edge19.loopexit, %.outer2
  %133 = icmp slt i32 %tries2.0.ph, 2
  br i1 %133, label %134, label %135

; <label>:134                                     ; preds = %._crit_edge19
  %tries2.0.ph.lcssa = phi i32 [ %tries2.0.ph, %._crit_edge19 ]
  tail call void (...) @RTM_fallback_lock() #4
  br label %144

; <label>:135                                     ; preds = %._crit_edge19
  %136 = add nsw i32 %tries2.0.ph, -1
  %137 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #4, !srcloc !6
  %138 = trunc i64 %137 to i32
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %.outer2

; <label>:140                                     ; preds = %135
  %tries2.0.ph.lcssa64 = phi i32 [ %tries2.0.ph, %135 ]
  %141 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %144, label %143

; <label>:143                                     ; preds = %140
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !7
  br label %144

; <label>:144                                     ; preds = %140, %143, %134
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
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #4, !srcloc !8
  br label %.backedge

.backedge:                                        ; preds = %150, %152
  %151 = icmp slt i32 %146, %12
  br i1 %151, label %35, label %._crit_edge24.loopexit

; <label>:152                                     ; preds = %144
  tail call void (...) @RTM_fallback_unlock() #4
  br label %.backedge

._crit_edge24.loopexit:                           ; preds = %._crit_edge17, %.backedge
  %delta.1.lcssa.lcssa = phi float [ %delta.1.lcssa, %._crit_edge17 ], [ %delta.1.lcssa, %.backedge ]
  br label %._crit_edge24

._crit_edge24:                                    ; preds = %._crit_edge24.loopexit, %0
  %delta.3 = phi float [ 0.000000e+00, %0 ], [ %delta.1.lcssa.lcssa, %._crit_edge24.loopexit ]
  br label %.outer

.outer:                                           ; preds = %158, %._crit_edge24
  %tries4.0.ph = phi i32 [ %159, %158 ], [ 9, %._crit_edge24 ]
  %153 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.outer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  tail call void @llvm.x86.sse2.pause() #4
  %155 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.outer
  %157 = icmp slt i32 %tries4.0.ph, 2
  br i1 %157, label %170, label %158

; <label>:158                                     ; preds = %._crit_edge
  %159 = add nsw i32 %tries4.0.ph, -1
  %160 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #4, !srcloc !6
  %161 = trunc i64 %160 to i32
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %.outer

; <label>:163                                     ; preds = %158
  %164 = tail call i64 (...) @RTM_fallback_isLocked() #4
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %167, label %166

; <label>:166                                     ; preds = %163
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #4, !srcloc !7
  br label %167

; <label>:167                                     ; preds = %163, %166
  %168 = load float, float* @global_delta, align 4
  %169 = fadd float %delta.3, %168
  store float %169, float* @global_delta, align 4
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #4, !srcloc !8
  br label %173

; <label>:170                                     ; preds = %._crit_edge
  tail call void (...) @RTM_fallback_lock() #4
  %171 = load float, float* @global_delta, align 4
  %172 = fadd float %delta.3, %171
  store float %172, float* @global_delta, align 4
  tail call void (...) @RTM_fallback_unlock() #4
  br label %173

; <label>:173                                     ; preds = %167, %170
  %174 = tail call i64 (...) @thread_getId() #4
  %175 = trunc i64 %174 to i32
  %176 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %177 = load i32, i32* %176, align 4
  tail call void @SimRoiEnd(i32 %175, i32 %177) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

declare i64 @thread_getId(...) #3

declare void @SimRoiStart(i32) #3

declare i32 @common_findNearestPoint(float*, i32, float**, i32) #3

declare i64 @RTM_fallback_isLocked(...) #3

declare void @RTM_fallback_lock(...) #3

declare void @RTM_fallback_unlock(...) #3

declare void @SimRoiEnd(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
!3 = distinct !{!3, !2}
!4 = distinct !{!4, !2}
!5 = distinct !{!5, !2}
!6 = !{i32 1658281, i32 1658297, i32 1658333, i32 1658369, i32 1658405}
!7 = !{i32 1658882, i32 1658897, i32 1658931}
!8 = !{i32 1658653, i32 1658668, i32 1658696}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.vectorize.width", i32 1337}
