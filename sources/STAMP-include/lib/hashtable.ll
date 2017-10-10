; ModuleID = 'hashtable.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtable_iter = type { i64, %struct.list_node* }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.hashtable = type { %struct.list**, i64, i64 (i8*)*, i64 (%struct.pair*, %struct.pair*)*, i64, i64 }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.pair = type { i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"hashtable.c\00", align 1
@__PRETTY_FUNCTION__.hashtable_remove = private unnamed_addr constant [47 x i8] c"bool_t hashtable_remove(hashtable_t *, void *)\00", align 1
@__PRETTY_FUNCTION__.TMhashtable_remove = private unnamed_addr constant [49 x i8] c"bool_t TMhashtable_remove(hashtable_t *, void *)\00", align 1

; Function Attrs: nounwind uwtable
define void @hashtable_iter_reset(%struct.hashtable_iter* %itPtr, %struct.hashtable* %hashtablePtr) #0 {
  %1 = alloca %struct.hashtable_iter*, align 8
  %2 = alloca %struct.hashtable*, align 8
  store %struct.hashtable_iter* %itPtr, %struct.hashtable_iter** %1, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  %3 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %4 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %6 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %5, i32 0, i32 1
  %7 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 0
  %9 = load %struct.list**, %struct.list*** %8, align 8
  %10 = getelementptr inbounds %struct.list*, %struct.list** %9, i64 0
  %11 = load %struct.list*, %struct.list** %10, align 8
  call void @list_iter_reset(%struct.list_node** %6, %struct.list* %11)
  ret void
}

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #1

; Function Attrs: nounwind uwtable
define void @TMhashtable_iter_reset(%struct.hashtable_iter* %itPtr, %struct.hashtable* %hashtablePtr) #0 {
  %1 = alloca %struct.hashtable_iter*, align 8
  %2 = alloca %struct.hashtable*, align 8
  store %struct.hashtable_iter* %itPtr, %struct.hashtable_iter** %1, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  %3 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %4 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %6 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %5, i32 0, i32 1
  %7 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 0
  %9 = load %struct.list**, %struct.list*** %8, align 8
  %10 = getelementptr inbounds %struct.list*, %struct.list** %9, i64 0
  %11 = load %struct.list*, %struct.list** %10, align 8
  call void @TMlist_iter_reset(%struct.list_node** %6, %struct.list* %11)
  ret void
}

declare void @TMlist_iter_reset(%struct.list_node**, %struct.list*) #1

; Function Attrs: nounwind uwtable
define i64 @hashtable_iter_hasNext(%struct.hashtable_iter* %itPtr, %struct.hashtable* %hashtablePtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable_iter*, align 8
  %3 = alloca %struct.hashtable*, align 8
  %bucket = alloca i64, align 8
  %numBucket = alloca i64, align 8
  %buckets = alloca %struct.list**, align 8
  %it = alloca %struct.list_node*, align 8
  %chainPtr = alloca %struct.list*, align 8
  store %struct.hashtable_iter* %itPtr, %struct.hashtable_iter** %2, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %3, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %numBucket, align 8
  %7 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 0
  %9 = load %struct.list**, %struct.list*** %8, align 8
  store %struct.list** %9, %struct.list*** %buckets, align 8
  %10 = load %struct.hashtable_iter*, %struct.hashtable_iter** %2, align 8
  %11 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %10, i32 0, i32 1
  %12 = load %struct.list_node*, %struct.list_node** %11, align 8
  store %struct.list_node* %12, %struct.list_node** %it, align 8
  %13 = load %struct.hashtable_iter*, %struct.hashtable_iter** %2, align 8
  %14 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %bucket, align 8
  br label %16

; <label>:16                                      ; preds = %29, %0
  %17 = load i64, i64* %bucket, align 8
  %18 = load i64, i64* %numBucket, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %35

; <label>:20                                      ; preds = %16
  %21 = load i64, i64* %bucket, align 8
  %22 = load %struct.list**, %struct.list*** %buckets, align 8
  %23 = getelementptr inbounds %struct.list*, %struct.list** %22, i64 %21
  %24 = load %struct.list*, %struct.list** %23, align 8
  store %struct.list* %24, %struct.list** %chainPtr, align 8
  %25 = load %struct.list*, %struct.list** %chainPtr, align 8
  %26 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %25) #5
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %20
  store i64 1, i64* %1, align 8
  br label %36

; <label>:29                                      ; preds = %20
  %30 = load i64, i64* %bucket, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %bucket, align 8
  %32 = load %struct.list**, %struct.list*** %buckets, align 8
  %33 = getelementptr inbounds %struct.list*, %struct.list** %32, i64 %31
  %34 = load %struct.list*, %struct.list** %33, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %34)
  br label %16

; <label>:35                                      ; preds = %16
  store i64 0, i64* %1, align 8
  br label %36

; <label>:36                                      ; preds = %35, %28
  %37 = load i64, i64* %1, align 8
  ret i64 %37
}

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind uwtable
define i64 @TMhashtable_iter_hasNext(%struct.hashtable_iter* %itPtr, %struct.hashtable* %hashtablePtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable_iter*, align 8
  %3 = alloca %struct.hashtable*, align 8
  %bucket = alloca i64, align 8
  %numBucket = alloca i64, align 8
  %buckets = alloca %struct.list**, align 8
  %it = alloca %struct.list_node*, align 8
  %chainPtr = alloca %struct.list*, align 8
  store %struct.hashtable_iter* %itPtr, %struct.hashtable_iter** %2, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %3, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %numBucket, align 8
  %7 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 0
  %9 = load %struct.list**, %struct.list*** %8, align 8
  store %struct.list** %9, %struct.list*** %buckets, align 8
  %10 = load %struct.hashtable_iter*, %struct.hashtable_iter** %2, align 8
  %11 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %10, i32 0, i32 1
  %12 = load %struct.list_node*, %struct.list_node** %11, align 8
  store %struct.list_node* %12, %struct.list_node** %it, align 8
  %13 = load %struct.hashtable_iter*, %struct.hashtable_iter** %2, align 8
  %14 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %bucket, align 8
  br label %16

; <label>:16                                      ; preds = %29, %0
  %17 = load i64, i64* %bucket, align 8
  %18 = load i64, i64* %numBucket, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %35

; <label>:20                                      ; preds = %16
  %21 = load i64, i64* %bucket, align 8
  %22 = load %struct.list**, %struct.list*** %buckets, align 8
  %23 = getelementptr inbounds %struct.list*, %struct.list** %22, i64 %21
  %24 = load %struct.list*, %struct.list** %23, align 8
  store %struct.list* %24, %struct.list** %chainPtr, align 8
  %25 = load %struct.list*, %struct.list** %chainPtr, align 8
  %26 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %25) #5
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %20
  store i64 1, i64* %1, align 8
  br label %36

; <label>:29                                      ; preds = %20
  %30 = load i64, i64* %bucket, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %bucket, align 8
  %32 = load %struct.list**, %struct.list*** %buckets, align 8
  %33 = getelementptr inbounds %struct.list*, %struct.list** %32, i64 %31
  %34 = load %struct.list*, %struct.list** %33, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %34)
  br label %16

; <label>:35                                      ; preds = %16
  store i64 0, i64* %1, align 8
  br label %36

; <label>:36                                      ; preds = %35, %28
  %37 = load i64, i64* %1, align 8
  ret i64 %37
}

; Function Attrs: nounwind readonly
declare i64 @TMlist_iter_hasNext(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind uwtable
define i8* @hashtable_iter_next(%struct.hashtable_iter* %itPtr, %struct.hashtable* %hashtablePtr) #0 {
  %1 = alloca %struct.hashtable_iter*, align 8
  %2 = alloca %struct.hashtable*, align 8
  %bucket = alloca i64, align 8
  %numBucket = alloca i64, align 8
  %buckets = alloca %struct.list**, align 8
  %it = alloca %struct.list_node*, align 8
  %dataPtr = alloca i8*, align 8
  %chainPtr = alloca %struct.list*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  store %struct.hashtable_iter* %itPtr, %struct.hashtable_iter** %1, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  %3 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %numBucket, align 8
  %6 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %7 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 0
  %8 = load %struct.list**, %struct.list*** %7, align 8
  store %struct.list** %8, %struct.list*** %buckets, align 8
  %9 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %10 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %9, i32 0, i32 1
  %11 = load %struct.list_node*, %struct.list_node** %10, align 8
  store %struct.list_node* %11, %struct.list_node** %it, align 8
  store i8* null, i8** %dataPtr, align 8
  %12 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %13 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %bucket, align 8
  br label %15

; <label>:15                                      ; preds = %36, %0
  %16 = load i64, i64* %bucket, align 8
  %17 = load i64, i64* %numBucket, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %42

; <label>:19                                      ; preds = %15
  %20 = load i64, i64* %bucket, align 8
  %21 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %22 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %21, i32 0, i32 0
  %23 = load %struct.list**, %struct.list*** %22, align 8
  %24 = getelementptr inbounds %struct.list*, %struct.list** %23, i64 %20
  %25 = load %struct.list*, %struct.list** %24, align 8
  store %struct.list* %25, %struct.list** %chainPtr, align 8
  %26 = load %struct.list*, %struct.list** %chainPtr, align 8
  %27 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %26) #5
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %19
  %30 = load %struct.list*, %struct.list** %chainPtr, align 8
  %31 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %30)
  %32 = bitcast i8* %31 to %struct.pair*
  store %struct.pair* %32, %struct.pair** %pairPtr, align 8
  %33 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %34 = getelementptr inbounds %struct.pair, %struct.pair* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %dataPtr, align 8
  br label %42

; <label>:36                                      ; preds = %19
  %37 = load i64, i64* %bucket, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %bucket, align 8
  %39 = load %struct.list**, %struct.list*** %buckets, align 8
  %40 = getelementptr inbounds %struct.list*, %struct.list** %39, i64 %38
  %41 = load %struct.list*, %struct.list** %40, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %41)
  br label %15

; <label>:42                                      ; preds = %29, %15
  %43 = load i64, i64* %bucket, align 8
  %44 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %45 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.list_node*, %struct.list_node** %it, align 8
  %47 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %48 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %47, i32 0, i32 1
  store %struct.list_node* %46, %struct.list_node** %48, align 8
  %49 = load i8*, i8** %dataPtr, align 8
  ret i8* %49
}

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #1

; Function Attrs: nounwind uwtable
define i8* @TMhashtable_iter_next(%struct.hashtable_iter* %itPtr, %struct.hashtable* %hashtablePtr) #0 {
  %1 = alloca %struct.hashtable_iter*, align 8
  %2 = alloca %struct.hashtable*, align 8
  %bucket = alloca i64, align 8
  %numBucket = alloca i64, align 8
  %buckets = alloca %struct.list**, align 8
  %it = alloca %struct.list_node*, align 8
  %dataPtr = alloca i8*, align 8
  %chainPtr = alloca %struct.list*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  store %struct.hashtable_iter* %itPtr, %struct.hashtable_iter** %1, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  %3 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %numBucket, align 8
  %6 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %7 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %6, i32 0, i32 0
  %8 = load %struct.list**, %struct.list*** %7, align 8
  store %struct.list** %8, %struct.list*** %buckets, align 8
  %9 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %10 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %9, i32 0, i32 1
  %11 = load %struct.list_node*, %struct.list_node** %10, align 8
  store %struct.list_node* %11, %struct.list_node** %it, align 8
  store i8* null, i8** %dataPtr, align 8
  %12 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %13 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %bucket, align 8
  br label %15

; <label>:15                                      ; preds = %36, %0
  %16 = load i64, i64* %bucket, align 8
  %17 = load i64, i64* %numBucket, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %42

; <label>:19                                      ; preds = %15
  %20 = load i64, i64* %bucket, align 8
  %21 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %22 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %21, i32 0, i32 0
  %23 = load %struct.list**, %struct.list*** %22, align 8
  %24 = getelementptr inbounds %struct.list*, %struct.list** %23, i64 %20
  %25 = load %struct.list*, %struct.list** %24, align 8
  store %struct.list* %25, %struct.list** %chainPtr, align 8
  %26 = load %struct.list*, %struct.list** %chainPtr, align 8
  %27 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %26) #5
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %19
  %30 = load %struct.list*, %struct.list** %chainPtr, align 8
  %31 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %30)
  %32 = bitcast i8* %31 to %struct.pair*
  store %struct.pair* %32, %struct.pair** %pairPtr, align 8
  %33 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %34 = getelementptr inbounds %struct.pair, %struct.pair* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %dataPtr, align 8
  br label %42

; <label>:36                                      ; preds = %19
  %37 = load i64, i64* %bucket, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %bucket, align 8
  %39 = load %struct.list**, %struct.list*** %buckets, align 8
  %40 = getelementptr inbounds %struct.list*, %struct.list** %39, i64 %38
  %41 = load %struct.list*, %struct.list** %40, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %41)
  br label %15

; <label>:42                                      ; preds = %29, %15
  %43 = load i64, i64* %bucket, align 8
  %44 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %45 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.list_node*, %struct.list_node** %it, align 8
  %47 = load %struct.hashtable_iter*, %struct.hashtable_iter** %1, align 8
  %48 = getelementptr inbounds %struct.hashtable_iter, %struct.hashtable_iter* %47, i32 0, i32 1
  store %struct.list_node* %46, %struct.list_node** %48, align 8
  %49 = load i8*, i8** %dataPtr, align 8
  ret i8* %49
}

declare i8* @TMlist_iter_next(%struct.list_node**, %struct.list*) #1

; Function Attrs: nounwind uwtable
define %struct.hashtable* @hashtable_alloc(i64 %initNumBucket, i64 (i8*)* %hash, i64 (%struct.pair*, %struct.pair*)* %comparePairs, i64 %resizeRatio, i64 %growthFactor) #0 {
  %1 = alloca %struct.hashtable*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64 (i8*)*, align 8
  %4 = alloca i64 (%struct.pair*, %struct.pair*)*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %hashtablePtr = alloca %struct.hashtable*, align 8
  store i64 %initNumBucket, i64* %2, align 8
  store i64 (i8*)* %hash, i64 (i8*)** %3, align 8
  store i64 (%struct.pair*, %struct.pair*)* %comparePairs, i64 (%struct.pair*, %struct.pair*)** %4, align 8
  store i64 %resizeRatio, i64* %5, align 8
  store i64 %growthFactor, i64* %6, align 8
  %7 = call noalias i8* @malloc(i64 48) #6
  %8 = bitcast i8* %7 to %struct.hashtable*
  store %struct.hashtable* %8, %struct.hashtable** %hashtablePtr, align 8
  %9 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %10 = icmp eq %struct.hashtable* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store %struct.hashtable* null, %struct.hashtable** %1, align 8
  br label %54

; <label>:12                                      ; preds = %0
  %13 = load i64, i64* %2, align 8
  %14 = load i64 (%struct.pair*, %struct.pair*)*, i64 (%struct.pair*, %struct.pair*)** %4, align 8
  %15 = call %struct.list** @allocBuckets(i64 %13, i64 (%struct.pair*, %struct.pair*)* %14)
  %16 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %17 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 0
  store %struct.list** %15, %struct.list*** %17, align 8
  %18 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %19 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 0
  %20 = load %struct.list**, %struct.list*** %19, align 8
  %21 = icmp eq %struct.list** %20, null
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %12
  %23 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %24 = bitcast %struct.hashtable* %23 to i8*
  call void @free(i8* %24) #6
  store %struct.hashtable* null, %struct.hashtable** %1, align 8
  br label %54

; <label>:25                                      ; preds = %12
  %26 = load i64, i64* %2, align 8
  %27 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %28 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %30 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %31 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %30, i32 0, i32 2
  store i64 (i8*)* %29, i64 (i8*)** %31, align 8
  %32 = load i64 (%struct.pair*, %struct.pair*)*, i64 (%struct.pair*, %struct.pair*)** %4, align 8
  %33 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %34 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %33, i32 0, i32 3
  store i64 (%struct.pair*, %struct.pair*)* %32, i64 (%struct.pair*, %struct.pair*)** %34, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %25
  br label %40

; <label>:38                                      ; preds = %25
  %39 = load i64, i64* %5, align 8
  br label %40

; <label>:40                                      ; preds = %38, %37
  %41 = phi i64 [ 3, %37 ], [ %39, %38 ]
  %42 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %43 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %40
  br label %49

; <label>:47                                      ; preds = %40
  %48 = load i64, i64* %6, align 8
  br label %49

; <label>:49                                      ; preds = %47, %46
  %50 = phi i64 [ 3, %46 ], [ %48, %47 ]
  %51 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %52 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %51, i32 0, i32 5
  store i64 %50, i64* %52, align 8
  %53 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  store %struct.hashtable* %53, %struct.hashtable** %1, align 8
  br label %54

; <label>:54                                      ; preds = %49, %22, %11
  %55 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  ret %struct.hashtable* %55
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct.list** @allocBuckets(i64 %numBucket, i64 (%struct.pair*, %struct.pair*)* %comparePairs) #0 {
  %1 = alloca %struct.list**, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64 (%struct.pair*, %struct.pair*)*, align 8
  %i = alloca i64, align 8
  %buckets = alloca %struct.list**, align 8
  %chainPtr = alloca %struct.list*, align 8
  store i64 %numBucket, i64* %2, align 8
  store i64 (%struct.pair*, %struct.pair*)* %comparePairs, i64 (%struct.pair*, %struct.pair*)** %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = add nsw i64 %4, 1
  %6 = mul i64 %5, 8
  %7 = call noalias i8* @malloc(i64 %6) #6
  %8 = bitcast i8* %7 to %struct.list**
  store %struct.list** %8, %struct.list*** %buckets, align 8
  %9 = load %struct.list**, %struct.list*** %buckets, align 8
  %10 = icmp eq %struct.list** %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store %struct.list** null, %struct.list*** %1, align 8
  br label %45

; <label>:12                                      ; preds = %0
  store i64 0, i64* %i, align 8
  br label %13

; <label>:13                                      ; preds = %40, %12
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %2, align 8
  %16 = add nsw i64 %15, 1
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %43

; <label>:18                                      ; preds = %13
  %19 = load i64 (%struct.pair*, %struct.pair*)*, i64 (%struct.pair*, %struct.pair*)** %3, align 8
  %20 = bitcast i64 (%struct.pair*, %struct.pair*)* %19 to i64 (i8*, i8*)*
  %21 = call %struct.list* @list_alloc(i64 (i8*, i8*)* %20)
  store %struct.list* %21, %struct.list** %chainPtr, align 8
  %22 = load %struct.list*, %struct.list** %chainPtr, align 8
  %23 = icmp eq %struct.list* %22, null
  br i1 %23, label %24, label %35

; <label>:24                                      ; preds = %18
  br label %25

; <label>:25                                      ; preds = %29, %24
  %26 = load i64, i64* %i, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %i, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %34

; <label>:29                                      ; preds = %25
  %30 = load i64, i64* %i, align 8
  %31 = load %struct.list**, %struct.list*** %buckets, align 8
  %32 = getelementptr inbounds %struct.list*, %struct.list** %31, i64 %30
  %33 = load %struct.list*, %struct.list** %32, align 8
  call void @list_free(%struct.list* %33)
  br label %25

; <label>:34                                      ; preds = %25
  store %struct.list** null, %struct.list*** %1, align 8
  br label %45

; <label>:35                                      ; preds = %18
  %36 = load %struct.list*, %struct.list** %chainPtr, align 8
  %37 = load i64, i64* %i, align 8
  %38 = load %struct.list**, %struct.list*** %buckets, align 8
  %39 = getelementptr inbounds %struct.list*, %struct.list** %38, i64 %37
  store %struct.list* %36, %struct.list** %39, align 8
  br label %40

; <label>:40                                      ; preds = %35
  %41 = load i64, i64* %i, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %i, align 8
  br label %13

; <label>:43                                      ; preds = %13
  %44 = load %struct.list**, %struct.list*** %buckets, align 8
  store %struct.list** %44, %struct.list*** %1, align 8
  br label %45

; <label>:45                                      ; preds = %43, %34, %11
  %46 = load %struct.list**, %struct.list*** %1, align 8
  ret %struct.list** %46
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define %struct.hashtable* @TMhashtable_alloc(i64 %initNumBucket, i64 (i8*)* %hash, i64 (%struct.pair*, %struct.pair*)* %comparePairs, i64 %resizeRatio, i64 %growthFactor) #0 {
  %1 = alloca %struct.hashtable*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64 (i8*)*, align 8
  %4 = alloca i64 (%struct.pair*, %struct.pair*)*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %hashtablePtr = alloca %struct.hashtable*, align 8
  store i64 %initNumBucket, i64* %2, align 8
  store i64 (i8*)* %hash, i64 (i8*)** %3, align 8
  store i64 (%struct.pair*, %struct.pair*)* %comparePairs, i64 (%struct.pair*, %struct.pair*)** %4, align 8
  store i64 %resizeRatio, i64* %5, align 8
  store i64 %growthFactor, i64* %6, align 8
  %7 = call noalias i8* @malloc(i64 48) #6
  %8 = bitcast i8* %7 to %struct.hashtable*
  store %struct.hashtable* %8, %struct.hashtable** %hashtablePtr, align 8
  %9 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %10 = icmp eq %struct.hashtable* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store %struct.hashtable* null, %struct.hashtable** %1, align 8
  br label %54

; <label>:12                                      ; preds = %0
  %13 = load i64, i64* %2, align 8
  %14 = load i64 (%struct.pair*, %struct.pair*)*, i64 (%struct.pair*, %struct.pair*)** %4, align 8
  %15 = call %struct.list** @TMallocBuckets(i64 %13, i64 (%struct.pair*, %struct.pair*)* %14)
  %16 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %17 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 0
  store %struct.list** %15, %struct.list*** %17, align 8
  %18 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %19 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 0
  %20 = load %struct.list**, %struct.list*** %19, align 8
  %21 = icmp eq %struct.list** %20, null
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %12
  %23 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %24 = bitcast %struct.hashtable* %23 to i8*
  call void @free(i8* %24) #6
  store %struct.hashtable* null, %struct.hashtable** %1, align 8
  br label %54

; <label>:25                                      ; preds = %12
  %26 = load i64, i64* %2, align 8
  %27 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %28 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %30 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %31 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %30, i32 0, i32 2
  store i64 (i8*)* %29, i64 (i8*)** %31, align 8
  %32 = load i64 (%struct.pair*, %struct.pair*)*, i64 (%struct.pair*, %struct.pair*)** %4, align 8
  %33 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %34 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %33, i32 0, i32 3
  store i64 (%struct.pair*, %struct.pair*)* %32, i64 (%struct.pair*, %struct.pair*)** %34, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %25
  br label %40

; <label>:38                                      ; preds = %25
  %39 = load i64, i64* %5, align 8
  br label %40

; <label>:40                                      ; preds = %38, %37
  %41 = phi i64 [ 3, %37 ], [ %39, %38 ]
  %42 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %43 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %40
  br label %49

; <label>:47                                      ; preds = %40
  %48 = load i64, i64* %6, align 8
  br label %49

; <label>:49                                      ; preds = %47, %46
  %50 = phi i64 [ 3, %46 ], [ %48, %47 ]
  %51 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  %52 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %51, i32 0, i32 5
  store i64 %50, i64* %52, align 8
  %53 = load %struct.hashtable*, %struct.hashtable** %hashtablePtr, align 8
  store %struct.hashtable* %53, %struct.hashtable** %1, align 8
  br label %54

; <label>:54                                      ; preds = %49, %22, %11
  %55 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  ret %struct.hashtable* %55
}

; Function Attrs: nounwind uwtable
define internal %struct.list** @TMallocBuckets(i64 %numBucket, i64 (%struct.pair*, %struct.pair*)* %comparePairs) #0 {
  %1 = alloca %struct.list**, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64 (%struct.pair*, %struct.pair*)*, align 8
  %i = alloca i64, align 8
  %buckets = alloca %struct.list**, align 8
  %chainPtr = alloca %struct.list*, align 8
  store i64 %numBucket, i64* %2, align 8
  store i64 (%struct.pair*, %struct.pair*)* %comparePairs, i64 (%struct.pair*, %struct.pair*)** %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = add nsw i64 %4, 1
  %6 = mul i64 %5, 8
  %7 = call noalias i8* @malloc(i64 %6) #6
  %8 = bitcast i8* %7 to %struct.list**
  store %struct.list** %8, %struct.list*** %buckets, align 8
  %9 = load %struct.list**, %struct.list*** %buckets, align 8
  %10 = icmp eq %struct.list** %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  store %struct.list** null, %struct.list*** %1, align 8
  br label %45

; <label>:12                                      ; preds = %0
  store i64 0, i64* %i, align 8
  br label %13

; <label>:13                                      ; preds = %40, %12
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %2, align 8
  %16 = add nsw i64 %15, 1
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %43

; <label>:18                                      ; preds = %13
  %19 = load i64 (%struct.pair*, %struct.pair*)*, i64 (%struct.pair*, %struct.pair*)** %3, align 8
  %20 = bitcast i64 (%struct.pair*, %struct.pair*)* %19 to i64 (i8*, i8*)*
  %21 = call %struct.list* @TMlist_alloc(i64 (i8*, i8*)* %20)
  store %struct.list* %21, %struct.list** %chainPtr, align 8
  %22 = load %struct.list*, %struct.list** %chainPtr, align 8
  %23 = icmp eq %struct.list* %22, null
  br i1 %23, label %24, label %35

; <label>:24                                      ; preds = %18
  br label %25

; <label>:25                                      ; preds = %29, %24
  %26 = load i64, i64* %i, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %i, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %34

; <label>:29                                      ; preds = %25
  %30 = load i64, i64* %i, align 8
  %31 = load %struct.list**, %struct.list*** %buckets, align 8
  %32 = getelementptr inbounds %struct.list*, %struct.list** %31, i64 %30
  %33 = load %struct.list*, %struct.list** %32, align 8
  call void @TMlist_free(%struct.list* %33)
  br label %25

; <label>:34                                      ; preds = %25
  store %struct.list** null, %struct.list*** %1, align 8
  br label %45

; <label>:35                                      ; preds = %18
  %36 = load %struct.list*, %struct.list** %chainPtr, align 8
  %37 = load i64, i64* %i, align 8
  %38 = load %struct.list**, %struct.list*** %buckets, align 8
  %39 = getelementptr inbounds %struct.list*, %struct.list** %38, i64 %37
  store %struct.list* %36, %struct.list** %39, align 8
  br label %40

; <label>:40                                      ; preds = %35
  %41 = load i64, i64* %i, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %i, align 8
  br label %13

; <label>:43                                      ; preds = %13
  %44 = load %struct.list**, %struct.list*** %buckets, align 8
  store %struct.list** %44, %struct.list*** %1, align 8
  br label %45

; <label>:45                                      ; preds = %43, %34, %11
  %46 = load %struct.list**, %struct.list*** %1, align 8
  ret %struct.list** %46
}

; Function Attrs: nounwind uwtable
define void @hashtable_free(%struct.hashtable* %hashtablePtr) #0 {
  %1 = alloca %struct.hashtable*, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %1, align 8
  %2 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %3 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %4 = load %struct.list**, %struct.list*** %3, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  call void @freeBuckets(%struct.list** %4, i64 %7)
  %8 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %9 = bitcast %struct.hashtable* %8 to i8*
  call void @free(i8* %9) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeBuckets(%struct.list** %buckets, i64 %numBucket) #0 {
  %1 = alloca %struct.list**, align 8
  %2 = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.list** %buckets, %struct.list*** %1, align 8
  store i64 %numBucket, i64* %2, align 8
  store i64 0, i64* %i, align 8
  br label %3

; <label>:3                                       ; preds = %12, %0
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %15

; <label>:7                                       ; preds = %3
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.list**, %struct.list*** %1, align 8
  %10 = getelementptr inbounds %struct.list*, %struct.list** %9, i64 %8
  %11 = load %struct.list*, %struct.list** %10, align 8
  call void @list_free(%struct.list* %11)
  br label %12

; <label>:12                                      ; preds = %7
  %13 = load i64, i64* %i, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %i, align 8
  br label %3

; <label>:15                                      ; preds = %3
  %16 = load %struct.list**, %struct.list*** %1, align 8
  %17 = bitcast %struct.list** %16 to i8*
  call void @free(i8* %17) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @TMhashtable_free(%struct.hashtable* %hashtablePtr) #0 {
  %1 = alloca %struct.hashtable*, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %1, align 8
  %2 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %3 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %2, i32 0, i32 0
  %4 = load %struct.list**, %struct.list*** %3, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  call void @TMfreeBuckets(%struct.list** %4, i64 %7)
  %8 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %9 = bitcast %struct.hashtable* %8 to i8*
  call void @free(i8* %9) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMfreeBuckets(%struct.list** %buckets, i64 %numBucket) #0 {
  %1 = alloca %struct.list**, align 8
  %2 = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.list** %buckets, %struct.list*** %1, align 8
  store i64 %numBucket, i64* %2, align 8
  store i64 0, i64* %i, align 8
  br label %3

; <label>:3                                       ; preds = %12, %0
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %15

; <label>:7                                       ; preds = %3
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.list**, %struct.list*** %1, align 8
  %10 = getelementptr inbounds %struct.list*, %struct.list** %9, i64 %8
  %11 = load %struct.list*, %struct.list** %10, align 8
  call void @TMlist_free(%struct.list* %11)
  br label %12

; <label>:12                                      ; preds = %7
  %13 = load i64, i64* %i, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %i, align 8
  br label %3

; <label>:15                                      ; preds = %3
  %16 = load %struct.list**, %struct.list*** %1, align 8
  %17 = bitcast %struct.list** %16 to i8*
  call void @free(i8* %17) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @hashtable_isEmpty(%struct.hashtable* %hashtablePtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable*, align 8
  %i = alloca i64, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i64 0, i64* %i, align 8
  br label %3

; <label>:3                                       ; preds = %20, %0
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %4, %7
  br i1 %8, label %9, label %23

; <label>:9                                       ; preds = %3
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %12 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 0
  %13 = load %struct.list**, %struct.list*** %12, align 8
  %14 = getelementptr inbounds %struct.list*, %struct.list** %13, i64 %10
  %15 = load %struct.list*, %struct.list** %14, align 8
  %16 = call i64 @list_isEmpty(%struct.list* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

; <label>:18                                      ; preds = %9
  store i64 0, i64* %1, align 8
  br label %24

; <label>:19                                      ; preds = %9
  br label %20

; <label>:20                                      ; preds = %19
  %21 = load i64, i64* %i, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %i, align 8
  br label %3

; <label>:23                                      ; preds = %3
  store i64 1, i64* %1, align 8
  br label %24

; <label>:24                                      ; preds = %23, %18
  %25 = load i64, i64* %1, align 8
  ret i64 %25
}

declare i64 @list_isEmpty(%struct.list*) #1

; Function Attrs: nounwind uwtable
define i64 @TMhashtable_isEmpty(%struct.hashtable* %hashtablePtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable*, align 8
  %i = alloca i64, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i64 0, i64* %i, align 8
  br label %3

; <label>:3                                       ; preds = %20, %0
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %4, %7
  br i1 %8, label %9, label %23

; <label>:9                                       ; preds = %3
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %12 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 0
  %13 = load %struct.list**, %struct.list*** %12, align 8
  %14 = getelementptr inbounds %struct.list*, %struct.list** %13, i64 %10
  %15 = load %struct.list*, %struct.list** %14, align 8
  %16 = call i64 @TMlist_isEmpty(%struct.list* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

; <label>:18                                      ; preds = %9
  store i64 0, i64* %1, align 8
  br label %24

; <label>:19                                      ; preds = %9
  br label %20

; <label>:20                                      ; preds = %19
  %21 = load i64, i64* %i, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %i, align 8
  br label %3

; <label>:23                                      ; preds = %3
  store i64 1, i64* %1, align 8
  br label %24

; <label>:24                                      ; preds = %23, %18
  %25 = load i64, i64* %1, align 8
  ret i64 %25
}

declare i64 @TMlist_isEmpty(%struct.list*) #1

; Function Attrs: nounwind uwtable
define i64 @hashtable_getSize(%struct.hashtable* %hashtablePtr) #0 {
  %1 = alloca %struct.hashtable*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %1, align 8
  store i64 0, i64* %size, align 8
  store i64 0, i64* %i, align 8
  br label %2

; <label>:2                                       ; preds = %18, %0
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %3, %6
  br i1 %7, label %8, label %21

; <label>:8                                       ; preds = %2
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %11 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 0
  %12 = load %struct.list**, %struct.list*** %11, align 8
  %13 = getelementptr inbounds %struct.list*, %struct.list** %12, i64 %9
  %14 = load %struct.list*, %struct.list** %13, align 8
  %15 = call i64 @list_getSize(%struct.list* %14)
  %16 = load i64, i64* %size, align 8
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %size, align 8
  br label %18

; <label>:18                                      ; preds = %8
  %19 = load i64, i64* %i, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %i, align 8
  br label %2

; <label>:21                                      ; preds = %2
  %22 = load i64, i64* %size, align 8
  ret i64 %22
}

declare i64 @list_getSize(%struct.list*) #1

; Function Attrs: nounwind uwtable
define i64 @TMhashtable_getSize(%struct.hashtable* %hashtablePtr) #0 {
  %1 = alloca %struct.hashtable*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %1, align 8
  store i64 0, i64* %size, align 8
  store i64 0, i64* %i, align 8
  br label %2

; <label>:2                                       ; preds = %18, %0
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %3, %6
  br i1 %7, label %8, label %21

; <label>:8                                       ; preds = %2
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %11 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 0
  %12 = load %struct.list**, %struct.list*** %11, align 8
  %13 = getelementptr inbounds %struct.list*, %struct.list** %12, i64 %9
  %14 = load %struct.list*, %struct.list** %13, align 8
  %15 = call i64 @TMlist_getSize(%struct.list* %14)
  %16 = load i64, i64* %size, align 8
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %size, align 8
  br label %18

; <label>:18                                      ; preds = %8
  %19 = load i64, i64* %i, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %i, align 8
  br label %2

; <label>:21                                      ; preds = %2
  %22 = load i64, i64* %size, align 8
  ret i64 %22
}

declare i64 @TMlist_getSize(%struct.list*) #1

; Function Attrs: nounwind uwtable
define i64 @hashtable_containsKey(%struct.hashtable* %hashtablePtr, i8* %keyPtr) #0 {
  %1 = alloca %struct.hashtable*, align 8
  %2 = alloca i8*, align 8
  %i = alloca i64, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %findPair = alloca %struct.pair, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %1, align 8
  store i8* %keyPtr, i8** %2, align 8
  %3 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 2
  %5 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 %5(i8* %6)
  %8 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %9 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = urem i64 %7, %10
  store i64 %11, i64* %i, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds %struct.pair, %struct.pair* %findPair, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %16 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %15, i32 0, i32 0
  %17 = load %struct.list**, %struct.list*** %16, align 8
  %18 = getelementptr inbounds %struct.list*, %struct.list** %17, i64 %14
  %19 = load %struct.list*, %struct.list** %18, align 8
  %20 = bitcast %struct.pair* %findPair to i8*
  %21 = call i8* @list_find(%struct.list* %19, i8* %20) #5
  %22 = bitcast i8* %21 to %struct.pair*
  store %struct.pair* %22, %struct.pair** %pairPtr, align 8
  %23 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %24 = icmp ne %struct.pair* %23, null
  %25 = select i1 %24, i32 1, i32 0
  %26 = sext i32 %25 to i64
  ret i64 %26
}

; Function Attrs: nounwind readonly
declare i8* @list_find(%struct.list*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @TMhashtable_containsKey(%struct.hashtable* %hashtablePtr, i8* %keyPtr) #0 {
  %1 = alloca %struct.hashtable*, align 8
  %2 = alloca i8*, align 8
  %i = alloca i64, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %findPair = alloca %struct.pair, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %1, align 8
  store i8* %keyPtr, i8** %2, align 8
  %3 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %4 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %3, i32 0, i32 2
  %5 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 %5(i8* %6)
  %8 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %9 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = urem i64 %7, %10
  store i64 %11, i64* %i, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds %struct.pair, %struct.pair* %findPair, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.hashtable*, %struct.hashtable** %1, align 8
  %16 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %15, i32 0, i32 0
  %17 = load %struct.list**, %struct.list*** %16, align 8
  %18 = getelementptr inbounds %struct.list*, %struct.list** %17, i64 %14
  %19 = load %struct.list*, %struct.list** %18, align 8
  %20 = bitcast %struct.pair* %findPair to i8*
  %21 = call i8* @TMlist_find(%struct.list* %19, i8* %20)
  %22 = bitcast i8* %21 to %struct.pair*
  store %struct.pair* %22, %struct.pair** %pairPtr, align 8
  %23 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %24 = icmp ne %struct.pair* %23, null
  %25 = select i1 %24, i32 1, i32 0
  %26 = sext i32 %25 to i64
  ret i64 %26
}

declare i8* @TMlist_find(%struct.list*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @hashtable_find(%struct.hashtable* %hashtablePtr, i8* %keyPtr) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca i8*, align 8
  %i = alloca i64, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %findPair = alloca %struct.pair, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i8* %keyPtr, i8** %3, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 2
  %6 = load i64 (i8*)*, i64 (i8*)** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 %6(i8* %7)
  %9 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %10 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = urem i64 %8, %11
  store i64 %12, i64* %i, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds %struct.pair, %struct.pair* %findPair, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i64, i64* %i, align 8
  %16 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %17 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 0
  %18 = load %struct.list**, %struct.list*** %17, align 8
  %19 = getelementptr inbounds %struct.list*, %struct.list** %18, i64 %15
  %20 = load %struct.list*, %struct.list** %19, align 8
  %21 = bitcast %struct.pair* %findPair to i8*
  %22 = call i8* @list_find(%struct.list* %20, i8* %21) #5
  %23 = bitcast i8* %22 to %struct.pair*
  store %struct.pair* %23, %struct.pair** %pairPtr, align 8
  %24 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %25 = icmp eq %struct.pair* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %0
  store i8* null, i8** %1, align 8
  br label %31

; <label>:27                                      ; preds = %0
  %28 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %29 = getelementptr inbounds %struct.pair, %struct.pair* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %1, align 8
  br label %31

; <label>:31                                      ; preds = %27, %26
  %32 = load i8*, i8** %1, align 8
  ret i8* %32
}

; Function Attrs: nounwind uwtable
define i8* @TMhashtable_find(%struct.hashtable* %hashtablePtr, i8* %keyPtr) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca i8*, align 8
  %i = alloca i64, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %findPair = alloca %struct.pair, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i8* %keyPtr, i8** %3, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 2
  %6 = load i64 (i8*)*, i64 (i8*)** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 %6(i8* %7)
  %9 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %10 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = urem i64 %8, %11
  store i64 %12, i64* %i, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds %struct.pair, %struct.pair* %findPair, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i64, i64* %i, align 8
  %16 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %17 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 0
  %18 = load %struct.list**, %struct.list*** %17, align 8
  %19 = getelementptr inbounds %struct.list*, %struct.list** %18, i64 %15
  %20 = load %struct.list*, %struct.list** %19, align 8
  %21 = bitcast %struct.pair* %findPair to i8*
  %22 = call i8* @TMlist_find(%struct.list* %20, i8* %21)
  %23 = bitcast i8* %22 to %struct.pair*
  store %struct.pair* %23, %struct.pair** %pairPtr, align 8
  %24 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %25 = icmp eq %struct.pair* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %0
  store i8* null, i8** %1, align 8
  br label %31

; <label>:27                                      ; preds = %0
  %28 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %29 = getelementptr inbounds %struct.pair, %struct.pair* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %1, align 8
  br label %31

; <label>:31                                      ; preds = %27, %26
  %32 = load i8*, i8** %1, align 8
  ret i8* %32
}

; Function Attrs: nounwind uwtable
define i64 @hashtable_insert(%struct.hashtable* %hashtablePtr, i8* %keyPtr, i8* %dataPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %numBucket = alloca i64, align 8
  %i = alloca i64, align 8
  %findPair = alloca %struct.pair, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %insertPtr = alloca %struct.pair*, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i8* %keyPtr, i8** %3, align 8
  store i8* %dataPtr, i8** %4, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %numBucket, align 8
  %8 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %9 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 2
  %10 = load i64 (i8*)*, i64 (i8*)** %9, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 %10(i8* %11)
  %13 = load i64, i64* %numBucket, align 8
  %14 = urem i64 %12, %13
  store i64 %14, i64* %i, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds %struct.pair, %struct.pair* %findPair, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %19 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 0
  %20 = load %struct.list**, %struct.list*** %19, align 8
  %21 = getelementptr inbounds %struct.list*, %struct.list** %20, i64 %17
  %22 = load %struct.list*, %struct.list** %21, align 8
  %23 = bitcast %struct.pair* %findPair to i8*
  %24 = call i8* @list_find(%struct.list* %22, i8* %23) #5
  %25 = bitcast i8* %24 to %struct.pair*
  store %struct.pair* %25, %struct.pair** %pairPtr, align 8
  %26 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %27 = icmp ne %struct.pair* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %50

; <label>:29                                      ; preds = %0
  %30 = load i8*, i8** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call %struct.pair* @pair_alloc(i8* %30, i8* %31)
  store %struct.pair* %32, %struct.pair** %insertPtr, align 8
  %33 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %34 = icmp eq %struct.pair* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %29
  store i64 0, i64* %1, align 8
  br label %50

; <label>:36                                      ; preds = %29
  %37 = load i64, i64* %i, align 8
  %38 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %39 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %38, i32 0, i32 0
  %40 = load %struct.list**, %struct.list*** %39, align 8
  %41 = getelementptr inbounds %struct.list*, %struct.list** %40, i64 %37
  %42 = load %struct.list*, %struct.list** %41, align 8
  %43 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %44 = bitcast %struct.pair* %43 to i8*
  %45 = call i64 @list_insert(%struct.list* %42, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

; <label>:47                                      ; preds = %36
  %48 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  call void @pair_free(%struct.pair* %48)
  store i64 0, i64* %1, align 8
  br label %50

; <label>:49                                      ; preds = %36
  store i64 1, i64* %1, align 8
  br label %50

; <label>:50                                      ; preds = %49, %47, %35, %28
  %51 = load i64, i64* %1, align 8
  ret i64 %51
}

declare %struct.pair* @pair_alloc(i8*, i8*) #1

declare i64 @list_insert(%struct.list*, i8*) #1

declare void @pair_free(%struct.pair*) #1

; Function Attrs: nounwind uwtable
define i64 @TMhashtable_insert(%struct.hashtable* %hashtablePtr, i8* %keyPtr, i8* %dataPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %numBucket = alloca i64, align 8
  %i = alloca i64, align 8
  %findPair = alloca %struct.pair, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %insertPtr = alloca %struct.pair*, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i8* %keyPtr, i8** %3, align 8
  store i8* %dataPtr, i8** %4, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %6 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %numBucket, align 8
  %8 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %9 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %8, i32 0, i32 2
  %10 = load i64 (i8*)*, i64 (i8*)** %9, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 %10(i8* %11)
  %13 = load i64, i64* %numBucket, align 8
  %14 = urem i64 %12, %13
  store i64 %14, i64* %i, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds %struct.pair, %struct.pair* %findPair, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %19 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 0
  %20 = load %struct.list**, %struct.list*** %19, align 8
  %21 = getelementptr inbounds %struct.list*, %struct.list** %20, i64 %17
  %22 = load %struct.list*, %struct.list** %21, align 8
  %23 = bitcast %struct.pair* %findPair to i8*
  %24 = call i8* @TMlist_find(%struct.list* %22, i8* %23)
  %25 = bitcast i8* %24 to %struct.pair*
  store %struct.pair* %25, %struct.pair** %pairPtr, align 8
  %26 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %27 = icmp ne %struct.pair* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %50

; <label>:29                                      ; preds = %0
  %30 = load i8*, i8** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call %struct.pair* @TMpair_alloc(i8* %30, i8* %31)
  store %struct.pair* %32, %struct.pair** %insertPtr, align 8
  %33 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %34 = icmp eq %struct.pair* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %29
  store i64 0, i64* %1, align 8
  br label %50

; <label>:36                                      ; preds = %29
  %37 = load i64, i64* %i, align 8
  %38 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %39 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %38, i32 0, i32 0
  %40 = load %struct.list**, %struct.list*** %39, align 8
  %41 = getelementptr inbounds %struct.list*, %struct.list** %40, i64 %37
  %42 = load %struct.list*, %struct.list** %41, align 8
  %43 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  %44 = bitcast %struct.pair* %43 to i8*
  %45 = call i64 @TMlist_insert(%struct.list* %42, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

; <label>:47                                      ; preds = %36
  %48 = load %struct.pair*, %struct.pair** %insertPtr, align 8
  call void @TMpair_free(%struct.pair* %48)
  store i64 0, i64* %1, align 8
  br label %50

; <label>:49                                      ; preds = %36
  store i64 1, i64* %1, align 8
  br label %50

; <label>:50                                      ; preds = %49, %47, %35, %28
  %51 = load i64, i64* %1, align 8
  ret i64 %51
}

declare %struct.pair* @TMpair_alloc(i8*, i8*) #1

declare i64 @TMlist_insert(%struct.list*, i8*) #1

declare void @TMpair_free(%struct.pair*) #1

; Function Attrs: nounwind uwtable
define i64 @hashtable_remove(%struct.hashtable* %hashtablePtr, i8* %keyPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca i8*, align 8
  %numBucket = alloca i64, align 8
  %i = alloca i64, align 8
  %chainPtr = alloca %struct.list*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %removePair = alloca %struct.pair, align 8
  %status = alloca i64, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i8* %keyPtr, i8** %3, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %numBucket, align 8
  %7 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 2
  %9 = load i64 (i8*)*, i64 (i8*)** %8, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 %9(i8* %10)
  %12 = load i64, i64* %numBucket, align 8
  %13 = urem i64 %11, %12
  store i64 %13, i64* %i, align 8
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %16 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %15, i32 0, i32 0
  %17 = load %struct.list**, %struct.list*** %16, align 8
  %18 = getelementptr inbounds %struct.list*, %struct.list** %17, i64 %14
  %19 = load %struct.list*, %struct.list** %18, align 8
  store %struct.list* %19, %struct.list** %chainPtr, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds %struct.pair, %struct.pair* %removePair, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load %struct.list*, %struct.list** %chainPtr, align 8
  %23 = bitcast %struct.pair* %removePair to i8*
  %24 = call i8* @list_find(%struct.list* %22, i8* %23) #5
  %25 = bitcast i8* %24 to %struct.pair*
  store %struct.pair* %25, %struct.pair** %pairPtr, align 8
  %26 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %27 = icmp eq %struct.pair* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %40

; <label>:29                                      ; preds = %0
  %30 = load %struct.list*, %struct.list** %chainPtr, align 8
  %31 = bitcast %struct.pair* %removePair to i8*
  %32 = call i64 @list_remove(%struct.list* %30, i8* %31)
  store i64 %32, i64* %status, align 8
  %33 = load i64, i64* %status, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %29
  br label %38

; <label>:36                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 778, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.hashtable_remove, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  call void @pair_free(%struct.pair* %39)
  store i64 1, i64* %1, align 8
  br label %40

; <label>:40                                      ; preds = %38, %28
  %41 = load i64, i64* %1, align 8
  ret i64 %41
}

declare i64 @list_remove(%struct.list*, i8*) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define i64 @TMhashtable_remove(%struct.hashtable* %hashtablePtr, i8* %keyPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca i8*, align 8
  %numBucket = alloca i64, align 8
  %i = alloca i64, align 8
  %chainPtr = alloca %struct.list*, align 8
  %pairPtr = alloca %struct.pair*, align 8
  %removePair = alloca %struct.pair, align 8
  %status = alloca i64, align 8
  store %struct.hashtable* %hashtablePtr, %struct.hashtable** %2, align 8
  store i8* %keyPtr, i8** %3, align 8
  %4 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %5 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %numBucket, align 8
  %7 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %8 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %7, i32 0, i32 2
  %9 = load i64 (i8*)*, i64 (i8*)** %8, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 %9(i8* %10)
  %12 = load i64, i64* %numBucket, align 8
  %13 = urem i64 %11, %12
  store i64 %13, i64* %i, align 8
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %16 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %15, i32 0, i32 0
  %17 = load %struct.list**, %struct.list*** %16, align 8
  %18 = getelementptr inbounds %struct.list*, %struct.list** %17, i64 %14
  %19 = load %struct.list*, %struct.list** %18, align 8
  store %struct.list* %19, %struct.list** %chainPtr, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds %struct.pair, %struct.pair* %removePair, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load %struct.list*, %struct.list** %chainPtr, align 8
  %23 = bitcast %struct.pair* %removePair to i8*
  %24 = call i8* @TMlist_find(%struct.list* %22, i8* %23)
  %25 = bitcast i8* %24 to %struct.pair*
  store %struct.pair* %25, %struct.pair** %pairPtr, align 8
  %26 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  %27 = icmp eq %struct.pair* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %40

; <label>:29                                      ; preds = %0
  %30 = load %struct.list*, %struct.list** %chainPtr, align 8
  %31 = bitcast %struct.pair* %removePair to i8*
  %32 = call i64 @TMlist_remove(%struct.list* %30, i8* %31)
  store i64 %32, i64* %status, align 8
  %33 = load i64, i64* %status, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %29
  br label %38

; <label>:36                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 811, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.TMhashtable_remove, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load %struct.pair*, %struct.pair** %pairPtr, align 8
  call void @TMpair_free(%struct.pair* %39)
  store i64 1, i64* %1, align 8
  br label %40

; <label>:40                                      ; preds = %38, %28
  %41 = load i64, i64* %1, align 8
  ret i64 %41
}

declare i64 @TMlist_remove(%struct.list*, i8*) #1

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #1

declare void @list_free(%struct.list*) #1

declare %struct.list* @TMlist_alloc(i64 (i8*, i8*)*) #1

declare void @TMlist_free(%struct.list*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
