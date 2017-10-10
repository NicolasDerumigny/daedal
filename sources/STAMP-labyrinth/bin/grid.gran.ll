; ModuleID = '../bin/grid.marked.ll'
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
@"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_vi" = external global i64
@"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_lsup" = external global i64
@"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_granularity" = external global i64

; Function Attrs: nounwind uwtable
define %struct.grid* @grid_alloc(i64 %width, i64 %height, i64 %depth) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 40) #5
  %2 = bitcast i8* %1 to %struct.grid*
  %3 = icmp ne %struct.grid* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %30

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 0
  store i64 %width, i64* %5, align 8
  %6 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 1
  store i64 %height, i64* %6, align 8
  %7 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 2
  store i64 %depth, i64* %7, align 8
  %8 = mul nsw i64 %width, %height
  %9 = mul nsw i64 %8, %depth
  %10 = mul i64 %9, 8
  %11 = add i64 %10, 32
  %12 = call noalias i8* @malloc(i64 %11) #5
  %13 = bitcast i8* %12 to i64*
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %4
  br label %18

; <label>:16                                      ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.grid_alloc, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 4
  store i64* %13, i64** %19, align 8
  %20 = ptrtoint i64* %13 to i64
  %21 = and i64 %20, -32
  %22 = inttoptr i64 %21 to i8*
  %23 = getelementptr inbounds i8, i8* %22, i64 32
  %24 = bitcast i8* %23 to i64*
  %25 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 3
  store i64* %24, i64** %25, align 8
  %26 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 3
  %27 = load i64*, i64** %26, align 8
  %28 = bitcast i64* %27 to i8*
  %29 = mul i64 %9, 8
  call void @llvm.memset.p0i8.i64(i8* %28, i8 -1, i64 %29, i32 8, i1 false)
  br label %30

; <label>:30                                      ; preds = %._crit_edge, %18
  ret %struct.grid* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define %struct.grid* @Pgrid_alloc(i64 %width, i64 %height, i64 %depth) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 40) #5
  %2 = bitcast i8* %1 to %struct.grid*
  %3 = icmp ne %struct.grid* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %30

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 0
  store i64 %width, i64* %5, align 8
  %6 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 1
  store i64 %height, i64* %6, align 8
  %7 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 2
  store i64 %depth, i64* %7, align 8
  %8 = mul nsw i64 %width, %height
  %9 = mul nsw i64 %8, %depth
  %10 = mul i64 %9, 8
  %11 = add i64 %10, 32
  %12 = call noalias i8* @malloc(i64 %11) #5
  %13 = bitcast i8* %12 to i64*
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %4
  br label %18

; <label>:16                                      ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Pgrid_alloc, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 4
  store i64* %13, i64** %19, align 8
  %20 = ptrtoint i64* %13 to i64
  %21 = and i64 %20, -32
  %22 = inttoptr i64 %21 to i8*
  %23 = getelementptr inbounds i8, i8* %22, i64 32
  %24 = bitcast i8* %23 to i64*
  %25 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 3
  store i64* %24, i64** %25, align 8
  %26 = getelementptr inbounds %struct.grid, %struct.grid* %2, i32 0, i32 3
  %27 = load i64*, i64** %26, align 8
  %28 = bitcast i64* %27 to i8*
  %29 = mul i64 %9, 8
  call void @llvm.memset.p0i8.i64(i8* %28, i8 -1, i64 %29, i32 8, i1 false)
  br label %30

; <label>:30                                      ; preds = %._crit_edge, %18
  ret %struct.grid* %2
}

; Function Attrs: nounwind uwtable
define void @grid_free(%struct.grid* %gridPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i32 0, i32 4
  %2 = load i64*, i64** %1, align 8
  %3 = bitcast i64* %2 to i8*
  call void @free(i8* %3) #5
  %4 = bitcast %struct.grid* %gridPtr to i8*
  call void @free(i8* %4) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @Pgrid_free(%struct.grid* %gridPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i32 0, i32 4
  %2 = load i64*, i64** %1, align 8
  %3 = bitcast i64* %2 to i8*
  call void @free(i8* %3) #5
  %4 = bitcast %struct.grid* %gridPtr to i8*
  call void @free(i8* %4) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @grid_copy(%struct.grid* %dstGridPtr, %struct.grid* %srcGridPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %dstGridPtr, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %2, %4
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %9

; <label>:7                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 173, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.grid_copy, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %8, %6
  %10 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.grid, %struct.grid* %dstGridPtr, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %9
  br label %18

; <label>:16                                      ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 174, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.grid_copy, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.grid, %struct.grid* %dstGridPtr, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %18
  br label %27

; <label>:25                                      ; preds = %18
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 175, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.grid_copy, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %27

; <label>:27                                      ; preds = %26, %24
  %28 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = mul nsw i64 %29, %31
  %33 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = mul nsw i64 %32, %34
  %36 = getelementptr inbounds %struct.grid, %struct.grid* %dstGridPtr, i32 0, i32 3
  %37 = load i64*, i64** %36, align 8
  %38 = bitcast i64* %37 to i8*
  %39 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i32 0, i32 3
  %40 = load i64*, i64** %39, align 8
  %41 = bitcast i64* %40 to i8*
  %42 = mul i64 %35, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %41, i64 %42, i32 8, i1 false)
  %43 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  br label %45

; <label>:45                                      ; preds = %48, %27
  %i.0 = phi i64 [ 0, %27 ], [ %49, %48 ]
  %46 = icmp slt i64 %i.0, %35
  br i1 %46, label %47, label %50

; <label>:47                                      ; preds = %45
  br label %48

; <label>:48                                      ; preds = %47
  %49 = add nsw i64 %i.0, 4
  br label %45

; <label>:50                                      ; preds = %45
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i64 @grid_isPointValid(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = icmp slt i64 %x, 0
  br i1 %1, label %._crit_edge, label %2

._crit_edge:                                      ; preds = %0
  br label %18

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp sge i64 %x, %4
  br i1 %5, label %._crit_edge1, label %6

._crit_edge1:                                     ; preds = %2
  br label %18

; <label>:6                                       ; preds = %2
  %7 = icmp slt i64 %y, 0
  br i1 %7, label %._crit_edge2, label %8

._crit_edge2:                                     ; preds = %6
  br label %18

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %y, %10
  br i1 %11, label %._crit_edge3, label %12

._crit_edge3:                                     ; preds = %8
  br label %18

; <label>:12                                      ; preds = %8
  %13 = icmp slt i64 %z, 0
  br i1 %13, label %._crit_edge4, label %14

._crit_edge4:                                     ; preds = %12
  br label %18

; <label>:14                                      ; preds = %12
  %15 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %z, %16
  br i1 %17, label %._crit_edge5, label %19

._crit_edge5:                                     ; preds = %14
  br label %18

; <label>:18                                      ; preds = %._crit_edge5, %._crit_edge4, %._crit_edge3, %._crit_edge2, %._crit_edge1, %._crit_edge
  br label %20

; <label>:19                                      ; preds = %14
  br label %20

; <label>:20                                      ; preds = %19, %18
  %.0 = phi i64 [ 0, %18 ], [ 1, %19 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64* @grid_getPointRef(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = mul nsw i64 %z, %2
  %4 = add nsw i64 %3, %y
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = mul nsw i64 %4, %6
  %8 = add nsw i64 %7, %x
  %9 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i32 0, i32 3
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 %8
  ret i64* %11
}

; Function Attrs: nounwind uwtable
define void @grid_getPointIndices(%struct.grid* %gridPtr, i64* %gridPointPtr, i64* %xPtr, i64* %yPtr, i64* %zPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %2, %4
  %6 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i32 0, i32 3
  %7 = load i64*, i64** %6, align 8
  %8 = ptrtoint i64* %gridPointPtr to i64
  %9 = ptrtoint i64* %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 8
  %12 = sdiv i64 %11, %5
  store i64 %12, i64* %zPtr, align 8
  %13 = srem i64 %11, %5
  %14 = sdiv i64 %13, %4
  store i64 %14, i64* %yPtr, align 8
  %15 = srem i64 %13, %4
  store i64 %15, i64* %xPtr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @grid_getPoint(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64* @grid_getPointRef(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z)
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i64 @grid_isPointEmpty(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @grid_getPoint(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z)
  %2 = icmp eq i64 %1, -1
  %3 = select i1 %2, i32 1, i32 0
  %4 = sext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @grid_isPointFull(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @grid_getPoint(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z)
  %2 = icmp eq i64 %1, -2
  %3 = select i1 %2, i32 1, i32 0
  %4 = sext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @grid_setPoint(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z, i64 %value) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64* @grid_getPointRef(%struct.grid* %gridPtr, i64 %x, i64 %y, i64 %z)
  store i64 %value, i64* %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @grid_addPath(%struct.grid* %gridPtr, %struct.vector* %pointVectorPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @vector_getSize(%struct.vector* %pointVectorPtr)
  br label %2

; <label>:2                                       ; preds = %13, %0
  %i.0 = phi i64 [ 0, %0 ], [ %14, %13 ]
  %3 = icmp slt i64 %i.0, %1
  br i1 %3, label %4, label %15

; <label>:4                                       ; preds = %2
  %5 = call i8* @vector_at(%struct.vector* %pointVectorPtr, i64 %i.0)
  %6 = bitcast i8* %5 to %struct.coordinate*
  %7 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %6, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.coordinate, %struct.coordinate* %6, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  call void @grid_setPoint(%struct.grid* %gridPtr, i64 %8, i64 %10, i64 %12, i64 -2)
  br label %13

; <label>:13                                      ; preds = %4
  %14 = add nsw i64 %i.0, 1
  br label %2

; <label>:15                                      ; preds = %2
  ret void
}

declare i64 @vector_getSize(%struct.vector*) #4

declare i8* @vector_at(%struct.vector*, i64) #4

; Function Attrs: nounwind uwtable
define void @TMgrid_addPath(%struct.grid* %gridPtr, %struct.vector* %pointVectorPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @vector_getSize(%struct.vector* %pointVectorPtr)
  %2 = sub nsw i64 %1, 1
  br label %__kernel__TMgrid_addPath0_outer_chunking

__kernel__TMgrid_addPath0_outer_chunking:         ; preds = %0, %__kernel__TMgrid_addPath0_exitChunk
  %i.0 = phi i64 [ 1, %0 ], [ %i.1, %__kernel__TMgrid_addPath0_exitChunk ]
  %lsup_value = load i64, i64* @"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_lsup"
  store i64 %lsup_value, i64* @"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_vi"
  %granularity_value = load i64, i64* @"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_granularity"
  %new_lsup = add i64 %lsup_value, %granularity_value
  store i64 %new_lsup, i64* @"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_lsup"
  %outer_vi = load i64, i64* @"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_vi"
  br label %__kernel____kernel__TMgrid_addPath0_viCond

__kernel____kernel__TMgrid_addPath0_viCond:       ; preds = %__kernel__TMgrid_addPath0_outer_chunking, %12
  %i.1 = phi i64 [ %i.0, %__kernel__TMgrid_addPath0_outer_chunking ], [ %13, %12 ]
  %vi_value = phi i64 [ %outer_vi, %__kernel__TMgrid_addPath0_outer_chunking ], [ %"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_vi_inc", %12 ]
  %lsup_value1 = load i64, i64* @"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_lsup"
  %"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_vi_cmp" = icmp slt i64 %vi_value, %lsup_value1
  br i1 %"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_vi_cmp", label %__kernel__TMgrid_addPath0, label %__kernel__TMgrid_addPath0_exitChunk

__kernel__TMgrid_addPath0_exitChunk:              ; preds = %__kernel____kernel__TMgrid_addPath0_viCond
  br label %__kernel__TMgrid_addPath0_outer_chunking

__kernel__TMgrid_addPath0:                        ; preds = %__kernel____kernel__TMgrid_addPath0_viCond
  %3 = icmp slt i64 %i.1, %2
  br i1 %3, label %4, label %14

; <label>:4                                       ; preds = %__kernel__TMgrid_addPath0
  %5 = call i8* @vector_at(%struct.vector* %pointVectorPtr, i64 %i.1)
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, -1
  br i1 %8, label %9, label %._crit_edge

._crit_edge:                                      ; preds = %4
  br label %10

; <label>:9                                       ; preds = %4
  call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #5, !srcloc !1
  br label %10

; <label>:10                                      ; preds = %._crit_edge, %9
  store i64 -2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  br label %12

; <label>:12                                      ; preds = %10
  %13 = add nsw i64 %i.1, 1
  %"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_vi_inc" = add i64 %vi_value, 1
  store i64 %"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_vi_inc", i64* @"../bin/grid.marked.ll_TMgrid_addPath___kernel__TMgrid_addPath0_vi"
  br label %__kernel____kernel__TMgrid_addPath0_viCond, !llvm.loop !2

; <label>:14                                      ; preds = %__kernel__TMgrid_addPath0
  ret void
}

; Function Attrs: nounwind uwtable
define void @grid_print(%struct.grid* %gridPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  br label %7

; <label>:7                                       ; preds = %28, %0
  %z.0 = phi i64 [ 0, %0 ], [ %29, %28 ]
  %8 = icmp slt i64 %z.0, %6
  br i1 %8, label %9, label %30

; <label>:9                                       ; preds = %7
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i64 %z.0)
  br label %11

; <label>:11                                      ; preds = %24, %9
  %x.0 = phi i64 [ 0, %9 ], [ %25, %24 ]
  %12 = icmp slt i64 %x.0, %2
  br i1 %12, label %13, label %26

; <label>:13                                      ; preds = %11
  br label %14

; <label>:14                                      ; preds = %20, %13
  %y.0 = phi i64 [ 0, %13 ], [ %21, %20 ]
  %15 = icmp slt i64 %y.0, %4
  br i1 %15, label %16, label %22

; <label>:16                                      ; preds = %14
  %17 = call i64* @grid_getPointRef(%struct.grid* %gridPtr, i64 %x.0, i64 %y.0, i64 %z.0)
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 %18)
  br label %20

; <label>:20                                      ; preds = %16
  %21 = add nsw i64 %y.0, 1
  br label %14

; <label>:22                                      ; preds = %14
  %23 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0))
  br label %24

; <label>:24                                      ; preds = %22
  %25 = add nsw i64 %x.0, 1
  br label %11

; <label>:26                                      ; preds = %11
  %27 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0))
  br label %28

; <label>:28                                      ; preds = %26
  %29 = add nsw i64 %z.0, 1
  br label %7

; <label>:30                                      ; preds = %7
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
