; ModuleID = '../bin/gene.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gene = type { i64, i8*, %struct.bitmap* }
%struct.bitmap = type { i64, i64, i64* }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }

@.str = private unnamed_addr constant [11 x i8] c"length > 1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"gene.c\00", align 1
@__PRETTY_FUNCTION__.gene_alloc = private unnamed_addr constant [25 x i8] c"gene_t *gene_alloc(long)\00", align 1
@gene_create.nucleotides = internal unnamed_addr constant [4 x i8] c"acgt", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"genePtr != NULL\00", align 1
@__PRETTY_FUNCTION__.gene_create = private unnamed_addr constant [39 x i8] c"void gene_create(gene_t *, random_t *)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"randomPtr != NULL\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.gene* @gene_alloc(i64 %length) #0 {
  %1 = icmp sgt i64 %length, 1
  br i1 %1, label %3, label %2

; <label>:2                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 92, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.gene_alloc, i64 0, i64 0)) #4
  unreachable

; <label>:3                                       ; preds = %0
  %4 = tail call noalias i8* @malloc(i64 24) #5
  %5 = bitcast i8* %4 to %struct.gene*
  %6 = icmp eq i8* %4, null
  br i1 %6, label %20, label %7

; <label>:7                                       ; preds = %3
  %8 = add nsw i64 %length, 1
  %9 = tail call noalias i8* @malloc(i64 %8) #5
  %10 = getelementptr inbounds i8, i8* %4, i64 8
  %11 = bitcast i8* %10 to i8**
  store i8* %9, i8** %11, align 8
  %12 = icmp eq i8* %9, null
  br i1 %12, label %20, label %13

; <label>:13                                      ; preds = %7
  %14 = getelementptr inbounds i8, i8* %9, i64 %length
  store i8 0, i8* %14, align 1
  %15 = bitcast i8* %4 to i64*
  store i64 %length, i64* %15, align 8
  %16 = tail call %struct.bitmap* @bitmap_alloc(i64 %length) #5
  %17 = getelementptr inbounds i8, i8* %4, i64 16
  %18 = bitcast i8* %17 to %struct.bitmap**
  store %struct.bitmap* %16, %struct.bitmap** %18, align 8
  %19 = icmp eq %struct.bitmap* %16, null
  %. = select i1 %19, %struct.gene* null, %struct.gene* %5
  br label %20

; <label>:20                                      ; preds = %13, %7, %3
  %.0 = phi %struct.gene* [ null, %3 ], [ null, %7 ], [ %., %13 ]
  ret %struct.gene* %.0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare %struct.bitmap* @bitmap_alloc(i64) #3

; Function Attrs: nounwind uwtable
define void @gene_create(%struct.gene* readonly %genePtr, %struct.random* %randomPtr) #0 {
  %1 = icmp eq %struct.gene* %genePtr, null
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 133, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.gene_create, i64 0, i64 0)) #4
  unreachable

; <label>:3                                       ; preds = %0
  %4 = icmp eq %struct.random* %randomPtr, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %3
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 134, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.gene_create, i64 0, i64 0)) #4
  unreachable

; <label>:6                                       ; preds = %3
  %7 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = icmp sgt i64 %8, 0
  br i1 %11, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %6
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.01 = phi i64 [ %17, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %12 = tail call i64 @random_generate(%struct.random* nonnull %randomPtr) #5
  %13 = and i64 %12, 3
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* @gene_create.nucleotides, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = getelementptr inbounds i8, i8* %10, i64 %i.01
  store i8 %15, i8* %16, align 1
  %17 = add nuw nsw i64 %i.01, 1
  %exitcond = icmp eq i64 %17, %8
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %6
  ret void
}

declare i64 @random_generate(%struct.random*) #3

; Function Attrs: nounwind uwtable
define void @gene_free(%struct.gene* nocapture %genePtr) #0 {
  %1 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 2
  %2 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  tail call void @bitmap_free(%struct.bitmap* %2) #5
  %3 = getelementptr inbounds %struct.gene, %struct.gene* %genePtr, i64 0, i32 1
  %4 = load i8*, i8** %3, align 8
  tail call void @free(i8* %4) #5
  %5 = bitcast %struct.gene* %genePtr to i8*
  tail call void @free(i8* %5) #5
  ret void
}

declare void @bitmap_free(%struct.bitmap*) #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
