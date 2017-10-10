; ModuleID = '../bin/detector.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.detector = type { %struct.vector*, %struct.vector* }
%struct.vector = type { i64, i64, i8** }

@.str = private unnamed_addr constant [27 x i8] c"detectorPtr->dictionaryPtr\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"detector.c\00", align 1
@__PRETTY_FUNCTION__.detector_alloc = private unnamed_addr constant [29 x i8] c"detector_t *detector_alloc()\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"detectorPtr->preprocessorVectorPtr\00", align 1
@__PRETTY_FUNCTION__.Pdetector_alloc = private unnamed_addr constant [30 x i8] c"detector_t *Pdetector_alloc()\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@__PRETTY_FUNCTION__.detector_addPreprocessor = private unnamed_addr constant [60 x i8] c"void detector_addPreprocessor(detector_t *, preprocessor_t)\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.detector* @detector_alloc() #0 {
  %1 = tail call noalias i8* @malloc(i64 16) #4
  %2 = bitcast i8* %1 to %struct.detector*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %15, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.vector* (...) @dictionary_alloc() #4
  %6 = bitcast i8* %1 to %struct.vector**
  store %struct.vector* %5, %struct.vector** %6, align 8
  %7 = icmp eq %struct.vector* %5, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 100, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.detector_alloc, i64 0, i64 0)) #5
  unreachable

; <label>:9                                       ; preds = %4
  %10 = tail call %struct.vector* @vector_alloc(i64 1) #4
  %11 = getelementptr inbounds i8, i8* %1, i64 8
  %12 = bitcast i8* %11 to %struct.vector**
  store %struct.vector* %10, %struct.vector** %12, align 8
  %13 = icmp eq %struct.vector* %10, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %9
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 102, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.detector_alloc, i64 0, i64 0)) #5
  unreachable

; <label>:15                                      ; preds = %9, %0
  ret %struct.detector* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.vector* @dictionary_alloc(...) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare %struct.vector* @vector_alloc(i64) #2

; Function Attrs: nounwind uwtable
define noalias %struct.detector* @Pdetector_alloc() #0 {
  %1 = tail call noalias i8* @malloc(i64 16) #4
  %2 = bitcast i8* %1 to %struct.detector*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %15, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.vector* (...) @Pdictionary_alloc() #4
  %6 = bitcast i8* %1 to %struct.vector**
  store %struct.vector* %5, %struct.vector** %6, align 8
  %7 = icmp eq %struct.vector* %5, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 121, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.Pdetector_alloc, i64 0, i64 0)) #5
  unreachable

; <label>:9                                       ; preds = %4
  %10 = tail call %struct.vector* @Pvector_alloc(i64 1) #4
  %11 = getelementptr inbounds i8, i8* %1, i64 8
  %12 = bitcast i8* %11 to %struct.vector**
  store %struct.vector* %10, %struct.vector** %12, align 8
  %13 = icmp eq %struct.vector* %10, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %9
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 123, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.Pdetector_alloc, i64 0, i64 0)) #5
  unreachable

; <label>:15                                      ; preds = %9, %0
  ret %struct.detector* %2
}

declare %struct.vector* @Pdictionary_alloc(...) #2

declare %struct.vector* @Pvector_alloc(i64) #2

; Function Attrs: nounwind uwtable
define void @detector_free(%struct.detector* nocapture %detectorPtr) #0 {
  %1 = getelementptr inbounds %struct.detector, %struct.detector* %detectorPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @dictionary_free(%struct.vector* %2) #4
  %3 = getelementptr inbounds %struct.detector, %struct.detector* %detectorPtr, i64 0, i32 1
  %4 = load %struct.vector*, %struct.vector** %3, align 8
  tail call void @vector_free(%struct.vector* %4) #4
  %5 = bitcast %struct.detector* %detectorPtr to i8*
  tail call void @free(i8* %5) #4
  ret void
}

declare void @dictionary_free(%struct.vector*) #2

declare void @vector_free(%struct.vector*) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @Pdetector_free(%struct.detector* nocapture %detectorPtr) #0 {
  %1 = getelementptr inbounds %struct.detector, %struct.detector* %detectorPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @Pdictionary_free(%struct.vector* %2) #4
  %3 = getelementptr inbounds %struct.detector, %struct.detector* %detectorPtr, i64 0, i32 1
  %4 = load %struct.vector*, %struct.vector** %3, align 8
  tail call void @Pvector_free(%struct.vector* %4) #4
  %5 = bitcast %struct.detector* %detectorPtr to i8*
  tail call void @free(i8* %5) #4
  ret void
}

declare void @Pdictionary_free(%struct.vector*) #2

declare void @Pvector_free(%struct.vector*) #2

; Function Attrs: nounwind uwtable
define void @detector_addPreprocessor(%struct.detector* nocapture readonly %detectorPtr, void (i8*)* %p) #0 {
  %1 = getelementptr inbounds %struct.detector, %struct.detector* %detectorPtr, i64 0, i32 1
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = bitcast void (i8*)* %p to i8*
  %4 = tail call i64 @vector_pushBack(%struct.vector* %2, i8* %3) #4
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 165, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.detector_addPreprocessor, i64 0, i64 0)) #5
  unreachable

; <label>:7                                       ; preds = %0
  ret void
}

declare i64 @vector_pushBack(%struct.vector*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @detector_process(%struct.detector* nocapture readonly %detectorPtr, i8* %str) #0 {
  %1 = getelementptr inbounds %struct.detector, %struct.detector* %detectorPtr, i64 0, i32 1
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i64 @vector_getSize(%struct.vector* %2) #4
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %p.01 = phi i64 [ %7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %5 = tail call i8* @vector_at(%struct.vector* %2, i64 %p.01) #4
  %6 = bitcast i8* %5 to void (i8*)*
  tail call void %6(i8* %str) #4
  %7 = add nuw nsw i64 %p.01, 1
  %exitcond = icmp eq i64 %7, %3
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %8 = getelementptr inbounds %struct.detector, %struct.detector* %detectorPtr, i64 0, i32 0
  %9 = load %struct.vector*, %struct.vector** %8, align 8
  %10 = tail call i8* @dictionary_match(%struct.vector* %9, i8* %str) #4
  %11 = icmp eq i8* %10, null
  %. = select i1 %11, i32 0, i32 7
  ret i32 %.
}

declare i64 @vector_getSize(%struct.vector*) #2

declare i8* @vector_at(%struct.vector*, i64) #2

declare i8* @dictionary_match(%struct.vector*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
