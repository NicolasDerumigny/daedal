; ModuleID = '../bin/mesh.ll'
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

; Function Attrs: nounwind uwtable
define noalias %struct.mesh* @mesh_alloc() #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #6
  %2 = bitcast i8* %1 to %struct.mesh*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %19, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to %struct.element**
  store %struct.element* null, %struct.element** %5, align 8
  %6 = tail call %struct.queue* @queue_alloc(i64 -1) #6
  %7 = getelementptr inbounds i8, i8* %1, i64 8
  %8 = bitcast i8* %7 to %struct.queue**
  store %struct.queue* %6, %struct.queue** %8, align 8
  %9 = icmp eq %struct.queue* %6, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 108, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.mesh_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:11                                      ; preds = %4
  %12 = getelementptr inbounds i8, i8* %1, i64 16
  %13 = bitcast i8* %12 to i64*
  store i64 0, i64* %13, align 8
  %14 = tail call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* nonnull @element_listCompareEdge) #6
  %15 = getelementptr inbounds i8, i8* %1, i64 24
  %16 = bitcast i8* %15 to %struct.rbtree**
  store %struct.rbtree* %14, %struct.rbtree** %16, align 8
  %17 = icmp eq %struct.rbtree* %14, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %11
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 111, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.mesh_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:19                                      ; preds = %11, %0
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
define void @mesh_free(%struct.mesh* nocapture %meshPtr) #0 {
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  tail call void @queue_free(%struct.queue* %2) #6
  %3 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 3
  %4 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  tail call void @rbtree_free(%struct.rbtree* %4) #6
  %5 = bitcast %struct.mesh* %meshPtr to i8*
  tail call void @free(i8* %5) #6
  ret void
}

declare void @queue_free(%struct.queue*) #2

declare void @rbtree_free(%struct.rbtree*) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @mesh_insert(%struct.mesh* nocapture %meshPtr, %struct.element* %elementPtr, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %searchPair = alloca %struct.pair, align 8
  %searchPair3 = alloca %struct.pair, align 8
  %searchPair5 = alloca %struct.pair, align 8
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 0
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = icmp eq %struct.element* %2, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  br label %5

; <label>:5                                       ; preds = %0, %4
  %6 = tail call i64 @element_getNumEdge(%struct.element* %elementPtr) #6
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %5
  %8 = bitcast %struct.pair* %searchPair to %struct.pair**
  %9 = bitcast %struct.pair* %searchPair to i8*
  %10 = bitcast %struct.element* %elementPtr to i8*
  %11 = bitcast %struct.pair* %searchPair3 to %struct.pair**
  %12 = bitcast %struct.pair* %searchPair3 to i8*
  %13 = bitcast %struct.pair* %searchPair5 to %struct.pair**
  %14 = bitcast %struct.pair* %searchPair5 to i8*
  br label %15

; <label>:15                                      ; preds = %.lr.ph, %45
  %i.07 = phi i64 [ 0, %.lr.ph ], [ %46, %45 ]
  %16 = call %struct.pair* @element_getEdge(%struct.element* %elementPtr, i64 %i.07) #6
  %17 = bitcast %struct.pair* %16 to i8*
  store %struct.pair* %16, %struct.pair** %8, align 8
  %18 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %9) #6
  %not. = icmp eq i8* %18, null
  br i1 %not., label %19, label %25

; <label>:19                                      ; preds = %15
  %20 = call %struct.pair* @pair_alloc(i8* %17, i8* %10) #6
  %21 = icmp eq %struct.pair* %20, null
  br i1 %21, label %.critedge, label %22

; <label>:22                                      ; preds = %19
  %23 = bitcast %struct.pair* %20 to i8*
  %24 = call i64 @jsw_avlinsert(%struct.jsw_avltree* %edgeMapPtr, i8* %23) #6
  %not.5 = icmp eq i64 %24, 0
  br i1 %not.5, label %.critedge, label %45

.critedge:                                        ; preds = %22, %19
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 161, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i64 0, i64 0)) #7
  unreachable

; <label>:25                                      ; preds = %15
  store %struct.pair* %16, %struct.pair** %11, align 8
  %26 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %12) #6
  %27 = icmp eq i8* %26, null
  br i1 %27, label %.thread, label %28

; <label>:28                                      ; preds = %25
  %29 = getelementptr inbounds i8, i8* %26, i64 8
  %30 = bitcast i8* %29 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to %struct.element*
  %33 = icmp eq i8* %31, null
  br i1 %33, label %.thread, label %34

.thread:                                          ; preds = %25, %28
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 168, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i64 0, i64 0)) #7
  unreachable

; <label>:34                                      ; preds = %28
  call void @element_addNeighbor(%struct.element* %elementPtr, %struct.element* %32) #6
  call void @element_addNeighbor(%struct.element* %32, %struct.element* %elementPtr) #6
  store %struct.pair* %16, %struct.pair** %13, align 8
  %35 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %14) #6
  %36 = call i64 @jsw_avlerase(%struct.jsw_avltree* %edgeMapPtr, i8* %14) #6
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %41, label %.critedge2

.critedge2:                                       ; preds = %34
  %38 = bitcast i8* %35 to %struct.pair*
  call void @pair_free(%struct.pair* %38) #6
  %39 = call %struct.pair* @pair_alloc(i8* %17, i8* null) #6
  %40 = icmp eq %struct.pair* %39, null
  br i1 %40, label %.critedge4, label %42

; <label>:41                                      ; preds = %34
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 172, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i64 0, i64 0)) #7
  unreachable

; <label>:42                                      ; preds = %.critedge2
  %43 = bitcast %struct.pair* %39 to i8*
  %44 = call i64 @jsw_avlinsert(%struct.jsw_avltree* %edgeMapPtr, i8* %43) #6
  %not.6 = icmp eq i64 %44, 0
  br i1 %not.6, label %.critedge4, label %45

.critedge4:                                       ; preds = %42, %.critedge2
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 176, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i64 0, i64 0)) #7
  unreachable

; <label>:45                                      ; preds = %42, %22
  %46 = add nuw nsw i64 %i.07, 1
  %47 = icmp slt i64 %46, %6
  br i1 %47, label %15, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %45
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %5
  %48 = call %struct.pair* @element_getEncroachedPtr(%struct.element* %elementPtr) #6
  %49 = icmp eq %struct.pair* %48, null
  br i1 %49, label %57, label %50

; <label>:50                                      ; preds = %._crit_edge
  %51 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 3
  %52 = load %struct.rbtree*, %struct.rbtree** %51, align 8
  %53 = bitcast %struct.pair* %48 to i8*
  %54 = call i64 @rbtree_contains(%struct.rbtree* %52, i8* %53) #6
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %50
  call void @element_clearEncroached(%struct.element* %elementPtr) #6
  br label %57

; <label>:57                                      ; preds = %50, %._crit_edge, %56
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
define void @TMmesh_insert(%struct.mesh* nocapture %meshPtr, %struct.element* %elementPtr, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %searchPair = alloca %struct.pair, align 8
  %searchPair3 = alloca %struct.pair, align 8
  %searchPair5 = alloca %struct.pair, align 8
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 0
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = icmp eq %struct.element* %2, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  br label %5

; <label>:5                                       ; preds = %0, %4
  %6 = tail call i64 @element_getNumEdge(%struct.element* %elementPtr) #6
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %5
  %8 = bitcast %struct.pair* %searchPair to %struct.pair**
  %9 = bitcast %struct.pair* %searchPair to i8*
  %10 = bitcast %struct.element* %elementPtr to i8*
  %11 = bitcast %struct.pair* %searchPair3 to %struct.pair**
  %12 = bitcast %struct.pair* %searchPair3 to i8*
  %13 = bitcast %struct.pair* %searchPair5 to %struct.pair**
  %14 = bitcast %struct.pair* %searchPair5 to i8*
  br label %15

; <label>:15                                      ; preds = %.lr.ph, %45
  %i.07 = phi i64 [ 0, %.lr.ph ], [ %46, %45 ]
  %16 = call %struct.pair* @element_getEdge(%struct.element* %elementPtr, i64 %i.07) #6
  %17 = bitcast %struct.pair* %16 to i8*
  store %struct.pair* %16, %struct.pair** %8, align 8
  %18 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %9) #6
  %not. = icmp eq i8* %18, null
  br i1 %not., label %19, label %25

; <label>:19                                      ; preds = %15
  %20 = call %struct.pair* @Ppair_alloc(i8* %17, i8* %10) #6
  %21 = icmp eq %struct.pair* %20, null
  br i1 %21, label %.critedge, label %22

; <label>:22                                      ; preds = %19
  %23 = bitcast %struct.pair* %20 to i8*
  %24 = call i64 @Pjsw_avlinsert(%struct.jsw_avltree* %edgeMapPtr, i8* %23) #6
  %not.5 = icmp eq i64 %24, 0
  br i1 %not.5, label %.critedge, label %45

.critedge:                                        ; preds = %22, %19
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 224, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i64 0, i64 0)) #7
  unreachable

; <label>:25                                      ; preds = %15
  store %struct.pair* %16, %struct.pair** %11, align 8
  %26 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %12) #6
  %27 = icmp eq i8* %26, null
  br i1 %27, label %.thread, label %28

; <label>:28                                      ; preds = %25
  %29 = getelementptr inbounds i8, i8* %26, i64 8
  %30 = bitcast i8* %29 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to %struct.element*
  %33 = icmp eq i8* %31, null
  br i1 %33, label %.thread, label %34

.thread:                                          ; preds = %25, %28
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 231, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i64 0, i64 0)) #7
  unreachable

; <label>:34                                      ; preds = %28
  call void @TMelement_addNeighbor(%struct.element* %elementPtr, %struct.element* %32) #6
  call void @TMelement_addNeighbor(%struct.element* %32, %struct.element* %elementPtr) #6
  store %struct.pair* %16, %struct.pair** %13, align 8
  %35 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %14) #6
  %36 = call i64 @Pjsw_avlerase(%struct.jsw_avltree* %edgeMapPtr, i8* %14) #6
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %41, label %.critedge2

.critedge2:                                       ; preds = %34
  %38 = bitcast i8* %35 to %struct.pair*
  call void @Ppair_free(%struct.pair* %38) #6
  %39 = call %struct.pair* @Ppair_alloc(i8* %17, i8* null) #6
  %40 = icmp eq %struct.pair* %39, null
  br i1 %40, label %.critedge4, label %42

; <label>:41                                      ; preds = %34
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 235, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i64 0, i64 0)) #7
  unreachable

; <label>:42                                      ; preds = %.critedge2
  %43 = bitcast %struct.pair* %39 to i8*
  %44 = call i64 @Pjsw_avlinsert(%struct.jsw_avltree* %edgeMapPtr, i8* %43) #6
  %not.6 = icmp eq i64 %44, 0
  br i1 %not.6, label %.critedge4, label %45

.critedge4:                                       ; preds = %42, %.critedge2
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 239, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i64 0, i64 0)) #7
  unreachable

; <label>:45                                      ; preds = %42, %22
  %46 = add nuw nsw i64 %i.07, 1
  %47 = icmp slt i64 %46, %6
  br i1 %47, label %15, label %._crit_edge.loopexit, !llvm.loop !1

._crit_edge.loopexit:                             ; preds = %45
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %5
  %48 = call %struct.pair* @element_getEncroachedPtr(%struct.element* %elementPtr) #6
  %49 = icmp eq %struct.pair* %48, null
  br i1 %49, label %57, label %50

; <label>:50                                      ; preds = %._crit_edge
  %51 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 3
  %52 = load %struct.rbtree*, %struct.rbtree** %51, align 8
  %53 = bitcast %struct.pair* %48 to i8*
  %54 = call i64 @TMrbtree_contains(%struct.rbtree* %52, i8* %53) #6
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %50
  call void @element_clearEncroached(%struct.element* %elementPtr) #6
  br label %57

; <label>:57                                      ; preds = %50, %._crit_edge, %56
  ret void
}

declare %struct.pair* @Ppair_alloc(i8*, i8*) #2

declare i64 @Pjsw_avlinsert(%struct.jsw_avltree*, i8*) #2

declare void @TMelement_addNeighbor(%struct.element*, %struct.element*) #2

declare i64 @Pjsw_avlerase(%struct.jsw_avltree*, i8*) #2

declare void @Ppair_free(%struct.pair*) #2

declare i64 @TMrbtree_contains(%struct.rbtree*, i8*) #2

; Function Attrs: nounwind uwtable
define void @TMmesh_remove(%struct.mesh* nocapture %meshPtr, %struct.element* %elementPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %1 = tail call i64 @TMelement_isGarbage(%struct.element* %elementPtr) #6
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %4, label %3

; <label>:3                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 264, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.TMmesh_remove, i64 0, i64 0)) #7
  unreachable

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 0
  %6 = load %struct.element*, %struct.element** %5, align 8
  %7 = icmp eq %struct.element* %6, %elementPtr
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %4
  store %struct.element* null, %struct.element** %5, align 8
  br label %9

; <label>:9                                       ; preds = %8, %4
  %10 = tail call %struct.list* @element_getNeighborListPtr(%struct.element* %elementPtr) #6
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %10) #6
  %11 = bitcast %struct.element* %elementPtr to i8*
  br label %12

; <label>:12                                      ; preds = %15, %9
  %13 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %10) #8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %22, label %15

; <label>:15                                      ; preds = %12
  %16 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %10) #6
  %17 = bitcast i8* %16 to %struct.element*
  %18 = call %struct.list* @element_getNeighborListPtr(%struct.element* %17) #6
  %19 = call i64 @TMlist_remove(%struct.list* %18, i8* %11) #6
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %12

; <label>:21                                      ; preds = %15
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 285, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.TMmesh_remove, i64 0, i64 0)) #7
  unreachable

; <label>:22                                      ; preds = %12
  call void @TMelement_setIsGarbage(%struct.element* %elementPtr, i64 1) #6
  %23 = call i64 @TMelement_isReferenced(%struct.element* %elementPtr) #6
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
define i64 @TMmesh_insertBoundary(%struct.mesh* nocapture readonly %meshPtr, %struct.pair* %boundaryPtr) #0 {
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = bitcast %struct.pair* %boundaryPtr to i8*
  %4 = tail call i64 @TMrbtree_insert(%struct.rbtree* %2, i8* %3, i8* null) #6
  ret i64 %4
}

declare i64 @TMrbtree_insert(%struct.rbtree*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @TMmesh_removeBoundary(%struct.mesh* nocapture readonly %meshPtr, %struct.pair* %boundaryPtr) #0 {
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 3
  %2 = load %struct.rbtree*, %struct.rbtree** %1, align 8
  %3 = bitcast %struct.pair* %boundaryPtr to i8*
  %4 = tail call i64 @TMrbtree_delete(%struct.rbtree* %2, i8* %3) #6
  ret i64 %4
}

declare i64 @TMrbtree_delete(%struct.rbtree*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @mesh_read(%struct.mesh* nocapture %meshPtr, i8* %fileNamePrefix) #0 {
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
  %1 = tail call %struct.jsw_avltree* @jsw_avlnew(i64 (i8*, i8*)* bitcast (i64 (%struct.pair*, %struct.pair*)* @element_mapCompareEdge to i64 (i8*, i8*)*)) #6
  %2 = icmp eq %struct.jsw_avltree* %1, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 370, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i64 0, i64 0
  %6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %5, i64 256, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %fileNamePrefix) #6
  %7 = call %struct._IO_FILE* @fopen(i8* %5, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %8 = icmp eq %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 377, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:10                                      ; preds = %4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i64 0, i64 0
  %12 = call i8* @fgets(i8* %11, i32 256, %struct._IO_FILE* nonnull %7)
  %13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i64* nonnull %numEntry, i64* nonnull %numDimension) #6
  %14 = load i64, i64* %numDimension, align 8
  %15 = icmp eq i64 %14, 2
  br i1 %15, label %17, label %16

; <label>:16                                      ; preds = %10
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 380, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:17                                      ; preds = %10
  %18 = load i64, i64* %numEntry, align 8
  %19 = shl i64 %18, 4
  %20 = add i64 %19, 16
  %21 = call noalias i8* @malloc(i64 %20) #6
  %22 = bitcast i8* %21 to %struct.coordinate*
  %23 = icmp eq i8* %21, null
  br i1 %23, label %27, label %.preheader6

.preheader6:                                      ; preds = %17
  %24 = icmp sgt i64 %18, 0
  br i1 %24, label %.lr.ph28, label %._crit_edge29

.lr.ph28:                                         ; preds = %.preheader6
  %25 = bitcast double* %x to i64*
  %26 = bitcast double* %y to i64*
  br label %28

; <label>:27                                      ; preds = %17
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 383, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:28                                      ; preds = %.lr.ph28, %43
  %i.027 = phi i64 [ 0, %.lr.ph28 ], [ %44, %43 ]
  %29 = call i8* @fgets(i8* %11, i32 256, %struct._IO_FILE* nonnull %7)
  %30 = icmp eq i8* %29, null
  br i1 %30, label %.._crit_edge29.loopexit_crit_edge, label %31

.._crit_edge29.loopexit_crit_edge:                ; preds = %28
  %i.027.lcssa = phi i64 [ %i.027, %28 ]
  %.pre.pre = load i64, i64* %numEntry, align 8
  br label %._crit_edge29

; <label>:31                                      ; preds = %28
  %32 = load i8, i8* %11, align 16
  %33 = icmp eq i8 %32, 35
  br i1 %33, label %43, label %34

; <label>:34                                      ; preds = %31
  %35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %11, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i64* nonnull %id, double* nonnull %x, double* nonnull %y) #6
  %36 = load i64, i64* %25, align 8
  %37 = load i64, i64* %id, align 8
  %38 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %22, i64 %37
  %39 = bitcast %struct.coordinate* %38 to i64*
  store i64 %36, i64* %39, align 8
  %40 = load i64, i64* %26, align 8
  %41 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %22, i64 %37, i32 1
  %42 = bitcast double* %41 to i64*
  store i64 %40, i64* %42, align 8
  br label %43

; <label>:43                                      ; preds = %31, %34
  %44 = add nuw nsw i64 %i.027, 1
  %45 = load i64, i64* %numEntry, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %28, label %._crit_edge29.loopexit

._crit_edge29.loopexit:                           ; preds = %43
  %.lcssa109 = phi i64 [ %45, %43 ]
  %.lcssa108 = phi i64 [ %44, %43 ]
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %.._crit_edge29.loopexit_crit_edge, %.preheader6
  %47 = phi i64 [ %18, %.preheader6 ], [ %.pre.pre, %.._crit_edge29.loopexit_crit_edge ], [ %.lcssa109, %._crit_edge29.loopexit ]
  %i.0.lcssa = phi i64 [ 0, %.preheader6 ], [ %i.027.lcssa, %.._crit_edge29.loopexit_crit_edge ], [ %.lcssa108, %._crit_edge29.loopexit ]
  %48 = icmp eq i64 %i.0.lcssa, %47
  br i1 %48, label %50, label %49

; <label>:49                                      ; preds = %._crit_edge29
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 398, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:50                                      ; preds = %._crit_edge29
  %51 = call i32 @fclose(%struct._IO_FILE* nonnull %7)
  %52 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %5, i64 256, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* %fileNamePrefix) #6
  %53 = call %struct._IO_FILE* @fopen(i8* %5, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %54 = icmp eq %struct._IO_FILE* %53, null
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %50
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 406, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:56                                      ; preds = %50
  %57 = call i8* @fgets(i8* %11, i32 256, %struct._IO_FILE* nonnull %53)
  %58 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i64* nonnull %numEntry, i64* nonnull %numDimension) #6
  %59 = load i64, i64* %numEntry, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %62, label %61

; <label>:61                                      ; preds = %56
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 409, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:62                                      ; preds = %56
  %63 = load i64, i64* %numDimension, align 8
  %64 = icmp eq i64 %63, 2
  br i1 %64, label %66, label %65

; <label>:65                                      ; preds = %62
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 410, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:66                                      ; preds = %62
  %67 = call i8* @fgets(i8* %11, i32 256, %struct._IO_FILE* nonnull %53)
  %68 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64* nonnull %numEntry) #6
  %69 = load i64, i64* %numEntry, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %66
  %71 = bitcast [2 x %struct.coordinate]* %insertCoordinates to i8*
  %72 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %insertCoordinates, i64 0, i64 1
  %73 = bitcast %struct.coordinate* %72 to i8*
  %74 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %insertCoordinates, i64 0, i64 0
  %75 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 3
  %76 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 1
  br label %77

; <label>:77                                      ; preds = %.lr.ph22, %createElement.exit5
  %i.120 = phi i64 [ 0, %.lr.ph22 ], [ %118, %createElement.exit5 ]
  %78 = call i8* @fgets(i8* %11, i32 256, %struct._IO_FILE* nonnull %53)
  %79 = icmp eq i8* %78, null
  br i1 %79, label %.._crit_edge23.loopexit_crit_edge, label %80

.._crit_edge23.loopexit_crit_edge:                ; preds = %77
  %i.120.lcssa = phi i64 [ %i.120, %77 ]
  %.pre33.pre = load i64, i64* %numEntry, align 8
  br label %._crit_edge23

; <label>:80                                      ; preds = %77
  %81 = load i8, i8* %11, align 16
  %82 = icmp eq i8 %81, 35
  br i1 %82, label %createElement.exit5, label %83

; <label>:83                                      ; preds = %80
  %84 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %11, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i64* nonnull %id1, i64* nonnull %a, i64* nonnull %b) #6
  %85 = load i64, i64* %a, align 8
  %86 = icmp slt i64 %85, 0
  %87 = icmp sgt i64 %85, %18
  %or.cond = or i1 %86, %87
  br i1 %or.cond, label %88, label %89

; <label>:88                                      ; preds = %83
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 425, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:89                                      ; preds = %83
  %90 = load i64, i64* %b, align 8
  %91 = icmp slt i64 %90, 0
  %92 = icmp sgt i64 %90, %18
  %or.cond1 = or i1 %91, %92
  br i1 %or.cond1, label %93, label %94

; <label>:93                                      ; preds = %89
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 426, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:94                                      ; preds = %89
  %95 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %22, i64 %85
  %96 = bitcast %struct.coordinate* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %96, i64 16, i32 8, i1 false)
  %97 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %22, i64 %90
  %98 = bitcast %struct.coordinate* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %98, i64 16, i32 8, i1 false)
  %99 = call %struct.element* @element_alloc(%struct.coordinate* %74, i64 2) #6
  %100 = icmp eq %struct.element* %99, null
  br i1 %100, label %101, label %102

; <label>:101                                     ; preds = %94
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 329, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.createElement, i64 0, i64 0)) #7
  unreachable

; <label>:102                                     ; preds = %94
  %103 = call %struct.pair* @element_getEdge(%struct.element* nonnull %99, i64 0) #6
  %104 = load %struct.rbtree*, %struct.rbtree** %75, align 8
  %105 = bitcast %struct.pair* %103 to i8*
  %106 = call i64 @rbtree_insert(%struct.rbtree* %104, i8* %105, i8* null) #6
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %102
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 334, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.createElement, i64 0, i64 0)) #7
  unreachable

; <label>:109                                     ; preds = %102
  call void @mesh_insert(%struct.mesh* nonnull %meshPtr, %struct.element* nonnull %99, %struct.jsw_avltree* nonnull %1) #6
  %110 = call i64 @element_isBad(%struct.element* nonnull %99) #6
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %createElement.exit5, label %112

; <label>:112                                     ; preds = %109
  %113 = load %struct.queue*, %struct.queue** %76, align 8
  %114 = bitcast %struct.element* %99 to i8*
  %115 = call i64 @queue_push(%struct.queue* %113, i8* %114) #6
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %createElement.exit5

; <label>:117                                     ; preds = %112
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 341, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.createElement, i64 0, i64 0)) #7
  unreachable

createElement.exit5:                              ; preds = %112, %109, %80
  %118 = add nuw nsw i64 %i.120, 1
  %119 = load i64, i64* %numEntry, align 8
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %77, label %._crit_edge23.loopexit

._crit_edge23.loopexit:                           ; preds = %createElement.exit5
  %.lcssa106 = phi i64 [ %119, %createElement.exit5 ]
  %.lcssa105 = phi i64 [ %118, %createElement.exit5 ]
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit, %.._crit_edge23.loopexit_crit_edge, %66
  %121 = phi i64 [ %69, %66 ], [ %.pre33.pre, %.._crit_edge23.loopexit_crit_edge ], [ %.lcssa106, %._crit_edge23.loopexit ]
  %i.1.lcssa = phi i64 [ 0, %66 ], [ %i.120.lcssa, %.._crit_edge23.loopexit_crit_edge ], [ %.lcssa105, %._crit_edge23.loopexit ]
  %122 = icmp eq i64 %i.1.lcssa, %121
  br i1 %122, label %124, label %123

; <label>:123                                     ; preds = %._crit_edge23
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 431, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:124                                     ; preds = %._crit_edge23
  %125 = call i32 @fclose(%struct._IO_FILE* nonnull %53)
  %126 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %5, i64 256, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* %fileNamePrefix) #6
  %127 = call %struct._IO_FILE* @fopen(i8* %5, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %128 = icmp eq %struct._IO_FILE* %127, null
  br i1 %128, label %129, label %130

; <label>:129                                     ; preds = %124
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 440, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:130                                     ; preds = %124
  %131 = call i8* @fgets(i8* %11, i32 256, %struct._IO_FILE* nonnull %127)
  %132 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i64* nonnull %numEntry, i64* nonnull %numDimension) #6
  %133 = load i64, i64* %numDimension, align 8
  %134 = icmp eq i64 %133, 3
  br i1 %134, label %.preheader, label %144

.preheader:                                       ; preds = %130
  %135 = load i64, i64* %numEntry, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %137 = bitcast [3 x %struct.coordinate]* %insertCoordinates5 to i8*
  %138 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i64 0, i64 1
  %139 = bitcast %struct.coordinate* %138 to i8*
  %140 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i64 0, i64 2
  %141 = bitcast %struct.coordinate* %140 to i8*
  %142 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i64 0, i64 0
  %143 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 1
  br label %145

; <label>:144                                     ; preds = %130
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 443, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:145                                     ; preds = %.lr.ph, %createElement.exit
  %i.217 = phi i64 [ 0, %.lr.ph ], [ %186, %createElement.exit ]
  %146 = call i8* @fgets(i8* %11, i32 256, %struct._IO_FILE* nonnull %127)
  %147 = icmp eq i8* %146, null
  br i1 %147, label %.._crit_edge.loopexit_crit_edge, label %148

.._crit_edge.loopexit_crit_edge:                  ; preds = %145
  %i.217.lcssa = phi i64 [ %i.217, %145 ]
  %.pre34.pre = load i64, i64* %numEntry, align 8
  br label %._crit_edge

; <label>:148                                     ; preds = %145
  %149 = load i8, i8* %11, align 16
  %150 = icmp eq i8 %149, 35
  br i1 %150, label %createElement.exit, label %151

; <label>:151                                     ; preds = %148
  %152 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %11, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i64* nonnull %id2, i64* nonnull %a3, i64* nonnull %b4, i64* nonnull %c) #6
  %153 = load i64, i64* %a3, align 8
  %154 = icmp slt i64 %153, 0
  %155 = icmp sgt i64 %153, %18
  %or.cond2 = or i1 %154, %155
  br i1 %or.cond2, label %156, label %157

; <label>:156                                     ; preds = %151
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 457, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:157                                     ; preds = %151
  %158 = load i64, i64* %b4, align 8
  %159 = icmp slt i64 %158, 0
  %160 = icmp sgt i64 %158, %18
  %or.cond3 = or i1 %159, %160
  br i1 %or.cond3, label %161, label %162

; <label>:161                                     ; preds = %157
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 458, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:162                                     ; preds = %157
  %163 = load i64, i64* %c, align 8
  %164 = icmp slt i64 %163, 0
  %165 = icmp sgt i64 %163, %18
  %or.cond4 = or i1 %164, %165
  br i1 %or.cond4, label %166, label %167

; <label>:166                                     ; preds = %162
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 459, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:167                                     ; preds = %162
  %168 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %22, i64 %153
  %169 = bitcast %struct.coordinate* %168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* %169, i64 16, i32 8, i1 false)
  %170 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %22, i64 %158
  %171 = bitcast %struct.coordinate* %170 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %139, i8* %171, i64 16, i32 8, i1 false)
  %172 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %22, i64 %163
  %173 = bitcast %struct.coordinate* %172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %173, i64 16, i32 8, i1 false)
  %174 = call %struct.element* @element_alloc(%struct.coordinate* %142, i64 3) #6
  %175 = icmp eq %struct.element* %174, null
  br i1 %175, label %176, label %177

; <label>:176                                     ; preds = %167
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 329, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.createElement, i64 0, i64 0)) #7
  unreachable

; <label>:177                                     ; preds = %167
  call void @mesh_insert(%struct.mesh* %meshPtr, %struct.element* nonnull %174, %struct.jsw_avltree* nonnull %1) #6
  %178 = call i64 @element_isBad(%struct.element* nonnull %174) #6
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %createElement.exit, label %180

; <label>:180                                     ; preds = %177
  %181 = load %struct.queue*, %struct.queue** %143, align 8
  %182 = bitcast %struct.element* %174 to i8*
  %183 = call i64 @queue_push(%struct.queue* %181, i8* %182) #6
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %createElement.exit

; <label>:185                                     ; preds = %180
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 341, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.createElement, i64 0, i64 0)) #7
  unreachable

createElement.exit:                               ; preds = %180, %177, %148
  %186 = add nuw nsw i64 %i.217, 1
  %187 = load i64, i64* %numEntry, align 8
  %188 = icmp slt i64 %186, %187
  br i1 %188, label %145, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %createElement.exit
  %.lcssa98 = phi i64 [ %187, %createElement.exit ]
  %.lcssa = phi i64 [ %186, %createElement.exit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge.loopexit_crit_edge, %.preheader
  %189 = phi i64 [ %135, %.preheader ], [ %.pre34.pre, %.._crit_edge.loopexit_crit_edge ], [ %.lcssa98, %._crit_edge.loopexit ]
  %i.2.lcssa = phi i64 [ 0, %.preheader ], [ %i.217.lcssa, %.._crit_edge.loopexit_crit_edge ], [ %.lcssa, %._crit_edge.loopexit ]
  %190 = icmp eq i64 %i.2.lcssa, %189
  br i1 %190, label %192, label %191

; <label>:191                                     ; preds = %._crit_edge
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 465, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i64 0, i64 0)) #7
  unreachable

; <label>:192                                     ; preds = %._crit_edge
  %193 = add nsw i64 %189, %121
  %194 = call i32 @fclose(%struct._IO_FILE* nonnull %127)
  call void @free(i8* %21) #6
  call void @jsw_avldelete(%struct.jsw_avltree* nonnull %1) #6
  ret i64 %193
}

declare %struct.jsw_avltree* @jsw_avlnew(i64 (i8*, i8*)*) #2

declare i64 @element_mapCompareEdge(%struct.pair*, %struct.pair*) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @jsw_avldelete(%struct.jsw_avltree*) #2

; Function Attrs: nounwind uwtable
define %struct.element* @mesh_getBad(%struct.mesh* nocapture readonly %meshPtr) #0 {
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  %3 = tail call i8* @queue_pop(%struct.queue* %2) #6
  %4 = bitcast i8* %3 to %struct.element*
  ret %struct.element* %4
}

declare i8* @queue_pop(%struct.queue*) #2

; Function Attrs: nounwind uwtable
define void @mesh_shuffleBad(%struct.mesh* nocapture readonly %meshPtr, %struct.random* %randomPtr) #0 {
  %1 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 1
  %2 = load %struct.queue*, %struct.queue** %1, align 8
  tail call void @queue_shuffle(%struct.queue* %2, %struct.random* %randomPtr) #6
  ret void
}

declare void @queue_shuffle(%struct.queue*, %struct.random*) #2

; Function Attrs: nounwind uwtable
define i64 @mesh_check(%struct.mesh* nocapture readonly %meshPtr, i64 %expectedNumElement) #0 {
  %it = alloca %struct.list_node*, align 8
  %searchPair = alloca %struct.pair, align 8
  %searchPair3 = alloca %struct.pair, align 8
  %1 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %3 = tail call i32 @fflush(%struct._IO_FILE* %2)
  %4 = tail call %struct.queue* @queue_alloc(i64 -1) #6
  %5 = icmp eq %struct.queue* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 516, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i64 0, i64 0)) #7
  unreachable

; <label>:7                                       ; preds = %0
  %8 = tail call %struct.jsw_avltree* @jsw_avlnew(i64 (i8*, i8*)* nonnull bitcast (i64 (%struct.pair*, %struct.pair*)* @element_mapCompare to i64 (i8*, i8*)*)) #6
  %9 = icmp eq %struct.jsw_avltree* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 518, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i64 0, i64 0)) #7
  unreachable

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.mesh, %struct.mesh* %meshPtr, i64 0, i32 0
  %13 = load %struct.element*, %struct.element** %12, align 8
  %14 = icmp eq %struct.element* %13, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %11
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 523, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i64 0, i64 0)) #7
  unreachable

; <label>:16                                      ; preds = %11
  %17 = bitcast %struct.element* %13 to i8*
  %18 = tail call i64 @queue_push(%struct.queue* nonnull %4, i8* %17) #6
  %19 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair, i64 0, i32 0
  %20 = bitcast %struct.pair* %searchPair to i8*
  %21 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair3, i64 0, i32 0
  %22 = bitcast %struct.pair* %searchPair3 to i8*
  br label %.outer

.outer:                                           ; preds = %._crit_edge, %16
  %numElement.0.ph = phi i64 [ %51, %._crit_edge ], [ 0, %16 ]
  %numBadTriangle.0.ph = phi i64 [ %.numBadTriangle.0, %._crit_edge ], [ 0, %16 ]
  br label %23

; <label>:23                                      ; preds = %.outer, %26
  %24 = call i64 @queue_isEmpty(%struct.queue* nonnull %4) #6
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %52

; <label>:26                                      ; preds = %23
  %27 = call i8* @queue_pop(%struct.queue* nonnull %4) #6
  store i8* %27, i8** %19, align 8
  %28 = call i8* @jsw_avlfind(%struct.jsw_avltree* nonnull %8, i8* %20) #6
  %not. = icmp eq i8* %28, null
  br i1 %not., label %29, label %23

; <label>:29                                      ; preds = %26
  %.lcssa = phi i8* [ %27, %26 ]
  %30 = bitcast i8* %.lcssa to %struct.element*
  %31 = call %struct.pair* @pair_alloc(i8* %.lcssa, i8* null) #6
  %32 = icmp eq %struct.pair* %31, null
  br i1 %32, label %.critedge, label %33

; <label>:33                                      ; preds = %29
  %34 = bitcast %struct.pair* %31 to i8*
  %35 = call i64 @jsw_avlinsert(%struct.jsw_avltree* nonnull %8, i8* %34) #6
  %not.5 = icmp eq i64 %35, 0
  br i1 %not.5, label %.critedge, label %36

.critedge:                                        ; preds = %33, %29
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 537, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i64 0, i64 0)) #7
  unreachable

; <label>:36                                      ; preds = %33
  %37 = call i64 @element_checkAngles(%struct.element* %30) #6
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i64
  %.numBadTriangle.0 = add nsw i64 %39, %numBadTriangle.0.ph
  %40 = call %struct.list* @element_getNeighborListPtr(%struct.element* %30) #6
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %40) #6
  %41 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %40) #8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %36
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %43 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %40) #6
  store i8* %43, i8** %21, align 8
  %44 = call i8* @jsw_avlfind(%struct.jsw_avltree* nonnull %8, i8* %22) #6
  %not.6 = icmp eq i8* %44, null
  br i1 %not.6, label %45, label %.backedge

; <label>:45                                      ; preds = %.lr.ph
  %46 = call i64 @queue_push(%struct.queue* nonnull %4, i8* %43) #6
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %50, label %.backedge

.backedge:                                        ; preds = %45, %.lr.ph
  %48 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %40) #8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %._crit_edge.loopexit, label %.lr.ph

; <label>:50                                      ; preds = %45
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 554, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i64 0, i64 0)) #7
  unreachable

._crit_edge.loopexit:                             ; preds = %.backedge
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %36
  %51 = add nuw nsw i64 %numElement.0.ph, 1
  br label %.outer

; <label>:52                                      ; preds = %23
  %numBadTriangle.0.ph.lcssa = phi i64 [ %numBadTriangle.0.ph, %23 ]
  %numElement.0.ph.lcssa = phi i64 [ %numElement.0.ph, %23 ]
  %53 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i64 %numElement.0.ph.lcssa)
  %54 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i64 %numBadTriangle.0.ph.lcssa)
  call void @queue_free(%struct.queue* nonnull %4) #6
  call void @jsw_avldelete(%struct.jsw_avltree* nonnull %8) #6
  %55 = icmp sgt i64 %numBadTriangle.0.ph.lcssa, 0
  %56 = icmp ne i64 %numElement.0.ph.lcssa, %expectedNumElement
  %.4 = or i1 %56, %55
  %57 = zext i1 %.4 to i64
  %58 = xor i64 %57, 1
  ret i64 %58
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

declare i64 @element_mapCompare(%struct.pair*, %struct.pair*) #2

declare i64 @queue_push(%struct.queue*, i8*) #2

declare i64 @queue_isEmpty(%struct.queue*) #2

declare i64 @element_checkAngles(%struct.element*) #2

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

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
