; ModuleID = '../bin/region.tm-gran.ll'
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
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 48) #7
  %2 = bitcast i8* %1 to %struct.region*
  %3 = icmp ne %struct.region* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %41

; <label>:4                                       ; preds = %0
  %5 = call %struct.queue* @Pqueue_alloc(i64 -1)
  %6 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 1
  store %struct.queue* %5, %struct.queue** %6, align 8
  %7 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 1
  %8 = load %struct.queue*, %struct.queue** %7, align 8
  %9 = icmp ne %struct.queue* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %4
  br label %13

; <label>:11                                      ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = call %struct.list* @Plist_alloc(i64 (i8*, i8*)* @element_listCompare)
  %15 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 2
  store %struct.list* %14, %struct.list** %15, align 8
  %16 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 2
  %17 = load %struct.list*, %struct.list** %16, align 8
  %18 = icmp ne %struct.list* %17, null
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %13
  br label %22

; <label>:20                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = call %struct.list* @Plist_alloc(i64 (i8*, i8*)* @element_listCompareEdge)
  %24 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 3
  store %struct.list* %23, %struct.list** %24, align 8
  %25 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 3
  %26 = load %struct.list*, %struct.list** %25, align 8
  %27 = icmp ne %struct.list* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %22
  br label %31

; <label>:29                                      ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %31

; <label>:31                                      ; preds = %30, %28
  %32 = call %struct.vector* @Pvector_alloc(i64 1)
  %33 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 4
  store %struct.vector* %32, %struct.vector** %33, align 8
  %34 = getelementptr inbounds %struct.region, %struct.region* %2, i32 0, i32 4
  %35 = load %struct.vector*, %struct.vector** %34, align 8
  %36 = icmp ne %struct.vector* %35, null
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %31
  br label %40

; <label>:38                                      ; preds = %31
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %40

; <label>:40                                      ; preds = %39, %37
  br label %41

; <label>:41                                      ; preds = %40, %._crit_edge
  ret %struct.region* %2
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
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 4
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  call void @Pvector_free(%struct.vector* %2)
  %3 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 3
  %4 = load %struct.list*, %struct.list** %3, align 8
  call void @Plist_free(%struct.list* %4)
  %5 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 2
  %6 = load %struct.list*, %struct.list** %5, align 8
  call void @Plist_free(%struct.list* %6)
  %7 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 1
  %8 = load %struct.queue*, %struct.queue** %7, align 8
  call void @Pqueue_free(%struct.queue* %8)
  %9 = bitcast %struct.region* %regionPtr to i8*
  call void @free(i8* %9) #7
  ret void
}

declare void @Pvector_free(%struct.vector*) #2

declare void @Plist_free(%struct.list*) #2

declare void @Pqueue_free(%struct.queue*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @TMaddToBadVector(%struct.vector* %badVectorPtr, %struct.element* %badElementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast %struct.element* %badElementPtr to i8*
  %2 = call i64 @Pvector_pushBack(%struct.vector* %badVectorPtr, i8* %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %7

; <label>:5                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 141, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.TMaddToBadVector, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %6, %4
  call void @TMelement_setIsReferenced(%struct.element* %badElementPtr, i64 1)
  ret void
}

declare i64 @Pvector_pushBack(%struct.vector*, i8*) #2

declare void @TMelement_setIsReferenced(%struct.element*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @TMretriangulate(%struct.element* %elementPtr, %struct.region* %regionPtr, %struct.mesh* %meshPtr, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %centerCoordinate = alloca %struct.coordinate, align 8
  %coordinates = alloca [2 x %struct.coordinate], align 16
  %coordinates1 = alloca [3 x %struct.coordinate], align 16
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 4
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 2
  %4 = load %struct.list*, %struct.list** %3, align 8
  %5 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 3
  %6 = load %struct.list*, %struct.list** %5, align 8
  %7 = icmp ne %struct.jsw_avltree* %edgeMapPtr, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %11

; <label>:9                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 164, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  %12 = call { double, double } @element_getNewPoint(%struct.element* %elementPtr)
  %13 = bitcast %struct.coordinate* %centerCoordinate to { double, double }*
  %14 = getelementptr inbounds { double, double }, { double, double }* %13, i32 0, i32 0
  %15 = extractvalue { double, double } %12, 0
  store double %15, double* %14, align 8
  %16 = getelementptr inbounds { double, double }, { double, double }* %13, i32 0, i32 1
  %17 = extractvalue { double, double } %12, 1
  store double %17, double* %16, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %4)
  br label %18

; <label>:18                                      ; preds = %21, %11
  %19 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %4) #9
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %18
  %22 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %4)
  %23 = bitcast i8* %22 to %struct.element*
  call void @TMmesh_remove(%struct.mesh* %meshPtr, %struct.element* %23)
  br label %18

; <label>:24                                      ; preds = %18
  %25 = call i64 @list_getSize(%struct.list* %4)
  %26 = sub nsw i64 0, %25
  %27 = call i64 @element_getNumEdge(%struct.element* %elementPtr)
  %28 = icmp eq i64 %27, 1
  br i1 %28, label %29, label %._crit_edge

._crit_edge:                                      ; preds = %24
  br label %82

; <label>:29                                      ; preds = %24
  %30 = call %struct.pair* @element_getEdge(%struct.element* %elementPtr, i64 0)
  %31 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i64 0, i64 0
  %32 = bitcast %struct.coordinate* %31 to i8*
  %33 = bitcast %struct.coordinate* %centerCoordinate to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false)
  %34 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i64 0, i64 1
  %35 = getelementptr inbounds %struct.pair, %struct.pair* %30, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.coordinate*
  %38 = bitcast %struct.coordinate* %34 to i8*
  %39 = bitcast %struct.coordinate* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 16, i32 8, i1 false)
  %40 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i32 0, i32 0
  %41 = call %struct.element* @TMelement_alloc(%struct.coordinate* %40, i64 2)
  %42 = icmp ne %struct.element* %41, null
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %29
  br label %46

; <label>:44                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %46

; <label>:46                                      ; preds = %45, %43
  call void @TMmesh_insert(%struct.mesh* %meshPtr, %struct.element* %41, %struct.jsw_avltree* %edgeMapPtr)
  %47 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i64 0, i64 1
  %48 = getelementptr inbounds %struct.pair, %struct.pair* %30, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = bitcast i8* %49 to %struct.coordinate*
  %51 = bitcast %struct.coordinate* %47 to i8*
  %52 = bitcast %struct.coordinate* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 16, i32 8, i1 false)
  %53 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i32 0, i32 0
  %54 = call %struct.element* @TMelement_alloc(%struct.coordinate* %53, i64 2)
  %55 = icmp ne %struct.element* %54, null
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %46
  br label %59

; <label>:57                                      ; preds = %46
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 199, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  call void @TMmesh_insert(%struct.mesh* %meshPtr, %struct.element* %54, %struct.jsw_avltree* %edgeMapPtr)
  %60 = call %struct.pair* @element_getEdge(%struct.element* %elementPtr, i64 0)
  %61 = call i64 @TMmesh_removeBoundary(%struct.mesh* %meshPtr, %struct.pair* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %59
  br label %66

; <label>:64                                      ; preds = %59
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 204, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %66

; <label>:66                                      ; preds = %65, %63
  %67 = call %struct.pair* @element_getEdge(%struct.element* %41, i64 0)
  %68 = call i64 @TMmesh_insertBoundary(%struct.mesh* %meshPtr, %struct.pair* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %66
  br label %73

; <label>:71                                      ; preds = %66
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 206, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %73

; <label>:73                                      ; preds = %72, %70
  %74 = call %struct.pair* @element_getEdge(%struct.element* %54, i64 0)
  %75 = call i64 @TMmesh_insertBoundary(%struct.mesh* %meshPtr, %struct.pair* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %73
  br label %80

; <label>:78                                      ; preds = %73
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 208, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %80

; <label>:80                                      ; preds = %79, %77
  %81 = add nsw i64 %26, 2
  br label %82

; <label>:82                                      ; preds = %80, %._crit_edge
  %numDelta.0 = phi i64 [ %81, %80 ], [ %26, %._crit_edge ]
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %6)
  %83 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i64 0, i64 0
  %84 = bitcast %struct.coordinate* %83 to i8*
  %85 = bitcast %struct.coordinate* %centerCoordinate to i8*
  %86 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i64 0, i64 1
  %87 = bitcast %struct.coordinate* %86 to i8*
  %88 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i64 0, i64 2
  %89 = bitcast %struct.coordinate* %88 to i8*
  %90 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i32 0, i32 0
  br label %91

; <label>:91                                      ; preds = %119, %82
  %92 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %6) #9
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %120

; <label>:94                                      ; preds = %91
  %95 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %6)
  %96 = bitcast i8* %95 to %struct.pair*
  %97 = icmp ne %struct.pair* %96, null
  br i1 %97, label %98, label %99

; <label>:98                                      ; preds = %94
  br label %101

; <label>:99                                      ; preds = %94
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 223, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:101                                     ; preds = %98
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 16, i32 8, i1 false)
  %102 = getelementptr inbounds %struct.pair, %struct.pair* %96, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = bitcast i8* %103 to %struct.coordinate*
  %105 = bitcast %struct.coordinate* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %105, i64 16, i32 8, i1 false)
  %106 = getelementptr inbounds %struct.pair, %struct.pair* %96, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = bitcast i8* %107 to %struct.coordinate*
  %109 = bitcast %struct.coordinate* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %109, i64 16, i32 8, i1 false)
  %110 = call %struct.element* @TMelement_alloc(%struct.coordinate* %90, i64 3)
  %111 = icmp ne %struct.element* %110, null
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %101
  br label %115

; <label>:113                                     ; preds = %101
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 228, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:115                                     ; preds = %112
  call void @TMmesh_insert(%struct.mesh* %meshPtr, %struct.element* %110, %struct.jsw_avltree* %edgeMapPtr)
  %116 = call i64 @element_isBad(%struct.element* %110)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %._crit_edge1

._crit_edge1:                                     ; preds = %115
  br label %119

; <label>:118                                     ; preds = %115
  call void @TMaddToBadVector(%struct.vector* %2, %struct.element* %110)
  br label %119

; <label>:119                                     ; preds = %118, %._crit_edge1
  br label %91

; <label>:120                                     ; preds = %91
  %121 = call i64 @list_getSize(%struct.list* %6)
  %122 = add nsw i64 %numDelta.0, %121
  ret i64 %122
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
  %centerCoordinate = alloca %struct.coordinate, align 8
  %it = alloca %struct.list_node*, align 8
  %searchPair = alloca %struct.pair, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @element_getNumEdge(%struct.element* %centerElementPtr)
  %2 = icmp eq i64 %1, 1
  br i1 %2, label %3, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %4

; <label>:3                                       ; preds = %0
  br label %4

; <label>:4                                       ; preds = %3, %._crit_edge
  %isBoundary.0 = phi i64 [ 1, %3 ], [ 0, %._crit_edge ]
  %5 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 2
  %6 = load %struct.list*, %struct.list** %5, align 8
  %7 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 3
  %8 = load %struct.list*, %struct.list** %7, align 8
  %9 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 1
  %10 = load %struct.queue*, %struct.queue** %9, align 8
  call void @Plist_clear(%struct.list* %6)
  call void @Plist_clear(%struct.list* %8)
  call void @queue_clear(%struct.queue* %10)
  %11 = call { double, double } @element_getNewPoint(%struct.element* %centerElementPtr)
  %12 = bitcast %struct.coordinate* %centerCoordinate to { double, double }*
  %13 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  %14 = extractvalue { double, double } %11, 0
  store double %14, double* %13, align 8
  %15 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  %16 = extractvalue { double, double } %11, 1
  store double %16, double* %15, align 8
  %17 = bitcast %struct.element* %centerElementPtr to i8*
  %18 = call i64 @Pqueue_push(%struct.queue* %10, i8* %17)
  %19 = icmp ne i64 %isBoundary.0, 0
  %20 = getelementptr inbounds %struct.pair, %struct.pair* %searchPair, i32 0, i32 0
  %21 = bitcast %struct.pair* %searchPair to i8*
  br label %22

; <label>:22                                      ; preds = %87, %4
  %23 = call i64 @queue_isEmpty(%struct.queue* %10)
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %88

; <label>:26                                      ; preds = %22
  %27 = call i8* @queue_pop(%struct.queue* %10)
  %28 = bitcast i8* %27 to %struct.element*
  %29 = bitcast %struct.element* %28 to i8*
  %30 = call i64 @Plist_insert(%struct.list* %6, i8* %29)
  %31 = call %struct.list* @element_getNeighborListPtr(%struct.element* %28)
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %31)
  br label %32

; <label>:32                                      ; preds = %86, %26
  %33 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %31) #9
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %87

; <label>:35                                      ; preds = %32
  %36 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %31)
  %37 = bitcast i8* %36 to %struct.element*
  %38 = call i64 @TMelement_isGarbage(%struct.element* %37)
  %39 = bitcast %struct.element* %37 to i8*
  %40 = call i8* @list_find(%struct.list* %6, i8* %39) #9
  %41 = icmp ne i8* %40, null
  br i1 %41, label %._crit_edge1, label %42

._crit_edge1:                                     ; preds = %35
  br label %86

; <label>:42                                      ; preds = %35
  %43 = call i64 @element_isInCircumCircle(%struct.element* %37, %struct.coordinate* %centerCoordinate) #9
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

; <label>:45                                      ; preds = %42
  br i1 %19, label %._crit_edge2, label %46

._crit_edge2:                                     ; preds = %45
  br label %50

; <label>:46                                      ; preds = %45
  %47 = call i64 @element_getNumEdge(%struct.element* %37)
  %48 = icmp eq i64 %47, 1
  br i1 %48, label %49, label %._crit_edge3

._crit_edge3:                                     ; preds = %46
  br label %50

; <label>:49                                      ; preds = %46
  br label %89

; <label>:50                                      ; preds = %._crit_edge3, %._crit_edge2
  %51 = bitcast %struct.element* %37 to i8*
  %52 = call i64 @Pqueue_push(%struct.queue* %10, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %50
  br label %57

; <label>:55                                      ; preds = %50
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 295, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.TMgrowRegion, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:57                                      ; preds = %54
  br label %58

; <label>:58                                      ; preds = %57
  br label %85

; <label>:59                                      ; preds = %42
  %60 = call %struct.pair* @element_getCommonEdge(%struct.element* %37, %struct.element* %28) #9
  %61 = icmp ne %struct.pair* %60, null
  br i1 %61, label %._crit_edge4, label %62

._crit_edge4:                                     ; preds = %59
  br label %63

; <label>:62                                      ; preds = %59
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #7, !srcloc !1
  br label %63

; <label>:63                                      ; preds = %62, %._crit_edge4
  %64 = bitcast %struct.pair* %60 to i8*
  %65 = call i64 @Plist_insert(%struct.list* %8, i8* %64)
  %66 = bitcast %struct.pair* %60 to i8*
  store i8* %66, i8** %20, align 8
  %67 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %21)
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %._crit_edge5

._crit_edge5:                                     ; preds = %63
  br label %70

; <label>:69                                      ; preds = %63
  br label %70

; <label>:70                                      ; preds = %69, %._crit_edge5
  %success.0 = phi i64 [ 1, %69 ], [ 0, %._crit_edge5 ]
  %71 = icmp ne i64 %success.0, 0
  br i1 %71, label %._crit_edge6, label %72

._crit_edge6:                                     ; preds = %70
  br label %84

; <label>:72                                      ; preds = %70
  %73 = bitcast %struct.pair* %60 to i8*
  %74 = bitcast %struct.element* %37 to i8*
  %75 = call %struct.pair* @Ppair_alloc(i8* %73, i8* %74)
  %76 = icmp ne %struct.pair* %75, null
  br i1 %76, label %77, label %._crit_edge7

._crit_edge7:                                     ; preds = %72
  br label %83

; <label>:77                                      ; preds = %72
  %78 = bitcast %struct.pair* %75 to i8*
  %79 = call i64 @Pjsw_avlinsert(%struct.jsw_avltree* %edgeMapPtr, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %._crit_edge8

._crit_edge8:                                     ; preds = %77
  br label %82

; <label>:81                                      ; preds = %77
  br label %82

; <label>:82                                      ; preds = %81, %._crit_edge8
  %success1.0 = phi i64 [ 1, %81 ], [ 0, %._crit_edge8 ]
  br label %83

; <label>:83                                      ; preds = %82, %._crit_edge7
  %success1.1 = phi i64 [ %success1.0, %82 ], [ 0, %._crit_edge7 ]
  br label %84

; <label>:84                                      ; preds = %83, %._crit_edge6
  br label %85

; <label>:85                                      ; preds = %84, %58
  br label %86

; <label>:86                                      ; preds = %85, %._crit_edge1
  br label %32

; <label>:87                                      ; preds = %32
  br label %22

; <label>:88                                      ; preds = %22
  br label %89

; <label>:89                                      ; preds = %88, %49
  %.0 = phi %struct.element* [ %37, %49 ], [ null, %88 ]
  ret %struct.element* %.0
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
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @TMelement_isGarbage(%struct.element* %elementPtr)
  br label %2

; <label>:2                                       ; preds = %19, %0
  %numDelta.0 = phi i64 [ 0, %0 ], [ %13, %19 ]
  %3 = call %struct.jsw_avltree* @Pjsw_avlnew(i64 (i8*, i8*)* bitcast (i64 (%struct.pair*, %struct.pair*)* @element_mapCompareEdge to i64 (i8*, i8*)*))
  %4 = icmp ne %struct.jsw_avltree* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %2
  br label %8

; <label>:6                                       ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 337, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.TMregion_refine, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:8                                       ; preds = %5
  %9 = call %struct.element* @TMgrowRegion(%struct.element* %elementPtr, %struct.region* %regionPtr, %struct.mesh* %meshPtr, %struct.jsw_avltree* %3)
  %10 = icmp ne %struct.element* %9, null
  br i1 %10, label %11, label %18

; <label>:11                                      ; preds = %8
  call void @TMelement_setIsReferenced(%struct.element* %9, i64 1)
  %12 = call i64 @TMregion_refine(%struct.region* %regionPtr, %struct.element* %9, %struct.mesh* %meshPtr)
  %13 = add nsw i64 %numDelta.0, %12
  %14 = call i64 @TMelement_isGarbage(%struct.element* %elementPtr)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %11
  br label %20

; <label>:17                                      ; preds = %11
  br label %19

; <label>:18                                      ; preds = %8
  br label %20

; <label>:19                                      ; preds = %17
  call void @Pjsw_avldelete(%struct.jsw_avltree* %3)
  br label %2

; <label>:20                                      ; preds = %18, %16
  %numDelta.1 = phi i64 [ %13, %16 ], [ %numDelta.0, %18 ]
  %21 = call i64 @TMelement_isGarbage(%struct.element* %elementPtr)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %._crit_edge, label %23

._crit_edge:                                      ; preds = %20
  br label %26

; <label>:23                                      ; preds = %20
  %24 = call i64 @TMretriangulate(%struct.element* %elementPtr, %struct.region* %regionPtr, %struct.mesh* %meshPtr, %struct.jsw_avltree* %3)
  %25 = add nsw i64 %numDelta.1, %24
  br label %26

; <label>:26                                      ; preds = %23, %._crit_edge
  %numDelta.2 = phi i64 [ %numDelta.1, %._crit_edge ], [ %25, %23 ]
  call void @Pjsw_avldelete(%struct.jsw_avltree* %3)
  ret i64 %numDelta.2
}

declare %struct.jsw_avltree* @Pjsw_avlnew(i64 (i8*, i8*)*) #2

declare i64 @element_mapCompareEdge(%struct.pair*, %struct.pair*) #2

declare void @Pjsw_avldelete(%struct.jsw_avltree*) #2

; Function Attrs: nounwind uwtable
define void @Pregion_clearBad(%struct.region* %regionPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 4
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  call void @vector_clear(%struct.vector* %2)
  ret void
}

declare void @vector_clear(%struct.vector*) #2

; Function Attrs: nounwind uwtable
define void @TMregion_transferBad(%struct.region* %regionPtr, %struct.heap* %workHeapPtr) #0 {
  %structArg = alloca { i64, %struct.vector*, %struct.heap* }
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i32 0, i32 4
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = call i64 @vector_getSize(%struct.vector* %2)
  br label %codeRepl

codeRepl:                                         ; preds = %0
  %gep_ = getelementptr { i64, %struct.vector*, %struct.heap* }, { i64, %struct.vector*, %struct.heap* }* %structArg, i32 0, i32 0
  store i64 %3, i64* %gep_
  %gep_1 = getelementptr { i64, %struct.vector*, %struct.heap* }, { i64, %struct.vector*, %struct.heap* }* %structArg, i32 0, i32 1
  store %struct.vector* %2, %struct.vector** %gep_1
  %gep_workHeapPtr = getelementptr { i64, %struct.vector*, %struct.heap* }, { i64, %struct.vector*, %struct.heap* }* %structArg, i32 0, i32 2
  store %struct.heap* %workHeapPtr, %struct.heap** %gep_workHeapPtr
  %targetBlock = call i1 @TMregion_transferBad___kernel__TMregion_transferBad0({ i64, %struct.vector*, %struct.heap* }* %structArg)
  br i1 %targetBlock, label %6, label %4

; <label>:4                                       ; preds = %codeRepl
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 406, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.TMregion_transferBad, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:6                                       ; preds = %codeRepl
  ret void
}

declare i64 @vector_getSize(%struct.vector*) #2

declare i8* @vector_at(%struct.vector*, i64) #2

declare i64 @TMheap_insert(%struct.heap*, i8*) #2

; Function Attrs: alwaysinline nounwind
define internal i1 @TMregion_transferBad___kernel__TMregion_transferBad0({ i64, %struct.vector*, %struct.heap* }*) #6 {
newFuncRoot:
  %gep_ = getelementptr { i64, %struct.vector*, %struct.heap* }, { i64, %struct.vector*, %struct.heap* }* %0, i32 0, i32 0
  %loadgep_ = load i64, i64* %gep_
  %gep_1 = getelementptr { i64, %struct.vector*, %struct.heap* }, { i64, %struct.vector*, %struct.heap* }* %0, i32 0, i32 1
  %loadgep_2 = load %struct.vector*, %struct.vector** %gep_1
  %gep_workHeapPtr = getelementptr { i64, %struct.vector*, %struct.heap* }, { i64, %struct.vector*, %struct.heap* }* %0, i32 0, i32 2
  %loadgep_workHeapPtr = load %struct.heap*, %struct.heap** %gep_workHeapPtr
  br label %__kernel__TMregion_transferBad0

.exitStub:                                        ; preds = %__kernel__TMregion_transferBad0
  ret i1 true

.exitStub3:                                       ; preds = %7
  ret i1 false

__kernel__TMregion_transferBad0:                  ; preds = %newFuncRoot, %15
  %i.0 = phi i64 [ 0, %newFuncRoot ], [ %16, %15 ]
  %1 = icmp slt i64 %i.0, %loadgep_
  br i1 %1, label %2, label %.exitStub

; <label>:2                                       ; preds = %__kernel__TMregion_transferBad0
  %3 = call i8* @vector_at(%struct.vector* %loadgep_2, i64 %i.0)
  %4 = bitcast i8* %3 to %struct.element*
  %5 = call i64 @TMelement_isGarbage(%struct.element* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %13, label %7

; <label>:7                                       ; preds = %2
  %8 = bitcast %struct.element* %4 to i8*
  %9 = call i64 @TMheap_insert(%struct.heap* %loadgep_workHeapPtr, i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %.exitStub3

; <label>:11                                      ; preds = %7
  br label %12

; <label>:12                                      ; preds = %11
  br label %14

; <label>:13                                      ; preds = %2
  br label %14

; <label>:14                                      ; preds = %12, %13
  br label %15

; <label>:15                                      ; preds = %14
  %16 = add nsw i64 %i.0, 1
  br label %__kernel__TMregion_transferBad0, !llvm.loop !2
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { alwaysinline nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145662609}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.vectorize.width", i32 1337}
