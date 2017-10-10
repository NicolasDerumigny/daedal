; ModuleID = 'mesh.c'
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
define %struct.mesh* @mesh_alloc() #0 {
  %meshPtr = alloca %struct.mesh*, align 8
  %1 = call noalias i8* @malloc(i64 32) #6
  %2 = bitcast i8* %1 to %struct.mesh*
  store %struct.mesh* %2, %struct.mesh** %meshPtr, align 8
  %3 = load %struct.mesh*, %struct.mesh** %meshPtr, align 8
  %4 = icmp ne %struct.mesh* %3, null
  br i1 %4, label %5, label %32

; <label>:5                                       ; preds = %0
  %6 = load %struct.mesh*, %struct.mesh** %meshPtr, align 8
  %7 = getelementptr inbounds %struct.mesh, %struct.mesh* %6, i32 0, i32 0
  store %struct.element* null, %struct.element** %7, align 8
  %8 = call %struct.queue* @queue_alloc(i64 -1)
  %9 = load %struct.mesh*, %struct.mesh** %meshPtr, align 8
  %10 = getelementptr inbounds %struct.mesh, %struct.mesh* %9, i32 0, i32 1
  store %struct.queue* %8, %struct.queue** %10, align 8
  %11 = load %struct.mesh*, %struct.mesh** %meshPtr, align 8
  %12 = getelementptr inbounds %struct.mesh, %struct.mesh* %11, i32 0, i32 1
  %13 = load %struct.queue*, %struct.queue** %12, align 8
  %14 = icmp ne %struct.queue* %13, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %5
  br label %18

; <label>:16                                      ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.mesh_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = load %struct.mesh*, %struct.mesh** %meshPtr, align 8
  %20 = getelementptr inbounds %struct.mesh, %struct.mesh* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = call %struct.rbtree* @rbtree_alloc(i64 (i8*, i8*)* @element_listCompareEdge)
  %22 = load %struct.mesh*, %struct.mesh** %meshPtr, align 8
  %23 = getelementptr inbounds %struct.mesh, %struct.mesh* %22, i32 0, i32 3
  store %struct.rbtree* %21, %struct.rbtree** %23, align 8
  %24 = load %struct.mesh*, %struct.mesh** %meshPtr, align 8
  %25 = getelementptr inbounds %struct.mesh, %struct.mesh* %24, i32 0, i32 3
  %26 = load %struct.rbtree*, %struct.rbtree** %25, align 8
  %27 = icmp ne %struct.rbtree* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %18
  br label %31

; <label>:29                                      ; preds = %18
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.mesh_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %31

; <label>:31                                      ; preds = %30, %28
  br label %32

; <label>:32                                      ; preds = %31, %0
  %33 = load %struct.mesh*, %struct.mesh** %meshPtr, align 8
  ret %struct.mesh* %33
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
  %1 = alloca %struct.mesh*, align 8
  store %struct.mesh* %meshPtr, %struct.mesh** %1, align 8
  %2 = load %struct.mesh*, %struct.mesh** %1, align 8
  %3 = getelementptr inbounds %struct.mesh, %struct.mesh* %2, i32 0, i32 1
  %4 = load %struct.queue*, %struct.queue** %3, align 8
  call void @queue_free(%struct.queue* %4)
  %5 = load %struct.mesh*, %struct.mesh** %1, align 8
  %6 = getelementptr inbounds %struct.mesh, %struct.mesh* %5, i32 0, i32 3
  %7 = load %struct.rbtree*, %struct.rbtree** %6, align 8
  call void @rbtree_free(%struct.rbtree* %7)
  %8 = load %struct.mesh*, %struct.mesh** %1, align 8
  %9 = bitcast %struct.mesh* %8 to i8*
  call void @free(i8* %9) #6
  ret void
}

declare void @queue_free(%struct.queue*) #2

declare void @rbtree_free(%struct.rbtree*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @mesh_insert(%struct.mesh* %meshPtr, %struct.element* %elementPtr, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %1 = alloca %struct.mesh*, align 8
  %2 = alloca %struct.element*, align 8
  %3 = alloca %struct.jsw_avltree*, align 8
  %i = alloca i64, align 8
  %numEdge = alloca i64, align 8
  %edgePtr = alloca %struct.pair*, align 8
  %success = alloca i64, align 8
  %searchPair = alloca %struct.pair, align 8
  %4 = alloca i64, align 8
  %isSuccess = alloca i64, align 8
  %success1 = alloca i64, align 8
  %insertPtr = alloca %struct.pair*, align 8
  %5 = alloca i64, align 8
  %isSuccess2 = alloca i64, align 8
  %sharerPtr = alloca %struct.element*, align 8
  %dataPtr = alloca i8*, align 8
  %searchPair3 = alloca %struct.pair, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %6 = alloca i8*, align 8
  %success4 = alloca i64, align 8
  %searchPair5 = alloca %struct.pair, align 8
  %pairPtr6 = alloca %struct.pair*, align 8
  %7 = alloca i64, align 8
  %success7 = alloca i64, align 8
  %insertPtr8 = alloca %struct.pair*, align 8
  %8 = alloca i64, align 8
  %encroachedPtr = alloca %struct.pair*, align 8
  store %struct.mesh* %meshPtr, %struct.mesh** %1, align 8
  store %struct.element* %elementPtr, %struct.element** %2, align 8
  store %struct.jsw_avltree* %edgeMapPtr, %struct.jsw_avltree** %3, align 8
  %9 = load %struct.mesh*, %struct.mesh** %1, align 8
  %10 = getelementptr inbounds %struct.mesh, %struct.mesh* %9, i32 0, i32 0
  %11 = load %struct.element*, %struct.element** %10, align 8
  %12 = icmp ne %struct.element* %11, null
  br i1 %12, label %17, label %13

; <label>:13                                      ; preds = %0
  %14 = load %struct.element*, %struct.element** %2, align 8
  %15 = load %struct.mesh*, %struct.mesh** %1, align 8
  %16 = getelementptr inbounds %struct.mesh, %struct.mesh* %15, i32 0, i32 0
  store %struct.element* %14, %struct.element** %16, align 8
  br label %17

; <label>:17                                      ; preds = %13, %0
  %18 = load %struct.element*, %struct.element** %2, align 8
  %19 = call i64 @element_getNumEdge(%struct.element* %18)
  store i64 %19, i64* %numEdge, align 8
  store i64 0, i64* %i, align 8
  br label %20

; <label>:20                                      ; preds = %138, %17
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %numEdge, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %141

; <label>:24                                      ; preds = %20
  %25 = load %struct.element*, %struct.element** %2, align 8
  %26 = load i64, i64* %i, align 8
  %27 = call %struct.pair* @element_getEdge(%struct.element* %25, i64 %26)
  store %struct.pair* %27, %struct.pair** %edgePtr, align 8
  store i64 0, i64* %success, align 8
  %28 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %29 = bitcast %struct.pair* %28 to i8*
  %30 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = load %struct.jsw_avltree*, %struct.jsw_avltree** %3, align 8
  %32 = bitcast %struct.pair* %searchPair to i8*
  %33 = call i8* @jsw_avlfind(%struct.jsw_avltree* %31, i8* %32)
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %24
  store i64 1, i64* %success, align 8
  br label %36

; <label>:36                                      ; preds = %35, %24
  %37 = load i64, i64* %success, align 8
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %65, label %40

; <label>:40                                      ; preds = %36
  store i64 0, i64* %success1, align 8
  %41 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %42 = bitcast %struct.pair* %41 to i8*
  %43 = load %struct.element*, %struct.element** %2, align 8
  %44 = bitcast %struct.element* %43 to i8*
  %45 = call %struct.pair* @pair_alloc(i8* %42, i8* %44)
  store %struct.pair* %45, %struct.pair** %insertPtr, align 8
  %46 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %47 = icmp ne %struct.pair* %46, null
  br i1 %47, label %48, label %56

; <label>:48                                      ; preds = %40
  %49 = load %struct.jsw_avltree*, %struct.jsw_avltree** %3, align 8
  %50 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %51 = bitcast %struct.pair* %50 to i8*
  %52 = call i64 @jsw_avlinsert(%struct.jsw_avltree* %49, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %48
  store i64 1, i64* %success1, align 8
  br label %55

; <label>:55                                      ; preds = %54, %48
  br label %56

; <label>:56                                      ; preds = %55, %40
  %57 = load i64, i64* %success1, align 8
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  store i64 %58, i64* %isSuccess, align 8
  %59 = load i64, i64* %isSuccess, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %56
  br label %64

; <label>:62                                      ; preds = %56
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 161, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %64

; <label>:64                                      ; preds = %63, %61
  br label %137

; <label>:65                                      ; preds = %36
  store i8* null, i8** %dataPtr, align 8
  %66 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %67 = bitcast %struct.pair* %66 to i8*
  %68 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair3, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  %69 = load %struct.jsw_avltree*, %struct.jsw_avltree** %3, align 8
  %70 = bitcast %struct.pair* %searchPair3 to i8*
  %71 = call i8* @jsw_avlfind(%struct.jsw_avltree* %69, i8* %70)
  %72 = bitcast i8* %71 to %struct.pair*
  store %struct.pair* %72, %struct.pair** %pairPtr, align 8
  %73 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %74 = icmp ne %struct.pair* %73, null
  br i1 %74, label %75, label %79

; <label>:75                                      ; preds = %65
  %76 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %77 = getelementptr inbounds %struct.pair, %struct.pair* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %dataPtr, align 8
  br label %79

; <label>:79                                      ; preds = %75, %65
  %80 = load i8*, i8** %dataPtr, align 8
  store i8* %80, i8** %6, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = bitcast i8* %81 to %struct.element*
  store %struct.element* %82, %struct.element** %sharerPtr, align 8
  %83 = load %struct.element*, %struct.element** %sharerPtr, align 8
  %84 = icmp ne %struct.element* %83, null
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %79
  br label %88

; <label>:86                                      ; preds = %79
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 168, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %88

; <label>:88                                      ; preds = %87, %85
  %89 = load %struct.element*, %struct.element** %2, align 8
  %90 = load %struct.element*, %struct.element** %sharerPtr, align 8
  call void @element_addNeighbor(%struct.element* %89, %struct.element* %90)
  %91 = load %struct.element*, %struct.element** %sharerPtr, align 8
  %92 = load %struct.element*, %struct.element** %2, align 8
  call void @element_addNeighbor(%struct.element* %91, %struct.element* %92)
  store i64 0, i64* %success4, align 8
  %93 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %94 = bitcast %struct.pair* %93 to i8*
  %95 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair5, i32 0, i32 0
  store i8* %94, i8** %95, align 8
  %96 = load %struct.jsw_avltree*, %struct.jsw_avltree** %3, align 8
  %97 = bitcast %struct.pair* %searchPair5 to i8*
  %98 = call i8* @jsw_avlfind(%struct.jsw_avltree* %96, i8* %97)
  %99 = bitcast i8* %98 to %struct.pair*
  store %struct.pair* %99, %struct.pair** %pairPtr6, align 8
  %100 = load %struct.jsw_avltree*, %struct.jsw_avltree** %3, align 8
  %101 = bitcast %struct.pair* %searchPair5 to i8*
  %102 = call i64 @jsw_avlerase(%struct.jsw_avltree* %100, i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

; <label>:104                                     ; preds = %88
  %105 = load %struct.pair*, %struct.pair** %pairPtr6, align 8
  call void @pair_free(%struct.pair* %105)
  store i64 1, i64* %success4, align 8
  br label %106

; <label>:106                                     ; preds = %104, %88
  %107 = load i64, i64* %success4, align 8
  store i64 %107, i64* %7, align 8
  %108 = load i64, i64* %7, align 8
  store i64 %108, i64* %isSuccess2, align 8
  %109 = load i64, i64* %isSuccess2, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %106
  br label %114

; <label>:112                                     ; preds = %106
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 172, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %114

; <label>:114                                     ; preds = %113, %111
  store i64 0, i64* %success7, align 8
  %115 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %116 = bitcast %struct.pair* %115 to i8*
  %117 = call %struct.pair* @pair_alloc(i8* %116, i8* null)
  store %struct.pair* %117, %struct.pair** %insertPtr8, align 8
  %118 = load %struct.pair*, %struct.pair** %insertPtr8, align 8
  %119 = icmp ne %struct.pair* %118, null
  br i1 %119, label %120, label %128

; <label>:120                                     ; preds = %114
  %121 = load %struct.jsw_avltree*, %struct.jsw_avltree** %3, align 8
  %122 = load %struct.pair*, %struct.pair** %insertPtr8, align 8
  %123 = bitcast %struct.pair* %122 to i8*
  %124 = call i64 @jsw_avlinsert(%struct.jsw_avltree* %121, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

; <label>:126                                     ; preds = %120
  store i64 1, i64* %success7, align 8
  br label %127

; <label>:127                                     ; preds = %126, %120
  br label %128

; <label>:128                                     ; preds = %127, %114
  %129 = load i64, i64* %success7, align 8
  store i64 %129, i64* %8, align 8
  %130 = load i64, i64* %8, align 8
  store i64 %130, i64* %isSuccess2, align 8
  %131 = load i64, i64* %isSuccess2, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

; <label>:133                                     ; preds = %128
  br label %136

; <label>:134                                     ; preds = %128
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 176, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.mesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %136

; <label>:136                                     ; preds = %135, %133
  br label %137

; <label>:137                                     ; preds = %136, %64
  br label %138

; <label>:138                                     ; preds = %137
  %139 = load i64, i64* %i, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %i, align 8
  br label %20

; <label>:141                                     ; preds = %20
  %142 = load %struct.element*, %struct.element** %2, align 8
  %143 = call %struct.pair* @element_getEncroachedPtr(%struct.element* %142)
  store %struct.pair* %143, %struct.pair** %encroachedPtr, align 8
  %144 = load %struct.pair*, %struct.pair** %encroachedPtr, align 8
  %145 = icmp ne %struct.pair* %144, null
  br i1 %145, label %146, label %157

; <label>:146                                     ; preds = %141
  %147 = load %struct.mesh*, %struct.mesh** %1, align 8
  %148 = getelementptr inbounds %struct.mesh, %struct.mesh* %147, i32 0, i32 3
  %149 = load %struct.rbtree*, %struct.rbtree** %148, align 8
  %150 = load %struct.pair*, %struct.pair** %encroachedPtr, align 8
  %151 = bitcast %struct.pair* %150 to i8*
  %152 = call i64 @rbtree_contains(%struct.rbtree* %149, i8* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %156, label %154

; <label>:154                                     ; preds = %146
  %155 = load %struct.element*, %struct.element** %2, align 8
  call void @element_clearEncroached(%struct.element* %155)
  br label %156

; <label>:156                                     ; preds = %154, %146
  br label %157

; <label>:157                                     ; preds = %156, %141
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
  %1 = alloca %struct.mesh*, align 8
  %2 = alloca %struct.element*, align 8
  %3 = alloca %struct.jsw_avltree*, align 8
  %4 = alloca %struct.element*, align 8
  %i = alloca i64, align 8
  %numEdge = alloca i64, align 8
  %edgePtr = alloca %struct.pair*, align 8
  %success = alloca i64, align 8
  %searchPair = alloca %struct.pair, align 8
  %5 = alloca i64, align 8
  %isSuccess = alloca i64, align 8
  %success1 = alloca i64, align 8
  %insertPtr = alloca %struct.pair*, align 8
  %6 = alloca i64, align 8
  %isSuccess2 = alloca i64, align 8
  %sharerPtr = alloca %struct.element*, align 8
  %dataPtr = alloca i8*, align 8
  %searchPair3 = alloca %struct.pair, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %7 = alloca i8*, align 8
  %success4 = alloca i64, align 8
  %searchPair5 = alloca %struct.pair, align 8
  %pairPtr6 = alloca %struct.pair*, align 8
  %8 = alloca i64, align 8
  %success7 = alloca i64, align 8
  %insertPtr8 = alloca %struct.pair*, align 8
  %9 = alloca i64, align 8
  %encroachedPtr = alloca %struct.pair*, align 8
  store %struct.mesh* %meshPtr, %struct.mesh** %1, align 8
  store %struct.element* %elementPtr, %struct.element** %2, align 8
  store %struct.jsw_avltree* %edgeMapPtr, %struct.jsw_avltree** %3, align 8
  %10 = load %struct.mesh*, %struct.mesh** %1, align 8
  %11 = getelementptr inbounds %struct.mesh, %struct.mesh* %10, i32 0, i32 0
  %12 = load %struct.element*, %struct.element** %11, align 8
  %13 = icmp ne %struct.element* %12, null
  br i1 %13, label %22, label %14

; <label>:14                                      ; preds = %0
  %15 = load %struct.element*, %struct.element** %2, align 8
  %16 = load %struct.mesh*, %struct.mesh** %1, align 8
  %17 = getelementptr inbounds %struct.mesh, %struct.mesh* %16, i32 0, i32 0
  store %struct.element* %15, %struct.element** %17, align 8
  %18 = load %struct.mesh*, %struct.mesh** %1, align 8
  %19 = getelementptr inbounds %struct.mesh, %struct.mesh* %18, i32 0, i32 0
  %20 = load %struct.element*, %struct.element** %19, align 8
  store %struct.element* %20, %struct.element** %4, align 8
  %21 = load %struct.element*, %struct.element** %4, align 8
  br label %22

; <label>:22                                      ; preds = %14, %0
  %23 = load %struct.element*, %struct.element** %2, align 8
  %24 = call i64 @element_getNumEdge(%struct.element* %23)
  store i64 %24, i64* %numEdge, align 8
  store i64 0, i64* %i, align 8
  br label %25

; <label>:25                                      ; preds = %143, %22
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %numEdge, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %146

; <label>:29                                      ; preds = %25
  %30 = load %struct.element*, %struct.element** %2, align 8
  %31 = load i64, i64* %i, align 8
  %32 = call %struct.pair* @element_getEdge(%struct.element* %30, i64 %31)
  store %struct.pair* %32, %struct.pair** %edgePtr, align 8
  store i64 0, i64* %success, align 8
  %33 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %34 = bitcast %struct.pair* %33 to i8*
  %35 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load %struct.jsw_avltree*, %struct.jsw_avltree** %3, align 8
  %37 = bitcast %struct.pair* %searchPair to i8*
  %38 = call i8* @jsw_avlfind(%struct.jsw_avltree* %36, i8* %37)
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %29
  store i64 1, i64* %success, align 8
  br label %41

; <label>:41                                      ; preds = %40, %29
  %42 = load i64, i64* %success, align 8
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %70, label %45

; <label>:45                                      ; preds = %41
  store i64 0, i64* %success1, align 8
  %46 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %47 = bitcast %struct.pair* %46 to i8*
  %48 = load %struct.element*, %struct.element** %2, align 8
  %49 = bitcast %struct.element* %48 to i8*
  %50 = call %struct.pair* @Ppair_alloc(i8* %47, i8* %49)
  store %struct.pair* %50, %struct.pair** %insertPtr, align 8
  %51 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %52 = icmp ne %struct.pair* %51, null
  br i1 %52, label %53, label %61

; <label>:53                                      ; preds = %45
  %54 = load %struct.jsw_avltree*, %struct.jsw_avltree** %3, align 8
  %55 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %56 = bitcast %struct.pair* %55 to i8*
  %57 = call i64 @Pjsw_avlinsert(%struct.jsw_avltree* %54, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %53
  store i64 1, i64* %success1, align 8
  br label %60

; <label>:60                                      ; preds = %59, %53
  br label %61

; <label>:61                                      ; preds = %60, %45
  %62 = load i64, i64* %success1, align 8
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %isSuccess, align 8
  %64 = load i64, i64* %isSuccess, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

; <label>:66                                      ; preds = %61
  br label %69

; <label>:67                                      ; preds = %61
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 224, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %69

; <label>:69                                      ; preds = %68, %66
  br label %142

; <label>:70                                      ; preds = %41
  store i8* null, i8** %dataPtr, align 8
  %71 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %72 = bitcast %struct.pair* %71 to i8*
  %73 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair3, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  %74 = load %struct.jsw_avltree*, %struct.jsw_avltree** %3, align 8
  %75 = bitcast %struct.pair* %searchPair3 to i8*
  %76 = call i8* @jsw_avlfind(%struct.jsw_avltree* %74, i8* %75)
  %77 = bitcast i8* %76 to %struct.pair*
  store %struct.pair* %77, %struct.pair** %pairPtr, align 8
  %78 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %79 = icmp ne %struct.pair* %78, null
  br i1 %79, label %80, label %84

; <label>:80                                      ; preds = %70
  %81 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %82 = getelementptr inbounds %struct.pair, %struct.pair* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %dataPtr, align 8
  br label %84

; <label>:84                                      ; preds = %80, %70
  %85 = load i8*, i8** %dataPtr, align 8
  store i8* %85, i8** %7, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = bitcast i8* %86 to %struct.element*
  store %struct.element* %87, %struct.element** %sharerPtr, align 8
  %88 = load %struct.element*, %struct.element** %sharerPtr, align 8
  %89 = icmp ne %struct.element* %88, null
  br i1 %89, label %90, label %91

; <label>:90                                      ; preds = %84
  br label %93

; <label>:91                                      ; preds = %84
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 231, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %93

; <label>:93                                      ; preds = %92, %90
  %94 = load %struct.element*, %struct.element** %2, align 8
  %95 = load %struct.element*, %struct.element** %sharerPtr, align 8
  call void @TMelement_addNeighbor(%struct.element* %94, %struct.element* %95)
  %96 = load %struct.element*, %struct.element** %sharerPtr, align 8
  %97 = load %struct.element*, %struct.element** %2, align 8
  call void @TMelement_addNeighbor(%struct.element* %96, %struct.element* %97)
  store i64 0, i64* %success4, align 8
  %98 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %99 = bitcast %struct.pair* %98 to i8*
  %100 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair5, i32 0, i32 0
  store i8* %99, i8** %100, align 8
  %101 = load %struct.jsw_avltree*, %struct.jsw_avltree** %3, align 8
  %102 = bitcast %struct.pair* %searchPair5 to i8*
  %103 = call i8* @jsw_avlfind(%struct.jsw_avltree* %101, i8* %102)
  %104 = bitcast i8* %103 to %struct.pair*
  store %struct.pair* %104, %struct.pair** %pairPtr6, align 8
  %105 = load %struct.jsw_avltree*, %struct.jsw_avltree** %3, align 8
  %106 = bitcast %struct.pair* %searchPair5 to i8*
  %107 = call i64 @Pjsw_avlerase(%struct.jsw_avltree* %105, i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

; <label>:109                                     ; preds = %93
  %110 = load %struct.pair*, %struct.pair** %pairPtr6, align 8
  call void @Ppair_free(%struct.pair* %110)
  store i64 1, i64* %success4, align 8
  br label %111

; <label>:111                                     ; preds = %109, %93
  %112 = load i64, i64* %success4, align 8
  store i64 %112, i64* %8, align 8
  %113 = load i64, i64* %8, align 8
  store i64 %113, i64* %isSuccess2, align 8
  %114 = load i64, i64* %isSuccess2, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

; <label>:116                                     ; preds = %111
  br label %119

; <label>:117                                     ; preds = %111
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 235, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %119

; <label>:119                                     ; preds = %118, %116
  store i64 0, i64* %success7, align 8
  %120 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %121 = bitcast %struct.pair* %120 to i8*
  %122 = call %struct.pair* @Ppair_alloc(i8* %121, i8* null)
  store %struct.pair* %122, %struct.pair** %insertPtr8, align 8
  %123 = load %struct.pair*, %struct.pair** %insertPtr8, align 8
  %124 = icmp ne %struct.pair* %123, null
  br i1 %124, label %125, label %133

; <label>:125                                     ; preds = %119
  %126 = load %struct.jsw_avltree*, %struct.jsw_avltree** %3, align 8
  %127 = load %struct.pair*, %struct.pair** %insertPtr8, align 8
  %128 = bitcast %struct.pair* %127 to i8*
  %129 = call i64 @Pjsw_avlinsert(%struct.jsw_avltree* %126, i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

; <label>:131                                     ; preds = %125
  store i64 1, i64* %success7, align 8
  br label %132

; <label>:132                                     ; preds = %131, %125
  br label %133

; <label>:133                                     ; preds = %132, %119
  %134 = load i64, i64* %success7, align 8
  store i64 %134, i64* %9, align 8
  %135 = load i64, i64* %9, align 8
  store i64 %135, i64* %isSuccess2, align 8
  %136 = load i64, i64* %isSuccess2, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

; <label>:138                                     ; preds = %133
  br label %141

; <label>:139                                     ; preds = %133
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.TMmesh_insert, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %141

; <label>:141                                     ; preds = %140, %138
  br label %142

; <label>:142                                     ; preds = %141, %69
  br label %143

; <label>:143                                     ; preds = %142
  %144 = load i64, i64* %i, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %i, align 8
  br label %25, !llvm.loop !1

; <label>:146                                     ; preds = %25
  %147 = load %struct.element*, %struct.element** %2, align 8
  %148 = call %struct.pair* @element_getEncroachedPtr(%struct.element* %147)
  store %struct.pair* %148, %struct.pair** %encroachedPtr, align 8
  %149 = load %struct.pair*, %struct.pair** %encroachedPtr, align 8
  %150 = icmp ne %struct.pair* %149, null
  br i1 %150, label %151, label %162

; <label>:151                                     ; preds = %146
  %152 = load %struct.mesh*, %struct.mesh** %1, align 8
  %153 = getelementptr inbounds %struct.mesh, %struct.mesh* %152, i32 0, i32 3
  %154 = load %struct.rbtree*, %struct.rbtree** %153, align 8
  %155 = load %struct.pair*, %struct.pair** %encroachedPtr, align 8
  %156 = bitcast %struct.pair* %155 to i8*
  %157 = call i64 @TMrbtree_contains(%struct.rbtree* %154, i8* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %161, label %159

; <label>:159                                     ; preds = %151
  %160 = load %struct.element*, %struct.element** %2, align 8
  call void @element_clearEncroached(%struct.element* %160)
  br label %161

; <label>:161                                     ; preds = %159, %151
  br label %162

; <label>:162                                     ; preds = %161, %146
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
  %1 = alloca %struct.mesh*, align 8
  %2 = alloca %struct.element*, align 8
  %3 = alloca %struct.element*, align 8
  %it = alloca %struct.list_node*, align 8
  %neighborListPtr = alloca %struct.list*, align 8
  %neighborPtr = alloca %struct.element*, align 8
  %neighborNeighborListPtr = alloca %struct.list*, align 8
  %status = alloca i64, align 8
  store %struct.mesh* %meshPtr, %struct.mesh** %1, align 8
  store %struct.element* %elementPtr, %struct.element** %2, align 8
  %4 = load %struct.element*, %struct.element** %2, align 8
  %5 = call i64 @TMelement_isGarbage(%struct.element* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 264, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.TMmesh_remove, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = load %struct.mesh*, %struct.mesh** %1, align 8
  %12 = getelementptr inbounds %struct.mesh, %struct.mesh* %11, i32 0, i32 0
  %13 = load %struct.element*, %struct.element** %12, align 8
  %14 = load %struct.element*, %struct.element** %2, align 8
  %15 = icmp eq %struct.element* %13, %14
  br i1 %15, label %16, label %23

; <label>:16                                      ; preds = %10
  %17 = load %struct.mesh*, %struct.mesh** %1, align 8
  %18 = getelementptr inbounds %struct.mesh, %struct.mesh* %17, i32 0, i32 0
  store %struct.element* null, %struct.element** %18, align 8
  %19 = load %struct.mesh*, %struct.mesh** %1, align 8
  %20 = getelementptr inbounds %struct.mesh, %struct.mesh* %19, i32 0, i32 0
  %21 = load %struct.element*, %struct.element** %20, align 8
  store %struct.element* %21, %struct.element** %3, align 8
  %22 = load %struct.element*, %struct.element** %3, align 8
  br label %23

; <label>:23                                      ; preds = %16, %10
  %24 = load %struct.element*, %struct.element** %2, align 8
  %25 = call %struct.list* @element_getNeighborListPtr(%struct.element* %24)
  store %struct.list* %25, %struct.list** %neighborListPtr, align 8
  %26 = load %struct.list*, %struct.list** %neighborListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %26)
  br label %27

; <label>:27                                      ; preds = %46, %23
  %28 = load %struct.list*, %struct.list** %neighborListPtr, align 8
  %29 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %28) #8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

; <label>:31                                      ; preds = %27
  %32 = load %struct.list*, %struct.list** %neighborListPtr, align 8
  %33 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %32)
  %34 = bitcast i8* %33 to %struct.element*
  store %struct.element* %34, %struct.element** %neighborPtr, align 8
  %35 = load %struct.element*, %struct.element** %neighborPtr, align 8
  %36 = call %struct.list* @element_getNeighborListPtr(%struct.element* %35)
  store %struct.list* %36, %struct.list** %neighborNeighborListPtr, align 8
  %37 = load %struct.list*, %struct.list** %neighborNeighborListPtr, align 8
  %38 = load %struct.element*, %struct.element** %2, align 8
  %39 = bitcast %struct.element* %38 to i8*
  %40 = call i64 @TMlist_remove(%struct.list* %37, i8* %39)
  store i64 %40, i64* %status, align 8
  %41 = load i64, i64* %status, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %31
  br label %46

; <label>:44                                      ; preds = %31
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 285, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.TMmesh_remove, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %46

; <label>:46                                      ; preds = %45, %43
  br label %27

; <label>:47                                      ; preds = %27
  %48 = load %struct.element*, %struct.element** %2, align 8
  call void @TMelement_setIsGarbage(%struct.element* %48, i64 1)
  %49 = load %struct.element*, %struct.element** %2, align 8
  %50 = call i64 @TMelement_isReferenced(%struct.element* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

; <label>:52                                      ; preds = %47
  br label %53

; <label>:53                                      ; preds = %52, %47
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
  %1 = alloca %struct.mesh*, align 8
  %2 = alloca %struct.pair*, align 8
  store %struct.mesh* %meshPtr, %struct.mesh** %1, align 8
  store %struct.pair* %boundaryPtr, %struct.pair** %2, align 8
  %3 = load %struct.mesh*, %struct.mesh** %1, align 8
  %4 = getelementptr inbounds %struct.mesh, %struct.mesh* %3, i32 0, i32 3
  %5 = load %struct.rbtree*, %struct.rbtree** %4, align 8
  %6 = load %struct.pair*, %struct.pair** %2, align 8
  %7 = bitcast %struct.pair* %6 to i8*
  %8 = call i64 @TMrbtree_insert(%struct.rbtree* %5, i8* %7, i8* null)
  ret i64 %8
}

declare i64 @TMrbtree_insert(%struct.rbtree*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @TMmesh_removeBoundary(%struct.mesh* %meshPtr, %struct.pair* %boundaryPtr) #0 {
  %1 = alloca %struct.mesh*, align 8
  %2 = alloca %struct.pair*, align 8
  store %struct.mesh* %meshPtr, %struct.mesh** %1, align 8
  store %struct.pair* %boundaryPtr, %struct.pair** %2, align 8
  %3 = load %struct.mesh*, %struct.mesh** %1, align 8
  %4 = getelementptr inbounds %struct.mesh, %struct.mesh* %3, i32 0, i32 3
  %5 = load %struct.rbtree*, %struct.rbtree** %4, align 8
  %6 = load %struct.pair*, %struct.pair** %2, align 8
  %7 = bitcast %struct.pair* %6 to i8*
  %8 = call i64 @TMrbtree_delete(%struct.rbtree* %5, i8* %7)
  ret i64 %8
}

declare i64 @TMrbtree_delete(%struct.rbtree*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @mesh_read(%struct.mesh* %meshPtr, i8* %fileNamePrefix) #0 {
  %1 = alloca %struct.mesh*, align 8
  %2 = alloca i8*, align 8
  %inputFile = alloca %struct._IO_FILE*, align 8
  %coordinates = alloca %struct.coordinate*, align 8
  %fileName = alloca [256 x i8], align 16
  %fileNameSize = alloca i64, align 8
  %inputBuff = alloca [256 x i8], align 16
  %inputBuffSize = alloca i64, align 8
  %numEntry = alloca i64, align 8
  %numDimension = alloca i64, align 8
  %numCoordinate = alloca i64, align 8
  %i = alloca i64, align 8
  %numElement = alloca i64, align 8
  %edgeMapPtr = alloca %struct.jsw_avltree*, align 8
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
  store %struct.mesh* %meshPtr, %struct.mesh** %1, align 8
  store i8* %fileNamePrefix, i8** %2, align 8
  store i64 256, i64* %fileNameSize, align 8
  store i64 256, i64* %inputBuffSize, align 8
  store i64 0, i64* %numElement, align 8
  %3 = call %struct.jsw_avltree* @jsw_avlnew(i64 (i8*, i8*)* bitcast (i64 (%struct.pair*, %struct.pair*)* @element_mapCompareEdge to i64 (i8*, i8*)*))
  store %struct.jsw_avltree* %3, %struct.jsw_avltree** %edgeMapPtr, align 8
  %4 = load %struct.jsw_avltree*, %struct.jsw_avltree** %edgeMapPtr, align 8
  %5 = icmp ne %struct.jsw_avltree* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 370, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %8, %6
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %11 = load i64, i64* %fileNameSize, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %10, i64 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* %12) #6
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %15 = call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store %struct._IO_FILE* %15, %struct._IO_FILE** %inputFile, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %17 = icmp ne %struct._IO_FILE* %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %9
  br label %21

; <label>:19                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 377, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:21                                      ; preds = %20, %18
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %23 = load i64, i64* %inputBuffSize, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %26 = call i8* @fgets(i8* %22, i32 %24, %struct._IO_FILE* %25)
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %28 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i64* %numEntry, i64* %numDimension) #6
  %29 = load i64, i64* %numDimension, align 8
  %30 = icmp eq i64 %29, 2
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %21
  br label %34

; <label>:32                                      ; preds = %21
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 380, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %34

; <label>:34                                      ; preds = %33, %31
  %35 = load i64, i64* %numEntry, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %numCoordinate, align 8
  %37 = load i64, i64* %numCoordinate, align 8
  %38 = mul i64 %37, 16
  %39 = call noalias i8* @malloc(i64 %38) #6
  %40 = bitcast i8* %39 to %struct.coordinate*
  store %struct.coordinate* %40, %struct.coordinate** %coordinates, align 8
  %41 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %42 = icmp ne %struct.coordinate* %41, null
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %34
  br label %46

; <label>:44                                      ; preds = %34
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 383, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %46

; <label>:46                                      ; preds = %45, %43
  store i64 0, i64* %i, align 8
  br label %47

; <label>:47                                      ; preds = %78, %46
  %48 = load i64, i64* %i, align 8
  %49 = load i64, i64* %numEntry, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %81

; <label>:51                                      ; preds = %47
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %53 = load i64, i64* %inputBuffSize, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %56 = call i8* @fgets(i8* %52, i32 %54, %struct._IO_FILE* %55)
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

; <label>:58                                      ; preds = %51
  br label %81

; <label>:59                                      ; preds = %51
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i64 0, i64 0
  %61 = load i8, i8* %60, align 16
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 35
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %59
  br label %78

; <label>:65                                      ; preds = %59
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %67 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i64* %id, double* %x, double* %y) #6
  %68 = load double, double* %x, align 8
  %69 = load i64, i64* %id, align 8
  %70 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %71 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %70, i64 %69
  %72 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %71, i32 0, i32 0
  store double %68, double* %72, align 8
  %73 = load double, double* %y, align 8
  %74 = load i64, i64* %id, align 8
  %75 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %76 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %75, i64 %74
  %77 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %76, i32 0, i32 1
  store double %73, double* %77, align 8
  br label %78

; <label>:78                                      ; preds = %65, %64
  %79 = load i64, i64* %i, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %i, align 8
  br label %47

; <label>:81                                      ; preds = %58, %47
  %82 = load i64, i64* %i, align 8
  %83 = load i64, i64* %numEntry, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %81
  br label %88

; <label>:86                                      ; preds = %81
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 398, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %88

; <label>:88                                      ; preds = %87, %85
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %90 = call i32 @fclose(%struct._IO_FILE* %89)
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %92 = load i64, i64* %fileNameSize, align 8
  %93 = load i8*, i8** %2, align 8
  %94 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %91, i64 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* %93) #6
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %96 = call %struct._IO_FILE* @fopen(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store %struct._IO_FILE* %96, %struct._IO_FILE** %inputFile, align 8
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %98 = icmp ne %struct._IO_FILE* %97, null
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %88
  br label %102

; <label>:100                                     ; preds = %88
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 406, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %102

; <label>:102                                     ; preds = %101, %99
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %104 = load i64, i64* %inputBuffSize, align 8
  %105 = trunc i64 %104 to i32
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %107 = call i8* @fgets(i8* %103, i32 %105, %struct._IO_FILE* %106)
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %109 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i64* %numEntry, i64* %numDimension) #6
  %110 = load i64, i64* %numEntry, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %102
  br label %115

; <label>:113                                     ; preds = %102
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 409, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %115

; <label>:115                                     ; preds = %114, %112
  %116 = load i64, i64* %numDimension, align 8
  %117 = icmp eq i64 %116, 2
  br i1 %117, label %118, label %119

; <label>:118                                     ; preds = %115
  br label %121

; <label>:119                                     ; preds = %115
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 410, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %121

; <label>:121                                     ; preds = %120, %118
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %123 = load i64, i64* %inputBuffSize, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %126 = call i8* @fgets(i8* %122, i32 %124, %struct._IO_FILE* %125)
  %127 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %128 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64* %numEntry) #6
  store i64 0, i64* %i, align 8
  br label %129

; <label>:129                                     ; preds = %185, %121
  %130 = load i64, i64* %i, align 8
  %131 = load i64, i64* %numEntry, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %188

; <label>:133                                     ; preds = %129
  %134 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %135 = load i64, i64* %inputBuffSize, align 8
  %136 = trunc i64 %135 to i32
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %138 = call i8* @fgets(i8* %134, i32 %136, %struct._IO_FILE* %137)
  %139 = icmp ne i8* %138, null
  br i1 %139, label %141, label %140

; <label>:140                                     ; preds = %133
  br label %188

; <label>:141                                     ; preds = %133
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i64 0, i64 0
  %143 = load i8, i8* %142, align 16
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 35
  br i1 %145, label %146, label %147

; <label>:146                                     ; preds = %141
  br label %185

; <label>:147                                     ; preds = %141
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %149 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i64* %id1, i64* %a, i64* %b) #6
  %150 = load i64, i64* %a, align 8
  %151 = icmp sge i64 %150, 0
  br i1 %151, label %152, label %157

; <label>:152                                     ; preds = %147
  %153 = load i64, i64* %a, align 8
  %154 = load i64, i64* %numCoordinate, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %157

; <label>:156                                     ; preds = %152
  br label %159

; <label>:157                                     ; preds = %152, %147
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 425, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %159

; <label>:159                                     ; preds = %158, %156
  %160 = load i64, i64* %b, align 8
  %161 = icmp sge i64 %160, 0
  br i1 %161, label %162, label %167

; <label>:162                                     ; preds = %159
  %163 = load i64, i64* %b, align 8
  %164 = load i64, i64* %numCoordinate, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %167

; <label>:166                                     ; preds = %162
  br label %169

; <label>:167                                     ; preds = %162, %159
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 426, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %169

; <label>:169                                     ; preds = %168, %166
  %170 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %insertCoordinates, i64 0, i64 0
  %171 = load i64, i64* %a, align 8
  %172 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %173 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %172, i64 %171
  %174 = bitcast %struct.coordinate* %170 to i8*
  %175 = bitcast %struct.coordinate* %173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %174, i8* %175, i64 16, i32 8, i1 false)
  %176 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %insertCoordinates, i64 0, i64 1
  %177 = load i64, i64* %b, align 8
  %178 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %179 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %178, i64 %177
  %180 = bitcast %struct.coordinate* %176 to i8*
  %181 = bitcast %struct.coordinate* %179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* %181, i64 16, i32 8, i1 false)
  %182 = load %struct.mesh*, %struct.mesh** %1, align 8
  %183 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %insertCoordinates, i32 0, i32 0
  %184 = load %struct.jsw_avltree*, %struct.jsw_avltree** %edgeMapPtr, align 8
  call void @createElement(%struct.mesh* %182, %struct.coordinate* %183, i64 2, %struct.jsw_avltree* %184)
  br label %185

; <label>:185                                     ; preds = %169, %146
  %186 = load i64, i64* %i, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %i, align 8
  br label %129

; <label>:188                                     ; preds = %140, %129
  %189 = load i64, i64* %i, align 8
  %190 = load i64, i64* %numEntry, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %193

; <label>:192                                     ; preds = %188
  br label %195

; <label>:193                                     ; preds = %188
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 431, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %195

; <label>:195                                     ; preds = %194, %192
  %196 = load i64, i64* %numEntry, align 8
  %197 = load i64, i64* %numElement, align 8
  %198 = add nsw i64 %197, %196
  store i64 %198, i64* %numElement, align 8
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %200 = call i32 @fclose(%struct._IO_FILE* %199)
  %201 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %202 = load i64, i64* %fileNameSize, align 8
  %203 = load i8*, i8** %2, align 8
  %204 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %201, i64 %202, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* %203) #6
  %205 = getelementptr inbounds [256 x i8], [256 x i8]* %fileName, i32 0, i32 0
  %206 = call %struct._IO_FILE* @fopen(i8* %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store %struct._IO_FILE* %206, %struct._IO_FILE** %inputFile, align 8
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %208 = icmp ne %struct._IO_FILE* %207, null
  br i1 %208, label %209, label %210

; <label>:209                                     ; preds = %195
  br label %212

; <label>:210                                     ; preds = %195
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 440, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %212

; <label>:212                                     ; preds = %211, %209
  %213 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %214 = load i64, i64* %inputBuffSize, align 8
  %215 = trunc i64 %214 to i32
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %217 = call i8* @fgets(i8* %213, i32 %215, %struct._IO_FILE* %216)
  %218 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %219 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %218, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i64* %numEntry, i64* %numDimension) #6
  %220 = load i64, i64* %numDimension, align 8
  %221 = icmp eq i64 %220, 3
  br i1 %221, label %222, label %223

; <label>:222                                     ; preds = %212
  br label %225

; <label>:223                                     ; preds = %212
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 443, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %225

; <label>:225                                     ; preds = %224, %222
  store i64 0, i64* %i, align 8
  br label %226

; <label>:226                                     ; preds = %298, %225
  %227 = load i64, i64* %i, align 8
  %228 = load i64, i64* %numEntry, align 8
  %229 = icmp slt i64 %227, %228
  br i1 %229, label %230, label %301

; <label>:230                                     ; preds = %226
  %231 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %232 = load i64, i64* %inputBuffSize, align 8
  %233 = trunc i64 %232 to i32
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %235 = call i8* @fgets(i8* %231, i32 %233, %struct._IO_FILE* %234)
  %236 = icmp ne i8* %235, null
  br i1 %236, label %238, label %237

; <label>:237                                     ; preds = %230
  br label %301

; <label>:238                                     ; preds = %230
  %239 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i64 0, i64 0
  %240 = load i8, i8* %239, align 16
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %241, 35
  br i1 %242, label %243, label %244

; <label>:243                                     ; preds = %238
  br label %298

; <label>:244                                     ; preds = %238
  %245 = getelementptr inbounds [256 x i8], [256 x i8]* %inputBuff, i32 0, i32 0
  %246 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %245, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i64* %id2, i64* %a3, i64* %b4, i64* %c) #6
  %247 = load i64, i64* %a3, align 8
  %248 = icmp sge i64 %247, 0
  br i1 %248, label %249, label %254

; <label>:249                                     ; preds = %244
  %250 = load i64, i64* %a3, align 8
  %251 = load i64, i64* %numCoordinate, align 8
  %252 = icmp slt i64 %250, %251
  br i1 %252, label %253, label %254

; <label>:253                                     ; preds = %249
  br label %256

; <label>:254                                     ; preds = %249, %244
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 457, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %256

; <label>:256                                     ; preds = %255, %253
  %257 = load i64, i64* %b4, align 8
  %258 = icmp sge i64 %257, 0
  br i1 %258, label %259, label %264

; <label>:259                                     ; preds = %256
  %260 = load i64, i64* %b4, align 8
  %261 = load i64, i64* %numCoordinate, align 8
  %262 = icmp slt i64 %260, %261
  br i1 %262, label %263, label %264

; <label>:263                                     ; preds = %259
  br label %266

; <label>:264                                     ; preds = %259, %256
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %266

; <label>:266                                     ; preds = %265, %263
  %267 = load i64, i64* %c, align 8
  %268 = icmp sge i64 %267, 0
  br i1 %268, label %269, label %274

; <label>:269                                     ; preds = %266
  %270 = load i64, i64* %c, align 8
  %271 = load i64, i64* %numCoordinate, align 8
  %272 = icmp slt i64 %270, %271
  br i1 %272, label %273, label %274

; <label>:273                                     ; preds = %269
  br label %276

; <label>:274                                     ; preds = %269, %266
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 459, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %276

; <label>:276                                     ; preds = %275, %273
  %277 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i64 0, i64 0
  %278 = load i64, i64* %a3, align 8
  %279 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %280 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %279, i64 %278
  %281 = bitcast %struct.coordinate* %277 to i8*
  %282 = bitcast %struct.coordinate* %280 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %281, i8* %282, i64 16, i32 8, i1 false)
  %283 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i64 0, i64 1
  %284 = load i64, i64* %b4, align 8
  %285 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %286 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %285, i64 %284
  %287 = bitcast %struct.coordinate* %283 to i8*
  %288 = bitcast %struct.coordinate* %286 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %287, i8* %288, i64 16, i32 8, i1 false)
  %289 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i64 0, i64 2
  %290 = load i64, i64* %c, align 8
  %291 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %292 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %291, i64 %290
  %293 = bitcast %struct.coordinate* %289 to i8*
  %294 = bitcast %struct.coordinate* %292 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %293, i8* %294, i64 16, i32 8, i1 false)
  %295 = load %struct.mesh*, %struct.mesh** %1, align 8
  %296 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %insertCoordinates5, i32 0, i32 0
  %297 = load %struct.jsw_avltree*, %struct.jsw_avltree** %edgeMapPtr, align 8
  call void @createElement(%struct.mesh* %295, %struct.coordinate* %296, i64 3, %struct.jsw_avltree* %297)
  br label %298

; <label>:298                                     ; preds = %276, %243
  %299 = load i64, i64* %i, align 8
  %300 = add nsw i64 %299, 1
  store i64 %300, i64* %i, align 8
  br label %226

; <label>:301                                     ; preds = %237, %226
  %302 = load i64, i64* %i, align 8
  %303 = load i64, i64* %numEntry, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %306

; <label>:305                                     ; preds = %301
  br label %308

; <label>:306                                     ; preds = %301
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 465, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.mesh_read, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %308

; <label>:308                                     ; preds = %307, %305
  %309 = load i64, i64* %numEntry, align 8
  %310 = load i64, i64* %numElement, align 8
  %311 = add nsw i64 %310, %309
  store i64 %311, i64* %numElement, align 8
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** %inputFile, align 8
  %313 = call i32 @fclose(%struct._IO_FILE* %312)
  %314 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %315 = bitcast %struct.coordinate* %314 to i8*
  call void @free(i8* %315) #6
  %316 = load %struct.jsw_avltree*, %struct.jsw_avltree** %edgeMapPtr, align 8
  call void @jsw_avldelete(%struct.jsw_avltree* %316)
  %317 = load i64, i64* %numElement, align 8
  ret i64 %317
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
  %1 = alloca %struct.mesh*, align 8
  %2 = alloca %struct.coordinate*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.jsw_avltree*, align 8
  %elementPtr = alloca %struct.element*, align 8
  %boundaryPtr = alloca %struct.pair*, align 8
  %status = alloca i64, align 8
  %status1 = alloca i64, align 8
  store %struct.mesh* %meshPtr, %struct.mesh** %1, align 8
  store %struct.coordinate* %coordinates, %struct.coordinate** %2, align 8
  store i64 %numCoordinate, i64* %3, align 8
  store %struct.jsw_avltree* %edgeMapPtr, %struct.jsw_avltree** %4, align 8
  %5 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call %struct.element* @element_alloc(%struct.coordinate* %5, i64 %6)
  store %struct.element* %7, %struct.element** %elementPtr, align 8
  %8 = load %struct.element*, %struct.element** %elementPtr, align 8
  %9 = icmp ne %struct.element* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %13

; <label>:11                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 329, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.createElement, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = load i64, i64* %3, align 8
  %15 = icmp eq i64 %14, 2
  br i1 %15, label %16, label %31

; <label>:16                                      ; preds = %13
  %17 = load %struct.element*, %struct.element** %elementPtr, align 8
  %18 = call %struct.pair* @element_getEdge(%struct.element* %17, i64 0)
  store %struct.pair* %18, %struct.pair** %boundaryPtr, align 8
  %19 = load %struct.mesh*, %struct.mesh** %1, align 8
  %20 = getelementptr inbounds %struct.mesh, %struct.mesh* %19, i32 0, i32 3
  %21 = load %struct.rbtree*, %struct.rbtree** %20, align 8
  %22 = load %struct.pair*, %struct.pair** %boundaryPtr, align 8
  %23 = bitcast %struct.pair* %22 to i8*
  %24 = call i64 @rbtree_insert(%struct.rbtree* %21, i8* %23, i8* null)
  store i64 %24, i64* %status, align 8
  %25 = load i64, i64* %status, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %16
  br label %30

; <label>:28                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 334, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.createElement, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  br label %31

; <label>:31                                      ; preds = %30, %13
  %32 = load %struct.mesh*, %struct.mesh** %1, align 8
  %33 = load %struct.element*, %struct.element** %elementPtr, align 8
  %34 = load %struct.jsw_avltree*, %struct.jsw_avltree** %4, align 8
  call void @mesh_insert(%struct.mesh* %32, %struct.element* %33, %struct.jsw_avltree* %34)
  %35 = load %struct.element*, %struct.element** %elementPtr, align 8
  %36 = call i64 @element_isBad(%struct.element* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

; <label>:38                                      ; preds = %31
  %39 = load %struct.mesh*, %struct.mesh** %1, align 8
  %40 = getelementptr inbounds %struct.mesh, %struct.mesh* %39, i32 0, i32 1
  %41 = load %struct.queue*, %struct.queue** %40, align 8
  %42 = load %struct.element*, %struct.element** %elementPtr, align 8
  %43 = bitcast %struct.element* %42 to i8*
  %44 = call i64 @queue_push(%struct.queue* %41, i8* %43)
  store i64 %44, i64* %status1, align 8
  %45 = load i64, i64* %status1, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %38
  br label %50

; <label>:48                                      ; preds = %38
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 341, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.createElement, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %50

; <label>:50                                      ; preds = %49, %47
  br label %51

; <label>:51                                      ; preds = %50, %31
  ret void
}

declare void @jsw_avldelete(%struct.jsw_avltree*) #2

; Function Attrs: nounwind uwtable
define %struct.element* @mesh_getBad(%struct.mesh* %meshPtr) #0 {
  %1 = alloca %struct.mesh*, align 8
  store %struct.mesh* %meshPtr, %struct.mesh** %1, align 8
  %2 = load %struct.mesh*, %struct.mesh** %1, align 8
  %3 = getelementptr inbounds %struct.mesh, %struct.mesh* %2, i32 0, i32 1
  %4 = load %struct.queue*, %struct.queue** %3, align 8
  %5 = call i8* @queue_pop(%struct.queue* %4)
  %6 = bitcast i8* %5 to %struct.element*
  ret %struct.element* %6
}

declare i8* @queue_pop(%struct.queue*) #2

; Function Attrs: nounwind uwtable
define void @mesh_shuffleBad(%struct.mesh* %meshPtr, %struct.random* %randomPtr) #0 {
  %1 = alloca %struct.mesh*, align 8
  %2 = alloca %struct.random*, align 8
  store %struct.mesh* %meshPtr, %struct.mesh** %1, align 8
  store %struct.random* %randomPtr, %struct.random** %2, align 8
  %3 = load %struct.mesh*, %struct.mesh** %1, align 8
  %4 = getelementptr inbounds %struct.mesh, %struct.mesh* %3, i32 0, i32 1
  %5 = load %struct.queue*, %struct.queue** %4, align 8
  %6 = load %struct.random*, %struct.random** %2, align 8
  call void @queue_shuffle(%struct.queue* %5, %struct.random* %6)
  ret void
}

declare void @queue_shuffle(%struct.queue*, %struct.random*) #2

; Function Attrs: nounwind uwtable
define i64 @mesh_check(%struct.mesh* %meshPtr, i64 %expectedNumElement) #0 {
  %1 = alloca %struct.mesh*, align 8
  %2 = alloca i64, align 8
  %searchQueuePtr = alloca %struct.queue*, align 8
  %visitedMapPtr = alloca %struct.jsw_avltree*, align 8
  %numBadTriangle = alloca i64, align 8
  %numFalseNeighbor = alloca i64, align 8
  %numElement = alloca i64, align 8
  %currentElementPtr = alloca %struct.element*, align 8
  %it = alloca %struct.list_node*, align 8
  %neighborListPtr = alloca %struct.list*, align 8
  %isSuccess = alloca i64, align 8
  %success = alloca i64, align 8
  %searchPair = alloca %struct.pair, align 8
  %3 = alloca i64, align 8
  %success1 = alloca i64, align 8
  %insertPtr = alloca %struct.pair*, align 8
  %4 = alloca i64, align 8
  %neighborElementPtr = alloca %struct.element*, align 8
  %success2 = alloca i64, align 8
  %searchPair3 = alloca %struct.pair, align 8
  %5 = alloca i64, align 8
  %isSuccess4 = alloca i64, align 8
  store %struct.mesh* %meshPtr, %struct.mesh** %1, align 8
  store i64 %expectedNumElement, i64* %2, align 8
  store i64 0, i64* %numBadTriangle, align 8
  store i64 0, i64* %numFalseNeighbor, align 8
  store i64 0, i64* %numElement, align 8
  %6 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %8 = call i32 @fflush(%struct._IO_FILE* %7)
  %9 = call %struct.queue* @queue_alloc(i64 -1)
  store %struct.queue* %9, %struct.queue** %searchQueuePtr, align 8
  %10 = load %struct.queue*, %struct.queue** %searchQueuePtr, align 8
  %11 = icmp ne %struct.queue* %10, null
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  br label %15

; <label>:13                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 516, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = call %struct.jsw_avltree* @jsw_avlnew(i64 (i8*, i8*)* bitcast (i64 (%struct.pair*, %struct.pair*)* @element_mapCompare to i64 (i8*, i8*)*))
  store %struct.jsw_avltree* %16, %struct.jsw_avltree** %visitedMapPtr, align 8
  %17 = load %struct.jsw_avltree*, %struct.jsw_avltree** %visitedMapPtr, align 8
  %18 = icmp ne %struct.jsw_avltree* %17, null
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %15
  br label %22

; <label>:20                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 518, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = load %struct.mesh*, %struct.mesh** %1, align 8
  %24 = getelementptr inbounds %struct.mesh, %struct.mesh* %23, i32 0, i32 0
  %25 = load %struct.element*, %struct.element** %24, align 8
  %26 = icmp ne %struct.element* %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %22
  br label %30

; <label>:28                                      ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 523, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load %struct.queue*, %struct.queue** %searchQueuePtr, align 8
  %32 = load %struct.mesh*, %struct.mesh** %1, align 8
  %33 = getelementptr inbounds %struct.mesh, %struct.mesh* %32, i32 0, i32 0
  %34 = load %struct.element*, %struct.element** %33, align 8
  %35 = bitcast %struct.element* %34 to i8*
  %36 = call i64 @queue_push(%struct.queue* %31, i8* %35)
  br label %37

; <label>:37                                      ; preds = %124, %58, %30
  %38 = load %struct.queue*, %struct.queue** %searchQueuePtr, align 8
  %39 = call i64 @queue_isEmpty(%struct.queue* %38)
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %127

; <label>:42                                      ; preds = %37
  %43 = load %struct.queue*, %struct.queue** %searchQueuePtr, align 8
  %44 = call i8* @queue_pop(%struct.queue* %43)
  %45 = bitcast i8* %44 to %struct.element*
  store %struct.element* %45, %struct.element** %currentElementPtr, align 8
  store i64 0, i64* %success, align 8
  %46 = load %struct.element*, %struct.element** %currentElementPtr, align 8
  %47 = bitcast %struct.element* %46 to i8*
  %48 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  %49 = load %struct.jsw_avltree*, %struct.jsw_avltree** %visitedMapPtr, align 8
  %50 = bitcast %struct.pair* %searchPair to i8*
  %51 = call i8* @jsw_avlfind(%struct.jsw_avltree* %49, i8* %50)
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %42
  store i64 1, i64* %success, align 8
  br label %54

; <label>:54                                      ; preds = %53, %42
  %55 = load i64, i64* %success, align 8
  store i64 %55, i64* %3, align 8
  %56 = load i64, i64* %3, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %54
  br label %37

; <label>:59                                      ; preds = %54
  store i64 0, i64* %success1, align 8
  %60 = load %struct.element*, %struct.element** %currentElementPtr, align 8
  %61 = bitcast %struct.element* %60 to i8*
  %62 = call %struct.pair* @pair_alloc(i8* %61, i8* null)
  store %struct.pair* %62, %struct.pair** %insertPtr, align 8
  %63 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %64 = icmp ne %struct.pair* %63, null
  br i1 %64, label %65, label %73

; <label>:65                                      ; preds = %59
  %66 = load %struct.jsw_avltree*, %struct.jsw_avltree** %visitedMapPtr, align 8
  %67 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %68 = bitcast %struct.pair* %67 to i8*
  %69 = call i64 @jsw_avlinsert(%struct.jsw_avltree* %66, i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %65
  store i64 1, i64* %success1, align 8
  br label %72

; <label>:72                                      ; preds = %71, %65
  br label %73

; <label>:73                                      ; preds = %72, %59
  %74 = load i64, i64* %success1, align 8
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  store i64 %75, i64* %isSuccess, align 8
  %76 = load i64, i64* %isSuccess, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %73
  br label %81

; <label>:79                                      ; preds = %73
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 537, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %81

; <label>:81                                      ; preds = %80, %78
  %82 = load %struct.element*, %struct.element** %currentElementPtr, align 8
  %83 = call i64 @element_checkAngles(%struct.element* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

; <label>:85                                      ; preds = %81
  %86 = load i64, i64* %numBadTriangle, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %numBadTriangle, align 8
  br label %88

; <label>:88                                      ; preds = %85, %81
  %89 = load %struct.element*, %struct.element** %currentElementPtr, align 8
  %90 = call %struct.list* @element_getNeighborListPtr(%struct.element* %89)
  store %struct.list* %90, %struct.list** %neighborListPtr, align 8
  %91 = load %struct.list*, %struct.list** %neighborListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %91)
  br label %92

; <label>:92                                      ; preds = %123, %88
  %93 = load %struct.list*, %struct.list** %neighborListPtr, align 8
  %94 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %93) #8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %124

; <label>:96                                      ; preds = %92
  %97 = load %struct.list*, %struct.list** %neighborListPtr, align 8
  %98 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %97)
  %99 = bitcast i8* %98 to %struct.element*
  store %struct.element* %99, %struct.element** %neighborElementPtr, align 8
  store i64 0, i64* %success2, align 8
  %100 = load %struct.element*, %struct.element** %neighborElementPtr, align 8
  %101 = bitcast %struct.element* %100 to i8*
  %102 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair3, i32 0, i32 0
  store i8* %101, i8** %102, align 8
  %103 = load %struct.jsw_avltree*, %struct.jsw_avltree** %visitedMapPtr, align 8
  %104 = bitcast %struct.pair* %searchPair3 to i8*
  %105 = call i8* @jsw_avlfind(%struct.jsw_avltree* %103, i8* %104)
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %108

; <label>:107                                     ; preds = %96
  store i64 1, i64* %success2, align 8
  br label %108

; <label>:108                                     ; preds = %107, %96
  %109 = load i64, i64* %success2, align 8
  store i64 %109, i64* %5, align 8
  %110 = load i64, i64* %5, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %123, label %112

; <label>:112                                     ; preds = %108
  %113 = load %struct.queue*, %struct.queue** %searchQueuePtr, align 8
  %114 = load %struct.element*, %struct.element** %neighborElementPtr, align 8
  %115 = bitcast %struct.element* %114 to i8*
  %116 = call i64 @queue_push(%struct.queue* %113, i8* %115)
  store i64 %116, i64* %isSuccess4, align 8
  %117 = load i64, i64* %isSuccess4, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

; <label>:119                                     ; preds = %112
  br label %122

; <label>:120                                     ; preds = %112
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 554, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.mesh_check, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %122

; <label>:122                                     ; preds = %121, %119
  br label %123

; <label>:123                                     ; preds = %122, %108
  br label %92

; <label>:124                                     ; preds = %92
  %125 = load i64, i64* %numElement, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %numElement, align 8
  br label %37

; <label>:127                                     ; preds = %37
  %128 = load i64, i64* %numElement, align 8
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0), i64 %128)
  %130 = load i64, i64* %numBadTriangle, align 8
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0), i64 %130)
  %132 = load %struct.queue*, %struct.queue** %searchQueuePtr, align 8
  call void @queue_free(%struct.queue* %132)
  %133 = load %struct.jsw_avltree*, %struct.jsw_avltree** %visitedMapPtr, align 8
  call void @jsw_avldelete(%struct.jsw_avltree* %133)
  %134 = load i64, i64* %numBadTriangle, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %143, label %136

; <label>:136                                     ; preds = %127
  %137 = load i64, i64* %numFalseNeighbor, align 8
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %143, label %139

; <label>:139                                     ; preds = %136
  %140 = load i64, i64* %numElement, align 8
  %141 = load i64, i64* %2, align 8
  %142 = icmp ne i64 %140, %141
  br label %143

; <label>:143                                     ; preds = %139, %136, %127
  %144 = phi i1 [ true, %136 ], [ true, %127 ], [ %142, %139 ]
  %145 = select i1 %144, i32 0, i32 1
  %146 = sext i32 %145 to i64
  ret i64 %146
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
