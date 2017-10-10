; ModuleID = 'element.c'
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

; Function Attrs: nounwind uwtable
define i64 @element_compare(%struct.element* %aElementPtr, %struct.element* %bElementPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.element*, align 8
  %3 = alloca %struct.element*, align 8
  %aNumCoordinate = alloca i64, align 8
  %bNumCoordinate = alloca i64, align 8
  %aCoordinates = alloca %struct.coordinate*, align 8
  %bCoordinates = alloca %struct.coordinate*, align 8
  %i = alloca i64, align 8
  %compareCoordinate = alloca i64, align 8
  store %struct.element* %aElementPtr, %struct.element** %2, align 8
  store %struct.element* %bElementPtr, %struct.element** %3, align 8
  %4 = load %struct.element*, %struct.element** %2, align 8
  %5 = getelementptr inbounds %struct.element, %struct.element* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %aNumCoordinate, align 8
  %7 = load %struct.element*, %struct.element** %3, align 8
  %8 = getelementptr inbounds %struct.element, %struct.element* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %bNumCoordinate, align 8
  %10 = load %struct.element*, %struct.element** %2, align 8
  %11 = getelementptr inbounds %struct.element, %struct.element* %10, i32 0, i32 0
  %12 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %11, i32 0, i32 0
  store %struct.coordinate* %12, %struct.coordinate** %aCoordinates, align 8
  %13 = load %struct.element*, %struct.element** %3, align 8
  %14 = getelementptr inbounds %struct.element, %struct.element* %13, i32 0, i32 0
  %15 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %14, i32 0, i32 0
  store %struct.coordinate* %15, %struct.coordinate** %bCoordinates, align 8
  %16 = load i64, i64* %aNumCoordinate, align 8
  %17 = load i64, i64* %bNumCoordinate, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %0
  store i64 -1, i64* %1, align 8
  br label %48

; <label>:20                                      ; preds = %0
  %21 = load i64, i64* %aNumCoordinate, align 8
  %22 = load i64, i64* %bNumCoordinate, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %20
  store i64 1, i64* %1, align 8
  br label %48

; <label>:25                                      ; preds = %20
  br label %26

; <label>:26                                      ; preds = %25
  store i64 0, i64* %i, align 8
  br label %27

; <label>:27                                      ; preds = %44, %26
  %28 = load i64, i64* %i, align 8
  %29 = load i64, i64* %aNumCoordinate, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %47

; <label>:31                                      ; preds = %27
  %32 = load i64, i64* %i, align 8
  %33 = load %struct.coordinate*, %struct.coordinate** %aCoordinates, align 8
  %34 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %33, i64 %32
  %35 = load i64, i64* %i, align 8
  %36 = load %struct.coordinate*, %struct.coordinate** %bCoordinates, align 8
  %37 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %36, i64 %35
  %38 = call i64 @coordinate_compare(%struct.coordinate* %34, %struct.coordinate* %37)
  store i64 %38, i64* %compareCoordinate, align 8
  %39 = load i64, i64* %compareCoordinate, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

; <label>:41                                      ; preds = %31
  %42 = load i64, i64* %compareCoordinate, align 8
  store i64 %42, i64* %1, align 8
  br label %48

; <label>:43                                      ; preds = %31
  br label %44

; <label>:44                                      ; preds = %43
  %45 = load i64, i64* %i, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %i, align 8
  br label %27

; <label>:47                                      ; preds = %27
  store i64 0, i64* %1, align 8
  br label %48

; <label>:48                                      ; preds = %47, %41, %24, %19
  %49 = load i64, i64* %1, align 8
  ret i64 %49
}

declare i64 @coordinate_compare(%struct.coordinate*, %struct.coordinate*) #1

; Function Attrs: nounwind uwtable
define i64 @element_listCompare(i8* %aPtr, i8* %bPtr) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %aElementPtr = alloca %struct.element*, align 8
  %bElementPtr = alloca %struct.element*, align 8
  store i8* %aPtr, i8** %1, align 8
  store i8* %bPtr, i8** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %struct.element*
  store %struct.element* %4, %struct.element** %aElementPtr, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.element*
  store %struct.element* %6, %struct.element** %bElementPtr, align 8
  %7 = load %struct.element*, %struct.element** %aElementPtr, align 8
  %8 = load %struct.element*, %struct.element** %bElementPtr, align 8
  %9 = call i64 @element_compare(%struct.element* %7, %struct.element* %8)
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define i64 @element_mapCompare(%struct.pair* %aPtr, %struct.pair* %bPtr) #0 {
  %1 = alloca %struct.pair*, align 8
  %2 = alloca %struct.pair*, align 8
  %aElementPtr = alloca %struct.element*, align 8
  %bElementPtr = alloca %struct.element*, align 8
  store %struct.pair* %aPtr, %struct.pair** %1, align 8
  store %struct.pair* %bPtr, %struct.pair** %2, align 8
  %3 = load %struct.pair*, %struct.pair** %1, align 8
  %4 = getelementptr inbounds %struct.pair, %struct.pair* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.element*
  store %struct.element* %6, %struct.element** %aElementPtr, align 8
  %7 = load %struct.pair*, %struct.pair** %2, align 8
  %8 = getelementptr inbounds %struct.pair, %struct.pair* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.element*
  store %struct.element* %10, %struct.element** %bElementPtr, align 8
  %11 = load %struct.element*, %struct.element** %aElementPtr, align 8
  %12 = load %struct.element*, %struct.element** %bElementPtr, align 8
  %13 = call i64 @element_compare(%struct.element* %11, %struct.element* %12)
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define %struct.element* @element_alloc(%struct.coordinate* %coordinates, i64 %numCoordinate) #0 {
  %1 = alloca %struct.coordinate*, align 8
  %2 = alloca i64, align 8
  %elementPtr = alloca %struct.element*, align 8
  %i = alloca i64, align 8
  store %struct.coordinate* %coordinates, %struct.coordinate** %1, align 8
  store i64 %numCoordinate, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 256) #7
  %4 = bitcast i8* %3 to %struct.element*
  store %struct.element* %4, %struct.element** %elementPtr, align 8
  %5 = load %struct.element*, %struct.element** %elementPtr, align 8
  %6 = icmp ne %struct.element* %5, null
  br i1 %6, label %7, label %50

; <label>:7                                       ; preds = %0
  store i64 0, i64* %i, align 8
  br label %8

; <label>:8                                       ; preds = %22, %7
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %25

; <label>:12                                      ; preds = %8
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.element*, %struct.element** %elementPtr, align 8
  %15 = getelementptr inbounds %struct.element, %struct.element* %14, i32 0, i32 0
  %16 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %15, i64 0, i64 %13
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %19 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %18, i64 %17
  %20 = bitcast %struct.coordinate* %16 to i8*
  %21 = bitcast %struct.coordinate* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false)
  br label %22

; <label>:22                                      ; preds = %12
  %23 = load i64, i64* %i, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %i, align 8
  br label %8

; <label>:25                                      ; preds = %8
  %26 = load i64, i64* %2, align 8
  %27 = load %struct.element*, %struct.element** %elementPtr, align 8
  %28 = getelementptr inbounds %struct.element, %struct.element* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.element*, %struct.element** %elementPtr, align 8
  call void @minimizeCoordinates(%struct.element* %29)
  %30 = load %struct.element*, %struct.element** %elementPtr, align 8
  call void @checkAngles(%struct.element* %30)
  %31 = load %struct.element*, %struct.element** %elementPtr, align 8
  call void @calculateCircumCircle(%struct.element* %31)
  %32 = load %struct.element*, %struct.element** %elementPtr, align 8
  %33 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %34 = load i64, i64* %2, align 8
  call void @initEdges(%struct.element* %32, %struct.coordinate* %33, i64 %34)
  %35 = call %struct.list* @list_alloc(i64 (i8*, i8*)* @element_listCompare)
  %36 = load %struct.element*, %struct.element** %elementPtr, align 8
  %37 = getelementptr inbounds %struct.element, %struct.element* %36, i32 0, i32 11
  store %struct.list* %35, %struct.list** %37, align 8
  %38 = load %struct.element*, %struct.element** %elementPtr, align 8
  %39 = getelementptr inbounds %struct.element, %struct.element* %38, i32 0, i32 11
  %40 = load %struct.list*, %struct.list** %39, align 8
  %41 = icmp ne %struct.list* %40, null
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %25
  br label %45

; <label>:43                                      ; preds = %25
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 393, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.element_alloc, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = load %struct.element*, %struct.element** %elementPtr, align 8
  %47 = getelementptr inbounds %struct.element, %struct.element* %46, i32 0, i32 12
  store i64 0, i64* %47, align 8
  %48 = load %struct.element*, %struct.element** %elementPtr, align 8
  %49 = getelementptr inbounds %struct.element, %struct.element* %48, i32 0, i32 13
  store i64 0, i64* %49, align 8
  br label %50

; <label>:50                                      ; preds = %45, %0
  %51 = load %struct.element*, %struct.element** %elementPtr, align 8
  ret %struct.element* %51
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @minimizeCoordinates(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  %i = alloca i64, align 8
  %coordinates = alloca %struct.coordinate*, align 8
  %numCoordinate = alloca i64, align 8
  %minPosition = alloca i64, align 8
  %tmp = alloca %struct.coordinate, align 8
  %j = alloca i64, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 0
  %4 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %3, i32 0, i32 0
  store %struct.coordinate* %4, %struct.coordinate** %coordinates, align 8
  %5 = load %struct.element*, %struct.element** %1, align 8
  %6 = getelementptr inbounds %struct.element, %struct.element* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %numCoordinate, align 8
  store i64 0, i64* %minPosition, align 8
  store i64 1, i64* %i, align 8
  br label %8

; <label>:8                                       ; preds = %24, %0
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %numCoordinate, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %27

; <label>:12                                      ; preds = %8
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %15 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %14, i64 %13
  %16 = load i64, i64* %minPosition, align 8
  %17 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %18 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %17, i64 %16
  %19 = call i64 @coordinate_compare(%struct.coordinate* %15, %struct.coordinate* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %12
  %22 = load i64, i64* %i, align 8
  store i64 %22, i64* %minPosition, align 8
  br label %23

; <label>:23                                      ; preds = %21, %12
  br label %24

; <label>:24                                      ; preds = %23
  %25 = load i64, i64* %i, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %i, align 8
  br label %8

; <label>:27                                      ; preds = %8
  br label %28

; <label>:28                                      ; preds = %54, %27
  %29 = load i64, i64* %minPosition, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %63

; <label>:31                                      ; preds = %28
  %32 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %33 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %32, i64 0
  %34 = bitcast %struct.coordinate* %tmp to i8*
  %35 = bitcast %struct.coordinate* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false)
  store i64 0, i64* %j, align 8
  br label %36

; <label>:36                                      ; preds = %51, %31
  %37 = load i64, i64* %j, align 8
  %38 = load i64, i64* %numCoordinate, align 8
  %39 = sub nsw i64 %38, 1
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %54

; <label>:41                                      ; preds = %36
  %42 = load i64, i64* %j, align 8
  %43 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %44 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %43, i64 %42
  %45 = load i64, i64* %j, align 8
  %46 = add nsw i64 %45, 1
  %47 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %48 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %47, i64 %46
  %49 = bitcast %struct.coordinate* %44 to i8*
  %50 = bitcast %struct.coordinate* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 16, i32 8, i1 false)
  br label %51

; <label>:51                                      ; preds = %41
  %52 = load i64, i64* %j, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %j, align 8
  br label %36

; <label>:54                                      ; preds = %36
  %55 = load i64, i64* %numCoordinate, align 8
  %56 = sub nsw i64 %55, 1
  %57 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %58 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %57, i64 %56
  %59 = bitcast %struct.coordinate* %58 to i8*
  %60 = bitcast %struct.coordinate* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 16, i32 8, i1 false)
  %61 = load i64, i64* %minPosition, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %minPosition, align 8
  br label %28

; <label>:63                                      ; preds = %28
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @checkAngles(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  %numCoordinate = alloca i64, align 8
  %angleConstraint = alloca double, align 8
  %minAngle = alloca double, align 8
  %i = alloca i64, align 8
  %coordinates = alloca %struct.coordinate*, align 8
  %angle = alloca double, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %numCoordinate, align 8
  %5 = load double, double* @global_angleConstraint, align 8
  store double %5, double* %angleConstraint, align 8
  store double 1.800000e+02, double* %minAngle, align 8
  %6 = load i64, i64* %numCoordinate, align 8
  %7 = icmp eq i64 %6, 2
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %0
  %9 = load i64, i64* %numCoordinate, align 8
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8, %0
  br label %14

; <label>:12                                      ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = load %struct.element*, %struct.element** %1, align 8
  %16 = getelementptr inbounds %struct.element, %struct.element* %15, i32 0, i32 13
  store i64 0, i64* %16, align 8
  %17 = load %struct.element*, %struct.element** %1, align 8
  %18 = getelementptr inbounds %struct.element, %struct.element* %17, i32 0, i32 10
  store i64 0, i64* %18, align 8
  %19 = load %struct.element*, %struct.element** %1, align 8
  %20 = getelementptr inbounds %struct.element, %struct.element* %19, i32 0, i32 9
  store %struct.pair* null, %struct.pair** %20, align 8
  %21 = load i64, i64* %numCoordinate, align 8
  %22 = icmp eq i64 %21, 3
  br i1 %22, label %23, label %92

; <label>:23                                      ; preds = %14
  %24 = load %struct.element*, %struct.element** %1, align 8
  %25 = getelementptr inbounds %struct.element, %struct.element* %24, i32 0, i32 0
  %26 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %25, i32 0, i32 0
  store %struct.coordinate* %26, %struct.coordinate** %coordinates, align 8
  store i64 0, i64* %i, align 8
  br label %27

; <label>:27                                      ; preds = %82, %23
  %28 = load i64, i64* %i, align 8
  %29 = icmp slt i64 %28, 3
  br i1 %29, label %30, label %85

; <label>:30                                      ; preds = %27
  %31 = load i64, i64* %i, align 8
  %32 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %33 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %32, i64 %31
  %34 = load i64, i64* %i, align 8
  %35 = add nsw i64 %34, 1
  %36 = srem i64 %35, 3
  %37 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %38 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %37, i64 %36
  %39 = load i64, i64* %i, align 8
  %40 = add nsw i64 %39, 2
  %41 = srem i64 %40, 3
  %42 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %43 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %42, i64 %41
  %44 = call double @coordinate_angle(%struct.coordinate* %33, %struct.coordinate* %38, %struct.coordinate* %43)
  store double %44, double* %angle, align 8
  %45 = load double, double* %angle, align 8
  %46 = fcmp ogt double %45, 0.000000e+00
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %30
  br label %50

; <label>:48                                      ; preds = %30
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 164, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %50

; <label>:50                                      ; preds = %49, %47
  %51 = load double, double* %angle, align 8
  %52 = fcmp olt double %51, 1.800000e+02
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %50
  br label %56

; <label>:54                                      ; preds = %50
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %56

; <label>:56                                      ; preds = %55, %53
  %57 = load double, double* %angle, align 8
  %58 = fcmp ogt double %57, 9.000000e+01
  br i1 %58, label %59, label %68

; <label>:59                                      ; preds = %56
  %60 = load i64, i64* %i, align 8
  %61 = add nsw i64 %60, 1
  %62 = srem i64 %61, 3
  %63 = load %struct.element*, %struct.element** %1, align 8
  %64 = getelementptr inbounds %struct.element, %struct.element* %63, i32 0, i32 5
  %65 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %64, i64 0, i64 %62
  %66 = load %struct.element*, %struct.element** %1, align 8
  %67 = getelementptr inbounds %struct.element, %struct.element* %66, i32 0, i32 9
  store %struct.pair* %65, %struct.pair** %67, align 8
  br label %68

; <label>:68                                      ; preds = %59, %56
  %69 = load double, double* %angle, align 8
  %70 = load double, double* %angleConstraint, align 8
  %71 = fcmp olt double %69, %70
  br i1 %71, label %72, label %75

; <label>:72                                      ; preds = %68
  %73 = load %struct.element*, %struct.element** %1, align 8
  %74 = getelementptr inbounds %struct.element, %struct.element* %73, i32 0, i32 10
  store i64 1, i64* %74, align 8
  br label %75

; <label>:75                                      ; preds = %72, %68
  %76 = load double, double* %angle, align 8
  %77 = load double, double* %minAngle, align 8
  %78 = fcmp olt double %76, %77
  br i1 %78, label %79, label %81

; <label>:79                                      ; preds = %75
  %80 = load double, double* %angle, align 8
  store double %80, double* %minAngle, align 8
  br label %81

; <label>:81                                      ; preds = %79, %75
  br label %82

; <label>:82                                      ; preds = %81
  %83 = load i64, i64* %i, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %i, align 8
  br label %27

; <label>:85                                      ; preds = %27
  %86 = load double, double* %minAngle, align 8
  %87 = fcmp olt double %86, 1.800000e+02
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %85
  br label %91

; <label>:89                                      ; preds = %85
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 176, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.checkAngles, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %91

; <label>:91                                      ; preds = %90, %88
  br label %92

; <label>:92                                      ; preds = %91, %14
  %93 = load double, double* %minAngle, align 8
  %94 = load %struct.element*, %struct.element** %1, align 8
  %95 = getelementptr inbounds %struct.element, %struct.element* %94, i32 0, i32 4
  store double %93, double* %95, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calculateCircumCircle(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  %numCoordinate = alloca i64, align 8
  %coordinates = alloca %struct.coordinate*, align 8
  %circumCenterPtr = alloca %struct.coordinate*, align 8
  %ax = alloca double, align 8
  %ay = alloca double, align 8
  %bx = alloca double, align 8
  %by = alloca double, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %bxDelta = alloca double, align 8
  %byDelta = alloca double, align 8
  %cxDelta = alloca double, align 8
  %cyDelta = alloca double, align 8
  %bDistance2 = alloca double, align 8
  %cDistance2 = alloca double, align 8
  %xNumerator = alloca double, align 8
  %yNumerator = alloca double, align 8
  %denominator = alloca double, align 8
  %rx = alloca double, align 8
  %ry = alloca double, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %numCoordinate, align 8
  %5 = load %struct.element*, %struct.element** %1, align 8
  %6 = getelementptr inbounds %struct.element, %struct.element* %5, i32 0, i32 0
  %7 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %6, i32 0, i32 0
  store %struct.coordinate* %7, %struct.coordinate** %coordinates, align 8
  %8 = load %struct.element*, %struct.element** %1, align 8
  %9 = getelementptr inbounds %struct.element, %struct.element* %8, i32 0, i32 2
  store %struct.coordinate* %9, %struct.coordinate** %circumCenterPtr, align 8
  %10 = load i64, i64* %numCoordinate, align 8
  %11 = icmp eq i64 %10, 2
  br i1 %11, label %15, label %12

; <label>:12                                      ; preds = %0
  %13 = load i64, i64* %numCoordinate, align 8
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %12, %0
  br label %18

; <label>:16                                      ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.calculateCircumCircle, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = load i64, i64* %numCoordinate, align 8
  %20 = icmp eq i64 %19, 2
  br i1 %20, label %21, label %46

; <label>:21                                      ; preds = %18
  %22 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %23 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %22, i64 0
  %24 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %27 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %26, i64 1
  %28 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = fadd double %25, %29
  %31 = fdiv double %30, 2.000000e+00
  %32 = load %struct.coordinate*, %struct.coordinate** %circumCenterPtr, align 8
  %33 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %32, i32 0, i32 0
  store double %31, double* %33, align 8
  %34 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %35 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %34, i64 0
  %36 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %39 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %38, i64 1
  %40 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %39, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = fadd double %37, %41
  %43 = fdiv double %42, 2.000000e+00
  %44 = load %struct.coordinate*, %struct.coordinate** %circumCenterPtr, align 8
  %45 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %44, i32 0, i32 1
  store double %43, double* %45, align 8
  br label %142

; <label>:46                                      ; preds = %18
  %47 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %48 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %47, i64 0
  %49 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %48, i32 0, i32 0
  %50 = load double, double* %49, align 8
  store double %50, double* %ax, align 8
  %51 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %52 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %51, i64 0
  %53 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  store double %54, double* %ay, align 8
  %55 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %56 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %55, i64 1
  %57 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  store double %58, double* %bx, align 8
  %59 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %60 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %59, i64 1
  %61 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %60, i32 0, i32 1
  %62 = load double, double* %61, align 8
  store double %62, double* %by, align 8
  %63 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %64 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %63, i64 2
  %65 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  store double %66, double* %cx, align 8
  %67 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %68 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %67, i64 2
  %69 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %68, i32 0, i32 1
  %70 = load double, double* %69, align 8
  store double %70, double* %cy, align 8
  %71 = load double, double* %bx, align 8
  %72 = load double, double* %ax, align 8
  %73 = fsub double %71, %72
  store double %73, double* %bxDelta, align 8
  %74 = load double, double* %by, align 8
  %75 = load double, double* %ay, align 8
  %76 = fsub double %74, %75
  store double %76, double* %byDelta, align 8
  %77 = load double, double* %cx, align 8
  %78 = load double, double* %ax, align 8
  %79 = fsub double %77, %78
  store double %79, double* %cxDelta, align 8
  %80 = load double, double* %cy, align 8
  %81 = load double, double* %ay, align 8
  %82 = fsub double %80, %81
  store double %82, double* %cyDelta, align 8
  %83 = load double, double* %bxDelta, align 8
  %84 = load double, double* %bxDelta, align 8
  %85 = fmul double %83, %84
  %86 = load double, double* %byDelta, align 8
  %87 = load double, double* %byDelta, align 8
  %88 = fmul double %86, %87
  %89 = fadd double %85, %88
  store double %89, double* %bDistance2, align 8
  %90 = load double, double* %cxDelta, align 8
  %91 = load double, double* %cxDelta, align 8
  %92 = fmul double %90, %91
  %93 = load double, double* %cyDelta, align 8
  %94 = load double, double* %cyDelta, align 8
  %95 = fmul double %93, %94
  %96 = fadd double %92, %95
  store double %96, double* %cDistance2, align 8
  %97 = load double, double* %byDelta, align 8
  %98 = load double, double* %cDistance2, align 8
  %99 = fmul double %97, %98
  %100 = load double, double* %cyDelta, align 8
  %101 = load double, double* %bDistance2, align 8
  %102 = fmul double %100, %101
  %103 = fsub double %99, %102
  store double %103, double* %xNumerator, align 8
  %104 = load double, double* %bxDelta, align 8
  %105 = load double, double* %cDistance2, align 8
  %106 = fmul double %104, %105
  %107 = load double, double* %cxDelta, align 8
  %108 = load double, double* %bDistance2, align 8
  %109 = fmul double %107, %108
  %110 = fsub double %106, %109
  store double %110, double* %yNumerator, align 8
  %111 = load double, double* %bxDelta, align 8
  %112 = load double, double* %cyDelta, align 8
  %113 = fmul double %111, %112
  %114 = load double, double* %cxDelta, align 8
  %115 = load double, double* %byDelta, align 8
  %116 = fmul double %114, %115
  %117 = fsub double %113, %116
  %118 = fmul double 2.000000e+00, %117
  store double %118, double* %denominator, align 8
  %119 = load double, double* %ax, align 8
  %120 = load double, double* %xNumerator, align 8
  %121 = load double, double* %denominator, align 8
  %122 = fdiv double %120, %121
  %123 = fsub double %119, %122
  store double %123, double* %rx, align 8
  %124 = load double, double* %ay, align 8
  %125 = load double, double* %yNumerator, align 8
  %126 = load double, double* %denominator, align 8
  %127 = fdiv double %125, %126
  %128 = fadd double %124, %127
  store double %128, double* %ry, align 8
  %129 = load double, double* %denominator, align 8
  %130 = call double @fabs(double %129) #9
  %131 = fcmp ogt double %130, 0x10000000000000
  br i1 %131, label %132, label %133

; <label>:132                                     ; preds = %46
  br label %135

; <label>:133                                     ; preds = %46
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 244, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.calculateCircumCircle, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %135

; <label>:135                                     ; preds = %134, %132
  %136 = load double, double* %rx, align 8
  %137 = load %struct.coordinate*, %struct.coordinate** %circumCenterPtr, align 8
  %138 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %137, i32 0, i32 0
  store double %136, double* %138, align 8
  %139 = load double, double* %ry, align 8
  %140 = load %struct.coordinate*, %struct.coordinate** %circumCenterPtr, align 8
  %141 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %140, i32 0, i32 1
  store double %139, double* %141, align 8
  br label %142

; <label>:142                                     ; preds = %135, %21
  %143 = load %struct.coordinate*, %struct.coordinate** %circumCenterPtr, align 8
  %144 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %145 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %144, i64 0
  %146 = call double @coordinate_distance(%struct.coordinate* %143, %struct.coordinate* %145)
  %147 = load %struct.element*, %struct.element** %1, align 8
  %148 = getelementptr inbounds %struct.element, %struct.element* %147, i32 0, i32 3
  store double %146, double* %148, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initEdges(%struct.element* %elementPtr, %struct.coordinate* %coordinates, i64 %numCoordinate) #0 {
  %1 = alloca %struct.element*, align 8
  %2 = alloca %struct.coordinate*, align 8
  %3 = alloca i64, align 8
  %numEdge = alloca i64, align 8
  %e = alloca i64, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  store %struct.coordinate* %coordinates, %struct.coordinate** %2, align 8
  store i64 %numCoordinate, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = sub nsw i64 %5, 1
  %7 = mul nsw i64 %4, %6
  %8 = sdiv i64 %7, 2
  store i64 %8, i64* %numEdge, align 8
  %9 = load i64, i64* %numEdge, align 8
  %10 = load %struct.element*, %struct.element** %1, align 8
  %11 = getelementptr inbounds %struct.element, %struct.element* %10, i32 0, i32 6
  store i64 %9, i64* %11, align 8
  store i64 0, i64* %e, align 8
  br label %12

; <label>:12                                      ; preds = %19, %0
  %13 = load i64, i64* %e, align 8
  %14 = load i64, i64* %numEdge, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %22

; <label>:16                                      ; preds = %12
  %17 = load %struct.element*, %struct.element** %1, align 8
  %18 = load i64, i64* %e, align 8
  call void @setEdge(%struct.element* %17, i64 %18)
  br label %19

; <label>:19                                      ; preds = %16
  %20 = load i64, i64* %e, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %e, align 8
  br label %12

; <label>:22                                      ; preds = %12
  ret void
}

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define %struct.element* @Pelement_alloc(%struct.coordinate* %coordinates, i64 %numCoordinate) #0 {
  %1 = alloca %struct.coordinate*, align 8
  %2 = alloca i64, align 8
  %elementPtr = alloca %struct.element*, align 8
  %i = alloca i64, align 8
  store %struct.coordinate* %coordinates, %struct.coordinate** %1, align 8
  store i64 %numCoordinate, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 256) #7
  %4 = bitcast i8* %3 to %struct.element*
  store %struct.element* %4, %struct.element** %elementPtr, align 8
  %5 = load %struct.element*, %struct.element** %elementPtr, align 8
  %6 = icmp ne %struct.element* %5, null
  br i1 %6, label %7, label %50

; <label>:7                                       ; preds = %0
  store i64 0, i64* %i, align 8
  br label %8

; <label>:8                                       ; preds = %22, %7
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %25

; <label>:12                                      ; preds = %8
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.element*, %struct.element** %elementPtr, align 8
  %15 = getelementptr inbounds %struct.element, %struct.element* %14, i32 0, i32 0
  %16 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %15, i64 0, i64 %13
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %19 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %18, i64 %17
  %20 = bitcast %struct.coordinate* %16 to i8*
  %21 = bitcast %struct.coordinate* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false)
  br label %22

; <label>:22                                      ; preds = %12
  %23 = load i64, i64* %i, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %i, align 8
  br label %8

; <label>:25                                      ; preds = %8
  %26 = load i64, i64* %2, align 8
  %27 = load %struct.element*, %struct.element** %elementPtr, align 8
  %28 = getelementptr inbounds %struct.element, %struct.element* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.element*, %struct.element** %elementPtr, align 8
  call void @minimizeCoordinates(%struct.element* %29)
  %30 = load %struct.element*, %struct.element** %elementPtr, align 8
  call void @checkAngles(%struct.element* %30)
  %31 = load %struct.element*, %struct.element** %elementPtr, align 8
  call void @calculateCircumCircle(%struct.element* %31)
  %32 = load %struct.element*, %struct.element** %elementPtr, align 8
  %33 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %34 = load i64, i64* %2, align 8
  call void @initEdges(%struct.element* %32, %struct.coordinate* %33, i64 %34)
  %35 = call %struct.list* @Plist_alloc(i64 (i8*, i8*)* @element_listCompare)
  %36 = load %struct.element*, %struct.element** %elementPtr, align 8
  %37 = getelementptr inbounds %struct.element, %struct.element* %36, i32 0, i32 11
  store %struct.list* %35, %struct.list** %37, align 8
  %38 = load %struct.element*, %struct.element** %elementPtr, align 8
  %39 = getelementptr inbounds %struct.element, %struct.element* %38, i32 0, i32 11
  %40 = load %struct.list*, %struct.list** %39, align 8
  %41 = icmp ne %struct.list* %40, null
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %25
  br label %45

; <label>:43                                      ; preds = %25
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 425, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.Pelement_alloc, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = load %struct.element*, %struct.element** %elementPtr, align 8
  %47 = getelementptr inbounds %struct.element, %struct.element* %46, i32 0, i32 12
  store i64 0, i64* %47, align 8
  %48 = load %struct.element*, %struct.element** %elementPtr, align 8
  %49 = getelementptr inbounds %struct.element, %struct.element* %48, i32 0, i32 13
  store i64 0, i64* %49, align 8
  br label %50

; <label>:50                                      ; preds = %45, %0
  %51 = load %struct.element*, %struct.element** %elementPtr, align 8
  ret %struct.element* %51
}

declare %struct.list* @Plist_alloc(i64 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define %struct.element* @TMelement_alloc(%struct.coordinate* %coordinates, i64 %numCoordinate) #0 {
  %1 = alloca %struct.coordinate*, align 8
  %2 = alloca i64, align 8
  %elementPtr = alloca %struct.element*, align 8
  %i = alloca i64, align 8
  store %struct.coordinate* %coordinates, %struct.coordinate** %1, align 8
  store i64 %numCoordinate, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 256) #7
  %4 = bitcast i8* %3 to %struct.element*
  store %struct.element* %4, %struct.element** %elementPtr, align 8
  %5 = load %struct.element*, %struct.element** %elementPtr, align 8
  %6 = icmp ne %struct.element* %5, null
  br i1 %6, label %7, label %50

; <label>:7                                       ; preds = %0
  store i64 0, i64* %i, align 8
  br label %8

; <label>:8                                       ; preds = %22, %7
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %25

; <label>:12                                      ; preds = %8
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.element*, %struct.element** %elementPtr, align 8
  %15 = getelementptr inbounds %struct.element, %struct.element* %14, i32 0, i32 0
  %16 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %15, i64 0, i64 %13
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %19 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %18, i64 %17
  %20 = bitcast %struct.coordinate* %16 to i8*
  %21 = bitcast %struct.coordinate* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false)
  br label %22

; <label>:22                                      ; preds = %12
  %23 = load i64, i64* %i, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %i, align 8
  br label %8, !llvm.loop !1

; <label>:25                                      ; preds = %8
  %26 = load i64, i64* %2, align 8
  %27 = load %struct.element*, %struct.element** %elementPtr, align 8
  %28 = getelementptr inbounds %struct.element, %struct.element* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.element*, %struct.element** %elementPtr, align 8
  call void @minimizeCoordinates(%struct.element* %29)
  %30 = load %struct.element*, %struct.element** %elementPtr, align 8
  call void @checkAngles(%struct.element* %30)
  %31 = load %struct.element*, %struct.element** %elementPtr, align 8
  call void @calculateCircumCircle(%struct.element* %31)
  %32 = load %struct.element*, %struct.element** %elementPtr, align 8
  %33 = load %struct.coordinate*, %struct.coordinate** %1, align 8
  %34 = load i64, i64* %2, align 8
  call void @initEdges(%struct.element* %32, %struct.coordinate* %33, i64 %34)
  %35 = call %struct.list* @TMlist_alloc(i64 (i8*, i8*)* @element_listCompare)
  %36 = load %struct.element*, %struct.element** %elementPtr, align 8
  %37 = getelementptr inbounds %struct.element, %struct.element* %36, i32 0, i32 11
  store %struct.list* %35, %struct.list** %37, align 8
  %38 = load %struct.element*, %struct.element** %elementPtr, align 8
  %39 = getelementptr inbounds %struct.element, %struct.element* %38, i32 0, i32 11
  %40 = load %struct.list*, %struct.list** %39, align 8
  %41 = icmp ne %struct.list* %40, null
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %25
  br label %45

; <label>:43                                      ; preds = %25
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.TMelement_alloc, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = load %struct.element*, %struct.element** %elementPtr, align 8
  %47 = getelementptr inbounds %struct.element, %struct.element* %46, i32 0, i32 12
  store i64 0, i64* %47, align 8
  %48 = load %struct.element*, %struct.element** %elementPtr, align 8
  %49 = getelementptr inbounds %struct.element, %struct.element* %48, i32 0, i32 13
  store i64 0, i64* %49, align 8
  br label %50

; <label>:50                                      ; preds = %45, %0
  %51 = load %struct.element*, %struct.element** %elementPtr, align 8
  ret %struct.element* %51
}

declare %struct.list* @TMlist_alloc(i64 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define void @element_free(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  %4 = load %struct.list*, %struct.list** %3, align 8
  call void @list_free(%struct.list* %4)
  %5 = load %struct.element*, %struct.element** %1, align 8
  %6 = bitcast %struct.element* %5 to i8*
  call void @free(i8* %6) #7
  ret void
}

declare void @list_free(%struct.list*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @Pelement_free(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  %4 = load %struct.list*, %struct.list** %3, align 8
  call void @Plist_free(%struct.list* %4)
  %5 = load %struct.element*, %struct.element** %1, align 8
  %6 = bitcast %struct.element* %5 to i8*
  call void @free(i8* %6) #7
  ret void
}

declare void @Plist_free(%struct.list*) #1

; Function Attrs: nounwind uwtable
define void @TMelement_free(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  %4 = load %struct.list*, %struct.list** %3, align 8
  call void @TMlist_free(%struct.list* %4)
  %5 = load %struct.element*, %struct.element** %1, align 8
  %6 = bitcast %struct.element* %5 to i8*
  call void @free(i8* %6) #7
  ret void
}

declare void @TMlist_free(%struct.list*) #1

; Function Attrs: nounwind uwtable
define i64 @element_getNumEdge(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 6
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define %struct.pair* @element_getEdge(%struct.element* %elementPtr, i64 %i) #0 {
  %1 = alloca %struct.pair*, align 8
  %2 = alloca %struct.element*, align 8
  %3 = alloca i64, align 8
  store %struct.element* %elementPtr, %struct.element** %2, align 8
  store i64 %i, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.element*, %struct.element** %2, align 8
  %9 = getelementptr inbounds %struct.element, %struct.element* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %7, %10
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %6, %0
  store %struct.pair* null, %struct.pair** %1, align 8
  br label %18

; <label>:13                                      ; preds = %6
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.element*, %struct.element** %2, align 8
  %16 = getelementptr inbounds %struct.element, %struct.element* %15, i32 0, i32 5
  %17 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %16, i64 0, i64 %14
  store %struct.pair* %17, %struct.pair** %1, align 8
  br label %18

; <label>:18                                      ; preds = %13, %12
  %19 = load %struct.pair*, %struct.pair** %1, align 8
  ret %struct.pair* %19
}

; Function Attrs: nounwind uwtable
define i64 @element_listCompareEdge(i8* %aPtr, i8* %bPtr) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %aEdgePtr = alloca %struct.pair*, align 8
  %bEdgePtr = alloca %struct.pair*, align 8
  store i8* %aPtr, i8** %1, align 8
  store i8* %bPtr, i8** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to %struct.pair*
  store %struct.pair* %4, %struct.pair** %aEdgePtr, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.pair*
  store %struct.pair* %6, %struct.pair** %bEdgePtr, align 8
  %7 = load %struct.pair*, %struct.pair** %aEdgePtr, align 8
  %8 = load %struct.pair*, %struct.pair** %bEdgePtr, align 8
  %9 = call i64 @compareEdge(%struct.pair* %7, %struct.pair* %8)
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal i64 @compareEdge(%struct.pair* %aEdgePtr, %struct.pair* %bEdgePtr) #0 {
  %1 = alloca %struct.pair*, align 8
  %2 = alloca %struct.pair*, align 8
  %diffFirst = alloca i64, align 8
  store %struct.pair* %aEdgePtr, %struct.pair** %1, align 8
  store %struct.pair* %bEdgePtr, %struct.pair** %2, align 8
  %3 = load %struct.pair*, %struct.pair** %1, align 8
  %4 = getelementptr inbounds %struct.pair, %struct.pair* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.coordinate*
  %7 = load %struct.pair*, %struct.pair** %2, align 8
  %8 = getelementptr inbounds %struct.pair, %struct.pair* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.coordinate*
  %11 = call i64 @coordinate_compare(%struct.coordinate* %6, %struct.coordinate* %10)
  store i64 %11, i64* %diffFirst, align 8
  %12 = load i64, i64* %diffFirst, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

; <label>:14                                      ; preds = %0
  %15 = load i64, i64* %diffFirst, align 8
  br label %26

; <label>:16                                      ; preds = %0
  %17 = load %struct.pair*, %struct.pair** %1, align 8
  %18 = getelementptr inbounds %struct.pair, %struct.pair* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.coordinate*
  %21 = load %struct.pair*, %struct.pair** %2, align 8
  %22 = getelementptr inbounds %struct.pair, %struct.pair* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.coordinate*
  %25 = call i64 @coordinate_compare(%struct.coordinate* %20, %struct.coordinate* %24)
  br label %26

; <label>:26                                      ; preds = %16, %14
  %27 = phi i64 [ %15, %14 ], [ %25, %16 ]
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define i64 @element_mapCompareEdge(%struct.pair* %aPtr, %struct.pair* %bPtr) #0 {
  %1 = alloca %struct.pair*, align 8
  %2 = alloca %struct.pair*, align 8
  %aEdgePtr = alloca %struct.pair*, align 8
  %bEdgePtr = alloca %struct.pair*, align 8
  store %struct.pair* %aPtr, %struct.pair** %1, align 8
  store %struct.pair* %bPtr, %struct.pair** %2, align 8
  %3 = load %struct.pair*, %struct.pair** %1, align 8
  %4 = getelementptr inbounds %struct.pair, %struct.pair* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.pair*
  store %struct.pair* %6, %struct.pair** %aEdgePtr, align 8
  %7 = load %struct.pair*, %struct.pair** %2, align 8
  %8 = getelementptr inbounds %struct.pair, %struct.pair* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.pair*
  store %struct.pair* %10, %struct.pair** %bEdgePtr, align 8
  %11 = load %struct.pair*, %struct.pair** %aEdgePtr, align 8
  %12 = load %struct.pair*, %struct.pair** %bEdgePtr, align 8
  %13 = call i64 @compareEdge(%struct.pair* %11, %struct.pair* %12)
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define i64 @element_heapCompare(i8* %aPtr, i8* %bPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %aElementPtr = alloca %struct.element*, align 8
  %bElementPtr = alloca %struct.element*, align 8
  store i8* %aPtr, i8** %2, align 8
  store i8* %bPtr, i8** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.element*
  store %struct.element* %5, %struct.element** %aElementPtr, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.element*
  store %struct.element* %7, %struct.element** %bElementPtr, align 8
  %8 = load %struct.element*, %struct.element** %aElementPtr, align 8
  %9 = getelementptr inbounds %struct.element, %struct.element* %8, i32 0, i32 9
  %10 = load %struct.pair*, %struct.pair** %9, align 8
  %11 = icmp ne %struct.pair* %10, null
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load %struct.element*, %struct.element** %bElementPtr, align 8
  %14 = getelementptr inbounds %struct.element, %struct.element* %13, i32 0, i32 9
  %15 = load %struct.pair*, %struct.pair** %14, align 8
  %16 = icmp ne %struct.pair* %15, null
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %12
  store i64 0, i64* %1, align 8
  br label %26

; <label>:18                                      ; preds = %12
  store i64 1, i64* %1, align 8
  br label %26

; <label>:19                                      ; preds = %0
  %20 = load %struct.element*, %struct.element** %bElementPtr, align 8
  %21 = getelementptr inbounds %struct.element, %struct.element* %20, i32 0, i32 9
  %22 = load %struct.pair*, %struct.pair** %21, align 8
  %23 = icmp ne %struct.pair* %22, null
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %19
  store i64 -1, i64* %1, align 8
  br label %26

; <label>:25                                      ; preds = %19
  store i64 0, i64* %1, align 8
  br label %26

; <label>:26                                      ; preds = %25, %24, %18, %17
  %27 = load i64, i64* %1, align 8
  ret i64 %27
}

; Function Attrs: nounwind readonly uwtable
define i64 @element_isInCircumCircle(%struct.element* %elementPtr, %struct.coordinate* %coordinatePtr) #5 {
  %1 = alloca %struct.element*, align 8
  %2 = alloca %struct.coordinate*, align 8
  %distance = alloca double, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  store %struct.coordinate* %coordinatePtr, %struct.coordinate** %2, align 8
  %3 = load %struct.coordinate*, %struct.coordinate** %2, align 8
  %4 = load %struct.element*, %struct.element** %1, align 8
  %5 = getelementptr inbounds %struct.element, %struct.element* %4, i32 0, i32 2
  %6 = call double @coordinate_distance(%struct.coordinate* %3, %struct.coordinate* %5)
  store double %6, double* %distance, align 8
  %7 = load double, double* %distance, align 8
  %8 = load %struct.element*, %struct.element** %1, align 8
  %9 = getelementptr inbounds %struct.element, %struct.element* %8, i32 0, i32 3
  %10 = load double, double* %9, align 8
  %11 = fcmp ole double %7, %10
  %12 = select i1 %11, i32 1, i32 0
  %13 = sext i32 %12 to i64
  ret i64 %13
}

declare double @coordinate_distance(%struct.coordinate*, %struct.coordinate*) #1

; Function Attrs: nounwind uwtable
define void @element_clearEncroached(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 9
  store %struct.pair* null, %struct.pair** %3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.pair* @element_getEncroachedPtr(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 9
  %4 = load %struct.pair*, %struct.pair** %3, align 8
  ret %struct.pair* %4
}

; Function Attrs: nounwind uwtable
define i64 @element_isSkinny(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 10
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  %6 = select i1 %5, i32 1, i32 0
  %7 = sext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @element_isBad(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = call i64 @isEncroached(%struct.element* %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %9, label %5

; <label>:5                                       ; preds = %0
  %6 = load %struct.element*, %struct.element** %1, align 8
  %7 = call i64 @element_isSkinny(%struct.element* %6)
  %8 = icmp ne i64 %7, 0
  br label %9

; <label>:9                                       ; preds = %5, %0
  %10 = phi i1 [ true, %0 ], [ %8, %5 ]
  %11 = select i1 %10, i32 1, i32 0
  %12 = sext i32 %11 to i64
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal i64 @isEncroached(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 9
  %4 = load %struct.pair*, %struct.pair** %3, align 8
  %5 = icmp ne %struct.pair* %4, null
  %6 = select i1 %5, i32 1, i32 0
  %7 = sext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @element_isReferenced(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 13
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @TMelement_isReferenced(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 13
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @element_setIsReferenced(%struct.element* %elementPtr, i64 %status) #0 {
  %1 = alloca %struct.element*, align 8
  %2 = alloca i64, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  store i64 %status, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load %struct.element*, %struct.element** %1, align 8
  %5 = getelementptr inbounds %struct.element, %struct.element* %4, i32 0, i32 13
  store i64 %3, i64* %5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMelement_setIsReferenced(%struct.element* %elementPtr, i64 %status) #0 {
  %1 = alloca %struct.element*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  store i64 %status, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load %struct.element*, %struct.element** %1, align 8
  %6 = getelementptr inbounds %struct.element, %struct.element* %5, i32 0, i32 13
  store i64 %4, i64* %6, align 8
  %7 = load %struct.element*, %struct.element** %1, align 8
  %8 = getelementptr inbounds %struct.element, %struct.element* %7, i32 0, i32 13
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @element_isGarbage(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 12
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @TMelement_isGarbage(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 12
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @element_setIsGarbage(%struct.element* %elementPtr, i64 %status) #0 {
  %1 = alloca %struct.element*, align 8
  %2 = alloca i64, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  store i64 %status, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load %struct.element*, %struct.element** %1, align 8
  %5 = getelementptr inbounds %struct.element, %struct.element* %4, i32 0, i32 12
  store i64 %3, i64* %5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMelement_setIsGarbage(%struct.element* %elementPtr, i64 %status) #0 {
  %1 = alloca %struct.element*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  store i64 %status, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load %struct.element*, %struct.element** %1, align 8
  %6 = getelementptr inbounds %struct.element, %struct.element* %5, i32 0, i32 12
  store i64 %4, i64* %6, align 8
  %7 = load %struct.element*, %struct.element** %1, align 8
  %8 = getelementptr inbounds %struct.element, %struct.element* %7, i32 0, i32 12
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @element_addNeighbor(%struct.element* %elementPtr, %struct.element* %neighborPtr) #0 {
  %1 = alloca %struct.element*, align 8
  %2 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  store %struct.element* %neighborPtr, %struct.element** %2, align 8
  %3 = load %struct.element*, %struct.element** %1, align 8
  %4 = getelementptr inbounds %struct.element, %struct.element* %3, i32 0, i32 11
  %5 = load %struct.list*, %struct.list** %4, align 8
  %6 = load %struct.element*, %struct.element** %2, align 8
  %7 = bitcast %struct.element* %6 to i8*
  %8 = call i64 @list_insert(%struct.list* %5, i8* %7)
  %9 = load %struct.element*, %struct.element** %1, align 8
  %10 = getelementptr inbounds %struct.element, %struct.element* %9, i32 0, i32 11
  %11 = load %struct.list*, %struct.list** %10, align 8
  %12 = call i64 @list_getSize(%struct.list* %11)
  %13 = load %struct.element*, %struct.element** %1, align 8
  %14 = getelementptr inbounds %struct.element, %struct.element* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %12, %15
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %0
  br label %20

; <label>:18                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 779, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.element_addNeighbor, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  ret void
}

declare i64 @list_insert(%struct.list*, i8*) #1

declare i64 @list_getSize(%struct.list*) #1

; Function Attrs: nounwind uwtable
define void @TMelement_addNeighbor(%struct.element* %elementPtr, %struct.element* %neighborPtr) #0 {
  %1 = alloca %struct.element*, align 8
  %2 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  store %struct.element* %neighborPtr, %struct.element** %2, align 8
  %3 = load %struct.element*, %struct.element** %1, align 8
  %4 = getelementptr inbounds %struct.element, %struct.element* %3, i32 0, i32 11
  %5 = load %struct.list*, %struct.list** %4, align 8
  %6 = load %struct.element*, %struct.element** %2, align 8
  %7 = bitcast %struct.element* %6 to i8*
  %8 = call i64 @TMlist_insert(%struct.list* %5, i8* %7)
  ret void
}

declare i64 @TMlist_insert(%struct.list*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.list* @element_getNeighborListPtr(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 11
  %4 = load %struct.list*, %struct.list** %3, align 8
  ret %struct.list* %4
}

; Function Attrs: nounwind readonly uwtable
define %struct.pair* @element_getCommonEdge(%struct.element* %aElementPtr, %struct.element* %bElementPtr) #5 {
  %1 = alloca %struct.pair*, align 8
  %2 = alloca %struct.element*, align 8
  %3 = alloca %struct.element*, align 8
  %aEdges = alloca %struct.pair*, align 8
  %bEdges = alloca %struct.pair*, align 8
  %aNumEdge = alloca i64, align 8
  %bNumEdge = alloca i64, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %aEdgePtr = alloca %struct.pair*, align 8
  %bEdgePtr = alloca %struct.pair*, align 8
  store %struct.element* %aElementPtr, %struct.element** %2, align 8
  store %struct.element* %bElementPtr, %struct.element** %3, align 8
  %4 = load %struct.element*, %struct.element** %2, align 8
  %5 = getelementptr inbounds %struct.element, %struct.element* %4, i32 0, i32 5
  %6 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %5, i32 0, i32 0
  store %struct.pair* %6, %struct.pair** %aEdges, align 8
  %7 = load %struct.element*, %struct.element** %3, align 8
  %8 = getelementptr inbounds %struct.element, %struct.element* %7, i32 0, i32 5
  %9 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %8, i32 0, i32 0
  store %struct.pair* %9, %struct.pair** %bEdges, align 8
  %10 = load %struct.element*, %struct.element** %2, align 8
  %11 = getelementptr inbounds %struct.element, %struct.element* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %aNumEdge, align 8
  %13 = load %struct.element*, %struct.element** %3, align 8
  %14 = getelementptr inbounds %struct.element, %struct.element* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %bNumEdge, align 8
  store i64 0, i64* %a, align 8
  br label %16

; <label>:16                                      ; preds = %43, %0
  %17 = load i64, i64* %a, align 8
  %18 = load i64, i64* %aNumEdge, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %46

; <label>:20                                      ; preds = %16
  %21 = load i64, i64* %a, align 8
  %22 = load %struct.pair*, %struct.pair** %aEdges, align 8
  %23 = getelementptr inbounds %struct.pair, %struct.pair* %22, i64 %21
  store %struct.pair* %23, %struct.pair** %aEdgePtr, align 8
  store i64 0, i64* %b, align 8
  br label %24

; <label>:24                                      ; preds = %39, %20
  %25 = load i64, i64* %b, align 8
  %26 = load i64, i64* %bNumEdge, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %42

; <label>:28                                      ; preds = %24
  %29 = load i64, i64* %b, align 8
  %30 = load %struct.pair*, %struct.pair** %bEdges, align 8
  %31 = getelementptr inbounds %struct.pair, %struct.pair* %30, i64 %29
  store %struct.pair* %31, %struct.pair** %bEdgePtr, align 8
  %32 = load %struct.pair*, %struct.pair** %aEdgePtr, align 8
  %33 = load %struct.pair*, %struct.pair** %bEdgePtr, align 8
  %34 = call i64 @compareEdge(%struct.pair* %32, %struct.pair* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

; <label>:36                                      ; preds = %28
  %37 = load %struct.pair*, %struct.pair** %aEdgePtr, align 8
  store %struct.pair* %37, %struct.pair** %1, align 8
  br label %47

; <label>:38                                      ; preds = %28
  br label %39

; <label>:39                                      ; preds = %38
  %40 = load i64, i64* %b, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %b, align 8
  br label %24

; <label>:42                                      ; preds = %24
  br label %43

; <label>:43                                      ; preds = %42
  %44 = load i64, i64* %a, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %a, align 8
  br label %16

; <label>:46                                      ; preds = %16
  store %struct.pair* null, %struct.pair** %1, align 8
  br label %47

; <label>:47                                      ; preds = %46, %36
  %48 = load %struct.pair*, %struct.pair** %1, align 8
  ret %struct.pair* %48
}

; Function Attrs: nounwind uwtable
define { double, double } @element_getNewPoint(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.coordinate, align 8
  %2 = alloca %struct.element*, align 8
  %encroachedEdgePtr = alloca %struct.pair*, align 8
  %e = alloca i64, align 8
  %numEdge = alloca i64, align 8
  %edges = alloca %struct.pair*, align 8
  store %struct.element* %elementPtr, %struct.element** %2, align 8
  %3 = load %struct.element*, %struct.element** %2, align 8
  %4 = getelementptr inbounds %struct.element, %struct.element* %3, i32 0, i32 9
  %5 = load %struct.pair*, %struct.pair** %4, align 8
  store %struct.pair* %5, %struct.pair** %encroachedEdgePtr, align 8
  %6 = load %struct.pair*, %struct.pair** %encroachedEdgePtr, align 8
  %7 = icmp ne %struct.pair* %6, null
  br i1 %7, label %8, label %38

; <label>:8                                       ; preds = %0
  %9 = load %struct.element*, %struct.element** %2, align 8
  %10 = getelementptr inbounds %struct.element, %struct.element* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %numEdge, align 8
  %12 = load %struct.element*, %struct.element** %2, align 8
  %13 = getelementptr inbounds %struct.element, %struct.element* %12, i32 0, i32 5
  %14 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %13, i32 0, i32 0
  store %struct.pair* %14, %struct.pair** %edges, align 8
  store i64 0, i64* %e, align 8
  br label %15

; <label>:15                                      ; preds = %34, %8
  %16 = load i64, i64* %e, align 8
  %17 = load i64, i64* %numEdge, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %37

; <label>:19                                      ; preds = %15
  %20 = load %struct.pair*, %struct.pair** %encroachedEdgePtr, align 8
  %21 = load i64, i64* %e, align 8
  %22 = load %struct.pair*, %struct.pair** %edges, align 8
  %23 = getelementptr inbounds %struct.pair, %struct.pair* %22, i64 %21
  %24 = call i64 @compareEdge(%struct.pair* %20, %struct.pair* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

; <label>:26                                      ; preds = %19
  %27 = load i64, i64* %e, align 8
  %28 = load %struct.element*, %struct.element** %2, align 8
  %29 = getelementptr inbounds %struct.element, %struct.element* %28, i32 0, i32 7
  %30 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %29, i64 0, i64 %27
  %31 = bitcast %struct.coordinate* %1 to i8*
  %32 = bitcast %struct.coordinate* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  br label %43

; <label>:33                                      ; preds = %19
  br label %34

; <label>:34                                      ; preds = %33
  %35 = load i64, i64* %e, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %e, align 8
  br label %15

; <label>:37                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 854, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.element_getNewPoint, i32 0, i32 0)) #8
  unreachable

; <label>:38                                      ; preds = %0
  %39 = load %struct.element*, %struct.element** %2, align 8
  %40 = getelementptr inbounds %struct.element, %struct.element* %39, i32 0, i32 2
  %41 = bitcast %struct.coordinate* %1 to i8*
  %42 = bitcast %struct.coordinate* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false)
  br label %43

; <label>:43                                      ; preds = %38, %26
  %44 = bitcast %struct.coordinate* %1 to { double, double }*
  %45 = load { double, double }, { double, double }* %44, align 8
  ret { double, double } %45
}

; Function Attrs: nounwind uwtable
define i64 @element_checkAngles(%struct.element* %elementPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.element*, align 8
  %numCoordinate = alloca i64, align 8
  %angleConstraint = alloca double, align 8
  %i = alloca i64, align 8
  %coordinates = alloca %struct.coordinate*, align 8
  %angle = alloca double, align 8
  store %struct.element* %elementPtr, %struct.element** %2, align 8
  %3 = load %struct.element*, %struct.element** %2, align 8
  %4 = getelementptr inbounds %struct.element, %struct.element* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %numCoordinate, align 8
  %6 = load double, double* @global_angleConstraint, align 8
  store double %6, double* %angleConstraint, align 8
  %7 = load i64, i64* %numCoordinate, align 8
  %8 = icmp eq i64 %7, 3
  br i1 %8, label %9, label %40

; <label>:9                                       ; preds = %0
  %10 = load %struct.element*, %struct.element** %2, align 8
  %11 = getelementptr inbounds %struct.element, %struct.element* %10, i32 0, i32 0
  %12 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %11, i32 0, i32 0
  store %struct.coordinate* %12, %struct.coordinate** %coordinates, align 8
  store i64 0, i64* %i, align 8
  br label %13

; <label>:13                                      ; preds = %36, %9
  %14 = load i64, i64* %i, align 8
  %15 = icmp slt i64 %14, 3
  br i1 %15, label %16, label %39

; <label>:16                                      ; preds = %13
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %19 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %18, i64 %17
  %20 = load i64, i64* %i, align 8
  %21 = add nsw i64 %20, 1
  %22 = srem i64 %21, 3
  %23 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %24 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %23, i64 %22
  %25 = load i64, i64* %i, align 8
  %26 = add nsw i64 %25, 2
  %27 = srem i64 %26, 3
  %28 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %29 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %28, i64 %27
  %30 = call double @coordinate_angle(%struct.coordinate* %19, %struct.coordinate* %24, %struct.coordinate* %29)
  store double %30, double* %angle, align 8
  %31 = load double, double* %angle, align 8
  %32 = load double, double* %angleConstraint, align 8
  %33 = fcmp olt double %31, %32
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %16
  store i64 0, i64* %1, align 8
  br label %41

; <label>:35                                      ; preds = %16
  br label %36

; <label>:36                                      ; preds = %35
  %37 = load i64, i64* %i, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %i, align 8
  br label %13

; <label>:39                                      ; preds = %13
  br label %40

; <label>:40                                      ; preds = %39, %0
  store i64 1, i64* %1, align 8
  br label %41

; <label>:41                                      ; preds = %40, %34
  %42 = load i64, i64* %1, align 8
  ret i64 %42
}

declare double @coordinate_angle(%struct.coordinate*, %struct.coordinate*, %struct.coordinate*) #1

; Function Attrs: nounwind uwtable
define void @element_print(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  %c = alloca i64, align 8
  %numCoordinate = alloca i64, align 8
  %coordinates = alloca %struct.coordinate*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %numCoordinate, align 8
  %5 = load %struct.element*, %struct.element** %1, align 8
  %6 = getelementptr inbounds %struct.element, %struct.element* %5, i32 0, i32 0
  %7 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %6, i32 0, i32 0
  store %struct.coordinate* %7, %struct.coordinate** %coordinates, align 8
  store i64 0, i64* %c, align 8
  br label %8

; <label>:8                                       ; preds = %17, %0
  %9 = load i64, i64* %c, align 8
  %10 = load i64, i64* %numCoordinate, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %20

; <label>:12                                      ; preds = %8
  %13 = load i64, i64* %c, align 8
  %14 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %15 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %14, i64 %13
  call void @coordinate_print(%struct.coordinate* %15)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %17

; <label>:17                                      ; preds = %12
  %18 = load i64, i64* %c, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %c, align 8
  br label %8

; <label>:20                                      ; preds = %8
  ret void
}

declare void @coordinate_print(%struct.coordinate*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @element_printEdge(%struct.pair* %edgePtr) #0 {
  %1 = alloca %struct.pair*, align 8
  store %struct.pair* %edgePtr, %struct.pair** %1, align 8
  %2 = load %struct.pair*, %struct.pair** %1, align 8
  %3 = getelementptr inbounds %struct.pair, %struct.pair* %2, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.coordinate*
  call void @coordinate_print(%struct.coordinate* %5)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  %7 = load %struct.pair*, %struct.pair** %1, align 8
  %8 = getelementptr inbounds %struct.pair, %struct.pair* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.coordinate*
  call void @coordinate_print(%struct.coordinate* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define void @element_printAngles(%struct.element* %elementPtr) #0 {
  %1 = alloca %struct.element*, align 8
  %numCoordinate = alloca i64, align 8
  %i = alloca i64, align 8
  %coordinates = alloca %struct.coordinate*, align 8
  %angle = alloca double, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  %2 = load %struct.element*, %struct.element** %1, align 8
  %3 = getelementptr inbounds %struct.element, %struct.element* %2, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %numCoordinate, align 8
  %5 = load i64, i64* %numCoordinate, align 8
  %6 = icmp eq i64 %5, 3
  br i1 %6, label %7, label %35

; <label>:7                                       ; preds = %0
  %8 = load %struct.element*, %struct.element** %1, align 8
  %9 = getelementptr inbounds %struct.element, %struct.element* %8, i32 0, i32 0
  %10 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %9, i32 0, i32 0
  store %struct.coordinate* %10, %struct.coordinate** %coordinates, align 8
  store i64 0, i64* %i, align 8
  br label %11

; <label>:11                                      ; preds = %31, %7
  %12 = load i64, i64* %i, align 8
  %13 = icmp slt i64 %12, 3
  br i1 %13, label %14, label %34

; <label>:14                                      ; preds = %11
  %15 = load i64, i64* %i, align 8
  %16 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %17 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %16, i64 %15
  %18 = load i64, i64* %i, align 8
  %19 = add nsw i64 %18, 1
  %20 = srem i64 %19, 3
  %21 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %22 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %21, i64 %20
  %23 = load i64, i64* %i, align 8
  %24 = add nsw i64 %23, 2
  %25 = srem i64 %24, 3
  %26 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %27 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %26, i64 %25
  %28 = call double @coordinate_angle(%struct.coordinate* %17, %struct.coordinate* %22, %struct.coordinate* %27)
  store double %28, double* %angle, align 8
  %29 = load double, double* %angle, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double %29)
  br label %31

; <label>:31                                      ; preds = %14
  %32 = load i64, i64* %i, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %i, align 8
  br label %11

; <label>:34                                      ; preds = %11
  br label %35

; <label>:35                                      ; preds = %34, %0
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #6

; Function Attrs: nounwind uwtable
define internal void @setEdge(%struct.element* %elementPtr, i64 %i) #0 {
  %1 = alloca %struct.element*, align 8
  %2 = alloca i64, align 8
  %numCoordinate = alloca i64, align 8
  %coordinates = alloca %struct.coordinate*, align 8
  %firstPtr = alloca %struct.coordinate*, align 8
  %secondPtr = alloca %struct.coordinate*, align 8
  %edgePtr = alloca %struct.pair*, align 8
  %cmp = alloca i64, align 8
  %midpointPtr = alloca %struct.coordinate*, align 8
  store %struct.element* %elementPtr, %struct.element** %1, align 8
  store i64 %i, i64* %2, align 8
  %3 = load %struct.element*, %struct.element** %1, align 8
  %4 = getelementptr inbounds %struct.element, %struct.element* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %numCoordinate, align 8
  %6 = load %struct.element*, %struct.element** %1, align 8
  %7 = getelementptr inbounds %struct.element, %struct.element* %6, i32 0, i32 0
  %8 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %7, i32 0, i32 0
  store %struct.coordinate* %8, %struct.coordinate** %coordinates, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %10, i64 %9
  store %struct.coordinate* %11, %struct.coordinate** %firstPtr, align 8
  %12 = load i64, i64* %2, align 8
  %13 = add nsw i64 %12, 1
  %14 = load i64, i64* %numCoordinate, align 8
  %15 = srem i64 %13, %14
  %16 = load %struct.coordinate*, %struct.coordinate** %coordinates, align 8
  %17 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %16, i64 %15
  store %struct.coordinate* %17, %struct.coordinate** %secondPtr, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load %struct.element*, %struct.element** %1, align 8
  %20 = getelementptr inbounds %struct.element, %struct.element* %19, i32 0, i32 5
  %21 = getelementptr inbounds [3 x %struct.pair], [3 x %struct.pair]* %20, i64 0, i64 %18
  store %struct.pair* %21, %struct.pair** %edgePtr, align 8
  %22 = load %struct.coordinate*, %struct.coordinate** %firstPtr, align 8
  %23 = load %struct.coordinate*, %struct.coordinate** %secondPtr, align 8
  %24 = call i64 @coordinate_compare(%struct.coordinate* %22, %struct.coordinate* %23)
  store i64 %24, i64* %cmp, align 8
  %25 = load i64, i64* %cmp, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %0
  br label %30

; <label>:28                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 272, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.setEdge, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load i64, i64* %cmp, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %42

; <label>:33                                      ; preds = %30
  %34 = load %struct.coordinate*, %struct.coordinate** %firstPtr, align 8
  %35 = bitcast %struct.coordinate* %34 to i8*
  %36 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %37 = getelementptr inbounds %struct.pair, %struct.pair* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.coordinate*, %struct.coordinate** %secondPtr, align 8
  %39 = bitcast %struct.coordinate* %38 to i8*
  %40 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %41 = getelementptr inbounds %struct.pair, %struct.pair* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %51

; <label>:42                                      ; preds = %30
  %43 = load %struct.coordinate*, %struct.coordinate** %secondPtr, align 8
  %44 = bitcast %struct.coordinate* %43 to i8*
  %45 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %46 = getelementptr inbounds %struct.pair, %struct.pair* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.coordinate*, %struct.coordinate** %firstPtr, align 8
  %48 = bitcast %struct.coordinate* %47 to i8*
  %49 = load %struct.pair*, %struct.pair** %edgePtr, align 8
  %50 = getelementptr inbounds %struct.pair, %struct.pair* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %51

; <label>:51                                      ; preds = %42, %33
  %52 = load i64, i64* %2, align 8
  %53 = load %struct.element*, %struct.element** %1, align 8
  %54 = getelementptr inbounds %struct.element, %struct.element* %53, i32 0, i32 7
  %55 = getelementptr inbounds [3 x %struct.coordinate], [3 x %struct.coordinate]* %54, i64 0, i64 %52
  store %struct.coordinate* %55, %struct.coordinate** %midpointPtr, align 8
  %56 = load %struct.coordinate*, %struct.coordinate** %firstPtr, align 8
  %57 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  %59 = load %struct.coordinate*, %struct.coordinate** %secondPtr, align 8
  %60 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %59, i32 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = fadd double %58, %61
  %63 = fdiv double %62, 2.000000e+00
  %64 = load %struct.coordinate*, %struct.coordinate** %midpointPtr, align 8
  %65 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %64, i32 0, i32 0
  store double %63, double* %65, align 8
  %66 = load %struct.coordinate*, %struct.coordinate** %firstPtr, align 8
  %67 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %66, i32 0, i32 1
  %68 = load double, double* %67, align 8
  %69 = load %struct.coordinate*, %struct.coordinate** %secondPtr, align 8
  %70 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %69, i32 0, i32 1
  %71 = load double, double* %70, align 8
  %72 = fadd double %68, %71
  %73 = fdiv double %72, 2.000000e+00
  %74 = load %struct.coordinate*, %struct.coordinate** %midpointPtr, align 8
  %75 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %74, i32 0, i32 1
  store double %73, double* %75, align 8
  %76 = load %struct.coordinate*, %struct.coordinate** %firstPtr, align 8
  %77 = load %struct.coordinate*, %struct.coordinate** %midpointPtr, align 8
  %78 = call double @coordinate_distance(%struct.coordinate* %76, %struct.coordinate* %77)
  %79 = load i64, i64* %2, align 8
  %80 = load %struct.element*, %struct.element** %1, align 8
  %81 = getelementptr inbounds %struct.element, %struct.element* %80, i32 0, i32 8
  %82 = getelementptr inbounds [3 x double], [3 x double]* %81, i64 0, i64 %79
  store double %78, double* %82, align 8
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
