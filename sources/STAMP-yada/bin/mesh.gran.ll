; ModuleID = '../bin/mesh.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.mesh = type { %struct.element*, %struct.queue*, i64, %struct.rbtree* }
%struct.element = type opaque
%struct.queue = type opaque
%struct.rbtree = type opaque
%struct.jsw_avltree = type opaque
%struct.pair = type { i8*, i8* }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.coordinate = type { double, double }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }

@.str = private unnamed_addr constant [25 x i8] c"meshPtr->initBadQueuePtr\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"mesh.c\00", align 1
@__PRETTY_FUNCTION__.mesh_alloc = private unnamed_addr constant [21 x i8] c"mesh_t *mesh_alloc()\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"meshPtr->boundarySetPtr\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"isSuccess\00", align 1
@__PRETTY_FUNCTION__.mesh_insert = private unnamed_addr constant [57 x i8] c"void mesh_insert(mesh_t *, element_t *, jsw_avltree_t *)\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sharerPtr\00", align 1
@__PRETTY_FUNCTION__.TMmesh_insert = private unnamed_addr constant [59 x i8] c"void TMmesh_insert(mesh_t *, element_t *, jsw_avltree_t *)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"!TMELEMENT_ISGARBAGE(elementPtr)\00", align 1
@__PRETTY_FUNCTION__.TMmesh_remove = private unnamed_addr constant [42 x i8] c"void TMmesh_remove(mesh_t *, element_t *)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"edgeMapPtr\00", align 1
@__PRETTY_FUNCTION__.mesh_read = private unnamed_addr constant [33 x i8] c"long mesh_read(mesh_t *, char *)\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s.node\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"inputFile\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%li %li\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"numDimension == 2\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"coordinates\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"%li %lf %lf\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"i == numEntry\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"%s.poly\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"numEntry == 0\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%li\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"%li %li %li\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"a >= 0 && a < numCoordinate\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"b >= 0 && b < numCoordinate\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%s.ele\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"numDimension == 3\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"%li %li %li %li\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"c >= 0 && c < numCoordinate\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"Checking final mesh:\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [15 x i8] c"searchQueuePtr\00", align 1
@__PRETTY_FUNCTION__.mesh_check = private unnamed_addr constant [34 x i8] c"bool_t mesh_check(mesh_t *, long)\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"visitedMapPtr\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"meshPtr->rootElementPtr\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Number of elements      = %li\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Number of bad triangles = %li\0A\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"elementPtr\00", align 1
@__PRETTY_FUNCTION__.createElement = private unnamed_addr constant [68 x i8] c"void createElement(mesh_t *, coordinate_t *, long, jsw_avltree_t *)\00", align 1
@"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_vi" = external global i64
@"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_lsup" = external global i64
@"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_granularity" = external global i64

; Function Attrs: nounwind uwtable
define %struct.mesh* @mesh_alloc() #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 32) #6
  %2 = bitcast i8* %1 to %struct.mesh*
  %3 = icmp ne %struct.mesh* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %25

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.mesh, %struct.mesh* %2, i32 0, i32 0
  store %struct.element* null, %struct.element** %5, align 8
  %6 = call %struct.queue* @queue_alloc(i64 -1)
  %7 = getelementptr inbounds %struct.mesh, %struct.mesh* %2, i32 0, i32 1
  store %struct.queue* %6, %struct.queue** %7, align 8
  %8 = getelementptr inbounds %struct.mesh, %struct.mesh* %2, i32 0, i32 1
  %9 = load %struct.queue*, %struct.queue** %8, align 8
  %10 = icmp ne %struct.queue* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %4
  br label %14

; <label>:12                                      ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.mesh_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = getelementptr inbounds %struct.mesh, %struct.mesh* %2, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* @element_listCompareEdge)
  %17 = getelementptr inbounds %struct.mesh, %struct.mesh* %2, i32 0, i32 3
  store %struct.rbtree* %16, %struct.rbtree** %17, align 8
  %18 = getelementptr inbounds %struct.mesh, %struct.mesh* %2, i32 0, i32 3
  %19 = load %struct.rbtree*, %struct.rbtree** %18, align 8
  %20 = icmp ne %struct.rbtree* %19, null
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %14
  br label %24

; <label>:22                                      ; preds = %14
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.mesh_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %24

; <label>:24                                      ; preds = %23, %21
  br label %25

; <label>:25                                      ; preds = %._crit_edge, %24
  ret %struct.mesh* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.queue* @queue_alloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)*) #2

declare i64 @element_listCompareEdge(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @mesh_free(%struct.mesh* %meshPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  call void @queue_free(%struct.queue* %2)
  %3 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  call void @rbtree_free(%struct.rbtree* %4)
  %5 = bitcast %struct.mesh* %meshPtr to i8*
  call void @free(i8* %5) #6
  ret void
}

declare void @queue_free(%struct.queue*) #2

declare void @rbtree_free(%struct.rbtree*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @mesh_insert(%struct.mesh* %meshPtr, %struct.element* %elementPtr, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %searchPair = alloca %struct.pair, align 8
  %searchPair3 = alloca %struct.pair, align 8
  %searchPair5 = alloca %struct.pair, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = icmp ne %struct.element* %2, null
  br i1 %3, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  store %struct.element* %elementPtr, %struct.element** %5, align 8
  br label %6

; <label>:6                                       ; preds = %._crit_edge, %4
  %7 = call i64 @element_getNumEdge(%struct.element* %elementPtr)
  %8 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair, i32 0, i32 0
  %9 = bitcast %struct.pair* %searchPair to i8*
  %10 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair3, i32 0, i32 0
  %11 = bitcast %struct.pair* %searchPair3 to i8*
  %12 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair5, i32 0, i32 0
  %13 = bitcast %struct.pair* %searchPair5 to i8*
  %14 = bitcast %struct.pair* %searchPair5 to i8*
  %15 = bitcast %struct.element* %elementPtr to i8*
  br label %16

; <label>:16                                      ; preds = %85, %6
  %i.0 = phi i64 [ 0, %6 ], [ %86, %85 ]
  %17 = icmp slt i64 %i.0, %7
  br i1 %17, label %18, label %87

; <label>:18                                      ; preds = %16
  %19 = call %struct.pair* @element_getEdge(%struct.element* %elementPtr, i64 %i.0)
  %20 = bitcast %struct.pair* %19 to i8*
  store i8* %20, i8** %8, align 8
  %21 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %9)
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %._crit_edge1

._crit_edge1:                                     ; preds = %18
  br label %24

; <label>:23                                      ; preds = %18
  br label %24

; <label>:24                                      ; preds = %._crit_edge1, %23
  %success.0 = phi i64 [ 1, %23 ], [ 0, %._crit_edge1 ]
  %25 = icmp ne i64 %success.0, 0
  br i1 %25, label %42, label %26

; <label>:26                                      ; preds = %24
  %27 = bitcast %struct.pair* %19 to i8*
  %28 = call %struct.pair* @pair_alloc(i8* %27, i8* %15)
  %29 = icmp ne %struct.pair* %28, null
  br i1 %29, label %30, label %._crit_edge2

._crit_edge2:                                     ; preds = %26
  br label %36

; <label>:30                                      ; preds = %26
  %31 = bitcast %struct.pair* %28 to i8*
  %32 = call i64 @jsw_avlinsert(%struct.jsw_avltree* %edgeMapPtr, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %._crit_edge3

._crit_edge3:                                     ; preds = %30
  br label %35

; <label>:34                                      ; preds = %30
  br label %35

; <label>:35                                      ; preds = %._crit_edge3, %34
  %success1.0 = phi i64 [ 1, %34 ], [ 0, %._crit_edge3 ]
  br label %36

; <label>:36                                      ; preds = %._crit_edge2, %35
  %success1.1 = phi i64 [ %success1.0, %35 ], [ 0, %._crit_edge2 ]
  %37 = icmp ne i64 %success1.1, 0
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %36
  br label %41

; <label>:39                                      ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 161, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:41                                      ; preds = %38
  br label %84

; <label>:42                                      ; preds = %24
  %43 = bitcast %struct.pair* %19 to i8*
  store i8* %43, i8** %10, align 8
  %44 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %11)
  %45 = bitcast i8* %44 to %struct.pair*
  %46 = icmp ne %struct.pair* %45, null
  br i1 %46, label %47, label %._crit_edge4

._crit_edge4:                                     ; preds = %42
  br label %50

; <label>:47                                      ; preds = %42
  %48 = getelementptr inbounds %struct.pair, %struct.pair* %45, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  br label %50

; <label>:50                                      ; preds = %._crit_edge4, %47
  %dataPtr.0 = phi i8* [ %49, %47 ], [ null, %._crit_edge4 ]
  %51 = bitcast i8* %dataPtr.0 to %struct.element*
  %52 = icmp ne %struct.element* %51, null
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %50
  br label %56

; <label>:54                                      ; preds = %50
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 168, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:56                                      ; preds = %53
  call void @element_addNeighbor(%struct.element* %elementPtr, %struct.element* %51)
  call void @element_addNeighbor(%struct.element* %51, %struct.element* %elementPtr)
  %57 = bitcast %struct.pair* %19 to i8*
  store i8* %57, i8** %12, align 8
  %58 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %13)
  %59 = bitcast i8* %58 to %struct.pair*
  %60 = call i64 @jsw_avlerase(%struct.jsw_avltree* %edgeMapPtr, i8* %14)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %._crit_edge5

._crit_edge5:                                     ; preds = %56
  br label %63

; <label>:62                                      ; preds = %56
  call void @pair_free(%struct.pair* %59)
  br label %63

; <label>:63                                      ; preds = %._crit_edge5, %62
  %success4.0 = phi i64 [ 1, %62 ], [ 0, %._crit_edge5 ]
  %64 = icmp ne i64 %success4.0, 0
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %63
  br label %68

; <label>:66                                      ; preds = %63
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 172, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:68                                      ; preds = %65
  %69 = bitcast %struct.pair* %19 to i8*
  %70 = call %struct.pair* @pair_alloc(i8* %69, i8* null)
  %71 = icmp ne %struct.pair* %70, null
  br i1 %71, label %72, label %._crit_edge6

._crit_edge6:                                     ; preds = %68
  br label %78

; <label>:72                                      ; preds = %68
  %73 = bitcast %struct.pair* %70 to i8*
  %74 = call i64 @jsw_avlinsert(%struct.jsw_avltree* %edgeMapPtr, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %._crit_edge7

._crit_edge7:                                     ; preds = %72
  br label %77

; <label>:76                                      ; preds = %72
  br label %77

; <label>:77                                      ; preds = %._crit_edge7, %76
  %success7.0 = phi i64 [ 1, %76 ], [ 0, %._crit_edge7 ]
  br label %78

; <label>:78                                      ; preds = %._crit_edge6, %77
  %success7.1 = phi i64 [ %success7.0, %77 ], [ 0, %._crit_edge6 ]
  %79 = icmp ne i64 %success7.1, 0
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %78
  br label %83

; <label>:81                                      ; preds = %78
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 176, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:83                                      ; preds = %80
  br label %84

; <label>:84                                      ; preds = %83, %41
  br label %85

; <label>:85                                      ; preds = %84
  %86 = add nsw i64 %i.0, 1
  br label %16

; <label>:87                                      ; preds = %16
  %88 = call %struct.pair* @element_getEncroachedPtr(%struct.element* %elementPtr)
  %89 = icmp ne %struct.pair* %88, null
  br i1 %89, label %90, label %._crit_edge8

._crit_edge8:                                     ; preds = %87
  br label %98

; <label>:90                                      ; preds = %87
  %91 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 3
  %92 = load %struct.rbtree*, %struct.rbtree** %91, align 8
  %93 = bitcast %struct.pair* %88 to i8*
  %94 = call i64 @rbtree_contains(%struct.rbtree* %92, i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %._crit_edge9, label %96

._crit_edge9:                                     ; preds = %90
  br label %97

; <label>:96                                      ; preds = %90
  call void @element_clearEncroached(%struct.element* %elementPtr)
  br label %97

; <label>:97                                      ; preds = %._crit_edge9, %96
  br label %98

; <label>:98                                      ; preds = %._crit_edge8, %97
  ret void
}

declare i64 @element_getNumEdge(%struct.element*) #2

declare %struct.pair* @element_getEdge(%struct.element*, i64) #2

declare i8* @jsw_avlfind(%struct.jsw_avltree*, i8*) #2

declare %struct.pair* @pair_alloc(i8*, i8*) #2

declare i64 @jsw_avlinsert(%struct.jsw_avltree*, i8*) #2

declare void @element_addNeighbor(%struct.element*, %struct.element*) #2

declare i64 @jsw_avlerase(%struct.jsw_avltree*, i8*) #2

declare void @pair_free(%struct.pair*) #2

declare %struct.pair* @element_getEncroachedPtr(%struct.element*) #2

declare i64 @rbtree_contains(%struct.rbtree*, i8*) #2

declare void @element_clearEncroached(%struct.element*) #2

; Function Attrs: nounwind uwtable
define void @TMmesh_insert(%struct.mesh* %meshPtr, %struct.element* %elementPtr, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %searchPair = alloca %struct.pair, align 8
  %searchPair3 = alloca %struct.pair, align 8
  %searchPair5 = alloca %struct.pair, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = icmp ne %struct.element* %2, null
  br i1 %3, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %0
  br label %8

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  store %struct.element* %elementPtr, %struct.element** %5, align 8
  %6 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  %7 = load %struct.element*, %struct.element** %6, align 8
  br label %8

; <label>:8                                       ; preds = %._crit_edge, %4
  %9 = call i64 @element_getNumEdge(%struct.element* %elementPtr)
  %10 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair, i32 0, i32 0
  %11 = bitcast %struct.pair* %searchPair to i8*
  %12 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair3, i32 0, i32 0
  %13 = bitcast %struct.pair* %searchPair3 to i8*
  %14 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair5, i32 0, i32 0
  %15 = bitcast %struct.pair* %searchPair5 to i8*
  %16 = bitcast %struct.pair* %searchPair5 to i8*
  %17 = bitcast %struct.element* %elementPtr to i8*
  br label %__kernel__TMmesh_insert0_outer_chunking

__kernel__TMmesh_insert0_outer_chunking:          ; preds = %8, %__kernel__TMmesh_insert0_exitChunk
  %i.0 = phi i64 [ 0, %8 ], [ %i.1, %__kernel__TMmesh_insert0_exitChunk ]
  %lsup_value = load i64, i64* @"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_lsup"
  store i64 %lsup_value, i64* @"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_vi"
  %granularity_value = load i64, i64* @"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_granularity"
  %new_lsup = add i64 %lsup_value, %granularity_value
  store i64 %new_lsup, i64* @"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_lsup"
  %outer_vi = load i64, i64* @"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_vi"
  br label %__kernel____kernel__TMmesh_insert0_viCond

__kernel____kernel__TMmesh_insert0_viCond:        ; preds = %__kernel__TMmesh_insert0_outer_chunking, %86
  %i.1 = phi i64 [ %i.0, %__kernel__TMmesh_insert0_outer_chunking ], [ %87, %86 ]
  %vi_value = phi i64 [ %outer_vi, %__kernel__TMmesh_insert0_outer_chunking ], [ %"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_vi_inc", %86 ]
  %lsup_value10 = load i64, i64* @"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_lsup"
  %"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_vi_cmp" = icmp slt i64 %vi_value, %lsup_value10
  br i1 %"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_vi_cmp", label %__kernel__TMmesh_insert0, label %__kernel__TMmesh_insert0_exitChunk

__kernel__TMmesh_insert0_exitChunk:               ; preds = %__kernel____kernel__TMmesh_insert0_viCond
  br label %__kernel__TMmesh_insert0_outer_chunking

__kernel__TMmesh_insert0:                         ; preds = %__kernel____kernel__TMmesh_insert0_viCond
  %18 = icmp slt i64 %i.1, %9
  br i1 %18, label %19, label %88

; <label>:19                                      ; preds = %__kernel__TMmesh_insert0
  %20 = call %struct.pair* @element_getEdge(%struct.element* %elementPtr, i64 %i.1)
  %21 = bitcast %struct.pair* %20 to i8*
  store i8* %21, i8** %10, align 8
  %22 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %11)
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %._crit_edge1

._crit_edge1:                                     ; preds = %19
  br label %25

; <label>:24                                      ; preds = %19
  br label %25

; <label>:25                                      ; preds = %._crit_edge1, %24
  %success.0 = phi i64 [ 1, %24 ], [ 0, %._crit_edge1 ]
  %26 = icmp ne i64 %success.0, 0
  br i1 %26, label %43, label %27

; <label>:27                                      ; preds = %25
  %28 = bitcast %struct.pair* %20 to i8*
  %29 = call %struct.pair* @Ppair_alloc(i8* %28, i8* %17)
  %30 = icmp ne %struct.pair* %29, null
  br i1 %30, label %31, label %._crit_edge2

._crit_edge2:                                     ; preds = %27
  br label %37

; <label>:31                                      ; preds = %27
  %32 = bitcast %struct.pair* %29 to i8*
  %33 = call i64 @Pjsw_avlinsert(%struct.jsw_avltree* %edgeMapPtr, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %._crit_edge3

._crit_edge3:                                     ; preds = %31
  br label %36

; <label>:35                                      ; preds = %31
  br label %36

; <label>:36                                      ; preds = %._crit_edge3, %35
  %success1.0 = phi i64 [ 1, %35 ], [ 0, %._crit_edge3 ]
  br label %37

; <label>:37                                      ; preds = %._crit_edge2, %36
  %success1.1 = phi i64 [ %success1.0, %36 ], [ 0, %._crit_edge2 ]
  %38 = icmp ne i64 %success1.1, 0
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %37
  br label %42

; <label>:40                                      ; preds = %37
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 224, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:42                                      ; preds = %39
  br label %85

; <label>:43                                      ; preds = %25
  %44 = bitcast %struct.pair* %20 to i8*
  store i8* %44, i8** %12, align 8
  %45 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %13)
  %46 = bitcast i8* %45 to %struct.pair*
  %47 = icmp ne %struct.pair* %46, null
  br i1 %47, label %48, label %._crit_edge4

._crit_edge4:                                     ; preds = %43
  br label %51

; <label>:48                                      ; preds = %43
  %49 = getelementptr inbounds %struct.pair, %struct.pair* %46, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  br label %51

; <label>:51                                      ; preds = %._crit_edge4, %48
  %dataPtr.0 = phi i8* [ %50, %48 ], [ null, %._crit_edge4 ]
  %52 = bitcast i8* %dataPtr.0 to %struct.element*
  %53 = icmp ne %struct.element* %52, null
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %51
  br label %57

; <label>:55                                      ; preds = %51
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 231, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:57                                      ; preds = %54
  call void @TMelement_addNeighbor(%struct.element* %elementPtr, %struct.element* %52)
  call void @TMelement_addNeighbor(%struct.element* %52, %struct.element* %elementPtr)
  %58 = bitcast %struct.pair* %20 to i8*
  store i8* %58, i8** %14, align 8
  %59 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %15)
  %60 = bitcast i8* %59 to %struct.pair*
  %61 = call i64 @Pjsw_avlerase(%struct.jsw_avltree* %edgeMapPtr, i8* %16)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %._crit_edge5

._crit_edge5:                                     ; preds = %57
  br label %64

; <label>:63                                      ; preds = %57
  call void @Ppair_free(%struct.pair* %60)
  br label %64

; <label>:64                                      ; preds = %._crit_edge5, %63
  %success4.0 = phi i64 [ 1, %63 ], [ 0, %._crit_edge5 ]
  %65 = icmp ne i64 %success4.0, 0
  br i1 %65, label %66, label %67

; <label>:66                                      ; preds = %64
  br label %69

; <label>:67                                      ; preds = %64
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 235, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:69                                      ; preds = %66
  %70 = bitcast %struct.pair* %20 to i8*
  %71 = call %struct.pair* @Ppair_alloc(i8* %70, i8* null)
  %72 = icmp ne %struct.pair* %71, null
  br i1 %72, label %73, label %._crit_edge6

._crit_edge6:                                     ; preds = %69
  br label %79

; <label>:73                                      ; preds = %69
  %74 = bitcast %struct.pair* %71 to i8*
  %75 = call i64 @Pjsw_avlinsert(%struct.jsw_avltree* %edgeMapPtr, i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %._crit_edge7

._crit_edge7:                                     ; preds = %73
  br label %78

; <label>:77                                      ; preds = %73
  br label %78

; <label>:78                                      ; preds = %._crit_edge7, %77
  %success7.0 = phi i64 [ 1, %77 ], [ 0, %._crit_edge7 ]
  br label %79

; <label>:79                                      ; preds = %._crit_edge6, %78
  %success7.1 = phi i64 [ %success7.0, %78 ], [ 0, %._crit_edge6 ]
  %80 = icmp ne i64 %success7.1, 0
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %79
  br label %84

; <label>:82                                      ; preds = %79
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:84                                      ; preds = %81
  br label %85

; <label>:85                                      ; preds = %84, %42
  br label %86

; <label>:86                                      ; preds = %85
  %87 = add nsw i64 %i.1, 1
  %"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_vi_inc" = add i64 %vi_value, 1
  store i64 %"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_vi_inc", i64* @"../bin/mesh.marked.ll_TMmesh_insert___kernel__TMmesh_insert0_vi"
  br label %__kernel____kernel__TMmesh_insert0_viCond, !llvm.loop !1

; <label>:88                                      ; preds = %__kernel__TMmesh_insert0
  %89 = call %struct.pair* @element_getEncroachedPtr(%struct.element* %elementPtr)
  %90 = icmp ne %struct.pair* %89, null
  br i1 %90, label %91, label %._crit_edge8

._crit_edge8:                                     ; preds = %88
  br label %99

; <label>:91                                      ; preds = %88
  %92 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 3
  %93 = load %struct.rbtree*, %struct.rbtree** %92, align 8
  %94 = bitcast %struct.pair* %89 to i8*
  %95 = call i64 @TMrbtree_contains(%struct.rbtree* %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %._crit_edge9, label %97

._crit_edge9:                                     ; preds = %91
  br label %98

; <label>:97                                      ; preds = %91
  call void @element_clearEncroached(%struct.element* %elementPtr)
  br label %98

; <label>:98                                      ; preds = %._crit_edge9, %97
  br label %99

; <label>:99                                      ; preds = %._crit_edge8, %98
  ret void
}

declare %struct.pair* @Ppair_alloc(i8*, i8*) #2

declare i64 @Pjsw_avlinsert(%struct.jsw_avltree*, i8*) #2

declare void @TMelement_addNeighbor(%struct.element*, %struct.element*) #2

declare i64 @Pjsw_avlerase(%struct.jsw_avltree*, i8*) #2

declare void @Ppair_free(%struct.pair*) #2

declare i64 @TMrbtree_contains(%struct.rbtree*, i8*) #2

; Function Attrs: nounwind uwtable
define void @TMmesh_remove(%struct.mesh* %meshPtr, %struct.element* %elementPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @TMelement_isGarbage(%struct.element* %elementPtr)
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %4, label %3

; <label>:3                                       ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 264, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.TMmesh_remove, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %6

; <label>:6                                       ; preds = %5, %3
  %7 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  %8 = load %struct.element*, %struct.element** %7, align 8
  %9 = icmp eq %struct.element* %8, %elementPtr
  br i1 %9, label %10, label %._crit_edge

._crit_edge:                                      ; preds = %6
  br label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  store %struct.element* null, %struct.element** %11, align 8
  %12 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  %13 = load %struct.element*, %struct.element** %12, align 8
  br label %14

; <label>:14                                      ; preds = %._crit_edge, %10
  %15 = call %struct.list* @element_getNeighborListPtr(%struct.element* %elementPtr)
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %15)
  %16 = bitcast %struct.element* %elementPtr to i8*
  br label %17

; <label>:17                                      ; preds = %29, %14
  %18 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %15) #8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

; <label>:20                                      ; preds = %17
  %21 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %15)
  %22 = bitcast i8* %21 to %struct.element*
  %23 = call %struct.list* @element_getNeighborListPtr(%struct.element* %22)
  %24 = call i64 @TMlist_remove(%struct.list* %23, i8* %16)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %20
  br label %29

; <label>:27                                      ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 285, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.TMmesh_remove, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:29                                      ; preds = %26
  br label %17

; <label>:30                                      ; preds = %17
  call void @TMelement_setIsGarbage(%struct.element* %elementPtr, i64 1)
  %31 = call i64 @TMelement_isReferenced(%struct.element* %elementPtr)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %._crit_edge1, label %33

._crit_edge1:                                     ; preds = %30
  br label %34

; <label>:33                                      ; preds = %30
  br label %34

; <label>:34                                      ; preds = %._crit_edge1, %33
  ret void
}

declare i64 @TMelement_isGarbage(%struct.element*) #2

declare %struct.list* @element_getNeighborListPtr(%struct.element*) #2

declare void @TMlist_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @TMlist_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @TMlist_iter_next(%struct.list_node**, %struct.list*) #2

declare i64 @TMlist_remove(%struct.list*, i8*) #2

declare void @TMelement_setIsGarbage(%struct.element*, i64) #2

declare i64 @TMelement_isReferenced(%struct.element*) #2

; Function Attrs: nounwind uwtable
define i64 @TMmesh_insertBoundary(%struct.mesh* %meshPtr, %struct.pair* %boundaryPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = bitcast %struct.pair* %boundaryPtr to i8*
  %4 = call i64 @TMrbtree_insert(%struct.rbtree* %2, i8* %3, i8* null)
  ret i64 %4
}

declare i64 @TMrbtree_insert(%struct.rbtree*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @TMmesh_removeBoundary(%struct.mesh* %meshPtr, %struct.pair* %boundaryPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = bitcast %struct.pair* %boundaryPtr to i8*
  %4 = call i64 @TMrbtree_delete(%struct.rbtree* %2, i8* %3)
  ret i64 %4
}

declare i64 @TMrbtree_delete(%struct.rbtree*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @mesh_read(%struct.mesh* %meshPtr, i8* %fileNamePrefix) #0 {
  %fileName = alloca [256 x i8], align 16
  %inputBuff = alloca [256 x i8], align 16
  %numEntry = alloca i64, align 8
  %numDimension = alloca i64, align 8
  %id = alloca i64, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %id1 = alloca i64, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %insertCoordinates = alloca [2 x %struct.coordinate], align 16
  %id2 = alloca i64, align 8
  %a3 = alloca i64, align 8
  %b4 = alloca i64, align 8
  %c = alloca i64, align 8
  %insertCoordinates5 = alloca [3 x %struct.coordinate], align 16
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call %struct.jsw_avltree* @jsw_avlnew(i64 (i8*, i8*)* bitcast (i64 (%struct.pair*, %struct.pair*)* @element_mapCompareEdge to i64 (i8*, i8*)*))
  %2 = icmp ne %struct.jsw_avltree* %1, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 370, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %6

; <label>:6                                       ; preds = %5, %3
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %8 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %7, i64 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* %fileNamePrefix) #6
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %10 = call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  %11 = icmp ne %struct._IO_FILE* %10, null
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %6
  br label %15

; <label>:13                                      ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 377, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %17 = trunc i64 256 to i32
  %18 = call i8* @fgets(i8* %16, i32 %17, %struct._IO_FILE* %10)
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i64* %numEntry, i64* %numDimension) #6
  %21 = load i64, i64* %numDimension, align 8
  %22 = icmp eq i64 %21, 2
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %15
  br label %26

; <label>:24                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 380, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %26

; <label>:26                                      ; preds = %25, %23
  %27 = load i64, i64* %numEntry, align 8
  %28 = add nsw i64 %27, 1
  %29 = mul i64 %28, 16
  %30 = call noalias i8* @malloc(i64 %29) #6
  %31 = bitcast i8* %30 to %struct.coordinate*
  %32 = icmp ne %struct.coordinate* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %26
  br label %36

; <label>:34                                      ; preds = %26
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 383, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %38 = trunc i64 256 to i32
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i64 0, i64 0
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  br label %41

; <label>:41                                      ; preds = %63, %36
  %i.0 = phi i64 [ 0, %36 ], [ %64, %63 ]
  %42 = load i64, i64* %numEntry, align 8
  %43 = icmp slt i64 %i.0, %42
  br i1 %43, label %44, label %.loopexit2

; <label>:44                                      ; preds = %41
  %45 = call i8* @fgets(i8* %37, i32 %38, %struct._IO_FILE* %10)
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

; <label>:47                                      ; preds = %44
  br label %65

; <label>:48                                      ; preds = %44
  %49 = load i8, i8* %39, align 16
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 35
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %48
  br label %63

; <label>:53                                      ; preds = %48
  %54 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i64* %id, double* %x, double* %y) #6
  %55 = load double, double* %x, align 8
  %56 = load i64, i64* %id, align 8
  %57 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i64 %56
  %58 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %57, i32 0, i32 0
  store double %55, double* %58, align 8
  %59 = load double, double* %y, align 8
  %60 = load i64, i64* %id, align 8
  %61 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i64 %60
  %62 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %61, i32 0, i32 1
  store double %59, double* %62, align 8
  br label %63

; <label>:63                                      ; preds = %53, %52
  %64 = add nsw i64 %i.0, 1
  br label %41

.loopexit2:                                       ; preds = %41
  br label %65

; <label>:65                                      ; preds = %.loopexit2, %47
  %66 = load i64, i64* %numEntry, align 8
  %67 = icmp eq i64 %i.0, %66
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %65
  br label %71

; <label>:69                                      ; preds = %65
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 398, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %71

; <label>:71                                      ; preds = %70, %68
  %72 = call i32 @fclose(%struct._IO_FILE* %10)
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %74 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %73, i64 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* %fileNamePrefix) #6
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %76 = call %struct._IO_FILE* @fopen(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  %77 = icmp ne %struct._IO_FILE* %76, null
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %71
  br label %81

; <label>:79                                      ; preds = %71
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 406, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %81

; <label>:81                                      ; preds = %80, %78
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %83 = trunc i64 256 to i32
  %84 = call i8* @fgets(i8* %82, i32 %83, %struct._IO_FILE* %76)
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %86 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i64* %numEntry, i64* %numDimension) #6
  %87 = load i64, i64* %numEntry, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

; <label>:89                                      ; preds = %81
  br label %92

; <label>:90                                      ; preds = %81
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 409, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %92

; <label>:92                                      ; preds = %91, %89
  %93 = load i64, i64* %numDimension, align 8
  %94 = icmp eq i64 %93, 2
  br i1 %94, label %95, label %96

; <label>:95                                      ; preds = %92
  br label %98

; <label>:96                                      ; preds = %92
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 410, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %98

; <label>:98                                      ; preds = %97, %95
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %100 = trunc i64 256 to i32
  %101 = call i8* @fgets(i8* %99, i32 %100, %struct._IO_FILE* %76)
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %103 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64* %numEntry) #6
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %105 = trunc i64 256 to i32
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i64 0, i64 0
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %108 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %insertCoordinates, i64 0, i64 0
  %109 = bitcast %struct.coordinate* %108 to i8*
  %110 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %insertCoordinates, i64 0, i64 1
  %111 = bitcast %struct.coordinate* %110 to i8*
  %112 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %insertCoordinates, i32 0, i32 0
  br label %113

; <label>:113                                     ; preds = %151, %98
  %i.1 = phi i64 [ 0, %98 ], [ %152, %151 ]
  %114 = load i64, i64* %numEntry, align 8
  %115 = icmp slt i64 %i.1, %114
  br i1 %115, label %116, label %.loopexit1

; <label>:116                                     ; preds = %113
  %117 = call i8* @fgets(i8* %104, i32 %105, %struct._IO_FILE* %76)
  %118 = icmp ne i8* %117, null
  br i1 %118, label %120, label %119

; <label>:119                                     ; preds = %116
  br label %153

; <label>:120                                     ; preds = %116
  %121 = load i8, i8* %106, align 16
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 35
  br i1 %123, label %124, label %125

; <label>:124                                     ; preds = %120
  br label %151

; <label>:125                                     ; preds = %120
  %126 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i64* %id1, i64* %a, i64* %b) #6
  %127 = load i64, i64* %a, align 8
  %128 = icmp sge i64 %127, 0
  br i1 %128, label %129, label %._crit_edge

._crit_edge:                                      ; preds = %125
  br label %133

; <label>:129                                     ; preds = %125
  %130 = load i64, i64* %a, align 8
  %131 = icmp slt i64 %130, %28
  br i1 %131, label %132, label %._crit_edge3

._crit_edge3:                                     ; preds = %129
  br label %133

; <label>:132                                     ; preds = %129
  br label %135

; <label>:133                                     ; preds = %._crit_edge3, %._crit_edge
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 425, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:135                                     ; preds = %132
  %136 = load i64, i64* %b, align 8
  %137 = icmp sge i64 %136, 0
  br i1 %137, label %138, label %._crit_edge4

._crit_edge4:                                     ; preds = %135
  br label %142

; <label>:138                                     ; preds = %135
  %139 = load i64, i64* %b, align 8
  %140 = icmp slt i64 %139, %28
  br i1 %140, label %141, label %._crit_edge5

._crit_edge5:                                     ; preds = %138
  br label %142

; <label>:141                                     ; preds = %138
  br label %144

; <label>:142                                     ; preds = %._crit_edge5, %._crit_edge4
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 426, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:144                                     ; preds = %141
  %145 = load i64, i64* %a, align 8
  %146 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i64 %145
  %147 = bitcast %struct.coordinate* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %147, i64 16, i32 8, i1 false)
  %148 = load i64, i64* %b, align 8
  %149 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i64 %148
  %150 = bitcast %struct.coordinate* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %150, i64 16, i32 8, i1 false)
  call void @createElement(%struct.mesh* %meshPtr, %struct.coordinate* %112, i64 2, %struct.jsw_avltree* %1)
  br label %151

; <label>:151                                     ; preds = %144, %124
  %152 = add nsw i64 %i.1, 1
  br label %113

.loopexit1:                                       ; preds = %113
  br label %153

; <label>:153                                     ; preds = %.loopexit1, %119
  %154 = load i64, i64* %numEntry, align 8
  %155 = icmp eq i64 %i.1, %154
  br i1 %155, label %156, label %157

; <label>:156                                     ; preds = %153
  br label %159

; <label>:157                                     ; preds = %153
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 431, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %159

; <label>:159                                     ; preds = %158, %156
  %160 = load i64, i64* %numEntry, align 8
  %161 = add nsw i64 0, %160
  %162 = call i32 @fclose(%struct._IO_FILE* %76)
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %164 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %163, i64 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* %fileNamePrefix) #6
  %165 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %166 = call %struct._IO_FILE* @fopen(i8* %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  %167 = icmp ne %struct._IO_FILE* %166, null
  br i1 %167, label %168, label %169

; <label>:168                                     ; preds = %159
  br label %171

; <label>:169                                     ; preds = %159
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 440, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %171

; <label>:171                                     ; preds = %170, %168
  %172 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %173 = trunc i64 256 to i32
  %174 = call i8* @fgets(i8* %172, i32 %173, %struct._IO_FILE* %166)
  %175 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %176 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i64* %numEntry, i64* %numDimension) #6
  %177 = load i64, i64* %numDimension, align 8
  %178 = icmp eq i64 %177, 3
  br i1 %178, label %179, label %180

; <label>:179                                     ; preds = %171
  br label %182

; <label>:180                                     ; preds = %171
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 443, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %182

; <label>:182                                     ; preds = %181, %179
  %183 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %184 = trunc i64 256 to i32
  %185 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i64 0, i64 0
  %186 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %187 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i64 0, i64 0
  %188 = bitcast %struct.coordinate* %187 to i8*
  %189 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i64 0, i64 1
  %190 = bitcast %struct.coordinate* %189 to i8*
  %191 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i64 0, i64 2
  %192 = bitcast %struct.coordinate* %191 to i8*
  %193 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i32 0, i32 0
  br label %194

; <label>:194                                     ; preds = %244, %182
  %i.2 = phi i64 [ 0, %182 ], [ %245, %244 ]
  %195 = load i64, i64* %numEntry, align 8
  %196 = icmp slt i64 %i.2, %195
  br i1 %196, label %197, label %.loopexit

; <label>:197                                     ; preds = %194
  %198 = call i8* @fgets(i8* %183, i32 %184, %struct._IO_FILE* %166)
  %199 = icmp ne i8* %198, null
  br i1 %199, label %201, label %200

; <label>:200                                     ; preds = %197
  br label %246

; <label>:201                                     ; preds = %197
  %202 = load i8, i8* %185, align 16
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 35
  br i1 %204, label %205, label %206

; <label>:205                                     ; preds = %201
  br label %244

; <label>:206                                     ; preds = %201
  %207 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %186, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i64* %id2, i64* %a3, i64* %b4, i64* %c) #6
  %208 = load i64, i64* %a3, align 8
  %209 = icmp sge i64 %208, 0
  br i1 %209, label %210, label %._crit_edge6

._crit_edge6:                                     ; preds = %206
  br label %214

; <label>:210                                     ; preds = %206
  %211 = load i64, i64* %a3, align 8
  %212 = icmp slt i64 %211, %28
  br i1 %212, label %213, label %._crit_edge7

._crit_edge7:                                     ; preds = %210
  br label %214

; <label>:213                                     ; preds = %210
  br label %216

; <label>:214                                     ; preds = %._crit_edge7, %._crit_edge6
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 457, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:216                                     ; preds = %213
  %217 = load i64, i64* %b4, align 8
  %218 = icmp sge i64 %217, 0
  br i1 %218, label %219, label %._crit_edge8

._crit_edge8:                                     ; preds = %216
  br label %223

; <label>:219                                     ; preds = %216
  %220 = load i64, i64* %b4, align 8
  %221 = icmp slt i64 %220, %28
  br i1 %221, label %222, label %._crit_edge9

._crit_edge9:                                     ; preds = %219
  br label %223

; <label>:222                                     ; preds = %219
  br label %225

; <label>:223                                     ; preds = %._crit_edge9, %._crit_edge8
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:225                                     ; preds = %222
  %226 = load i64, i64* %c, align 8
  %227 = icmp sge i64 %226, 0
  br i1 %227, label %228, label %._crit_edge10

._crit_edge10:                                    ; preds = %225
  br label %232

; <label>:228                                     ; preds = %225
  %229 = load i64, i64* %c, align 8
  %230 = icmp slt i64 %229, %28
  br i1 %230, label %231, label %._crit_edge11

._crit_edge11:                                    ; preds = %228
  br label %232

; <label>:231                                     ; preds = %228
  br label %234

; <label>:232                                     ; preds = %._crit_edge11, %._crit_edge10
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 459, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:234                                     ; preds = %231
  %235 = load i64, i64* %a3, align 8
  %236 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i64 %235
  %237 = bitcast %struct.coordinate* %236 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %188, i8* %237, i64 16, i32 8, i1 false)
  %238 = load i64, i64* %b4, align 8
  %239 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i64 %238
  %240 = bitcast %struct.coordinate* %239 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %240, i64 16, i32 8, i1 false)
  %241 = load i64, i64* %c, align 8
  %242 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %31, i64 %241
  %243 = bitcast %struct.coordinate* %242 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %192, i8* %243, i64 16, i32 8, i1 false)
  call void @createElement(%struct.mesh* %meshPtr, %struct.coordinate* %193, i64 3, %struct.jsw_avltree* %1)
  br label %244

; <label>:244                                     ; preds = %234, %205
  %245 = add nsw i64 %i.2, 1
  br label %194

.loopexit:                                        ; preds = %194
  br label %246

; <label>:246                                     ; preds = %.loopexit, %200
  %247 = load i64, i64* %numEntry, align 8
  %248 = icmp eq i64 %i.2, %247
  br i1 %248, label %249, label %250

; <label>:249                                     ; preds = %246
  br label %252

; <label>:250                                     ; preds = %246
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 465, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %252

; <label>:252                                     ; preds = %251, %249
  %253 = load i64, i64* %numEntry, align 8
  %254 = add nsw i64 %161, %253
  %255 = call i32 @fclose(%struct._IO_FILE* %166)
  %256 = bitcast %struct.coordinate* %31 to i8*
  call void @free(i8* %256) #6
  call void @jsw_avldelete(%struct.jsw_avltree* %1)
  ret i64 %254
}

declare %struct.jsw_avltree* @jsw_avlnew(i64 (i8*, i8*)*) #2

declare i64 @element_mapCompareEdge(%struct.pair*, %struct.pair*) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @createElement(%struct.mesh* %meshPtr, %struct.coordinate* %coordinates, i64 %numCoordinate, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call %struct.element* @element_alloc(%struct.coordinate* %coordinates, i64 %numCoordinate)
  %2 = icmp ne %struct.element* %1, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 329, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.createElement, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %6

; <label>:6                                       ; preds = %5, %3
  %7 = icmp eq i64 %numCoordinate, 2
  br i1 %7, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %6
  br label %19

; <label>:8                                       ; preds = %6
  %9 = call %struct.pair* @element_getEdge(%struct.element* %1, i64 0)
  %10 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 3
  %11 = load %struct.rbtree*, %struct.rbtree** %10, align 8
  %12 = bitcast %struct.pair* %9 to i8*
  %13 = call i64 @rbtree_insert(%struct.rbtree* %11, i8* %12, i8* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %8
  br label %18

; <label>:16                                      ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 334, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.createElement, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  br label %19

; <label>:19                                      ; preds = %._crit_edge, %18
  call void @mesh_insert(%struct.mesh* %meshPtr, %struct.element* %1, %struct.jsw_avltree* %edgeMapPtr)
  %20 = call i64 @element_isBad(%struct.element* %1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %._crit_edge1

._crit_edge1:                                     ; preds = %19
  br label %32

; <label>:22                                      ; preds = %19
  %23 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 1
  %24 = load %struct.queue*, %struct.queue** %23, align 8
  %25 = bitcast %struct.element* %1 to i8*
  %26 = call i64 @queue_push(%struct.queue* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %22
  br label %31

; <label>:29                                      ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 341, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.createElement, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %31

; <label>:31                                      ; preds = %30, %28
  br label %32

; <label>:32                                      ; preds = %._crit_edge1, %31
  ret void
}

declare void @jsw_avldelete(%struct.jsw_avltree*) #2

; Function Attrs: nounwind uwtable
define %struct.element* @mesh_getBad(%struct.mesh* %meshPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = call i8* @queue_pop(%struct.queue* %2)
  %4 = bitcast i8* %3 to %struct.element*
  ret %struct.element* %4
}

declare i8* @queue_pop(%struct.queue*) #2

; Function Attrs: nounwind uwtable
define void @mesh_shuffleBad(%struct.mesh* %meshPtr, %struct.random* %randomPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  call void @queue_shuffle(%struct.queue* %2, %struct.random* %randomPtr)
  ret void
}

declare void @queue_shuffle(%struct.queue*, %struct.random*) #2

; Function Attrs: nounwind uwtable
define i64 @mesh_check(%struct.mesh* %meshPtr, i64 %expectedNumElement) #0 {
  %it = alloca %struct.list_node*, align 8
  %searchPair = alloca %struct.pair, align 8
  %searchPair3 = alloca %struct.pair, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %3 = call i32 @fflush(%struct._IO_FILE* %2)
  %4 = call %struct.queue* @queue_alloc(i64 -1)
  %5 = icmp ne %struct.queue* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 516, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %8, %6
  %10 = call %struct.jsw_avltree* @jsw_avlnew(i64 (i8*, i8*)* bitcast (i64 (%struct.pair*, %struct.pair*)* @element_mapCompare to i64 (i8*, i8*)*))
  %11 = icmp ne %struct.jsw_avltree* %10, null
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %9
  br label %15

; <label>:13                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 518, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  %17 = load %struct.element*, %struct.element** %16, align 8
  %18 = icmp ne %struct.element* %17, null
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %15
  br label %22

; <label>:20                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 523, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i32 0, i32 0
  %24 = load %struct.element*, %struct.element** %23, align 8
  %25 = bitcast %struct.element* %24 to i8*
  %26 = call i64 @queue_push(%struct.queue* %4, i8* %25)
  %27 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair, i32 0, i32 0
  %28 = bitcast %struct.pair* %searchPair to i8*
  %29 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair3, i32 0, i32 0
  %30 = bitcast %struct.pair* %searchPair3 to i8*
  br label %31

; <label>:31                                      ; preds = %.backedge, %22
  %numElement.0 = phi i64 [ 0, %22 ], [ %numElement.1, %.backedge ]
  %numBadTriangle.0 = phi i64 [ 0, %22 ], [ %numBadTriangle.1, %.backedge ]
  %32 = call i64 @queue_isEmpty(%struct.queue* %4)
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %90

; <label>:35                                      ; preds = %31
  %36 = call i8* @queue_pop(%struct.queue* %4)
  %37 = bitcast i8* %36 to %struct.element*
  %38 = bitcast %struct.element* %37 to i8*
  store i8* %38, i8** %27, align 8
  %39 = call i8* @jsw_avlfind(%struct.jsw_avltree* %10, i8* %28)
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %._crit_edge

._crit_edge:                                      ; preds = %35
  br label %42

; <label>:41                                      ; preds = %35
  br label %42

; <label>:42                                      ; preds = %._crit_edge, %41
  %success.0 = phi i64 [ 1, %41 ], [ 0, %._crit_edge ]
  %43 = icmp ne i64 %success.0, 0
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %42
  br label %.backedge

.backedge:                                        ; preds = %44, %88
  %numElement.1 = phi i64 [ %numElement.0, %44 ], [ %89, %88 ]
  %numBadTriangle.1 = phi i64 [ %numBadTriangle.0, %44 ], [ %numBadTriangle.2, %88 ]
  br label %31

; <label>:45                                      ; preds = %42
  %46 = bitcast %struct.element* %37 to i8*
  %47 = call %struct.pair* @pair_alloc(i8* %46, i8* null)
  %48 = icmp ne %struct.pair* %47, null
  br i1 %48, label %49, label %._crit_edge1

._crit_edge1:                                     ; preds = %45
  br label %55

; <label>:49                                      ; preds = %45
  %50 = bitcast %struct.pair* %47 to i8*
  %51 = call i64 @jsw_avlinsert(%struct.jsw_avltree* %10, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %._crit_edge2

._crit_edge2:                                     ; preds = %49
  br label %54

; <label>:53                                      ; preds = %49
  br label %54

; <label>:54                                      ; preds = %._crit_edge2, %53
  %success1.0 = phi i64 [ 1, %53 ], [ 0, %._crit_edge2 ]
  br label %55

; <label>:55                                      ; preds = %._crit_edge1, %54
  %success1.1 = phi i64 [ %success1.0, %54 ], [ 0, %._crit_edge1 ]
  %56 = icmp ne i64 %success1.1, 0
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %55
  br label %60

; <label>:58                                      ; preds = %55
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 537, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:60                                      ; preds = %57
  %61 = call i64 @element_checkAngles(%struct.element* %37)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %._crit_edge3, label %63

._crit_edge3:                                     ; preds = %60
  br label %65

; <label>:63                                      ; preds = %60
  %64 = add nsw i64 %numBadTriangle.0, 1
  br label %65

; <label>:65                                      ; preds = %._crit_edge3, %63
  %numBadTriangle.2 = phi i64 [ %numBadTriangle.0, %._crit_edge3 ], [ %64, %63 ]
  %66 = call %struct.list* @element_getNeighborListPtr(%struct.element* %37)
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %66)
  br label %67

; <label>:67                                      ; preds = %87, %65
  %68 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %66) #8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %88

; <label>:70                                      ; preds = %67
  %71 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %66)
  %72 = bitcast i8* %71 to %struct.element*
  %73 = bitcast %struct.element* %72 to i8*
  store i8* %73, i8** %29, align 8
  %74 = call i8* @jsw_avlfind(%struct.jsw_avltree* %10, i8* %30)
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %._crit_edge4

._crit_edge4:                                     ; preds = %70
  br label %77

; <label>:76                                      ; preds = %70
  br label %77

; <label>:77                                      ; preds = %._crit_edge4, %76
  %success2.0 = phi i64 [ 1, %76 ], [ 0, %._crit_edge4 ]
  %78 = icmp ne i64 %success2.0, 0
  br i1 %78, label %._crit_edge5, label %79

._crit_edge5:                                     ; preds = %77
  br label %87

; <label>:79                                      ; preds = %77
  %80 = bitcast %struct.element* %72 to i8*
  %81 = call i64 @queue_push(%struct.queue* %4, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %79
  br label %86

; <label>:84                                      ; preds = %79
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 554, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:86                                      ; preds = %83
  br label %87

; <label>:87                                      ; preds = %._crit_edge5, %86
  br label %67

; <label>:88                                      ; preds = %67
  %89 = add nsw i64 %numElement.0, 1
  br label %.backedge

; <label>:90                                      ; preds = %31
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0), i64 %numElement.0)
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0), i64 %numBadTriangle.0)
  call void @queue_free(%struct.queue* %4)
  call void @jsw_avldelete(%struct.jsw_avltree* %10)
  %93 = icmp sgt i64 %numBadTriangle.0, 0
  br i1 %93, label %._crit_edge6, label %94

._crit_edge6:                                     ; preds = %90
  br label %98

; <label>:94                                      ; preds = %90
  %95 = icmp sgt i64 0, 0
  br i1 %95, label %._crit_edge7, label %96

._crit_edge7:                                     ; preds = %94
  br label %98

; <label>:96                                      ; preds = %94
  %97 = icmp ne i64 %numElement.0, %expectedNumElement
  br label %98

; <label>:98                                      ; preds = %._crit_edge7, %._crit_edge6, %96
  %.reg2mem8.0 = phi i1 [ true, %._crit_edge6 ], [ true, %._crit_edge7 ], [ %97, %96 ]
  %99 = select i1 %.reg2mem8.0, i32 0, i32 1
  %100 = sext i32 %99 to i64
  ret i64 %100
}

declare i32 @puts(i8*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i64 @element_mapCompare(%struct.pair*, %struct.pair*) #2

declare i64 @queue_push(%struct.queue*, i8*) #2

declare i64 @queue_isEmpty(%struct.queue*) #2

declare i64 @element_checkAngles(%struct.element*) #2

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #2

declare i32 @printf(i8*, ...) #2

declare %struct.element* @element_alloc(%struct.coordinate*, i64) #2

declare i64 @rbtree_insert(%struct.rbtree*, i8*, i8*) #2

declare i64 @element_isBad(%struct.element*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.vectorize.width", i32 1337}
