; ModuleID = '../bin/region.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.region = type { %struct.coordinate, %struct.queue*, %struct.list*, %struct.list*, %struct.vector* }
%struct.coordinate = type { double, double }
%struct.queue = type opaque
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.vector = type { i64, i64, i8** }
%struct.element = type opaque
%struct.mesh = type opaque
%struct.jsw_avltree = type opaque
%struct.pair = type { i8*, i8* }
%struct.heap = type opaque

@.str = private unnamed_addr constant [26 x i8] c"regionPtr->expandQueuePtr\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"region.c\00", align 1
@__PRETTY_FUNCTION__.Pregion_alloc = private unnamed_addr constant [26 x i8] c"region_t *Pregion_alloc()\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"regionPtr->beforeListPtr\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"regionPtr->borderListPtr\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"regionPtr->badVectorPtr\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@__PRETTY_FUNCTION__.TMaddToBadVector = private unnamed_addr constant [47 x i8] c"void TMaddToBadVector(vector_t *, element_t *)\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"edgeMapPtr\00", align 1
@__PRETTY_FUNCTION__.TMretriangulate = private unnamed_addr constant [73 x i8] c"long TMretriangulate(element_t *, region_t *, mesh_t *, jsw_avltree_t *)\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"aElementPtr\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"bElementPtr\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"borderEdgePtr\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"afterElementPtr\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"isSuccess\00", align 1
@__PRETTY_FUNCTION__.TMgrowRegion = private unnamed_addr constant [76 x i8] c"element_t *TMgrowRegion(element_t *, region_t *, mesh_t *, jsw_avltree_t *)\00", align 1
@__PRETTY_FUNCTION__.TMregion_refine = private unnamed_addr constant [56 x i8] c"long TMregion_refine(region_t *, element_t *, mesh_t *)\00", align 1
@__PRETTY_FUNCTION__.TMregion_transferBad = private unnamed_addr constant [48 x i8] c"void TMregion_transferBad(region_t *, heap_t *)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.region* @Pregion_alloc() #0 {
  %regionPtr = alloca %struct.region*, align 8
  %1 = call noalias i8* @malloc(i64 48) #6
  %2 = bitcast i8* %1 to %struct.region*
  store %struct.region* %2, %struct.region** %regionPtr, align 8
  %3 = load %struct.region*, %struct.region** %regionPtr, align 8
  %4 = icmp ne %struct.region* %3, null
  br i1 %4, label %5, label %50

; <label>:5                                       ; preds = %0
  %6 = call %struct.queue* @Pqueue_alloc(i64 -1)
  %7 = load %struct.region*, %struct.region** %regionPtr, align 8
  %8 = getelementptr inbounds %struct.region, %struct.region* %7, i32 0, i32 1
  store %struct.queue* %6, %struct.queue** %8, align 8
  %9 = load %struct.region*, %struct.region** %regionPtr, align 8
  %10 = getelementptr inbounds %struct.region, %struct.region* %9, i32 0, i32 1
  %11 = load %struct.queue*, %struct.queue** %10, align 8
  %12 = icmp ne %struct.queue* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %5
  br label %16

; <label>:14                                      ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = call %struct.list* @Plist_alloc(i64 (i8*, i8*)* @element_listCompare)
  %18 = load %struct.region*, %struct.region** %regionPtr, align 8
  %19 = getelementptr inbounds %struct.region, %struct.region* %18, i32 0, i32 2
  store %struct.list* %17, %struct.list** %19, align 8
  %20 = load %struct.region*, %struct.region** %regionPtr, align 8
  %21 = getelementptr inbounds %struct.region, %struct.region* %20, i32 0, i32 2
  %22 = load %struct.list*, %struct.list** %21, align 8
  %23 = icmp ne %struct.list* %22, null
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %16
  br label %27

; <label>:25                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %27

; <label>:27                                      ; preds = %26, %24
  %28 = call %struct.list* @Plist_alloc(i64 (i8*, i8*)* @element_listCompareEdge)
  %29 = load %struct.region*, %struct.region** %regionPtr, align 8
  %30 = getelementptr inbounds %struct.region, %struct.region* %29, i32 0, i32 3
  store %struct.list* %28, %struct.list** %30, align 8
  %31 = load %struct.region*, %struct.region** %regionPtr, align 8
  %32 = getelementptr inbounds %struct.region, %struct.region* %31, i32 0, i32 3
  %33 = load %struct.list*, %struct.list** %32, align 8
  %34 = icmp ne %struct.list* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %27
  br label %38

; <label>:36                                      ; preds = %27
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = call %struct.vector* @Pvector_alloc(i64 1)
  %40 = load %struct.region*, %struct.region** %regionPtr, align 8
  %41 = getelementptr inbounds %struct.region, %struct.region* %40, i32 0, i32 4
  store %struct.vector* %39, %struct.vector** %41, align 8
  %42 = load %struct.region*, %struct.region** %regionPtr, align 8
  %43 = getelementptr inbounds %struct.region, %struct.region* %42, i32 0, i32 4
  %44 = load %struct.vector*, %struct.vector** %43, align 8
  %45 = icmp ne %struct.vector* %44, null
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %38
  br label %49

; <label>:47                                      ; preds = %38
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %49

; <label>:49                                      ; preds = %48, %46
  br label %50

; <label>:50                                      ; preds = %49, %0
  %51 = load %struct.region*, %struct.region** %regionPtr, align 8
  ret %struct.region* %51
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.queue* @Pqueue_alloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare %struct.list* @Plist_alloc(i64 (i8*, i8*)*) #2

declare i64 @element_listCompare(i8*, i8*) #2

declare i64 @element_listCompareEdge(i8*, i8*) #2

declare %struct.vector* @Pvector_alloc(i64) #2

; Function Attrs: nounwind uwtable
define void @Pregion_free(%struct.region* %regionPtr) #0 {
  %1 = alloca %struct.region*, align 8
  store %struct.region* %regionPtr, %struct.region** %1, align 8
  %2 = load %struct.region*, %struct.region** %1, align 8
  %3 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 4
  %4 = load %struct.vector*, %struct.vector** %3, align 8
  call void @Pvector_free(%struct.vector* %4)
  %5 = load %struct.region*, %struct.region** %1, align 8
  %6 = getelementptr inbounds %struct.region, %struct.region* %5, i32 0, i32 3
  %7 = load %struct.list*, %struct.list** %6, align 8
  call void @Plist_free(%struct.list* %7)
  %8 = load %struct.region*, %struct.region** %1, align 8
  %9 = getelementptr inbounds %struct.region, %struct.region* %8, i32 0, i32 2
  %10 = load %struct.list*, %struct.list** %9, align 8
  call void @Plist_free(%struct.list* %10)
  %11 = load %struct.region*, %struct.region** %1, align 8
  %12 = getelementptr inbounds %struct.region, %struct.region* %11, i32 0, i32 1
  %13 = load %struct.queue*, %struct.queue** %12, align 8
  call void @Pqueue_free(%struct.queue* %13)
  %14 = load %struct.region*, %struct.region** %1, align 8
  %15 = bitcast %struct.region* %14 to i8*
  call void @free(i8* %15) #6
  ret void
}

declare void @Pvector_free(%struct.vector*) #2

declare void @Plist_free(%struct.list*) #2

declare void @Pqueue_free(%struct.queue*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @TMaddToBadVector(%struct.vector* %badVectorPtr, %struct.element* %badElementPtr) #0 {
  %1 = alloca %struct.vector*, align 8
  %2 = alloca %struct.element*, align 8
  %status = alloca i64, align 8
  store %struct.vector* %badVectorPtr, %struct.vector** %1, align 8
  store %struct.element* %badElementPtr, %struct.element** %2, align 8
  %3 = load %struct.vector*, %struct.vector** %1, align 8
  %4 = load %struct.element*, %struct.element** %2, align 8
  %5 = bitcast %struct.element* %4 to i8*
  %6 = call i64 @Pvector_pushBack(%struct.vector* %3, i8* %5)
  store i64 %6, i64* %status, align 8
  %7 = load i64, i64* %status, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %12

; <label>:10                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 141, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.TMaddToBadVector, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = load %struct.element*, %struct.element** %2, align 8
  call void @TMelement_setIsReferenced(%struct.element* %13, i64 1)
  ret void
}

declare i64 @Pvector_pushBack(%struct.vector*, i8*) #2

declare void @TMelement_setIsReferenced(%struct.element*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @TMretriangulate(%struct.element* %elementPtr, %struct.region* %regionPtr, %struct.mesh* %meshPtr, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %1 = alloca %struct.element*, align 8
  %2 = alloca %struct.region*, align 8
  %3 = alloca %struct.mesh*, align 8
  %4 = alloca %struct.jsw_avltree*, align 8
  %badVectorPtr = alloca %struct.vector*, align 8
  %beforeListPtr = alloca %struct.list*, align 8
  %borderListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %numDelta = alloca i64, align 8
  %centerCoordinate = alloca %struct.coordinate, align 8
  %beforeElementPtr = alloca %struct.element*, align 8
  %coordinates = alloca [2 x %struct.coordinate], align 16
  %edgePtr = alloca %struct.pair*, align 8
  %aElementPtr = alloca %struct.element*, align 8
  %bElementPtr = alloca %struct.element*, align 8
  %status = alloca i64, align 8
  %afterElementPtr = alloca %struct.element*, align 8
  %coordinates1 = alloca [3 x %struct.coordinate], align 16
  %borderEdgePtr = alloca %struct.pair*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  store %struct.region* %regionPtr, %struct.region** %2, align 8
  store %struct.mesh* %meshPtr, %struct.mesh** %3, align 8
  store %struct.jsw_avltree* %edgeMapPtr, %struct.jsw_avltree** %4, align 8
  %5 = load %struct.region*, %struct.region** %2, align 8
  %6 = getelementptr inbounds %struct.region, %struct.region* %5, i32 0, i32 4
  %7 = load %struct.vector*, %struct.vector** %6, align 8
  store %struct.vector* %7, %struct.vector** %badVectorPtr, align 8
  %8 = load %struct.region*, %struct.region** %2, align 8
  %9 = getelementptr inbounds %struct.region, %struct.region* %8, i32 0, i32 2
  %10 = load %struct.list*, %struct.list** %9, align 8
  store %struct.list* %10, %struct.list** %beforeListPtr, align 8
  %11 = load %struct.region*, %struct.region** %2, align 8
  %12 = getelementptr inbounds %struct.region, %struct.region* %11, i32 0, i32 3
  %13 = load %struct.list*, %struct.list** %12, align 8
  store %struct.list* %13, %struct.list** %borderListPtr, align 8
  store i64 0, i64* %numDelta, align 8
  %14 = load %struct.jsw_avltree*, %struct.jsw_avltree** %4, align 8
  %15 = icmp ne %struct.jsw_avltree* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %0
  br label %19

; <label>:17                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 164, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %19

; <label>:19                                      ; preds = %18, %16
  %20 = load %struct.element*, %struct.element** %1, align 8
  %21 = call { double, double } @element_getNewPoint(%struct.element* %20)
  %22 = bitcast %struct.coordinate* %centerCoordinate to { double, double }*
  %23 = getelementptr inbounds { double, double }, { double, double }* %22, i32 0, i32 0
  %24 = extractvalue { double, double } %21, 0
  store double %24, double* %23, align 8
  %25 = getelementptr inbounds { double, double }, { double, double }* %22, i32 0, i32 1
  %26 = extractvalue { double, double } %21, 1
  store double %26, double* %25, align 8
  %27 = load %struct.list*, %struct.list** %beforeListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %27)
  br label %28

; <label>:28                                      ; preds = %32, %19
  %29 = load %struct.list*, %struct.list** %beforeListPtr, align 8
  %30 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %29) #8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

; <label>:32                                      ; preds = %28
  %33 = load %struct.list*, %struct.list** %beforeListPtr, align 8
  %34 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %33)
  %35 = bitcast i8* %34 to %struct.element*
  store %struct.element* %35, %struct.element** %beforeElementPtr, align 8
  %36 = load %struct.mesh*, %struct.mesh** %3, align 8
  %37 = load %struct.element*, %struct.element** %beforeElementPtr, align 8
  call void @TMmesh_remove(%struct.mesh* %36, %struct.element* %37)
  br label %28

; <label>:38                                      ; preds = %28
  %39 = load %struct.list*, %struct.list** %beforeListPtr, align 8
  %40 = call i64 @list_getSize(%struct.list* %39)
  %41 = load i64, i64* %numDelta, align 8
  %42 = sub nsw i64 %41, %40
  store i64 %42, i64* %numDelta, align 8
  %43 = load %struct.element*, %struct.element** %1, align 8
  %44 = call i64 @element_getNumEdge(%struct.element* %43)
  %45 = icmp eq i64 %44, 1
  br i1 %45, label %46, label %120

; <label>:46                                      ; preds = %38
  %47 = load %struct.element*, %struct.element** %1, align 8
  %48 = call %struct.pair* @element_getEdge(%struct.element* %47, i64 0)
  store %struct.pair* %48, %struct.pair** %edgePtr, align 8
  %49 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i64 0, i64 0
  %50 = bitcast %struct.coordinate* %49 to i8*
  %51 = bitcast %struct.coordinate* %centerCoordinate to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 16, i32 8, i1 false)
  %52 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i64 0, i64 1
  %53 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %54 = getelementptr inbounds %struct.pair, %struct.pair* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to %struct.coordinate*
  %57 = bitcast %struct.coordinate* %52 to i8*
  %58 = bitcast %struct.coordinate* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 16, i32 8, i1 false)
  %59 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i32 0, i32 0
  %60 = call %struct.element* @TMelement_alloc(%struct.coordinate* %59, i64 2)
  store %struct.element* %60, %struct.element** %aElementPtr, align 8
  %61 = load %struct.element*, %struct.element** %aElementPtr, align 8
  %62 = icmp ne %struct.element* %61, null
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %46
  br label %66

; <label>:64                                      ; preds = %46
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %66

; <label>:66                                      ; preds = %65, %63
  %67 = load %struct.mesh*, %struct.mesh** %3, align 8
  %68 = load %struct.element*, %struct.element** %aElementPtr, align 8
  %69 = load %struct.jsw_avltree*, %struct.jsw_avltree** %4, align 8
  call void @TMmesh_insert(%struct.mesh* %67, %struct.element* %68, %struct.jsw_avltree* %69)
  %70 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i64 0, i64 1
  %71 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %72 = getelementptr inbounds %struct.pair, %struct.pair* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = bitcast i8* %73 to %struct.coordinate*
  %75 = bitcast %struct.coordinate* %70 to i8*
  %76 = bitcast %struct.coordinate* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 16, i32 8, i1 false)
  %77 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i32 0, i32 0
  %78 = call %struct.element* @TMelement_alloc(%struct.coordinate* %77, i64 2)
  store %struct.element* %78, %struct.element** %bElementPtr, align 8
  %79 = load %struct.element*, %struct.element** %bElementPtr, align 8
  %80 = icmp ne %struct.element* %79, null
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %66
  br label %84

; <label>:82                                      ; preds = %66
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 199, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %84

; <label>:84                                      ; preds = %83, %81
  %85 = load %struct.mesh*, %struct.mesh** %3, align 8
  %86 = load %struct.element*, %struct.element** %bElementPtr, align 8
  %87 = load %struct.jsw_avltree*, %struct.jsw_avltree** %4, align 8
  call void @TMmesh_insert(%struct.mesh* %85, %struct.element* %86, %struct.jsw_avltree* %87)
  %88 = load %struct.mesh*, %struct.mesh** %3, align 8
  %89 = load %struct.element*, %struct.element** %1, align 8
  %90 = call %struct.pair* @element_getEdge(%struct.element* %89, i64 0)
  %91 = call i64 @TMmesh_removeBoundary(%struct.mesh* %88, %struct.pair* %90)
  store i64 %91, i64* %status, align 8
  %92 = load i64, i64* %status, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

; <label>:94                                      ; preds = %84
  br label %97

; <label>:95                                      ; preds = %84
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 204, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %97

; <label>:97                                      ; preds = %96, %94
  %98 = load %struct.mesh*, %struct.mesh** %3, align 8
  %99 = load %struct.element*, %struct.element** %aElementPtr, align 8
  %100 = call %struct.pair* @element_getEdge(%struct.element* %99, i64 0)
  %101 = call i64 @TMmesh_insertBoundary(%struct.mesh* %98, %struct.pair* %100)
  store i64 %101, i64* %status, align 8
  %102 = load i64, i64* %status, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %97
  br label %107

; <label>:105                                     ; preds = %97
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 206, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %107

; <label>:107                                     ; preds = %106, %104
  %108 = load %struct.mesh*, %struct.mesh** %3, align 8
  %109 = load %struct.element*, %struct.element** %bElementPtr, align 8
  %110 = call %struct.pair* @element_getEdge(%struct.element* %109, i64 0)
  %111 = call i64 @TMmesh_insertBoundary(%struct.mesh* %108, %struct.pair* %110)
  store i64 %111, i64* %status, align 8
  %112 = load i64, i64* %status, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

; <label>:114                                     ; preds = %107
  br label %117

; <label>:115                                     ; preds = %107
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 208, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %117

; <label>:117                                     ; preds = %116, %114
  %118 = load i64, i64* %numDelta, align 8
  %119 = add nsw i64 %118, 2
  store i64 %119, i64* %numDelta, align 8
  br label %120

; <label>:120                                     ; preds = %117, %38
  %121 = load %struct.list*, %struct.list** %borderListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %121)
  br label %122

; <label>:122                                     ; preds = %170, %120
  %123 = load %struct.list*, %struct.list** %borderListPtr, align 8
  %124 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %123) #8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %171

; <label>:126                                     ; preds = %122
  %127 = load %struct.list*, %struct.list** %borderListPtr, align 8
  %128 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %127)
  %129 = bitcast i8* %128 to %struct.pair*
  store %struct.pair* %129, %struct.pair** %borderEdgePtr, align 8
  %130 = load %struct.pair*, %struct.pair** %borderEdgePtr, align 8
  %131 = icmp ne %struct.pair* %130, null
  br i1 %131, label %132, label %133

; <label>:132                                     ; preds = %126
  br label %135

; <label>:133                                     ; preds = %126
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 223, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %135

; <label>:135                                     ; preds = %134, %132
  %136 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i64 0, i64 0
  %137 = bitcast %struct.coordinate* %136 to i8*
  %138 = bitcast %struct.coordinate* %centerCoordinate to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* %138, i64 16, i32 8, i1 false)
  %139 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i64 0, i64 1
  %140 = load %struct.pair*, %struct.pair** %borderEdgePtr, align 8
  %141 = getelementptr inbounds %struct.pair, %struct.pair* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = bitcast i8* %142 to %struct.coordinate*
  %144 = bitcast %struct.coordinate* %139 to i8*
  %145 = bitcast %struct.coordinate* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 16, i32 8, i1 false)
  %146 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i64 0, i64 2
  %147 = load %struct.pair*, %struct.pair** %borderEdgePtr, align 8
  %148 = getelementptr inbounds %struct.pair, %struct.pair* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = bitcast i8* %149 to %struct.coordinate*
  %151 = bitcast %struct.coordinate* %146 to i8*
  %152 = bitcast %struct.coordinate* %150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 16, i32 8, i1 false)
  %153 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i32 0, i32 0
  %154 = call %struct.element* @TMelement_alloc(%struct.coordinate* %153, i64 3)
  store %struct.element* %154, %struct.element** %afterElementPtr, align 8
  %155 = load %struct.element*, %struct.element** %afterElementPtr, align 8
  %156 = icmp ne %struct.element* %155, null
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %135
  br label %160

; <label>:158                                     ; preds = %135
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 228, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %160

; <label>:160                                     ; preds = %159, %157
  %161 = load %struct.mesh*, %struct.mesh** %3, align 8
  %162 = load %struct.element*, %struct.element** %afterElementPtr, align 8
  %163 = load %struct.jsw_avltree*, %struct.jsw_avltree** %4, align 8
  call void @TMmesh_insert(%struct.mesh* %161, %struct.element* %162, %struct.jsw_avltree* %163)
  %164 = load %struct.element*, %struct.element** %afterElementPtr, align 8
  %165 = call i64 @element_isBad(%struct.element* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

; <label>:167                                     ; preds = %160
  %168 = load %struct.vector*, %struct.vector** %badVectorPtr, align 8
  %169 = load %struct.element*, %struct.element** %afterElementPtr, align 8
  call void @TMaddToBadVector(%struct.vector* %168, %struct.element* %169)
  br label %170

; <label>:170                                     ; preds = %167, %160
  br label %122

; <label>:171                                     ; preds = %122
  %172 = load %struct.list*, %struct.list** %borderListPtr, align 8
  %173 = call i64 @list_getSize(%struct.list* %172)
  %174 = load i64, i64* %numDelta, align 8
  %175 = add nsw i64 %174, %173
  store i64 %175, i64* %numDelta, align 8
  %176 = load i64, i64* %numDelta, align 8
  ret i64 %176
}

declare { double, double } @element_getNewPoint(%struct.element*) #2

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #2

declare void @TMmesh_remove(%struct.mesh*, %struct.element*) #2

declare i64 @list_getSize(%struct.list*) #2

declare i64 @element_getNumEdge(%struct.element*) #2

declare %struct.pair* @element_getEdge(%struct.element*, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare %struct.element* @TMelement_alloc(%struct.coordinate*, i64) #2

declare void @TMmesh_insert(%struct.mesh*, %struct.element*, %struct.jsw_avltree*) #2

declare i64 @TMmesh_removeBoundary(%struct.mesh*, %struct.pair*) #2

declare i64 @TMmesh_insertBoundary(%struct.mesh*, %struct.pair*) #2

declare i64 @element_isBad(%struct.element*) #2

; Function Attrs: nounwind uwtable
define %struct.element* @TMgrowRegion(%struct.element* %centerElementPtr, %struct.region* %regionPtr, %struct.mesh* %meshPtr, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %1 = alloca %struct.element*, align 8
  %2 = alloca %struct.element*, align 8
  %3 = alloca %struct.region*, align 8
  %4 = alloca %struct.mesh*, align 8
  %5 = alloca %struct.jsw_avltree*, align 8
  %isBoundary = alloca i64, align 8
  %beforeListPtr = alloca %struct.list*, align 8
  %borderListPtr = alloca %struct.list*, align 8
  %expandQueuePtr = alloca %struct.queue*, align 8
  %centerCoordinate = alloca %struct.coordinate, align 8
  %centerCoordinatePtr = alloca %struct.coordinate*, align 8
  %currentElementPtr = alloca %struct.element*, align 8
  %neighborListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %neighborElementPtr = alloca %struct.element*, align 8
  %isSuccess = alloca i64, align 8
  %borderEdgePtr = alloca %struct.pair*, align 8
  %success = alloca i64, align 8
  %searchPair = alloca %struct.pair, align 8
  %6 = alloca i64, align 8
  %success1 = alloca i64, align 8
  %insertPtr = alloca %struct.pair*, align 8
  %7 = alloca i64, align 8
  store %struct.element* %centerElementPtr, %struct.element** %2, align 8
  store %struct.region* %regionPtr, %struct.region** %3, align 8
  store %struct.mesh* %meshPtr, %struct.mesh** %4, align 8
  store %struct.jsw_avltree* %edgeMapPtr, %struct.jsw_avltree** %5, align 8
  store i64 0, i64* %isBoundary, align 8
  %8 = load %struct.element*, %struct.element** %2, align 8
  %9 = call i64 @element_getNumEdge(%struct.element* %8)
  %10 = icmp eq i64 %9, 1
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store i64 1, i64* %isBoundary, align 8
  br label %12

; <label>:12                                      ; preds = %11, %0
  %13 = load %struct.region*, %struct.region** %3, align 8
  %14 = getelementptr inbounds %struct.region, %struct.region* %13, i32 0, i32 2
  %15 = load %struct.list*, %struct.list** %14, align 8
  store %struct.list* %15, %struct.list** %beforeListPtr, align 8
  %16 = load %struct.region*, %struct.region** %3, align 8
  %17 = getelementptr inbounds %struct.region, %struct.region* %16, i32 0, i32 3
  %18 = load %struct.list*, %struct.list** %17, align 8
  store %struct.list* %18, %struct.list** %borderListPtr, align 8
  %19 = load %struct.region*, %struct.region** %3, align 8
  %20 = getelementptr inbounds %struct.region, %struct.region* %19, i32 0, i32 1
  %21 = load %struct.queue*, %struct.queue** %20, align 8
  store %struct.queue* %21, %struct.queue** %expandQueuePtr, align 8
  %22 = load %struct.list*, %struct.list** %beforeListPtr, align 8
  call void @Plist_clear(%struct.list* %22)
  %23 = load %struct.list*, %struct.list** %borderListPtr, align 8
  call void @Plist_clear(%struct.list* %23)
  %24 = load %struct.queue*, %struct.queue** %expandQueuePtr, align 8
  call void @queue_clear(%struct.queue* %24)
  %25 = load %struct.element*, %struct.element** %2, align 8
  %26 = call { double, double } @element_getNewPoint(%struct.element* %25)
  %27 = bitcast %struct.coordinate* %centerCoordinate to { double, double }*
  %28 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 0
  %29 = extractvalue { double, double } %26, 0
  store double %29, double* %28, align 8
  %30 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 1
  %31 = extractvalue { double, double } %26, 1
  store double %31, double* %30, align 8
  store %struct.coordinate* %centerCoordinate, %struct.coordinate** %centerCoordinatePtr, align 8
  %32 = load %struct.queue*, %struct.queue** %expandQueuePtr, align 8
  %33 = load %struct.element*, %struct.element** %2, align 8
  %34 = bitcast %struct.element* %33 to i8*
  %35 = call i64 @Pqueue_push(%struct.queue* %32, i8* %34)
  br label %36

; <label>:36                                      ; preds = %139, %12
  %37 = load %struct.queue*, %struct.queue** %expandQueuePtr, align 8
  %38 = call i64 @queue_isEmpty(%struct.queue* %37)
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %140

; <label>:41                                      ; preds = %36
  %42 = load %struct.queue*, %struct.queue** %expandQueuePtr, align 8
  %43 = call i8* @queue_pop(%struct.queue* %42)
  %44 = bitcast i8* %43 to %struct.element*
  store %struct.element* %44, %struct.element** %currentElementPtr, align 8
  %45 = load %struct.list*, %struct.list** %beforeListPtr, align 8
  %46 = load %struct.element*, %struct.element** %currentElementPtr, align 8
  %47 = bitcast %struct.element* %46 to i8*
  %48 = call i64 @Plist_insert(%struct.list* %45, i8* %47)
  %49 = load %struct.element*, %struct.element** %currentElementPtr, align 8
  %50 = call %struct.list* @element_getNeighborListPtr(%struct.element* %49)
  store %struct.list* %50, %struct.list** %neighborListPtr, align 8
  %51 = load %struct.list*, %struct.list** %neighborListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %51)
  br label %52

; <label>:52                                      ; preds = %138, %41
  %53 = load %struct.list*, %struct.list** %neighborListPtr, align 8
  %54 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %53) #8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %139

; <label>:56                                      ; preds = %52
  %57 = load %struct.list*, %struct.list** %neighborListPtr, align 8
  %58 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %57)
  %59 = bitcast i8* %58 to %struct.element*
  store %struct.element* %59, %struct.element** %neighborElementPtr, align 8
  %60 = load %struct.element*, %struct.element** %neighborElementPtr, align 8
  %61 = call i64 @TMelement_isGarbage(%struct.element* %60)
  %62 = load %struct.list*, %struct.list** %beforeListPtr, align 8
  %63 = load %struct.element*, %struct.element** %neighborElementPtr, align 8
  %64 = bitcast %struct.element* %63 to i8*
  %65 = call i8* @list_find(%struct.list* %62, i8* %64) #8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %138, label %67

; <label>:67                                      ; preds = %56
  %68 = load %struct.element*, %struct.element** %neighborElementPtr, align 8
  %69 = load %struct.coordinate*, %struct.coordinate** %centerCoordinatePtr, align 8
  %70 = call i64 @element_isInCircumCircle(%struct.element* %68, %struct.coordinate* %69) #8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %93

; <label>:72                                      ; preds = %67
  %73 = load i64, i64* %isBoundary, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

; <label>:75                                      ; preds = %72
  %76 = load %struct.element*, %struct.element** %neighborElementPtr, align 8
  %77 = call i64 @element_getNumEdge(%struct.element* %76)
  %78 = icmp eq i64 %77, 1
  br i1 %78, label %79, label %81

; <label>:79                                      ; preds = %75
  %80 = load %struct.element*, %struct.element** %neighborElementPtr, align 8
  store %struct.element* %80, %struct.element** %1, align 8
  br label %141

; <label>:81                                      ; preds = %75, %72
  %82 = load %struct.queue*, %struct.queue** %expandQueuePtr, align 8
  %83 = load %struct.element*, %struct.element** %neighborElementPtr, align 8
  %84 = bitcast %struct.element* %83 to i8*
  %85 = call i64 @Pqueue_push(%struct.queue* %82, i8* %84)
  store i64 %85, i64* %isSuccess, align 8
  %86 = load i64, i64* %isSuccess, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %81
  br label %91

; <label>:89                                      ; preds = %81
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 295, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.TMgrowRegion, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %91

; <label>:91                                      ; preds = %90, %88
  br label %92

; <label>:92                                      ; preds = %91
  br label %137

; <label>:93                                      ; preds = %67
  %94 = load %struct.element*, %struct.element** %neighborElementPtr, align 8
  %95 = load %struct.element*, %struct.element** %currentElementPtr, align 8
  %96 = call %struct.pair* @element_getCommonEdge(%struct.element* %94, %struct.element* %95) #8
  store %struct.pair* %96, %struct.pair** %borderEdgePtr, align 8
  %97 = load %struct.pair*, %struct.pair** %borderEdgePtr, align 8
  %98 = icmp ne %struct.pair* %97, null
  br i1 %98, label %100, label %99

; <label>:99                                      ; preds = %93
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !1
  br label %100

; <label>:100                                     ; preds = %99, %93
  %101 = load %struct.list*, %struct.list** %borderListPtr, align 8
  %102 = load %struct.pair*, %struct.pair** %borderEdgePtr, align 8
  %103 = bitcast %struct.pair* %102 to i8*
  %104 = call i64 @Plist_insert(%struct.list* %101, i8* %103)
  store i64 0, i64* %success, align 8
  %105 = load %struct.pair*, %struct.pair** %borderEdgePtr, align 8
  %106 = bitcast %struct.pair* %105 to i8*
  %107 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair, i32 0, i32 0
  store i8* %106, i8** %107, align 8
  %108 = load %struct.jsw_avltree*, %struct.jsw_avltree** %5, align 8
  %109 = bitcast %struct.pair* %searchPair to i8*
  %110 = call i8* @jsw_avlfind(%struct.jsw_avltree* %108, i8* %109)
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %100
  store i64 1, i64* %success, align 8
  br label %113

; <label>:113                                     ; preds = %112, %100
  %114 = load i64, i64* %success, align 8
  store i64 %114, i64* %6, align 8
  %115 = load i64, i64* %6, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %136, label %117

; <label>:117                                     ; preds = %113
  store i64 0, i64* %success1, align 8
  %118 = load %struct.pair*, %struct.pair** %borderEdgePtr, align 8
  %119 = bitcast %struct.pair* %118 to i8*
  %120 = load %struct.element*, %struct.element** %neighborElementPtr, align 8
  %121 = bitcast %struct.element* %120 to i8*
  %122 = call %struct.pair* @Ppair_alloc(i8* %119, i8* %121)
  store %struct.pair* %122, %struct.pair** %insertPtr, align 8
  %123 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %124 = icmp ne %struct.pair* %123, null
  br i1 %124, label %125, label %133

; <label>:125                                     ; preds = %117
  %126 = load %struct.jsw_avltree*, %struct.jsw_avltree** %5, align 8
  %127 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %128 = bitcast %struct.pair* %127 to i8*
  %129 = call i64 @Pjsw_avlinsert(%struct.jsw_avltree* %126, i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

; <label>:131                                     ; preds = %125
  store i64 1, i64* %success1, align 8
  br label %132

; <label>:132                                     ; preds = %131, %125
  br label %133

; <label>:133                                     ; preds = %132, %117
  %134 = load i64, i64* %success1, align 8
  store i64 %134, i64* %7, align 8
  %135 = load i64, i64* %7, align 8
  br label %136

; <label>:136                                     ; preds = %133, %113
  br label %137

; <label>:137                                     ; preds = %136, %92
  br label %138

; <label>:138                                     ; preds = %137, %56
  br label %52

; <label>:139                                     ; preds = %52
  br label %36

; <label>:140                                     ; preds = %36
  store %struct.element* null, %struct.element** %1, align 8
  br label %141

; <label>:141                                     ; preds = %140, %79
  %142 = load %struct.element*, %struct.element** %1, align 8
  ret %struct.element* %142
}

declare void @Plist_clear(%struct.list*) #2

declare void @queue_clear(%struct.queue*) #2

declare i64 @Pqueue_push(%struct.queue*, i8*) #2

declare i64 @queue_isEmpty(%struct.queue*) #2

declare i8* @queue_pop(%struct.queue*) #2

declare i64 @Plist_insert(%struct.list*, i8*) #2

declare %struct.list* @element_getNeighborListPtr(%struct.element*) #2

declare void @TMlist_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @TMlist_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @TMlist_iter_next(%struct.list_node**, %struct.list*) #2

declare i64 @TMelement_isGarbage(%struct.element*) #2

; Function Attrs: nounwind readonly
declare i8* @list_find(%struct.list*, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @element_isInCircumCircle(%struct.element*, %struct.coordinate*) #4

; Function Attrs: nounwind readonly
declare %struct.pair* @element_getCommonEdge(%struct.element*, %struct.element*) #4

declare i8* @jsw_avlfind(%struct.jsw_avltree*, i8*) #2

declare %struct.pair* @Ppair_alloc(i8*, i8*) #2

declare i64 @Pjsw_avlinsert(%struct.jsw_avltree*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @TMregion_refine(%struct.region* %regionPtr, %struct.element* %elementPtr, %struct.mesh* %meshPtr) #0 {
  %1 = alloca %struct.region*, align 8
  %2 = alloca %struct.element*, align 8
  %3 = alloca %struct.mesh*, align 8
  %numDelta = alloca i64, align 8
  %edgeMapPtr = alloca %struct.jsw_avltree*, align 8
  %encroachElementPtr = alloca %struct.element*, align 8
  store %struct.region* %regionPtr, %struct.region** %1, align 8
  store %struct.element* %elementPtr, %struct.element** %2, align 8
  store %struct.mesh* %meshPtr, %struct.mesh** %3, align 8
  store i64 0, i64* %numDelta, align 8
  store %struct.jsw_avltree* null, %struct.jsw_avltree** %edgeMapPtr, align 8
  store %struct.element* null, %struct.element** %encroachElementPtr, align 8
  %4 = load %struct.element*, %struct.element** %2, align 8
  %5 = call i64 @TMelement_isGarbage(%struct.element* %4)
  br label %6

; <label>:6                                       ; preds = %35, %0
  %7 = call %struct.jsw_avltree* @Pjsw_avlnew(i64 (i8*, i8*)* bitcast (i64 (%struct.pair*, %struct.pair*)* @element_mapCompareEdge to i64 (i8*, i8*)*))
  store %struct.jsw_avltree* %7, %struct.jsw_avltree** %edgeMapPtr, align 8
  %8 = load %struct.jsw_avltree*, %struct.jsw_avltree** %edgeMapPtr, align 8
  %9 = icmp ne %struct.jsw_avltree* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  br label %13

; <label>:11                                      ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 337, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.TMregion_refine, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = load %struct.element*, %struct.element** %2, align 8
  %15 = load %struct.region*, %struct.region** %1, align 8
  %16 = load %struct.mesh*, %struct.mesh** %3, align 8
  %17 = load %struct.jsw_avltree*, %struct.jsw_avltree** %edgeMapPtr, align 8
  %18 = call %struct.element* @TMgrowRegion(%struct.element* %14, %struct.region* %15, %struct.mesh* %16, %struct.jsw_avltree* %17)
  store %struct.element* %18, %struct.element** %encroachElementPtr, align 8
  %19 = load %struct.element*, %struct.element** %encroachElementPtr, align 8
  %20 = icmp ne %struct.element* %19, null
  br i1 %20, label %21, label %34

; <label>:21                                      ; preds = %13
  %22 = load %struct.element*, %struct.element** %encroachElementPtr, align 8
  call void @TMelement_setIsReferenced(%struct.element* %22, i64 1)
  %23 = load %struct.region*, %struct.region** %1, align 8
  %24 = load %struct.element*, %struct.element** %encroachElementPtr, align 8
  %25 = load %struct.mesh*, %struct.mesh** %3, align 8
  %26 = call i64 @TMregion_refine(%struct.region* %23, %struct.element* %24, %struct.mesh* %25)
  %27 = load i64, i64* %numDelta, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %numDelta, align 8
  %29 = load %struct.element*, %struct.element** %2, align 8
  %30 = call i64 @TMelement_isGarbage(%struct.element* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %21
  br label %37

; <label>:33                                      ; preds = %21
  br label %35

; <label>:34                                      ; preds = %13
  br label %37

; <label>:35                                      ; preds = %33
  %36 = load %struct.jsw_avltree*, %struct.jsw_avltree** %edgeMapPtr, align 8
  call void @Pjsw_avldelete(%struct.jsw_avltree* %36)
  br label %6

; <label>:37                                      ; preds = %34, %32
  %38 = load %struct.element*, %struct.element** %2, align 8
  %39 = call i64 @TMelement_isGarbage(%struct.element* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %49, label %41

; <label>:41                                      ; preds = %37
  %42 = load %struct.element*, %struct.element** %2, align 8
  %43 = load %struct.region*, %struct.region** %1, align 8
  %44 = load %struct.mesh*, %struct.mesh** %3, align 8
  %45 = load %struct.jsw_avltree*, %struct.jsw_avltree** %edgeMapPtr, align 8
  %46 = call i64 @TMretriangulate(%struct.element* %42, %struct.region* %43, %struct.mesh* %44, %struct.jsw_avltree* %45)
  %47 = load i64, i64* %numDelta, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %numDelta, align 8
  br label %49

; <label>:49                                      ; preds = %41, %37
  %50 = load %struct.jsw_avltree*, %struct.jsw_avltree** %edgeMapPtr, align 8
  call void @Pjsw_avldelete(%struct.jsw_avltree* %50)
  %51 = load i64, i64* %numDelta, align 8
  ret i64 %51
}

declare %struct.jsw_avltree* @Pjsw_avlnew(i64 (i8*, i8*)*) #2

declare i64 @element_mapCompareEdge(%struct.pair*, %struct.pair*) #2

declare void @Pjsw_avldelete(%struct.jsw_avltree*) #2

; Function Attrs: nounwind uwtable
define void @Pregion_clearBad(%struct.region* %regionPtr) #0 {
  %1 = alloca %struct.region*, align 8
  store %struct.region* %regionPtr, %struct.region** %1, align 8
  %2 = load %struct.region*, %struct.region** %1, align 8
  %3 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 4
  %4 = load %struct.vector*, %struct.vector** %3, align 8
  call void @vector_clear(%struct.vector* %4)
  ret void
}

declare void @vector_clear(%struct.vector*) #2

; Function Attrs: nounwind uwtable
define void @TMregion_transferBad(%struct.region* %regionPtr, %struct.heap* %workHeapPtr) #0 {
  %1 = alloca %struct.region*, align 8
  %2 = alloca %struct.heap*, align 8
  %badVectorPtr = alloca %struct.vector*, align 8
  %numBad = alloca i64, align 8
  %i = alloca i64, align 8
  %badElementPtr = alloca %struct.element*, align 8
  %status = alloca i64, align 8
  store %struct.region* %regionPtr, %struct.region** %1, align 8
  store %struct.heap* %workHeapPtr, %struct.heap** %2, align 8
  %3 = load %struct.region*, %struct.region** %1, align 8
  %4 = getelementptr inbounds %struct.region, %struct.region* %3, i32 0, i32 4
  %5 = load %struct.vector*, %struct.vector** %4, align 8
  store %struct.vector* %5, %struct.vector** %badVectorPtr, align 8
  %6 = load %struct.vector*, %struct.vector** %badVectorPtr, align 8
  %7 = call i64 @vector_getSize(%struct.vector* %6)
  store i64 %7, i64* %numBad, align 8
  store i64 0, i64* %i, align 8
  br label %__kernel__TMregion_transferBad0

__kernel__TMregion_transferBad0:                  ; preds = %32, %0
  %8 = load i64, i64* %i, align 8
  %9 = load i64, i64* %numBad, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %35

; <label>:11                                      ; preds = %__kernel__TMregion_transferBad0
  %12 = load %struct.vector*, %struct.vector** %badVectorPtr, align 8
  %13 = load i64, i64* %i, align 8
  %14 = call i8* @vector_at(%struct.vector* %12, i64 %13)
  %15 = bitcast i8* %14 to %struct.element*
  store %struct.element* %15, %struct.element** %badElementPtr, align 8
  %16 = load %struct.element*, %struct.element** %badElementPtr, align 8
  %17 = call i64 @TMelement_isGarbage(%struct.element* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %11
  br label %31

; <label>:20                                      ; preds = %11
  %21 = load %struct.heap*, %struct.heap** %2, align 8
  %22 = load %struct.element*, %struct.element** %badElementPtr, align 8
  %23 = bitcast %struct.element* %22 to i8*
  %24 = call i64 @TMheap_insert(%struct.heap* %21, i8* %23)
  store i64 %24, i64* %status, align 8
  %25 = load i64, i64* %status, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %20
  br label %30

; <label>:28                                      ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 406, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.TMregion_transferBad, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  br label %31

; <label>:31                                      ; preds = %30, %19
  br label %32

; <label>:32                                      ; preds = %31
  %33 = load i64, i64* %i, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %i, align 8
  br label %__kernel__TMregion_transferBad0, !llvm.loop !2

; <label>:35                                      ; preds = %__kernel__TMregion_transferBad0
  ret void
}

declare i64 @vector_getSize(%struct.vector*) #2

declare i8* @vector_at(%struct.vector*, i64) #2

declare i64 @TMheap_insert(%struct.heap*, i8*) #2

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
!1 = !{i32 -2145662609}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.vectorize.width", i32 1337}
