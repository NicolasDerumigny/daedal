; ModuleID = '../bin/region.ll'
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
define noalias %struct.region* @Pregion_alloc() #0 {
  %1 = tail call noalias i8* @malloc(i64 48) #6
  %2 = bitcast i8* %1 to %struct.region*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %28, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.queue* @Pqueue_alloc(i64 -1) #6
  %6 = getelementptr inbounds i8, i8* %1, i64 16
  %7 = bitcast i8* %6 to %struct.queue**
  store %struct.queue* %5, %struct.queue** %7, align 8
  %8 = icmp eq %struct.queue* %5, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 105, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:10                                      ; preds = %4
  %11 = tail call %struct.list* @Plist_alloc(i64 (i8*, i8*)* nonnull @element_listCompare) #6
  %12 = getelementptr inbounds i8, i8* %1, i64 24
  %13 = bitcast i8* %12 to %struct.list**
  store %struct.list* %11, %struct.list** %13, align 8
  %14 = icmp eq %struct.list* %11, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %10
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 107, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:16                                      ; preds = %10
  %17 = tail call %struct.list* @Plist_alloc(i64 (i8*, i8*)* nonnull @element_listCompareEdge) #6
  %18 = getelementptr inbounds i8, i8* %1, i64 32
  %19 = bitcast i8* %18 to %struct.list**
  store %struct.list* %17, %struct.list** %19, align 8
  %20 = icmp eq %struct.list* %17, null
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %16
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 109, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:22                                      ; preds = %16
  %23 = tail call %struct.vector* @Pvector_alloc(i64 1) #6
  %24 = getelementptr inbounds i8, i8* %1, i64 40
  %25 = bitcast i8* %24 to %struct.vector**
  store %struct.vector* %23, %struct.vector** %25, align 8
  %26 = icmp eq %struct.vector* %23, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %22
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 111, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.Pregion_alloc, i64 0, i64 0)) #7
  unreachable

; <label>:28                                      ; preds = %22, %0
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
define void @Pregion_free(%struct.region* nocapture %regionPtr) #0 {
  %1 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i64 0, i32 4
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @Pvector_free(%struct.vector* %2) #6
  %3 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i64 0, i32 3
  %4 = load %struct.list*, %struct.list** %3, align 8
  tail call void @Plist_free(%struct.list* %4) #6
  %5 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i64 0, i32 2
  %6 = load %struct.list*, %struct.list** %5, align 8
  tail call void @Plist_free(%struct.list* %6) #6
  %7 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i64 0, i32 1
  %8 = load %struct.queue*, %struct.queue** %7, align 8
  tail call void @Pqueue_free(%struct.queue* %8) #6
  %9 = bitcast %struct.region* %regionPtr to i8*
  tail call void @free(i8* %9) #6
  ret void
}

declare void @Pvector_free(%struct.vector*) #2

declare void @Plist_free(%struct.list*) #2

declare void @Pqueue_free(%struct.queue*) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @TMaddToBadVector(%struct.vector* %badVectorPtr, %struct.element* %badElementPtr) #0 {
  %1 = bitcast %struct.element* %badElementPtr to i8*
  %2 = tail call i64 @Pvector_pushBack(%struct.vector* %badVectorPtr, i8* %1) #6
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 141, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.TMaddToBadVector, i64 0, i64 0)) #7
  unreachable

; <label>:5                                       ; preds = %0
  tail call void @TMelement_setIsReferenced(%struct.element* %badElementPtr, i64 1) #6
  ret void
}

declare i64 @Pvector_pushBack(%struct.vector*, i8*) #2

declare void @TMelement_setIsReferenced(%struct.element*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @TMretriangulate(%struct.element* %elementPtr, %struct.region* nocapture readonly %regionPtr, %struct.mesh* %meshPtr, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %coordinates = alloca [2 x %struct.coordinate], align 16
  %coordinates1 = alloca [3 x %struct.coordinate], align 16
  %1 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i64 0, i32 4
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i64 0, i32 2
  %4 = load %struct.list*, %struct.list** %3, align 8
  %5 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i64 0, i32 3
  %6 = load %struct.list*, %struct.list** %5, align 8
  %7 = icmp eq %struct.jsw_avltree* %edgeMapPtr, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 164, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i64 0, i64 0)) #7
  unreachable

; <label>:9                                       ; preds = %0
  %10 = tail call { double, double } @element_getNewPoint(%struct.element* %elementPtr) #6
  %11 = extractvalue { double, double } %10, 0
  %12 = extractvalue { double, double } %10, 1
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %4) #6
  %13 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %4) #8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %._crit_edge3, label %.lr.ph2.preheader

.lr.ph2.preheader:                                ; preds = %9
  br label %.lr.ph2

.lr.ph2:                                          ; preds = %.lr.ph2.preheader, %.lr.ph2
  %15 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %4) #6
  %16 = bitcast i8* %15 to %struct.element*
  call void @TMmesh_remove(%struct.mesh* %meshPtr, %struct.element* %16) #6
  %17 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %4) #8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %._crit_edge3.loopexit, label %.lr.ph2

._crit_edge3.loopexit:                            ; preds = %.lr.ph2
  br label %._crit_edge3

._crit_edge3:                                     ; preds = %._crit_edge3.loopexit, %9
  %19 = call i64 @list_getSize(%struct.list* %4) #6
  %20 = call i64 @element_getNumEdge(%struct.element* %elementPtr) #6
  %21 = icmp eq i64 %20, 1
  br i1 %21, label %22, label %55

; <label>:22                                      ; preds = %._crit_edge3
  %23 = call %struct.pair* @element_getEdge(%struct.element* %elementPtr, i64 0) #6
  %24 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i64 0, i64 0, i32 0
  store double %11, double* %24, align 16
  %25 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i64 0, i64 0, i32 1
  store double %12, double* %25, align 8
  %26 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i64 0, i64 1
  %27 = getelementptr inbounds %struct.pair, %struct.pair* %23, i64 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast %struct.coordinate* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %28, i64 16, i32 8, i1 false)
  %30 = getelementptr inbounds [2 x %struct.coordinate], [2 x %struct.coordinate]* %coordinates, i64 0, i64 0
  %31 = call %struct.element* @TMelement_alloc(%struct.coordinate* %30, i64 2) #6
  %32 = icmp eq %struct.element* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %22
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 194, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i64 0, i64 0)) #7
  unreachable

; <label>:34                                      ; preds = %22
  call void @TMmesh_insert(%struct.mesh* %meshPtr, %struct.element* nonnull %31, %struct.jsw_avltree* nonnull %edgeMapPtr) #6
  %35 = getelementptr inbounds %struct.pair, %struct.pair* %23, i64 0, i32 1
  %36 = load i8*, i8** %35, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %36, i64 16, i32 8, i1 false)
  %37 = call %struct.element* @TMelement_alloc(%struct.coordinate* %30, i64 2) #6
  %38 = icmp eq %struct.element* %37, null
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %34
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 199, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i64 0, i64 0)) #7
  unreachable

; <label>:40                                      ; preds = %34
  call void @TMmesh_insert(%struct.mesh* %meshPtr, %struct.element* nonnull %37, %struct.jsw_avltree* nonnull %edgeMapPtr) #6
  %41 = call %struct.pair* @element_getEdge(%struct.element* %elementPtr, i64 0) #6
  %42 = call i64 @TMmesh_removeBoundary(%struct.mesh* %meshPtr, %struct.pair* %41) #6
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %40
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 204, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i64 0, i64 0)) #7
  unreachable

; <label>:45                                      ; preds = %40
  %46 = call %struct.pair* @element_getEdge(%struct.element* nonnull %31, i64 0) #6
  %47 = call i64 @TMmesh_insertBoundary(%struct.mesh* %meshPtr, %struct.pair* %46) #6
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %45
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 206, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i64 0, i64 0)) #7
  unreachable

; <label>:50                                      ; preds = %45
  %51 = call %struct.pair* @element_getEdge(%struct.element* nonnull %37, i64 0) #6
  %52 = call i64 @TMmesh_insertBoundary(%struct.mesh* %meshPtr, %struct.pair* %51) #6
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %50
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 208, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i64 0, i64 0)) #7
  unreachable

; <label>:55                                      ; preds = %50, %._crit_edge3
  %.pn = phi i64 [ 0, %._crit_edge3 ], [ 2, %50 ]
  %numDelta.0 = sub i64 %.pn, %19
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %6) #6
  %56 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %6) #8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %55
  %58 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i64 0, i64 0, i32 0
  %59 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i64 0, i64 0, i32 1
  %60 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i64 0, i64 1
  %61 = bitcast %struct.coordinate* %60 to i8*
  %62 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i64 0, i64 2
  %63 = bitcast %struct.coordinate* %62 to i8*
  %64 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %coordinates1, i64 0, i64 0
  br label %65

; <label>:65                                      ; preds = %.lr.ph, %.backedge
  %66 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %6) #6
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %65
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 223, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i64 0, i64 0)) #7
  unreachable

; <label>:69                                      ; preds = %65
  store double %11, double* %58, align 16
  store double %12, double* %59, align 8
  %70 = bitcast i8* %66 to i8**
  %71 = load i8*, i8** %70, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %71, i64 16, i32 8, i1 false)
  %72 = getelementptr inbounds i8, i8* %66, i64 8
  %73 = bitcast i8* %72 to i8**
  %74 = load i8*, i8** %73, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %74, i64 16, i32 8, i1 false)
  %75 = call %struct.element* @TMelement_alloc(%struct.coordinate* %64, i64 3) #6
  %76 = icmp eq %struct.element* %75, null
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %69
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 228, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.TMretriangulate, i64 0, i64 0)) #7
  unreachable

; <label>:78                                      ; preds = %69
  call void @TMmesh_insert(%struct.mesh* %meshPtr, %struct.element* nonnull %75, %struct.jsw_avltree* nonnull %edgeMapPtr) #6
  %79 = call i64 @element_isBad(%struct.element* nonnull %75) #6
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %.backedge, label %81

; <label>:81                                      ; preds = %78
  %82 = bitcast %struct.element* %75 to i8*
  %83 = call i64 @Pvector_pushBack(%struct.vector* %2, i8* %82) #6
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %TMaddToBadVector.exit

; <label>:85                                      ; preds = %81
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 141, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.TMaddToBadVector, i64 0, i64 0)) #7
  unreachable

TMaddToBadVector.exit:                            ; preds = %81
  call void @TMelement_setIsReferenced(%struct.element* nonnull %75, i64 1) #6
  br label %.backedge

.backedge:                                        ; preds = %TMaddToBadVector.exit, %78
  %86 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %6) #8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %._crit_edge.loopexit, label %65

._crit_edge.loopexit:                             ; preds = %.backedge
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %55
  %88 = call i64 @list_getSize(%struct.list* %6) #6
  %89 = add nsw i64 %numDelta.0, %88
  ret i64 %89
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
define %struct.element* @TMgrowRegion(%struct.element* %centerElementPtr, %struct.region* nocapture readonly %regionPtr, %struct.mesh* nocapture readnone %meshPtr, %struct.jsw_avltree* %edgeMapPtr) #0 {
  %centerCoordinate = alloca %struct.coordinate, align 8
  %it = alloca %struct.list_node*, align 8
  %searchPair = alloca %struct.pair, align 8
  %1 = tail call i64 @element_getNumEdge(%struct.element* %centerElementPtr) #6
  %2 = icmp eq i64 %1, 1
  %3 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i64 0, i32 2
  %4 = load %struct.list*, %struct.list** %3, align 8
  %5 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i64 0, i32 3
  %6 = load %struct.list*, %struct.list** %5, align 8
  %7 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i64 0, i32 1
  %8 = load %struct.queue*, %struct.queue** %7, align 8
  tail call void @Plist_clear(%struct.list* %4) #6
  tail call void @Plist_clear(%struct.list* %6) #6
  tail call void @queue_clear(%struct.queue* %8) #6
  %9 = tail call { double, double } @element_getNewPoint(%struct.element* %centerElementPtr) #6
  %10 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %centerCoordinate, i64 0, i32 0
  %11 = extractvalue { double, double } %9, 0
  store double %11, double* %10, align 8
  %12 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %centerCoordinate, i64 0, i32 1
  %13 = extractvalue { double, double } %9, 1
  store double %13, double* %12, align 8
  %14 = bitcast %struct.element* %centerElementPtr to i8*
  %15 = tail call i64 @Pqueue_push(%struct.queue* %8, i8* %14) #6
  %16 = call i64 @queue_isEmpty(%struct.queue* %8) #6
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %.lr.ph5, label %.loopexit2

.lr.ph5:                                          ; preds = %0
  %18 = bitcast %struct.pair* %searchPair to %struct.pair**
  %19 = bitcast %struct.pair* %searchPair to i8*
  br label %22

.loopexit.loopexit:                               ; preds = %.backedge.us
  br label %.loopexit

.loopexit.loopexit22:                             ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit22, %.loopexit.loopexit, %22
  %20 = call i64 @queue_isEmpty(%struct.queue* %8) #6
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %.loopexit2.loopexit23

; <label>:22                                      ; preds = %.lr.ph5, %.loopexit
  %23 = call i8* @queue_pop(%struct.queue* %8) #6
  %24 = bitcast i8* %23 to %struct.element*
  %25 = call i64 @Plist_insert(%struct.list* %4, i8* %23) #6
  %26 = call %struct.list* @element_getNeighborListPtr(%struct.element* %24) #6
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %26) #6
  %27 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %26) #8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %22
  br i1 %2, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.backedge.us
  %29 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %26) #6
  %30 = bitcast i8* %29 to %struct.element*
  %31 = call i64 @TMelement_isGarbage(%struct.element* %30) #6
  %32 = call i8* @list_find(%struct.list* %4, i8* %29) #8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %.backedge.us

; <label>:34                                      ; preds = %.lr.ph.split.us
  %35 = call i64 @element_isInCircumCircle(%struct.element* %30, %struct.coordinate* nonnull %centerCoordinate) #8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %40, label %37

; <label>:37                                      ; preds = %34
  %38 = call i64 @Pqueue_push(%struct.queue* %8, i8* %29) #6
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %.us-lcssa.us.loopexit, label %.backedge.us

; <label>:40                                      ; preds = %34
  %41 = call %struct.pair* @element_getCommonEdge(%struct.element* %30, %struct.element* %24) #8
  %42 = icmp eq %struct.pair* %41, null
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %40
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !1
  br label %44

; <label>:44                                      ; preds = %43, %40
  %45 = bitcast %struct.pair* %41 to i8*
  %46 = call i64 @Plist_insert(%struct.list* %6, i8* %45) #6
  store %struct.pair* %41, %struct.pair** %18, align 8
  %47 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %19) #6
  %not..us = icmp eq i8* %47, null
  br i1 %not..us, label %48, label %.backedge.us

; <label>:48                                      ; preds = %44
  %49 = call %struct.pair* @Ppair_alloc(i8* %45, i8* %29) #6
  %50 = icmp eq %struct.pair* %49, null
  br i1 %50, label %.backedge.us, label %51

; <label>:51                                      ; preds = %48
  %52 = bitcast %struct.pair* %49 to i8*
  %53 = call i64 @Pjsw_avlinsert(%struct.jsw_avltree* %edgeMapPtr, i8* %52) #6
  br label %.backedge.us

.backedge.us:                                     ; preds = %51, %48, %44, %37, %.lr.ph.split.us
  %54 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %26) #8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %.loopexit.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.backedge
  %56 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %26) #6
  %57 = bitcast i8* %56 to %struct.element*
  %58 = call i64 @TMelement_isGarbage(%struct.element* %57) #6
  %59 = call i8* @list_find(%struct.list* %4, i8* %56) #8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %63, label %.backedge

.backedge:                                        ; preds = %.lr.ph.split, %69, %80, %83, %76
  %61 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %26) #8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %.loopexit.loopexit22, label %.lr.ph.split

; <label>:63                                      ; preds = %.lr.ph.split
  %64 = call i64 @element_isInCircumCircle(%struct.element* %57, %struct.coordinate* nonnull %centerCoordinate) #8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %72, label %66

; <label>:66                                      ; preds = %63
  %67 = call i64 @element_getNumEdge(%struct.element* %57) #6
  %68 = icmp eq i64 %67, 1
  br i1 %68, label %.loopexit2.loopexit, label %69

; <label>:69                                      ; preds = %66
  %70 = call i64 @Pqueue_push(%struct.queue* %8, i8* %56) #6
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %.us-lcssa.us.loopexit21, label %.backedge

.us-lcssa.us.loopexit:                            ; preds = %37
  br label %.us-lcssa.us

.us-lcssa.us.loopexit21:                          ; preds = %69
  br label %.us-lcssa.us

.us-lcssa.us:                                     ; preds = %.us-lcssa.us.loopexit21, %.us-lcssa.us.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 295, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.TMgrowRegion, i64 0, i64 0)) #7
  unreachable

; <label>:72                                      ; preds = %63
  %73 = call %struct.pair* @element_getCommonEdge(%struct.element* %57, %struct.element* %24) #8
  %74 = icmp eq %struct.pair* %73, null
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %72
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #6, !srcloc !1
  br label %76

; <label>:76                                      ; preds = %72, %75
  %77 = bitcast %struct.pair* %73 to i8*
  %78 = call i64 @Plist_insert(%struct.list* %6, i8* %77) #6
  store %struct.pair* %73, %struct.pair** %18, align 8
  %79 = call i8* @jsw_avlfind(%struct.jsw_avltree* %edgeMapPtr, i8* %19) #6
  %not. = icmp eq i8* %79, null
  br i1 %not., label %80, label %.backedge

; <label>:80                                      ; preds = %76
  %81 = call %struct.pair* @Ppair_alloc(i8* %77, i8* %56) #6
  %82 = icmp eq %struct.pair* %81, null
  br i1 %82, label %.backedge, label %83

; <label>:83                                      ; preds = %80
  %84 = bitcast %struct.pair* %81 to i8*
  %85 = call i64 @Pjsw_avlinsert(%struct.jsw_avltree* %edgeMapPtr, i8* %84) #6
  br label %.backedge

.loopexit2.loopexit:                              ; preds = %66
  %.lcssa = phi %struct.element* [ %57, %66 ]
  br label %.loopexit2

.loopexit2.loopexit23:                            ; preds = %.loopexit
  br label %.loopexit2

.loopexit2:                                       ; preds = %.loopexit2.loopexit23, %.loopexit2.loopexit, %0
  %.0 = phi %struct.element* [ null, %0 ], [ %.lcssa, %.loopexit2.loopexit ], [ null, %.loopexit2.loopexit23 ]
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
define i64 @TMregion_refine(%struct.region* nocapture %regionPtr, %struct.element* %elementPtr, %struct.mesh* %meshPtr) #0 {
  %1 = tail call i64 @TMelement_isGarbage(%struct.element* %elementPtr) #6
  %2 = tail call %struct.jsw_avltree* @Pjsw_avlnew(i64 (i8*, i8*)* nonnull bitcast (i64 (%struct.pair*, %struct.pair*)* @element_mapCompareEdge to i64 (i8*, i8*)*)) #6
  %3 = icmp eq %struct.jsw_avltree* %2, null
  br i1 %3, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 337, i8* nonnull getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.TMregion_refine, i64 0, i64 0)) #7
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %12
  %4 = phi %struct.jsw_avltree* [ %13, %12 ], [ %2, %.lr.ph.preheader ]
  %numDelta.02 = phi i64 [ %9, %12 ], [ 0, %.lr.ph.preheader ]
  %5 = tail call %struct.element* @TMgrowRegion(%struct.element* %elementPtr, %struct.region* %regionPtr, %struct.mesh* undef, %struct.jsw_avltree* nonnull %4)
  %6 = icmp eq %struct.element* %5, null
  br i1 %6, label %15, label %7

; <label>:7                                       ; preds = %.lr.ph
  tail call void @TMelement_setIsReferenced(%struct.element* nonnull %5, i64 1) #6
  %8 = tail call i64 @TMregion_refine(%struct.region* %regionPtr, %struct.element* nonnull %5, %struct.mesh* %meshPtr)
  %9 = add nsw i64 %8, %numDelta.02
  %10 = tail call i64 @TMelement_isGarbage(%struct.element* %elementPtr) #6
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %7
  tail call void @Pjsw_avldelete(%struct.jsw_avltree* nonnull %4) #6
  %13 = tail call %struct.jsw_avltree* @Pjsw_avlnew(i64 (i8*, i8*)* nonnull bitcast (i64 (%struct.pair*, %struct.pair*)* @element_mapCompareEdge to i64 (i8*, i8*)*)) #6
  %14 = icmp eq %struct.jsw_avltree* %13, null
  br i1 %14, label %._crit_edge.loopexit, label %.lr.ph

; <label>:15                                      ; preds = %7, %.lr.ph
  %.lcssa = phi %struct.jsw_avltree* [ %4, %7 ], [ %4, %.lr.ph ]
  %numDelta.1 = phi i64 [ %9, %7 ], [ %numDelta.02, %.lr.ph ]
  %16 = tail call i64 @TMelement_isGarbage(%struct.element* %elementPtr) #6
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %15
  %19 = tail call i64 @TMretriangulate(%struct.element* %elementPtr, %struct.region* %regionPtr, %struct.mesh* %meshPtr, %struct.jsw_avltree* nonnull %.lcssa)
  %20 = add nsw i64 %19, %numDelta.1
  br label %21

; <label>:21                                      ; preds = %15, %18
  %numDelta.2 = phi i64 [ %numDelta.1, %15 ], [ %20, %18 ]
  tail call void @Pjsw_avldelete(%struct.jsw_avltree* nonnull %.lcssa) #6
  ret i64 %numDelta.2
}

declare %struct.jsw_avltree* @Pjsw_avlnew(i64 (i8*, i8*)*) #2

declare i64 @element_mapCompareEdge(%struct.pair*, %struct.pair*) #2

declare void @Pjsw_avldelete(%struct.jsw_avltree*) #2

; Function Attrs: nounwind uwtable
define void @Pregion_clearBad(%struct.region* nocapture readonly %regionPtr) #0 {
  %1 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i64 0, i32 4
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @vector_clear(%struct.vector* %2) #6
  ret void
}

declare void @vector_clear(%struct.vector*) #2

; Function Attrs: nounwind uwtable
define void @TMregion_transferBad(%struct.region* nocapture readonly %regionPtr, %struct.heap* %workHeapPtr) #0 {
  %1 = getelementptr inbounds %struct.region, %struct.region* %regionPtr, i64 0, i32 4
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  %3 = tail call i64 @vector_getSize(%struct.vector* %2) #6
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %13
  %i.01 = phi i64 [ %14, %13 ], [ 0, %.lr.ph.preheader ]
  %5 = tail call i8* @vector_at(%struct.vector* %2, i64 %i.01) #6
  %6 = bitcast i8* %5 to %struct.element*
  %7 = tail call i64 @TMelement_isGarbage(%struct.element* %6) #6
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %13

; <label>:9                                       ; preds = %.lr.ph
  %10 = tail call i64 @TMheap_insert(%struct.heap* %workHeapPtr, i8* %5) #6
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %9
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 406, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.TMregion_transferBad, i64 0, i64 0)) #7
  unreachable

; <label>:13                                      ; preds = %9, %.lr.ph
  %14 = add nuw nsw i64 %i.01, 1
  %15 = icmp slt i64 %14, %3
  br i1 %15, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !2

._crit_edge.loopexit:                             ; preds = %13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
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
