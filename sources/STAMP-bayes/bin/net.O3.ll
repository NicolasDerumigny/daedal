; ModuleID = '../bin/net.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.vector* }
%struct.vector = type { i64, i64, i8** }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.bitmap = type { i64, i64, i64* }
%struct.queue = type opaque
%struct.net_node = type { i64, %struct.list*, %struct.list*, i32 }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"net.c\00", align 1
@__PRETTY_FUNCTION__.net_alloc = private unnamed_addr constant [23 x i8] c"net_t *net_alloc(long)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.net_applyOperation = private unnamed_addr constant [58 x i8] c"void net_applyOperation(net_t *, operation_t, long, long)\00", align 1
@__PRETTY_FUNCTION__.TMnet_applyOperation = private unnamed_addr constant [60 x i8] c"void TMnet_applyOperation(net_t *, operation_t, long, long)\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"visitedBitmapPtr->numBit == vector_getSize(nodeVectorPtr)\00", align 1
@__PRETTY_FUNCTION__.net_isPath = private unnamed_addr constant [62 x i8] c"bool_t net_isPath(net_t *, long, long, bitmap_t *, queue_t *)\00", align 1
@__PRETTY_FUNCTION__.TMnet_isPath = private unnamed_addr constant [64 x i8] c"bool_t TMnet_isPath(net_t *, long, long, bitmap_t *, queue_t *)\00", align 1
@__PRETTY_FUNCTION__.net_isCycle = private unnamed_addr constant [28 x i8] c"bool_t net_isCycle(net_t *)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nodePtr\00", align 1
@__PRETTY_FUNCTION__.net_getParentIdListPtr = private unnamed_addr constant [46 x i8] c"list_t *net_getParentIdListPtr(net_t *, long)\00", align 1
@__PRETTY_FUNCTION__.net_getChildIdListPtr = private unnamed_addr constant [45 x i8] c"list_t *net_getChildIdListPtr(net_t *, long)\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"ancestorBitmapPtr->numBit == vector_getSize(nodeVectorPtr)\00", align 1
@__PRETTY_FUNCTION__.net_findAncestors = private unnamed_addr constant [63 x i8] c"bool_t net_findAncestors(net_t *, long, bitmap_t *, queue_t *)\00", align 1
@__PRETTY_FUNCTION__.TMnet_findAncestors = private unnamed_addr constant [65 x i8] c"bool_t TMnet_findAncestors(net_t *, long, bitmap_t *, queue_t *)\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"descendantBitmapPtr->numBit == vector_getSize(nodeVectorPtr)\00", align 1
@__PRETTY_FUNCTION__.net_findDescendants = private unnamed_addr constant [65 x i8] c"bool_t net_findDescendants(net_t *, long, bitmap_t *, queue_t *)\00", align 1
@__PRETTY_FUNCTION__.TMnet_findDescendants = private unnamed_addr constant [67 x i8] c"bool_t TMnet_findDescendants(net_t *, long, bitmap_t *, queue_t *)\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"visitedBitmapPtr\00", align 1
@__PRETTY_FUNCTION__.net_generateRandomEdges = private unnamed_addr constant [62 x i8] c"void net_generateRandomEdges(net_t *, long, long, random_t *)\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"!net_isCycle(netPtr)\00", align 1
@__PRETTY_FUNCTION__.insertEdge = private unnamed_addr constant [37 x i8] c"void insertEdge(net_t *, long, long)\00", align 1
@__PRETTY_FUNCTION__.removeEdge = private unnamed_addr constant [37 x i8] c"void removeEdge(net_t *, long, long)\00", align 1
@__PRETTY_FUNCTION__.TMinsertEdge = private unnamed_addr constant [39 x i8] c"void TMinsertEdge(net_t *, long, long)\00", align 1
@__PRETTY_FUNCTION__.TMremoveEdge = private unnamed_addr constant [39 x i8] c"void TMremoveEdge(net_t *, long, long)\00", align 1
@__PRETTY_FUNCTION__.isCycle = private unnamed_addr constant [41 x i8] c"bool_t isCycle(vector_t *, net_node_t *)\00", align 1

; Function Attrs: nounwind uwtable
define noalias %struct.net* @net_alloc(i64 %numNode) #0 {
  %1 = tail call noalias i8* @malloc(i64 8) #7
  %2 = bitcast i8* %1 to %struct.net*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %40, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.vector* @vector_alloc(i64 %numNode) #7
  %6 = icmp eq %struct.vector* %5, null
  br i1 %6, label %8, label %.preheader

.preheader:                                       ; preds = %4
  %7 = icmp sgt i64 %numNode, 0
  br i1 %7, label %.lr.ph15.preheader, label %._crit_edge

.lr.ph15.preheader:                               ; preds = %.preheader
  br label %.lr.ph15

; <label>:8                                       ; preds = %4
  tail call void @free(i8* nonnull %1) #7
  br label %40

.lr.ph15:                                         ; preds = %.lr.ph15.preheader, %36
  %i.014 = phi i64 [ %37, %36 ], [ 0, %.lr.ph15.preheader ]
  %9 = tail call noalias i8* @malloc(i64 32) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %allocNode.exit.thread.preheader.loopexit, label %12

allocNode.exit.thread.preheader.loopexit:         ; preds = %.lr.ph15
  %i.014.lcssa = phi i64 [ %i.014, %.lr.ph15 ]
  br label %allocNode.exit.thread.preheader

allocNode.exit.thread.preheader:                  ; preds = %allocNode.exit.thread.preheader.loopexit, %17, %23
  %i.01472 = phi i64 [ %i.014.lcssa, %allocNode.exit.thread.preheader.loopexit ], [ %i.014.lcssa68, %17 ], [ %i.014.lcssa69, %23 ]
  %11 = icmp sgt i64 %i.01472, 0
  br i1 %11, label %allocNode.exit.thread.preheader55, label %allocNode.exit.thread._crit_edge

allocNode.exit.thread.preheader55:                ; preds = %allocNode.exit.thread.preheader
  br label %allocNode.exit.thread

; <label>:12                                      ; preds = %.lr.ph15
  %13 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* nonnull @compareId) #7
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to %struct.list**
  store %struct.list* %13, %struct.list** %15, align 8
  %16 = icmp eq %struct.list* %13, null
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %12
  %.lcssa73 = phi i8* [ %9, %12 ]
  %i.014.lcssa68 = phi i64 [ %i.014, %12 ]
  tail call void @free(i8* nonnull %.lcssa73) #7
  br label %allocNode.exit.thread.preheader

; <label>:18                                      ; preds = %12
  %19 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* nonnull @compareId) #7
  %20 = getelementptr inbounds i8, i8* %9, i64 16
  %21 = bitcast i8* %20 to %struct.list**
  store %struct.list* %19, %struct.list** %21, align 8
  %22 = icmp eq %struct.list* %19, null
  br i1 %22, label %23, label %allocNode.exit.thread1

; <label>:23                                      ; preds = %18
  %.lcssa77 = phi %struct.list* [ %13, %18 ]
  %.lcssa74 = phi i8* [ %9, %18 ]
  %i.014.lcssa69 = phi i64 [ %i.014, %18 ]
  tail call void @list_free(%struct.list* nonnull %.lcssa77) #7
  tail call void @free(i8* nonnull %.lcssa74) #7
  br label %allocNode.exit.thread.preheader

allocNode.exit.thread1:                           ; preds = %18
  %24 = bitcast i8* %9 to i64*
  store i64 %i.014, i64* %24, align 8
  %25 = tail call i64 @vector_pushBack(%struct.vector* nonnull %5, i8* nonnull %9) #7
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %35, label %36

allocNode.exit.thread:                            ; preds = %allocNode.exit.thread.preheader55, %allocNode.exit.thread
  %j.013 = phi i64 [ %34, %allocNode.exit.thread ], [ 0, %allocNode.exit.thread.preheader55 ]
  %27 = tail call i8* @vector_at(%struct.vector* nonnull %5, i64 %j.013) #7
  %28 = getelementptr inbounds i8, i8* %27, i64 16
  %29 = bitcast i8* %28 to %struct.list**
  %30 = load %struct.list*, %struct.list** %29, align 8
  tail call void @Plist_free(%struct.list* %30) #7
  %31 = getelementptr inbounds i8, i8* %27, i64 8
  %32 = bitcast i8* %31 to %struct.list**
  %33 = load %struct.list*, %struct.list** %32, align 8
  tail call void @Plist_free(%struct.list* %33) #7
  tail call void @free(i8* %27) #7
  %34 = add nuw nsw i64 %j.013, 1
  %exitcond = icmp eq i64 %34, %i.01472
  br i1 %exitcond, label %allocNode.exit.thread._crit_edge.loopexit, label %allocNode.exit.thread

allocNode.exit.thread._crit_edge.loopexit:        ; preds = %allocNode.exit.thread
  br label %allocNode.exit.thread._crit_edge

allocNode.exit.thread._crit_edge:                 ; preds = %allocNode.exit.thread._crit_edge.loopexit, %allocNode.exit.thread.preheader
  tail call void @vector_free(%struct.vector* nonnull %5) #7
  tail call void @free(i8* %1) #7
  br label %40

; <label>:35                                      ; preds = %allocNode.exit.thread1
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 187, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.net_alloc, i64 0, i64 0)) #8
  unreachable

; <label>:36                                      ; preds = %allocNode.exit.thread1
  %37 = add nuw nsw i64 %i.014, 1
  %38 = icmp slt i64 %37, %numNode
  br i1 %38, label %.lr.ph15, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %36
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %39 = bitcast i8* %1 to %struct.vector**
  store %struct.vector* %5, %struct.vector** %39, align 8
  br label %40

; <label>:40                                      ; preds = %._crit_edge, %0, %allocNode.exit.thread._crit_edge, %8
  %.0 = phi %struct.net* [ null, %8 ], [ null, %allocNode.exit.thread._crit_edge ], [ %2, %0 ], [ %2, %._crit_edge ]
  ret %struct.net* %.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.vector* @vector_alloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

declare i8* @vector_at(%struct.vector*, i64) #2

declare void @vector_free(%struct.vector*) #2

declare i64 @vector_pushBack(%struct.vector*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define void @net_free(%struct.net* nocapture %netPtr) #0 {
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i64 @vector_getSize(%struct.vector* %2) #7
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.01 = phi i64 [ %12, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %5 = tail call i8* @vector_at(%struct.vector* %2, i64 %i.01) #7
  %6 = getelementptr inbounds i8, i8* %5, i64 16
  %7 = bitcast i8* %6 to %struct.list**
  %8 = load %struct.list*, %struct.list** %7, align 8
  tail call void @Plist_free(%struct.list* %8) #7
  %9 = getelementptr inbounds i8, i8* %5, i64 8
  %10 = bitcast i8* %9 to %struct.list**
  %11 = load %struct.list*, %struct.list** %10, align 8
  tail call void @Plist_free(%struct.list* %11) #7
  tail call void @free(i8* %5) #7
  %12 = add nuw nsw i64 %i.01, 1
  %exitcond = icmp eq i64 %12, %3
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %13 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @vector_free(%struct.vector* %13) #7
  %14 = bitcast %struct.net* %netPtr to i8*
  tail call void @free(i8* %14) #7
  ret void
}

declare i64 @vector_getSize(%struct.vector*) #2

; Function Attrs: nounwind uwtable
define void @net_applyOperation(%struct.net* nocapture readonly %netPtr, i32 %op, i64 %fromId, i64 %toId) #0 {
  switch i32 %op, label %70 [
    i32 0, label %1
    i32 1, label %19
    i32 2, label %37
  ]

; <label>:1                                       ; preds = %0
  %netPtr.idx = getelementptr %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %netPtr.idx.val = load %struct.vector*, %struct.vector** %netPtr.idx, align 8
  %2 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val, i64 %toId) #7
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to %struct.list**
  %5 = load %struct.list*, %struct.list** %4, align 8
  %6 = inttoptr i64 %fromId to i8*
  %7 = tail call i64 @list_insert(%struct.list* %5, i8* %6) #7
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 228, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.insertEdge, i64 0, i64 0)) #8
  unreachable

; <label>:10                                      ; preds = %1
  %11 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val, i64 %fromId) #7
  %12 = getelementptr inbounds i8, i8* %11, i64 16
  %13 = bitcast i8* %12 to %struct.list**
  %14 = load %struct.list*, %struct.list** %13, align 8
  %15 = inttoptr i64 %toId to i8*
  %16 = tail call i64 @list_insert(%struct.list* %14, i8* %15) #7
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %insertEdge.exit

; <label>:18                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 233, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.insertEdge, i64 0, i64 0)) #8
  unreachable

; <label>:19                                      ; preds = %0
  %netPtr.idx1 = getelementptr %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %netPtr.idx1.val = load %struct.vector*, %struct.vector** %netPtr.idx1, align 8
  %20 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val, i64 %toId) #7
  %21 = getelementptr inbounds i8, i8* %20, i64 8
  %22 = bitcast i8* %21 to %struct.list**
  %23 = load %struct.list*, %struct.list** %22, align 8
  %24 = inttoptr i64 %fromId to i8*
  %25 = tail call i64 @list_remove(%struct.list* %23, i8* %24) #7
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %19
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 272, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.removeEdge, i64 0, i64 0)) #8
  unreachable

; <label>:28                                      ; preds = %19
  %29 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val, i64 %fromId) #7
  %30 = getelementptr inbounds i8, i8* %29, i64 16
  %31 = bitcast i8* %30 to %struct.list**
  %32 = load %struct.list*, %struct.list** %31, align 8
  %33 = inttoptr i64 %toId to i8*
  %34 = tail call i64 @list_remove(%struct.list* %32, i8* %33) #7
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %insertEdge.exit

; <label>:36                                      ; preds = %28
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 277, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.removeEdge, i64 0, i64 0)) #8
  unreachable

; <label>:37                                      ; preds = %0
  %netPtr.idx1.i = getelementptr %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %netPtr.idx1.val.i = load %struct.vector*, %struct.vector** %netPtr.idx1.i, align 8
  %38 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val.i, i64 %toId) #7
  %39 = getelementptr inbounds i8, i8* %38, i64 8
  %40 = bitcast i8* %39 to %struct.list**
  %41 = load %struct.list*, %struct.list** %40, align 8
  %42 = inttoptr i64 %fromId to i8*
  %43 = tail call i64 @list_remove(%struct.list* %41, i8* %42) #7
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %37
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 272, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.removeEdge, i64 0, i64 0)) #8
  unreachable

; <label>:46                                      ; preds = %37
  %47 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val.i, i64 %fromId) #7
  %48 = getelementptr inbounds i8, i8* %47, i64 16
  %49 = bitcast i8* %48 to %struct.list**
  %50 = load %struct.list*, %struct.list** %49, align 8
  %51 = inttoptr i64 %toId to i8*
  %52 = tail call i64 @list_remove(%struct.list* %50, i8* %51) #7
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %removeEdge.exit.i

; <label>:54                                      ; preds = %46
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 277, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.removeEdge, i64 0, i64 0)) #8
  unreachable

removeEdge.exit.i:                                ; preds = %46
  %netPtr.idx.val.i = load %struct.vector*, %struct.vector** %netPtr.idx1.i, align 8
  %55 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val.i, i64 %fromId) #7
  %56 = getelementptr inbounds i8, i8* %55, i64 8
  %57 = bitcast i8* %56 to %struct.list**
  %58 = load %struct.list*, %struct.list** %57, align 8
  %59 = tail call i64 @list_insert(%struct.list* %58, i8* %51) #7
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %removeEdge.exit.i
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 228, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.insertEdge, i64 0, i64 0)) #8
  unreachable

; <label>:62                                      ; preds = %removeEdge.exit.i
  %63 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val.i, i64 %toId) #7
  %64 = getelementptr inbounds i8, i8* %63, i64 16
  %65 = bitcast i8* %64 to %struct.list**
  %66 = load %struct.list*, %struct.list** %65, align 8
  %67 = tail call i64 @list_insert(%struct.list* %66, i8* %42) #7
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %insertEdge.exit

; <label>:69                                      ; preds = %62
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 233, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.insertEdge, i64 0, i64 0)) #8
  unreachable

; <label>:70                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.net_applyOperation, i64 0, i64 0)) #8
  unreachable

insertEdge.exit:                                  ; preds = %62, %28, %10
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMnet_applyOperation(%struct.net* nocapture readonly %netPtr, i32 %op, i64 %fromId, i64 %toId) #0 {
  switch i32 %op, label %70 [
    i32 0, label %1
    i32 1, label %19
    i32 2, label %37
  ]

; <label>:1                                       ; preds = %0
  %netPtr.idx = getelementptr %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %netPtr.idx.val = load %struct.vector*, %struct.vector** %netPtr.idx, align 8
  %2 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val, i64 %toId) #7
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to %struct.list**
  %5 = load %struct.list*, %struct.list** %4, align 8
  %6 = inttoptr i64 %fromId to i8*
  %7 = tail call i64 @TMlist_insert(%struct.list* %5, i8* %6) #7
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 250, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMinsertEdge, i64 0, i64 0)) #8
  unreachable

; <label>:10                                      ; preds = %1
  %11 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val, i64 %fromId) #7
  %12 = getelementptr inbounds i8, i8* %11, i64 16
  %13 = bitcast i8* %12 to %struct.list**
  %14 = load %struct.list*, %struct.list** %13, align 8
  %15 = inttoptr i64 %toId to i8*
  %16 = tail call i64 @TMlist_insert(%struct.list* %14, i8* %15) #7
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %TMinsertEdge.exit

; <label>:18                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 255, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMinsertEdge, i64 0, i64 0)) #8
  unreachable

; <label>:19                                      ; preds = %0
  %netPtr.idx1 = getelementptr %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %netPtr.idx1.val = load %struct.vector*, %struct.vector** %netPtr.idx1, align 8
  %20 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val, i64 %toId) #7
  %21 = getelementptr inbounds i8, i8* %20, i64 8
  %22 = bitcast i8* %21 to %struct.list**
  %23 = load %struct.list*, %struct.list** %22, align 8
  %24 = inttoptr i64 %fromId to i8*
  %25 = tail call i64 @TMlist_remove(%struct.list* %23, i8* %24) #7
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %19
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 294, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMremoveEdge, i64 0, i64 0)) #8
  unreachable

; <label>:28                                      ; preds = %19
  %29 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val, i64 %fromId) #7
  %30 = getelementptr inbounds i8, i8* %29, i64 16
  %31 = bitcast i8* %30 to %struct.list**
  %32 = load %struct.list*, %struct.list** %31, align 8
  %33 = inttoptr i64 %toId to i8*
  %34 = tail call i64 @TMlist_remove(%struct.list* %32, i8* %33) #7
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %TMinsertEdge.exit

; <label>:36                                      ; preds = %28
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 299, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMremoveEdge, i64 0, i64 0)) #8
  unreachable

; <label>:37                                      ; preds = %0
  %netPtr.idx1.i = getelementptr %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %netPtr.idx1.val.i = load %struct.vector*, %struct.vector** %netPtr.idx1.i, align 8
  %38 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val.i, i64 %toId) #7
  %39 = getelementptr inbounds i8, i8* %38, i64 8
  %40 = bitcast i8* %39 to %struct.list**
  %41 = load %struct.list*, %struct.list** %40, align 8
  %42 = inttoptr i64 %fromId to i8*
  %43 = tail call i64 @TMlist_remove(%struct.list* %41, i8* %42) #7
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %37
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 294, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMremoveEdge, i64 0, i64 0)) #8
  unreachable

; <label>:46                                      ; preds = %37
  %47 = tail call i8* @vector_at(%struct.vector* %netPtr.idx1.val.i, i64 %fromId) #7
  %48 = getelementptr inbounds i8, i8* %47, i64 16
  %49 = bitcast i8* %48 to %struct.list**
  %50 = load %struct.list*, %struct.list** %49, align 8
  %51 = inttoptr i64 %toId to i8*
  %52 = tail call i64 @TMlist_remove(%struct.list* %50, i8* %51) #7
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %TMremoveEdge.exit.i

; <label>:54                                      ; preds = %46
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 299, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMremoveEdge, i64 0, i64 0)) #8
  unreachable

TMremoveEdge.exit.i:                              ; preds = %46
  %netPtr.idx.val.i = load %struct.vector*, %struct.vector** %netPtr.idx1.i, align 8
  %55 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val.i, i64 %fromId) #7
  %56 = getelementptr inbounds i8, i8* %55, i64 8
  %57 = bitcast i8* %56 to %struct.list**
  %58 = load %struct.list*, %struct.list** %57, align 8
  %59 = tail call i64 @TMlist_insert(%struct.list* %58, i8* %51) #7
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %TMremoveEdge.exit.i
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 250, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMinsertEdge, i64 0, i64 0)) #8
  unreachable

; <label>:62                                      ; preds = %TMremoveEdge.exit.i
  %63 = tail call i8* @vector_at(%struct.vector* %netPtr.idx.val.i, i64 %toId) #7
  %64 = getelementptr inbounds i8, i8* %63, i64 16
  %65 = bitcast i8* %64 to %struct.list**
  %66 = load %struct.list*, %struct.list** %65, align 8
  %67 = tail call i64 @TMlist_insert(%struct.list* %66, i8* %42) #7
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %TMinsertEdge.exit

; <label>:69                                      ; preds = %62
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 255, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMinsertEdge, i64 0, i64 0)) #8
  unreachable

; <label>:70                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 357, i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.TMnet_applyOperation, i64 0, i64 0)) #8
  unreachable

TMinsertEdge.exit:                                ; preds = %62, %28, %10
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @net_hasEdge(%struct.net* nocapture readonly %netPtr, i64 %fromId, i64 %toId) #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i8* @vector_at(%struct.vector* %2, i64 %toId) #7
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to %struct.list**
  %6 = load %struct.list*, %struct.list** %5, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %6) #7
  br label %7

; <label>:7                                       ; preds = %10, %0
  %8 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %6) #9
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

; <label>:10                                      ; preds = %7
  %11 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %6) #7
  %12 = ptrtoint i8* %11 to i64
  %13 = icmp eq i64 %12, %fromId
  br i1 %13, label %14, label %7

; <label>:14                                      ; preds = %7, %10
  %.0 = phi i64 [ 1, %10 ], [ 0, %7 ]
  ret i64 %.0
}

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind uwtable
define i64 @TMnet_hasEdge(%struct.net* nocapture readonly %netPtr, i64 %fromId, i64 %toId) #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i8* @vector_at(%struct.vector* %2, i64 %toId) #7
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to %struct.list**
  %6 = load %struct.list*, %struct.list** %5, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %6) #7
  br label %7

; <label>:7                                       ; preds = %10, %0
  %8 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %6) #9
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

; <label>:10                                      ; preds = %7
  %11 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %6) #7
  %12 = ptrtoint i8* %11 to i64
  %13 = icmp eq i64 %12, %fromId
  br i1 %13, label %14, label %7

; <label>:14                                      ; preds = %7, %10
  %.0 = phi i64 [ 1, %10 ], [ 0, %7 ]
  ret i64 %.0
}

declare void @TMlist_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @TMlist_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @TMlist_iter_next(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind uwtable
define i64 @net_isPath(%struct.net* nocapture readonly %netPtr, i64 %fromId, i64 %toId, %struct.bitmap* %visitedBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %visitedBitmapPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @vector_getSize(%struct.vector* %2) #7
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 424, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_isPath, i64 0, i64 0)) #8
  unreachable

; <label>:8                                       ; preds = %0
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %visitedBitmapPtr) #7
  tail call void @queue_clear(%struct.queue* %workQueuePtr) #7
  %9 = inttoptr i64 %fromId to i8*
  %10 = tail call i64 @queue_push(%struct.queue* %workQueuePtr, i8* %9) #7
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %.preheader

.preheader:                                       ; preds = %8
  %12 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #7
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %.lr.ph2.preheader, label %.loopexit1

.lr.ph2.preheader:                                ; preds = %.preheader
  br label %.lr.ph2

; <label>:14                                      ; preds = %8
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 430, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_isPath, i64 0, i64 0)) #8
  unreachable

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %25
  %15 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #7
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %.lr.ph2, label %.loopexit1.loopexit

.lr.ph2:                                          ; preds = %.lr.ph2.preheader, %.loopexit
  %17 = call i8* @queue_pop(%struct.queue* %workQueuePtr) #7
  %18 = ptrtoint i8* %17 to i64
  %19 = icmp eq i64 %18, %toId
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %.lr.ph2
  call void @queue_clear(%struct.queue* %workQueuePtr) #7
  br label %.loopexit1

; <label>:21                                      ; preds = %.lr.ph2
  %22 = call i64 @bitmap_set(%struct.bitmap* %visitedBitmapPtr, i64 %18) #7
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %21
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 439, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_isPath, i64 0, i64 0)) #8
  unreachable

; <label>:25                                      ; preds = %21
  %26 = call i8* @vector_at(%struct.vector* %2, i64 %18) #7
  %27 = getelementptr inbounds i8, i8* %26, i64 16
  %28 = bitcast i8* %27 to %struct.list**
  %29 = load %struct.list*, %struct.list** %28, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %29) #7
  %30 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %29) #9
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %25
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %32 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %29) #7
  %33 = ptrtoint i8* %32 to i64
  %34 = call i64 @bitmap_isSet(%struct.bitmap* %visitedBitmapPtr, i64 %33) #7
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %38, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %38
  %36 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %29) #9
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %.loopexit.loopexit, label %.lr.ph

; <label>:38                                      ; preds = %.lr.ph
  %39 = call i64 @queue_push(%struct.queue* %workQueuePtr, i8* %32) #7
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %.backedge

; <label>:41                                      ; preds = %38
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 448, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_isPath, i64 0, i64 0)) #8
  unreachable

.loopexit1.loopexit:                              ; preds = %.loopexit
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %.preheader, %20
  %.0 = phi i64 [ 1, %20 ], [ 0, %.preheader ], [ 0, %.loopexit1.loopexit ]
  ret i64 %.0
}

declare void @bitmap_clearAll(%struct.bitmap*) #2

declare void @queue_clear(%struct.queue*) #2

declare i64 @queue_push(%struct.queue*, i8*) #2

declare i64 @queue_isEmpty(%struct.queue*) #2

declare i8* @queue_pop(%struct.queue*) #2

declare i64 @bitmap_set(%struct.bitmap*, i64) #2

declare i64 @bitmap_isSet(%struct.bitmap*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @TMnet_isPath(%struct.net* nocapture readonly %netPtr, i64 %fromId, i64 %toId, %struct.bitmap* %visitedBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %visitedBitmapPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @vector_getSize(%struct.vector* %2) #7
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 472, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.TMnet_isPath, i64 0, i64 0)) #8
  unreachable

; <label>:8                                       ; preds = %0
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %visitedBitmapPtr) #7
  tail call void @queue_clear(%struct.queue* %workQueuePtr) #7
  %9 = inttoptr i64 %fromId to i8*
  %10 = tail call i64 @Pqueue_push(%struct.queue* %workQueuePtr, i8* %9) #7
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %.preheader

.preheader:                                       ; preds = %8
  %12 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #7
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %.lr.ph2.preheader, label %.loopexit1

.lr.ph2.preheader:                                ; preds = %.preheader
  br label %.lr.ph2

; <label>:14                                      ; preds = %8
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 478, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.TMnet_isPath, i64 0, i64 0)) #8
  unreachable

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %25
  %15 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #7
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %.lr.ph2, label %.loopexit1.loopexit

.lr.ph2:                                          ; preds = %.lr.ph2.preheader, %.loopexit
  %17 = call i8* @queue_pop(%struct.queue* %workQueuePtr) #7
  %18 = ptrtoint i8* %17 to i64
  %19 = icmp eq i64 %18, %toId
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %.lr.ph2
  call void @queue_clear(%struct.queue* %workQueuePtr) #7
  br label %.loopexit1

; <label>:21                                      ; preds = %.lr.ph2
  %22 = call i64 @bitmap_set(%struct.bitmap* %visitedBitmapPtr, i64 %18) #7
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %21
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 487, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.TMnet_isPath, i64 0, i64 0)) #8
  unreachable

; <label>:25                                      ; preds = %21
  %26 = call i8* @vector_at(%struct.vector* %2, i64 %18) #7
  %27 = getelementptr inbounds i8, i8* %26, i64 16
  %28 = bitcast i8* %27 to %struct.list**
  %29 = load %struct.list*, %struct.list** %28, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %29) #7
  %30 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %29) #9
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %25
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %32 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %29) #7
  %33 = ptrtoint i8* %32 to i64
  %34 = call i64 @bitmap_isSet(%struct.bitmap* %visitedBitmapPtr, i64 %33) #7
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %38, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %38
  %36 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %29) #9
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %.loopexit.loopexit, label %.lr.ph

; <label>:38                                      ; preds = %.lr.ph
  %39 = call i64 @Pqueue_push(%struct.queue* %workQueuePtr, i8* %32) #7
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %.backedge

; <label>:41                                      ; preds = %38
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 496, i8* nonnull getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.TMnet_isPath, i64 0, i64 0)) #8
  unreachable

.loopexit1.loopexit:                              ; preds = %.loopexit
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %.preheader, %20
  %.0 = phi i64 [ 1, %20 ], [ 0, %.preheader ], [ 0, %.loopexit1.loopexit ]
  ret i64 %.0
}

declare i64 @Pqueue_push(%struct.queue*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @net_isCycle(%struct.net* nocapture readonly %netPtr) #0 {
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i64 @vector_getSize(%struct.vector* %2) #7
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %.lr.ph6.preheader, label %._crit_edge

.lr.ph6.preheader:                                ; preds = %0
  br label %.lr.ph6

.preheader:                                       ; preds = %.lr.ph6
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

.lr.ph6:                                          ; preds = %.lr.ph6.preheader, %.lr.ph6
  %n.04 = phi i64 [ %8, %.lr.ph6 ], [ 0, %.lr.ph6.preheader ]
  %5 = tail call i8* @vector_at(%struct.vector* %2, i64 %n.04) #7
  %6 = getelementptr inbounds i8, i8* %5, i64 24
  %7 = bitcast i8* %6 to i32*
  store i32 0, i32* %7, align 8
  %8 = add nuw nsw i64 %n.04, 1
  %exitcond = icmp eq i64 %8, %3
  br i1 %exitcond, label %.preheader, label %.lr.ph6

.lr.ph:                                           ; preds = %.lr.ph.preheader, %19
  %n.11 = phi i64 [ %20, %19 ], [ 0, %.lr.ph.preheader ]
  %9 = tail call i8* @vector_at(%struct.vector* %2, i64 %n.11) #7
  %10 = getelementptr inbounds i8, i8* %9, i64 24
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %18 [
    i32 0, label %13
    i32 1, label %19
    i32 2, label %17
  ]

; <label>:13                                      ; preds = %.lr.ph
  %14 = bitcast i8* %9 to %struct.net_node*
  %15 = tail call fastcc i64 @isCycle(%struct.vector* %2, %struct.net_node* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %19, label %._crit_edge.loopexit

; <label>:17                                      ; preds = %.lr.ph
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 569, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.net_isCycle, i64 0, i64 0)) #8
  unreachable

; <label>:18                                      ; preds = %.lr.ph
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 572, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.net_isCycle, i64 0, i64 0)) #8
  unreachable

; <label>:19                                      ; preds = %13, %.lr.ph
  %20 = add nuw nsw i64 %n.11, 1
  %21 = icmp slt i64 %20, %3
  br i1 %21, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %19, %13
  %.0.ph = phi i64 [ 0, %19 ], [ 1, %13 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0, %.preheader
  %.0 = phi i64 [ 0, %.preheader ], [ 0, %0 ], [ %.0.ph, %._crit_edge.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @isCycle(%struct.vector* %nodeVectorPtr, %struct.net_node* nocapture %nodePtr) unnamed_addr #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net_node, %struct.net_node* %nodePtr, i64 0, i32 3
  %2 = load i32, i32* %1, align 8
  switch i32 %2, label %17 [
    i32 0, label %3
    i32 2, label %.loopexit
    i32 1, label %16
  ]

; <label>:3                                       ; preds = %0
  store i32 2, i32* %1, align 8
  %4 = getelementptr inbounds %struct.net_node, %struct.net_node* %nodePtr, i64 0, i32 2
  %5 = load %struct.list*, %struct.list** %4, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %5) #7
  br label %6

; <label>:6                                       ; preds = %9, %3
  %7 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %5) #9
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %18, label %9

; <label>:9                                       ; preds = %6
  %10 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %5) #7
  %11 = ptrtoint i8* %10 to i64
  %12 = call i8* @vector_at(%struct.vector* %nodeVectorPtr, i64 %11) #7
  %13 = bitcast i8* %12 to %struct.net_node*
  %14 = call fastcc i64 @isCycle(%struct.vector* %nodeVectorPtr, %struct.net_node* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %6, label %.loopexit.loopexit

; <label>:16                                      ; preds = %0
  br label %.loopexit

; <label>:17                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 534, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.isCycle, i64 0, i64 0)) #8
  unreachable

; <label>:18                                      ; preds = %6
  store i32 1, i32* %1, align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %9
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0, %18, %16
  %.0 = phi i64 [ 0, %16 ], [ 0, %18 ], [ 1, %0 ], [ 1, %.loopexit.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define %struct.list* @net_getParentIdListPtr(%struct.net* nocapture readonly %netPtr, i64 %id) #0 {
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i8* @vector_at(%struct.vector* %2, i64 %id) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 589, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.net_getParentIdListPtr, i64 0, i64 0)) #8
  unreachable

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %3, i64 8
  %8 = bitcast i8* %7 to %struct.list**
  %9 = load %struct.list*, %struct.list** %8, align 8
  ret %struct.list* %9
}

; Function Attrs: nounwind uwtable
define %struct.list* @net_getChildIdListPtr(%struct.net* nocapture readonly %netPtr, i64 %id) #0 {
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i8* @vector_at(%struct.vector* %2, i64 %id) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 603, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.net_getChildIdListPtr, i64 0, i64 0)) #8
  unreachable

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8, i8* %3, i64 16
  %8 = bitcast i8* %7 to %struct.list**
  %9 = load %struct.list*, %struct.list** %8, align 8
  ret %struct.list* %9
}

; Function Attrs: nounwind uwtable
define i64 @net_findAncestors(%struct.net* nocapture readonly %netPtr, i64 %id, %struct.bitmap* %ancestorBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %it3 = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %ancestorBitmapPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @vector_getSize(%struct.vector* %2) #7
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 624, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i64 0, i64 0)) #8
  unreachable

; <label>:8                                       ; preds = %0
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %ancestorBitmapPtr) #7
  tail call void @queue_clear(%struct.queue* %workQueuePtr) #7
  %9 = tail call i8* @vector_at(%struct.vector* %2, i64 %id) #7
  %10 = getelementptr inbounds i8, i8* %9, i64 8
  %11 = bitcast i8* %10 to %struct.list**
  %12 = load %struct.list*, %struct.list** %11, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %12) #7
  br label %13

; <label>:13                                      ; preds = %24, %8
  %14 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %12) #9
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %.preheader, label %18

.preheader:                                       ; preds = %13
  %16 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #7
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %.lr.ph2.preheader, label %.loopexit1

.lr.ph2.preheader:                                ; preds = %.preheader
  br label %.lr.ph2

; <label>:18                                      ; preds = %13
  %19 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %12) #7
  %20 = ptrtoint i8* %19 to i64
  %21 = call i64 @bitmap_set(%struct.bitmap* %ancestorBitmapPtr, i64 %20) #7
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %18
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 637, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i64 0, i64 0)) #8
  unreachable

; <label>:24                                      ; preds = %18
  %25 = call i64 @queue_push(%struct.queue* %workQueuePtr, i8* %19) #7
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %13

; <label>:27                                      ; preds = %24
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 639, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i64 0, i64 0)) #8
  unreachable

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %34
  %28 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #7
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %.lr.ph2, label %.loopexit1.loopexit

.lr.ph2:                                          ; preds = %.lr.ph2.preheader, %.loopexit
  %30 = call i8* @queue_pop(%struct.queue* %workQueuePtr) #7
  %31 = ptrtoint i8* %30 to i64
  %32 = icmp eq i64 %31, %id
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %.lr.ph2
  call void @queue_clear(%struct.queue* %workQueuePtr) #7
  br label %.loopexit1

; <label>:34                                      ; preds = %.lr.ph2
  %35 = call i8* @vector_at(%struct.vector* %2, i64 %31) #7
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  %37 = bitcast i8* %36 to %struct.list**
  %38 = load %struct.list*, %struct.list** %37, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it3, %struct.list* %38) #7
  %39 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #9
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %34
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %41 = call i8* @list_iter_next(%struct.list_node** nonnull %it3, %struct.list* %38) #7
  %42 = ptrtoint i8* %41 to i64
  %43 = call i64 @bitmap_isSet(%struct.bitmap* %ancestorBitmapPtr, i64 %42) #7
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %47, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %51
  %45 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #9
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %.loopexit.loopexit, label %.lr.ph

; <label>:47                                      ; preds = %.lr.ph
  %48 = call i64 @bitmap_set(%struct.bitmap* %ancestorBitmapPtr, i64 %42) #7
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %47
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 657, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i64 0, i64 0)) #8
  unreachable

; <label>:51                                      ; preds = %47
  %52 = call i64 @queue_push(%struct.queue* %workQueuePtr, i8* %41) #7
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %.backedge

; <label>:54                                      ; preds = %51
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 659, i8* nonnull getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i64 0, i64 0)) #8
  unreachable

.loopexit1.loopexit:                              ; preds = %.loopexit
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %.preheader, %33
  %.0 = phi i64 [ 0, %33 ], [ 1, %.preheader ], [ 1, %.loopexit1.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @TMnet_findAncestors(%struct.net* nocapture readonly %netPtr, i64 %id, %struct.bitmap* %ancestorBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %it3 = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %ancestorBitmapPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @vector_getSize(%struct.vector* %2) #7
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 684, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i64 0, i64 0)) #8
  unreachable

; <label>:8                                       ; preds = %0
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %ancestorBitmapPtr) #7
  tail call void @queue_clear(%struct.queue* %workQueuePtr) #7
  %9 = tail call i8* @vector_at(%struct.vector* %2, i64 %id) #7
  %10 = getelementptr inbounds i8, i8* %9, i64 8
  %11 = bitcast i8* %10 to %struct.list**
  %12 = load %struct.list*, %struct.list** %11, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %12) #7
  br label %13

; <label>:13                                      ; preds = %24, %8
  %14 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %12) #9
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %.preheader, label %18

.preheader:                                       ; preds = %13
  %16 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #7
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %.lr.ph2.preheader, label %.loopexit1

.lr.ph2.preheader:                                ; preds = %.preheader
  br label %.lr.ph2

; <label>:18                                      ; preds = %13
  %19 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %12) #7
  %20 = ptrtoint i8* %19 to i64
  %21 = call i64 @bitmap_set(%struct.bitmap* %ancestorBitmapPtr, i64 %20) #7
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %18
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 697, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i64 0, i64 0)) #8
  unreachable

; <label>:24                                      ; preds = %18
  %25 = call i64 @Pqueue_push(%struct.queue* %workQueuePtr, i8* %19) #7
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %13

; <label>:27                                      ; preds = %24
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 699, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i64 0, i64 0)) #8
  unreachable

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %34
  %28 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #7
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %.lr.ph2, label %.loopexit1.loopexit

.lr.ph2:                                          ; preds = %.lr.ph2.preheader, %.loopexit
  %30 = call i8* @queue_pop(%struct.queue* %workQueuePtr) #7
  %31 = ptrtoint i8* %30 to i64
  %32 = icmp eq i64 %31, %id
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %.lr.ph2
  call void @queue_clear(%struct.queue* %workQueuePtr) #7
  br label %.loopexit1

; <label>:34                                      ; preds = %.lr.ph2
  %35 = call i8* @vector_at(%struct.vector* %2, i64 %31) #7
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  %37 = bitcast i8* %36 to %struct.list**
  %38 = load %struct.list*, %struct.list** %37, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it3, %struct.list* %38) #7
  %39 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #9
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %34
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %41 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it3, %struct.list* %38) #7
  %42 = ptrtoint i8* %41 to i64
  %43 = call i64 @bitmap_isSet(%struct.bitmap* %ancestorBitmapPtr, i64 %42) #7
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %47, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %51
  %45 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #9
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %.loopexit.loopexit, label %.lr.ph

; <label>:47                                      ; preds = %.lr.ph
  %48 = call i64 @bitmap_set(%struct.bitmap* %ancestorBitmapPtr, i64 %42) #7
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %47
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 717, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i64 0, i64 0)) #8
  unreachable

; <label>:51                                      ; preds = %47
  %52 = call i64 @Pqueue_push(%struct.queue* %workQueuePtr, i8* %41) #7
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %.backedge

; <label>:54                                      ; preds = %51
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 719, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i64 0, i64 0)) #8
  unreachable

.loopexit1.loopexit:                              ; preds = %.loopexit
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %.preheader, %33
  %.0 = phi i64 [ 0, %33 ], [ 1, %.preheader ], [ 1, %.loopexit1.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @net_findDescendants(%struct.net* nocapture readonly %netPtr, i64 %id, %struct.bitmap* %descendantBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %it3 = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %descendantBitmapPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @vector_getSize(%struct.vector* %2) #7
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 743, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i64 0, i64 0)) #8
  unreachable

; <label>:8                                       ; preds = %0
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %descendantBitmapPtr) #7
  tail call void @queue_clear(%struct.queue* %workQueuePtr) #7
  %9 = tail call i8* @vector_at(%struct.vector* %2, i64 %id) #7
  %10 = getelementptr inbounds i8, i8* %9, i64 16
  %11 = bitcast i8* %10 to %struct.list**
  %12 = load %struct.list*, %struct.list** %11, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %12) #7
  br label %13

; <label>:13                                      ; preds = %24, %8
  %14 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %12) #9
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %.preheader, label %18

.preheader:                                       ; preds = %13
  %16 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #7
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %.lr.ph2.preheader, label %.loopexit1

.lr.ph2.preheader:                                ; preds = %.preheader
  br label %.lr.ph2

; <label>:18                                      ; preds = %13
  %19 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %12) #7
  %20 = ptrtoint i8* %19 to i64
  %21 = call i64 @bitmap_set(%struct.bitmap* %descendantBitmapPtr, i64 %20) #7
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %18
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 756, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i64 0, i64 0)) #8
  unreachable

; <label>:24                                      ; preds = %18
  %25 = call i64 @queue_push(%struct.queue* %workQueuePtr, i8* %19) #7
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %13

; <label>:27                                      ; preds = %24
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 758, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i64 0, i64 0)) #8
  unreachable

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %34
  %28 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #7
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %.lr.ph2, label %.loopexit1.loopexit

.lr.ph2:                                          ; preds = %.lr.ph2.preheader, %.loopexit
  %30 = call i8* @queue_pop(%struct.queue* %workQueuePtr) #7
  %31 = ptrtoint i8* %30 to i64
  %32 = icmp eq i64 %31, %id
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %.lr.ph2
  call void @queue_clear(%struct.queue* %workQueuePtr) #7
  br label %.loopexit1

; <label>:34                                      ; preds = %.lr.ph2
  %35 = call i8* @vector_at(%struct.vector* %2, i64 %31) #7
  %36 = getelementptr inbounds i8, i8* %35, i64 16
  %37 = bitcast i8* %36 to %struct.list**
  %38 = load %struct.list*, %struct.list** %37, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it3, %struct.list* %38) #7
  %39 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #9
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %34
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %41 = call i8* @list_iter_next(%struct.list_node** nonnull %it3, %struct.list* %38) #7
  %42 = ptrtoint i8* %41 to i64
  %43 = call i64 @bitmap_isSet(%struct.bitmap* %descendantBitmapPtr, i64 %42) #7
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %47, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %51
  %45 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #9
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %.loopexit.loopexit, label %.lr.ph

; <label>:47                                      ; preds = %.lr.ph
  %48 = call i64 @bitmap_set(%struct.bitmap* %descendantBitmapPtr, i64 %42) #7
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %47
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 776, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i64 0, i64 0)) #8
  unreachable

; <label>:51                                      ; preds = %47
  %52 = call i64 @queue_push(%struct.queue* %workQueuePtr, i8* %41) #7
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %.backedge

; <label>:54                                      ; preds = %51
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 778, i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i64 0, i64 0)) #8
  unreachable

.loopexit1.loopexit:                              ; preds = %.loopexit
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %.preheader, %33
  %.0 = phi i64 [ 0, %33 ], [ 1, %.preheader ], [ 1, %.loopexit1.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @TMnet_findDescendants(%struct.net* nocapture readonly %netPtr, i64 %id, %struct.bitmap* %descendantBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %it3 = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %descendantBitmapPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = tail call i64 @vector_getSize(%struct.vector* %2) #7
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 803, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i64 0, i64 0)) #8
  unreachable

; <label>:8                                       ; preds = %0
  tail call void @bitmap_clearAll(%struct.bitmap* nonnull %descendantBitmapPtr) #7
  tail call void @queue_clear(%struct.queue* %workQueuePtr) #7
  %9 = tail call i8* @vector_at(%struct.vector* %2, i64 %id) #7
  %10 = getelementptr inbounds i8, i8* %9, i64 16
  %11 = bitcast i8* %10 to %struct.list**
  %12 = load %struct.list*, %struct.list** %11, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %12) #7
  br label %13

; <label>:13                                      ; preds = %24, %8
  %14 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %12) #9
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %.preheader, label %18

.preheader:                                       ; preds = %13
  %16 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #7
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %.lr.ph2.preheader, label %.loopexit1

.lr.ph2.preheader:                                ; preds = %.preheader
  br label %.lr.ph2

; <label>:18                                      ; preds = %13
  %19 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %12) #7
  %20 = ptrtoint i8* %19 to i64
  %21 = call i64 @bitmap_set(%struct.bitmap* %descendantBitmapPtr, i64 %20) #7
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %18
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 816, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i64 0, i64 0)) #8
  unreachable

; <label>:24                                      ; preds = %18
  %25 = call i64 @Pqueue_push(%struct.queue* %workQueuePtr, i8* %19) #7
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %13

; <label>:27                                      ; preds = %24
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 818, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i64 0, i64 0)) #8
  unreachable

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %34
  %28 = call i64 @queue_isEmpty(%struct.queue* %workQueuePtr) #7
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %.lr.ph2, label %.loopexit1.loopexit

.lr.ph2:                                          ; preds = %.lr.ph2.preheader, %.loopexit
  %30 = call i8* @queue_pop(%struct.queue* %workQueuePtr) #7
  %31 = ptrtoint i8* %30 to i64
  %32 = icmp eq i64 %31, %id
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %.lr.ph2
  call void @queue_clear(%struct.queue* %workQueuePtr) #7
  br label %.loopexit1

; <label>:34                                      ; preds = %.lr.ph2
  %35 = call i8* @vector_at(%struct.vector* %2, i64 %31) #7
  %36 = getelementptr inbounds i8, i8* %35, i64 16
  %37 = bitcast i8* %36 to %struct.list**
  %38 = load %struct.list*, %struct.list** %37, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it3, %struct.list* %38) #7
  %39 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #9
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %34
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %41 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it3, %struct.list* %38) #7
  %42 = ptrtoint i8* %41 to i64
  %43 = call i64 @bitmap_isSet(%struct.bitmap* %descendantBitmapPtr, i64 %42) #7
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %47, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %51
  %45 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it3, %struct.list* %38) #9
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %.loopexit.loopexit, label %.lr.ph

; <label>:47                                      ; preds = %.lr.ph
  %48 = call i64 @bitmap_set(%struct.bitmap* %descendantBitmapPtr, i64 %42) #7
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %47
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 836, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i64 0, i64 0)) #8
  unreachable

; <label>:51                                      ; preds = %47
  %52 = call i64 @Pqueue_push(%struct.queue* %workQueuePtr, i8* %41) #7
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %.backedge

; <label>:54                                      ; preds = %51
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 838, i8* nonnull getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i64 0, i64 0)) #8
  unreachable

.loopexit1.loopexit:                              ; preds = %.loopexit
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %.preheader, %33
  %.0 = phi i64 [ 0, %33 ], [ 1, %.preheader ], [ 1, %.loopexit1.loopexit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define void @net_generateRandomEdges(%struct.net* nocapture readonly %netPtr, i64 %maxNumParent, i64 %percentParent, %struct.random* %randomPtr) #0 {
  %it.i = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.net, %struct.net* %netPtr, i64 0, i32 0
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i64 @vector_getSize(%struct.vector* %2) #7
  %4 = tail call %struct.bitmap* @bitmap_alloc(i64 %3) #7
  %5 = icmp eq %struct.bitmap* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 861, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_generateRandomEdges, i64 0, i64 0)) #8
  unreachable

; <label>:7                                       ; preds = %0
  %8 = tail call %struct.queue* @queue_alloc(i64 -1) #7
  %9 = icmp sgt i64 %3, 0
  br i1 %9, label %.preheader.lr.ph, label %._crit_edge4

.preheader.lr.ph:                                 ; preds = %7
  %10 = icmp sgt i64 %maxNumParent, 0
  %11 = bitcast %struct.list_node** %it.i to i8*
  br i1 %10, label %.lr.ph.us.preheader, label %._crit_edge4

.lr.ph.us.preheader:                              ; preds = %.preheader.lr.ph
  br label %.lr.ph.us

; <label>:12                                      ; preds = %.lr.ph.us, %insertEdge.exit.us
  %p.01.us = phi i64 [ 0, %.lr.ph.us ], [ %51, %insertEdge.exit.us ]
  %13 = call i64 @random_generate(%struct.random* %randomPtr) #7
  %14 = urem i64 %13, 100
  %15 = icmp slt i64 %14, %percentParent
  br i1 %15, label %16, label %insertEdge.exit.us

; <label>:16                                      ; preds = %12
  %17 = call i64 @random_generate(%struct.random* %randomPtr) #7
  %18 = urem i64 %17, %3
  %19 = icmp eq i64 %18, %n.02.us
  br i1 %19, label %insertEdge.exit.us, label %20

; <label>:20                                      ; preds = %16
  call void @llvm.lifetime.start(i64 8, i8* %11)
  %21 = load %struct.vector*, %struct.vector** %1, align 8
  %22 = call i8* @vector_at(%struct.vector* %21, i64 %n.02.us) #7
  %23 = getelementptr inbounds i8, i8* %22, i64 8
  %24 = bitcast i8* %23 to %struct.list**
  %25 = load %struct.list*, %struct.list** %24, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it.i, %struct.list* %25) #7
  br label %26

; <label>:26                                      ; preds = %29, %20
  %27 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it.i, %struct.list* %25) #9
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

; <label>:29                                      ; preds = %26
  %30 = call i8* @list_iter_next(%struct.list_node** nonnull %it.i, %struct.list* %25) #7
  %31 = ptrtoint i8* %30 to i64
  %32 = icmp eq i64 %31, %18
  br i1 %32, label %net_hasEdge.exit.us, label %26

net_hasEdge.exit.us:                              ; preds = %29
  call void @llvm.lifetime.end(i64 8, i8* %11)
  br label %insertEdge.exit.us

; <label>:33                                      ; preds = %26
  call void @llvm.lifetime.end(i64 8, i8* %11)
  %34 = call i64 @net_isPath(%struct.net* %netPtr, i64 %n.02.us, i64 %18, %struct.bitmap* nonnull %4, %struct.queue* %8)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %insertEdge.exit.us

; <label>:36                                      ; preds = %33
  %netPtr.idx.val.us = load %struct.vector*, %struct.vector** %1, align 8
  %37 = call i8* @vector_at(%struct.vector* %netPtr.idx.val.us, i64 %n.02.us) #7
  %38 = getelementptr inbounds i8, i8* %37, i64 8
  %39 = bitcast i8* %38 to %struct.list**
  %40 = load %struct.list*, %struct.list** %39, align 8
  %41 = inttoptr i64 %18 to i8*
  %42 = call i64 @list_insert(%struct.list* %40, i8* %41) #7
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %.us-lcssa.us, label %44

; <label>:44                                      ; preds = %36
  %45 = call i8* @vector_at(%struct.vector* %netPtr.idx.val.us, i64 %18) #7
  %46 = getelementptr inbounds i8, i8* %45, i64 16
  %47 = bitcast i8* %46 to %struct.list**
  %48 = load %struct.list*, %struct.list** %47, align 8
  %49 = call i64 @list_insert(%struct.list* %48, i8* %53) #7
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %.us-lcssa5.us, label %insertEdge.exit.us

insertEdge.exit.us:                               ; preds = %44, %33, %net_hasEdge.exit.us, %16, %12
  %51 = add nuw nsw i64 %p.01.us, 1
  %52 = icmp slt i64 %51, %maxNumParent
  br i1 %52, label %12, label %._crit_edge.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %n.02.us = phi i64 [ %54, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %53 = inttoptr i64 %n.02.us to i8*
  br label %12

._crit_edge.us:                                   ; preds = %insertEdge.exit.us
  %54 = add nuw nsw i64 %n.02.us, 1
  %55 = icmp slt i64 %54, %3
  br i1 %55, label %.lr.ph.us, label %._crit_edge4.loopexit

.us-lcssa.us:                                     ; preds = %36
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 228, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.insertEdge, i64 0, i64 0)) #8
  unreachable

.us-lcssa5.us:                                    ; preds = %44
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 233, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.insertEdge, i64 0, i64 0)) #8
  unreachable

._crit_edge4.loopexit:                            ; preds = %._crit_edge.us
  br label %._crit_edge4

._crit_edge4:                                     ; preds = %._crit_edge4.loopexit, %.preheader.lr.ph, %7
  %56 = call i64 @net_isCycle(%struct.net* %netPtr)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %59, label %58

; <label>:58                                      ; preds = %._crit_edge4
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 885, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_generateRandomEdges, i64 0, i64 0)) #8
  unreachable

; <label>:59                                      ; preds = %._crit_edge4
  call void @bitmap_free(%struct.bitmap* nonnull %4) #7
  call void @queue_free(%struct.queue* %8) #7
  ret void
}

declare %struct.bitmap* @bitmap_alloc(i64) #2

declare %struct.queue* @queue_alloc(i64) #2

declare i64 @random_generate(%struct.random*) #2

declare void @bitmap_free(%struct.bitmap*) #2

declare void @queue_free(%struct.queue*) #2

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #2

; Function Attrs: norecurse nounwind readnone uwtable
define internal i64 @compareId(i8* %aPtr, i8* %bPtr) #5 {
  %1 = ptrtoint i8* %aPtr to i64
  %2 = ptrtoint i8* %bPtr to i64
  %3 = sub nsw i64 %1, %2
  ret i64 %3
}

declare void @list_free(%struct.list*) #2

declare void @Plist_free(%struct.list*) #2

declare i64 @list_insert(%struct.list*, i8*) #2

declare i64 @list_remove(%struct.list*, i8*) #2

declare i64 @TMlist_insert(%struct.list*, i8*) #2

declare i64 @TMlist_remove(%struct.list*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
