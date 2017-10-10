; ModuleID = 'detector.c'
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
define %struct.detector* @detector_alloc() #0 {
  %detectorPtr = alloca %struct.detector*, align 8
  %1 = call noalias i8* @malloc(i64 16) #4
  %2 = bitcast i8* %1 to %struct.detector*
  store %struct.detector* %2, %struct.detector** %detectorPtr, align 8
  %3 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  %4 = icmp ne %struct.detector* %3, null
  br i1 %4, label %5, label %28

; <label>:5                                       ; preds = %0
  %6 = call %struct.vector* (...) @dictionary_alloc()
  %7 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  %8 = getelementptr inbounds %struct.detector, %struct.detector* %7, i32 0, i32 0
  store %struct.vector* %6, %struct.vector** %8, align 8
  %9 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  %10 = getelementptr inbounds %struct.detector, %struct.detector* %9, i32 0, i32 0
  %11 = load %struct.vector*, %struct.vector** %10, align 8
  %12 = icmp ne %struct.vector* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %5
  br label %16

; <label>:14                                      ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.detector_alloc, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = call %struct.vector* @vector_alloc(i64 1)
  %18 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  %19 = getelementptr inbounds %struct.detector, %struct.detector* %18, i32 0, i32 1
  store %struct.vector* %17, %struct.vector** %19, align 8
  %20 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  %21 = getelementptr inbounds %struct.detector, %struct.detector* %20, i32 0, i32 1
  %22 = load %struct.vector*, %struct.vector** %21, align 8
  %23 = icmp ne %struct.vector* %22, null
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %16
  br label %27

; <label>:25                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.detector_alloc, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %27

; <label>:27                                      ; preds = %26, %24
  br label %28

; <label>:28                                      ; preds = %27, %0
  %29 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  ret %struct.detector* %29
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.vector* @dictionary_alloc(...) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare %struct.vector* @vector_alloc(i64) #2

; Function Attrs: nounwind uwtable
define %struct.detector* @Pdetector_alloc() #0 {
  %detectorPtr = alloca %struct.detector*, align 8
  %1 = call noalias i8* @malloc(i64 16) #4
  %2 = bitcast i8* %1 to %struct.detector*
  store %struct.detector* %2, %struct.detector** %detectorPtr, align 8
  %3 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  %4 = icmp ne %struct.detector* %3, null
  br i1 %4, label %5, label %28

; <label>:5                                       ; preds = %0
  %6 = call %struct.vector* (...) @Pdictionary_alloc()
  %7 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  %8 = getelementptr inbounds %struct.detector, %struct.detector* %7, i32 0, i32 0
  store %struct.vector* %6, %struct.vector** %8, align 8
  %9 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  %10 = getelementptr inbounds %struct.detector, %struct.detector* %9, i32 0, i32 0
  %11 = load %struct.vector*, %struct.vector** %10, align 8
  %12 = icmp ne %struct.vector* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %5
  br label %16

; <label>:14                                      ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.Pdetector_alloc, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = call %struct.vector* @Pvector_alloc(i64 1)
  %18 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  %19 = getelementptr inbounds %struct.detector, %struct.detector* %18, i32 0, i32 1
  store %struct.vector* %17, %struct.vector** %19, align 8
  %20 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  %21 = getelementptr inbounds %struct.detector, %struct.detector* %20, i32 0, i32 1
  %22 = load %struct.vector*, %struct.vector** %21, align 8
  %23 = icmp ne %struct.vector* %22, null
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %16
  br label %27

; <label>:25                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.Pdetector_alloc, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %27

; <label>:27                                      ; preds = %26, %24
  br label %28

; <label>:28                                      ; preds = %27, %0
  %29 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  ret %struct.detector* %29
}

declare %struct.vector* @Pdictionary_alloc(...) #2

declare %struct.vector* @Pvector_alloc(i64) #2

; Function Attrs: nounwind uwtable
define void @detector_free(%struct.detector* %detectorPtr) #0 {
  %1 = alloca %struct.detector*, align 8
  store %struct.detector* %detectorPtr, %struct.detector** %1, align 8
  %2 = load %struct.detector*, %struct.detector** %1, align 8
  %3 = getelementptr inbounds %struct.detector, %struct.detector* %2, i32 0, i32 0
  %4 = load %struct.vector*, %struct.vector** %3, align 8
  call void @dictionary_free(%struct.vector* %4)
  %5 = load %struct.detector*, %struct.detector** %1, align 8
  %6 = getelementptr inbounds %struct.detector, %struct.detector* %5, i32 0, i32 1
  %7 = load %struct.vector*, %struct.vector** %6, align 8
  call void @vector_free(%struct.vector* %7)
  %8 = load %struct.detector*, %struct.detector** %1, align 8
  %9 = bitcast %struct.detector* %8 to i8*
  call void @free(i8* %9) #4
  ret void
}

declare void @dictionary_free(%struct.vector*) #2

declare void @vector_free(%struct.vector*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @Pdetector_free(%struct.detector* %detectorPtr) #0 {
  %1 = alloca %struct.detector*, align 8
  store %struct.detector* %detectorPtr, %struct.detector** %1, align 8
  %2 = load %struct.detector*, %struct.detector** %1, align 8
  %3 = getelementptr inbounds %struct.detector, %struct.detector* %2, i32 0, i32 0
  %4 = load %struct.vector*, %struct.vector** %3, align 8
  call void @Pdictionary_free(%struct.vector* %4)
  %5 = load %struct.detector*, %struct.detector** %1, align 8
  %6 = getelementptr inbounds %struct.detector, %struct.detector* %5, i32 0, i32 1
  %7 = load %struct.vector*, %struct.vector** %6, align 8
  call void @Pvector_free(%struct.vector* %7)
  %8 = load %struct.detector*, %struct.detector** %1, align 8
  %9 = bitcast %struct.detector* %8 to i8*
  call void @free(i8* %9) #4
  ret void
}

declare void @Pdictionary_free(%struct.vector*) #2

declare void @Pvector_free(%struct.vector*) #2

; Function Attrs: nounwind uwtable
define void @detector_addPreprocessor(%struct.detector* %detectorPtr, void (i8*)* %p) #0 {
  %1 = alloca %struct.detector*, align 8
  %2 = alloca void (i8*)*, align 8
  %status = alloca i64, align 8
  store %struct.detector* %detectorPtr, %struct.detector** %1, align 8
  store void (i8*)* %p, void (i8*)** %2, align 8
  %3 = load %struct.detector*, %struct.detector** %1, align 8
  %4 = getelementptr inbounds %struct.detector, %struct.detector* %3, i32 0, i32 1
  %5 = load %struct.vector*, %struct.vector** %4, align 8
  %6 = load void (i8*)*, void (i8*)** %2, align 8
  %7 = bitcast void (i8*)* %6 to i8*
  %8 = call i64 @vector_pushBack(%struct.vector* %5, i8* %7)
  store i64 %8, i64* %status, align 8
  %9 = load i64, i64* %status, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  br label %14

; <label>:12                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.detector_addPreprocessor, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  ret void
}

declare i64 @vector_pushBack(%struct.vector*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @detector_process(%struct.detector* %detectorPtr, i8* %str) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.detector*, align 8
  %3 = alloca i8*, align 8
  %preprocessorVectorPtr = alloca %struct.vector*, align 8
  %p = alloca i64, align 8
  %numPreprocessor = alloca i64, align 8
  %preprocessor = alloca void (i8*)*, align 8
  %signature = alloca i8*, align 8
  store %struct.detector* %detectorPtr, %struct.detector** %2, align 8
  store i8* %str, i8** %3, align 8
  %4 = load %struct.detector*, %struct.detector** %2, align 8
  %5 = getelementptr inbounds %struct.detector, %struct.detector* %4, i32 0, i32 1
  %6 = load %struct.vector*, %struct.vector** %5, align 8
  store %struct.vector* %6, %struct.vector** %preprocessorVectorPtr, align 8
  %7 = load %struct.vector*, %struct.vector** %preprocessorVectorPtr, align 8
  %8 = call i64 @vector_getSize(%struct.vector* %7)
  store i64 %8, i64* %numPreprocessor, align 8
  store i64 0, i64* %p, align 8
  br label %9

; <label>:9                                       ; preds = %20, %0
  %10 = load i64, i64* %p, align 8
  %11 = load i64, i64* %numPreprocessor, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %23

; <label>:13                                      ; preds = %9
  %14 = load %struct.vector*, %struct.vector** %preprocessorVectorPtr, align 8
  %15 = load i64, i64* %p, align 8
  %16 = call i8* @vector_at(%struct.vector* %14, i64 %15)
  %17 = bitcast i8* %16 to void (i8*)*
  store void (i8*)* %17, void (i8*)** %preprocessor, align 8
  %18 = load void (i8*)*, void (i8*)** %preprocessor, align 8
  %19 = load i8*, i8** %3, align 8
  call void %18(i8* %19)
  br label %20

; <label>:20                                      ; preds = %13
  %21 = load i64, i64* %p, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %p, align 8
  br label %9

; <label>:23                                      ; preds = %9
  %24 = load %struct.detector*, %struct.detector** %2, align 8
  %25 = getelementptr inbounds %struct.detector, %struct.detector* %24, i32 0, i32 0
  %26 = load %struct.vector*, %struct.vector** %25, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @dictionary_match(%struct.vector* %26, i8* %27)
  store i8* %28, i8** %signature, align 8
  %29 = load i8*, i8** %signature, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %23
  store i32 7, i32* %1, align 4
  br label %33

; <label>:32                                      ; preds = %23
  store i32 0, i32* %1, align 4
  br label %33

; <label>:33                                      ; preds = %32, %31
  %34 = load i32, i32* %1, align 4
  ret i32 %34
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
