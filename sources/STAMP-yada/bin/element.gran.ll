; ModuleID = '../bin/element.marked.ll'
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
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
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
@"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_vi" = external global i64
@"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_lsup" = external global i64
@"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_granularity" = external global i64

; Function Attrs: nounwind uwtable
define i64 @element_compare(%struct.element* %aElementPtr, %struct.element* %bElementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %aElementPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %bElementPtr, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.element, %struct.element* %aElementPtr, i32 0, i32 0
  %6 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.element, %struct.element* %bElementPtr, i32 0, i32 0
  %8 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %7, i32 0, i32 0
  %9 = icmp slt i64 %2, %4
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %28

; <label>:11                                      ; preds = %0
  %12 = icmp sgt i64 %2, %4
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %11
  br label %28

; <label>:14                                      ; preds = %11
  br label %15

; <label>:15                                      ; preds = %14
  br label %16

; <label>:16                                      ; preds = %25, %15
  %i.0 = phi i64 [ 0, %15 ], [ %26, %25 ]
  %17 = icmp slt i64 %i.0, %2
  br i1 %17, label %18, label %27

; <label>:18                                      ; preds = %16
  %19 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %6, i64 %i.0
  %20 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %8, i64 %i.0
  %21 = call i64 @coordinate_compare(%struct.coordinate* %19, %struct.coordinate* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %18
  br label %28

; <label>:24                                      ; preds = %18
  br label %25

; <label>:25                                      ; preds = %24
  %26 = add nsw i64 %i.0, 1
  br label %16

; <label>:27                                      ; preds = %16
  br label %28

; <label>:28                                      ; preds = %27, %23, %13, %10
  %.0 = phi i64 [ -1, %10 ], [ 1, %13 ], [ %21, %23 ], [ 0, %27 ]
  ret i64 %.0
}

declare i64 @coordinate_compare(%struct.coordinate*, %struct.coordinate*) #1

; Function Attrs: nounwind uwtable
define i64 @element_listCompare(i8* %aPtr, i8* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast i8* %aPtr to %struct.element*
  %2 = bitcast i8* %bPtr to %struct.element*
  %3 = call i64 @element_compare(%struct.element* %1, %struct.element* %2)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @element_mapCompare(%struct.pair* %aPtr, %struct.pair* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.pair, %struct.pair* %aPtr, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.element*
  %4 = getelementptr inbounds %struct.pair, %struct.pair* %bPtr, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.element*
  %7 = call i64 @element_compare(%struct.element* %3, %struct.element* %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define %struct.element* @element_alloc(%struct.coordinate* %coordinates, i64 %numCoordinate) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 256) #7
  %2 = bitcast i8* %1 to %struct.element*
  %3 = icmp ne %struct.element* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %28

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 0
  br label %6

; <label>:6                                       ; preds = %13, %4
  %i.0 = phi i64 [ 0, %4 ], [ %14, %13 ]
  %7 = icmp slt i64 %i.0, %numCoordinate
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %5, i64 0, i64 %i.0
  %10 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %i.0
  %11 = bitcast %struct.coordinate* %9 to i8*
  %12 = bitcast %struct.coordinate* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  br label %13

; <label>:13                                      ; preds = %8
  %14 = add nsw i64 %i.0, 1
  br label %6

; <label>:15                                      ; preds = %6
  %16 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 1
  store i64 %numCoordinate, i64* %16, align 8
  call void @minimizeCoordinates(%struct.element* %2)
  call void @checkAngles(%struct.element* %2)
  call void @calculateCircumCircle(%struct.element* %2)
  call void @initEdges(%struct.element* %2, %struct.coordinate* %coordinates, i64 %numCoordinate)
  %17 = call %struct.list* @list_alloc(i64 (i8*, i8*)* @element_listCompare)
  %18 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  store %struct.list* %17, %struct.list** %18, align 8
  %19 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  %20 = load %struct.list*, %struct.list** %19, align 8
  %21 = icmp ne %struct.list* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %15
  br label %25

; <label>:23                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 393, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.element_alloc, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:25                                      ; preds = %24, %22
  %26 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 12
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 13
  store i64 0, i64* %27, align 8
  br label %28

; <label>:28                                      ; preds = %._crit_edge, %25
  ret %struct.element* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @minimizeCoordinates(%struct.element* %elementPtr) #0 {
  %tmp = alloca %struct.coordinate, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 0
  %2 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  br label %5

; <label>:5                                       ; preds = %14, %0
  %minPosition.0 = phi i64 [ 0, %0 ], [ %minPosition.1, %14 ]
  %i.0 = phi i64 [ 1, %0 ], [ %15, %14 ]
  %6 = icmp slt i64 %i.0, %4
  br i1 %6, label %7, label %16

; <label>:7                                       ; preds = %5
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 %i.0
  %9 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 %minPosition.0
  %10 = call i64 @coordinate_compare(%struct.coordinate* %8, %struct.coordinate* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %._crit_edge

._crit_edge:                                      ; preds = %7
  br label %13

; <label>:12                                      ; preds = %7
  br label %13

; <label>:13                                      ; preds = %._crit_edge, %12
  %minPosition.1 = phi i64 [ %i.0, %12 ], [ %minPosition.0, %._crit_edge ]
  br label %14

; <label>:14                                      ; preds = %13
  %15 = add nsw i64 %i.0, 1
  br label %5

; <label>:16                                      ; preds = %5
  %17 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 0
  %18 = bitcast %struct.coordinate* %tmp to i8*
  %19 = bitcast %struct.coordinate* %17 to i8*
  %20 = sub nsw i64 %4, 1
  %21 = sub nsw i64 %4, 1
  %22 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 %21
  %23 = bitcast %struct.coordinate* %22 to i8*
  %24 = bitcast %struct.coordinate* %tmp to i8*
  br label %25

; <label>:25                                      ; preds = %38, %16
  %minPosition.2 = phi i64 [ %minPosition.0, %16 ], [ %39, %38 ]
  %26 = icmp ne i64 %minPosition.2, 0
  br i1 %26, label %27, label %40

; <label>:27                                      ; preds = %25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  br label %28

; <label>:28                                      ; preds = %36, %27
  %j.0 = phi i64 [ 0, %27 ], [ %37, %36 ]
  %29 = icmp slt i64 %j.0, %20
  br i1 %29, label %30, label %38

; <label>:30                                      ; preds = %28
  %31 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 %j.0
  %32 = add nsw i64 %j.0, 1
  %33 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %2, i64 %32
  %34 = bitcast %struct.coordinate* %31 to i8*
  %35 = bitcast %struct.coordinate* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false)
  br label %36

; <label>:36                                      ; preds = %30
  %37 = add nsw i64 %j.0, 1
  br label %28

; <label>:38                                      ; preds = %28
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  %39 = add nsw i64 %minPosition.2, -1
  br label %25

; <label>:40                                      ; preds = %25
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @checkAngles(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = load double, double* @global_angleConstraint, align 8
  %4 = icmp eq i64 %2, 2
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  br label %7

; <label>:5                                       ; preds = %0
  %6 = icmp eq i64 %2, 3
  br i1 %6, label %._crit_edge1, label %8

._crit_edge1:                                     ; preds = %5
  br label %7

; <label>:7                                       ; preds = %._crit_edge1, %._crit_edge
  br label %10

; <label>:8                                       ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 13
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 10
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 9
  store %struct.pair* null, %struct.pair** %13, align 8
  %14 = icmp eq i64 %2, 3
  br i1 %14, label %15, label %._crit_edge2

._crit_edge2:                                     ; preds = %10
  br label %62

; <label>:15                                      ; preds = %10
  %16 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 0
  %17 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 5
  %19 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 9
  %20 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 10
  br label %21

; <label>:21                                      ; preds = %54, %15
  %minAngle.0 = phi double [ 1.800000e+02, %15 ], [ %minAngle.1, %54 ]
  %i.0 = phi i64 [ 0, %15 ], [ %55, %54 ]
  %22 = icmp slt i64 %i.0, 3
  br i1 %22, label %23, label %56

; <label>:23                                      ; preds = %21
  %24 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %17, i64 %i.0
  %25 = add nsw i64 %i.0, 1
  %26 = srem i64 %25, 3
  %27 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %17, i64 %26
  %28 = add nsw i64 %i.0, 2
  %29 = srem i64 %28, 3
  %30 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %17, i64 %29
  %31 = call double @coordinate_angle(%struct.coordinate* %24, %struct.coordinate* %27, %struct.coordinate* %30)
  %32 = fcmp ogt double %31, 0.000000e+00
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %23
  br label %36

; <label>:34                                      ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 164, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:36                                      ; preds = %33
  %37 = fcmp olt double %31, 1.800000e+02
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %36
  br label %41

; <label>:39                                      ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:41                                      ; preds = %38
  %42 = fcmp ogt double %31, 9.000000e+01
  br i1 %42, label %43, label %._crit_edge3

._crit_edge3:                                     ; preds = %41
  br label %47

; <label>:43                                      ; preds = %41
  %44 = add nsw i64 %i.0, 1
  %45 = srem i64 %44, 3
  %46 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %18, i64 0, i64 %45
  store %struct.pair* %46, %struct.pair** %19, align 8
  br label %47

; <label>:47                                      ; preds = %._crit_edge3, %43
  %48 = fcmp olt double %31, %3
  br i1 %48, label %49, label %._crit_edge4

._crit_edge4:                                     ; preds = %47
  br label %50

; <label>:49                                      ; preds = %47
  store i64 1, i64* %20, align 8
  br label %50

; <label>:50                                      ; preds = %._crit_edge4, %49
  %51 = fcmp olt double %31, %minAngle.0
  br i1 %51, label %52, label %._crit_edge5

._crit_edge5:                                     ; preds = %50
  br label %53

; <label>:52                                      ; preds = %50
  br label %53

; <label>:53                                      ; preds = %._crit_edge5, %52
  %minAngle.1 = phi double [ %31, %52 ], [ %minAngle.0, %._crit_edge5 ]
  br label %54

; <label>:54                                      ; preds = %53
  %55 = add nsw i64 %i.0, 1
  br label %21

; <label>:56                                      ; preds = %21
  %57 = fcmp olt double %minAngle.0, 1.800000e+02
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %56
  br label %61

; <label>:59                                      ; preds = %56
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 176, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %61

; <label>:61                                      ; preds = %60, %58
  br label %62

; <label>:62                                      ; preds = %._crit_edge2, %61
  %minAngle.2 = phi double [ %minAngle.0, %61 ], [ 1.800000e+02, %._crit_edge2 ]
  %63 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 4
  store double %minAngle.2, double* %63, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calculateCircumCircle(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 0
  %4 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 2
  %6 = icmp eq i64 %2, 2
  br i1 %6, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  %8 = icmp eq i64 %2, 3
  br i1 %8, label %._crit_edge1, label %10

._crit_edge1:                                     ; preds = %7
  br label %9

; <label>:9                                       ; preds = %._crit_edge1, %._crit_edge
  br label %12

; <label>:10                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.calculateCircumCircle, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = icmp eq i64 %2, 2
  br i1 %13, label %14, label %33

; <label>:14                                      ; preds = %12
  %15 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 0
  %16 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 1
  %19 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fadd double %17, %20
  %22 = fdiv double %21, 2.000000e+00
  %23 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i32 0, i32 0
  store double %22, double* %23, align 8
  %24 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 0
  %25 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %24, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 1
  %28 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = fadd double %26, %29
  %31 = fdiv double %30, 2.000000e+00
  %32 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i32 0, i32 1
  store double %31, double* %32, align 8
  br label %84

; <label>:33                                      ; preds = %12
  %34 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 0
  %35 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 0
  %38 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %37, i32 0, i32 1
  %39 = load double, double* %38, align 8
  %40 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 1
  %41 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 1
  %44 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 2
  %47 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 2
  %50 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %49, i32 0, i32 1
  %51 = load double, double* %50, align 8
  %52 = fsub double %42, %36
  %53 = fsub double %45, %39
  %54 = fsub double %48, %36
  %55 = fsub double %51, %39
  %56 = fmul double %52, %52
  %57 = fmul double %53, %53
  %58 = fadd double %56, %57
  %59 = fmul double %54, %54
  %60 = fmul double %55, %55
  %61 = fadd double %59, %60
  %62 = fmul double %53, %61
  %63 = fmul double %55, %58
  %64 = fsub double %62, %63
  %65 = fmul double %52, %61
  %66 = fmul double %54, %58
  %67 = fsub double %65, %66
  %68 = fmul double %52, %55
  %69 = fmul double %54, %53
  %70 = fsub double %68, %69
  %71 = fmul double 2.000000e+00, %70
  %72 = fdiv double %64, %71
  %73 = fsub double %36, %72
  %74 = fdiv double %67, %71
  %75 = fadd double %39, %74
  %76 = call double @fabs(double %71) #9
  %77 = fcmp ogt double %76, 0x10000000000000
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %33
  br label %81

; <label>:79                                      ; preds = %33
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 244, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.calculateCircumCircle, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %81

; <label>:81                                      ; preds = %80, %78
  %82 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i32 0, i32 0
  store double %73, double* %82, align 8
  %83 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i32 0, i32 1
  store double %75, double* %83, align 8
  br label %84

; <label>:84                                      ; preds = %81, %14
  %85 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 0
  %86 = call double @coordinate_distance(%struct.coordinate* %5, %struct.coordinate* %85)
  %87 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 3
  store double %86, double* %87, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initEdges(%struct.element* %elementPtr, %struct.coordinate* %coordinates, i64 %numCoordinate) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sub nsw i64 %numCoordinate, 1
  %2 = mul nsw i64 %numCoordinate, %1
  %3 = sdiv i64 %2, 2
  %4 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 6
  store i64 %3, i64* %4, align 8
  br label %5

; <label>:5                                       ; preds = %8, %0
  %e.0 = phi i64 [ 0, %0 ], [ %9, %8 ]
  %6 = icmp slt i64 %e.0, %3
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %5
  call void @setEdge(%struct.element* %elementPtr, i64 %e.0)
  br label %8

; <label>:8                                       ; preds = %7
  %9 = add nsw i64 %e.0, 1
  br label %5

; <label>:10                                      ; preds = %5
  ret void
}

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define %struct.element* @Pelement_alloc(%struct.coordinate* %coordinates, i64 %numCoordinate) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 256) #7
  %2 = bitcast i8* %1 to %struct.element*
  %3 = icmp ne %struct.element* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %28

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 0
  br label %6

; <label>:6                                       ; preds = %13, %4
  %i.0 = phi i64 [ 0, %4 ], [ %14, %13 ]
  %7 = icmp slt i64 %i.0, %numCoordinate
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %5, i64 0, i64 %i.0
  %10 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %i.0
  %11 = bitcast %struct.coordinate* %9 to i8*
  %12 = bitcast %struct.coordinate* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  br label %13

; <label>:13                                      ; preds = %8
  %14 = add nsw i64 %i.0, 1
  br label %6

; <label>:15                                      ; preds = %6
  %16 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 1
  store i64 %numCoordinate, i64* %16, align 8
  call void @minimizeCoordinates(%struct.element* %2)
  call void @checkAngles(%struct.element* %2)
  call void @calculateCircumCircle(%struct.element* %2)
  call void @initEdges(%struct.element* %2, %struct.coordinate* %coordinates, i64 %numCoordinate)
  %17 = call %struct.list* @Plist_alloc(i64 (i8*, i8*)* @element_listCompare)
  %18 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  store %struct.list* %17, %struct.list** %18, align 8
  %19 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  %20 = load %struct.list*, %struct.list** %19, align 8
  %21 = icmp ne %struct.list* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %15
  br label %25

; <label>:23                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 425, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.Pelement_alloc, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:25                                      ; preds = %24, %22
  %26 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 12
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 13
  store i64 0, i64* %27, align 8
  br label %28

; <label>:28                                      ; preds = %._crit_edge, %25
  ret %struct.element* %2
}

declare %struct.list* @Plist_alloc(i64 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define %struct.element* @TMelement_alloc(%struct.coordinate* %coordinates, i64 %numCoordinate) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 256) #7
  %2 = bitcast i8* %1 to %struct.element*
  %3 = icmp ne %struct.element* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %27

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 0
  br label %__kernel__TMelement_alloc0_outer_chunking

__kernel__TMelement_alloc0_outer_chunking:        ; preds = %4, %__kernel__TMelement_alloc0_exitChunk
  %i.0 = phi i64 [ 0, %4 ], [ %i.1, %__kernel__TMelement_alloc0_exitChunk ]
  %lsup_value = load i64, i64* @"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_lsup"
  store i64 %lsup_value, i64* @"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_vi"
  %granularity_value = load i64, i64* @"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_granularity"
  %new_lsup = add i64 %lsup_value, %granularity_value
  store i64 %new_lsup, i64* @"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_lsup"
  %outer_vi = load i64, i64* @"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_vi"
  br label %__kernel____kernel__TMelement_alloc0_viCond

__kernel____kernel__TMelement_alloc0_viCond:      ; preds = %__kernel__TMelement_alloc0_outer_chunking, %12
  %i.1 = phi i64 [ %i.0, %__kernel__TMelement_alloc0_outer_chunking ], [ %13, %12 ]
  %vi_value = phi i64 [ %outer_vi, %__kernel__TMelement_alloc0_outer_chunking ], [ %"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_vi_inc", %12 ]
  %lsup_value1 = load i64, i64* @"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_lsup"
  %"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_vi_cmp" = icmp slt i64 %vi_value, %lsup_value1
  br i1 %"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_vi_cmp", label %__kernel__TMelement_alloc0, label %__kernel__TMelement_alloc0_exitChunk

__kernel__TMelement_alloc0_exitChunk:             ; preds = %__kernel____kernel__TMelement_alloc0_viCond
  br label %__kernel__TMelement_alloc0_outer_chunking

__kernel__TMelement_alloc0:                       ; preds = %__kernel____kernel__TMelement_alloc0_viCond
  %6 = icmp slt i64 %i.1, %numCoordinate
  br i1 %6, label %7, label %14

; <label>:7                                       ; preds = %__kernel__TMelement_alloc0
  %8 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %5, i64 0, i64 %i.1
  %9 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %coordinates, i64 %i.1
  %10 = bitcast %struct.coordinate* %8 to i8*
  %11 = bitcast %struct.coordinate* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  br label %12

; <label>:12                                      ; preds = %7
  %13 = add nsw i64 %i.1, 1
  %"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_vi_inc" = add i64 %vi_value, 1
  store i64 %"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_vi_inc", i64* @"../bin/element.marked.ll_TMelement_alloc___kernel__TMelement_alloc0_vi"
  br label %__kernel____kernel__TMelement_alloc0_viCond, !llvm.loop !1

; <label>:14                                      ; preds = %__kernel__TMelement_alloc0
  %15 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 1
  store i64 %numCoordinate, i64* %15, align 8
  call void @minimizeCoordinates(%struct.element* %2)
  call void @checkAngles(%struct.element* %2)
  call void @calculateCircumCircle(%struct.element* %2)
  call void @initEdges(%struct.element* %2, %struct.coordinate* %coordinates, i64 %numCoordinate)
  %16 = call %struct.list* @TMlist_alloc(i64 (i8*, i8*)* @element_listCompare)
  %17 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  store %struct.list* %16, %struct.list** %17, align 8
  %18 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  %19 = load %struct.list*, %struct.list** %18, align 8
  %20 = icmp ne %struct.list* %19, null
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %14
  br label %24

; <label>:22                                      ; preds = %14
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.TMelement_alloc, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %24

; <label>:24                                      ; preds = %23, %21
  %25 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 12
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 13
  store i64 0, i64* %26, align 8
  br label %27

; <label>:27                                      ; preds = %._crit_edge, %24
  ret %struct.element* %2
}

declare %struct.list* @TMlist_alloc(i64 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define void @element_free(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  call void @list_free(%struct.list* %2)
  %3 = bitcast %struct.element* %elementPtr to i8*
  call void @free(i8* %3) #7
  ret void
}

declare void @list_free(%struct.list*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @Pelement_free(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  call void @Plist_free(%struct.list* %2)
  %3 = bitcast %struct.element* %elementPtr to i8*
  call void @free(i8* %3) #7
  ret void
}

declare void @Plist_free(%struct.list*) #1

; Function Attrs: nounwind uwtable
define void @TMelement_free(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  call void @TMlist_free(%struct.list* %2)
  %3 = bitcast %struct.element* %elementPtr to i8*
  call void @free(i8* %3) #7
  ret void
}

declare void @TMlist_free(%struct.list*) #1

; Function Attrs: nounwind uwtable
define i64 @element_getNumEdge(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 6
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define %struct.pair* @element_getEdge(%struct.element* %elementPtr, i64 %i) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = icmp slt i64 %i, 0
  br i1 %1, label %._crit_edge, label %2

._crit_edge:                                      ; preds = %0
  br label %6

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 6
  %4 = load i64, i64* %3, align 8
  %5 = icmp sgt i64 %i, %4
  br i1 %5, label %._crit_edge1, label %7

._crit_edge1:                                     ; preds = %2
  br label %6

; <label>:6                                       ; preds = %._crit_edge1, %._crit_edge
  br label %10

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 5
  %9 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %8, i64 0, i64 %i
  br label %10

; <label>:10                                      ; preds = %7, %6
  %.0 = phi %struct.pair* [ null, %6 ], [ %9, %7 ]
  ret %struct.pair* %.0
}

; Function Attrs: nounwind uwtable
define i64 @element_listCompareEdge(i8* %aPtr, i8* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast i8* %aPtr to %struct.pair*
  %2 = bitcast i8* %bPtr to %struct.pair*
  %3 = call i64 @compareEdge(%struct.pair* %1, %struct.pair* %2)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal i64 @compareEdge(%struct.pair* %aEdgePtr, %struct.pair* %bEdgePtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.pair, %struct.pair* %aEdgePtr, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.coordinate*
  %4 = getelementptr inbounds %struct.pair, %struct.pair* %bEdgePtr, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.coordinate*
  %7 = call i64 @coordinate_compare(%struct.coordinate* %3, %struct.coordinate* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %18

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %struct.pair, %struct.pair* %aEdgePtr, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.coordinate*
  %14 = getelementptr inbounds %struct.pair, %struct.pair* %bEdgePtr, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.coordinate*
  %17 = call i64 @coordinate_compare(%struct.coordinate* %13, %struct.coordinate* %16)
  br label %18

; <label>:18                                      ; preds = %10, %9
  %.reg2mem3.0 = phi i64 [ %7, %9 ], [ %17, %10 ]
  ret i64 %.reg2mem3.0
}

; Function Attrs: nounwind uwtable
define i64 @element_mapCompareEdge(%struct.pair* %aPtr, %struct.pair* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.pair, %struct.pair* %aPtr, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.pair*
  %4 = getelementptr inbounds %struct.pair, %struct.pair* %bPtr, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.pair*
  %7 = call i64 @compareEdge(%struct.pair* %3, %struct.pair* %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @element_heapCompare(i8* %aPtr, i8* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast i8* %aPtr to %struct.element*
  %2 = bitcast i8* %bPtr to %struct.element*
  %3 = getelementptr inbounds %struct.element, %struct.element* %1, i32 0, i32 9
  %4 = load %struct.pair*, %struct.pair** %3, align 8
  %5 = icmp ne %struct.pair* %4, null
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 9
  %8 = load %struct.pair*, %struct.pair** %7, align 8
  %9 = icmp ne %struct.pair* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  br label %18

; <label>:11                                      ; preds = %6
  br label %18

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 9
  %14 = load %struct.pair*, %struct.pair** %13, align 8
  %15 = icmp ne %struct.pair* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %12
  br label %18

; <label>:17                                      ; preds = %12
  br label %18

; <label>:18                                      ; preds = %17, %16, %11, %10
  %.0 = phi i64 [ 0, %10 ], [ 1, %11 ], [ -1, %16 ], [ 0, %17 ]
  ret i64 %.0
}

; Function Attrs: nounwind readonly uwtable
define i64 @element_isInCircumCircle(%struct.element* %elementPtr, %struct.coordinate* %coordinatePtr) #5 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 2
  %2 = call double @coordinate_distance(%struct.coordinate* %coordinatePtr, %struct.coordinate* %1)
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 3
  %4 = load double, double* %3, align 8
  %5 = fcmp ole double %2, %4
  %6 = select i1 %5, i32 1, i32 0
  %7 = sext i32 %6 to i64
  ret i64 %7
}

declare double @coordinate_distance(%struct.coordinate*, %struct.coordinate*) #1

; Function Attrs: nounwind uwtable
define void @element_clearEncroached(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 9
  store %struct.pair* null, %struct.pair** %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.pair* @element_getEncroachedPtr(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 9
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  ret %struct.pair* %2
}

; Function Attrs: nounwind uwtable
define i64 @element_isSkinny(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 10
  %2 = load i64, i64* %1, align 8
  %3 = icmp ne i64 %2, 0
  %4 = select i1 %3, i32 1, i32 0
  %5 = sext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @element_isBad(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @isEncroached(%struct.element* %elementPtr)
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %0
  br label %6

; <label>:3                                       ; preds = %0
  %4 = call i64 @element_isSkinny(%struct.element* %elementPtr)
  %5 = icmp ne i64 %4, 0
  br label %6

; <label>:6                                       ; preds = %._crit_edge, %3
  %.reg2mem1.0 = phi i1 [ true, %._crit_edge ], [ %5, %3 ]
  %7 = select i1 %.reg2mem1.0, i32 1, i32 0
  %8 = sext i32 %7 to i64
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal i64 @isEncroached(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 9
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = icmp ne %struct.pair* %2, null
  %4 = select i1 %3, i32 1, i32 0
  %5 = sext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @element_isReferenced(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 13
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i64 @TMelement_isReferenced(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 13
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define void @element_setIsReferenced(%struct.element* %elementPtr, i64 %status) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 13
  store i64 %status, i64* %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMelement_setIsReferenced(%struct.element* %elementPtr, i64 %status) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 13
  store i64 %status, i64* %1, align 8
  %2 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 13
  %3 = load i64, i64* %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @element_isGarbage(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 12
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i64 @TMelement_isGarbage(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 12
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define void @element_setIsGarbage(%struct.element* %elementPtr, i64 %status) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 12
  store i64 %status, i64* %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMelement_setIsGarbage(%struct.element* %elementPtr, i64 %status) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 12
  store i64 %status, i64* %1, align 8
  %2 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 12
  %3 = load i64, i64* %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @element_addNeighbor(%struct.element* %elementPtr, %struct.element* %neighborPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = bitcast %struct.element* %neighborPtr to i8*
  %4 = call i64 @list_insert(%struct.list* %2, i8* %3)
  %5 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 11
  %6 = load %struct.list*, %struct.list** %5, align 8
  %7 = call i64 @list_getSize(%struct.list* %6)
  %8 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp sle i64 %7, %9
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  br label %14

; <label>:12                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 779, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.element_addNeighbor, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  ret void
}

declare i64 @list_insert(%struct.list*, i8*) #1

declare i64 @list_getSize(%struct.list*) #1

; Function Attrs: nounwind uwtable
define void @TMelement_addNeighbor(%struct.element* %elementPtr, %struct.element* %neighborPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  %3 = bitcast %struct.element* %neighborPtr to i8*
  %4 = call i64 @TMlist_insert(%struct.list* %2, i8* %3)
  ret void
}

declare i64 @TMlist_insert(%struct.list*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.list* @element_getNeighborListPtr(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 11
  %2 = load %struct.list*, %struct.list** %1, align 8
  ret %struct.list* %2
}

; Function Attrs: nounwind readonly uwtable
define %struct.pair* @element_getCommonEdge(%struct.element* %aElementPtr, %struct.element* %bElementPtr) #5 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %aElementPtr, i32 0, i32 5
  %2 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.element, %struct.element* %bElementPtr, i32 0, i32 5
  %4 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.element, %struct.element* %aElementPtr, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.element, %struct.element* %bElementPtr, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  br label %9

; <label>:9                                       ; preds = %24, %0
  %a.0 = phi i64 [ 0, %0 ], [ %25, %24 ]
  %10 = icmp slt i64 %a.0, %6
  br i1 %10, label %11, label %26

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds %struct.pair, %struct.pair* %2, i64 %a.0
  br label %13

; <label>:13                                      ; preds = %21, %11
  %b.0 = phi i64 [ 0, %11 ], [ %22, %21 ]
  %14 = icmp slt i64 %b.0, %8
  br i1 %14, label %15, label %23

; <label>:15                                      ; preds = %13
  %16 = getelementptr inbounds %struct.pair, %struct.pair* %4, i64 %b.0
  %17 = call i64 @compareEdge(%struct.pair* %12, %struct.pair* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %15
  br label %27

; <label>:20                                      ; preds = %15
  br label %21

; <label>:21                                      ; preds = %20
  %22 = add nsw i64 %b.0, 1
  br label %13

; <label>:23                                      ; preds = %13
  br label %24

; <label>:24                                      ; preds = %23
  %25 = add nsw i64 %a.0, 1
  br label %9

; <label>:26                                      ; preds = %9
  br label %27

; <label>:27                                      ; preds = %26, %19
  %.0 = phi %struct.pair* [ %12, %19 ], [ null, %26 ]
  ret %struct.pair* %.0
}

; Function Attrs: nounwind uwtable
define { double, double } @element_getNewPoint(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.coordinate, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %2 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 9
  %3 = load %struct.pair*, %struct.pair** %2, align 8
  %4 = icmp ne %struct.pair* %3, null
  br i1 %4, label %5, label %25

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 5
  %9 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %8, i32 0, i32 0
  br label %10

; <label>:10                                      ; preds = %22, %5
  %e.0 = phi i64 [ 0, %5 ], [ %23, %22 ]
  %11 = icmp slt i64 %e.0, %7
  br i1 %11, label %12, label %24

; <label>:12                                      ; preds = %10
  %13 = getelementptr inbounds %struct.pair, %struct.pair* %9, i64 %e.0
  %14 = call i64 @compareEdge(%struct.pair* %3, %struct.pair* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %12
  %17 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 7
  %18 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %17, i64 0, i64 %e.0
  %19 = bitcast %struct.coordinate* %1 to i8*
  %20 = bitcast %struct.coordinate* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false)
  br label %29

; <label>:21                                      ; preds = %12
  br label %22

; <label>:22                                      ; preds = %21
  %23 = add nsw i64 %e.0, 1
  br label %10

; <label>:24                                      ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 854, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.element_getNewPoint, i32 0, i32 0)) #8
  unreachable

; <label>:25                                      ; preds = %0
  %26 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 2
  %27 = bitcast %struct.coordinate* %1 to i8*
  %28 = bitcast %struct.coordinate* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false)
  br label %29

; <label>:29                                      ; preds = %25, %16
  %30 = bitcast %struct.coordinate* %1 to { double, double }*
  %31 = load { double, double }, { double, double }* %30, align 8
  ret { double, double } %31
}

; Function Attrs: nounwind uwtable
define i64 @element_checkAngles(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = load double, double* @global_angleConstraint, align 8
  %4 = icmp eq i64 %2, 3
  br i1 %4, label %5, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %25

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 0
  %7 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %6, i32 0, i32 0
  br label %8

; <label>:8                                       ; preds = %22, %5
  %i.0 = phi i64 [ 0, %5 ], [ %23, %22 ]
  %9 = icmp slt i64 %i.0, 3
  br i1 %9, label %10, label %24

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %7, i64 %i.0
  %12 = add nsw i64 %i.0, 1
  %13 = srem i64 %12, 3
  %14 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %7, i64 %13
  %15 = add nsw i64 %i.0, 2
  %16 = srem i64 %15, 3
  %17 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %7, i64 %16
  %18 = call double @coordinate_angle(%struct.coordinate* %11, %struct.coordinate* %14, %struct.coordinate* %17)
  %19 = fcmp olt double %18, %3
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %10
  br label %26

; <label>:21                                      ; preds = %10
  br label %22

; <label>:22                                      ; preds = %21
  %23 = add nsw i64 %i.0, 1
  br label %8

; <label>:24                                      ; preds = %8
  br label %25

; <label>:25                                      ; preds = %._crit_edge, %24
  br label %26

; <label>:26                                      ; preds = %25, %20
  %.0 = phi i64 [ 0, %20 ], [ 1, %25 ]
  ret i64 %.0
}

declare double @coordinate_angle(%struct.coordinate*, %struct.coordinate*, %struct.coordinate*) #1

; Function Attrs: nounwind uwtable
define void @element_print(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 0
  %4 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %3, i32 0, i32 0
  br label %5

; <label>:5                                       ; preds = %10, %0
  %c.0 = phi i64 [ 0, %0 ], [ %11, %10 ]
  %6 = icmp slt i64 %c.0, %2
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %5
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 %c.0
  call void @coordinate_print(%struct.coordinate* %8)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %7
  %11 = add nsw i64 %c.0, 1
  br label %5

; <label>:12                                      ; preds = %5
  ret void
}

declare void @coordinate_print(%struct.coordinate*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @element_printEdge(%struct.pair* %edgePtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.pair, %struct.pair* %edgePtr, i32 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.coordinate*
  call void @coordinate_print(%struct.coordinate* %3)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  %5 = getelementptr inbounds %struct.pair, %struct.pair* %edgePtr, i32 0, i32 1
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.coordinate*
  call void @coordinate_print(%struct.coordinate* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @element_printAngles(%struct.element* %elementPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = icmp eq i64 %2, 3
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %22

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 0
  %6 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %5, i32 0, i32 0
  br label %7

; <label>:7                                       ; preds = %19, %4
  %i.0 = phi i64 [ 0, %4 ], [ %20, %19 ]
  %8 = icmp slt i64 %i.0, 3
  br i1 %8, label %9, label %21

; <label>:9                                       ; preds = %7
  %10 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %6, i64 %i.0
  %11 = add nsw i64 %i.0, 1
  %12 = srem i64 %11, 3
  %13 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %6, i64 %12
  %14 = add nsw i64 %i.0, 2
  %15 = srem i64 %14, 3
  %16 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %6, i64 %15
  %17 = call double @coordinate_angle(%struct.coordinate* %10, %struct.coordinate* %13, %struct.coordinate* %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double %17)
  br label %19

; <label>:19                                      ; preds = %9
  %20 = add nsw i64 %i.0, 1
  br label %7

; <label>:21                                      ; preds = %7
  br label %22

; <label>:22                                      ; preds = %._crit_edge, %21
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #6

; Function Attrs: nounwind uwtable
define internal void @setEdge(%struct.element* %elementPtr, i64 %i) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 0
  %4 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 %i
  %6 = add nsw i64 %i, 1
  %7 = srem i64 %6, %2
  %8 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %4, i64 %7
  %9 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 5
  %10 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %9, i64 0, i64 %i
  %11 = call i64 @coordinate_compare(%struct.coordinate* %5, %struct.coordinate* %8)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  br label %16

; <label>:14                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 272, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.setEdge, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = icmp slt i64 %11, 0
  br i1 %17, label %18, label %23

; <label>:18                                      ; preds = %16
  %19 = bitcast %struct.coordinate* %5 to i8*
  %20 = getelementptr inbounds %struct.pair, %struct.pair* %10, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = bitcast %struct.coordinate* %8 to i8*
  %22 = getelementptr inbounds %struct.pair, %struct.pair* %10, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  br label %28

; <label>:23                                      ; preds = %16
  %24 = bitcast %struct.coordinate* %8 to i8*
  %25 = getelementptr inbounds %struct.pair, %struct.pair* %10, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = bitcast %struct.coordinate* %5 to i8*
  %27 = getelementptr inbounds %struct.pair, %struct.pair* %10, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  br label %28

; <label>:28                                      ; preds = %23, %18
  %29 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 7
  %30 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %29, i64 0, i64 %i
  %31 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i32 0, i32 0
  %32 = load double, double* %31, align 8
  %33 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %8, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = fadd double %32, %34
  %36 = fdiv double %35, 2.000000e+00
  %37 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %30, i32 0, i32 0
  store double %36, double* %37, align 8
  %38 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %5, i32 0, i32 1
  %39 = load double, double* %38, align 8
  %40 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %8, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = fadd double %39, %41
  %43 = fdiv double %42, 2.000000e+00
  %44 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %30, i32 0, i32 1
  store double %43, double* %44, align 8
  %45 = call double @coordinate_distance(%struct.coordinate* %5, %struct.coordinate* %30)
  %46 = getelementptr inbounds %struct.element, %struct.element* %elementPtr, i32 0, i32 8
  %47 = getelementptr inbounds [3 x double], [3 x double]* %46, i64 0, i64 %i
  store double %45, double* %47, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.vectorize.width", i32 1337}
