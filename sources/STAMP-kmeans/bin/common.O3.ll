; ModuleID = '../bin/common.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: norecurse nounwind readonly uwtable
define float @common_euclidDist2(float* nocapture readonly %pt1, float* nocapture readonly %pt2, i32 %numdims) #0 {
  %1 = icmp sgt i32 %numdims, 0
  br i1 %1, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  %2 = add i32 %numdims, -1
  %xtraiter = and i32 %numdims, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.preheader.split, label %.lr.ph.prol.preheader

.lr.ph.prol.preheader:                            ; preds = %.lr.ph.preheader
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol.preheader, %.lr.ph.prol
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
  br i1 %prol.iter.cmp, label %.lr.ph.preheader.split.loopexit, label %.lr.ph.prol, !llvm.loop !1

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

._crit_edge.loopexit:                             ; preds = %.lr.ph.preheader.split, %._crit_edge.loopexit.unr-lcssa
  %.lcssa = phi float [ %.lcssa.unr, %.lr.ph.preheader.split ], [ %.lcssa3, %._crit_edge.loopexit.unr-lcssa ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %ans.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %.lcssa, %._crit_edge.loopexit ]
  ret float %ans.0.lcssa
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @common_findNearestPoint(float* nocapture readonly %pt, i32 %nfeatures, float** nocapture readonly %pts, i32 %npts) #0 {
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

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %46
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
  br i1 %prol.iter.cmp, label %.lr.ph.split.us.split.loopexit, label %.lr.ph.i.us.prol, !llvm.loop !3

.lr.ph.split.us.split.loopexit:                   ; preds = %.lr.ph.i.us.prol
  %indvars.iv.next.i.us.prol.lcssa = phi i64 [ %indvars.iv.next.i.us.prol, %.lr.ph.i.us.prol ]
  %.lcssa10 = phi float [ %14, %.lr.ph.i.us.prol ]
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split.loopexit
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

; <label>:46                                      ; preds = %43, %common_euclidDist2.exit.loopexit.us
  %max_dist.1.us = phi float [ %.lcssa, %43 ], [ %max_dist.01.us, %common_euclidDist2.exit.loopexit.us ]
  %index.1.us = phi i32 [ %45, %43 ], [ %index.03.us, %common_euclidDist2.exit.loopexit.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %47 = icmp slt i64 %indvars.iv.next, %3
  br i1 %47, label %.lr.ph.split.us, label %._crit_edge.loopexit

common_euclidDist2.exit.loopexit.us.unr-lcssa:    ; preds = %.lr.ph.i.us
  %.lcssa9 = phi float [ %42, %.lr.ph.i.us ]
  br label %common_euclidDist2.exit.loopexit.us

common_euclidDist2.exit.loopexit.us:              ; preds = %.lr.ph.split.us.split, %common_euclidDist2.exit.loopexit.us.unr-lcssa
  %.lcssa = phi float [ %.lcssa.unr, %.lr.ph.split.us.split ], [ %.lcssa9, %common_euclidDist2.exit.loopexit.us.unr-lcssa ]
  %48 = fdiv float %.lcssa, %max_dist.01.us
  %49 = fcmp olt float %48, 0x3FEFFFEB00000000
  br i1 %49, label %43, label %46

._crit_edge.loopexit:                             ; preds = %43, %46
  %index.2.ph = phi i32 [ %45, %43 ], [ %index.1.us, %46 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph, %0
  %index.2 = phi i32 [ -1, %0 ], [ 0, %.lr.ph ], [ %index.2.ph, %._crit_edge.loopexit ]
  ret i32 %index.2
}

attributes #0 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
!3 = distinct !{!3, !2}
