; ModuleID = '../bin/segments.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.segments = type { i64, i64, %struct.vector*, i8** }
%struct.vector = type { i64, i64, i8** }
%struct.gene = type { i64, i8*, %struct.bitmap* }
%struct.bitmap = type { i64, i64, i64* }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }

@.str = private unnamed_addr constant [20 x i8] c"segmentsPtr != NULL\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"segments.c\00", align 1
@__PRETTY_FUNCTION__.segments_create = private unnamed_addr constant [57 x i8] c"void segments_create(segments_t *, gene_t *, random_t *)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"genePtr != NULL\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"randomPtr != NULL\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.segments* @segments_alloc(i64 %length, i64 %minNum) #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #5
  %2 = bitcast i8* %1 to %struct.segments*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %51, label %4

; <label>:4                                       ; preds = %0
  %5 = shl i64 %minNum, 3
  %6 = tail call noalias i8* @malloc(i64 %5) #5
  %7 = getelementptr inbounds i8, i8* %1, i64 24
  %8 = bitcast i8* %7 to i8**
  store i8* %6, i8** %8, align 8
  %9 = icmp eq i8* %6, null
  %10 = bitcast i8* %6 to i8**
  br i1 %9, label %51, label %11

; <label>:11                                      ; preds = %4
  %12 = add nsw i64 %length, 1
  %13 = mul nsw i64 %12, %minNum
  %14 = tail call noalias i8* @malloc(i64 %13) #5
  %15 = icmp eq i8* %14, null
  br i1 %15, label %51, label %.preheader

.preheader:                                       ; preds = %11
  %16 = icmp sgt i64 %minNum, 0
  br i1 %16, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %17 = add i64 %minNum, -1
  %xtraiter = and i64 %minNum, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.preheader.split, label %.lr.ph.prol.preheader

.lr.ph.prol.preheader:                            ; preds = %.lr.ph.preheader
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol.preheader, %.lr.ph.prol
  %i.01.prol = phi i64 [ %22, %.lr.ph.prol ], [ 0, %.lr.ph.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %.lr.ph.prol ], [ %xtraiter, %.lr.ph.prol.preheader ]
  %18 = mul nsw i64 %i.01.prol, %12
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  %20 = getelementptr inbounds i8*, i8** %10, i64 %i.01.prol
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %length
  store i8 0, i8* %21, align 1
  %22 = add nuw nsw i64 %i.01.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph.preheader.split.loopexit, label %.lr.ph.prol, !llvm.loop !1

.lr.ph.preheader.split.loopexit:                  ; preds = %.lr.ph.prol
  %.lcssa = phi i64 [ %22, %.lr.ph.prol ]
  br label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.preheader.split.loopexit, %.lr.ph.preheader
  %i.01.unr = phi i64 [ 0, %.lr.ph.preheader ], [ %.lcssa, %.lr.ph.preheader.split.loopexit ]
  %23 = icmp ult i64 %17, 3
  br i1 %23, label %._crit_edge.loopexit, label %.lr.ph.preheader.split.split

.lr.ph.preheader.split.split:                     ; preds = %.lr.ph.preheader.split
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.split.split
  %i.01 = phi i64 [ %i.01.unr, %.lr.ph.preheader.split.split ], [ %43, %.lr.ph ]
  %24 = mul nsw i64 %i.01, %12
  %25 = getelementptr inbounds i8, i8* %14, i64 %24
  %26 = getelementptr inbounds i8*, i8** %10, i64 %i.01
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %length
  store i8 0, i8* %27, align 1
  %28 = add nuw nsw i64 %i.01, 1
  %29 = mul nsw i64 %28, %12
  %30 = getelementptr inbounds i8, i8* %14, i64 %29
  %31 = getelementptr inbounds i8*, i8** %10, i64 %28
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %length
  store i8 0, i8* %32, align 1
  %33 = add nsw i64 %i.01, 2
  %34 = mul nsw i64 %33, %12
  %35 = getelementptr inbounds i8, i8* %14, i64 %34
  %36 = getelementptr inbounds i8*, i8** %10, i64 %33
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %length
  store i8 0, i8* %37, align 1
  %38 = add nsw i64 %i.01, 3
  %39 = mul nsw i64 %38, %12
  %40 = getelementptr inbounds i8, i8* %14, i64 %39
  %41 = getelementptr inbounds i8*, i8** %10, i64 %38
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %length
  store i8 0, i8* %42, align 1
  %43 = add nsw i64 %i.01, 4
  %exitcond.3 = icmp eq i64 %43, %minNum
  br i1 %exitcond.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph.preheader.split, %._crit_edge.loopexit.unr-lcssa
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %44 = getelementptr inbounds i8, i8* %1, i64 8
  %45 = bitcast i8* %44 to i64*
  store i64 %minNum, i64* %45, align 8
  %46 = bitcast i8* %1 to i64*
  store i64 %length, i64* %46, align 8
  %47 = tail call %struct.vector* @vector_alloc(i64 %minNum) #5
  %48 = getelementptr inbounds i8, i8* %1, i64 16
  %49 = bitcast i8* %48 to %struct.vector**
  store %struct.vector* %47, %struct.vector** %49, align 8
  %50 = icmp eq %struct.vector* %47, null
  %. = select i1 %50, %struct.segments* null, %struct.segments* %2
  br label %51

; <label>:51                                      ; preds = %._crit_edge, %11, %4, %0
  %.0 = phi %struct.segments* [ null, %0 ], [ null, %4 ], [ null, %11 ], [ %., %._crit_edge ]
  ret %struct.segments* %.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.vector* @vector_alloc(i64) #2

; Function Attrs: nounwind uwtable
define void @segments_create(%struct.segments* readonly %segmentsPtr, %struct.gene* readonly %genePtr, %struct.random* %randomPtr) #0 {
  %1 = icmp eq %struct.segments* %segmentsPtr, null
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 148, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #6
  unreachable

; <label>:3                                       ; preds = %0
  %4 = icmp eq %struct.gene* %genePtr, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 149, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #6
  unreachable

; <label>:6                                       ; preds = %3
  %7 = icmp eq %struct.random* %randomPtr, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %6
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 150, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #6
  unreachable

; <label>:9                                       ; preds = %6
  %10 = getelementptr inbounds %struct.segments, %struct.segments* %segmentsPtr, i64 0, i32 2
  %11 = load %struct.vector*, %struct.vector** %10, align 8
  %12 = getelementptr inbounds %struct.segments, %struct.segments* %segmentsPtr, i64 0, i32 3
  %13 = load i8**, i8*** %12, align 8
  %14 = getelementptr inbounds %struct.segments, %struct.segments* %segmentsPtr, i64 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.segments, %struct.segments* %segmentsPtr, i64 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 2
  %23 = load %struct.bitmap*, %struct.bitmap** %22, align 8
  %24 = sub nsw i64 %21, %15
  %25 = add nsw i64 %24, 1
  %26 = icmp sgt i64 %17, 0
  br i1 %26, label %.lr.ph10.preheader, label %._crit_edge11

.lr.ph10.preheader:                               ; preds = %9
  br label %.lr.ph10

; <label>:27                                      ; preds = %34
  %28 = icmp slt i64 %41, %17
  br i1 %28, label %.lr.ph10, label %._crit_edge11.loopexit

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %27
  %i.08 = phi i64 [ %41, %27 ], [ 0, %.lr.ph10.preheader ]
  %29 = tail call i64 @random_generate(%struct.random* nonnull %randomPtr) #5
  %30 = urem i64 %29, %25
  %31 = tail call i64 @bitmap_set(%struct.bitmap* %23, i64 %30) #5
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %.lr.ph10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 166, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #6
  unreachable

; <label>:34                                      ; preds = %.lr.ph10
  %35 = getelementptr inbounds i8*, i8** %13, i64 %i.08
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %19, i64 %30
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 %15, i32 1, i1 false)
  %38 = load i8*, i8** %35, align 8
  %39 = tail call i64 @vector_pushBack(%struct.vector* %11, i8* %38) #5
  %40 = icmp eq i64 %39, 0
  %41 = add nuw nsw i64 %i.08, 1
  br i1 %40, label %42, label %27

; <label>:42                                      ; preds = %34
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 169, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #6
  unreachable

._crit_edge11.loopexit:                           ; preds = %27
  br label %._crit_edge11

._crit_edge11:                                    ; preds = %._crit_edge11.loopexit, %9
  %43 = tail call i64 @bitmap_isSet(%struct.bitmap* %23, i64 0) #5
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %56

; <label>:45                                      ; preds = %._crit_edge11
  %46 = add nsw i64 %15, 1
  %47 = tail call noalias i8* @malloc(i64 %46) #5
  %48 = getelementptr inbounds i8, i8* %47, i64 %15
  store i8 0, i8* %48, align 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %19, i64 %15, i32 1, i1 false)
  %49 = tail call i64 @vector_pushBack(%struct.vector* %11, i8* %47) #5
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %45
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 179, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #6
  unreachable

; <label>:52                                      ; preds = %45
  %53 = tail call i64 @bitmap_set(%struct.bitmap* %23, i64 0) #5
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %52
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 181, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #6
  unreachable

; <label>:56                                      ; preds = %52, %._crit_edge11
  %57 = add nsw i64 %15, -1
  %58 = icmp slt i64 %24, 0
  br i1 %58, label %._crit_edge7, label %.lr.ph6

.lr.ph6:                                          ; preds = %56
  %59 = add nsw i64 %15, 1
  br label %60

; <label>:60                                      ; preds = %83, %.lr.ph6
  %i.14 = phi i64 [ 0, %.lr.ph6 ], [ %84, %83 ]
  %61 = add nsw i64 %57, %i.14
  %62 = icmp slt i64 %61, %25
  %63 = select i1 %62, i64 %61, i64 %25
  %64 = icmp slt i64 %i.14, %63
  br i1 %64, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %60
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %67
  %i.21 = phi i64 [ %68, %67 ], [ %i.14, %.lr.ph.preheader ]
  %65 = tail call i64 @bitmap_isSet(%struct.bitmap* %23, i64 %i.21) #5
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %._crit_edge.loopexit

; <label>:67                                      ; preds = %.lr.ph
  %68 = add nsw i64 %i.21, 1
  %69 = icmp slt i64 %68, %63
  br i1 %69, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph, %67
  %i.2.lcssa.ph = phi i64 [ %i.21, %.lr.ph ], [ %68, %67 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %60
  %i.2.lcssa = phi i64 [ %i.14, %60 ], [ %i.2.lcssa.ph, %._crit_edge.loopexit ]
  %70 = icmp eq i64 %i.2.lcssa, %63
  br i1 %70, label %71, label %83

; <label>:71                                      ; preds = %._crit_edge
  %72 = tail call noalias i8* @malloc(i64 %59) #5
  %73 = getelementptr inbounds i8, i8* %72, i64 %15
  store i8 0, i8* %73, align 1
  %74 = add nsw i64 %63, -1
  %75 = getelementptr inbounds i8, i8* %19, i64 %74
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %75, i64 %15, i32 1, i1 false)
  %76 = tail call i64 @vector_pushBack(%struct.vector* %11, i8* %72) #5
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %71
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 200, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #6
  unreachable

; <label>:79                                      ; preds = %71
  %80 = tail call i64 @bitmap_set(%struct.bitmap* %23, i64 %74) #5
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %79
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 202, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.segments_create, i64 0, i64 0)) #6
  unreachable

; <label>:83                                      ; preds = %79, %._crit_edge
  %i.3 = phi i64 [ %74, %79 ], [ %i.2.lcssa, %._crit_edge ]
  %84 = add nsw i64 %i.3, 1
  %85 = icmp slt i64 %i.3, %24
  br i1 %85, label %60, label %._crit_edge7.loopexit

._crit_edge7.loopexit:                            ; preds = %83
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %._crit_edge7.loopexit, %56
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare i64 @random_generate(%struct.random*) #2

declare i64 @bitmap_set(%struct.bitmap*, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i64 @vector_pushBack(%struct.vector*, i8*) #2

declare i64 @bitmap_isSet(%struct.bitmap*, i64) #2

; Function Attrs: nounwind uwtable
define void @segments_free(%struct.segments* nocapture %segmentsPtr) #0 {
  %1 = getelementptr inbounds %struct.segments, %struct.segments* %segmentsPtr, i64 0, i32 2
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i8* @vector_at(%struct.vector* %2, i64 0) #5
  tail call void @free(i8* %3) #5
  %4 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @vector_free(%struct.vector* %4) #5
  %5 = getelementptr inbounds %struct.segments, %struct.segments* %segmentsPtr, i64 0, i32 3
  %6 = bitcast i8*** %5 to i8**
  %7 = load i8*, i8** %6, align 8
  tail call void @free(i8* %7) #5
  %8 = bitcast %struct.segments* %segmentsPtr to i8*
  tail call void @free(i8* %8) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

declare i8* @vector_at(%struct.vector*, i64) #2

declare void @vector_free(%struct.vector*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
