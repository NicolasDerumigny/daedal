; ModuleID = '../bin/stream.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i64, %struct.random*, %struct.vector*, %struct.queue*, %struct.rbtree* }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.vector = type { i64, i64, i8** }
%struct.queue = type opaque
%struct.rbtree = type opaque
%struct.detector = type opaque

@.str = private unnamed_addr constant [43 x i8] c"percentAttack >= 0 && percentAttack <= 100\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"stream.c\00", align 1
@__PRETTY_FUNCTION__.stream_alloc = private unnamed_addr constant [29 x i8] c"stream_t *stream_alloc(long)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"streamPtr->randomPtr\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"streamPtr->allocVectorPtr\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"streamPtr->packetQueuePtr\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"streamPtr->attackMapPtr\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"detectorPtr\00", align 1
@__PRETTY_FUNCTION__.stream_generate = private unnamed_addr constant [67 x i8] c"long stream_generate(stream_t *, dictionary_t *, long, long, long)\00", align 1
@global_numDefaultSignature = external constant i64, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"str2\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@__PRETTY_FUNCTION__.splitIntoPackets = private unnamed_addr constant [71 x i8] c"void splitIntoPackets(char *, long, random_t *, vector_t *, queue_t *)\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.stream* @stream_alloc(i64 %percentAttack) #0 {
  %1 = tail call noalias i8* @malloc(i64 40) #6
  %2 = bitcast i8* %1 to %struct.stream*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %32, label %4

; <label>:4                                       ; preds = %0
  %5 = icmp ult i64 %percentAttack, 101
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 107, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:7                                       ; preds = %4
  %8 = bitcast i8* %1 to i64*
  store i64 %percentAttack, i64* %8, align 8
  %9 = tail call %struct.random* (...) @random_alloc() #6
  %10 = getelementptr inbounds i8, i8* %1, i64 8
  %11 = bitcast i8* %10 to %struct.random**
  store %struct.random* %9, %struct.random** %11, align 8
  %12 = icmp eq %struct.random* %9, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %7
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 110, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:14                                      ; preds = %7
  %15 = tail call %struct.vector* @vector_alloc(i64 1) #6
  %16 = getelementptr inbounds i8, i8* %1, i64 16
  %17 = bitcast i8* %16 to %struct.vector**
  store %struct.vector* %15, %struct.vector** %17, align 8
  %18 = icmp eq %struct.vector* %15, null
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %14
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 112, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:20                                      ; preds = %14
  %21 = tail call %struct.queue* @queue_alloc(i64 -1) #6
  %22 = getelementptr inbounds i8, i8* %1, i64 24
  %23 = bitcast i8* %22 to %struct.queue**
  store %struct.queue* %21, %struct.queue** %23, align 8
  %24 = icmp eq %struct.queue* %21, null
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %20
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 114, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:26                                      ; preds = %20
  %27 = tail call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* null) #6
  %28 = getelementptr inbounds i8, i8* %1, i64 32
  %29 = bitcast i8* %28 to %struct.rbtree**
  store %struct.rbtree* %27, %struct.rbtree** %29, align 8
  %30 = icmp eq %struct.rbtree* %27, null
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %26
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 116, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.stream_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:32                                      ; preds = %26, %0
  ret %struct.stream* %2
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
define void @stream_free(%struct.stream* nocapture %streamPtr) #0 {
  %1 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 2
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i64 @vector_getSize(%struct.vector* %2) #6
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %a.01 = phi i64 [ %6, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %5 = tail call i8* @vector_at(%struct.vector* %2, i64 %a.01) #6
  tail call void @free(i8* %5) #6
  %6 = add nuw nsw i64 %a.01, 1
  %exitcond = icmp eq i64 %6, %3
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 4
  %8 = load %struct.rbtree*, %struct.rbtree** %7, align 8
  tail call void @rbtree_free(%struct.rbtree* %8) #6
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 3
  %10 = load %struct.queue*, %struct.queue** %9, align 8
  tail call void @queue_free(%struct.queue* %10) #6
  %11 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @vector_free(%struct.vector* %11) #6
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 1
  %13 = load %struct.random*, %struct.random** %12, align 8
  tail call void @random_free(%struct.random* %13) #6
  %14 = bitcast %struct.stream* %streamPtr to i8*
  tail call void @free(i8* %14) #6
  ret void
}

declare i64 @vector_getSize(%struct.vector*) #3

declare i8* @vector_at(%struct.vector*, i64) #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

declare void @rbtree_free(%struct.rbtree*) #3

declare void @queue_free(%struct.queue*) #3

declare void @vector_free(%struct.vector*) #3

declare void @random_free(%struct.random*) #3

; Function Attrs: nounwind uwtable
define i64 @stream_generate(%struct.stream* nocapture readonly %streamPtr, %struct.vector* %dictionaryPtr, i64 %numFlow, i64 %seed, i64 %maxLength) #0 {
  %1 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 1
  %4 = load %struct.random*, %struct.random** %3, align 8
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 2
  %6 = load %struct.vector*, %struct.vector** %5, align 8
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 3
  %8 = load %struct.queue*, %struct.queue** %7, align 8
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 4
  %10 = load %struct.rbtree*, %struct.rbtree** %9, align 8
  %11 = tail call %struct.detector* (...) @detector_alloc() #6
  %12 = icmp eq %struct.detector* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 220, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i64 0, i64 0)) #7
  unreachable

; <label>:14                                      ; preds = %0
  tail call void @detector_addPreprocessor(%struct.detector* nonnull %11, void (i8*)* nonnull @preprocessor_toLower) #6
  tail call void @random_seed(%struct.random* %4, i64 %seed) #6
  tail call void @queue_clear(%struct.queue* %8) #6
  %15 = icmp slt i64 %numFlow, 1
  br i1 %15, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %14
  %16 = load i64, i64* @global_numDefaultSignature, align 8
  br label %20

; <label>:17                                      ; preds = %108
  %18 = add nuw nsw i64 %f.012, 1
  %19 = icmp slt i64 %f.012, %numFlow
  br i1 %19, label %20, label %._crit_edge17.loopexit

; <label>:20                                      ; preds = %17, %.lr.ph16
  %numAttack.014 = phi i64 [ 0, %.lr.ph16 ], [ %numAttack.2, %17 ]
  %f.012 = phi i64 [ 1, %.lr.ph16 ], [ %18, %17 ]
  %21 = tail call i64 @random_generate(%struct.random* %4) #6
  %22 = urem i64 %21, 100
  %23 = icmp ult i64 %22, %2
  %24 = tail call i64 @random_generate(%struct.random* %4) #6
  br i1 %23, label %25, label %34

; <label>:25                                      ; preds = %20
  %26 = urem i64 %24, %16
  %27 = tail call i8* @dictionary_get(%struct.vector* %dictionaryPtr, i64 %26) #6
  %28 = inttoptr i64 %f.012 to i8*
  %29 = tail call i64 @rbtree_insert(%struct.rbtree* %10, i8* %28, i8* %27) #6
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %25
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 237, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i64 0, i64 0)) #7
  unreachable

; <label>:32                                      ; preds = %25
  %33 = add nsw i64 %numAttack.014, 1
  br label %65

; <label>:34                                      ; preds = %20
  %35 = urem i64 %24, %maxLength
  %36 = add i64 %35, 1
  %37 = add i64 %35, 2
  %38 = tail call noalias i8* @malloc(i64 %37) #6
  %39 = tail call i64 @vector_pushBack(%struct.vector* %6, i8* %38) #6
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %42, label %.preheader

.preheader:                                       ; preds = %34
  %41 = icmp sgt i64 %36, 0
  br i1 %41, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

; <label>:42                                      ; preds = %34
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 246, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i64 0, i64 0)) #7
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %l.011 = phi i64 [ %48, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %43 = tail call i64 @random_generate(%struct.random* %4) #6
  %44 = urem i64 %43, 95
  %45 = trunc i64 %44 to i8
  %46 = add nuw i8 %45, 32
  %47 = getelementptr inbounds i8, i8* %38, i64 %l.011
  store i8 %46, i8* %47, align 1
  %48 = add nuw nsw i64 %l.011, 1
  %exitcond = icmp eq i64 %48, %36
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %l.0.lcssa = phi i64 [ 0, %.preheader ], [ %36, %._crit_edge.loopexit ]
  %49 = getelementptr inbounds i8, i8* %38, i64 %l.0.lcssa
  store i8 0, i8* %49, align 1
  %50 = tail call noalias i8* @malloc(i64 %37) #6
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %._crit_edge
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 253, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i64 0, i64 0)) #7
  unreachable

; <label>:53                                      ; preds = %._crit_edge
  %54 = tail call i8* @strcpy(i8* nonnull %50, i8* nonnull %38) #6
  %55 = tail call i32 @detector_process(%struct.detector* nonnull %11, i8* nonnull %50) #6
  %56 = icmp eq i32 %55, 7
  br i1 %56, label %57, label %64

; <label>:57                                      ; preds = %53
  %58 = inttoptr i64 %f.012 to i8*
  %59 = tail call i64 @rbtree_insert(%struct.rbtree* %10, i8* %58, i8* nonnull %38) #6
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %57
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 260, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.stream_generate, i64 0, i64 0)) #7
  unreachable

; <label>:62                                      ; preds = %57
  %63 = add nsw i64 %numAttack.014, 1
  br label %64

; <label>:64                                      ; preds = %62, %53
  %numAttack.1 = phi i64 [ %63, %62 ], [ %numAttack.014, %53 ]
  tail call void @free(i8* nonnull %50) #6
  br label %65

; <label>:65                                      ; preds = %64, %32
  %str.0 = phi i8* [ %27, %32 ], [ %38, %64 ]
  %numAttack.2 = phi i64 [ %33, %32 ], [ %numAttack.1, %64 ]
  %66 = tail call i64 @strlen(i8* %str.0) #8
  %67 = tail call i64 @random_generate(%struct.random* %4) #6
  %68 = urem i64 %67, %66
  %69 = add i64 %68, 1
  %70 = sdiv i64 %66, %69
  %71 = icmp sgt i64 %68, 0
  br i1 %71, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %65
  %72 = add i64 %70, 32
  br label %73

; <label>:73                                      ; preds = %95, %.lr.ph.i
  %p.04.i = phi i64 [ 0, %.lr.ph.i ], [ %96, %95 ]
  %74 = tail call noalias i8* @malloc(i64 %72) #6
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %73
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 169, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i64 0, i64 0)) #7
  unreachable

; <label>:77                                      ; preds = %73
  %78 = tail call i64 @vector_pushBack(%struct.vector* %6, i8* nonnull %74) #6
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %77
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 171, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i64 0, i64 0)) #7
  unreachable

; <label>:81                                      ; preds = %77
  %82 = bitcast i8* %74 to i64*
  store i64 %f.012, i64* %82, align 8
  %83 = getelementptr inbounds i8, i8* %74, i64 8
  %84 = bitcast i8* %83 to i64*
  store i64 %p.04.i, i64* %84, align 8
  %85 = getelementptr inbounds i8, i8* %74, i64 16
  %86 = bitcast i8* %85 to i64*
  store i64 %69, i64* %86, align 8
  %87 = getelementptr inbounds i8, i8* %74, i64 24
  %88 = bitcast i8* %87 to i64*
  store i64 %70, i64* %88, align 8
  %89 = getelementptr inbounds i8, i8* %74, i64 32
  %90 = mul nsw i64 %p.04.i, %70
  %91 = getelementptr inbounds i8, i8* %str.0, i64 %90
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %91, i64 %70, i32 1, i1 false) #6
  %92 = tail call i64 @queue_push(%struct.queue* %8, i8* nonnull %74) #6
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

; <label>:94                                      ; preds = %81
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 179, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i64 0, i64 0)) #7
  unreachable

; <label>:95                                      ; preds = %81
  %96 = add nuw nsw i64 %p.04.i, 1
  %97 = icmp slt i64 %96, %68
  br i1 %97, label %73, label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %95
  %.lcssa = phi i64 [ %96, %95 ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %65
  %p.0.lcssa.i = phi i64 [ 0, %65 ], [ %.lcssa, %._crit_edge.i.loopexit ]
  %98 = srem i64 %66, %69
  %99 = add nsw i64 %98, %70
  %100 = add i64 %99, 32
  %101 = tail call noalias i8* @malloc(i64 %100) #6
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %104

; <label>:103                                     ; preds = %._crit_edge.i
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 185, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i64 0, i64 0)) #7
  unreachable

; <label>:104                                     ; preds = %._crit_edge.i
  %105 = tail call i64 @vector_pushBack(%struct.vector* %6, i8* nonnull %101) #6
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

; <label>:107                                     ; preds = %104
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 187, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i64 0, i64 0)) #7
  unreachable

; <label>:108                                     ; preds = %104
  %109 = bitcast i8* %101 to i64*
  store i64 %f.012, i64* %109, align 8
  %110 = getelementptr inbounds i8, i8* %101, i64 8
  %111 = bitcast i8* %110 to i64*
  store i64 %p.0.lcssa.i, i64* %111, align 8
  %112 = getelementptr inbounds i8, i8* %101, i64 16
  %113 = bitcast i8* %112 to i64*
  store i64 %69, i64* %113, align 8
  %114 = getelementptr inbounds i8, i8* %101, i64 24
  %115 = bitcast i8* %114 to i64*
  store i64 %99, i64* %115, align 8
  %116 = getelementptr inbounds i8, i8* %101, i64 32
  %117 = mul nsw i64 %p.0.lcssa.i, %70
  %118 = getelementptr inbounds i8, i8* %str.0, i64 %117
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %118, i64 %99, i32 1, i1 false) #6
  %119 = tail call i64 @queue_push(%struct.queue* %8, i8* nonnull %101) #6
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %17

; <label>:121                                     ; preds = %108
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 195, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.splitIntoPackets, i64 0, i64 0)) #7
  unreachable

._crit_edge17.loopexit:                           ; preds = %17
  %numAttack.2.lcssa49 = phi i64 [ %numAttack.2, %17 ]
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit, %14
  %numAttack.0.lcssa = phi i64 [ 0, %14 ], [ %numAttack.2.lcssa49, %._crit_edge17.loopexit ]
  tail call void @queue_shuffle(%struct.queue* %8, %struct.random* %4) #6
  tail call void @detector_free(%struct.detector* nonnull %11) #6
  ret i64 %numAttack.0.lcssa
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
declare i8* @strcpy(i8*, i8* nocapture readonly) #1

declare i32 @detector_process(%struct.detector*, i8*) #3

declare void @queue_shuffle(%struct.queue*, %struct.random*) #3

declare void @detector_free(%struct.detector*) #3

; Function Attrs: nounwind uwtable
define i8* @stream_getPacket(%struct.stream* nocapture readonly %streamPtr) #0 {
  %1 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 3
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = tail call i8* @queue_pop(%struct.queue* %2) #6
  ret i8* %3
}

declare i8* @queue_pop(%struct.queue*) #3

; Function Attrs: nounwind uwtable
define i8* @TMstream_getPacket(%struct.stream* nocapture readonly %streamPtr) #0 {
  %1 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 3
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = tail call i8* @TMqueue_pop(%struct.queue* %2) #6
  ret i8* %3
}

declare i8* @TMqueue_pop(%struct.queue*) #3

; Function Attrs: nounwind uwtable
define i64 @stream_isAttack(%struct.stream* nocapture readonly %streamPtr, i64 %flowId) #0 {
  %1 = getelementptr inbounds %struct.stream, %struct.stream* %streamPtr, i64 0, i32 4
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = inttoptr i64 %flowId to i8*
  %4 = tail call i64 @rbtree_contains(%struct.rbtree* %2, i8* %3) #6
  ret i64 %4
}

declare i64 @rbtree_contains(%struct.rbtree*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #4

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
