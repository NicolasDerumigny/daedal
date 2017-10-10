; ModuleID = 'bitmap.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i64, i64* }

@.str = private unnamed_addr constant [33 x i8] c"dstPtr->numBit == srcPtr->numBit\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bitmap.c\00", align 1
@__PRETTY_FUNCTION__.bitmap_copy = private unnamed_addr constant [41 x i8] c"void bitmap_copy(bitmap_t *, bitmap_t *)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.bitmap* @bitmap_alloc(i64 %numBit) #0 {
  %1 = alloca %struct.bitmap*, align 8
  %2 = alloca i64, align 8
  %bitmapPtr = alloca %struct.bitmap*, align 8
  %numWord = alloca i64, align 8
  %_a = alloca i64, align 8
  %_b = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %numBit, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 24) #4
  %5 = bitcast i8* %4 to %struct.bitmap*
  store %struct.bitmap* %5, %struct.bitmap** %bitmapPtr, align 8
  %6 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %7 = icmp eq %struct.bitmap* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store %struct.bitmap* null, %struct.bitmap** %1, align 8
  br label %47

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %12 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i64, i64* %2, align 8
  store i64 %13, i64* %_a, align 8
  store i64 64, i64* %_b, align 8
  %14 = load i64, i64* %_a, align 8
  %15 = load i64, i64* %_b, align 8
  %16 = udiv i64 %14, %15
  %17 = load i64, i64* %_a, align 8
  %18 = load i64, i64* %_b, align 8
  %19 = urem i64 %17, %18
  %20 = icmp ugt i64 %19, 0
  %21 = select i1 %20, i32 1, i32 0
  %22 = sext i32 %21 to i64
  %23 = add i64 %16, %22
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  store i64 %24, i64* %numWord, align 8
  %25 = load i64, i64* %numWord, align 8
  %26 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %27 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %numWord, align 8
  %29 = mul i64 %28, 8
  %30 = call noalias i8* @malloc(i64 %29) #4
  %31 = bitcast i8* %30 to i64*
  %32 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %33 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %32, i32 0, i32 2
  store i64* %31, i64** %33, align 8
  %34 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %35 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = icmp eq i64* %36, null
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %9
  store %struct.bitmap* null, %struct.bitmap** %1, align 8
  br label %47

; <label>:39                                      ; preds = %9
  %40 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %41 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = bitcast i64* %42 to i8*
  %44 = load i64, i64* %numWord, align 8
  %45 = mul i64 %44, 8
  call void @llvm.memset.p0i8.i64(i8* %43, i8 0, i64 %45, i32 8, i1 false)
  %46 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  store %struct.bitmap* %46, %struct.bitmap** %1, align 8
  br label %47

; <label>:47                                      ; preds = %39, %38, %8
  %48 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  ret %struct.bitmap* %48
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct.bitmap* @Pbitmap_alloc(i64 %numBit) #0 {
  %1 = alloca %struct.bitmap*, align 8
  %2 = alloca i64, align 8
  %bitmapPtr = alloca %struct.bitmap*, align 8
  %numWord = alloca i64, align 8
  %_a = alloca i64, align 8
  %_b = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %numBit, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 24) #4
  %5 = bitcast i8* %4 to %struct.bitmap*
  store %struct.bitmap* %5, %struct.bitmap** %bitmapPtr, align 8
  %6 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %7 = icmp eq %struct.bitmap* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store %struct.bitmap* null, %struct.bitmap** %1, align 8
  br label %49

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %12 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i64, i64* %2, align 8
  store i64 %13, i64* %_a, align 8
  store i64 64, i64* %_b, align 8
  %14 = load i64, i64* %_a, align 8
  %15 = load i64, i64* %_b, align 8
  %16 = udiv i64 %14, %15
  %17 = load i64, i64* %_a, align 8
  %18 = load i64, i64* %_b, align 8
  %19 = urem i64 %17, %18
  %20 = icmp ugt i64 %19, 0
  %21 = select i1 %20, i32 1, i32 0
  %22 = sext i32 %21 to i64
  %23 = add i64 %16, %22
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  store i64 %24, i64* %numWord, align 8
  %25 = load i64, i64* %numWord, align 8
  %26 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %27 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %numWord, align 8
  %29 = mul i64 %28, 8
  %30 = call noalias i8* @malloc(i64 %29) #4
  %31 = bitcast i8* %30 to i64*
  %32 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %33 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %32, i32 0, i32 2
  store i64* %31, i64** %33, align 8
  %34 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %35 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = icmp eq i64* %36, null
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %9
  %39 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %40 = bitcast %struct.bitmap* %39 to i8*
  call void @free(i8* %40) #4
  store %struct.bitmap* null, %struct.bitmap** %1, align 8
  br label %49

; <label>:41                                      ; preds = %9
  %42 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  %43 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = bitcast i64* %44 to i8*
  %46 = load i64, i64* %numWord, align 8
  %47 = mul i64 %46, 8
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 %47, i32 8, i1 false)
  %48 = load %struct.bitmap*, %struct.bitmap** %bitmapPtr, align 8
  store %struct.bitmap* %48, %struct.bitmap** %1, align 8
  br label %49

; <label>:49                                      ; preds = %41, %38, %8
  %50 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  ret %struct.bitmap* %50
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @bitmap_free(%struct.bitmap* %bitmapPtr) #0 {
  %1 = alloca %struct.bitmap*, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %1, align 8
  %2 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %2, i32 0, i32 2
  %4 = load i64*, i64** %3, align 8
  %5 = bitcast i64* %4 to i8*
  call void @free(i8* %5) #4
  %6 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %7 = bitcast %struct.bitmap* %6 to i8*
  call void @free(i8* %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Pbitmap_free(%struct.bitmap* %bitmapPtr) #0 {
  %1 = alloca %struct.bitmap*, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %1, align 8
  %2 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %2, i32 0, i32 2
  %4 = load i64*, i64** %3, align 8
  %5 = bitcast i64* %4 to i8*
  call void @free(i8* %5) #4
  %6 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %7 = bitcast %struct.bitmap* %6 to i8*
  call void @free(i8* %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_set(%struct.bitmap* %bitmapPtr, i64 %i) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %2, align 8
  store i64 %i, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %6, %0
  store i64 0, i64* %1, align 8
  br label %25

; <label>:13                                      ; preds = %6
  %14 = load i64, i64* %3, align 8
  %15 = urem i64 %14, 64
  %16 = shl i64 1, %15
  %17 = load i64, i64* %3, align 8
  %18 = udiv i64 %17, 64
  %19 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %20 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 %18
  %23 = load i64, i64* %22, align 8
  %24 = or i64 %23, %16
  store i64 %24, i64* %22, align 8
  store i64 1, i64* %1, align 8
  br label %25

; <label>:25                                      ; preds = %13, %12
  %26 = load i64, i64* %1, align 8
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_clear(%struct.bitmap* %bitmapPtr, i64 %i) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %2, align 8
  store i64 %i, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %6, %0
  store i64 0, i64* %1, align 8
  br label %26

; <label>:13                                      ; preds = %6
  %14 = load i64, i64* %3, align 8
  %15 = urem i64 %14, 64
  %16 = shl i64 1, %15
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %3, align 8
  %19 = udiv i64 %18, 64
  %20 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %21 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 %19
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, %17
  store i64 %25, i64* %23, align 8
  store i64 1, i64* %1, align 8
  br label %26

; <label>:26                                      ; preds = %13, %12
  %27 = load i64, i64* %1, align 8
  ret i64 %27
}

; Function Attrs: nounwind uwtable
define void @bitmap_clearAll(%struct.bitmap* %bitmapPtr) #0 {
  %1 = alloca %struct.bitmap*, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %1, align 8
  %2 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %2, i32 0, i32 2
  %4 = load i64*, i64** %3, align 8
  %5 = bitcast i64* %4 to i8*
  %6 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %7 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = mul i64 %8, 8
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 %9, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_isClear(%struct.bitmap* %bitmapPtr, i64 %i) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %2, align 8
  store i64 %i, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %26

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %26

; <label>:12                                      ; preds = %6
  %13 = load i64, i64* %3, align 8
  %14 = udiv i64 %13, 64
  %15 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %16 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 %14
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = urem i64 %20, 64
  %22 = shl i64 1, %21
  %23 = and i64 %19, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

; <label>:25                                      ; preds = %12
  store i64 1, i64* %1, align 8
  br label %27

; <label>:26                                      ; preds = %12, %6, %0
  store i64 0, i64* %1, align 8
  br label %27

; <label>:27                                      ; preds = %26, %25
  %28 = load i64, i64* %1, align 8
  ret i64 %28
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_isSet(%struct.bitmap* %bitmapPtr, i64 %i) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %2, align 8
  store i64 %i, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %26

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %26

; <label>:12                                      ; preds = %6
  %13 = load i64, i64* %3, align 8
  %14 = udiv i64 %13, 64
  %15 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %16 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 %14
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = urem i64 %20, 64
  %22 = shl i64 1, %21
  %23 = and i64 %19, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %12
  store i64 1, i64* %1, align 8
  br label %27

; <label>:26                                      ; preds = %12, %6, %0
  store i64 0, i64* %1, align 8
  br label %27

; <label>:27                                      ; preds = %26, %25
  %28 = load i64, i64* %1, align 8
  ret i64 %28
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_findClear(%struct.bitmap* %bitmapPtr, i64 %startIndex) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  %i = alloca i64, align 8
  %numBit = alloca i64, align 8
  %bits = alloca i64*, align 8
  %_a = alloca i64, align 8
  %_b = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %2, align 8
  store i64 %startIndex, i64* %3, align 8
  %5 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %6 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %numBit, align 8
  %8 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %8, i32 0, i32 2
  %10 = load i64*, i64** %9, align 8
  store i64* %10, i64** %bits, align 8
  %11 = load i64, i64* %3, align 8
  store i64 %11, i64* %_a, align 8
  store i32 0, i32* %_b, align 4
  %12 = load i64, i64* %_a, align 8
  %13 = load i32, i32* %_b, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp sgt i64 %12, %14
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %0
  %17 = load i64, i64* %_a, align 8
  br label %21

; <label>:18                                      ; preds = %0
  %19 = load i32, i32* %_b, align 4
  %20 = sext i32 %19 to i64
  br label %21

; <label>:21                                      ; preds = %18, %16
  %22 = phi i64 [ %17, %16 ], [ %20, %18 ]
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %i, align 8
  br label %24

; <label>:24                                      ; preds = %42, %21
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %numBit, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %45

; <label>:28                                      ; preds = %24
  %29 = load i64, i64* %i, align 8
  %30 = udiv i64 %29, 64
  %31 = load i64*, i64** %bits, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 %30
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %i, align 8
  %35 = urem i64 %34, 64
  %36 = shl i64 1, %35
  %37 = and i64 %33, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

; <label>:39                                      ; preds = %28
  %40 = load i64, i64* %i, align 8
  store i64 %40, i64* %1, align 8
  br label %46

; <label>:41                                      ; preds = %28
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load i64, i64* %i, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %i, align 8
  br label %24

; <label>:45                                      ; preds = %24
  store i64 -1, i64* %1, align 8
  br label %46

; <label>:46                                      ; preds = %45, %39
  %47 = load i64, i64* %1, align 8
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_findSet(%struct.bitmap* %bitmapPtr, i64 %startIndex) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  %i = alloca i64, align 8
  %numBit = alloca i64, align 8
  %bits = alloca i64*, align 8
  %_a = alloca i64, align 8
  %_b = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %2, align 8
  store i64 %startIndex, i64* %3, align 8
  %5 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %6 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %numBit, align 8
  %8 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %8, i32 0, i32 2
  %10 = load i64*, i64** %9, align 8
  store i64* %10, i64** %bits, align 8
  %11 = load i64, i64* %3, align 8
  store i64 %11, i64* %_a, align 8
  store i32 0, i32* %_b, align 4
  %12 = load i64, i64* %_a, align 8
  %13 = load i32, i32* %_b, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp sgt i64 %12, %14
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %0
  %17 = load i64, i64* %_a, align 8
  br label %21

; <label>:18                                      ; preds = %0
  %19 = load i32, i32* %_b, align 4
  %20 = sext i32 %19 to i64
  br label %21

; <label>:21                                      ; preds = %18, %16
  %22 = phi i64 [ %17, %16 ], [ %20, %18 ]
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %i, align 8
  br label %24

; <label>:24                                      ; preds = %42, %21
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %numBit, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %45

; <label>:28                                      ; preds = %24
  %29 = load i64, i64* %i, align 8
  %30 = udiv i64 %29, 64
  %31 = load i64*, i64** %bits, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 %30
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %i, align 8
  %35 = urem i64 %34, 64
  %36 = shl i64 1, %35
  %37 = and i64 %33, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

; <label>:39                                      ; preds = %28
  %40 = load i64, i64* %i, align 8
  store i64 %40, i64* %1, align 8
  br label %46

; <label>:41                                      ; preds = %28
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load i64, i64* %i, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %i, align 8
  br label %24

; <label>:45                                      ; preds = %24
  store i64 -1, i64* %1, align 8
  br label %46

; <label>:46                                      ; preds = %45, %39
  %47 = load i64, i64* %1, align 8
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_getNumClear(%struct.bitmap* %bitmapPtr) #0 {
  %1 = alloca %struct.bitmap*, align 8
  %numBit = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %1, align 8
  %2 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %numBit, align 8
  %5 = load i64, i64* %numBit, align 8
  %6 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %7 = call i64 @bitmap_getNumSet(%struct.bitmap* %6)
  %8 = sub nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define i64 @bitmap_getNumSet(%struct.bitmap* %bitmapPtr) #0 {
  %1 = alloca %struct.bitmap*, align 8
  %i = alloca i64, align 8
  %numBit = alloca i64, align 8
  %bits = alloca i64*, align 8
  %count = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %1, align 8
  %2 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %numBit, align 8
  %5 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %6 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %5, i32 0, i32 2
  %7 = load i64*, i64** %6, align 8
  store i64* %7, i64** %bits, align 8
  store i64 0, i64* %count, align 8
  store i64 0, i64* %i, align 8
  br label %8

; <label>:8                                       ; preds = %27, %0
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %numBit, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %30

; <label>:12                                      ; preds = %8
  %13 = load i64, i64* %i, align 8
  %14 = udiv i64 %13, 64
  %15 = load i64*, i64** %bits, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 %14
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %i, align 8
  %19 = urem i64 %18, 64
  %20 = shl i64 1, %19
  %21 = and i64 %17, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %12
  %24 = load i64, i64* %count, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %count, align 8
  br label %26

; <label>:26                                      ; preds = %23, %12
  br label %27

; <label>:27                                      ; preds = %26
  %28 = load i64, i64* %i, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %i, align 8
  br label %8

; <label>:30                                      ; preds = %8
  %31 = load i64, i64* %count, align 8
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define void @bitmap_copy(%struct.bitmap* %dstPtr, %struct.bitmap* %srcPtr) #0 {
  %1 = alloca %struct.bitmap*, align 8
  %2 = alloca %struct.bitmap*, align 8
  store %struct.bitmap* %dstPtr, %struct.bitmap** %1, align 8
  store %struct.bitmap* %srcPtr, %struct.bitmap** %2, align 8
  %3 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %4 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %7 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %13

; <label>:11                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 343, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.bitmap_copy, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %15 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = bitcast i64* %16 to i8*
  %18 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %19 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %18, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  %21 = bitcast i64* %20 to i8*
  %22 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %23 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = mul i64 %24, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %21, i64 %25, i32 8, i1 false)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @bitmap_toggleAll(%struct.bitmap* %bitmapPtr) #0 {
  %1 = alloca %struct.bitmap*, align 8
  %bits = alloca i64*, align 8
  %numWord = alloca i64, align 8
  %w = alloca i64, align 8
  store %struct.bitmap* %bitmapPtr, %struct.bitmap** %1, align 8
  %2 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %3 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %2, i32 0, i32 2
  %4 = load i64*, i64** %3, align 8
  store i64* %4, i64** %bits, align 8
  %5 = load %struct.bitmap*, %struct.bitmap** %1, align 8
  %6 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %numWord, align 8
  store i64 0, i64* %w, align 8
  br label %8

; <label>:8                                       ; preds = %18, %0
  %9 = load i64, i64* %w, align 8
  %10 = load i64, i64* %numWord, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %21

; <label>:12                                      ; preds = %8
  %13 = load i64, i64* %w, align 8
  %14 = load i64*, i64** %bits, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 %13
  %16 = load i64, i64* %15, align 8
  %17 = xor i64 %16, -1
  store i64 %17, i64* %15, align 8
  br label %18

; <label>:18                                      ; preds = %12
  %19 = load i64, i64* %w, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %w, align 8
  br label %8

; <label>:21                                      ; preds = %8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
