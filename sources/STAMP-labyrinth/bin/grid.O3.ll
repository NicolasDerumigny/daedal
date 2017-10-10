; ModuleID = '../bin/grid.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64, i64, i64, i64*, i64* }
%struct.vector = type { i64, i64, i8** }

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

; Function Attrs: nounwind uwtable
define noalias %struct.grid* @grid_alloc(i64 %width, i64 %height, i64 %depth) #0 {
  %1 = tail call noalias i8* @malloc(i64 40) #7
  %2 = bitcast i8* %1 to %struct.grid*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %26, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i64*
  store i64 %width, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 %height, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %depth, i64* %9, align 8
  %10 = shl i64 %width, 3
  %11 = mul i64 %10, %height
  %12 = mul i64 %11, %depth
  %13 = add i64 %12, 32
  %14 = tail call noalias i8* @malloc(i64 %13) #7
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 102, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.grid_alloc, i64 0, i64 0)) #8
  unreachable

; <label>:17                                      ; preds = %4
  %18 = getelementptr inbounds i8, i8* %1, i64 32
  %19 = bitcast i8* %18 to i8**
  store i8* %14, i8** %19, align 8
  %20 = ptrtoint i8* %14 to i64
  %21 = and i64 %20, -32
  %22 = inttoptr i64 %21 to i8*
  %23 = getelementptr inbounds i8, i8* %22, i64 32
  %24 = getelementptr inbounds i8, i8* %1, i64 24
  %25 = bitcast i8* %24 to i8**
  store i8* %23, i8** %25, align 8
  tail call void @llvm.memset.p0i8.i64(i8* %23, i8 -1, i64 %12, i32 32, i1 false)
  br label %26

; <label>:26                                      ; preds = %0, %17
  ret %struct.grid* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define noalias %struct.grid* @Pgrid_alloc(i64 %width, i64 %height, i64 %depth) #0 {
  %1 = tail call noalias i8* @malloc(i64 40) #7
  %2 = bitcast i8* %1 to %struct.grid*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %26, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i64*
  store i64 %width, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 %height, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %depth, i64* %9, align 8
  %10 = shl i64 %width, 3
  %11 = mul i64 %10, %height
  %12 = mul i64 %11, %depth
  %13 = add i64 %12, 32
  %14 = tail call noalias i8* @malloc(i64 %13) #7
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 130, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.Pgrid_alloc, i64 0, i64 0)) #8
  unreachable

; <label>:17                                      ; preds = %4
  %18 = getelementptr inbounds i8, i8* %1, i64 32
  %19 = bitcast i8* %18 to i8**
  store i8* %14, i8** %19, align 8
  %20 = ptrtoint i8* %14 to i64
  %21 = and i64 %20, -32
  %22 = inttoptr i64 %21 to i8*
  %23 = getelementptr inbounds i8, i8* %22, i64 32
  %24 = getelementptr inbounds i8, i8* %1, i64 24
  %25 = bitcast i8* %24 to i8**
  store i8* %23, i8** %25, align 8
  tail call void @llvm.memset.p0i8.i64(i8* %23, i8 -1, i64 %12, i32 32, i1 false)
  br label %26

; <label>:26                                      ; preds = %0, %17
  ret %struct.grid* %2
}

; Function Attrs: nounwind uwtable
define void @grid_free(%struct.grid* nocapture %gridPtr) #0 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 4
  %2 = bitcast i64** %1 to i8**
  %3 = load i8*, i8** %2, align 8
  tail call void @free(i8* %3) #7
  %4 = bitcast %struct.grid* %gridPtr to i8*
  tail call void @free(i8* %4) #7
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @Pgrid_free(%struct.grid* nocapture %gridPtr) #0 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 4
  %2 = bitcast i64** %1 to i8**
  %3 = load i8*, i8** %2, align 8
  tail call void @free(i8* %3) #7
  %4 = bitcast %struct.grid* %gridPtr to i8*
  tail call void @free(i8* %4) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @grid_copy(%struct.grid* nocapture readonly %dstGridPtr, %struct.grid* nocapture readonly %srcGridPtr) #0 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %dstGridPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %2, %4
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 173, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.grid_copy, i64 0, i64 0)) #8
  unreachable

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i64 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.grid, %struct.grid* %dstGridPtr, i64 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %14, label %13

; <label>:13                                      ; preds = %7
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 174, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.grid_copy, i64 0, i64 0)) #8
  unreachable

; <label>:14                                      ; preds = %7
  %15 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i64 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.grid, %struct.grid* %dstGridPtr, i64 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %21, label %20

; <label>:20                                      ; preds = %14
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 175, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.grid_copy, i64 0, i64 0)) #8
  unreachable

; <label>:21                                      ; preds = %14
  %22 = mul nsw i64 %9, %2
  %23 = mul nsw i64 %22, %16
  %24 = getelementptr inbounds %struct.grid, %struct.grid* %dstGridPtr, i64 0, i32 3
  %25 = bitcast i64** %24 to i8**
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds %struct.grid, %struct.grid* %srcGridPtr, i64 0, i32 3
  %28 = bitcast i64** %27 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = shl i64 %23, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %29, i64 %30, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @grid_isPointValid(%struct.grid* nocapture readonly %gridPtr, i64 %x, i64 %y, i64 %z) #4 {
  %1 = icmp slt i64 %x, 0
  br i1 %1, label %16, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp sle i64 %4, %x
  %6 = icmp slt i64 %y, 0
  %or.cond = or i1 %6, %5
  br i1 %or.cond, label %16, label %7

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp sle i64 %9, %y
  %11 = icmp slt i64 %z, 0
  %or.cond3 = or i1 %11, %10
  br i1 %or.cond3, label %16, label %12

; <label>:12                                      ; preds = %7
  %13 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, %z
  %. = zext i1 %15 to i64
  ret i64 %.

; <label>:16                                      ; preds = %0, %2, %7
  ret i64 0
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64* @grid_getPointRef(%struct.grid* nocapture readonly %gridPtr, i64 %x, i64 %y, i64 %z) #4 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = mul nsw i64 %2, %z
  %4 = add nsw i64 %3, %y
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = mul nsw i64 %4, %6
  %8 = add nsw i64 %7, %x
  %9 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 %8
  ret i64* %11
}

; Function Attrs: norecurse nounwind uwtable
define void @grid_getPointIndices(%struct.grid* nocapture readonly %gridPtr, i64* %gridPointPtr, i64* nocapture %xPtr, i64* nocapture %yPtr, i64* nocapture %zPtr) #5 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, %2
  %6 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  %7 = bitcast i64** %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = ptrtoint i64* %gridPointPtr to i64
  %10 = sub i64 %9, %8
  %11 = ashr exact i64 %10, 3
  %12 = sdiv i64 %11, %5
  store i64 %12, i64* %zPtr, align 8
  %13 = srem i64 %11, %5
  %14 = sdiv i64 %13, %4
  store i64 %14, i64* %yPtr, align 8
  %15 = srem i64 %13, %4
  store i64 %15, i64* %xPtr, align 8
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @grid_getPoint(%struct.grid* nocapture readonly %gridPtr, i64 %x, i64 %y, i64 %z) #4 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = mul nsw i64 %2, %z
  %4 = add nsw i64 %3, %y
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = mul nsw i64 %4, %6
  %8 = add nsw i64 %7, %x
  %9 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 %8
  %12 = load i64, i64* %11, align 8
  ret i64 %12
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @grid_isPointEmpty(%struct.grid* nocapture readonly %gridPtr, i64 %x, i64 %y, i64 %z) #4 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = mul nsw i64 %2, %z
  %4 = add nsw i64 %3, %y
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = mul nsw i64 %4, %6
  %8 = add nsw i64 %7, %x
  %9 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 %8
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, -1
  %14 = zext i1 %13 to i64
  ret i64 %14
}

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @grid_isPointFull(%struct.grid* nocapture readonly %gridPtr, i64 %x, i64 %y, i64 %z) #4 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = mul nsw i64 %2, %z
  %4 = add nsw i64 %3, %y
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = mul nsw i64 %4, %6
  %8 = add nsw i64 %7, %x
  %9 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 %8
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, -2
  %14 = zext i1 %13 to i64
  ret i64 %14
}

; Function Attrs: norecurse nounwind uwtable
define void @grid_setPoint(%struct.grid* nocapture readonly %gridPtr, i64 %x, i64 %y, i64 %z, i64 %value) #5 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = mul nsw i64 %2, %z
  %4 = add nsw i64 %3, %y
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = mul nsw i64 %4, %6
  %8 = add nsw i64 %7, %x
  %9 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 %8
  store i64 %value, i64* %11, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @grid_addPath(%struct.grid* nocapture readonly %gridPtr, %struct.vector* %pointVectorPtr) #0 {
  %1 = tail call i64 @vector_getSize(%struct.vector* %pointVectorPtr) #7
  %2 = icmp sgt i64 %1, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %4 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph
  %i.01 = phi i64 [ 0, %.lr.ph ], [ %24, %6 ]
  %7 = tail call i8* @vector_at(%struct.vector* %pointVectorPtr, i64 %i.01) #7
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i8, i8* %7, i64 8
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i8, i8* %7, i64 16
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = mul nsw i64 %16, %15
  %18 = add nsw i64 %17, %12
  %19 = load i64, i64* %4, align 8
  %20 = mul nsw i64 %18, %19
  %21 = add nsw i64 %20, %9
  %22 = load i64*, i64** %5, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 %21
  store i64 -2, i64* %23, align 8
  %24 = add nuw nsw i64 %i.01, 1
  %exitcond = icmp eq i64 %24, %1
  br i1 %exitcond, label %._crit_edge.loopexit, label %6

._crit_edge.loopexit:                             ; preds = %6
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void
}

declare i64 @vector_getSize(%struct.vector*) #6

declare i8* @vector_at(%struct.vector*, i64) #6

; Function Attrs: nounwind uwtable
define void @TMgrid_addPath(%struct.grid* nocapture readnone %gridPtr, %struct.vector* %pointVectorPtr) #0 {
  %1 = tail call i64 @vector_getSize(%struct.vector* %pointVectorPtr) #7
  %2 = add i64 %1, -1
  %3 = icmp sgt i64 %2, 1
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %9
  %i.01 = phi i64 [ %10, %9 ], [ 1, %.lr.ph.preheader ]
  %4 = tail call i8* @vector_at(%struct.vector* %pointVectorPtr, i64 %i.01) #7
  %5 = bitcast i8* %4 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, -1
  br i1 %7, label %9, label %8

; <label>:8                                       ; preds = %.lr.ph
  tail call void asm sideeffect ".byte 0xc6,0xf8,${0:P}", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #7, !srcloc !1
  br label %9

; <label>:9                                       ; preds = %.lr.ph, %8
  store i64 -2, i64* %5, align 8
  %10 = add nuw nsw i64 %i.01, 1
  %exitcond = icmp eq i64 %10, %2
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !2

._crit_edge.loopexit:                             ; preds = %9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @grid_print(%struct.grid* nocapture readonly %gridPtr) #0 {
  %1 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %0
  %8 = icmp sgt i64 %2, 0
  %9 = icmp sgt i64 %4, 0
  %10 = getelementptr inbounds %struct.grid, %struct.grid* %gridPtr, i64 0, i32 3
  br i1 %8, label %.lr.ph9.split.us.preheader, label %.lr.ph9.split.preheader

.lr.ph9.split.preheader:                          ; preds = %.lr.ph9
  br label %.lr.ph9.split

.lr.ph9.split.us.preheader:                       ; preds = %.lr.ph9
  br label %.lr.ph9.split.us

.lr.ph9.split.us:                                 ; preds = %.lr.ph9.split.us.preheader, %._crit_edge5.us
  %z.06.us = phi i64 [ %13, %._crit_edge5.us ], [ 0, %.lr.ph9.split.us.preheader ]
  %11 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %z.06.us)
  br i1 %9, label %.lr.ph.us.us.preheader, label %.preheader.us14.preheader

.preheader.us14.preheader:                        ; preds = %.lr.ph9.split.us
  br label %.preheader.us14

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph9.split.us
  br label %.lr.ph.us.us

.preheader.us14:                                  ; preds = %.preheader.us14.preheader, %.preheader.us14
  %x.03.us15 = phi i64 [ %12, %.preheader.us14 ], [ 0, %.preheader.us14.preheader ]
  %putchar1.us12 = tail call i32 @putchar(i32 10) #7
  %12 = add nuw nsw i64 %x.03.us15, 1
  %exitcond = icmp eq i64 %12, %2
  br i1 %exitcond, label %._crit_edge5.us.loopexit30, label %.preheader.us14

._crit_edge5.us.loopexit:                         ; preds = %._crit_edge.us.us
  br label %._crit_edge5.us

._crit_edge5.us.loopexit30:                       ; preds = %.preheader.us14
  br label %._crit_edge5.us

._crit_edge5.us:                                  ; preds = %._crit_edge5.us.loopexit30, %._crit_edge5.us.loopexit
  %putchar.us = tail call i32 @putchar(i32 10) #7
  %13 = add nuw nsw i64 %z.06.us, 1
  %exitcond24 = icmp eq i64 %13, %6
  br i1 %exitcond24, label %._crit_edge10.loopexit, label %.lr.ph9.split.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %x.03.us.us = phi i64 [ %14, %._crit_edge.us.us ], [ 0, %.lr.ph.us.us.preheader ]
  br label %15

._crit_edge.us.us:                                ; preds = %15
  %putchar1.us.us = tail call i32 @putchar(i32 10) #7
  %14 = add nuw nsw i64 %x.03.us.us, 1
  %exitcond23 = icmp eq i64 %14, %2
  br i1 %exitcond23, label %._crit_edge5.us.loopexit, label %.lr.ph.us.us

; <label>:15                                      ; preds = %15, %.lr.ph.us.us
  %y.02.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %26, %15 ]
  %16 = load i64, i64* %3, align 8
  %17 = mul nsw i64 %16, %z.06.us
  %18 = add nsw i64 %17, %y.02.us.us
  %19 = load i64, i64* %1, align 8
  %20 = mul nsw i64 %18, %19
  %21 = add nsw i64 %20, %x.03.us.us
  %22 = load i64*, i64** %10, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 %21
  %24 = load i64, i64* %23, align 8
  %25 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %24)
  %26 = add nuw nsw i64 %y.02.us.us, 1
  %exitcond22 = icmp eq i64 %26, %4
  br i1 %exitcond22, label %._crit_edge.us.us, label %15

.lr.ph9.split:                                    ; preds = %.lr.ph9.split.preheader, %.lr.ph9.split
  %z.06 = phi i64 [ %28, %.lr.ph9.split ], [ 0, %.lr.ph9.split.preheader ]
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %z.06)
  %putchar = tail call i32 @putchar(i32 10) #7
  %28 = add nuw nsw i64 %z.06, 1
  %exitcond25 = icmp eq i64 %28, %6
  br i1 %exitcond25, label %._crit_edge10.loopexit31, label %.lr.ph9.split

._crit_edge10.loopexit:                           ; preds = %._crit_edge5.us
  br label %._crit_edge10

._crit_edge10.loopexit31:                         ; preds = %.lr.ph9.split
  br label %._crit_edge10

._crit_edge10:                                    ; preds = %._crit_edge10.loopexit31, %._crit_edge10.loopexit, %0
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

declare i32 @putchar(i32)

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 -2145912288}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.vectorize.width", i32 1337}
