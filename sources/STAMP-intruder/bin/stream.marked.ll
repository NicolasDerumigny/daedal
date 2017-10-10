; ModuleID = '../bin/stream.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i64, %struct.random*, %struct.vector*, %struct.queue*, %struct.rbtree* }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.vector = type { i64, i64, i8** }
%struct.queue = type opaque
%struct.rbtree = type opaque
%struct.detector = type opaque
%struct.packet = type { i64, i64, i64, i64, [0 x i8] }

@.str = private unnamed_addr constant [43 x i8] c"percentAttack >= 0 && percentAttack <= 100\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"stream.c\00", align 1
@__PRETTY_FUNCTION__.stream_alloc = private unnamed_addr constant [29 x i8] c"stream_t *stream_alloc(long)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"streamPtr->randomPtr\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"streamPtr->allocVectorPtr\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"streamPtr->packetQueuePtr\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"streamPtr->attackMapPtr\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"detectorPtr\00", align 1
@__PRETTY_FUNCTION__.stream_generate = private unnamed_addr constant [67 x i8] c"long stream_generate(stream_t *, dictionary_t *, long, long, long)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"range > 0\00", align 1
@global_numDefaultSignature = external constant i64, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"str2\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@__PRETTY_FUNCTION__.splitIntoPackets = private unnamed_addr constant [71 x i8] c"void splitIntoPackets(char *, long, random_t *, vector_t *, queue_t *)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.stream* @stream_alloc(i64 %percentAttack) #0 {
  %1 = alloca i64, align 8
  %streamPtr = alloca %struct.stream*, align 8
  store i64 %percentAttack, i64* %1, align 8
  %2 = call noalias i8* @malloc(i64 40) #6
  %3 = bitcast i8* %2 to %struct.stream*
  store %struct.stream* %3, %struct.stream** %streamPtr, align 8
  %4 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %5 = icmp ne %struct.stream* %4, null
  br i1 %5, label %6, label %63

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %13

; <label>:9                                       ; preds = %6
  %10 = load i64, i64* %1, align 8
  %11 = icmp sle i64 %10, 100
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %9
  br label %15

; <label>:13                                      ; preds = %9, %6
  call void @__assert_fail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = load i64, i64* %1, align 8
  %17 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = call %struct.random* (...) @random_alloc()
  %20 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 1
  store %struct.random* %19, %struct.random** %21, align 8
  %22 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %22, i32 0, i32 1
  %24 = load %struct.random*, %struct.random** %23, align 8
  %25 = icmp ne %struct.random* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %15
  br label %29

; <label>:27                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %26
  %30 = call %struct.vector* @vector_alloc(i64 1)
  %31 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 2
  store %struct.vector* %30, %struct.vector** %32, align 8
  %33 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 2
  %35 = load %struct.vector*, %struct.vector** %34, align 8
  %36 = icmp ne %struct.vector* %35, null
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %29
  br label %40

; <label>:38                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:40                                      ; preds = %39, %37
  %41 = call %struct.queue* @queue_alloc(i64 -1)
  %42 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 3
  store %struct.queue* %41, %struct.queue** %43, align 8
  %44 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 3
  %46 = load %struct.queue*, %struct.queue** %45, align 8
  %47 = icmp ne %struct.queue* %46, null
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %40
  br label %51

; <label>:49                                      ; preds = %40
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %51

; <label>:51                                      ; preds = %50, %48
  %52 = call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null)
  %53 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 4
  store %struct.rbtree* %52, %struct.rbtree** %54, align 8
  %55 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  %56 = getelementptr inbounds %struct.stream, %struct.stream* %55, i32 0, i32 4
  %57 = load %struct.rbtree*, %struct.rbtree** %56, align 8
  %58 = icmp ne %struct.rbtree* %57, null
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %51
  br label %62

; <label>:60                                      ; preds = %51
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %62

; <label>:62                                      ; preds = %61, %59
  br label %63

; <label>:63                                      ; preds = %62, %0
  %64 = load %struct.stream*, %struct.stream** %streamPtr, align 8
  ret %struct.stream* %64
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare %struct.random* @random_alloc(...) #3

declare %struct.vector* @vector_alloc(i64) #3

declare %struct.queue* @queue_alloc(i64) #3

declare %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define void @stream_free(%struct.stream* %streamPtr) #0 {
  %1 = alloca %struct.stream*, align 8
  %allocVectorPtr = alloca %struct.vector*, align 8
  %a = alloca i64, align 8
  %numAlloc = alloca i64, align 8
  %str = alloca i8*, align 8
  store %struct.stream* %streamPtr, %struct.stream** %1, align 8
  %2 = load %struct.stream*, %struct.stream** %1, align 8
  %3 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 2
  %4 = load %struct.vector*, %struct.vector** %3, align 8
  store %struct.vector* %4, %struct.vector** %allocVectorPtr, align 8
  %5 = load %struct.vector*, %struct.vector** %allocVectorPtr, align 8
  %6 = call i64 @vector_getSize(%struct.vector* %5)
  store i64 %6, i64* %numAlloc, align 8
  store i64 0, i64* %a, align 8
  br label %7

; <label>:7                                       ; preds = %16, %0
  %8 = load i64, i64* %a, align 8
  %9 = load i64, i64* %numAlloc, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %19

; <label>:11                                      ; preds = %7
  %12 = load %struct.vector*, %struct.vector** %allocVectorPtr, align 8
  %13 = load i64, i64* %a, align 8
  %14 = call i8* @vector_at(%struct.vector* %12, i64 %13)
  store i8* %14, i8** %str, align 8
  %15 = load i8*, i8** %str, align 8
  call void @free(i8* %15) #6
  br label %16

; <label>:16                                      ; preds = %11
  %17 = load i64, i64* %a, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %a, align 8
  br label %7

; <label>:19                                      ; preds = %7
  %20 = load %struct.stream*, %struct.stream** %1, align 8
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 4
  %22 = load %struct.rbtree*, %struct.rbtree** %21, align 8
  call void @rbtree_free(%struct.rbtree* %22)
  %23 = load %struct.stream*, %struct.stream** %1, align 8
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %23, i32 0, i32 3
  %25 = load %struct.queue*, %struct.queue** %24, align 8
  call void @queue_free(%struct.queue* %25)
  %26 = load %struct.stream*, %struct.stream** %1, align 8
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 2
  %28 = load %struct.vector*, %struct.vector** %27, align 8
  call void @vector_free(%struct.vector* %28)
  %29 = load %struct.stream*, %struct.stream** %1, align 8
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 1
  %31 = load %struct.random*, %struct.random** %30, align 8
  call void @random_free(%struct.random* %31)
  %32 = load %struct.stream*, %struct.stream** %1, align 8
  %33 = bitcast %struct.stream* %32 to i8*
  call void @free(i8* %33) #6
  ret void
}

declare i64 @vector_getSize(%struct.vector*) #3

declare i8* @vector_at(%struct.vector*, i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @rbtree_free(%struct.rbtree*) #3

declare void @queue_free(%struct.queue*) #3

declare void @vector_free(%struct.vector*) #3

declare void @random_free(%struct.random*) #3

; Function Attrs: nounwind uwtable
define i64 @stream_generate(%struct.stream* %streamPtr, %struct.vector* %dictionaryPtr, i64 %numFlow, i64 %seed, i64 %maxLength) #0 {
  %1 = alloca %struct.stream*, align 8
  %2 = alloca %struct.vector*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %numAttack = alloca i64, align 8
  %percentAttack = alloca i64, align 8
  %randomPtr = alloca %struct.random*, align 8
  %allocVectorPtr = alloca %struct.vector*, align 8
  %packetQueuePtr = alloca %struct.queue*, align 8
  %attackMapPtr = alloca %struct.rbtree*, align 8
  %detectorPtr = alloca %struct.detector*, align 8
  %range = alloca i64, align 8
  %f = alloca i64, align 8
  %str = alloca i8*, align 8
  %s = alloca i64, align 8
  %status = alloca i64, align 8
  %length = alloca i64, align 8
  %status1 = alloca i64, align 8
  %l = alloca i64, align 8
  %str2 = alloca i8*, align 8
  %error = alloca i32, align 4
  %status2 = alloca i64, align 8
  store %struct.stream* %streamPtr, %struct.stream** %1, align 8
  store %struct.vector* %dictionaryPtr, %struct.vector** %2, align 8
  store i64 %numFlow, i64* %3, align 8
  store i64 %seed, i64* %4, align 8
  store i64 %maxLength, i64* %5, align 8
  store i64 0, i64* %numAttack, align 8
  %6 = load %struct.stream*, %struct.stream** %1, align 8
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %percentAttack, align 8
  %9 = load %struct.stream*, %struct.stream** %1, align 8
  %10 = getelementptr inbounds %struct.stream, %struct.stream* %9, i32 0, i32 1
  %11 = load %struct.random*, %struct.random** %10, align 8
  store %struct.random* %11, %struct.random** %randomPtr, align 8
  %12 = load %struct.stream*, %struct.stream** %1, align 8
  %13 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 2
  %14 = load %struct.vector*, %struct.vector** %13, align 8
  store %struct.vector* %14, %struct.vector** %allocVectorPtr, align 8
  %15 = load %struct.stream*, %struct.stream** %1, align 8
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 3
  %17 = load %struct.queue*, %struct.queue** %16, align 8
  store %struct.queue* %17, %struct.queue** %packetQueuePtr, align 8
  %18 = load %struct.stream*, %struct.stream** %1, align 8
  %19 = getelementptr inbounds %struct.stream, %struct.stream* %18, i32 0, i32 4
  %20 = load %struct.rbtree*, %struct.rbtree** %19, align 8
  store %struct.rbtree* %20, %struct.rbtree** %attackMapPtr, align 8
  %21 = call %struct.detector* (...) @detector_alloc()
  store %struct.detector* %21, %struct.detector** %detectorPtr, align 8
  %22 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  %23 = icmp ne %struct.detector* %22, null
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %0
  br label %27

; <label>:25                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 220, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %27

; <label>:27                                      ; preds = %26, %24
  %28 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  call void @detector_addPreprocessor(%struct.detector* %28, void (i8*)* @preprocessor_toLower)
  %29 = load %struct.random*, %struct.random** %randomPtr, align 8
  %30 = load i64, i64* %4, align 8
  call void @random_seed(%struct.random* %29, i64 %30)
  %31 = load %struct.queue*, %struct.queue** %packetQueuePtr, align 8
  call void @queue_clear(%struct.queue* %31)
  store i64 95, i64* %range, align 8
  %32 = load i64, i64* %range, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %27
  br label %37

; <label>:35                                      ; preds = %27
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 227, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %37

; <label>:37                                      ; preds = %36, %34
  store i64 1, i64* %f, align 8
  br label %38

; <label>:38                                      ; preds = %151, %37
  %39 = load i64, i64* %f, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %154

; <label>:42                                      ; preds = %38
  %43 = load %struct.random*, %struct.random** %randomPtr, align 8
  %44 = call i64 @random_generate(%struct.random* %43)
  %45 = urem i64 %44, 100
  %46 = load i64, i64* %percentAttack, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %69

; <label>:48                                      ; preds = %42
  %49 = load %struct.random*, %struct.random** %randomPtr, align 8
  %50 = call i64 @random_generate(%struct.random* %49)
  %51 = load i64, i64* @global_numDefaultSignature, align 8
  %52 = urem i64 %50, %51
  store i64 %52, i64* %s, align 8
  %53 = load %struct.vector*, %struct.vector** %2, align 8
  %54 = load i64, i64* %s, align 8
  %55 = call i8* @dictionary_get(%struct.vector* %53, i64 %54)
  store i8* %55, i8** %str, align 8
  %56 = load %struct.rbtree*, %struct.rbtree** %attackMapPtr, align 8
  %57 = load i64, i64* %f, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load i8*, i8** %str, align 8
  %60 = call i64 @rbtree_insert(%struct.rbtree* %56, i8* %58, i8* %59)
  store i64 %60, i64* %status, align 8
  %61 = load i64, i64* %status, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %48
  br label %66

; <label>:64                                      ; preds = %48
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 237, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %66

; <label>:66                                      ; preds = %65, %63
  %67 = load i64, i64* %numAttack, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %numAttack, align 8
  br label %145

; <label>:69                                      ; preds = %42
  %70 = load %struct.random*, %struct.random** %randomPtr, align 8
  %71 = call i64 @random_generate(%struct.random* %70)
  %72 = load i64, i64* %5, align 8
  %73 = urem i64 %71, %72
  %74 = add i64 %73, 1
  store i64 %74, i64* %length, align 8
  %75 = load i64, i64* %length, align 8
  %76 = add nsw i64 %75, 1
  %77 = mul i64 %76, 1
  %78 = call noalias i8* @malloc(i64 %77) #6
  store i8* %78, i8** %str, align 8
  %79 = load %struct.vector*, %struct.vector** %allocVectorPtr, align 8
  %80 = load i8*, i8** %str, align 8
  %81 = call i64 @vector_pushBack(%struct.vector* %79, i8* %80)
  store i64 %81, i64* %status1, align 8
  %82 = load i64, i64* %status1, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %69
  br label %87

; <label>:85                                      ; preds = %69
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 246, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %87

; <label>:87                                      ; preds = %86, %84
  store i64 0, i64* %l, align 8
  br label %88

; <label>:88                                      ; preds = %104, %87
  %89 = load i64, i64* %l, align 8
  %90 = load i64, i64* %length, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %107

; <label>:92                                      ; preds = %88
  %93 = load %struct.random*, %struct.random** %randomPtr, align 8
  %94 = call i64 @random_generate(%struct.random* %93)
  %95 = load i64, i64* %range, align 8
  %96 = urem i64 %94, %95
  %97 = trunc i64 %96 to i8
  %98 = sext i8 %97 to i32
  %99 = add nsw i32 32, %98
  %100 = trunc i32 %99 to i8
  %101 = load i64, i64* %l, align 8
  %102 = load i8*, i8** %str, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8 %100, i8* %103, align 1
  br label %104

; <label>:104                                     ; preds = %92
  %105 = load i64, i64* %l, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %l, align 8
  br label %88

; <label>:107                                     ; preds = %88
  %108 = load i64, i64* %l, align 8
  %109 = load i8*, i8** %str, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 %108
  store i8 0, i8* %110, align 1
  %111 = load i64, i64* %length, align 8
  %112 = add nsw i64 %111, 1
  %113 = mul i64 %112, 1
  %114 = call noalias i8* @malloc(i64 %113) #6
  store i8* %114, i8** %str2, align 8
  %115 = load i8*, i8** %str2, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %107
  br label %120

; <label>:118                                     ; preds = %107
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 253, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %120

; <label>:120                                     ; preds = %119, %117
  %121 = load i8*, i8** %str2, align 8
  %122 = load i8*, i8** %str, align 8
  %123 = call i8* @strcpy(i8* %121, i8* %122) #6
  %124 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  %125 = load i8*, i8** %str2, align 8
  %126 = call i32 @detector_process(%struct.detector* %124, i8* %125)
  store i32 %126, i32* %error, align 4
  %127 = load i32, i32* %error, align 4
  %128 = icmp eq i32 %127, 7
  br i1 %128, label %129, label %143

; <label>:129                                     ; preds = %120
  %130 = load %struct.rbtree*, %struct.rbtree** %attackMapPtr, align 8
  %131 = load i64, i64* %f, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = load i8*, i8** %str, align 8
  %134 = call i64 @rbtree_insert(%struct.rbtree* %130, i8* %132, i8* %133)
  store i64 %134, i64* %status2, align 8
  %135 = load i64, i64* %status2, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

; <label>:137                                     ; preds = %129
  br label %140

; <label>:138                                     ; preds = %129
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 260, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %140

; <label>:140                                     ; preds = %139, %137
  %141 = load i64, i64* %numAttack, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %numAttack, align 8
  br label %143

; <label>:143                                     ; preds = %140, %120
  %144 = load i8*, i8** %str2, align 8
  call void @free(i8* %144) #6
  br label %145

; <label>:145                                     ; preds = %143, %66
  %146 = load i8*, i8** %str, align 8
  %147 = load i64, i64* %f, align 8
  %148 = load %struct.random*, %struct.random** %randomPtr, align 8
  %149 = load %struct.vector*, %struct.vector** %allocVectorPtr, align 8
  %150 = load %struct.queue*, %struct.queue** %packetQueuePtr, align 8
  call void @splitIntoPackets(i8* %146, i64 %147, %struct.random* %148, %struct.vector* %149, %struct.queue* %150)
  br label %151

; <label>:151                                     ; preds = %145
  %152 = load i64, i64* %f, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %f, align 8
  br label %38

; <label>:154                                     ; preds = %38
  %155 = load %struct.queue*, %struct.queue** %packetQueuePtr, align 8
  %156 = load %struct.random*, %struct.random** %randomPtr, align 8
  call void @queue_shuffle(%struct.queue* %155, %struct.random* %156)
  %157 = load %struct.detector*, %struct.detector** %detectorPtr, align 8
  call void @detector_free(%struct.detector* %157)
  %158 = load i64, i64* %numAttack, align 8
  ret i64 %158
}

declare %struct.detector* @detector_alloc(...) #3

declare void @detector_addPreprocessor(%struct.detector*, void (i8*)*) #3

declare void @preprocessor_toLower(i8*) #3

declare void @random_seed(%struct.random*, i64) #3

declare void @queue_clear(%struct.queue*) #3

declare i64 @random_generate(%struct.random*) #3

declare i8* @dictionary_get(%struct.vector*, i64) #3

declare i64 @rbtree_insert(%struct.rbtree*, i8*, i8*) #3

declare i64 @vector_pushBack(%struct.vector*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i32 @detector_process(%struct.detector*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @splitIntoPackets(i8* %str, i64 %flowId, %struct.random* %randomPtr, %struct.vector* %allocVectorPtr, %struct.queue* %packetQueuePtr) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.random*, align 8
  %4 = alloca %struct.vector*, align 8
  %5 = alloca %struct.queue*, align 8
  %numByte = alloca i64, align 8
  %numPacket = alloca i64, align 8
  %numDataByte = alloca i64, align 8
  %p = alloca i64, align 8
  %status = alloca i64, align 8
  %bytes = alloca i8*, align 8
  %packetPtr = alloca %struct.packet*, align 8
  %status1 = alloca i64, align 8
  %lastNumDataByte = alloca i64, align 8
  %bytes2 = alloca i8*, align 8
  %packetPtr3 = alloca %struct.packet*, align 8
  store i8* %str, i8** %1, align 8
  store i64 %flowId, i64* %2, align 8
  store %struct.random* %randomPtr, %struct.random** %3, align 8
  store %struct.vector* %allocVectorPtr, %struct.vector** %4, align 8
  store %struct.queue* %packetQueuePtr, %struct.queue** %5, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i64 @strlen(i8* %6) #8
  store i64 %7, i64* %numByte, align 8
  %8 = load %struct.random*, %struct.random** %3, align 8
  %9 = call i64 @random_generate(%struct.random* %8)
  %10 = load i64, i64* %numByte, align 8
  %11 = urem i64 %9, %10
  %12 = add i64 %11, 1
  store i64 %12, i64* %numPacket, align 8
  %13 = load i64, i64* %numByte, align 8
  %14 = load i64, i64* %numPacket, align 8
  %15 = sdiv i64 %13, %14
  store i64 %15, i64* %numDataByte, align 8
  store i64 0, i64* %p, align 8
  br label %16

; <label>:16                                      ; preds = %73, %0
  %17 = load i64, i64* %p, align 8
  %18 = load i64, i64* %numPacket, align 8
  %19 = sub nsw i64 %18, 1
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %21, label %76

; <label>:21                                      ; preds = %16
  %22 = load i64, i64* %numDataByte, align 8
  %23 = add i64 32, %22
  %24 = call noalias i8* @malloc(i64 %23) #6
  store i8* %24, i8** %bytes, align 8
  %25 = load i8*, i8** %bytes, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %21
  br label %30

; <label>:28                                      ; preds = %21
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 169, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load %struct.vector*, %struct.vector** %4, align 8
  %32 = load i8*, i8** %bytes, align 8
  %33 = call i64 @vector_pushBack(%struct.vector* %31, i8* %32)
  store i64 %33, i64* %status, align 8
  %34 = load i64, i64* %status, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %30
  br label %39

; <label>:37                                      ; preds = %30
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 171, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %39

; <label>:39                                      ; preds = %38, %36
  %40 = load i8*, i8** %bytes, align 8
  %41 = bitcast i8* %40 to %struct.packet*
  store %struct.packet* %41, %struct.packet** %packetPtr, align 8
  %42 = load i64, i64* %2, align 8
  %43 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %44 = getelementptr inbounds %struct.packet, %struct.packet* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %p, align 8
  %46 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %47 = getelementptr inbounds %struct.packet, %struct.packet* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %numPacket, align 8
  %49 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %50 = getelementptr inbounds %struct.packet, %struct.packet* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %numDataByte, align 8
  %52 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %53 = getelementptr inbounds %struct.packet, %struct.packet* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %55 = getelementptr inbounds %struct.packet, %struct.packet* %54, i32 0, i32 4
  %56 = getelementptr inbounds [0 x i8], [0 x i8]* %55, i32 0, i32 0
  %57 = load i8*, i8** %1, align 8
  %58 = load i64, i64* %p, align 8
  %59 = load i64, i64* %numDataByte, align 8
  %60 = mul nsw i64 %58, %59
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i64, i64* %numDataByte, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %61, i64 %62, i32 1, i1 false)
  %63 = load %struct.queue*, %struct.queue** %5, align 8
  %64 = load %struct.packet*, %struct.packet** %packetPtr, align 8
  %65 = bitcast %struct.packet* %64 to i8*
  %66 = call i64 @queue_push(%struct.queue* %63, i8* %65)
  store i64 %66, i64* %status, align 8
  %67 = load i64, i64* %status, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

; <label>:69                                      ; preds = %39
  br label %72

; <label>:70                                      ; preds = %39
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 179, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %72

; <label>:72                                      ; preds = %71, %69
  br label %73

; <label>:73                                      ; preds = %72
  %74 = load i64, i64* %p, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %p, align 8
  br label %16

; <label>:76                                      ; preds = %16
  %77 = load i64, i64* %numDataByte, align 8
  %78 = load i64, i64* %numByte, align 8
  %79 = load i64, i64* %numPacket, align 8
  %80 = srem i64 %78, %79
  %81 = add nsw i64 %77, %80
  store i64 %81, i64* %lastNumDataByte, align 8
  %82 = load i64, i64* %lastNumDataByte, align 8
  %83 = add i64 32, %82
  %84 = call noalias i8* @malloc(i64 %83) #6
  store i8* %84, i8** %bytes2, align 8
  %85 = load i8*, i8** %bytes2, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %76
  br label %90

; <label>:88                                      ; preds = %76
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 185, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %90

; <label>:90                                      ; preds = %89, %87
  %91 = load %struct.vector*, %struct.vector** %4, align 8
  %92 = load i8*, i8** %bytes2, align 8
  %93 = call i64 @vector_pushBack(%struct.vector* %91, i8* %92)
  store i64 %93, i64* %status1, align 8
  %94 = load i64, i64* %status1, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

; <label>:96                                      ; preds = %90
  br label %99

; <label>:97                                      ; preds = %90
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 187, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %99

; <label>:99                                      ; preds = %98, %96
  %100 = load i8*, i8** %bytes2, align 8
  %101 = bitcast i8* %100 to %struct.packet*
  store %struct.packet* %101, %struct.packet** %packetPtr3, align 8
  %102 = load i64, i64* %2, align 8
  %103 = load %struct.packet*, %struct.packet** %packetPtr3, align 8
  %104 = getelementptr inbounds %struct.packet, %struct.packet* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %p, align 8
  %106 = load %struct.packet*, %struct.packet** %packetPtr3, align 8
  %107 = getelementptr inbounds %struct.packet, %struct.packet* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %numPacket, align 8
  %109 = load %struct.packet*, %struct.packet** %packetPtr3, align 8
  %110 = getelementptr inbounds %struct.packet, %struct.packet* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* %lastNumDataByte, align 8
  %112 = load %struct.packet*, %struct.packet** %packetPtr3, align 8
  %113 = getelementptr inbounds %struct.packet, %struct.packet* %112, i32 0, i32 3
  store i64 %111, i64* %113, align 8
  %114 = load %struct.packet*, %struct.packet** %packetPtr3, align 8
  %115 = getelementptr inbounds %struct.packet, %struct.packet* %114, i32 0, i32 4
  %116 = getelementptr inbounds [0 x i8], [0 x i8]* %115, i32 0, i32 0
  %117 = load i8*, i8** %1, align 8
  %118 = load i64, i64* %p, align 8
  %119 = load i64, i64* %numDataByte, align 8
  %120 = mul nsw i64 %118, %119
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  %122 = load i64, i64* %lastNumDataByte, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %121, i64 %122, i32 1, i1 false)
  %123 = load %struct.queue*, %struct.queue** %5, align 8
  %124 = load %struct.packet*, %struct.packet** %packetPtr3, align 8
  %125 = bitcast %struct.packet* %124 to i8*
  %126 = call i64 @queue_push(%struct.queue* %123, i8* %125)
  store i64 %126, i64* %status1, align 8
  %127 = load i64, i64* %status1, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

; <label>:129                                     ; preds = %99
  br label %132

; <label>:130                                     ; preds = %99
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 195, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %132

; <label>:132                                     ; preds = %131, %129
  ret void
}

declare void @queue_shuffle(%struct.queue*, %struct.random*) #3

declare void @detector_free(%struct.detector*) #3

; Function Attrs: nounwind uwtable
define i8* @stream_getPacket(%struct.stream* %streamPtr) #0 {
  %1 = alloca %struct.stream*, align 8
  store %struct.stream* %streamPtr, %struct.stream** %1, align 8
  %2 = load %struct.stream*, %struct.stream** %1, align 8
  %3 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 3
  %4 = load %struct.queue*, %struct.queue** %3, align 8
  %5 = call i8* @queue_pop(%struct.queue* %4)
  ret i8* %5
}

declare i8* @queue_pop(%struct.queue*) #3

; Function Attrs: nounwind uwtable
define i8* @TMstream_getPacket(%struct.stream* %streamPtr) #0 {
  %1 = alloca %struct.stream*, align 8
  store %struct.stream* %streamPtr, %struct.stream** %1, align 8
  %2 = load %struct.stream*, %struct.stream** %1, align 8
  %3 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 3
  %4 = load %struct.queue*, %struct.queue** %3, align 8
  %5 = call i8* @TMqueue_pop(%struct.queue* %4)
  ret i8* %5
}

declare i8* @TMqueue_pop(%struct.queue*) #3

; Function Attrs: nounwind uwtable
define i64 @stream_isAttack(%struct.stream* %streamPtr, i64 %flowId) #0 {
  %1 = alloca %struct.stream*, align 8
  %2 = alloca i64, align 8
  store %struct.stream* %streamPtr, %struct.stream** %1, align 8
  store i64 %flowId, i64* %2, align 8
  %3 = load %struct.stream*, %struct.stream** %1, align 8
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 4
  %5 = load %struct.rbtree*, %struct.rbtree** %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i64 @rbtree_contains(%struct.rbtree* %5, i8* %7)
  ret i64 %8
}

declare i64 @rbtree_contains(%struct.rbtree*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i64 @queue_push(%struct.queue*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
