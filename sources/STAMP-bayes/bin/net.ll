; ModuleID = 'net.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.vector* }
%struct.vector = type { i64, i64, i8** }
%struct.net_node = type { i64, %struct.list*, %struct.list*, i32 }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.bitmap = type { i64, i64, i64* }
%struct.queue = type opaque
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
define %struct.net* @net_alloc(i64 %numNode) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i64, align 8
  %netPtr = alloca %struct.net*, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %i = alloca i64, align 8
  %nodePtr = alloca %struct.net_node*, align 8
  %j = alloca i64, align 8
  %status = alloca i64, align 8
  store i64 %numNode, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 8) #5
  %4 = bitcast i8* %3 to %struct.net*
  store %struct.net* %4, %struct.net** %netPtr, align 8
  %5 = load %struct.net*, %struct.net** %netPtr, align 8
  %6 = icmp ne %struct.net* %5, null
  br i1 %6, label %7, label %61

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %2, align 8
  %9 = call %struct.vector* @vector_alloc(i64 %8)
  store %struct.vector* %9, %struct.vector** %nodeVectorPtr, align 8
  %10 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %11 = icmp eq %struct.vector* %10, null
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %7
  %13 = load %struct.net*, %struct.net** %netPtr, align 8
  %14 = bitcast %struct.net* %13 to i8*
  call void @free(i8* %14) #5
  store %struct.net* null, %struct.net** %1, align 8
  br label %63

; <label>:15                                      ; preds = %7
  store i64 0, i64* %i, align 8
  br label %16

; <label>:16                                      ; preds = %54, %15
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %57

; <label>:20                                      ; preds = %16
  %21 = load i64, i64* %i, align 8
  %22 = call %struct.net_node* @allocNode(i64 %21)
  store %struct.net_node* %22, %struct.net_node** %nodePtr, align 8
  %23 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %24 = icmp eq %struct.net_node* %23, null
  br i1 %24, label %25, label %43

; <label>:25                                      ; preds = %20
  store i64 0, i64* %j, align 8
  br label %26

; <label>:26                                      ; preds = %36, %25
  %27 = load i64, i64* %j, align 8
  %28 = load i64, i64* %i, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %39

; <label>:30                                      ; preds = %26
  %31 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %32 = load i64, i64* %j, align 8
  %33 = call i8* @vector_at(%struct.vector* %31, i64 %32)
  %34 = bitcast i8* %33 to %struct.net_node*
  store %struct.net_node* %34, %struct.net_node** %nodePtr, align 8
  %35 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  call void @freeNode(%struct.net_node* %35)
  br label %36

; <label>:36                                      ; preds = %30
  %37 = load i64, i64* %j, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %j, align 8
  br label %26

; <label>:39                                      ; preds = %26
  %40 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  call void @vector_free(%struct.vector* %40)
  %41 = load %struct.net*, %struct.net** %netPtr, align 8
  %42 = bitcast %struct.net* %41 to i8*
  call void @free(i8* %42) #5
  store %struct.net* null, %struct.net** %1, align 8
  br label %63

; <label>:43                                      ; preds = %20
  %44 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %45 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %46 = bitcast %struct.net_node* %45 to i8*
  %47 = call i64 @vector_pushBack(%struct.vector* %44, i8* %46)
  store i64 %47, i64* %status, align 8
  %48 = load i64, i64* %status, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %43
  br label %53

; <label>:51                                      ; preds = %43
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 187, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.net_alloc, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %53

; <label>:53                                      ; preds = %52, %50
  br label %54

; <label>:54                                      ; preds = %53
  %55 = load i64, i64* %i, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %i, align 8
  br label %16

; <label>:57                                      ; preds = %16
  %58 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %59 = load %struct.net*, %struct.net** %netPtr, align 8
  %60 = getelementptr inbounds %struct.net, %struct.net* %59, i32 0, i32 0
  store %struct.vector* %58, %struct.vector** %60, align 8
  br label %61

; <label>:61                                      ; preds = %57, %0
  %62 = load %struct.net*, %struct.net** %netPtr, align 8
  store %struct.net* %62, %struct.net** %1, align 8
  br label %63

; <label>:63                                      ; preds = %61, %39, %12
  %64 = load %struct.net*, %struct.net** %1, align 8
  ret %struct.net* %64
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.vector* @vector_alloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.net_node* @allocNode(i64 %id) #0 {
  %1 = alloca %struct.net_node*, align 8
  %2 = alloca i64, align 8
  %nodePtr = alloca %struct.net_node*, align 8
  store i64 %id, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #5
  %4 = bitcast i8* %3 to %struct.net_node*
  store %struct.net_node* %4, %struct.net_node** %nodePtr, align 8
  %5 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %6 = icmp ne %struct.net_node* %5, null
  br i1 %6, label %7, label %36

; <label>:7                                       ; preds = %0
  %8 = call %struct.list* @list_alloc(i64 (i8*, i8*)* @compareId)
  %9 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %10 = getelementptr inbounds %struct.net_node, %struct.net_node* %9, i32 0, i32 1
  store %struct.list* %8, %struct.list** %10, align 8
  %11 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %12 = getelementptr inbounds %struct.net_node, %struct.net_node* %11, i32 0, i32 1
  %13 = load %struct.list*, %struct.list** %12, align 8
  %14 = icmp eq %struct.list* %13, null
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %7
  %16 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %17 = bitcast %struct.net_node* %16 to i8*
  call void @free(i8* %17) #5
  store %struct.net_node* null, %struct.net_node** %1, align 8
  br label %38

; <label>:18                                      ; preds = %7
  %19 = call %struct.list* @list_alloc(i64 (i8*, i8*)* @compareId)
  %20 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %21 = getelementptr inbounds %struct.net_node, %struct.net_node* %20, i32 0, i32 2
  store %struct.list* %19, %struct.list** %21, align 8
  %22 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %23 = getelementptr inbounds %struct.net_node, %struct.net_node* %22, i32 0, i32 2
  %24 = load %struct.list*, %struct.list** %23, align 8
  %25 = icmp eq %struct.list* %24, null
  br i1 %25, label %26, label %32

; <label>:26                                      ; preds = %18
  %27 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %28 = getelementptr inbounds %struct.net_node, %struct.net_node* %27, i32 0, i32 1
  %29 = load %struct.list*, %struct.list** %28, align 8
  call void @list_free(%struct.list* %29)
  %30 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %31 = bitcast %struct.net_node* %30 to i8*
  call void @free(i8* %31) #5
  store %struct.net_node* null, %struct.net_node** %1, align 8
  br label %38

; <label>:32                                      ; preds = %18
  %33 = load i64, i64* %2, align 8
  %34 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %35 = getelementptr inbounds %struct.net_node, %struct.net_node* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

; <label>:36                                      ; preds = %32, %0
  %37 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  store %struct.net_node* %37, %struct.net_node** %1, align 8
  br label %38

; <label>:38                                      ; preds = %36, %26, %15
  %39 = load %struct.net_node*, %struct.net_node** %1, align 8
  ret %struct.net_node* %39
}

declare i8* @vector_at(%struct.vector*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @freeNode(%struct.net_node* %nodePtr) #0 {
  %1 = alloca %struct.net_node*, align 8
  store %struct.net_node* %nodePtr, %struct.net_node** %1, align 8
  %2 = load %struct.net_node*, %struct.net_node** %1, align 8
  %3 = getelementptr inbounds %struct.net_node, %struct.net_node* %2, i32 0, i32 2
  %4 = load %struct.list*, %struct.list** %3, align 8
  call void @Plist_free(%struct.list* %4)
  %5 = load %struct.net_node*, %struct.net_node** %1, align 8
  %6 = getelementptr inbounds %struct.net_node, %struct.net_node* %5, i32 0, i32 1
  %7 = load %struct.list*, %struct.list** %6, align 8
  call void @Plist_free(%struct.list* %7)
  %8 = load %struct.net_node*, %struct.net_node** %1, align 8
  %9 = bitcast %struct.net_node* %8 to i8*
  call void @free(i8* %9) #5
  ret void
}

declare void @vector_free(%struct.vector*) #2

declare i64 @vector_pushBack(%struct.vector*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define void @net_free(%struct.net* %netPtr) #0 {
  %1 = alloca %struct.net*, align 8
  %i = alloca i64, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %numNode = alloca i64, align 8
  %nodePtr = alloca %struct.net_node*, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  %2 = load %struct.net*, %struct.net** %1, align 8
  %3 = getelementptr inbounds %struct.net, %struct.net* %2, i32 0, i32 0
  %4 = load %struct.vector*, %struct.vector** %3, align 8
  store %struct.vector* %4, %struct.vector** %nodeVectorPtr, align 8
  %5 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %6 = call i64 @vector_getSize(%struct.vector* %5)
  store i64 %6, i64* %numNode, align 8
  store i64 0, i64* %i, align 8
  br label %7

; <label>:7                                       ; preds = %17, %0
  %8 = load i64, i64* %i, align 8
  %9 = load i64, i64* %numNode, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %20

; <label>:11                                      ; preds = %7
  %12 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %13 = load i64, i64* %i, align 8
  %14 = call i8* @vector_at(%struct.vector* %12, i64 %13)
  %15 = bitcast i8* %14 to %struct.net_node*
  store %struct.net_node* %15, %struct.net_node** %nodePtr, align 8
  %16 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  call void @freeNode(%struct.net_node* %16)
  br label %17

; <label>:17                                      ; preds = %11
  %18 = load i64, i64* %i, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %i, align 8
  br label %7

; <label>:20                                      ; preds = %7
  %21 = load %struct.net*, %struct.net** %1, align 8
  %22 = getelementptr inbounds %struct.net, %struct.net* %21, i32 0, i32 0
  %23 = load %struct.vector*, %struct.vector** %22, align 8
  call void @vector_free(%struct.vector* %23)
  %24 = load %struct.net*, %struct.net** %1, align 8
  %25 = bitcast %struct.net* %24 to i8*
  call void @free(i8* %25) #5
  ret void
}

declare i64 @vector_getSize(%struct.vector*) #2

; Function Attrs: nounwind uwtable
define void @net_applyOperation(%struct.net* %netPtr, i32 %op, i64 %fromId, i64 %toId) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i32 %op, i32* %2, align 4
  store i64 %fromId, i64* %3, align 8
  store i64 %toId, i64* %4, align 8
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %18 [
    i32 0, label %6
    i32 1, label %10
    i32 2, label %14
  ]

; <label>:6                                       ; preds = %0
  %7 = load %struct.net*, %struct.net** %1, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* %4, align 8
  call void @insertEdge(%struct.net* %7, i64 %8, i64 %9)
  br label %19

; <label>:10                                      ; preds = %0
  %11 = load %struct.net*, %struct.net** %1, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* %4, align 8
  call void @removeEdge(%struct.net* %11, i64 %12, i64 %13)
  br label %19

; <label>:14                                      ; preds = %0
  %15 = load %struct.net*, %struct.net** %1, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  call void @reverseEdge(%struct.net* %15, i64 %16, i64 %17)
  br label %19

; <label>:18                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 339, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.net_applyOperation, i32 0, i32 0)) #6
  unreachable

; <label>:19                                      ; preds = %14, %10, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @insertEdge(%struct.net* %netPtr, i64 %fromId, i64 %toId) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %status = alloca i64, align 8
  %childNodePtr = alloca %struct.net_node*, align 8
  %parentIdListPtr = alloca %struct.list*, align 8
  %parentNodePtr = alloca %struct.net_node*, align 8
  %childIdListPtr = alloca %struct.list*, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i64 %fromId, i64* %2, align 8
  store i64 %toId, i64* %3, align 8
  %4 = load %struct.net*, %struct.net** %1, align 8
  %5 = getelementptr inbounds %struct.net, %struct.net* %4, i32 0, i32 0
  %6 = load %struct.vector*, %struct.vector** %5, align 8
  store %struct.vector* %6, %struct.vector** %nodeVectorPtr, align 8
  %7 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i8* @vector_at(%struct.vector* %7, i64 %8)
  %10 = bitcast i8* %9 to %struct.net_node*
  store %struct.net_node* %10, %struct.net_node** %childNodePtr, align 8
  %11 = load %struct.net_node*, %struct.net_node** %childNodePtr, align 8
  %12 = getelementptr inbounds %struct.net_node, %struct.net_node* %11, i32 0, i32 1
  %13 = load %struct.list*, %struct.list** %12, align 8
  store %struct.list* %13, %struct.list** %parentIdListPtr, align 8
  %14 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %15 = load i64, i64* %2, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i64 @list_insert(%struct.list* %14, i8* %16)
  store i64 %17, i64* %status, align 8
  %18 = load i64, i64* %status, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %0
  br label %23

; <label>:21                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 228, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.insertEdge, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %25 = load i64, i64* %2, align 8
  %26 = call i8* @vector_at(%struct.vector* %24, i64 %25)
  %27 = bitcast i8* %26 to %struct.net_node*
  store %struct.net_node* %27, %struct.net_node** %parentNodePtr, align 8
  %28 = load %struct.net_node*, %struct.net_node** %parentNodePtr, align 8
  %29 = getelementptr inbounds %struct.net_node, %struct.net_node* %28, i32 0, i32 2
  %30 = load %struct.list*, %struct.list** %29, align 8
  store %struct.list* %30, %struct.list** %childIdListPtr, align 8
  %31 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %32 = load i64, i64* %3, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i64 @list_insert(%struct.list* %31, i8* %33)
  store i64 %34, i64* %status, align 8
  %35 = load i64, i64* %status, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %23
  br label %40

; <label>:38                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 233, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.insertEdge, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:40                                      ; preds = %39, %37
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @removeEdge(%struct.net* %netPtr, i64 %fromId, i64 %toId) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %status = alloca i64, align 8
  %childNodePtr = alloca %struct.net_node*, align 8
  %parentIdListPtr = alloca %struct.list*, align 8
  %parentNodePtr = alloca %struct.net_node*, align 8
  %childIdListPtr = alloca %struct.list*, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i64 %fromId, i64* %2, align 8
  store i64 %toId, i64* %3, align 8
  %4 = load %struct.net*, %struct.net** %1, align 8
  %5 = getelementptr inbounds %struct.net, %struct.net* %4, i32 0, i32 0
  %6 = load %struct.vector*, %struct.vector** %5, align 8
  store %struct.vector* %6, %struct.vector** %nodeVectorPtr, align 8
  %7 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i8* @vector_at(%struct.vector* %7, i64 %8)
  %10 = bitcast i8* %9 to %struct.net_node*
  store %struct.net_node* %10, %struct.net_node** %childNodePtr, align 8
  %11 = load %struct.net_node*, %struct.net_node** %childNodePtr, align 8
  %12 = getelementptr inbounds %struct.net_node, %struct.net_node* %11, i32 0, i32 1
  %13 = load %struct.list*, %struct.list** %12, align 8
  store %struct.list* %13, %struct.list** %parentIdListPtr, align 8
  %14 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %15 = load i64, i64* %2, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i64 @list_remove(%struct.list* %14, i8* %16)
  store i64 %17, i64* %status, align 8
  %18 = load i64, i64* %status, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %0
  br label %23

; <label>:21                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 272, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.removeEdge, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %25 = load i64, i64* %2, align 8
  %26 = call i8* @vector_at(%struct.vector* %24, i64 %25)
  %27 = bitcast i8* %26 to %struct.net_node*
  store %struct.net_node* %27, %struct.net_node** %parentNodePtr, align 8
  %28 = load %struct.net_node*, %struct.net_node** %parentNodePtr, align 8
  %29 = getelementptr inbounds %struct.net_node, %struct.net_node* %28, i32 0, i32 2
  %30 = load %struct.list*, %struct.list** %29, align 8
  store %struct.list* %30, %struct.list** %childIdListPtr, align 8
  %31 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %32 = load i64, i64* %3, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i64 @list_remove(%struct.list* %31, i8* %33)
  store i64 %34, i64* %status, align 8
  %35 = load i64, i64* %status, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %23
  br label %40

; <label>:38                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 277, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.removeEdge, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:40                                      ; preds = %39, %37
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reverseEdge(%struct.net* %netPtr, i64 %fromId, i64 %toId) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i64 %fromId, i64* %2, align 8
  store i64 %toId, i64* %3, align 8
  %4 = load %struct.net*, %struct.net** %1, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* %3, align 8
  call void @removeEdge(%struct.net* %4, i64 %5, i64 %6)
  %7 = load %struct.net*, %struct.net** %1, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* %2, align 8
  call void @insertEdge(%struct.net* %7, i64 %8, i64 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMnet_applyOperation(%struct.net* %netPtr, i32 %op, i64 %fromId, i64 %toId) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i32 %op, i32* %2, align 4
  store i64 %fromId, i64* %3, align 8
  store i64 %toId, i64* %4, align 8
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %18 [
    i32 0, label %6
    i32 1, label %10
    i32 2, label %14
  ]

; <label>:6                                       ; preds = %0
  %7 = load %struct.net*, %struct.net** %1, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* %4, align 8
  call void @TMinsertEdge(%struct.net* %7, i64 %8, i64 %9)
  br label %19

; <label>:10                                      ; preds = %0
  %11 = load %struct.net*, %struct.net** %1, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* %4, align 8
  call void @TMremoveEdge(%struct.net* %11, i64 %12, i64 %13)
  br label %19

; <label>:14                                      ; preds = %0
  %15 = load %struct.net*, %struct.net** %1, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  call void @TMreverseEdge(%struct.net* %15, i64 %16, i64 %17)
  br label %19

; <label>:18                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 357, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.TMnet_applyOperation, i32 0, i32 0)) #6
  unreachable

; <label>:19                                      ; preds = %14, %10, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMinsertEdge(%struct.net* %netPtr, i64 %fromId, i64 %toId) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %status = alloca i64, align 8
  %childNodePtr = alloca %struct.net_node*, align 8
  %parentIdListPtr = alloca %struct.list*, align 8
  %parentNodePtr = alloca %struct.net_node*, align 8
  %childIdListPtr = alloca %struct.list*, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i64 %fromId, i64* %2, align 8
  store i64 %toId, i64* %3, align 8
  %4 = load %struct.net*, %struct.net** %1, align 8
  %5 = getelementptr inbounds %struct.net, %struct.net* %4, i32 0, i32 0
  %6 = load %struct.vector*, %struct.vector** %5, align 8
  store %struct.vector* %6, %struct.vector** %nodeVectorPtr, align 8
  %7 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i8* @vector_at(%struct.vector* %7, i64 %8)
  %10 = bitcast i8* %9 to %struct.net_node*
  store %struct.net_node* %10, %struct.net_node** %childNodePtr, align 8
  %11 = load %struct.net_node*, %struct.net_node** %childNodePtr, align 8
  %12 = getelementptr inbounds %struct.net_node, %struct.net_node* %11, i32 0, i32 1
  %13 = load %struct.list*, %struct.list** %12, align 8
  store %struct.list* %13, %struct.list** %parentIdListPtr, align 8
  %14 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %15 = load i64, i64* %2, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i64 @TMlist_insert(%struct.list* %14, i8* %16)
  store i64 %17, i64* %status, align 8
  %18 = load i64, i64* %status, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %0
  br label %23

; <label>:21                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 250, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMinsertEdge, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %25 = load i64, i64* %2, align 8
  %26 = call i8* @vector_at(%struct.vector* %24, i64 %25)
  %27 = bitcast i8* %26 to %struct.net_node*
  store %struct.net_node* %27, %struct.net_node** %parentNodePtr, align 8
  %28 = load %struct.net_node*, %struct.net_node** %parentNodePtr, align 8
  %29 = getelementptr inbounds %struct.net_node, %struct.net_node* %28, i32 0, i32 2
  %30 = load %struct.list*, %struct.list** %29, align 8
  store %struct.list* %30, %struct.list** %childIdListPtr, align 8
  %31 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %32 = load i64, i64* %3, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i64 @TMlist_insert(%struct.list* %31, i8* %33)
  store i64 %34, i64* %status, align 8
  %35 = load i64, i64* %status, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %23
  br label %40

; <label>:38                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 255, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMinsertEdge, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:40                                      ; preds = %39, %37
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMremoveEdge(%struct.net* %netPtr, i64 %fromId, i64 %toId) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %status = alloca i64, align 8
  %childNodePtr = alloca %struct.net_node*, align 8
  %parentIdListPtr = alloca %struct.list*, align 8
  %parentNodePtr = alloca %struct.net_node*, align 8
  %childIdListPtr = alloca %struct.list*, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i64 %fromId, i64* %2, align 8
  store i64 %toId, i64* %3, align 8
  %4 = load %struct.net*, %struct.net** %1, align 8
  %5 = getelementptr inbounds %struct.net, %struct.net* %4, i32 0, i32 0
  %6 = load %struct.vector*, %struct.vector** %5, align 8
  store %struct.vector* %6, %struct.vector** %nodeVectorPtr, align 8
  %7 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i8* @vector_at(%struct.vector* %7, i64 %8)
  %10 = bitcast i8* %9 to %struct.net_node*
  store %struct.net_node* %10, %struct.net_node** %childNodePtr, align 8
  %11 = load %struct.net_node*, %struct.net_node** %childNodePtr, align 8
  %12 = getelementptr inbounds %struct.net_node, %struct.net_node* %11, i32 0, i32 1
  %13 = load %struct.list*, %struct.list** %12, align 8
  store %struct.list* %13, %struct.list** %parentIdListPtr, align 8
  %14 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %15 = load i64, i64* %2, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i64 @TMlist_remove(%struct.list* %14, i8* %16)
  store i64 %17, i64* %status, align 8
  %18 = load i64, i64* %status, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %0
  br label %23

; <label>:21                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 294, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMremoveEdge, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %25 = load i64, i64* %2, align 8
  %26 = call i8* @vector_at(%struct.vector* %24, i64 %25)
  %27 = bitcast i8* %26 to %struct.net_node*
  store %struct.net_node* %27, %struct.net_node** %parentNodePtr, align 8
  %28 = load %struct.net_node*, %struct.net_node** %parentNodePtr, align 8
  %29 = getelementptr inbounds %struct.net_node, %struct.net_node* %28, i32 0, i32 2
  %30 = load %struct.list*, %struct.list** %29, align 8
  store %struct.list* %30, %struct.list** %childIdListPtr, align 8
  %31 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %32 = load i64, i64* %3, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i64 @TMlist_remove(%struct.list* %31, i8* %33)
  store i64 %34, i64* %status, align 8
  %35 = load i64, i64* %status, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %23
  br label %40

; <label>:38                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 299, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.TMremoveEdge, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:40                                      ; preds = %39, %37
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMreverseEdge(%struct.net* %netPtr, i64 %fromId, i64 %toId) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i64 %fromId, i64* %2, align 8
  store i64 %toId, i64* %3, align 8
  %4 = load %struct.net*, %struct.net** %1, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* %3, align 8
  call void @TMremoveEdge(%struct.net* %4, i64 %5, i64 %6)
  %7 = load %struct.net*, %struct.net** %1, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* %2, align 8
  call void @TMinsertEdge(%struct.net* %7, i64 %8, i64 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @net_hasEdge(%struct.net* %netPtr, i64 %fromId, i64 %toId) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.net*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %childNodePtr = alloca %struct.net_node*, align 8
  %parentIdListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %parentId = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %2, align 8
  store i64 %fromId, i64* %3, align 8
  store i64 %toId, i64* %4, align 8
  %5 = load %struct.net*, %struct.net** %2, align 8
  %6 = getelementptr inbounds %struct.net, %struct.net* %5, i32 0, i32 0
  %7 = load %struct.vector*, %struct.vector** %6, align 8
  store %struct.vector* %7, %struct.vector** %nodeVectorPtr, align 8
  %8 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i8* @vector_at(%struct.vector* %8, i64 %9)
  %11 = bitcast i8* %10 to %struct.net_node*
  store %struct.net_node* %11, %struct.net_node** %childNodePtr, align 8
  %12 = load %struct.net_node*, %struct.net_node** %childNodePtr, align 8
  %13 = getelementptr inbounds %struct.net_node, %struct.net_node* %12, i32 0, i32 1
  %14 = load %struct.list*, %struct.list** %13, align 8
  store %struct.list* %14, %struct.list** %parentIdListPtr, align 8
  %15 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %15)
  br label %16

; <label>:16                                      ; preds = %28, %0
  %17 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %18 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %17) #7
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

; <label>:20                                      ; preds = %16
  %21 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %22 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %21)
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %parentId, align 8
  %24 = load i64, i64* %parentId, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %20
  store i64 1, i64* %1, align 8
  br label %30

; <label>:28                                      ; preds = %20
  br label %16

; <label>:29                                      ; preds = %16
  store i64 0, i64* %1, align 8
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load i64, i64* %1, align 8
  ret i64 %31
}

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind uwtable
define i64 @TMnet_hasEdge(%struct.net* %netPtr, i64 %fromId, i64 %toId) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.net*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %childNodePtr = alloca %struct.net_node*, align 8
  %parentIdListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %parentId = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %2, align 8
  store i64 %fromId, i64* %3, align 8
  store i64 %toId, i64* %4, align 8
  %5 = load %struct.net*, %struct.net** %2, align 8
  %6 = getelementptr inbounds %struct.net, %struct.net* %5, i32 0, i32 0
  %7 = load %struct.vector*, %struct.vector** %6, align 8
  store %struct.vector* %7, %struct.vector** %nodeVectorPtr, align 8
  %8 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i8* @vector_at(%struct.vector* %8, i64 %9)
  %11 = bitcast i8* %10 to %struct.net_node*
  store %struct.net_node* %11, %struct.net_node** %childNodePtr, align 8
  %12 = load %struct.net_node*, %struct.net_node** %childNodePtr, align 8
  %13 = getelementptr inbounds %struct.net_node, %struct.net_node* %12, i32 0, i32 1
  %14 = load %struct.list*, %struct.list** %13, align 8
  store %struct.list* %14, %struct.list** %parentIdListPtr, align 8
  %15 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %15)
  br label %16

; <label>:16                                      ; preds = %28, %0
  %17 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %18 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %17) #7
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

; <label>:20                                      ; preds = %16
  %21 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %22 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %21)
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %parentId, align 8
  %24 = load i64, i64* %parentId, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %20
  store i64 1, i64* %1, align 8
  br label %30

; <label>:28                                      ; preds = %20
  br label %16

; <label>:29                                      ; preds = %16
  store i64 0, i64* %1, align 8
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load i64, i64* %1, align 8
  ret i64 %31
}

declare void @TMlist_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @TMlist_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @TMlist_iter_next(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind uwtable
define i64 @net_isPath(%struct.net* %netPtr, i64 %fromId, i64 %toId, %struct.bitmap* %visitedBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.net*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bitmap*, align 8
  %6 = alloca %struct.queue*, align 8
  %status = alloca i64, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %id = alloca i64, align 8
  %nodePtr = alloca %struct.net_node*, align 8
  %childIdListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %childId = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %2, align 8
  store i64 %fromId, i64* %3, align 8
  store i64 %toId, i64* %4, align 8
  store %struct.bitmap* %visitedBitmapPtr, %struct.bitmap** %5, align 8
  store %struct.queue* %workQueuePtr, %struct.queue** %6, align 8
  %7 = load %struct.net*, %struct.net** %2, align 8
  %8 = getelementptr inbounds %struct.net, %struct.net* %7, i32 0, i32 0
  %9 = load %struct.vector*, %struct.vector** %8, align 8
  store %struct.vector* %9, %struct.vector** %nodeVectorPtr, align 8
  %10 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %11 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %14 = call i64 @vector_getSize(%struct.vector* %13)
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %0
  br label %19

; <label>:17                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 424, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_isPath, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %19

; <label>:19                                      ; preds = %18, %16
  %20 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  call void @bitmap_clearAll(%struct.bitmap* %20)
  %21 = load %struct.queue*, %struct.queue** %6, align 8
  call void @queue_clear(%struct.queue* %21)
  %22 = load %struct.queue*, %struct.queue** %6, align 8
  %23 = load i64, i64* %3, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i64 @queue_push(%struct.queue* %22, i8* %24)
  store i64 %25, i64* %status, align 8
  %26 = load i64, i64* %status, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %19
  br label %31

; <label>:29                                      ; preds = %19
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 430, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_isPath, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %31

; <label>:31                                      ; preds = %30, %28
  br label %32

; <label>:32                                      ; preds = %88, %31
  %33 = load %struct.queue*, %struct.queue** %6, align 8
  %34 = call i64 @queue_isEmpty(%struct.queue* %33)
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %89

; <label>:37                                      ; preds = %32
  %38 = load %struct.queue*, %struct.queue** %6, align 8
  %39 = call i8* @queue_pop(%struct.queue* %38)
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* %id, align 8
  %41 = load i64, i64* %id, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

; <label>:44                                      ; preds = %37
  %45 = load %struct.queue*, %struct.queue** %6, align 8
  call void @queue_clear(%struct.queue* %45)
  store i64 1, i64* %1, align 8
  br label %90

; <label>:46                                      ; preds = %37
  %47 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %48 = load i64, i64* %id, align 8
  %49 = call i64 @bitmap_set(%struct.bitmap* %47, i64 %48)
  store i64 %49, i64* %status, align 8
  %50 = load i64, i64* %status, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %46
  br label %55

; <label>:53                                      ; preds = %46
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 439, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_isPath, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:55                                      ; preds = %54, %52
  %56 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %57 = load i64, i64* %id, align 8
  %58 = call i8* @vector_at(%struct.vector* %56, i64 %57)
  %59 = bitcast i8* %58 to %struct.net_node*
  store %struct.net_node* %59, %struct.net_node** %nodePtr, align 8
  %60 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %61 = getelementptr inbounds %struct.net_node, %struct.net_node* %60, i32 0, i32 2
  %62 = load %struct.list*, %struct.list** %61, align 8
  store %struct.list* %62, %struct.list** %childIdListPtr, align 8
  %63 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %63)
  br label %64

; <label>:64                                      ; preds = %87, %55
  %65 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %66 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %65) #7
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %88

; <label>:68                                      ; preds = %64
  %69 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %70 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %69)
  %71 = ptrtoint i8* %70 to i64
  store i64 %71, i64* %childId, align 8
  %72 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %73 = load i64, i64* %childId, align 8
  %74 = call i64 @bitmap_isSet(%struct.bitmap* %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %87, label %76

; <label>:76                                      ; preds = %68
  %77 = load %struct.queue*, %struct.queue** %6, align 8
  %78 = load i64, i64* %childId, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = call i64 @queue_push(%struct.queue* %77, i8* %79)
  store i64 %80, i64* %status, align 8
  %81 = load i64, i64* %status, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %76
  br label %86

; <label>:84                                      ; preds = %76
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 448, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_isPath, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %86

; <label>:86                                      ; preds = %85, %83
  br label %87

; <label>:87                                      ; preds = %86, %68
  br label %64

; <label>:88                                      ; preds = %64
  br label %32

; <label>:89                                      ; preds = %32
  store i64 0, i64* %1, align 8
  br label %90

; <label>:90                                      ; preds = %89, %44
  %91 = load i64, i64* %1, align 8
  ret i64 %91
}

declare void @bitmap_clearAll(%struct.bitmap*) #2

declare void @queue_clear(%struct.queue*) #2

declare i64 @queue_push(%struct.queue*, i8*) #2

declare i64 @queue_isEmpty(%struct.queue*) #2

declare i8* @queue_pop(%struct.queue*) #2

declare i64 @bitmap_set(%struct.bitmap*, i64) #2

declare i64 @bitmap_isSet(%struct.bitmap*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @TMnet_isPath(%struct.net* %netPtr, i64 %fromId, i64 %toId, %struct.bitmap* %visitedBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.net*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bitmap*, align 8
  %6 = alloca %struct.queue*, align 8
  %status = alloca i64, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %id = alloca i64, align 8
  %nodePtr = alloca %struct.net_node*, align 8
  %childIdListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %childId = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %2, align 8
  store i64 %fromId, i64* %3, align 8
  store i64 %toId, i64* %4, align 8
  store %struct.bitmap* %visitedBitmapPtr, %struct.bitmap** %5, align 8
  store %struct.queue* %workQueuePtr, %struct.queue** %6, align 8
  %7 = load %struct.net*, %struct.net** %2, align 8
  %8 = getelementptr inbounds %struct.net, %struct.net* %7, i32 0, i32 0
  %9 = load %struct.vector*, %struct.vector** %8, align 8
  store %struct.vector* %9, %struct.vector** %nodeVectorPtr, align 8
  %10 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %11 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %14 = call i64 @vector_getSize(%struct.vector* %13)
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %0
  br label %19

; <label>:17                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 472, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.TMnet_isPath, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %19

; <label>:19                                      ; preds = %18, %16
  %20 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  call void @bitmap_clearAll(%struct.bitmap* %20)
  %21 = load %struct.queue*, %struct.queue** %6, align 8
  call void @queue_clear(%struct.queue* %21)
  %22 = load %struct.queue*, %struct.queue** %6, align 8
  %23 = load i64, i64* %3, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i64 @Pqueue_push(%struct.queue* %22, i8* %24)
  store i64 %25, i64* %status, align 8
  %26 = load i64, i64* %status, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %19
  br label %31

; <label>:29                                      ; preds = %19
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 478, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.TMnet_isPath, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %31

; <label>:31                                      ; preds = %30, %28
  br label %32

; <label>:32                                      ; preds = %88, %31
  %33 = load %struct.queue*, %struct.queue** %6, align 8
  %34 = call i64 @queue_isEmpty(%struct.queue* %33)
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %89

; <label>:37                                      ; preds = %32
  %38 = load %struct.queue*, %struct.queue** %6, align 8
  %39 = call i8* @queue_pop(%struct.queue* %38)
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* %id, align 8
  %41 = load i64, i64* %id, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

; <label>:44                                      ; preds = %37
  %45 = load %struct.queue*, %struct.queue** %6, align 8
  call void @queue_clear(%struct.queue* %45)
  store i64 1, i64* %1, align 8
  br label %90

; <label>:46                                      ; preds = %37
  %47 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %48 = load i64, i64* %id, align 8
  %49 = call i64 @bitmap_set(%struct.bitmap* %47, i64 %48)
  store i64 %49, i64* %status, align 8
  %50 = load i64, i64* %status, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %46
  br label %55

; <label>:53                                      ; preds = %46
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 487, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.TMnet_isPath, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:55                                      ; preds = %54, %52
  %56 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %57 = load i64, i64* %id, align 8
  %58 = call i8* @vector_at(%struct.vector* %56, i64 %57)
  %59 = bitcast i8* %58 to %struct.net_node*
  store %struct.net_node* %59, %struct.net_node** %nodePtr, align 8
  %60 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %61 = getelementptr inbounds %struct.net_node, %struct.net_node* %60, i32 0, i32 2
  %62 = load %struct.list*, %struct.list** %61, align 8
  store %struct.list* %62, %struct.list** %childIdListPtr, align 8
  %63 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %63)
  br label %64

; <label>:64                                      ; preds = %87, %55
  %65 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %66 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %65) #7
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %88

; <label>:68                                      ; preds = %64
  %69 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %70 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %69)
  %71 = ptrtoint i8* %70 to i64
  store i64 %71, i64* %childId, align 8
  %72 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %73 = load i64, i64* %childId, align 8
  %74 = call i64 @bitmap_isSet(%struct.bitmap* %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %87, label %76

; <label>:76                                      ; preds = %68
  %77 = load %struct.queue*, %struct.queue** %6, align 8
  %78 = load i64, i64* %childId, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = call i64 @Pqueue_push(%struct.queue* %77, i8* %79)
  store i64 %80, i64* %status, align 8
  %81 = load i64, i64* %status, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %76
  br label %86

; <label>:84                                      ; preds = %76
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 496, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.TMnet_isPath, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %86

; <label>:86                                      ; preds = %85, %83
  br label %87

; <label>:87                                      ; preds = %86, %68
  br label %64

; <label>:88                                      ; preds = %64
  br label %32

; <label>:89                                      ; preds = %32
  store i64 0, i64* %1, align 8
  br label %90

; <label>:90                                      ; preds = %89, %44
  %91 = load i64, i64* %1, align 8
  ret i64 %91
}

declare i64 @Pqueue_push(%struct.queue*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @net_isCycle(%struct.net* %netPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.net*, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %numNode = alloca i64, align 8
  %n = alloca i64, align 8
  %nodePtr = alloca %struct.net_node*, align 8
  %nodePtr1 = alloca %struct.net_node*, align 8
  store %struct.net* %netPtr, %struct.net** %2, align 8
  %3 = load %struct.net*, %struct.net** %2, align 8
  %4 = getelementptr inbounds %struct.net, %struct.net* %3, i32 0, i32 0
  %5 = load %struct.vector*, %struct.vector** %4, align 8
  store %struct.vector* %5, %struct.vector** %nodeVectorPtr, align 8
  %6 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %7 = call i64 @vector_getSize(%struct.vector* %6)
  store i64 %7, i64* %numNode, align 8
  store i64 0, i64* %n, align 8
  br label %8

; <label>:8                                       ; preds = %19, %0
  %9 = load i64, i64* %n, align 8
  %10 = load i64, i64* %numNode, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %8
  %13 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %14 = load i64, i64* %n, align 8
  %15 = call i8* @vector_at(%struct.vector* %13, i64 %14)
  %16 = bitcast i8* %15 to %struct.net_node*
  store %struct.net_node* %16, %struct.net_node** %nodePtr, align 8
  %17 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %18 = getelementptr inbounds %struct.net_node, %struct.net_node* %17, i32 0, i32 3
  store i32 0, i32* %18, align 8
  br label %19

; <label>:19                                      ; preds = %12
  %20 = load i64, i64* %n, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %n, align 8
  br label %8

; <label>:22                                      ; preds = %8
  store i64 0, i64* %n, align 8
  br label %23

; <label>:23                                      ; preds = %46, %22
  %24 = load i64, i64* %n, align 8
  %25 = load i64, i64* %numNode, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %49

; <label>:27                                      ; preds = %23
  %28 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %29 = load i64, i64* %n, align 8
  %30 = call i8* @vector_at(%struct.vector* %28, i64 %29)
  %31 = bitcast i8* %30 to %struct.net_node*
  store %struct.net_node* %31, %struct.net_node** %nodePtr1, align 8
  %32 = load %struct.net_node*, %struct.net_node** %nodePtr1, align 8
  %33 = getelementptr inbounds %struct.net_node, %struct.net_node* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %44 [
    i32 0, label %35
    i32 1, label %42
    i32 2, label %43
  ]

; <label>:35                                      ; preds = %27
  %36 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %37 = load %struct.net_node*, %struct.net_node** %nodePtr1, align 8
  %38 = call i64 @isCycle(%struct.vector* %36, %struct.net_node* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %35
  store i64 1, i64* %1, align 8
  br label %50

; <label>:41                                      ; preds = %35
  br label %45

; <label>:42                                      ; preds = %27
  br label %45

; <label>:43                                      ; preds = %27
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 569, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.net_isCycle, i32 0, i32 0)) #6
  unreachable

; <label>:44                                      ; preds = %27
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 572, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.net_isCycle, i32 0, i32 0)) #6
  unreachable

; <label>:45                                      ; preds = %42, %41
  br label %46

; <label>:46                                      ; preds = %45
  %47 = load i64, i64* %n, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %n, align 8
  br label %23

; <label>:49                                      ; preds = %23
  store i64 0, i64* %1, align 8
  br label %50

; <label>:50                                      ; preds = %49, %40
  %51 = load i64, i64* %1, align 8
  ret i64 %51
}

; Function Attrs: nounwind uwtable
define internal i64 @isCycle(%struct.vector* %nodeVectorPtr, %struct.net_node* %nodePtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.vector*, align 8
  %3 = alloca %struct.net_node*, align 8
  %childIdListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %childId = alloca i64, align 8
  %childNodePtr = alloca %struct.net_node*, align 8
  store %struct.vector* %nodeVectorPtr, %struct.vector** %2, align 8
  store %struct.net_node* %nodePtr, %struct.net_node** %3, align 8
  %4 = load %struct.net_node*, %struct.net_node** %3, align 8
  %5 = getelementptr inbounds %struct.net_node, %struct.net_node* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %35 [
    i32 0, label %7
    i32 2, label %33
    i32 1, label %34
  ]

; <label>:7                                       ; preds = %0
  %8 = load %struct.net_node*, %struct.net_node** %3, align 8
  %9 = getelementptr inbounds %struct.net_node, %struct.net_node* %8, i32 0, i32 3
  store i32 2, i32* %9, align 8
  %10 = load %struct.net_node*, %struct.net_node** %3, align 8
  %11 = getelementptr inbounds %struct.net_node, %struct.net_node* %10, i32 0, i32 2
  %12 = load %struct.list*, %struct.list** %11, align 8
  store %struct.list* %12, %struct.list** %childIdListPtr, align 8
  %13 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %13)
  br label %14

; <label>:14                                      ; preds = %31, %7
  %15 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %16 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %15) #7
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

; <label>:18                                      ; preds = %14
  %19 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %20 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %19)
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %childId, align 8
  %22 = load %struct.vector*, %struct.vector** %2, align 8
  %23 = load i64, i64* %childId, align 8
  %24 = call i8* @vector_at(%struct.vector* %22, i64 %23)
  %25 = bitcast i8* %24 to %struct.net_node*
  store %struct.net_node* %25, %struct.net_node** %childNodePtr, align 8
  %26 = load %struct.vector*, %struct.vector** %2, align 8
  %27 = load %struct.net_node*, %struct.net_node** %childNodePtr, align 8
  %28 = call i64 @isCycle(%struct.vector* %26, %struct.net_node* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %18
  store i64 1, i64* %1, align 8
  br label %39

; <label>:31                                      ; preds = %18
  br label %14

; <label>:32                                      ; preds = %14
  br label %36

; <label>:33                                      ; preds = %0
  store i64 1, i64* %1, align 8
  br label %39

; <label>:34                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %39

; <label>:35                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 534, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.isCycle, i32 0, i32 0)) #6
  unreachable

; <label>:36                                      ; preds = %32
  %37 = load %struct.net_node*, %struct.net_node** %3, align 8
  %38 = getelementptr inbounds %struct.net_node, %struct.net_node* %37, i32 0, i32 3
  store i32 1, i32* %38, align 8
  store i64 0, i64* %1, align 8
  br label %39

; <label>:39                                      ; preds = %36, %34, %33, %30
  %40 = load i64, i64* %1, align 8
  ret i64 %40
}

; Function Attrs: nounwind uwtable
define %struct.list* @net_getParentIdListPtr(%struct.net* %netPtr, i64 %id) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i64, align 8
  %nodePtr = alloca %struct.net_node*, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i64 %id, i64* %2, align 8
  %3 = load %struct.net*, %struct.net** %1, align 8
  %4 = getelementptr inbounds %struct.net, %struct.net* %3, i32 0, i32 0
  %5 = load %struct.vector*, %struct.vector** %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i8* @vector_at(%struct.vector* %5, i64 %6)
  %8 = bitcast i8* %7 to %struct.net_node*
  store %struct.net_node* %8, %struct.net_node** %nodePtr, align 8
  %9 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %10 = icmp ne %struct.net_node* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  br label %14

; <label>:12                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 589, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.net_getParentIdListPtr, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %16 = getelementptr inbounds %struct.net_node, %struct.net_node* %15, i32 0, i32 1
  %17 = load %struct.list*, %struct.list** %16, align 8
  ret %struct.list* %17
}

; Function Attrs: nounwind uwtable
define %struct.list* @net_getChildIdListPtr(%struct.net* %netPtr, i64 %id) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i64, align 8
  %nodePtr = alloca %struct.net_node*, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i64 %id, i64* %2, align 8
  %3 = load %struct.net*, %struct.net** %1, align 8
  %4 = getelementptr inbounds %struct.net, %struct.net* %3, i32 0, i32 0
  %5 = load %struct.vector*, %struct.vector** %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i8* @vector_at(%struct.vector* %5, i64 %6)
  %8 = bitcast i8* %7 to %struct.net_node*
  store %struct.net_node* %8, %struct.net_node** %nodePtr, align 8
  %9 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %10 = icmp ne %struct.net_node* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  br label %14

; <label>:12                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 603, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.net_getChildIdListPtr, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %16 = getelementptr inbounds %struct.net_node, %struct.net_node* %15, i32 0, i32 2
  %17 = load %struct.list*, %struct.list** %16, align 8
  ret %struct.list* %17
}

; Function Attrs: nounwind uwtable
define i64 @net_findAncestors(%struct.net* %netPtr, i64 %id, %struct.bitmap* %ancestorBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.net*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bitmap*, align 8
  %5 = alloca %struct.queue*, align 8
  %status = alloca i64, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %nodePtr = alloca %struct.net_node*, align 8
  %parentIdListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %parentId = alloca i64, align 8
  %parentId1 = alloca i64, align 8
  %nodePtr2 = alloca %struct.net_node*, align 8
  %grandParentIdListPtr = alloca %struct.list*, align 8
  %it3 = alloca %struct.list_node*, align 8
  %grandParentId = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %2, align 8
  store i64 %id, i64* %3, align 8
  store %struct.bitmap* %ancestorBitmapPtr, %struct.bitmap** %4, align 8
  store %struct.queue* %workQueuePtr, %struct.queue** %5, align 8
  %6 = load %struct.net*, %struct.net** %2, align 8
  %7 = getelementptr inbounds %struct.net, %struct.net* %6, i32 0, i32 0
  %8 = load %struct.vector*, %struct.vector** %7, align 8
  store %struct.vector* %8, %struct.vector** %nodeVectorPtr, align 8
  %9 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %10 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %13 = call i64 @vector_getSize(%struct.vector* %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  br label %18

; <label>:16                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 624, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  call void @bitmap_clearAll(%struct.bitmap* %19)
  %20 = load %struct.queue*, %struct.queue** %5, align 8
  call void @queue_clear(%struct.queue* %20)
  %21 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i8* @vector_at(%struct.vector* %21, i64 %22)
  %24 = bitcast i8* %23 to %struct.net_node*
  store %struct.net_node* %24, %struct.net_node** %nodePtr, align 8
  %25 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %26 = getelementptr inbounds %struct.net_node, %struct.net_node* %25, i32 0, i32 1
  %27 = load %struct.list*, %struct.list** %26, align 8
  store %struct.list* %27, %struct.list** %parentIdListPtr, align 8
  %28 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %28)
  br label %29

; <label>:29                                      ; preds = %55, %18
  %30 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %31 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #7
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

; <label>:33                                      ; preds = %29
  %34 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %35 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %34)
  %36 = ptrtoint i8* %35 to i64
  store i64 %36, i64* %parentId, align 8
  %37 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %38 = load i64, i64* %parentId, align 8
  %39 = call i64 @bitmap_set(%struct.bitmap* %37, i64 %38)
  store i64 %39, i64* %status, align 8
  %40 = load i64, i64* %status, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %33
  br label %45

; <label>:43                                      ; preds = %33
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 637, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = load %struct.queue*, %struct.queue** %5, align 8
  %47 = load i64, i64* %parentId, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i64 @queue_push(%struct.queue* %46, i8* %48)
  store i64 %49, i64* %status, align 8
  %50 = load i64, i64* %status, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %45
  br label %55

; <label>:53                                      ; preds = %45
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 639, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:55                                      ; preds = %54, %52
  br label %29

; <label>:56                                      ; preds = %29
  br label %57

; <label>:57                                      ; preds = %113, %56
  %58 = load %struct.queue*, %struct.queue** %5, align 8
  %59 = call i64 @queue_isEmpty(%struct.queue* %58)
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %114

; <label>:62                                      ; preds = %57
  %63 = load %struct.queue*, %struct.queue** %5, align 8
  %64 = call i8* @queue_pop(%struct.queue* %63)
  %65 = ptrtoint i8* %64 to i64
  store i64 %65, i64* %parentId1, align 8
  %66 = load i64, i64* %parentId1, align 8
  %67 = load i64, i64* %3, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

; <label>:69                                      ; preds = %62
  %70 = load %struct.queue*, %struct.queue** %5, align 8
  call void @queue_clear(%struct.queue* %70)
  store i64 0, i64* %1, align 8
  br label %115

; <label>:71                                      ; preds = %62
  %72 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %73 = load i64, i64* %parentId1, align 8
  %74 = call i8* @vector_at(%struct.vector* %72, i64 %73)
  %75 = bitcast i8* %74 to %struct.net_node*
  store %struct.net_node* %75, %struct.net_node** %nodePtr2, align 8
  %76 = load %struct.net_node*, %struct.net_node** %nodePtr2, align 8
  %77 = getelementptr inbounds %struct.net_node, %struct.net_node* %76, i32 0, i32 1
  %78 = load %struct.list*, %struct.list** %77, align 8
  store %struct.list* %78, %struct.list** %grandParentIdListPtr, align 8
  %79 = load %struct.list*, %struct.list** %grandParentIdListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it3, %struct.list* %79)
  br label %80

; <label>:80                                      ; preds = %112, %71
  %81 = load %struct.list*, %struct.list** %grandParentIdListPtr, align 8
  %82 = call i64 @list_iter_hasNext(%struct.list_node** %it3, %struct.list* %81) #7
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %113

; <label>:84                                      ; preds = %80
  %85 = load %struct.list*, %struct.list** %grandParentIdListPtr, align 8
  %86 = call i8* @list_iter_next(%struct.list_node** %it3, %struct.list* %85)
  %87 = ptrtoint i8* %86 to i64
  store i64 %87, i64* %grandParentId, align 8
  %88 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %89 = load i64, i64* %grandParentId, align 8
  %90 = call i64 @bitmap_isSet(%struct.bitmap* %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %112, label %92

; <label>:92                                      ; preds = %84
  %93 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %94 = load i64, i64* %grandParentId, align 8
  %95 = call i64 @bitmap_set(%struct.bitmap* %93, i64 %94)
  store i64 %95, i64* %status, align 8
  %96 = load i64, i64* %status, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

; <label>:98                                      ; preds = %92
  br label %101

; <label>:99                                      ; preds = %92
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 657, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %101

; <label>:101                                     ; preds = %100, %98
  %102 = load %struct.queue*, %struct.queue** %5, align 8
  %103 = load i64, i64* %grandParentId, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = call i64 @queue_push(%struct.queue* %102, i8* %104)
  store i64 %105, i64* %status, align 8
  %106 = load i64, i64* %status, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %101
  br label %111

; <label>:109                                     ; preds = %101
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 659, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.net_findAncestors, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %111

; <label>:111                                     ; preds = %110, %108
  br label %112

; <label>:112                                     ; preds = %111, %84
  br label %80

; <label>:113                                     ; preds = %80
  br label %57

; <label>:114                                     ; preds = %57
  store i64 1, i64* %1, align 8
  br label %115

; <label>:115                                     ; preds = %114, %69
  %116 = load i64, i64* %1, align 8
  ret i64 %116
}

; Function Attrs: nounwind uwtable
define i64 @TMnet_findAncestors(%struct.net* %netPtr, i64 %id, %struct.bitmap* %ancestorBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.net*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bitmap*, align 8
  %5 = alloca %struct.queue*, align 8
  %status = alloca i64, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %nodePtr = alloca %struct.net_node*, align 8
  %parentIdListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %parentId = alloca i64, align 8
  %parentId1 = alloca i64, align 8
  %nodePtr2 = alloca %struct.net_node*, align 8
  %grandParentIdListPtr = alloca %struct.list*, align 8
  %it3 = alloca %struct.list_node*, align 8
  %grandParentId = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %2, align 8
  store i64 %id, i64* %3, align 8
  store %struct.bitmap* %ancestorBitmapPtr, %struct.bitmap** %4, align 8
  store %struct.queue* %workQueuePtr, %struct.queue** %5, align 8
  %6 = load %struct.net*, %struct.net** %2, align 8
  %7 = getelementptr inbounds %struct.net, %struct.net* %6, i32 0, i32 0
  %8 = load %struct.vector*, %struct.vector** %7, align 8
  store %struct.vector* %8, %struct.vector** %nodeVectorPtr, align 8
  %9 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %10 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %13 = call i64 @vector_getSize(%struct.vector* %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  br label %18

; <label>:16                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 684, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  call void @bitmap_clearAll(%struct.bitmap* %19)
  %20 = load %struct.queue*, %struct.queue** %5, align 8
  call void @queue_clear(%struct.queue* %20)
  %21 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i8* @vector_at(%struct.vector* %21, i64 %22)
  %24 = bitcast i8* %23 to %struct.net_node*
  store %struct.net_node* %24, %struct.net_node** %nodePtr, align 8
  %25 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %26 = getelementptr inbounds %struct.net_node, %struct.net_node* %25, i32 0, i32 1
  %27 = load %struct.list*, %struct.list** %26, align 8
  store %struct.list* %27, %struct.list** %parentIdListPtr, align 8
  %28 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %28)
  br label %29

; <label>:29                                      ; preds = %55, %18
  %30 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %31 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #7
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

; <label>:33                                      ; preds = %29
  %34 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %35 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %34)
  %36 = ptrtoint i8* %35 to i64
  store i64 %36, i64* %parentId, align 8
  %37 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %38 = load i64, i64* %parentId, align 8
  %39 = call i64 @bitmap_set(%struct.bitmap* %37, i64 %38)
  store i64 %39, i64* %status, align 8
  %40 = load i64, i64* %status, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %33
  br label %45

; <label>:43                                      ; preds = %33
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 697, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = load %struct.queue*, %struct.queue** %5, align 8
  %47 = load i64, i64* %parentId, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i64 @Pqueue_push(%struct.queue* %46, i8* %48)
  store i64 %49, i64* %status, align 8
  %50 = load i64, i64* %status, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %45
  br label %55

; <label>:53                                      ; preds = %45
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 699, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:55                                      ; preds = %54, %52
  br label %29

; <label>:56                                      ; preds = %29
  br label %57

; <label>:57                                      ; preds = %113, %56
  %58 = load %struct.queue*, %struct.queue** %5, align 8
  %59 = call i64 @queue_isEmpty(%struct.queue* %58)
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %114

; <label>:62                                      ; preds = %57
  %63 = load %struct.queue*, %struct.queue** %5, align 8
  %64 = call i8* @queue_pop(%struct.queue* %63)
  %65 = ptrtoint i8* %64 to i64
  store i64 %65, i64* %parentId1, align 8
  %66 = load i64, i64* %parentId1, align 8
  %67 = load i64, i64* %3, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

; <label>:69                                      ; preds = %62
  %70 = load %struct.queue*, %struct.queue** %5, align 8
  call void @queue_clear(%struct.queue* %70)
  store i64 0, i64* %1, align 8
  br label %115

; <label>:71                                      ; preds = %62
  %72 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %73 = load i64, i64* %parentId1, align 8
  %74 = call i8* @vector_at(%struct.vector* %72, i64 %73)
  %75 = bitcast i8* %74 to %struct.net_node*
  store %struct.net_node* %75, %struct.net_node** %nodePtr2, align 8
  %76 = load %struct.net_node*, %struct.net_node** %nodePtr2, align 8
  %77 = getelementptr inbounds %struct.net_node, %struct.net_node* %76, i32 0, i32 1
  %78 = load %struct.list*, %struct.list** %77, align 8
  store %struct.list* %78, %struct.list** %grandParentIdListPtr, align 8
  %79 = load %struct.list*, %struct.list** %grandParentIdListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it3, %struct.list* %79)
  br label %80

; <label>:80                                      ; preds = %112, %71
  %81 = load %struct.list*, %struct.list** %grandParentIdListPtr, align 8
  %82 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it3, %struct.list* %81) #7
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %113

; <label>:84                                      ; preds = %80
  %85 = load %struct.list*, %struct.list** %grandParentIdListPtr, align 8
  %86 = call i8* @TMlist_iter_next(%struct.list_node** %it3, %struct.list* %85)
  %87 = ptrtoint i8* %86 to i64
  store i64 %87, i64* %grandParentId, align 8
  %88 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %89 = load i64, i64* %grandParentId, align 8
  %90 = call i64 @bitmap_isSet(%struct.bitmap* %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %112, label %92

; <label>:92                                      ; preds = %84
  %93 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %94 = load i64, i64* %grandParentId, align 8
  %95 = call i64 @bitmap_set(%struct.bitmap* %93, i64 %94)
  store i64 %95, i64* %status, align 8
  %96 = load i64, i64* %status, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

; <label>:98                                      ; preds = %92
  br label %101

; <label>:99                                      ; preds = %92
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 717, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %101

; <label>:101                                     ; preds = %100, %98
  %102 = load %struct.queue*, %struct.queue** %5, align 8
  %103 = load i64, i64* %grandParentId, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = call i64 @Pqueue_push(%struct.queue* %102, i8* %104)
  store i64 %105, i64* %status, align 8
  %106 = load i64, i64* %status, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %101
  br label %111

; <label>:109                                     ; preds = %101
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 719, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.TMnet_findAncestors, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %111

; <label>:111                                     ; preds = %110, %108
  br label %112

; <label>:112                                     ; preds = %111, %84
  br label %80

; <label>:113                                     ; preds = %80
  br label %57

; <label>:114                                     ; preds = %57
  store i64 1, i64* %1, align 8
  br label %115

; <label>:115                                     ; preds = %114, %69
  %116 = load i64, i64* %1, align 8
  ret i64 %116
}

; Function Attrs: nounwind uwtable
define i64 @net_findDescendants(%struct.net* %netPtr, i64 %id, %struct.bitmap* %descendantBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.net*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bitmap*, align 8
  %5 = alloca %struct.queue*, align 8
  %status = alloca i64, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %nodePtr = alloca %struct.net_node*, align 8
  %childIdListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %childId = alloca i64, align 8
  %childId1 = alloca i64, align 8
  %nodePtr2 = alloca %struct.net_node*, align 8
  %grandChildIdListPtr = alloca %struct.list*, align 8
  %it3 = alloca %struct.list_node*, align 8
  %grandChildId = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %2, align 8
  store i64 %id, i64* %3, align 8
  store %struct.bitmap* %descendantBitmapPtr, %struct.bitmap** %4, align 8
  store %struct.queue* %workQueuePtr, %struct.queue** %5, align 8
  %6 = load %struct.net*, %struct.net** %2, align 8
  %7 = getelementptr inbounds %struct.net, %struct.net* %6, i32 0, i32 0
  %8 = load %struct.vector*, %struct.vector** %7, align 8
  store %struct.vector* %8, %struct.vector** %nodeVectorPtr, align 8
  %9 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %10 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %13 = call i64 @vector_getSize(%struct.vector* %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  br label %18

; <label>:16                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 743, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  call void @bitmap_clearAll(%struct.bitmap* %19)
  %20 = load %struct.queue*, %struct.queue** %5, align 8
  call void @queue_clear(%struct.queue* %20)
  %21 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i8* @vector_at(%struct.vector* %21, i64 %22)
  %24 = bitcast i8* %23 to %struct.net_node*
  store %struct.net_node* %24, %struct.net_node** %nodePtr, align 8
  %25 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %26 = getelementptr inbounds %struct.net_node, %struct.net_node* %25, i32 0, i32 2
  %27 = load %struct.list*, %struct.list** %26, align 8
  store %struct.list* %27, %struct.list** %childIdListPtr, align 8
  %28 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %28)
  br label %29

; <label>:29                                      ; preds = %55, %18
  %30 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %31 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #7
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

; <label>:33                                      ; preds = %29
  %34 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %35 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %34)
  %36 = ptrtoint i8* %35 to i64
  store i64 %36, i64* %childId, align 8
  %37 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %38 = load i64, i64* %childId, align 8
  %39 = call i64 @bitmap_set(%struct.bitmap* %37, i64 %38)
  store i64 %39, i64* %status, align 8
  %40 = load i64, i64* %status, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %33
  br label %45

; <label>:43                                      ; preds = %33
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 756, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = load %struct.queue*, %struct.queue** %5, align 8
  %47 = load i64, i64* %childId, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i64 @queue_push(%struct.queue* %46, i8* %48)
  store i64 %49, i64* %status, align 8
  %50 = load i64, i64* %status, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %45
  br label %55

; <label>:53                                      ; preds = %45
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 758, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:55                                      ; preds = %54, %52
  br label %29

; <label>:56                                      ; preds = %29
  br label %57

; <label>:57                                      ; preds = %113, %56
  %58 = load %struct.queue*, %struct.queue** %5, align 8
  %59 = call i64 @queue_isEmpty(%struct.queue* %58)
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %114

; <label>:62                                      ; preds = %57
  %63 = load %struct.queue*, %struct.queue** %5, align 8
  %64 = call i8* @queue_pop(%struct.queue* %63)
  %65 = ptrtoint i8* %64 to i64
  store i64 %65, i64* %childId1, align 8
  %66 = load i64, i64* %childId1, align 8
  %67 = load i64, i64* %3, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

; <label>:69                                      ; preds = %62
  %70 = load %struct.queue*, %struct.queue** %5, align 8
  call void @queue_clear(%struct.queue* %70)
  store i64 0, i64* %1, align 8
  br label %115

; <label>:71                                      ; preds = %62
  %72 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %73 = load i64, i64* %childId1, align 8
  %74 = call i8* @vector_at(%struct.vector* %72, i64 %73)
  %75 = bitcast i8* %74 to %struct.net_node*
  store %struct.net_node* %75, %struct.net_node** %nodePtr2, align 8
  %76 = load %struct.net_node*, %struct.net_node** %nodePtr2, align 8
  %77 = getelementptr inbounds %struct.net_node, %struct.net_node* %76, i32 0, i32 2
  %78 = load %struct.list*, %struct.list** %77, align 8
  store %struct.list* %78, %struct.list** %grandChildIdListPtr, align 8
  %79 = load %struct.list*, %struct.list** %grandChildIdListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it3, %struct.list* %79)
  br label %80

; <label>:80                                      ; preds = %112, %71
  %81 = load %struct.list*, %struct.list** %grandChildIdListPtr, align 8
  %82 = call i64 @list_iter_hasNext(%struct.list_node** %it3, %struct.list* %81) #7
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %113

; <label>:84                                      ; preds = %80
  %85 = load %struct.list*, %struct.list** %grandChildIdListPtr, align 8
  %86 = call i8* @list_iter_next(%struct.list_node** %it3, %struct.list* %85)
  %87 = ptrtoint i8* %86 to i64
  store i64 %87, i64* %grandChildId, align 8
  %88 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %89 = load i64, i64* %grandChildId, align 8
  %90 = call i64 @bitmap_isSet(%struct.bitmap* %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %112, label %92

; <label>:92                                      ; preds = %84
  %93 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %94 = load i64, i64* %grandChildId, align 8
  %95 = call i64 @bitmap_set(%struct.bitmap* %93, i64 %94)
  store i64 %95, i64* %status, align 8
  %96 = load i64, i64* %status, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

; <label>:98                                      ; preds = %92
  br label %101

; <label>:99                                      ; preds = %92
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 776, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %101

; <label>:101                                     ; preds = %100, %98
  %102 = load %struct.queue*, %struct.queue** %5, align 8
  %103 = load i64, i64* %grandChildId, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = call i64 @queue_push(%struct.queue* %102, i8* %104)
  store i64 %105, i64* %status, align 8
  %106 = load i64, i64* %status, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %101
  br label %111

; <label>:109                                     ; preds = %101
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 778, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.net_findDescendants, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %111

; <label>:111                                     ; preds = %110, %108
  br label %112

; <label>:112                                     ; preds = %111, %84
  br label %80

; <label>:113                                     ; preds = %80
  br label %57

; <label>:114                                     ; preds = %57
  store i64 1, i64* %1, align 8
  br label %115

; <label>:115                                     ; preds = %114, %69
  %116 = load i64, i64* %1, align 8
  ret i64 %116
}

; Function Attrs: nounwind uwtable
define i64 @TMnet_findDescendants(%struct.net* %netPtr, i64 %id, %struct.bitmap* %descendantBitmapPtr, %struct.queue* %workQueuePtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.net*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bitmap*, align 8
  %5 = alloca %struct.queue*, align 8
  %status = alloca i64, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %nodePtr = alloca %struct.net_node*, align 8
  %childIdListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %childId = alloca i64, align 8
  %childId1 = alloca i64, align 8
  %nodePtr2 = alloca %struct.net_node*, align 8
  %grandChildIdListPtr = alloca %struct.list*, align 8
  %it3 = alloca %struct.list_node*, align 8
  %grandChildId = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %2, align 8
  store i64 %id, i64* %3, align 8
  store %struct.bitmap* %descendantBitmapPtr, %struct.bitmap** %4, align 8
  store %struct.queue* %workQueuePtr, %struct.queue** %5, align 8
  %6 = load %struct.net*, %struct.net** %2, align 8
  %7 = getelementptr inbounds %struct.net, %struct.net* %6, i32 0, i32 0
  %8 = load %struct.vector*, %struct.vector** %7, align 8
  store %struct.vector* %8, %struct.vector** %nodeVectorPtr, align 8
  %9 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %10 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %13 = call i64 @vector_getSize(%struct.vector* %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  br label %18

; <label>:16                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 803, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  call void @bitmap_clearAll(%struct.bitmap* %19)
  %20 = load %struct.queue*, %struct.queue** %5, align 8
  call void @queue_clear(%struct.queue* %20)
  %21 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i8* @vector_at(%struct.vector* %21, i64 %22)
  %24 = bitcast i8* %23 to %struct.net_node*
  store %struct.net_node* %24, %struct.net_node** %nodePtr, align 8
  %25 = load %struct.net_node*, %struct.net_node** %nodePtr, align 8
  %26 = getelementptr inbounds %struct.net_node, %struct.net_node* %25, i32 0, i32 2
  %27 = load %struct.list*, %struct.list** %26, align 8
  store %struct.list* %27, %struct.list** %childIdListPtr, align 8
  %28 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %28)
  br label %29

; <label>:29                                      ; preds = %55, %18
  %30 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %31 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %30) #7
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

; <label>:33                                      ; preds = %29
  %34 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %35 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %34)
  %36 = ptrtoint i8* %35 to i64
  store i64 %36, i64* %childId, align 8
  %37 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %38 = load i64, i64* %childId, align 8
  %39 = call i64 @bitmap_set(%struct.bitmap* %37, i64 %38)
  store i64 %39, i64* %status, align 8
  %40 = load i64, i64* %status, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %33
  br label %45

; <label>:43                                      ; preds = %33
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 816, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = load %struct.queue*, %struct.queue** %5, align 8
  %47 = load i64, i64* %childId, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i64 @Pqueue_push(%struct.queue* %46, i8* %48)
  store i64 %49, i64* %status, align 8
  %50 = load i64, i64* %status, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %45
  br label %55

; <label>:53                                      ; preds = %45
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 818, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:55                                      ; preds = %54, %52
  br label %29

; <label>:56                                      ; preds = %29
  br label %57

; <label>:57                                      ; preds = %113, %56
  %58 = load %struct.queue*, %struct.queue** %5, align 8
  %59 = call i64 @queue_isEmpty(%struct.queue* %58)
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %114

; <label>:62                                      ; preds = %57
  %63 = load %struct.queue*, %struct.queue** %5, align 8
  %64 = call i8* @queue_pop(%struct.queue* %63)
  %65 = ptrtoint i8* %64 to i64
  store i64 %65, i64* %childId1, align 8
  %66 = load i64, i64* %childId1, align 8
  %67 = load i64, i64* %3, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

; <label>:69                                      ; preds = %62
  %70 = load %struct.queue*, %struct.queue** %5, align 8
  call void @queue_clear(%struct.queue* %70)
  store i64 0, i64* %1, align 8
  br label %115

; <label>:71                                      ; preds = %62
  %72 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %73 = load i64, i64* %childId1, align 8
  %74 = call i8* @vector_at(%struct.vector* %72, i64 %73)
  %75 = bitcast i8* %74 to %struct.net_node*
  store %struct.net_node* %75, %struct.net_node** %nodePtr2, align 8
  %76 = load %struct.net_node*, %struct.net_node** %nodePtr2, align 8
  %77 = getelementptr inbounds %struct.net_node, %struct.net_node* %76, i32 0, i32 2
  %78 = load %struct.list*, %struct.list** %77, align 8
  store %struct.list* %78, %struct.list** %grandChildIdListPtr, align 8
  %79 = load %struct.list*, %struct.list** %grandChildIdListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it3, %struct.list* %79)
  br label %80

; <label>:80                                      ; preds = %112, %71
  %81 = load %struct.list*, %struct.list** %grandChildIdListPtr, align 8
  %82 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it3, %struct.list* %81) #7
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %113

; <label>:84                                      ; preds = %80
  %85 = load %struct.list*, %struct.list** %grandChildIdListPtr, align 8
  %86 = call i8* @TMlist_iter_next(%struct.list_node** %it3, %struct.list* %85)
  %87 = ptrtoint i8* %86 to i64
  store i64 %87, i64* %grandChildId, align 8
  %88 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %89 = load i64, i64* %grandChildId, align 8
  %90 = call i64 @bitmap_isSet(%struct.bitmap* %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %112, label %92

; <label>:92                                      ; preds = %84
  %93 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %94 = load i64, i64* %grandChildId, align 8
  %95 = call i64 @bitmap_set(%struct.bitmap* %93, i64 %94)
  store i64 %95, i64* %status, align 8
  %96 = load i64, i64* %status, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

; <label>:98                                      ; preds = %92
  br label %101

; <label>:99                                      ; preds = %92
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 836, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %101

; <label>:101                                     ; preds = %100, %98
  %102 = load %struct.queue*, %struct.queue** %5, align 8
  %103 = load i64, i64* %grandChildId, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = call i64 @Pqueue_push(%struct.queue* %102, i8* %104)
  store i64 %105, i64* %status, align 8
  %106 = load i64, i64* %status, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %101
  br label %111

; <label>:109                                     ; preds = %101
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 838, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.TMnet_findDescendants, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %111

; <label>:111                                     ; preds = %110, %108
  br label %112

; <label>:112                                     ; preds = %111, %84
  br label %80

; <label>:113                                     ; preds = %80
  br label %57

; <label>:114                                     ; preds = %57
  store i64 1, i64* %1, align 8
  br label %115

; <label>:115                                     ; preds = %114, %69
  %116 = load i64, i64* %1, align 8
  ret i64 %116
}

; Function Attrs: nounwind uwtable
define void @net_generateRandomEdges(%struct.net* %netPtr, i64 %maxNumParent, i64 %percentParent, %struct.random* %randomPtr) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.random*, align 8
  %nodeVectorPtr = alloca %struct.vector*, align 8
  %numNode = alloca i64, align 8
  %visitedBitmapPtr = alloca %struct.bitmap*, align 8
  %workQueuePtr = alloca %struct.queue*, align 8
  %n = alloca i64, align 8
  %p = alloca i64, align 8
  %value = alloca i64, align 8
  %parent = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i64 %maxNumParent, i64* %2, align 8
  store i64 %percentParent, i64* %3, align 8
  store %struct.random* %randomPtr, %struct.random** %4, align 8
  %5 = load %struct.net*, %struct.net** %1, align 8
  %6 = getelementptr inbounds %struct.net, %struct.net* %5, i32 0, i32 0
  %7 = load %struct.vector*, %struct.vector** %6, align 8
  store %struct.vector* %7, %struct.vector** %nodeVectorPtr, align 8
  %8 = load %struct.vector*, %struct.vector** %nodeVectorPtr, align 8
  %9 = call i64 @vector_getSize(%struct.vector* %8)
  store i64 %9, i64* %numNode, align 8
  %10 = load i64, i64* %numNode, align 8
  %11 = call %struct.bitmap* @bitmap_alloc(i64 %10)
  store %struct.bitmap* %11, %struct.bitmap** %visitedBitmapPtr, align 8
  %12 = load %struct.bitmap*, %struct.bitmap** %visitedBitmapPtr, align 8
  %13 = icmp ne %struct.bitmap* %12, null
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %0
  br label %17

; <label>:15                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 861, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_generateRandomEdges, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %17

; <label>:17                                      ; preds = %16, %14
  %18 = call %struct.queue* @queue_alloc(i64 -1)
  store %struct.queue* %18, %struct.queue** %workQueuePtr, align 8
  store i64 0, i64* %n, align 8
  br label %19

; <label>:19                                      ; preds = %67, %17
  %20 = load i64, i64* %n, align 8
  %21 = load i64, i64* %numNode, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %70

; <label>:23                                      ; preds = %19
  store i64 0, i64* %p, align 8
  br label %24

; <label>:24                                      ; preds = %63, %23
  %25 = load i64, i64* %p, align 8
  %26 = load i64, i64* %2, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %66

; <label>:28                                      ; preds = %24
  %29 = load %struct.random*, %struct.random** %4, align 8
  %30 = call i64 @random_generate(%struct.random* %29)
  %31 = urem i64 %30, 100
  store i64 %31, i64* %value, align 8
  %32 = load i64, i64* %value, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %62

; <label>:35                                      ; preds = %28
  %36 = load %struct.random*, %struct.random** %4, align 8
  %37 = call i64 @random_generate(%struct.random* %36)
  %38 = load i64, i64* %numNode, align 8
  %39 = urem i64 %37, %38
  store i64 %39, i64* %parent, align 8
  %40 = load i64, i64* %parent, align 8
  %41 = load i64, i64* %n, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %61

; <label>:43                                      ; preds = %35
  %44 = load %struct.net*, %struct.net** %1, align 8
  %45 = load i64, i64* %parent, align 8
  %46 = load i64, i64* %n, align 8
  %47 = call i64 @net_hasEdge(%struct.net* %44, i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %61, label %49

; <label>:49                                      ; preds = %43
  %50 = load %struct.net*, %struct.net** %1, align 8
  %51 = load i64, i64* %n, align 8
  %52 = load i64, i64* %parent, align 8
  %53 = load %struct.bitmap*, %struct.bitmap** %visitedBitmapPtr, align 8
  %54 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %55 = call i64 @net_isPath(%struct.net* %50, i64 %51, i64 %52, %struct.bitmap* %53, %struct.queue* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

; <label>:57                                      ; preds = %49
  %58 = load %struct.net*, %struct.net** %1, align 8
  %59 = load i64, i64* %parent, align 8
  %60 = load i64, i64* %n, align 8
  call void @insertEdge(%struct.net* %58, i64 %59, i64 %60)
  br label %61

; <label>:61                                      ; preds = %57, %49, %43, %35
  br label %62

; <label>:62                                      ; preds = %61, %28
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load i64, i64* %p, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %p, align 8
  br label %24

; <label>:66                                      ; preds = %24
  br label %67

; <label>:67                                      ; preds = %66
  %68 = load i64, i64* %n, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %n, align 8
  br label %19

; <label>:70                                      ; preds = %19
  %71 = load %struct.net*, %struct.net** %1, align 8
  %72 = call i64 @net_isCycle(%struct.net* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

; <label>:74                                      ; preds = %70
  br label %77

; <label>:75                                      ; preds = %70
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 885, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.net_generateRandomEdges, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %77

; <label>:77                                      ; preds = %76, %74
  %78 = load %struct.bitmap*, %struct.bitmap** %visitedBitmapPtr, align 8
  call void @bitmap_free(%struct.bitmap* %78)
  %79 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  call void @queue_free(%struct.queue* %79)
  ret void
}

declare %struct.bitmap* @bitmap_alloc(i64) #2

declare %struct.queue* @queue_alloc(i64) #2

declare i64 @random_generate(%struct.random*) #2

declare void @bitmap_free(%struct.bitmap*) #2

declare void @queue_free(%struct.queue*) #2

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i64 @compareId(i8* %aPtr, i8* %bPtr) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  store i8* %aPtr, i8** %1, align 8
  store i8* %bPtr, i8** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = ptrtoint i8* %3 to i64
  store i64 %4, i64* %a, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i64
  store i64 %6, i64* %b, align 8
  %7 = load i64, i64* %a, align 8
  %8 = load i64, i64* %b, align 8
  %9 = sub nsw i64 %7, %8
  ret i64 %9
}

declare void @list_free(%struct.list*) #2

declare void @Plist_free(%struct.list*) #2

declare i64 @list_insert(%struct.list*, i8*) #2

declare i64 @list_remove(%struct.list*, i8*) #2

declare i64 @TMlist_insert(%struct.list*, i8*) #2

declare i64 @TMlist_remove(%struct.list*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
