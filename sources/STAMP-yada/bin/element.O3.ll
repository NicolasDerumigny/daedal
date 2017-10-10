; ModuleID = '../bin/element.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { [3 x %struct.coordinate], i64, %struct.coordinate, double, double, [3 x %struct.pair], i64, [3 x %struct.coordinate], [3 x double], %struct.pair*, i64, %struct.list*, i64, i64 }
%struct.coordinate = type { double, double }
%struct.pair = type { i8*, i8* }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }

@.str = private unnamed_addr constant [28 x i8] c"elementPtr->neighborListPtr\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"element.c\00", align 1
@__PRETTY_FUNCTION__.element_alloc = private unnamed_addr constant [47 x i8] c"element_t *element_alloc(coordinate_t *, long)\00", align 1
@__PRETTY_FUNCTION__.Pelement_alloc = private unnamed_addr constant [48 x i8] c"element_t *Pelement_alloc(coordinate_t *, long)\00", align 1
@__PRETTY_FUNCTION__.TMelement_alloc = private unnamed_addr constant [49 x i8] c"element_t *TMelement_alloc(coordinate_t *, long)\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"list_getSize(elementPtr->neighborListPtr) <= elementPtr->numEdge\00", align 1
@__PRETTY_FUNCTION__.element_addNeighbor = private unnamed_addr constant [51 x i8] c"void element_addNeighbor(element_t *, element_t *)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.element_getNewPoint = private unnamed_addr constant [46 x i8] c"coordinate_t element_getNewPoint(element_t *)\00", align 1
@global_angleConstraint = external global double, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%0.3lf \00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"numCoordinate == 2 || numCoordinate == 3\00", align 1
@__PRETTY_FUNCTION__.checkAngles = private unnamed_addr constant [30 x i8] c"void checkAngles(element_t *)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"angle > 0.0\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"angle < 180.0\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"minAngle < 180.0\00", align 1
@__PRETTY_FUNCTION__.calculateCircumCircle = private unnamed_addr constant [40 x i8] c"void calculateCircumCircle(element_t *)\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"fabs(denominator) > DBL_MIN\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"cmp != 0\00", align 1
@__PRETTY_FUNCTION__.setEdge = private unnamed_addr constant [32 x i8] c"void setEdge(element_t *, long)\00", align 1

; Function Attrs: nounwind uwtable
define i64 @element_compare(%struct.element* %aElementPtr, %struct.element* %bElementPtr) #0 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %aElementPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %bElementPtr, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %2, %4
  br i1 %5, label %.loopexit, label %6

; <label>:6                                       ; preds = %0
  %7 = icmp sgt i64 %2, %4
  br i1 %7, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %6
  %8 = icmp sgt i64 %2, 0
  br i1 %8, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

; <label>:9                                       ; preds = %.lr.ph
  %10 = icmp slt i64 %15, %2
  br i1 %10, label %.lr.ph, label %.loopexit.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %9
  %i.01 = phi i64 [ %15, %9 ], [ 0, %.lr.ph.preheader ]
  %11 = getelementptr inbounds %struct.element, %struct.element* %aElementPtr, i64 0, i32 0, i64 %i.01
  %12 = getelementptr inbounds %struct.element, %struct.element* %bElementPtr, i64 0, i32 0, i64 %i.01
  %13 = tail call i64 @coordinate_compare(%struct.coordinate* %11, %struct.coordinate* %12) #9
  %14 = icmp eq i64 %13, 0
  %15 = add nuw nsw i64 %i.01, 1
  br i1 %14, label %9, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %9, %.lr.ph
  %.0.ph = phi i64 [ %13, %.lr.ph ], [ 0, %9 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %6, %0
  %.0 = phi i64 [ -1, %0 ], [ 1, %6 ], [ 0, %.preheader ], [ %.0.ph, %.loopexit.loopexit ]
  ret i64 %.0
}

declare i64 @coordinate_compare(%struct.coordinate*, %struct.coordinate*) #1

; Function Attrs: nounwind uwtable
define i64 @element_listCompare(i8* %aPtr, i8* %bPtr) #0 {
  %1 = bitcast i8* %aPtr to %struct.element*
  %2 = bitcast i8* %bPtr to %struct.element*
  %3 = getelementptr inbounds i8, i8* %aPtr, i64 48
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %bPtr, i64 48
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %5, %8
  br i1 %9, label %element_compare.exit, label %10

; <label>:10                                      ; preds = %0
  %11 = icmp sgt i64 %5, %8
  br i1 %11, label %element_compare.exit, label %.preheader.i

.preheader.i:                                     ; preds = %10
  %12 = icmp sgt i64 %5, 0
  br i1 %12, label %.lr.ph.i.preheader, label %element_compare.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  br label %.lr.ph.i

; <label>:13                                      ; preds = %.lr.ph.i
  %14 = icmp slt i64 %19, %5
  br i1 %14, label %.lr.ph.i, label %element_compare.exit.loopexit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %13
  %i.01.i = phi i64 [ %19, %13 ], [ 0, %.lr.ph.i.preheader ]
  %15 = getelementptr inbounds %struct.element, %struct.element* %1, i64 0, i32 0, i64 %i.01.i
  %16 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %i.01.i
  %17 = tail call i64 @coordinate_compare(%struct.coordinate* %15, %struct.coordinate* %16) #9
  %18 = icmp eq i64 %17, 0
  %19 = add nuw nsw i64 %i.01.i, 1
  br i1 %18, label %13, label %element_compare.exit.loopexit

element_compare.exit.loopexit:                    ; preds = %.lr.ph.i, %13
  %.0.i.ph = phi i64 [ 0, %13 ], [ %17, %.lr.ph.i ]
  br label %element_compare.exit

element_compare.exit:                             ; preds = %element_compare.exit.loopexit, %0, %10, %.preheader.i
  %.0.i = phi i64 [ -1, %0 ], [ 1, %10 ], [ 0, %.preheader.i ], [ %.0.i.ph, %element_compare.exit.loopexit ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @element_mapCompare(%struct.pair* nocapture readonly %aPtr, %struct.pair* nocapture readonly %bPtr) #0 {
  %1 = bitcast %struct.pair* %aPtr to %struct.element**
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = bitcast %struct.pair* %bPtr to %struct.element**
  %4 = load %struct.element*, %struct.element** %3, align 8
  %5 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.element, %struct.element* %4, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %6, %8
  br i1 %9, label %element_compare.exit, label %10

; <label>:10                                      ; preds = %0
  %11 = icmp sgt i64 %6, %8
  br i1 %11, label %element_compare.exit, label %.preheader.i

.preheader.i:                                     ; preds = %10
  %12 = icmp sgt i64 %6, 0
  br i1 %12, label %.lr.ph.i.preheader, label %element_compare.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  br label %.lr.ph.i

; <label>:13                                      ; preds = %.lr.ph.i
  %14 = icmp slt i64 %19, %6
  br i1 %14, label %.lr.ph.i, label %element_compare.exit.loopexit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %13
  %i.01.i = phi i64 [ %19, %13 ], [ 0, %.lr.ph.i.preheader ]
  %15 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %i.01.i
  %16 = getelementptr inbounds %struct.element, %struct.element* %4, i64 0, i32 0, i64 %i.01.i
  %17 = tail call i64 @coordinate_compare(%struct.coordinate* %15, %struct.coordinate* %16) #9
  %18 = icmp eq i64 %17, 0
  %19 = add nuw nsw i64 %i.01.i, 1
  br i1 %18, label %13, label %element_compare.exit.loopexit

element_compare.exit.loopexit:                    ; preds = %.lr.ph.i, %13
  %.0.i.ph = phi i64 [ 0, %13 ], [ %17, %.lr.ph.i ]
  br label %element_compare.exit

element_compare.exit:                             ; preds = %element_compare.exit.loopexit, %0, %10, %.preheader.i
  %.0.i = phi i64 [ -1, %0 ], [ 1, %10 ], [ 0, %.preheader.i ], [ %.0.i.ph, %element_compare.exit.loopexit ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define %struct.element* @element_alloc(%struct.coordinate* nocapture readonly %coordinates, i64 %numCoordinate) #0 {
  %tmp.i = alloca %struct.coordinate, align 8
  %1 = tail call noalias i8* @malloc(i64 256) #9
  %2 = bitcast i8* %1 to %struct.element*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %90, label %.preheader

.preheader:                                       ; preds = %0
  %4 = icmp sgt i64 %numCoordinate, 0
  br i1 %4, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %5 = getelementptr inbounds i8, i8* %1, i64 48
  %6 = bitcast i8* %5 to i64*
  store i64 %numCoordinate, i64* %6, align 8
  %7 = bitcast %struct.coordinate* %tmp.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7)
  br label %minimizeCoordinates.exit

.lr.ph:                                           ; preds = %.preheader
  %8 = bitcast i8* %1 to [3 x %struct.coordinate]*
  %9 = add i64 %numCoordinate, -1
  %xtraiter5 = and i64 %numCoordinate, 3
  %lcmp.mod6 = icmp eq i64 %xtraiter5, 0
  br i1 %lcmp.mod6, label %.lr.ph.split, label %.preheader8

.preheader8:                                      ; preds = %.lr.ph
  br label %10

; <label>:10                                      ; preds = %.preheader8, %10
  %i.02.prol = phi i64 [ %15, %10 ], [ 0, %.preheader8 ]
  %prol.iter7 = phi i64 [ %prol.iter7.sub, %10 ], [ %xtraiter5, %.preheader8 ]
  %11 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %i.02.prol
  %12 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %i.02.prol
  %13 = bitcast %struct.coordinate* %11 to i8*
  %14 = bitcast %struct.coordinate* %12 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %15 = add nuw nsw i64 %i.02.prol, 1
  %prol.iter7.sub = add i64 %prol.iter7, -1
  %prol.iter7.cmp = icmp eq i64 %prol.iter7.sub, 0
  br i1 %prol.iter7.cmp, label %.lr.ph.split.loopexit, label %10, !llvm.loop !1

.lr.ph.split.loopexit:                            ; preds = %10
  %.lcssa9 = phi i64 [ %15, %10 ]
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.loopexit, %.lr.ph
  %i.02.unr = phi i64 [ 0, %.lr.ph ], [ %.lcssa9, %.lr.ph.split.loopexit ]
  %16 = icmp ult i64 %9, 3
  br i1 %16, label %._crit_edge, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br label %17

; <label>:17                                      ; preds = %17, %.lr.ph.split.split
  %i.02 = phi i64 [ %i.02.unr, %.lr.ph.split.split ], [ %37, %17 ]
  %18 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %i.02
  %19 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %i.02
  %20 = bitcast %struct.coordinate* %18 to i8*
  %21 = bitcast %struct.coordinate* %19 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false)
  %22 = add nuw nsw i64 %i.02, 1
  %23 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %22
  %25 = bitcast %struct.coordinate* %23 to i8*
  %26 = bitcast %struct.coordinate* %24 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false)
  %27 = add nsw i64 %i.02, 2
  %28 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %27
  %30 = bitcast %struct.coordinate* %28 to i8*
  %31 = bitcast %struct.coordinate* %29 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false)
  %32 = add nsw i64 %i.02, 3
  %33 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %32
  %35 = bitcast %struct.coordinate* %33 to i8*
  %36 = bitcast %struct.coordinate* %34 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false)
  %37 = add nsw i64 %i.02, 4
  %exitcond.3 = icmp eq i64 %37, %numCoordinate
  br i1 %exitcond.3, label %._crit_edge.unr-lcssa, label %17

._crit_edge.unr-lcssa:                            ; preds = %17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %._crit_edge.unr-lcssa
  %38 = getelementptr inbounds i8, i8* %1, i64 48
  %39 = bitcast i8* %38 to i64*
  store i64 %numCoordinate, i64* %39, align 8
  %40 = bitcast %struct.coordinate* %tmp.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %40)
  %41 = icmp sgt i64 %numCoordinate, 1
  br i1 %41, label %.lr.ph8.i.preheader, label %minimizeCoordinates.exit

.lr.ph8.i.preheader:                              ; preds = %._crit_edge
  br label %.lr.ph8.i

.preheader.i:                                     ; preds = %.lr.ph8.i
  %i.0.minPosition.0.i.lcssa = phi i64 [ %i.0.minPosition.0.i, %.lr.ph8.i ]
  %42 = icmp eq i64 %i.0.minPosition.0.i.lcssa, 0
  br i1 %42, label %minimizeCoordinates.exit, label %.lr.ph3.split.us.i.preheader

.lr.ph3.split.us.i.preheader:                     ; preds = %.preheader.i
  %43 = add i64 %numCoordinate, -1
  %44 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %43
  %45 = bitcast %struct.coordinate* %44 to i8*
  %46 = add i64 %numCoordinate, -2
  %xtraiter = and i64 %43, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  %47 = icmp ult i64 %46, 3
  br label %.lr.ph3.split.us.i

.lr.ph3.split.us.i:                               ; preds = %.lr.ph3.split.us.i.preheader, %._crit_edge.us.i
  %minPosition.22.us.i = phi i64 [ %75, %._crit_edge.us.i ], [ %i.0.minPosition.0.i.lcssa, %.lr.ph3.split.us.i.preheader ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* nonnull %1, i64 16, i32 8, i1 false) #9
  br i1 %lcmp.mod, label %.lr.ph3.split.us.i.split, label %.preheader4

.preheader4:                                      ; preds = %.lr.ph3.split.us.i
  br label %48

; <label>:48                                      ; preds = %48, %.preheader4
  %j.01.us.i.prol = phi i64 [ %50, %48 ], [ 0, %.preheader4 ]
  %prol.iter = phi i64 [ %prol.iter.sub, %48 ], [ %xtraiter, %.preheader4 ]
  %49 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %j.01.us.i.prol
  %50 = add nuw nsw i64 %j.01.us.i.prol, 1
  %51 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %50
  %52 = bitcast %struct.coordinate* %49 to i8*
  %53 = bitcast %struct.coordinate* %51 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 16, i32 8, i1 false) #9
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph3.split.us.i.split.loopexit, label %48, !llvm.loop !3

.lr.ph3.split.us.i.split.loopexit:                ; preds = %48
  %.lcssa = phi i64 [ %50, %48 ]
  br label %.lr.ph3.split.us.i.split

.lr.ph3.split.us.i.split:                         ; preds = %.lr.ph3.split.us.i, %.lr.ph3.split.us.i.split.loopexit
  %j.01.us.i.unr = phi i64 [ 0, %.lr.ph3.split.us.i ], [ %.lcssa, %.lr.ph3.split.us.i.split.loopexit ]
  br i1 %47, label %._crit_edge.us.i, label %.lr.ph3.split.us.i.split.split

.lr.ph3.split.us.i.split.split:                   ; preds = %.lr.ph3.split.us.i.split
  br label %54

; <label>:54                                      ; preds = %54, %.lr.ph3.split.us.i.split.split
  %j.01.us.i = phi i64 [ %j.01.us.i.unr, %.lr.ph3.split.us.i.split.split ], [ %71, %54 ]
  %55 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %j.01.us.i
  %56 = add nuw nsw i64 %j.01.us.i, 1
  %57 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %56
  %58 = bitcast %struct.coordinate* %55 to i8*
  %59 = bitcast %struct.coordinate* %57 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 16, i32 8, i1 false) #9
  %60 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %56
  %61 = add nsw i64 %j.01.us.i, 2
  %62 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %61
  %63 = bitcast %struct.coordinate* %60 to i8*
  %64 = bitcast %struct.coordinate* %62 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 16, i32 8, i1 false) #9
  %65 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %61
  %66 = add nsw i64 %j.01.us.i, 3
  %67 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %66
  %68 = bitcast %struct.coordinate* %65 to i8*
  %69 = bitcast %struct.coordinate* %67 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 16, i32 8, i1 false) #9
  %70 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %66
  %71 = add nsw i64 %j.01.us.i, 4
  %72 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %71
  %73 = bitcast %struct.coordinate* %70 to i8*
  %74 = bitcast %struct.coordinate* %72 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 16, i32 8, i1 false) #9
  %exitcond.i.3 = icmp eq i64 %71, %43
  br i1 %exitcond.i.3, label %._crit_edge.us.i.unr-lcssa, label %54

._crit_edge.us.i.unr-lcssa:                       ; preds = %54
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %.lr.ph3.split.us.i.split, %._crit_edge.us.i.unr-lcssa
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %45, i8* %40, i64 16, i32 8, i1 false) #9
  %75 = add nsw i64 %minPosition.22.us.i, -1
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %minimizeCoordinates.exit.loopexit, label %.lr.ph3.split.us.i

.lr.ph8.i:                                        ; preds = %.lr.ph8.i.preheader, %.lr.ph8.i
  %minPosition.06.i = phi i64 [ %i.0.minPosition.0.i, %.lr.ph8.i ], [ 0, %.lr.ph8.i.preheader ]
  %i.05.i = phi i64 [ %81, %.lr.ph8.i ], [ 1, %.lr.ph8.i.preheader ]
  %77 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %i.05.i
  %78 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %minPosition.06.i
  %79 = tail call i64 @coordinate_compare(%struct.coordinate* %77, %struct.coordinate* %78) #9
  %80 = icmp slt i64 %79, 0
  %i.0.minPosition.0.i = select i1 %80, i64 %i.05.i, i64 %minPosition.06.i
  %81 = add nuw nsw i64 %i.05.i, 1
  %exitcond11.i = icmp eq i64 %81, %numCoordinate
  br i1 %exitcond11.i, label %.preheader.i, label %.lr.ph8.i

minimizeCoordinates.exit.loopexit:                ; preds = %._crit_edge.us.i
  br label %minimizeCoordinates.exit

minimizeCoordinates.exit:                         ; preds = %minimizeCoordinates.exit.loopexit, %._crit_edge.thread, %._crit_edge, %.preheader.i
  %82 = phi i8* [ %7, %._crit_edge.thread ], [ %40, %._crit_edge ], [ %40, %.preheader.i ], [ %40, %minimizeCoordinates.exit.loopexit ]
  call void @llvm.lifetime.end(i64 16, i8* %82)
  tail call fastcc void @checkAngles(%struct.element* %2)
  tail call fastcc void @calculateCircumCircle(%struct.element* %2)
  tail call fastcc void @initEdges(%struct.element* %2, i64 %numCoordinate)
  %83 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* nonnull @element_listCompare) #9
  %84 = getelementptr inbounds i8, i8* %1, i64 232
  %85 = bitcast i8* %84 to %struct.list**
  store %struct.list* %83, %struct.list** %85, align 8
  %86 = icmp eq %struct.list* %83, null
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %minimizeCoordinates.exit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 393, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.element_alloc, i64 0, i64 0)) #10
  unreachable

; <label>:88                                      ; preds = %minimizeCoordinates.exit
  %89 = getelementptr inbounds i8, i8* %1, i64 240
  call void @llvm.memset.p0i8.i64(i8* %89, i8 0, i64 16, i32 8, i1 false)
  br label %90

; <label>:90                                      ; preds = %0, %88
  ret %struct.element* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @checkAngles(%struct.element* %elementPtr) unnamed_addr #0 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = load double, double* @global_angleConstraint, align 8
  %4 = or i64 %2, 1
  %5 = icmp eq i64 %4, 3
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 152, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i64 0, i64 0)) #10
  unreachable

; <label>:7                                       ; preds = %0
  %8 = icmp eq i64 %2, 3
  %9 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 13
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 10
  %11 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 9
  %12 = bitcast %struct.pair** %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 16, i32 8, i1 false)
  br i1 %8, label %.preheader.preheader, label %32

.preheader.preheader:                             ; preds = %7
  %13 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 0
  %14 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 1
  %15 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 2
  %16 = tail call double @coordinate_angle(%struct.coordinate* %13, %struct.coordinate* %14, %struct.coordinate* %15) #9
  %17 = fcmp ogt double %16, 0.000000e+00
  br i1 %17, label %19, label %18

; <label>:18                                      ; preds = %.preheader.27, %.preheader.16, %.preheader.preheader
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 164, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i64 0, i64 0)) #10
  unreachable

; <label>:19                                      ; preds = %.preheader.preheader
  %20 = fcmp olt double %16, 1.800000e+02
  br i1 %20, label %22, label %21

; <label>:21                                      ; preds = %46, %34, %19
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 165, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i64 0, i64 0)) #10
  unreachable

; <label>:22                                      ; preds = %19
  %23 = fcmp ogt double %16, 9.000000e+01
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %22
  %25 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 5, i64 1
  store %struct.pair* %25, %struct.pair** %11, align 8
  br label %26

; <label>:26                                      ; preds = %24, %22
  %27 = fcmp olt double %16, %3
  br i1 %27, label %28, label %.preheader.16

; <label>:28                                      ; preds = %26
  store i64 1, i64* %10, align 8
  br label %.preheader.16

.preheader.16:                                    ; preds = %28, %26
  %29 = tail call double @coordinate_angle(%struct.coordinate* %14, %struct.coordinate* %15, %struct.coordinate* %13) #9
  %30 = fcmp ogt double %29, 0.000000e+00
  br i1 %30, label %34, label %18

; <label>:31                                      ; preds = %55
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 176, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i64 0, i64 0)) #10
  unreachable

; <label>:32                                      ; preds = %55, %7
  %minAngle.2 = phi double [ %minAngle.1.2, %55 ], [ 1.800000e+02, %7 ]
  %33 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 4
  store double %minAngle.2, double* %33, align 8
  ret void

; <label>:34                                      ; preds = %.preheader.16
  %35 = fcmp olt double %29, 1.800000e+02
  br i1 %35, label %36, label %21

; <label>:36                                      ; preds = %34
  %37 = fcmp ogt double %29, 9.000000e+01
  br i1 %37, label %38, label %40

; <label>:38                                      ; preds = %36
  %39 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 5, i64 2
  store %struct.pair* %39, %struct.pair** %11, align 8
  br label %40

; <label>:40                                      ; preds = %38, %36
  %41 = fcmp olt double %29, %3
  br i1 %41, label %42, label %.preheader.27

; <label>:42                                      ; preds = %40
  store i64 1, i64* %10, align 8
  br label %.preheader.27

.preheader.27:                                    ; preds = %42, %40
  %43 = fcmp olt double %29, %16
  %minAngle.1.1 = select i1 %43, double %29, double %16
  %44 = tail call double @coordinate_angle(%struct.coordinate* %15, %struct.coordinate* %13, %struct.coordinate* %14) #9
  %45 = fcmp ogt double %44, 0.000000e+00
  br i1 %45, label %46, label %18

; <label>:46                                      ; preds = %.preheader.27
  %47 = fcmp olt double %44, 1.800000e+02
  br i1 %47, label %48, label %21

; <label>:48                                      ; preds = %46
  %49 = fcmp ogt double %44, 9.000000e+01
  br i1 %49, label %50, label %52

; <label>:50                                      ; preds = %48
  %51 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 5, i64 0
  store %struct.pair* %51, %struct.pair** %11, align 8
  br label %52

; <label>:52                                      ; preds = %50, %48
  %53 = fcmp olt double %44, %3
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %52
  store i64 1, i64* %10, align 8
  br label %55

; <label>:55                                      ; preds = %54, %52
  %56 = fcmp olt double %44, %minAngle.1.1
  %minAngle.1.2 = select i1 %56, double %44, double %minAngle.1.1
  %57 = fcmp olt double %minAngle.1.2, 1.800000e+02
  br i1 %57, label %32, label %31
}

; Function Attrs: nounwind uwtable
define internal fastcc void @calculateCircumCircle(%struct.element* %elementPtr) unnamed_addr #0 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 0
  %4 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 2
  %5 = or i64 %2, 1
  %6 = icmp eq i64 %5, 3
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 221, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.calculateCircumCircle, i64 0, i64 0)) #10
  unreachable

; <label>:8                                       ; preds = %0
  %9 = icmp eq i64 %2, 2
  %10 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 0, i32 0
  %11 = load double, double* %10, align 8
  br i1 %9, label %12, label %23

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 1, i32 0
  %14 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = bitcast double* %13 to <2 x double>*
  %17 = load <2 x double>, <2 x double>* %16, align 8
  %18 = insertelement <2 x double> undef, double %11, i32 0
  %19 = insertelement <2 x double> %18, double %15, i32 1
  %20 = fadd <2 x double> %19, %17
  %21 = fmul <2 x double> %20, <double 5.000000e-01, double 5.000000e-01>
  %22 = bitcast %struct.coordinate* %4 to <2 x double>*
  store <2 x double> %21, <2 x double>* %22, align 8
  br label %76

; <label>:23                                      ; preds = %8
  %24 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 0, i32 1
  %25 = load double, double* %24, align 8
  %26 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 1, i32 0
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 1, i32 1
  %29 = load double, double* %28, align 8
  %30 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 2, i32 0
  %31 = load double, double* %30, align 8
  %32 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 2, i32 1
  %33 = load double, double* %32, align 8
  %34 = insertelement <2 x double> undef, double %29, i32 0
  %35 = insertelement <2 x double> %34, double %27, i32 1
  %36 = insertelement <2 x double> undef, double %25, i32 0
  %37 = insertelement <2 x double> %36, double %11, i32 1
  %38 = fsub <2 x double> %35, %37
  %39 = insertelement <2 x double> undef, double %33, i32 0
  %40 = insertelement <2 x double> %39, double %31, i32 1
  %41 = fsub <2 x double> %40, %37
  %42 = extractelement <2 x double> %38, i32 1
  %43 = fmul double %42, %42
  %44 = extractelement <2 x double> %38, i32 0
  %45 = fmul double %44, %44
  %46 = fadd double %43, %45
  %47 = extractelement <2 x double> %41, i32 1
  %48 = fmul double %47, %47
  %49 = extractelement <2 x double> %41, i32 0
  %50 = fmul double %49, %49
  %51 = fadd double %48, %50
  %52 = fmul double %42, %49
  %53 = fmul double %44, %47
  %54 = fsub double %52, %53
  %55 = fmul double %54, 2.000000e+00
  %56 = tail call double @fabs(double %55) #11
  %57 = fcmp ogt double %56, 0x10000000000000
  br i1 %57, label %59, label %58

; <label>:58                                      ; preds = %23
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 244, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.calculateCircumCircle, i64 0, i64 0)) #10
  unreachable

; <label>:59                                      ; preds = %23
  %60 = insertelement <2 x double> undef, double %51, i32 0
  %61 = insertelement <2 x double> %60, double %51, i32 1
  %62 = fmul <2 x double> %38, %61
  %63 = insertelement <2 x double> undef, double %46, i32 0
  %64 = insertelement <2 x double> %63, double %46, i32 1
  %65 = fmul <2 x double> %41, %64
  %66 = fsub <2 x double> %62, %65
  %67 = insertelement <2 x double> undef, double %55, i32 0
  %68 = insertelement <2 x double> %67, double %55, i32 1
  %69 = fdiv <2 x double> %66, %68
  %70 = insertelement <2 x double> undef, double %11, i32 0
  %71 = insertelement <2 x double> %70, double %25, i32 1
  %72 = fsub <2 x double> %71, %69
  %73 = fadd <2 x double> %71, %69
  %74 = shufflevector <2 x double> %72, <2 x double> %73, <2 x i32> <i32 0, i32 3>
  %75 = bitcast %struct.coordinate* %4 to <2 x double>*
  store <2 x double> %74, <2 x double>* %75, align 8
  br label %76

; <label>:76                                      ; preds = %59, %12
  %77 = tail call double @coordinate_distance(%struct.coordinate* nonnull %4, %struct.coordinate* nonnull %3) #9
  %78 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 3
  store double %77, double* %78, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @initEdges(%struct.element* %elementPtr, i64 %numCoordinate) unnamed_addr #0 {
  %1 = add nsw i64 %numCoordinate, -1
  %2 = mul nsw i64 %1, %numCoordinate
  %3 = sdiv i64 %2, 2
  %4 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 6
  store i64 %3, i64* %4, align 8
  %5 = icmp sgt i64 %2, 1
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %6 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 1
  br label %7

; <label>:7                                       ; preds = %.lr.ph, %setEdge.exit
  %e.01 = phi i64 [ 0, %.lr.ph ], [ %10, %setEdge.exit ]
  %8 = load i64, i64* %6, align 8
  %9 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 %e.01
  %10 = add nuw nsw i64 %e.01, 1
  %11 = srem i64 %10, %8
  %12 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 %11
  %13 = tail call i64 @coordinate_compare(%struct.coordinate* %9, %struct.coordinate* %12) #9
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %7
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 272, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.setEdge, i64 0, i64 0)) #10
  unreachable

; <label>:16                                      ; preds = %7
  %17 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 5, i64 %e.01
  %18 = icmp slt i64 %13, 0
  %19 = bitcast %struct.pair* %17 to %struct.coordinate**
  br i1 %18, label %20, label %23

; <label>:20                                      ; preds = %16
  store %struct.coordinate* %9, %struct.coordinate** %19, align 8
  %21 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 5, i64 %e.01, i32 1
  %22 = bitcast i8** %21 to %struct.coordinate**
  store %struct.coordinate* %12, %struct.coordinate** %22, align 8
  br label %setEdge.exit

; <label>:23                                      ; preds = %16
  store %struct.coordinate* %12, %struct.coordinate** %19, align 8
  %24 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 5, i64 %e.01, i32 1
  %25 = bitcast i8** %24 to %struct.coordinate**
  store %struct.coordinate* %9, %struct.coordinate** %25, align 8
  br label %setEdge.exit

setEdge.exit:                                     ; preds = %20, %23
  %26 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 7, i64 %e.01
  %27 = bitcast %struct.coordinate* %9 to <2 x double>*
  %28 = load <2 x double>, <2 x double>* %27, align 8
  %29 = bitcast %struct.coordinate* %12 to <2 x double>*
  %30 = load <2 x double>, <2 x double>* %29, align 8
  %31 = fadd <2 x double> %28, %30
  %32 = fmul <2 x double> %31, <double 5.000000e-01, double 5.000000e-01>
  %33 = bitcast %struct.coordinate* %26 to <2 x double>*
  store <2 x double> %32, <2 x double>* %33, align 8
  %34 = tail call double @coordinate_distance(%struct.coordinate* nonnull %9, %struct.coordinate* %26) #9
  %35 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 8, i64 %e.01
  store double %34, double* %35, align 8
  %36 = icmp slt i64 %10, %3
  br i1 %36, label %7, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %setEdge.exit
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void
}

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define %struct.element* @Pelement_alloc(%struct.coordinate* nocapture readonly %coordinates, i64 %numCoordinate) #0 {
  %tmp.i = alloca %struct.coordinate, align 8
  %1 = tail call noalias i8* @malloc(i64 256) #9
  %2 = bitcast i8* %1 to %struct.element*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %90, label %.preheader

.preheader:                                       ; preds = %0
  %4 = icmp sgt i64 %numCoordinate, 0
  br i1 %4, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %5 = getelementptr inbounds i8, i8* %1, i64 48
  %6 = bitcast i8* %5 to i64*
  store i64 %numCoordinate, i64* %6, align 8
  %7 = bitcast %struct.coordinate* %tmp.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7)
  br label %minimizeCoordinates.exit

.lr.ph:                                           ; preds = %.preheader
  %8 = bitcast i8* %1 to [3 x %struct.coordinate]*
  %9 = add i64 %numCoordinate, -1
  %xtraiter5 = and i64 %numCoordinate, 3
  %lcmp.mod6 = icmp eq i64 %xtraiter5, 0
  br i1 %lcmp.mod6, label %.lr.ph.split, label %.preheader8

.preheader8:                                      ; preds = %.lr.ph
  br label %10

; <label>:10                                      ; preds = %.preheader8, %10
  %i.02.prol = phi i64 [ %15, %10 ], [ 0, %.preheader8 ]
  %prol.iter7 = phi i64 [ %prol.iter7.sub, %10 ], [ %xtraiter5, %.preheader8 ]
  %11 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %i.02.prol
  %12 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %i.02.prol
  %13 = bitcast %struct.coordinate* %11 to i8*
  %14 = bitcast %struct.coordinate* %12 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %15 = add nuw nsw i64 %i.02.prol, 1
  %prol.iter7.sub = add i64 %prol.iter7, -1
  %prol.iter7.cmp = icmp eq i64 %prol.iter7.sub, 0
  br i1 %prol.iter7.cmp, label %.lr.ph.split.loopexit, label %10, !llvm.loop !4

.lr.ph.split.loopexit:                            ; preds = %10
  %.lcssa9 = phi i64 [ %15, %10 ]
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.loopexit, %.lr.ph
  %i.02.unr = phi i64 [ 0, %.lr.ph ], [ %.lcssa9, %.lr.ph.split.loopexit ]
  %16 = icmp ult i64 %9, 3
  br i1 %16, label %._crit_edge, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br label %17

; <label>:17                                      ; preds = %17, %.lr.ph.split.split
  %i.02 = phi i64 [ %i.02.unr, %.lr.ph.split.split ], [ %37, %17 ]
  %18 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %i.02
  %19 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %i.02
  %20 = bitcast %struct.coordinate* %18 to i8*
  %21 = bitcast %struct.coordinate* %19 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false)
  %22 = add nuw nsw i64 %i.02, 1
  %23 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %22
  %25 = bitcast %struct.coordinate* %23 to i8*
  %26 = bitcast %struct.coordinate* %24 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false)
  %27 = add nsw i64 %i.02, 2
  %28 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %27
  %30 = bitcast %struct.coordinate* %28 to i8*
  %31 = bitcast %struct.coordinate* %29 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false)
  %32 = add nsw i64 %i.02, 3
  %33 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %32
  %35 = bitcast %struct.coordinate* %33 to i8*
  %36 = bitcast %struct.coordinate* %34 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false)
  %37 = add nsw i64 %i.02, 4
  %exitcond.3 = icmp eq i64 %37, %numCoordinate
  br i1 %exitcond.3, label %._crit_edge.unr-lcssa, label %17

._crit_edge.unr-lcssa:                            ; preds = %17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %._crit_edge.unr-lcssa
  %38 = getelementptr inbounds i8, i8* %1, i64 48
  %39 = bitcast i8* %38 to i64*
  store i64 %numCoordinate, i64* %39, align 8
  %40 = bitcast %struct.coordinate* %tmp.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %40)
  %41 = icmp sgt i64 %numCoordinate, 1
  br i1 %41, label %.lr.ph8.i.preheader, label %minimizeCoordinates.exit

.lr.ph8.i.preheader:                              ; preds = %._crit_edge
  br label %.lr.ph8.i

.preheader.i:                                     ; preds = %.lr.ph8.i
  %i.0.minPosition.0.i.lcssa = phi i64 [ %i.0.minPosition.0.i, %.lr.ph8.i ]
  %42 = icmp eq i64 %i.0.minPosition.0.i.lcssa, 0
  br i1 %42, label %minimizeCoordinates.exit, label %.lr.ph3.split.us.i.preheader

.lr.ph3.split.us.i.preheader:                     ; preds = %.preheader.i
  %43 = add i64 %numCoordinate, -1
  %44 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %43
  %45 = bitcast %struct.coordinate* %44 to i8*
  %46 = add i64 %numCoordinate, -2
  %xtraiter = and i64 %43, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  %47 = icmp ult i64 %46, 3
  br label %.lr.ph3.split.us.i

.lr.ph3.split.us.i:                               ; preds = %.lr.ph3.split.us.i.preheader, %._crit_edge.us.i
  %minPosition.22.us.i = phi i64 [ %75, %._crit_edge.us.i ], [ %i.0.minPosition.0.i.lcssa, %.lr.ph3.split.us.i.preheader ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* nonnull %1, i64 16, i32 8, i1 false) #9
  br i1 %lcmp.mod, label %.lr.ph3.split.us.i.split, label %.preheader4

.preheader4:                                      ; preds = %.lr.ph3.split.us.i
  br label %48

; <label>:48                                      ; preds = %48, %.preheader4
  %j.01.us.i.prol = phi i64 [ %50, %48 ], [ 0, %.preheader4 ]
  %prol.iter = phi i64 [ %prol.iter.sub, %48 ], [ %xtraiter, %.preheader4 ]
  %49 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %j.01.us.i.prol
  %50 = add nuw nsw i64 %j.01.us.i.prol, 1
  %51 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %50
  %52 = bitcast %struct.coordinate* %49 to i8*
  %53 = bitcast %struct.coordinate* %51 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 16, i32 8, i1 false) #9
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph3.split.us.i.split.loopexit, label %48, !llvm.loop !5

.lr.ph3.split.us.i.split.loopexit:                ; preds = %48
  %.lcssa = phi i64 [ %50, %48 ]
  br label %.lr.ph3.split.us.i.split

.lr.ph3.split.us.i.split:                         ; preds = %.lr.ph3.split.us.i, %.lr.ph3.split.us.i.split.loopexit
  %j.01.us.i.unr = phi i64 [ 0, %.lr.ph3.split.us.i ], [ %.lcssa, %.lr.ph3.split.us.i.split.loopexit ]
  br i1 %47, label %._crit_edge.us.i, label %.lr.ph3.split.us.i.split.split

.lr.ph3.split.us.i.split.split:                   ; preds = %.lr.ph3.split.us.i.split
  br label %54

; <label>:54                                      ; preds = %54, %.lr.ph3.split.us.i.split.split
  %j.01.us.i = phi i64 [ %j.01.us.i.unr, %.lr.ph3.split.us.i.split.split ], [ %71, %54 ]
  %55 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %j.01.us.i
  %56 = add nuw nsw i64 %j.01.us.i, 1
  %57 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %56
  %58 = bitcast %struct.coordinate* %55 to i8*
  %59 = bitcast %struct.coordinate* %57 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 16, i32 8, i1 false) #9
  %60 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %56
  %61 = add nsw i64 %j.01.us.i, 2
  %62 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %61
  %63 = bitcast %struct.coordinate* %60 to i8*
  %64 = bitcast %struct.coordinate* %62 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 16, i32 8, i1 false) #9
  %65 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %61
  %66 = add nsw i64 %j.01.us.i, 3
  %67 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %66
  %68 = bitcast %struct.coordinate* %65 to i8*
  %69 = bitcast %struct.coordinate* %67 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 16, i32 8, i1 false) #9
  %70 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %66
  %71 = add nsw i64 %j.01.us.i, 4
  %72 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %71
  %73 = bitcast %struct.coordinate* %70 to i8*
  %74 = bitcast %struct.coordinate* %72 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 16, i32 8, i1 false) #9
  %exitcond.i.3 = icmp eq i64 %71, %43
  br i1 %exitcond.i.3, label %._crit_edge.us.i.unr-lcssa, label %54

._crit_edge.us.i.unr-lcssa:                       ; preds = %54
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %.lr.ph3.split.us.i.split, %._crit_edge.us.i.unr-lcssa
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %45, i8* %40, i64 16, i32 8, i1 false) #9
  %75 = add nsw i64 %minPosition.22.us.i, -1
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %minimizeCoordinates.exit.loopexit, label %.lr.ph3.split.us.i

.lr.ph8.i:                                        ; preds = %.lr.ph8.i.preheader, %.lr.ph8.i
  %minPosition.06.i = phi i64 [ %i.0.minPosition.0.i, %.lr.ph8.i ], [ 0, %.lr.ph8.i.preheader ]
  %i.05.i = phi i64 [ %81, %.lr.ph8.i ], [ 1, %.lr.ph8.i.preheader ]
  %77 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %i.05.i
  %78 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %minPosition.06.i
  %79 = tail call i64 @coordinate_compare(%struct.coordinate* %77, %struct.coordinate* %78) #9
  %80 = icmp slt i64 %79, 0
  %i.0.minPosition.0.i = select i1 %80, i64 %i.05.i, i64 %minPosition.06.i
  %81 = add nuw nsw i64 %i.05.i, 1
  %exitcond11.i = icmp eq i64 %81, %numCoordinate
  br i1 %exitcond11.i, label %.preheader.i, label %.lr.ph8.i

minimizeCoordinates.exit.loopexit:                ; preds = %._crit_edge.us.i
  br label %minimizeCoordinates.exit

minimizeCoordinates.exit:                         ; preds = %minimizeCoordinates.exit.loopexit, %._crit_edge.thread, %._crit_edge, %.preheader.i
  %82 = phi i8* [ %7, %._crit_edge.thread ], [ %40, %._crit_edge ], [ %40, %.preheader.i ], [ %40, %minimizeCoordinates.exit.loopexit ]
  call void @llvm.lifetime.end(i64 16, i8* %82)
  tail call fastcc void @checkAngles(%struct.element* %2)
  tail call fastcc void @calculateCircumCircle(%struct.element* %2)
  tail call fastcc void @initEdges(%struct.element* %2, i64 %numCoordinate)
  %83 = tail call %struct.list* @Plist_alloc(i64 (i8*, i8*)* nonnull @element_listCompare) #9
  %84 = getelementptr inbounds i8, i8* %1, i64 232
  %85 = bitcast i8* %84 to %struct.list**
  store %struct.list* %83, %struct.list** %85, align 8
  %86 = icmp eq %struct.list* %83, null
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %minimizeCoordinates.exit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 425, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.Pelement_alloc, i64 0, i64 0)) #10
  unreachable

; <label>:88                                      ; preds = %minimizeCoordinates.exit
  %89 = getelementptr inbounds i8, i8* %1, i64 240
  call void @llvm.memset.p0i8.i64(i8* %89, i8 0, i64 16, i32 8, i1 false)
  br label %90

; <label>:90                                      ; preds = %0, %88
  ret %struct.element* %2
}

declare %struct.list* @Plist_alloc(i64 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define %struct.element* @TMelement_alloc(%struct.coordinate* nocapture readonly %coordinates, i64 %numCoordinate) #0 {
  %tmp.i = alloca %struct.coordinate, align 8
  %1 = tail call noalias i8* @malloc(i64 256) #9
  %2 = bitcast i8* %1 to %struct.element*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %90, label %.preheader

.preheader:                                       ; preds = %0
  %4 = icmp sgt i64 %numCoordinate, 0
  br i1 %4, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %5 = getelementptr inbounds i8, i8* %1, i64 48
  %6 = bitcast i8* %5 to i64*
  store i64 %numCoordinate, i64* %6, align 8
  %7 = bitcast %struct.coordinate* %tmp.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7)
  br label %minimizeCoordinates.exit

.lr.ph:                                           ; preds = %.preheader
  %8 = bitcast i8* %1 to [3 x %struct.coordinate]*
  %9 = add i64 %numCoordinate, -1
  %xtraiter5 = and i64 %numCoordinate, 3
  %lcmp.mod6 = icmp eq i64 %xtraiter5, 0
  br i1 %lcmp.mod6, label %.lr.ph.split, label %.preheader8

.preheader8:                                      ; preds = %.lr.ph
  br label %10

; <label>:10                                      ; preds = %.preheader8, %10
  %i.02.prol = phi i64 [ %15, %10 ], [ 0, %.preheader8 ]
  %prol.iter7 = phi i64 [ %prol.iter7.sub, %10 ], [ %xtraiter5, %.preheader8 ]
  %11 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %i.02.prol
  %12 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %i.02.prol
  %13 = bitcast %struct.coordinate* %11 to i8*
  %14 = bitcast %struct.coordinate* %12 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %15 = add nuw nsw i64 %i.02.prol, 1
  %prol.iter7.sub = add i64 %prol.iter7, -1
  %prol.iter7.cmp = icmp eq i64 %prol.iter7.sub, 0
  br i1 %prol.iter7.cmp, label %.lr.ph.split.loopexit, label %10, !llvm.loop !6

.lr.ph.split.loopexit:                            ; preds = %10
  %.lcssa9 = phi i64 [ %15, %10 ]
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.loopexit, %.lr.ph
  %i.02.unr = phi i64 [ 0, %.lr.ph ], [ %.lcssa9, %.lr.ph.split.loopexit ]
  %16 = icmp ult i64 %9, 3
  br i1 %16, label %._crit_edge, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br label %17

; <label>:17                                      ; preds = %17, %.lr.ph.split.split
  %i.02 = phi i64 [ %i.02.unr, %.lr.ph.split.split ], [ %37, %17 ]
  %18 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %i.02
  %19 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %i.02
  %20 = bitcast %struct.coordinate* %18 to i8*
  %21 = bitcast %struct.coordinate* %19 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false)
  %22 = add nuw nsw i64 %i.02, 1
  %23 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %22
  %25 = bitcast %struct.coordinate* %23 to i8*
  %26 = bitcast %struct.coordinate* %24 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false)
  %27 = add nsw i64 %i.02, 2
  %28 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %27
  %30 = bitcast %struct.coordinate* %28 to i8*
  %31 = bitcast %struct.coordinate* %29 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false)
  %32 = add nsw i64 %i.02, 3
  %33 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %8, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %32
  %35 = bitcast %struct.coordinate* %33 to i8*
  %36 = bitcast %struct.coordinate* %34 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false)
  %37 = add nsw i64 %i.02, 4
  %exitcond.3 = icmp eq i64 %37, %numCoordinate
  br i1 %exitcond.3, label %._crit_edge.unr-lcssa, label %17, !llvm.loop !7

._crit_edge.unr-lcssa:                            ; preds = %17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %._crit_edge.unr-lcssa
  %38 = getelementptr inbounds i8, i8* %1, i64 48
  %39 = bitcast i8* %38 to i64*
  store i64 %numCoordinate, i64* %39, align 8
  %40 = bitcast %struct.coordinate* %tmp.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %40)
  %41 = icmp sgt i64 %numCoordinate, 1
  br i1 %41, label %.lr.ph8.i.preheader, label %minimizeCoordinates.exit

.lr.ph8.i.preheader:                              ; preds = %._crit_edge
  br label %.lr.ph8.i

.preheader.i:                                     ; preds = %.lr.ph8.i
  %i.0.minPosition.0.i.lcssa = phi i64 [ %i.0.minPosition.0.i, %.lr.ph8.i ]
  %42 = icmp eq i64 %i.0.minPosition.0.i.lcssa, 0
  br i1 %42, label %minimizeCoordinates.exit, label %.lr.ph3.split.us.i.preheader

.lr.ph3.split.us.i.preheader:                     ; preds = %.preheader.i
  %43 = add i64 %numCoordinate, -1
  %44 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %43
  %45 = bitcast %struct.coordinate* %44 to i8*
  %46 = add i64 %numCoordinate, -2
  %xtraiter = and i64 %43, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  %47 = icmp ult i64 %46, 3
  br label %.lr.ph3.split.us.i

.lr.ph3.split.us.i:                               ; preds = %.lr.ph3.split.us.i.preheader, %._crit_edge.us.i
  %minPosition.22.us.i = phi i64 [ %75, %._crit_edge.us.i ], [ %i.0.minPosition.0.i.lcssa, %.lr.ph3.split.us.i.preheader ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* nonnull %1, i64 16, i32 8, i1 false) #9
  br i1 %lcmp.mod, label %.lr.ph3.split.us.i.split, label %.preheader4

.preheader4:                                      ; preds = %.lr.ph3.split.us.i
  br label %48

; <label>:48                                      ; preds = %48, %.preheader4
  %j.01.us.i.prol = phi i64 [ %50, %48 ], [ 0, %.preheader4 ]
  %prol.iter = phi i64 [ %prol.iter.sub, %48 ], [ %xtraiter, %.preheader4 ]
  %49 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %j.01.us.i.prol
  %50 = add nuw nsw i64 %j.01.us.i.prol, 1
  %51 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %50
  %52 = bitcast %struct.coordinate* %49 to i8*
  %53 = bitcast %struct.coordinate* %51 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 16, i32 8, i1 false) #9
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph3.split.us.i.split.loopexit, label %48, !llvm.loop !9

.lr.ph3.split.us.i.split.loopexit:                ; preds = %48
  %.lcssa = phi i64 [ %50, %48 ]
  br label %.lr.ph3.split.us.i.split

.lr.ph3.split.us.i.split:                         ; preds = %.lr.ph3.split.us.i, %.lr.ph3.split.us.i.split.loopexit
  %j.01.us.i.unr = phi i64 [ 0, %.lr.ph3.split.us.i ], [ %.lcssa, %.lr.ph3.split.us.i.split.loopexit ]
  br i1 %47, label %._crit_edge.us.i, label %.lr.ph3.split.us.i.split.split

.lr.ph3.split.us.i.split.split:                   ; preds = %.lr.ph3.split.us.i.split
  br label %54

; <label>:54                                      ; preds = %54, %.lr.ph3.split.us.i.split.split
  %j.01.us.i = phi i64 [ %j.01.us.i.unr, %.lr.ph3.split.us.i.split.split ], [ %71, %54 ]
  %55 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %j.01.us.i
  %56 = add nuw nsw i64 %j.01.us.i, 1
  %57 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %56
  %58 = bitcast %struct.coordinate* %55 to i8*
  %59 = bitcast %struct.coordinate* %57 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 16, i32 8, i1 false) #9
  %60 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %56
  %61 = add nsw i64 %j.01.us.i, 2
  %62 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %61
  %63 = bitcast %struct.coordinate* %60 to i8*
  %64 = bitcast %struct.coordinate* %62 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 16, i32 8, i1 false) #9
  %65 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %61
  %66 = add nsw i64 %j.01.us.i, 3
  %67 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %66
  %68 = bitcast %struct.coordinate* %65 to i8*
  %69 = bitcast %struct.coordinate* %67 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 16, i32 8, i1 false) #9
  %70 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %66
  %71 = add nsw i64 %j.01.us.i, 4
  %72 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %71
  %73 = bitcast %struct.coordinate* %70 to i8*
  %74 = bitcast %struct.coordinate* %72 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 16, i32 8, i1 false) #9
  %exitcond.i.3 = icmp eq i64 %71, %43
  br i1 %exitcond.i.3, label %._crit_edge.us.i.unr-lcssa, label %54

._crit_edge.us.i.unr-lcssa:                       ; preds = %54
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %.lr.ph3.split.us.i.split, %._crit_edge.us.i.unr-lcssa
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %45, i8* %40, i64 16, i32 8, i1 false) #9
  %75 = add nsw i64 %minPosition.22.us.i, -1
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %minimizeCoordinates.exit.loopexit, label %.lr.ph3.split.us.i

.lr.ph8.i:                                        ; preds = %.lr.ph8.i.preheader, %.lr.ph8.i
  %minPosition.06.i = phi i64 [ %i.0.minPosition.0.i, %.lr.ph8.i ], [ 0, %.lr.ph8.i.preheader ]
  %i.05.i = phi i64 [ %81, %.lr.ph8.i ], [ 1, %.lr.ph8.i.preheader ]
  %77 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %i.05.i
  %78 = getelementptr inbounds %struct.element, %struct.element* %2, i64 0, i32 0, i64 %minPosition.06.i
  %79 = tail call i64 @coordinate_compare(%struct.coordinate* %77, %struct.coordinate* %78) #9
  %80 = icmp slt i64 %79, 0
  %i.0.minPosition.0.i = select i1 %80, i64 %i.05.i, i64 %minPosition.06.i
  %81 = add nuw nsw i64 %i.05.i, 1
  %exitcond11.i = icmp eq i64 %81, %numCoordinate
  br i1 %exitcond11.i, label %.preheader.i, label %.lr.ph8.i

minimizeCoordinates.exit.loopexit:                ; preds = %._crit_edge.us.i
  br label %minimizeCoordinates.exit

minimizeCoordinates.exit:                         ; preds = %minimizeCoordinates.exit.loopexit, %._crit_edge.thread, %._crit_edge, %.preheader.i
  %82 = phi i8* [ %7, %._crit_edge.thread ], [ %40, %._crit_edge ], [ %40, %.preheader.i ], [ %40, %minimizeCoordinates.exit.loopexit ]
  call void @llvm.lifetime.end(i64 16, i8* %82)
  tail call fastcc void @checkAngles(%struct.element* %2)
  tail call fastcc void @calculateCircumCircle(%struct.element* %2)
  tail call fastcc void @initEdges(%struct.element* %2, i64 %numCoordinate)
  %83 = tail call %struct.list* @TMlist_alloc(i64 (i8*, i8*)* nonnull @element_listCompare) #9
  %84 = getelementptr inbounds i8, i8* %1, i64 232
  %85 = bitcast i8* %84 to %struct.list**
  store %struct.list* %83, %struct.list** %85, align 8
  %86 = icmp eq %struct.list* %83, null
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %minimizeCoordinates.exit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 458, i8* nonnull getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.TMelement_alloc, i64 0, i64 0)) #10
  unreachable

; <label>:88                                      ; preds = %minimizeCoordinates.exit
  %89 = getelementptr inbounds i8, i8* %1, i64 240
  call void @llvm.memset.p0i8.i64(i8* %89, i8 0, i64 16, i32 8, i1 false)
  br label %90

; <label>:90                                      ; preds = %0, %88
  ret %struct.element* %2
}

declare %struct.list* @TMlist_alloc(i64 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define void @element_free(%struct.element* nocapture %elementPtr) #0 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  tail call void @list_free(%struct.list* %2) #9
  %3 = bitcast %struct.element* %elementPtr to i8*
  tail call void @free(i8* %3) #9
  ret void
}

declare void @list_free(%struct.list*) #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @Pelement_free(%struct.element* nocapture %elementPtr) #0 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  tail call void @Plist_free(%struct.list* %2) #9
  %3 = bitcast %struct.element* %elementPtr to i8*
  tail call void @free(i8* %3) #9
  ret void
}

declare void @Plist_free(%struct.list*) #1

; Function Attrs: nounwind uwtable
define void @TMelement_free(%struct.element* nocapture %elementPtr) #0 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  tail call void @TMlist_free(%struct.list* %2) #9
  %3 = bitcast %struct.element* %elementPtr to i8*
  tail call void @free(i8* %3) #9
  ret void
}

declare void @TMlist_free(%struct.list*) #1

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @element_getNumEdge(%struct.element* nocapture readonly %elementPtr) #5 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 6
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define %struct.pair* @element_getEdge(%struct.element* readonly %elementPtr, i64 %i) #5 {
  %1 = icmp slt i64 %i, 0
  br i1 %1, label %7, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 6
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, %i
  %6 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 5, i64 %i
  %. = select i1 %5, %struct.pair* null, %struct.pair* %6
  ret %struct.pair* %.

; <label>:7                                       ; preds = %0
  ret %struct.pair* null
}

; Function Attrs: nounwind uwtable
define i64 @element_listCompareEdge(i8* nocapture readonly %aPtr, i8* nocapture readonly %bPtr) #0 {
  %1 = bitcast i8* %aPtr to %struct.coordinate**
  %2 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %3 = bitcast i8* %bPtr to %struct.coordinate**
  %4 = load %struct.coordinate*, %struct.coordinate** %3, align 8
  %5 = tail call i64 @coordinate_compare(%struct.coordinate* %2, %struct.coordinate* %4) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %compareEdge.exit

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds i8, i8* %aPtr, i64 8
  %9 = bitcast i8* %8 to %struct.coordinate**
  %10 = load %struct.coordinate*, %struct.coordinate** %9, align 8
  %11 = getelementptr inbounds i8, i8* %bPtr, i64 8
  %12 = bitcast i8* %11 to %struct.coordinate**
  %13 = load %struct.coordinate*, %struct.coordinate** %12, align 8
  %14 = tail call i64 @coordinate_compare(%struct.coordinate* %10, %struct.coordinate* %13) #9
  br label %compareEdge.exit

compareEdge.exit:                                 ; preds = %0, %7
  %15 = phi i64 [ %14, %7 ], [ %5, %0 ]
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define i64 @element_mapCompareEdge(%struct.pair* nocapture readonly %aPtr, %struct.pair* nocapture readonly %bPtr) #0 {
  %1 = bitcast %struct.pair* %aPtr to %struct.pair**
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = bitcast %struct.pair* %bPtr to %struct.pair**
  %4 = load %struct.pair*, %struct.pair** %3, align 8
  %5 = bitcast %struct.pair* %2 to %struct.coordinate**
  %6 = load %struct.coordinate*, %struct.coordinate** %5, align 8
  %7 = bitcast %struct.pair* %4 to %struct.coordinate**
  %8 = load %struct.coordinate*, %struct.coordinate** %7, align 8
  %9 = tail call i64 @coordinate_compare(%struct.coordinate* %6, %struct.coordinate* %8) #9
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %compareEdge.exit

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.pair, %struct.pair* %2, i64 0, i32 1
  %13 = bitcast i8** %12 to %struct.coordinate**
  %14 = load %struct.coordinate*, %struct.coordinate** %13, align 8
  %15 = getelementptr inbounds %struct.pair, %struct.pair* %4, i64 0, i32 1
  %16 = bitcast i8** %15 to %struct.coordinate**
  %17 = load %struct.coordinate*, %struct.coordinate** %16, align 8
  %18 = tail call i64 @coordinate_compare(%struct.coordinate* %14, %struct.coordinate* %17) #9
  br label %compareEdge.exit

compareEdge.exit:                                 ; preds = %0, %11
  %19 = phi i64 [ %18, %11 ], [ %9, %0 ]
  ret i64 %19
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @element_heapCompare(i8* nocapture readonly %aPtr, i8* nocapture readonly %bPtr) #5 {
  %1 = getelementptr inbounds i8, i8* %aPtr, i64 216
  %2 = bitcast i8* %1 to %struct.pair**
  %3 = load %struct.pair*, %struct.pair** %2, align 8
  %4 = icmp eq %struct.pair* %3, null
  %5 = getelementptr inbounds i8, i8* %bPtr, i64 216
  %6 = bitcast i8* %5 to %struct.pair**
  %7 = load %struct.pair*, %struct.pair** %6, align 8
  %8 = icmp ne %struct.pair* %7, null
  %9 = zext i1 %8 to i64
  %. = xor i64 %9, 1
  %.1 = sext i1 %8 to i64
  %.0 = select i1 %4, i64 %.1, i64 %.
  ret i64 %.0
}

; Function Attrs: nounwind readonly uwtable
define i64 @element_isInCircumCircle(%struct.element* %elementPtr, %struct.coordinate* %coordinatePtr) #6 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 2
  %2 = tail call double @coordinate_distance(%struct.coordinate* %coordinatePtr, %struct.coordinate* %1) #9
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 3
  %4 = load double, double* %3, align 8
  %5 = fcmp ole double %2, %4
  %6 = zext i1 %5 to i64
  ret i64 %6
}

declare double @coordinate_distance(%struct.coordinate*, %struct.coordinate*) #1

; Function Attrs: norecurse nounwind uwtable
define void @element_clearEncroached(%struct.element* nocapture %elementPtr) #7 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 9
  store %struct.pair* null, %struct.pair** %1, align 8
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define %struct.pair* @element_getEncroachedPtr(%struct.element* nocapture readonly %elementPtr) #5 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 9
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  ret %struct.pair* %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @element_isSkinny(%struct.element* nocapture readonly %elementPtr) #5 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 10
  %2 = load i64, i64* %1, align 8
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i64
  ret i64 %4
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @element_isBad(%struct.element* nocapture readonly %elementPtr) #5 {
  %elementPtr.idx = getelementptr %struct.element, %struct.element* %elementPtr, i64 0, i32 9
  %elementPtr.idx.val = load %struct.pair*, %struct.pair** %elementPtr.idx, align 8
  %1 = icmp eq %struct.pair* %elementPtr.idx.val, null
  br i1 %1, label %2, label %6

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 10
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br label %6

; <label>:6                                       ; preds = %0, %2
  %7 = phi i1 [ true, %0 ], [ %5, %2 ]
  %8 = zext i1 %7 to i64
  ret i64 %8
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @element_isReferenced(%struct.element* nocapture readonly %elementPtr) #5 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 13
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @TMelement_isReferenced(%struct.element* nocapture readonly %elementPtr) #5 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 13
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: norecurse nounwind uwtable
define void @element_setIsReferenced(%struct.element* nocapture %elementPtr, i64 %status) #7 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 13
  store i64 %status, i64* %1, align 8
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @TMelement_setIsReferenced(%struct.element* nocapture %elementPtr, i64 %status) #7 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 13
  store i64 %status, i64* %1, align 8
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @element_isGarbage(%struct.element* nocapture readonly %elementPtr) #5 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 12
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @TMelement_isGarbage(%struct.element* nocapture readonly %elementPtr) #5 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 12
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: norecurse nounwind uwtable
define void @element_setIsGarbage(%struct.element* nocapture %elementPtr, i64 %status) #7 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 12
  store i64 %status, i64* %1, align 8
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @TMelement_setIsGarbage(%struct.element* nocapture %elementPtr, i64 %status) #7 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 12
  store i64 %status, i64* %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @element_addNeighbor(%struct.element* nocapture readonly %elementPtr, %struct.element* %neighborPtr) #0 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = bitcast %struct.element* %neighborPtr to i8*
  %4 = tail call i64 @list_insert(%struct.list* %2, i8* %3) #9
  %5 = load %struct.list*, %struct.list** %1, align 8
  %6 = tail call i64 @list_getSize(%struct.list* %5) #9
  %7 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %6, %8
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 779, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.element_addNeighbor, i64 0, i64 0)) #10
  unreachable

; <label>:11                                      ; preds = %0
  ret void
}

declare i64 @list_insert(%struct.list*, i8*) #1

declare i64 @list_getSize(%struct.list*) #1

; Function Attrs: nounwind uwtable
define void @TMelement_addNeighbor(%struct.element* nocapture readonly %elementPtr, %struct.element* %neighborPtr) #0 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = bitcast %struct.element* %neighborPtr to i8*
  %4 = tail call i64 @TMlist_insert(%struct.list* %2, i8* %3) #9
  ret void
}

declare i64 @TMlist_insert(%struct.list*, i8*) #1

; Function Attrs: norecurse nounwind readonly uwtable
define %struct.list* @element_getNeighborListPtr(%struct.element* nocapture readonly %elementPtr) #5 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  ret %struct.list* %2
}

; Function Attrs: nounwind readonly uwtable
define %struct.pair* @element_getCommonEdge(%struct.element* readonly %aElementPtr, %struct.element* nocapture readonly %bElementPtr) #6 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %aElementPtr, i64 0, i32 6
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %bElementPtr, i64 0, i32 6
  %4 = load i64, i64* %3, align 8
  %5 = icmp sgt i64 %2, 0
  %6 = icmp sgt i64 %4, 0
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %.lr.ph6.split.us.preheader, label %.loopexit

.lr.ph6.split.us.preheader:                       ; preds = %0
  br label %.lr.ph6.split.us

.lr.ph6.split.us:                                 ; preds = %.lr.ph6.split.us.preheader, %._crit_edge.us
  %a.03.us = phi i64 [ %26, %._crit_edge.us ], [ 0, %.lr.ph6.split.us.preheader ]
  %7 = getelementptr inbounds %struct.element, %struct.element* %aElementPtr, i64 0, i32 5, i64 %a.03.us
  %8 = bitcast %struct.pair* %7 to %struct.coordinate**
  %9 = getelementptr inbounds %struct.element, %struct.element* %aElementPtr, i64 0, i32 5, i64 %a.03.us, i32 1
  %10 = bitcast i8** %9 to %struct.coordinate**
  br label %11

; <label>:11                                      ; preds = %.lr.ph6.split.us, %compareEdge.exit.thread.us
  %b.02.us = phi i64 [ 0, %.lr.ph6.split.us ], [ %24, %compareEdge.exit.thread.us ]
  %12 = getelementptr inbounds %struct.element, %struct.element* %bElementPtr, i64 0, i32 5, i64 %b.02.us
  %13 = load %struct.coordinate*, %struct.coordinate** %8, align 8
  %14 = bitcast %struct.pair* %12 to %struct.coordinate**
  %15 = load %struct.coordinate*, %struct.coordinate** %14, align 8
  %16 = tail call i64 @coordinate_compare(%struct.coordinate* %13, %struct.coordinate* %15) #9
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %compareEdge.exit.us, label %compareEdge.exit.thread.us

compareEdge.exit.us:                              ; preds = %11
  %18 = load %struct.coordinate*, %struct.coordinate** %10, align 8
  %19 = getelementptr inbounds %struct.element, %struct.element* %bElementPtr, i64 0, i32 5, i64 %b.02.us, i32 1
  %20 = bitcast i8** %19 to %struct.coordinate**
  %21 = load %struct.coordinate*, %struct.coordinate** %20, align 8
  %22 = tail call i64 @coordinate_compare(%struct.coordinate* %18, %struct.coordinate* %21) #9
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %.loopexit.loopexit, label %compareEdge.exit.thread.us

compareEdge.exit.thread.us:                       ; preds = %compareEdge.exit.us, %11
  %24 = add nuw nsw i64 %b.02.us, 1
  %25 = icmp slt i64 %24, %4
  br i1 %25, label %11, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %compareEdge.exit.thread.us
  %26 = add nuw nsw i64 %a.03.us, 1
  %27 = icmp slt i64 %26, %2
  br i1 %27, label %.lr.ph6.split.us, label %.loopexit.loopexit14

.loopexit.loopexit:                               ; preds = %compareEdge.exit.us
  %.lcssa = phi %struct.pair* [ %7, %compareEdge.exit.us ]
  br label %.loopexit

.loopexit.loopexit14:                             ; preds = %._crit_edge.us
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit14, %.loopexit.loopexit, %0
  %.0 = phi %struct.pair* [ null, %0 ], [ %.lcssa, %.loopexit.loopexit ], [ null, %.loopexit.loopexit14 ]
  ret %struct.pair* %.0
}

; Function Attrs: nounwind uwtable
define { double, double } @element_getNewPoint(%struct.element* nocapture readonly %elementPtr) #0 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 9
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = icmp eq %struct.pair* %2, null
  br i1 %3, label %29, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %4
  %8 = bitcast %struct.pair* %2 to %struct.coordinate**
  %9 = getelementptr inbounds %struct.pair, %struct.pair* %2, i64 0, i32 1
  %10 = bitcast i8** %9 to %struct.coordinate**
  br label %11

; <label>:11                                      ; preds = %.lr.ph, %compareEdge.exit.thread
  %e.02 = phi i64 [ 0, %.lr.ph ], [ %27, %compareEdge.exit.thread ]
  %12 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 5, i64 %e.02
  %13 = load %struct.coordinate*, %struct.coordinate** %8, align 8
  %14 = bitcast %struct.pair* %12 to %struct.coordinate**
  %15 = load %struct.coordinate*, %struct.coordinate** %14, align 8
  %16 = tail call i64 @coordinate_compare(%struct.coordinate* %13, %struct.coordinate* %15) #9
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %compareEdge.exit, label %compareEdge.exit.thread

compareEdge.exit:                                 ; preds = %11
  %18 = load %struct.coordinate*, %struct.coordinate** %10, align 8
  %19 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 5, i64 %e.02, i32 1
  %20 = bitcast i8** %19 to %struct.coordinate**
  %21 = load %struct.coordinate*, %struct.coordinate** %20, align 8
  %22 = tail call i64 @coordinate_compare(%struct.coordinate* %18, %struct.coordinate* %21) #9
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %compareEdge.exit.thread

; <label>:24                                      ; preds = %compareEdge.exit
  %e.02.lcssa = phi i64 [ %e.02, %compareEdge.exit ]
  %25 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 7, i64 %e.02.lcssa, i32 0
  %26 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 7, i64 %e.02.lcssa, i32 1
  br label %32

compareEdge.exit.thread:                          ; preds = %11, %compareEdge.exit
  %27 = add nuw nsw i64 %e.02, 1
  %28 = icmp slt i64 %27, %6
  br i1 %28, label %11, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %compareEdge.exit.thread
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 854, i8* nonnull getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.element_getNewPoint, i64 0, i64 0)) #10
  unreachable

; <label>:29                                      ; preds = %0
  %30 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 2, i32 0
  %31 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 2, i32 1
  br label %32

; <label>:32                                      ; preds = %29, %24
  %.sroa.0.0.in = phi double* [ %25, %24 ], [ %30, %29 ]
  %.sroa.3.0.in = phi double* [ %26, %24 ], [ %31, %29 ]
  %.sroa.3.0 = load double, double* %.sroa.3.0.in, align 8
  %.sroa.0.0 = load double, double* %.sroa.0.0.in, align 8
  %33 = insertvalue { double, double } undef, double %.sroa.0.0, 0
  %34 = insertvalue { double, double } %33, double %.sroa.3.0, 1
  ret { double, double } %34
}

; Function Attrs: nounwind uwtable
define i64 @element_checkAngles(%struct.element* %elementPtr) #0 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = load double, double* @global_angleConstraint, align 8
  %4 = icmp eq i64 %2, 3
  br i1 %4, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %6
  %i.0 = phi i64 [ %8, %6 ], [ 0, %.preheader.preheader ]
  %5 = icmp slt i64 %i.0, 3
  br i1 %5, label %6, label %.loopexit.loopexit

; <label>:6                                       ; preds = %.preheader
  %7 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 %i.0
  %8 = add nuw nsw i64 %i.0, 1
  %9 = srem i64 %8, 3
  %10 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 %9
  %11 = add nuw nsw i64 %i.0, 2
  %12 = srem i64 %11, 3
  %13 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 %12
  %14 = tail call double @coordinate_angle(%struct.coordinate* %7, %struct.coordinate* %10, %struct.coordinate* %13) #9
  %15 = fcmp olt double %14, %3
  br i1 %15, label %.loopexit.loopexit, label %.preheader

.loopexit.loopexit:                               ; preds = %6, %.preheader
  %.0.ph = phi i64 [ 1, %.preheader ], [ 0, %6 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %.0 = phi i64 [ 1, %0 ], [ %.0.ph, %.loopexit.loopexit ]
  ret i64 %.0
}

declare double @coordinate_angle(%struct.coordinate*, %struct.coordinate*, %struct.coordinate*) #1

; Function Attrs: nounwind uwtable
define void @element_print(%struct.element* %elementPtr) #0 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %c.01 = phi i64 [ %5, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %4 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 %c.01
  tail call void @coordinate_print(%struct.coordinate* %4) #9
  %putchar = tail call i32 @putchar(i32 32) #9
  %5 = add nuw nsw i64 %c.01, 1
  %exitcond = icmp eq i64 %5, %2
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void
}

declare void @coordinate_print(%struct.coordinate*) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind uwtable
define void @element_printEdge(%struct.pair* nocapture readonly %edgePtr) #0 {
  %1 = bitcast %struct.pair* %edgePtr to %struct.coordinate**
  %2 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  tail call void @coordinate_print(%struct.coordinate* %2) #9
  %3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %4 = getelementptr inbounds %struct.pair, %struct.pair* %edgePtr, i64 0, i32 1
  %5 = bitcast i8** %4 to %struct.coordinate**
  %6 = load %struct.coordinate*, %struct.coordinate** %5, align 8
  tail call void @coordinate_print(%struct.coordinate* %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define void @element_printAngles(%struct.element* %elementPtr) #0 {
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = icmp eq i64 %2, 3
  br i1 %3, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %0
  %4 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 0
  %5 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 1
  %6 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i64 0, i32 0, i64 2
  %7 = tail call double @coordinate_angle(%struct.coordinate* %4, %struct.coordinate* %5, %struct.coordinate* %6) #9
  %8 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), double %7)
  %9 = tail call double @coordinate_angle(%struct.coordinate* %5, %struct.coordinate* %6, %struct.coordinate* %4) #9
  %10 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), double %9)
  %11 = tail call double @coordinate_angle(%struct.coordinate* %6, %struct.coordinate* %4, %struct.coordinate* %5) #9
  %12 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), double %11)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %0
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #8

declare i32 @putchar(i32)

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
!3 = distinct !{!3, !2}
!4 = distinct !{!4, !2}
!5 = distinct !{!5, !2}
!6 = distinct !{!6, !2}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.vectorize.width", i32 1337}
!9 = distinct !{!9, !2}
