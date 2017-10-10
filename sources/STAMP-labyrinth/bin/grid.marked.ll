; ModuleID = '../bin/grid.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64, i64, i64, i64*, i64* }
%struct.vector = type { i64, i64, i8** }
%struct.coordinate = type { i64, i64, i64 }

@CACHE_LINE_SIZE = constant i64 32, align 8
@.str = private unnamed_addr constant [17 x i8] c"points_unaligned\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"grid.c\00", align 1
@__PRETTY_FUNCTION__.grid_alloc = private unnamed_addr constant [37 x i8] c"grid_t *grid_alloc(long, long, long)\00", align 1
@__PRETTY_FUNCTION__.Pgrid_alloc = private unnamed_addr constant [38 x i8] c"grid_t *Pgrid_alloc(long, long, long)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"srcGridPtr->width == dstGridPtr->width\00", align 1
@__PRETTY_FUNCTION__.grid_copy = private unnamed_addr constant [35 x i8] c"void grid_copy(grid_t *, grid_t *)\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"srcGridPtr->height == dstGridPtr->height\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"srcGridPtr->depth == dstGridPtr->depth\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"[z = %li]\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%4li\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define %struct.grid* @grid_alloc(i64 %width, i64 %height, i64 %depth) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %gridPtr = alloca %struct.grid*, align 8
  %n = alloca i64, align 8
  %points_unaligned = alloca i64*, align 8
  store i64 %width, i64* %1, align 8
  store i64 %height, i64* %2, align 8
  store i64 %depth, i64* %3, align 8
  %4 = call noalias i8* @malloc(i64 40) #5
  %5 = bitcast i8* %4 to %struct.grid*
  store %struct.grid* %5, %struct.grid** %gridPtr, align 8
  %6 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %7 = icmp ne %struct.grid* %6, null
  br i1 %7, label %8, label %51

; <label>:8                                       ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %11 = getelementptr inbounds %struct.grid, %struct.grid* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %14 = getelementptr inbounds %struct.grid, %struct.grid* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %17 = getelementptr inbounds %struct.grid, %struct.grid* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* %2, align 8
  %20 = mul nsw i64 %18, %19
  %21 = load i64, i64* %3, align 8
  %22 = mul nsw i64 %20, %21
  store i64 %22, i64* %n, align 8
  %23 = load i64, i64* %n, align 8
  %24 = mul i64 %23, 8
  %25 = add i64 %24, 32
  %26 = call noalias i8* @malloc(i64 %25) #5
  %27 = bitcast i8* %26 to i64*
  store i64* %27, i64** %points_unaligned, align 8
  %28 = load i64*, i64** %points_unaligned, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %8
  br label %33

; <label>:31                                      ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.grid_alloc, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %33

; <label>:33                                      ; preds = %32, %30
  %34 = load i64*, i64** %points_unaligned, align 8
  %35 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %36 = getelementptr inbounds %struct.grid, %struct.grid* %35, i32 0, i32 4
  store i64* %34, i64** %36, align 8
  %37 = load i64*, i64** %points_unaligned, align 8
  %38 = ptrtoint i64* %37 to i64
  %39 = and i64 %38, -32
  %40 = inttoptr i64 %39 to i8*
  %41 = getelementptr inbounds i8, i8* %40, i64 32
  %42 = bitcast i8* %41 to i64*
  %43 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %44 = getelementptr inbounds %struct.grid, %struct.grid* %43, i32 0, i32 3
  store i64* %42, i64** %44, align 8
  %45 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %46 = getelementptr inbounds %struct.grid, %struct.grid* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = bitcast i64* %47 to i8*
  %49 = load i64, i64* %n, align 8
  %50 = mul i64 %49, 8
  call void @llvm.memset.p0i8.i64(i8* %48, i8 -1, i64 %50, i32 8, i1 false)
  br label %51

; <label>:51                                      ; preds = %33, %0
  %52 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  ret %struct.grid* %52
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define %struct.grid* @Pgrid_alloc(i64 %width, i64 %height, i64 %depth) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %gridPtr = alloca %struct.grid*, align 8
  %n = alloca i64, align 8
  %points_unaligned = alloca i64*, align 8
  store i64 %width, i64* %1, align 8
  store i64 %height, i64* %2, align 8
  store i64 %depth, i64* %3, align 8
  %4 = call noalias i8* @malloc(i64 40) #5
  %5 = bitcast i8* %4 to %struct.grid*
  store %struct.grid* %5, %struct.grid** %gridPtr, align 8
  %6 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %7 = icmp ne %struct.grid* %6, null
  br i1 %7, label %8, label %51

; <label>:8                                       ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %11 = getelementptr inbounds %struct.grid, %struct.grid* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %14 = getelementptr inbounds %struct.grid, %struct.grid* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %17 = getelementptr inbounds %struct.grid, %struct.grid* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* %2, align 8
  %20 = mul nsw i64 %18, %19
  %21 = load i64, i64* %3, align 8
  %22 = mul nsw i64 %20, %21
  store i64 %22, i64* %n, align 8
  %23 = load i64, i64* %n, align 8
  %24 = mul i64 %23, 8
  %25 = add i64 %24, 32
  %26 = call noalias i8* @malloc(i64 %25) #5
  %27 = bitcast i8* %26 to i64*
  store i64* %27, i64** %points_unaligned, align 8
  %28 = load i64*, i64** %points_unaligned, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %8
  br label %33

; <label>:31                                      ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Pgrid_alloc, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %33

; <label>:33                                      ; preds = %32, %30
  %34 = load i64*, i64** %points_unaligned, align 8
  %35 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %36 = getelementptr inbounds %struct.grid, %struct.grid* %35, i32 0, i32 4
  store i64* %34, i64** %36, align 8
  %37 = load i64*, i64** %points_unaligned, align 8
  %38 = ptrtoint i64* %37 to i64
  %39 = and i64 %38, -32
  %40 = inttoptr i64 %39 to i8*
  %41 = getelementptr inbounds i8, i8* %40, i64 32
  %42 = bitcast i8* %41 to i64*
  %43 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %44 = getelementptr inbounds %struct.grid, %struct.grid* %43, i32 0, i32 3
  store i64* %42, i64** %44, align 8
  %45 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  %46 = getelementptr inbounds %struct.grid, %struct.grid* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = bitcast i64* %47 to i8*
  %49 = load i64, i64* %n, align 8
  %50 = mul i64 %49, 8
  call void @llvm.memset.p0i8.i64(i8* %48, i8 -1, i64 %50, i32 8, i1 false)
  br label %51

; <label>:51                                      ; preds = %33, %0
  %52 = load %struct.grid*, %struct.grid** %gridPtr, align 8
  ret %struct.grid* %52
}

; Function Attrs: nounwind uwtable
define void @grid_free(%struct.grid* %gridPtr) #0 {
  %1 = alloca %struct.grid*, align 8
  store %struct.grid* %gridPtr, %struct.grid** %1, align 8
  %2 = load %struct.grid*, %struct.grid** %1, align 8
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 4
  %4 = load i64*, i64** %3, align 8
  %5 = bitcast i64* %4 to i8*
  call void @free(i8* %5) #5
  %6 = load %struct.grid*, %struct.grid** %1, align 8
  %7 = bitcast %struct.grid* %6 to i8*
  call void @free(i8* %7) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @Pgrid_free(%struct.grid* %gridPtr) #0 {
  %1 = alloca %struct.grid*, align 8
  store %struct.grid* %gridPtr, %struct.grid** %1, align 8
  %2 = load %struct.grid*, %struct.grid** %1, align 8
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 4
  %4 = load i64*, i64** %3, align 8
  %5 = bitcast i64* %4 to i8*
  call void @free(i8* %5) #5
  %6 = load %struct.grid*, %struct.grid** %1, align 8
  %7 = bitcast %struct.grid* %6 to i8*
  call void @free(i8* %7) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @grid_copy(%struct.grid* %dstGridPtr, %struct.grid* %srcGridPtr) #0 {
  %1 = alloca %struct.grid*, align 8
  %2 = alloca %struct.grid*, align 8
  %n = alloca i64, align 8
  %srcPoints = alloca i64*, align 8
  %i = alloca i64, align 8
  %i_step = alloca i64, align 8
  store %struct.grid* %dstGridPtr, %struct.grid** %1, align 8
  store %struct.grid* %srcGridPtr, %struct.grid** %2, align 8
  %3 = load %struct.grid*, %struct.grid** %2, align 8
  %4 = getelementptr inbounds %struct.grid, %struct.grid* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.grid*, %struct.grid** %1, align 8
  %7 = getelementptr inbounds %struct.grid, %struct.grid* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %13

; <label>:11                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 173, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.grid_copy, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = load %struct.grid*, %struct.grid** %2, align 8
  %15 = getelementptr inbounds %struct.grid, %struct.grid* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.grid*, %struct.grid** %1, align 8
  %18 = getelementptr inbounds %struct.grid, %struct.grid* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %13
  br label %24

; <label>:22                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 174, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.grid_copy, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %24

; <label>:24                                      ; preds = %23, %21
  %25 = load %struct.grid*, %struct.grid** %2, align 8
  %26 = getelementptr inbounds %struct.grid, %struct.grid* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.grid*, %struct.grid** %1, align 8
  %29 = getelementptr inbounds %struct.grid, %struct.grid* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %24
  br label %35

; <label>:33                                      ; preds = %24
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 175, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.grid_copy, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %35

; <label>:35                                      ; preds = %34, %32
  %36 = load %struct.grid*, %struct.grid** %2, align 8
  %37 = getelementptr inbounds %struct.grid, %struct.grid* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.grid*, %struct.grid** %2, align 8
  %40 = getelementptr inbounds %struct.grid, %struct.grid* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = mul nsw i64 %38, %41
  %43 = load %struct.grid*, %struct.grid** %2, align 8
  %44 = getelementptr inbounds %struct.grid, %struct.grid* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = mul nsw i64 %42, %45
  store i64 %46, i64* %n, align 8
  %47 = load %struct.grid*, %struct.grid** %1, align 8
  %48 = getelementptr inbounds %struct.grid, %struct.grid* %47, i32 0, i32 3
  %49 = load i64*, i64** %48, align 8
  %50 = bitcast i64* %49 to i8*
  %51 = load %struct.grid*, %struct.grid** %2, align 8
  %52 = getelementptr inbounds %struct.grid, %struct.grid* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = bitcast i64* %53 to i8*
  %55 = load i64, i64* %n, align 8
  %56 = mul i64 %55, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %54, i64 %56, i32 8, i1 false)
  %57 = load %struct.grid*, %struct.grid** %2, align 8
  %58 = getelementptr inbounds %struct.grid, %struct.grid* %57, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  store i64* %59, i64** %srcPoints, align 8
  store i64 4, i64* %i_step, align 8
  store i64 0, i64* %i, align 8
  br label %60

; <label>:60                                      ; preds = %65, %35
  %61 = load i64, i64* %i, align 8
  %62 = load i64, i64* %n, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %69

; <label>:64                                      ; preds = %60
  br label %65

; <label>:65                                      ; preds = %64
  %66 = load i64, i64* %i_step, align 8
  %67 = load i64, i64* %i, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %i, align 8
  br label %60

; <label>:69                                      ; preds = %60
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i64 @grid_isPointValid(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.grid*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.grid* %gridPtr, %struct.grid** %2, align 8
  store i64 %x, i64* %3, align 8
  store i64 %y, i64* %4, align 8
  store i64 %z, i64* %5, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %32, label %8

; <label>:8                                       ; preds = %0
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.grid*, %struct.grid** %2, align 8
  %11 = getelementptr inbounds %struct.grid, %struct.grid* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %32, label %14

; <label>:14                                      ; preds = %8
  %15 = load i64, i64* %4, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %32, label %17

; <label>:17                                      ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.grid*, %struct.grid** %2, align 8
  %20 = getelementptr inbounds %struct.grid, %struct.grid* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %32, label %23

; <label>:23                                      ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %32, label %26

; <label>:26                                      ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.grid*, %struct.grid** %2, align 8
  %29 = getelementptr inbounds %struct.grid, %struct.grid* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %26, %23, %17, %14, %8, %0
  store i64 0, i64* %1, align 8
  br label %34

; <label>:33                                      ; preds = %26
  store i64 1, i64* %1, align 8
  br label %34

; <label>:34                                      ; preds = %33, %32
  %35 = load i64, i64* %1, align 8
  ret i64 %35
}

; Function Attrs: nounwind uwtable
define i64* @grid_getPointRef(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z) #0 {
  %1 = alloca %struct.grid*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.grid* %gridPtr, %struct.grid** %1, align 8
  store i64 %x, i64* %2, align 8
  store i64 %y, i64* %3, align 8
  store i64 %z, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.grid*, %struct.grid** %1, align 8
  %7 = getelementptr inbounds %struct.grid, %struct.grid* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = mul nsw i64 %5, %8
  %10 = load i64, i64* %3, align 8
  %11 = add nsw i64 %9, %10
  %12 = load %struct.grid*, %struct.grid** %1, align 8
  %13 = getelementptr inbounds %struct.grid, %struct.grid* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = mul nsw i64 %11, %14
  %16 = load i64, i64* %2, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.grid*, %struct.grid** %1, align 8
  %19 = getelementptr inbounds %struct.grid, %struct.grid* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 %17
  ret i64* %21
}

; Function Attrs: nounwind uwtable
define void @grid_getPointIndices(%struct.grid* %gridPtr, i64* %gridPointPtr, i64* %xPtr, i64* %yPtr, i64* %zPtr) #0 {
  %1 = alloca %struct.grid*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %height = alloca i64, align 8
  %width = alloca i64, align 8
  %area = alloca i64, align 8
  %index3d = alloca i64, align 8
  %index2d = alloca i64, align 8
  store %struct.grid* %gridPtr, %struct.grid** %1, align 8
  store i64* %gridPointPtr, i64** %2, align 8
  store i64* %xPtr, i64** %3, align 8
  store i64* %yPtr, i64** %4, align 8
  store i64* %zPtr, i64** %5, align 8
  %6 = load %struct.grid*, %struct.grid** %1, align 8
  %7 = getelementptr inbounds %struct.grid, %struct.grid* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %height, align 8
  %9 = load %struct.grid*, %struct.grid** %1, align 8
  %10 = getelementptr inbounds %struct.grid, %struct.grid* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %width, align 8
  %12 = load i64, i64* %height, align 8
  %13 = load i64, i64* %width, align 8
  %14 = mul nsw i64 %12, %13
  store i64 %14, i64* %area, align 8
  %15 = load i64*, i64** %2, align 8
  %16 = load %struct.grid*, %struct.grid** %1, align 8
  %17 = getelementptr inbounds %struct.grid, %struct.grid* %16, i32 0, i32 3
  %18 = load i64*, i64** %17, align 8
  %19 = ptrtoint i64* %15 to i64
  %20 = ptrtoint i64* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 8
  store i64 %22, i64* %index3d, align 8
  %23 = load i64, i64* %index3d, align 8
  %24 = load i64, i64* %area, align 8
  %25 = sdiv i64 %23, %24
  %26 = load i64*, i64** %5, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* %index3d, align 8
  %28 = load i64, i64* %area, align 8
  %29 = srem i64 %27, %28
  store i64 %29, i64* %index2d, align 8
  %30 = load i64, i64* %index2d, align 8
  %31 = load i64, i64* %width, align 8
  %32 = sdiv i64 %30, %31
  %33 = load i64*, i64** %4, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i64, i64* %index2d, align 8
  %35 = load i64, i64* %width, align 8
  %36 = srem i64 %34, %35
  %37 = load i64*, i64** %3, align 8
  store i64 %36, i64* %37, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @grid_getPoint(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z) #0 {
  %1 = alloca %struct.grid*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.grid* %gridPtr, %struct.grid** %1, align 8
  store i64 %x, i64* %2, align 8
  store i64 %y, i64* %3, align 8
  store i64 %z, i64* %4, align 8
  %5 = load %struct.grid*, %struct.grid** %1, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64* @grid_getPointRef(%struct.grid* %5, i64 %6, i64 %7, i64 %8)
  %10 = load i64, i64* %9, align 8
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define i64 @grid_isPointEmpty(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z) #0 {
  %1 = alloca %struct.grid*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %value = alloca i64, align 8
  store %struct.grid* %gridPtr, %struct.grid** %1, align 8
  store i64 %x, i64* %2, align 8
  store i64 %y, i64* %3, align 8
  store i64 %z, i64* %4, align 8
  %5 = load %struct.grid*, %struct.grid** %1, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @grid_getPoint(%struct.grid* %5, i64 %6, i64 %7, i64 %8)
  store i64 %9, i64* %value, align 8
  %10 = load i64, i64* %value, align 8
  %11 = icmp eq i64 %10, -1
  %12 = select i1 %11, i32 1, i32 0
  %13 = sext i32 %12 to i64
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define i64 @grid_isPointFull(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z) #0 {
  %1 = alloca %struct.grid*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %value = alloca i64, align 8
  store %struct.grid* %gridPtr, %struct.grid** %1, align 8
  store i64 %x, i64* %2, align 8
  store i64 %y, i64* %3, align 8
  store i64 %z, i64* %4, align 8
  %5 = load %struct.grid*, %struct.grid** %1, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @grid_getPoint(%struct.grid* %5, i64 %6, i64 %7, i64 %8)
  store i64 %9, i64* %value, align 8
  %10 = load i64, i64* %value, align 8
  %11 = icmp eq i64 %10, -2
  %12 = select i1 %11, i32 1, i32 0
  %13 = sext i32 %12 to i64
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define void @grid_setPoint(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z, i64 %value) #0 {
  %1 = alloca %struct.grid*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.grid* %gridPtr, %struct.grid** %1, align 8
  store i64 %x, i64* %2, align 8
  store i64 %y, i64* %3, align 8
  store i64 %z, i64* %4, align 8
  store i64 %value, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.grid*, %struct.grid** %1, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64* @grid_getPointRef(%struct.grid* %7, i64 %8, i64 %9, i64 %10)
  store i64 %6, i64* %11, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @grid_addPath(%struct.grid* %gridPtr, %struct.vector* %pointVectorPtr) #0 {
  %1 = alloca %struct.grid*, align 8
  %2 = alloca %struct.vector*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %coordinatePtr = alloca %struct.coordinate*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %z = alloca i64, align 8
  store %struct.grid* %gridPtr, %struct.grid** %1, align 8
  store %struct.vector* %pointVectorPtr, %struct.vector** %2, align 8
  %3 = load %struct.vector*, %struct.vector** %2, align 8
  %4 = call i64 @vector_getSize(%struct.vector* %3)
  store i64 %4, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %5

; <label>:5                                       ; preds = %27, %0
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %n, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %30

; <label>:9                                       ; preds = %5
  %10 = load %struct.vector*, %struct.vector** %2, align 8
  %11 = load i64, i64* %i, align 8
  %12 = call i8* @vector_at(%struct.vector* %10, i64 %11)
  %13 = bitcast i8* %12 to %struct.coordinate*
  store %struct.coordinate* %13, %struct.coordinate** %coordinatePtr, align 8
  %14 = load %struct.coordinate*, %struct.coordinate** %coordinatePtr, align 8
  %15 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %x, align 8
  %17 = load %struct.coordinate*, %struct.coordinate** %coordinatePtr, align 8
  %18 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %y, align 8
  %20 = load %struct.coordinate*, %struct.coordinate** %coordinatePtr, align 8
  %21 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %z, align 8
  %23 = load %struct.grid*, %struct.grid** %1, align 8
  %24 = load i64, i64* %x, align 8
  %25 = load i64, i64* %y, align 8
  %26 = load i64, i64* %z, align 8
  call void @grid_setPoint(%struct.grid* %23, i64 %24, i64 %25, i64 %26, i64 -2)
  br label %27

; <label>:27                                      ; preds = %9
  %28 = load i64, i64* %i, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %i, align 8
  br label %5

; <label>:30                                      ; preds = %5
  ret void
}

declare i64 @vector_getSize(%struct.vector*) #4

declare i8* @vector_at(%struct.vector*, i64) #4

; Function Attrs: nounwind uwtable
define void @TMgrid_addPath(%struct.grid* %gridPtr, %struct.vector* %pointVectorPtr) #0 {
  %1 = alloca %struct.grid*, align 8
  %2 = alloca %struct.vector*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %gridPointPtr = alloca i64*, align 8
  %value = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.grid* %gridPtr, %struct.grid** %1, align 8
  store %struct.vector* %pointVectorPtr, %struct.vector** %2, align 8
  %4 = load %struct.vector*, %struct.vector** %2, align 8
  %5 = call i64 @vector_getSize(%struct.vector* %4)
  store i64 %5, i64* %n, align 8
  store i64 1, i64* %i, align 8
  br label %__kernel__TMgrid_addPath0

__kernel__TMgrid_addPath0:                        ; preds = %25, %0
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %n, align 8
  %8 = sub nsw i64 %7, 1
  %9 = icmp slt i64 %6, %8
  br i1 %9, label %10, label %28

; <label>:10                                      ; preds = %__kernel__TMgrid_addPath0
  %11 = load %struct.vector*, %struct.vector** %2, align 8
  %12 = load i64, i64* %i, align 8
  %13 = call i8* @vector_at(%struct.vector* %11, i64 %12)
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** %gridPointPtr, align 8
  %15 = load i64*, i64** %gridPointPtr, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %value, align 8
  %17 = load i64, i64* %value, align 8
  %18 = icmp ne i64 %17, -1
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %10
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #5, !srcloc !1
  br label %20

; <label>:20                                      ; preds = %19, %10
  %21 = load i64*, i64** %gridPointPtr, align 8
  store i64 -2, i64* %21, align 8
  %22 = load i64*, i64** %gridPointPtr, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  br label %25

; <label>:25                                      ; preds = %20
  %26 = load i64, i64* %i, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %i, align 8
  br label %__kernel__TMgrid_addPath0, !llvm.loop !2

; <label>:28                                      ; preds = %__kernel__TMgrid_addPath0
  ret void
}

; Function Attrs: nounwind uwtable
define void @grid_print(%struct.grid* %gridPtr) #0 {
  %1 = alloca %struct.grid*, align 8
  %width = alloca i64, align 8
  %height = alloca i64, align 8
  %depth = alloca i64, align 8
  %z = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store %struct.grid* %gridPtr, %struct.grid** %1, align 8
  %2 = load %struct.grid*, %struct.grid** %1, align 8
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %width, align 8
  %5 = load %struct.grid*, %struct.grid** %1, align 8
  %6 = getelementptr inbounds %struct.grid, %struct.grid* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %height, align 8
  %8 = load %struct.grid*, %struct.grid** %1, align 8
  %9 = getelementptr inbounds %struct.grid, %struct.grid* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %depth, align 8
  store i64 0, i64* %z, align 8
  br label %11

; <label>:11                                      ; preds = %45, %0
  %12 = load i64, i64* %z, align 8
  %13 = load i64, i64* %depth, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %48

; <label>:15                                      ; preds = %11
  %16 = load i64, i64* %z, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i64 %16)
  store i64 0, i64* %x, align 8
  br label %18

; <label>:18                                      ; preds = %40, %15
  %19 = load i64, i64* %x, align 8
  %20 = load i64, i64* %width, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %43

; <label>:22                                      ; preds = %18
  store i64 0, i64* %y, align 8
  br label %23

; <label>:23                                      ; preds = %35, %22
  %24 = load i64, i64* %y, align 8
  %25 = load i64, i64* %height, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %38

; <label>:27                                      ; preds = %23
  %28 = load %struct.grid*, %struct.grid** %1, align 8
  %29 = load i64, i64* %x, align 8
  %30 = load i64, i64* %y, align 8
  %31 = load i64, i64* %z, align 8
  %32 = call i64* @grid_getPointRef(%struct.grid* %28, i64 %29, i64 %30, i64 %31)
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 %33)
  br label %35

; <label>:35                                      ; preds = %27
  %36 = load i64, i64* %y, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %y, align 8
  br label %23

; <label>:38                                      ; preds = %23
  %39 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0))
  br label %40

; <label>:40                                      ; preds = %38
  %41 = load i64, i64* %x, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %x, align 8
  br label %18

; <label>:43                                      ; preds = %18
  %44 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0))
  br label %45

; <label>:45                                      ; preds = %43
  %46 = load i64, i64* %z, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %z, align 8
  br label %11

; <label>:48                                      ; preds = %11
  ret void
}

declare i32 @printf(i8*, ...) #4

declare i32 @puts(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145912288}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.vectorize.width", i32 1337}
