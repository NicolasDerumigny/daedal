; ModuleID = '../bin/data.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i64, i64, i8*, %struct.random* }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.net = type opaque
%struct.list_node = type { i8*, %struct.list_node* }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.queue = type opaque
%struct.vector = type { i64, i64, i8** }
%struct.bitmap = type { i64, i64, i64* }

@.str = private unnamed_addr constant [7 x i8] c"netPtr\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"data.c\00", align 1
@__PRETTY_FUNCTION__.data_generate = private unnamed_addr constant [49 x i8] c"net_t *data_generate(data_t *, long, long, long)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"thresholdsTable\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"thresholds\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"workQueuePtr\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"dependencyVectorPtr\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"orderedBitmapPtr\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"doneBitmapPtr\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"numOrder == numVar\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"value != DATA_INIT\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"record <= (dataPtr->records + numRecord * numVar)\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"start >= 0 && start <= dataPtr->numRecord\00", align 1
@__PRETTY_FUNCTION__.data_sort = private unnamed_addr constant [43 x i8] c"void data_sort(data_t *, long, long, long)\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"num >= 0 && num <= dataPtr->numRecord\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"start + num >= 0 && start + num <= dataPtr->numRecord\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.data* @data_alloc(i64 %numVar, i64 %numRecord, %struct.random* %randomPtr) #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #7
  %2 = bitcast i8* %1 to %struct.data*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %17, label %4

; <label>:4                                       ; preds = %0
  %5 = mul nsw i64 %numRecord, %numVar
  %6 = tail call noalias i8* @malloc(i64 %5) #7
  %7 = getelementptr inbounds i8, i8* %1, i64 16
  %8 = bitcast i8* %7 to i8**
  store i8* %6, i8** %8, align 8
  %9 = icmp eq i8* %6, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %4
  tail call void @free(i8* nonnull %1) #7
  br label %17

; <label>:11                                      ; preds = %4
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 2, i64 %5, i32 1, i1 false)
  %12 = bitcast i8* %1 to i64*
  store i64 %numVar, i64* %12, align 8
  %13 = getelementptr inbounds i8, i8* %1, i64 8
  %14 = bitcast i8* %13 to i64*
  store i64 %numRecord, i64* %14, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 24
  %16 = bitcast i8* %15 to %struct.random**
  store %struct.random* %randomPtr, %struct.random** %16, align 8
  br label %17

; <label>:17                                      ; preds = %11, %0, %10
  %.0 = phi %struct.data* [ null, %10 ], [ %2, %0 ], [ %2, %11 ]
  ret %struct.data* %.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @data_free(%struct.data* nocapture %dataPtr) #0 {
  %1 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 2
  %2 = load i8*, i8** %1, align 8
  tail call void @free(i8* %2) #7
  %3 = bitcast %struct.data* %dataPtr to i8*
  tail call void @free(i8* %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.net* @data_generate(%struct.data* nocapture readonly %dataPtr, i64 %seed, i64 %maxNumParent, i64 %percentParent) #0 {
  %it = alloca %struct.list_node*, align 8
  %it5 = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 3
  %2 = load %struct.random*, %struct.random** %1, align 8
  %3 = icmp sgt i64 %seed, -1
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  tail call void @random_seed(%struct.random* %2, i64 %seed) #7
  br label %5

; <label>:5                                       ; preds = %4, %0
  %6 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = tail call %struct.net* @net_alloc(i64 %7) #7
  %9 = icmp eq %struct.net* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %5
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 149, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

; <label>:11                                      ; preds = %5
  tail call void @net_generateRandomEdges(%struct.net* nonnull %8, i64 %maxNumParent, i64 %percentParent, %struct.random* %2) #7
  %12 = shl i64 %7, 3
  %13 = tail call noalias i8* @malloc(i64 %12) #7
  %14 = bitcast i8* %13 to i64**
  %15 = icmp eq i8* %13, null
  br i1 %15, label %17, label %.preheader4

.preheader4:                                      ; preds = %11
  %16 = icmp sgt i64 %7, 0
  br i1 %16, label %.lr.ph33.preheader, label %._crit_edge34

.lr.ph33.preheader:                               ; preds = %.preheader4
  br label %.lr.ph33

; <label>:17                                      ; preds = %11
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 158, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

.lr.ph33:                                         ; preds = %.lr.ph33.preheader, %._crit_edge31
  %v.032 = phi i64 [ %36, %._crit_edge31 ], [ 0, %.lr.ph33.preheader ]
  %18 = tail call %struct.list* @net_getParentIdListPtr(%struct.net* nonnull %8, i64 %v.032) #7
  %19 = tail call i64 @list_getSize(%struct.list* %18) #7
  %20 = trunc i64 %19 to i32
  %21 = shl i32 1, %20
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call noalias i8* @malloc(i64 %23) #7
  %25 = bitcast i8* %24 to i64*
  %26 = icmp eq i8* %24, null
  br i1 %26, label %28, label %.preheader3

.preheader3:                                      ; preds = %.lr.ph33
  %27 = icmp eq i32 %20, 31
  br i1 %27, label %._crit_edge31, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.preheader3
  br label %.lr.ph30

; <label>:28                                      ; preds = %.lr.ph33
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 164, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %.lr.ph30
  %t.029 = phi i64 [ %32, %.lr.ph30 ], [ 0, %.lr.ph30.preheader ]
  %29 = tail call i64 @random_generate(%struct.random* %2) #7
  %30 = urem i64 %29, 101
  %31 = getelementptr inbounds i64, i64* %25, i64 %t.029
  store i64 %30, i64* %31, align 8
  %32 = add nuw nsw i64 %t.029, 1
  %33 = icmp slt i64 %32, %22
  br i1 %33, label %.lr.ph30, label %._crit_edge31.loopexit

._crit_edge31.loopexit:                           ; preds = %.lr.ph30
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %.preheader3
  %34 = getelementptr inbounds i64*, i64** %14, i64 %v.032
  %35 = bitcast i64** %34 to i8**
  store i8* %24, i8** %35, align 8
  %36 = add nuw nsw i64 %v.032, 1
  %37 = icmp slt i64 %36, %7
  br i1 %37, label %.lr.ph33, label %._crit_edge34.loopexit

._crit_edge34.loopexit:                           ; preds = %._crit_edge31
  br label %._crit_edge34

._crit_edge34:                                    ; preds = %._crit_edge34.loopexit, %.preheader4
  %38 = tail call noalias i8* @malloc(i64 %12) #7
  %39 = bitcast i8* %38 to i64*
  %40 = icmp eq i8* %38, null
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %._crit_edge34
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 178, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

; <label>:42                                      ; preds = %._crit_edge34
  %43 = tail call %struct.queue* @queue_alloc(i64 -1) #7
  %44 = icmp eq %struct.queue* %43, null
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %42
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 182, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

; <label>:46                                      ; preds = %42
  %47 = tail call %struct.vector* @vector_alloc(i64 1) #7
  %48 = icmp eq %struct.vector* %47, null
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %46
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 185, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

; <label>:50                                      ; preds = %46
  %51 = tail call %struct.bitmap* @bitmap_alloc(i64 %7) #7
  %52 = icmp eq %struct.bitmap* %51, null
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %50
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 188, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

; <label>:54                                      ; preds = %50
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %51) #7
  %55 = tail call %struct.bitmap* @bitmap_alloc(i64 %7) #7
  %56 = icmp eq %struct.bitmap* %55, null
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %54
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 192, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

; <label>:58                                      ; preds = %54
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %55) #7
  %59 = call i64 @bitmap_findClear(%struct.bitmap* nonnull %55, i64 0) #7
  %60 = icmp sgt i64 %59, -1
  br i1 %60, label %.lr.ph75.preheader, label %.outer.outer._crit_edge

.lr.ph75.preheader:                               ; preds = %58
  br label %.lr.ph75

.outer.outer.loopexit:                            ; preds = %111
  %numOrder.2.lcssa = phi i64 [ %numOrder.2, %111 ]
  %61 = add nsw i64 %.lcssa98, 1
  %62 = call i64 @bitmap_findClear(%struct.bitmap* nonnull %55, i64 %61) #7
  %63 = icmp sgt i64 %62, -1
  br i1 %63, label %.lr.ph75, label %.outer.outer._crit_edge.loopexit81

.lr.ph75:                                         ; preds = %.lr.ph75.preheader, %.outer.outer.loopexit
  %64 = phi i64 [ %62, %.outer.outer.loopexit ], [ %59, %.lr.ph75.preheader ]
  %numOrder.0.ph.ph77 = phi i64 [ %numOrder.2.lcssa, %.outer.outer.loopexit ], [ 0, %.lr.ph75.preheader ]
  br label %65

; <label>:65                                      ; preds = %.lr.ph75, %.outer.backedge
  %66 = phi i64 [ %64, %.lr.ph75 ], [ %71, %.outer.backedge ]
  %67 = call %struct.list* @net_getChildIdListPtr(%struct.net* nonnull %8, i64 %66) #7
  %68 = call i64 @list_getSize(%struct.list* %67) #7
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %73, label %.outer.backedge

.outer.backedge:                                  ; preds = %65, %._crit_edge23
  %70 = add nsw i64 %66, 1
  %71 = call i64 @bitmap_findClear(%struct.bitmap* nonnull %55, i64 %70) #7
  %72 = icmp sgt i64 %71, -1
  br i1 %72, label %65, label %.outer.outer._crit_edge.loopexit

; <label>:73                                      ; preds = %65
  call void @queue_clear(%struct.queue* nonnull %43) #7
  %74 = inttoptr i64 %66 to i8*
  %75 = call i64 @queue_push(%struct.queue* nonnull %43, i8* %74) #7
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %79, label %.preheader2

.preheader2:                                      ; preds = %73
  %77 = call i64 @queue_isEmpty(%struct.queue* nonnull %43) #7
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %.lr.ph22.preheader, label %._crit_edge23

.lr.ph22.preheader:                               ; preds = %.preheader2
  br label %.lr.ph22

; <label>:79                                      ; preds = %73
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 208, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

.loopexit:                                        ; preds = %93
  %80 = call i64 @queue_isEmpty(%struct.queue* nonnull %43) #7
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %.lr.ph22, label %._crit_edge23.loopexit

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %.loopexit
  %82 = call i8* @queue_pop(%struct.queue* nonnull %43) #7
  %83 = ptrtoint i8* %82 to i64
  %84 = call i64 @bitmap_set(%struct.bitmap* nonnull %55, i64 %83) #7
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

; <label>:86                                      ; preds = %.lr.ph22
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 212, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

; <label>:87                                      ; preds = %.lr.ph22
  %88 = call i64 @vector_pushBack(%struct.vector* nonnull %47, i8* %82) #7
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

; <label>:90                                      ; preds = %87
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 214, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

; <label>:91                                      ; preds = %87
  %92 = call %struct.list* @net_getParentIdListPtr(%struct.net* nonnull %8, i64 %83) #7
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %92) #7
  br label %93

; <label>:93                                      ; preds = %96, %91
  %94 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %92) #9
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %.loopexit, label %96

; <label>:96                                      ; preds = %93
  %97 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %92) #7
  %98 = call i64 @queue_push(%struct.queue* nonnull %43, i8* %97) #7
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %93

; <label>:100                                     ; preds = %96
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 221, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

._crit_edge23.loopexit:                           ; preds = %.loopexit
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit, %.preheader2
  %101 = call i64 @vector_getSize(%struct.vector* nonnull %47) #7
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %.lr.ph27.preheader, label %.outer.backedge

.lr.ph27.preheader:                               ; preds = %._crit_edge23
  %.lcssa100 = phi i64 [ %101, %._crit_edge23 ]
  %.lcssa98 = phi i64 [ %66, %._crit_edge23 ]
  br label %.lr.ph27

.lr.ph27:                                         ; preds = %.lr.ph27.preheader, %111
  %numOrder.125 = phi i64 [ %numOrder.2, %111 ], [ %numOrder.0.ph.ph77, %.lr.ph27.preheader ]
  %i.024 = phi i64 [ %112, %111 ], [ 0, %.lr.ph27.preheader ]
  %103 = call i8* @vector_popBack(%struct.vector* nonnull %47) #7
  %104 = ptrtoint i8* %103 to i64
  %105 = call i64 @bitmap_isSet(%struct.bitmap* nonnull %51, i64 %104) #7
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

; <label>:107                                     ; preds = %.lr.ph27
  %108 = call i64 @bitmap_set(%struct.bitmap* nonnull %51, i64 %104) #7
  %109 = add nsw i64 %numOrder.125, 1
  %110 = getelementptr inbounds i64, i64* %39, i64 %numOrder.125
  store i64 %104, i64* %110, align 8
  br label %111

; <label>:111                                     ; preds = %.lr.ph27, %107
  %numOrder.2 = phi i64 [ %numOrder.125, %.lr.ph27 ], [ %109, %107 ]
  %112 = add nuw nsw i64 %i.024, 1
  %113 = icmp slt i64 %112, %.lcssa100
  br i1 %113, label %.lr.ph27, label %.outer.outer.loopexit

.outer.outer._crit_edge.loopexit:                 ; preds = %.outer.backedge
  %numOrder.0.ph.ph77.lcssa104 = phi i64 [ %numOrder.0.ph.ph77, %.outer.backedge ]
  br label %.outer.outer._crit_edge

.outer.outer._crit_edge.loopexit81:               ; preds = %.outer.outer.loopexit
  %numOrder.2.lcssa.lcssa = phi i64 [ %numOrder.2.lcssa, %.outer.outer.loopexit ]
  br label %.outer.outer._crit_edge

.outer.outer._crit_edge:                          ; preds = %.outer.outer._crit_edge.loopexit81, %.outer.outer._crit_edge.loopexit, %58
  %numOrder.0.ph.ph.lcssa = phi i64 [ 0, %58 ], [ %numOrder.0.ph.ph77.lcssa104, %.outer.outer._crit_edge.loopexit ], [ %numOrder.2.lcssa.lcssa, %.outer.outer._crit_edge.loopexit81 ]
  %114 = icmp eq i64 %numOrder.0.ph.ph.lcssa, %7
  br i1 %114, label %116, label %115

; <label>:115                                     ; preds = %.outer.outer._crit_edge
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 241, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

; <label>:116                                     ; preds = %.outer.outer._crit_edge
  %117 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %.preheader.lr.ph, label %._crit_edge21

.preheader.lr.ph:                                 ; preds = %116
  %122 = mul nsw i64 %120, %7
  br i1 %16, label %.lr.ph17.us.preheader, label %.preheader.preheader

.lr.ph17.us.preheader:                            ; preds = %.preheader.lr.ph
  br label %.lr.ph17.us

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %123 = getelementptr inbounds i8, i8* %118, i64 %122
  br label %.preheader

; <label>:124                                     ; preds = %.lr.ph17.us, %._crit_edge15.us
  %o.016.us = phi i64 [ 0, %.lr.ph17.us ], [ %150, %._crit_edge15.us ]
  %125 = getelementptr inbounds i64, i64* %39, i64 %o.016.us
  %126 = load i64, i64* %125, align 8
  %127 = call %struct.list* @net_getParentIdListPtr(%struct.net* nonnull %8, i64 %126) #7
  call void @list_iter_reset(%struct.list_node** nonnull %it5, %struct.list* %127) #7
  %128 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it5, %struct.list* %127) #9
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %._crit_edge15.us, label %.lr.ph14.us.preheader

.lr.ph14.us.preheader:                            ; preds = %124
  br label %.lr.ph14.us

.lr.ph14.us:                                      ; preds = %.lr.ph14.us.preheader, %135
  %index.012.us = phi i64 [ %138, %135 ], [ 0, %.lr.ph14.us.preheader ]
  %130 = call i8* @list_iter_next(%struct.list_node** nonnull %it5, %struct.list* %127) #7
  %131 = ptrtoint i8* %130 to i64
  %132 = getelementptr inbounds i8, i8* %record.020.us, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = icmp eq i8 %133, 2
  br i1 %134, label %.us-lcssa35.us, label %135

; <label>:135                                     ; preds = %.lr.ph14.us
  %136 = sext i8 %133 to i64
  %137 = shl i64 %index.012.us, 1
  %138 = add nsw i64 %136, %137
  %139 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it5, %struct.list* %127) #9
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %._crit_edge15.us.loopexit, label %.lr.ph14.us

._crit_edge15.us.loopexit:                        ; preds = %135
  %.lcssa = phi i64 [ %138, %135 ]
  br label %._crit_edge15.us

._crit_edge15.us:                                 ; preds = %._crit_edge15.us.loopexit, %124
  %index.0.lcssa.us = phi i64 [ 0, %124 ], [ %.lcssa, %._crit_edge15.us.loopexit ]
  %141 = call i64 @random_generate(%struct.random* %2) #7
  %142 = urem i64 %141, 100
  %143 = getelementptr inbounds i64*, i64** %14, i64 %126
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 %index.0.lcssa.us
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %142, %146
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds i8, i8* %record.020.us, i64 %126
  store i8 %148, i8* %149, align 1
  %150 = add nuw nsw i64 %o.016.us, 1
  %151 = icmp slt i64 %150, %7
  br i1 %151, label %124, label %._crit_edge18.us

; <label>:152                                     ; preds = %._crit_edge18.us
  %153 = icmp slt i64 %158, %120
  br i1 %153, label %.lr.ph17.us, label %._crit_edge21.loopexit

.lr.ph17.us:                                      ; preds = %.lr.ph17.us.preheader, %152
  %record.020.us = phi i8* [ %154, %152 ], [ %118, %.lr.ph17.us.preheader ]
  %r.019.us = phi i64 [ %158, %152 ], [ 0, %.lr.ph17.us.preheader ]
  br label %124

._crit_edge18.us:                                 ; preds = %._crit_edge15.us
  %154 = getelementptr inbounds i8, i8* %record.020.us, i64 %7
  %155 = load i8*, i8** %117, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 %122
  %157 = icmp ugt i8* %154, %156
  %158 = add nuw nsw i64 %r.019.us, 1
  br i1 %157, label %.us-lcssa.us.loopexit, label %152

; <label>:159                                     ; preds = %.preheader
  %160 = icmp slt i64 %163, %120
  br i1 %160, label %.preheader, label %._crit_edge21.loopexit80

.us-lcssa35.us:                                   ; preds = %.lr.ph14.us
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 261, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

.preheader:                                       ; preds = %.preheader.preheader, %159
  %record.020 = phi i8* [ %161, %159 ], [ %118, %.preheader.preheader ]
  %r.019 = phi i64 [ %163, %159 ], [ 0, %.preheader.preheader ]
  %161 = getelementptr inbounds i8, i8* %record.020, i64 %7
  %162 = icmp ugt i8* %161, %123
  %163 = add nuw nsw i64 %r.019, 1
  br i1 %162, label %.us-lcssa.us.loopexit79, label %159

.us-lcssa.us.loopexit:                            ; preds = %._crit_edge18.us
  br label %.us-lcssa.us

.us-lcssa.us.loopexit79:                          ; preds = %.preheader
  br label %.us-lcssa.us

.us-lcssa.us:                                     ; preds = %.us-lcssa.us.loopexit79, %.us-lcssa.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 269, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i64 0, i64 0)) #8
  unreachable

._crit_edge21.loopexit:                           ; preds = %152
  br label %._crit_edge21

._crit_edge21.loopexit80:                         ; preds = %159
  br label %._crit_edge21

._crit_edge21:                                    ; preds = %._crit_edge21.loopexit80, %._crit_edge21.loopexit, %116
  call void @bitmap_free(%struct.bitmap* nonnull %55) #7
  call void @bitmap_free(%struct.bitmap* nonnull %51) #7
  call void @vector_free(%struct.vector* nonnull %47) #7
  call void @queue_free(%struct.queue* nonnull %43) #7
  call void @free(i8* %38) #7
  br i1 %16, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %._crit_edge21
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %v.211 = phi i64 [ %167, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %164 = getelementptr inbounds i64*, i64** %14, i64 %v.211
  %165 = bitcast i64** %164 to i8**
  %166 = load i8*, i8** %165, align 8
  call void @free(i8* %166) #7
  %167 = add nuw nsw i64 %v.211, 1
  %exitcond = icmp eq i64 %167, %7
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge21
  call void @free(i8* %13) #7
  ret %struct.net* %8
}

declare void @random_seed(%struct.random*, i64) #3

declare %struct.net* @net_alloc(i64) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

declare void @net_generateRandomEdges(%struct.net*, i64, i64, %struct.random*) #3

declare %struct.list* @net_getParentIdListPtr(%struct.net*, i64) #3

declare i64 @list_getSize(%struct.list*) #3

declare i64 @random_generate(%struct.random*) #3

declare %struct.queue* @queue_alloc(i64) #3

declare %struct.vector* @vector_alloc(i64) #3

declare %struct.bitmap* @bitmap_alloc(i64) #3

declare void @bitmap_clearAll(%struct.bitmap*) #3

declare i64 @bitmap_findClear(%struct.bitmap*, i64) #3

declare %struct.list* @net_getChildIdListPtr(%struct.net*, i64) #3

declare void @queue_clear(%struct.queue*) #3

declare i64 @queue_push(%struct.queue*, i8*) #3

declare i64 @queue_isEmpty(%struct.queue*) #3

declare i8* @queue_pop(%struct.queue*) #3

declare i64 @bitmap_set(%struct.bitmap*, i64) #3

declare i64 @vector_pushBack(%struct.vector*, i8*) #3

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #3

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #5

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #3

declare i64 @vector_getSize(%struct.vector*) #3

declare i8* @vector_popBack(%struct.vector*) #3

declare i64 @bitmap_isSet(%struct.bitmap*, i64) #3

declare void @bitmap_free(%struct.bitmap*) #3

declare void @vector_free(%struct.vector*) #3

declare void @queue_free(%struct.queue*) #3

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @data_getRecord(%struct.data* nocapture readonly %dataPtr, i64 %index) #6 {
  %1 = icmp slt i64 %index, 0
  br i1 %1, label %13, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = icmp sgt i64 %4, %index
  br i1 %5, label %6, label %13

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = mul nsw i64 %8, %index
  %10 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 %9
  br label %13

; <label>:13                                      ; preds = %0, %2, %6
  %.0 = phi i8* [ %12, %6 ], [ null, %2 ], [ null, %0 ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define i64 @data_copy(%struct.data* nocapture %dstPtr, %struct.data* nocapture readonly %srcPtr) #0 {
  %1 = getelementptr inbounds %struct.data, %struct.data* %dstPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.data, %struct.data* %dstPtr, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, %2
  %6 = getelementptr inbounds %struct.data, %struct.data* %srcPtr, i64 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.data, %struct.data* %srcPtr, i64 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = mul nsw i64 %9, %7
  %11 = icmp eq i64 %5, %10
  %.phi.trans.insert = getelementptr inbounds %struct.data, %struct.data* %dstPtr, i64 0, i32 2
  %.pre2 = load i8*, i8** %.phi.trans.insert, align 8
  br i1 %11, label %._crit_edge1, label %12

; <label>:12                                      ; preds = %0
  tail call void @free(i8* %.pre2) #7
  %13 = tail call noalias i8* @calloc(i64 %10, i64 1) #7
  store i8* %13, i8** %.phi.trans.insert, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %20, label %._crit_edge

._crit_edge:                                      ; preds = %12
  %.pre = load i64, i64* %6, align 8
  br label %._crit_edge1

._crit_edge1:                                     ; preds = %0, %._crit_edge
  %15 = phi i8* [ %13, %._crit_edge ], [ %.pre2, %0 ]
  %16 = phi i64 [ %.pre, %._crit_edge ], [ %7, %0 ]
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %3, align 8
  %18 = getelementptr inbounds %struct.data, %struct.data* %srcPtr, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %19, i64 %10, i32 1, i1 false)
  br label %20

; <label>:20                                      ; preds = %12, %._crit_edge1
  %.0 = phi i64 [ 1, %._crit_edge1 ], [ 0, %12 ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @data_sort(%struct.data* nocapture readonly %dataPtr, i64 %start, i64 %num, i64 %offset) #0 {
  %1 = icmp sgt i64 %start, -1
  br i1 %1, label %2, label %6

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, %start
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %2, %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 366, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.data_sort, i64 0, i64 0)) #8
  unreachable

; <label>:7                                       ; preds = %2
  %8 = icmp slt i64 %num, 0
  %9 = icmp slt i64 %4, %num
  %or.cond = or i1 %8, %9
  br i1 %or.cond, label %10, label %11

; <label>:10                                      ; preds = %7
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 367, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.data_sort, i64 0, i64 0)) #8
  unreachable

; <label>:11                                      ; preds = %7
  %12 = add nsw i64 %num, %start
  %13 = icmp slt i64 %12, 0
  %14 = icmp sgt i64 %12, %4
  %or.cond1 = or i1 %13, %14
  br i1 %or.cond1, label %15, label %16

; <label>:15                                      ; preds = %11
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 368, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.data_sort, i64 0, i64 0)) #8
  unreachable

; <label>:16                                      ; preds = %11
  %17 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = mul nsw i64 %18, %start
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = trunc i64 %num to i32
  %24 = trunc i64 %18 to i32
  tail call void @sort(i8* %22, i32 %23, i32 %24, i32 (i8*, i8*, i64, i64)* nonnull @compareRecord, i64 %18, i64 %offset) #7
  ret void
}

declare void @sort(i8*, i32, i32, i32 (i8*, i8*, i64, i64)*, i64, i64) #3

; Function Attrs: norecurse nounwind readonly uwtable
define internal i32 @compareRecord(i8* nocapture readonly %p1, i8* nocapture readonly %p2, i64 %n, i64 %offset) #6 {
  %1 = sub nsw i64 %n, %offset
  %2 = getelementptr inbounds i8, i8* %p1, i64 %offset
  %3 = getelementptr inbounds i8, i8* %p2, i64 %offset
  br label %4

; <label>:4                                       ; preds = %6, %0
  %s1.0 = phi i8* [ %2, %0 ], [ %8, %6 ]
  %s2.0 = phi i8* [ %3, %0 ], [ %10, %6 ]
  %i.0 = phi i64 [ %1, %0 ], [ %7, %6 ]
  %5 = icmp sgt i64 %i.0, 0
  br i1 %5, label %6, label %.loopexit.loopexit

; <label>:6                                       ; preds = %4
  %7 = add nsw i64 %i.0, -1
  %8 = getelementptr inbounds i8, i8* %s1.0, i64 1
  %9 = load i8, i8* %s1.0, align 1
  %10 = getelementptr inbounds i8, i8* %s2.0, i64 1
  %11 = load i8, i8* %s2.0, align 1
  %12 = icmp eq i8 %9, %11
  br i1 %12, label %4, label %13

; <label>:13                                      ; preds = %6
  %.lcssa6 = phi i8 [ %11, %6 ]
  %.lcssa = phi i8 [ %9, %6 ]
  %14 = zext i8 %.lcssa to i32
  %15 = zext i8 %.lcssa6 to i32
  %16 = sub nsw i32 %14, %15
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %13
  %.0 = phi i32 [ %16, %13 ], [ 0, %.loopexit.loopexit ]
  ret i32 %.0
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @data_findSplit(%struct.data* nocapture readonly %dataPtr, i64 %start, i64 %num, i64 %offset) #6 {
  %1 = add i64 %start, -1
  %2 = add i64 %1, %num
  %3 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 2
  %6 = load i8*, i8** %5, align 8
  %7 = icmp slt i64 %2, %start
  br i1 %7, label %.outer._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer
  %low.0.ph5 = phi i64 [ %low.02.lcssa, %.outer ], [ %start, %.lr.ph.preheader ]
  %high.0.ph4 = phi i64 [ %19, %.outer ], [ %2, %.lr.ph.preheader ]
  br label %8

; <label>:8                                       ; preds = %16, %.lr.ph
  %low.02 = phi i64 [ %low.0.ph5, %.lr.ph ], [ %17, %16 ]
  %9 = add nsw i64 %low.02, %high.0.ph4
  %10 = sdiv i64 %9, 2
  %11 = mul nsw i64 %10, %4
  %12 = add nsw i64 %11, %offset
  %13 = getelementptr inbounds i8, i8* %6, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %.outer

; <label>:16                                      ; preds = %8
  %17 = add nsw i64 %10, 1
  %18 = icmp slt i64 %10, %high.0.ph4
  br i1 %18, label %8, label %.outer._crit_edge.loopexit

.outer:                                           ; preds = %8
  %.lcssa = phi i64 [ %10, %8 ]
  %low.02.lcssa = phi i64 [ %low.02, %8 ]
  %19 = add nsw i64 %.lcssa, -1
  %20 = icmp slt i64 %low.02.lcssa, %.lcssa
  br i1 %20, label %.lr.ph, label %.outer._crit_edge.loopexit19

.outer._crit_edge.loopexit:                       ; preds = %16
  %.lcssa25 = phi i64 [ %17, %16 ]
  br label %.outer._crit_edge

.outer._crit_edge.loopexit19:                     ; preds = %.outer
  %low.02.lcssa.lcssa = phi i64 [ %low.02.lcssa, %.outer ]
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer._crit_edge.loopexit19, %.outer._crit_edge.loopexit, %0
  %low.0.lcssa = phi i64 [ %start, %0 ], [ %.lcssa25, %.outer._crit_edge.loopexit ], [ %low.02.lcssa.lcssa, %.outer._crit_edge.loopexit19 ]
  %21 = sub nsw i64 %low.0.lcssa, %start
  ret i64 %21
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
