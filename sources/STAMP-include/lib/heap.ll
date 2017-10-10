; ModuleID = 'heap.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heap = type { i8**, i64, i64, i64 (i8*, i8*)* }

@.str = private unnamed_addr constant [18 x i8] c"heapPtr->elements\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"heap.c\00", align 1
@__PRETTY_FUNCTION__.heap_alloc = private unnamed_addr constant [63 x i8] c"heap_t *heap_alloc(long, long (*)(const void *, const void *))\00", align 1

; Function Attrs: nounwind uwtable
define %struct.heap* @heap_alloc(i64 %initCapacity, i64 (i8*, i8*)* %compare) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64 (i8*, i8*)*, align 8
  %heapPtr = alloca %struct.heap*, align 8
  %capacity = alloca i64, align 8
  store i64 %initCapacity, i64* %1, align 8
  store i64 (i8*, i8*)* %compare, i64 (i8*, i8*)** %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #3
  %4 = bitcast i8* %3 to %struct.heap*
  store %struct.heap* %4, %struct.heap** %heapPtr, align 8
  %5 = load %struct.heap*, %struct.heap** %heapPtr, align 8
  %6 = icmp ne %struct.heap* %5, null
  br i1 %6, label %7, label %37

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %1, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %7
  %11 = load i64, i64* %1, align 8
  br label %13

; <label>:12                                      ; preds = %7
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = phi i64 [ %11, %10 ], [ 1, %12 ]
  store i64 %14, i64* %capacity, align 8
  %15 = load i64, i64* %capacity, align 8
  %16 = mul i64 %15, 8
  %17 = call noalias i8* @malloc(i64 %16) #3
  %18 = bitcast i8* %17 to i8**
  %19 = load %struct.heap*, %struct.heap** %heapPtr, align 8
  %20 = getelementptr inbounds %struct.heap, %struct.heap* %19, i32 0, i32 0
  store i8** %18, i8*** %20, align 8
  %21 = load %struct.heap*, %struct.heap** %heapPtr, align 8
  %22 = getelementptr inbounds %struct.heap, %struct.heap* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %13
  br label %28

; <label>:26                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 118, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.heap_alloc, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %28

; <label>:28                                      ; preds = %27, %25
  %29 = load %struct.heap*, %struct.heap** %heapPtr, align 8
  %30 = getelementptr inbounds %struct.heap, %struct.heap* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* %capacity, align 8
  %32 = load %struct.heap*, %struct.heap** %heapPtr, align 8
  %33 = getelementptr inbounds %struct.heap, %struct.heap* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %2, align 8
  %35 = load %struct.heap*, %struct.heap** %heapPtr, align 8
  %36 = getelementptr inbounds %struct.heap, %struct.heap* %35, i32 0, i32 3
  store i64 (i8*, i8*)* %34, i64 (i8*, i8*)** %36, align 8
  br label %37

; <label>:37                                      ; preds = %28, %0
  %38 = load %struct.heap*, %struct.heap** %heapPtr, align 8
  ret %struct.heap* %38
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @heap_free(%struct.heap* %heapPtr) #0 {
  %1 = alloca %struct.heap*, align 8
  store %struct.heap* %heapPtr, %struct.heap** %1, align 8
  %2 = load %struct.heap*, %struct.heap** %1, align 8
  %3 = getelementptr inbounds %struct.heap, %struct.heap* %2, i32 0, i32 0
  %4 = load i8**, i8*** %3, align 8
  %5 = bitcast i8** %4 to i8*
  call void @free(i8* %5) #3
  %6 = load %struct.heap*, %struct.heap** %1, align 8
  %7 = bitcast %struct.heap* %6 to i8*
  call void @free(i8* %7) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @heap_insert(%struct.heap* %heapPtr, i8* %dataPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.heap*, align 8
  %3 = alloca i8*, align 8
  %size = alloca i64, align 8
  %capacity = alloca i64, align 8
  %newCapacity = alloca i64, align 8
  %newElements = alloca i8**, align 8
  %i = alloca i64, align 8
  %elements = alloca i8**, align 8
  store %struct.heap* %heapPtr, %struct.heap** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %4 = load %struct.heap*, %struct.heap** %2, align 8
  %5 = getelementptr inbounds %struct.heap, %struct.heap* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %size, align 8
  %7 = load %struct.heap*, %struct.heap** %2, align 8
  %8 = getelementptr inbounds %struct.heap, %struct.heap* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %capacity, align 8
  %10 = load i64, i64* %size, align 8
  %11 = add nsw i64 %10, 1
  %12 = load i64, i64* %capacity, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %54

; <label>:14                                      ; preds = %0
  %15 = load i64, i64* %capacity, align 8
  %16 = mul nsw i64 %15, 2
  store i64 %16, i64* %newCapacity, align 8
  %17 = load i64, i64* %newCapacity, align 8
  %18 = mul i64 %17, 8
  %19 = call noalias i8* @malloc(i64 %18) #3
  %20 = bitcast i8* %19 to i8**
  store i8** %20, i8*** %newElements, align 8
  %21 = load i8**, i8*** %newElements, align 8
  %22 = icmp eq i8** %21, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %14
  store i64 0, i64* %1, align 8
  br label %67

; <label>:24                                      ; preds = %14
  %25 = load i64, i64* %newCapacity, align 8
  %26 = load %struct.heap*, %struct.heap** %2, align 8
  %27 = getelementptr inbounds %struct.heap, %struct.heap* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.heap*, %struct.heap** %2, align 8
  %29 = getelementptr inbounds %struct.heap, %struct.heap* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  store i8** %30, i8*** %elements, align 8
  store i64 0, i64* %i, align 8
  br label %31

; <label>:31                                      ; preds = %43, %24
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* %size, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %46

; <label>:35                                      ; preds = %31
  %36 = load i64, i64* %i, align 8
  %37 = load i8**, i8*** %elements, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 %36
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %i, align 8
  %41 = load i8**, i8*** %newElements, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 %40
  store i8* %39, i8** %42, align 8
  br label %43

; <label>:43                                      ; preds = %35
  %44 = load i64, i64* %i, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %i, align 8
  br label %31

; <label>:46                                      ; preds = %31
  %47 = load %struct.heap*, %struct.heap** %2, align 8
  %48 = getelementptr inbounds %struct.heap, %struct.heap* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = bitcast i8** %49 to i8*
  call void @free(i8* %50) #3
  %51 = load i8**, i8*** %newElements, align 8
  %52 = load %struct.heap*, %struct.heap** %2, align 8
  %53 = getelementptr inbounds %struct.heap, %struct.heap* %52, i32 0, i32 0
  store i8** %51, i8*** %53, align 8
  br label %54

; <label>:54                                      ; preds = %46, %0
  %55 = load %struct.heap*, %struct.heap** %2, align 8
  %56 = getelementptr inbounds %struct.heap, %struct.heap* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  store i64 %58, i64* %size, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = load i64, i64* %size, align 8
  %61 = load %struct.heap*, %struct.heap** %2, align 8
  %62 = getelementptr inbounds %struct.heap, %struct.heap* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 %60
  store i8* %59, i8** %64, align 8
  %65 = load %struct.heap*, %struct.heap** %2, align 8
  %66 = load i64, i64* %size, align 8
  call void @siftUp(%struct.heap* %65, i64 %66)
  store i64 1, i64* %1, align 8
  br label %67

; <label>:67                                      ; preds = %54, %23
  %68 = load i64, i64* %1, align 8
  ret i64 %68
}

; Function Attrs: nounwind uwtable
define internal void @siftUp(%struct.heap* %heapPtr, i64 %startIndex) #0 {
  %1 = alloca %struct.heap*, align 8
  %2 = alloca i64, align 8
  %elements = alloca i8**, align 8
  %compare = alloca i64 (i8*, i8*)*, align 8
  %index = alloca i64, align 8
  %parentIndex = alloca i64, align 8
  %parentPtr = alloca i8*, align 8
  %thisPtr = alloca i8*, align 8
  %tmpPtr = alloca i8*, align 8
  store %struct.heap* %heapPtr, %struct.heap** %1, align 8
  store i64 %startIndex, i64* %2, align 8
  %3 = load %struct.heap*, %struct.heap** %1, align 8
  %4 = getelementptr inbounds %struct.heap, %struct.heap* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  store i8** %5, i8*** %elements, align 8
  %6 = load %struct.heap*, %struct.heap** %1, align 8
  %7 = getelementptr inbounds %struct.heap, %struct.heap* %6, i32 0, i32 3
  %8 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %7, align 8
  store i64 (i8*, i8*)* %8, i64 (i8*, i8*)** %compare, align 8
  %9 = load i64, i64* %2, align 8
  store i64 %9, i64* %index, align 8
  br label %10

; <label>:10                                      ; preds = %30, %0
  %11 = load i64, i64* %index, align 8
  %12 = icmp sgt i64 %11, 1
  br i1 %12, label %13, label %41

; <label>:13                                      ; preds = %10
  %14 = load i64, i64* %index, align 8
  %15 = sdiv i64 %14, 2
  store i64 %15, i64* %parentIndex, align 8
  %16 = load i64, i64* %parentIndex, align 8
  %17 = load i8**, i8*** %elements, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 %16
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %parentPtr, align 8
  %20 = load i64, i64* %index, align 8
  %21 = load i8**, i8*** %elements, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 %20
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %thisPtr, align 8
  %24 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %compare, align 8
  %25 = load i8*, i8** %parentPtr, align 8
  %26 = load i8*, i8** %thisPtr, align 8
  %27 = call i64 %24(i8* %25, i8* %26)
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %13
  br label %41

; <label>:30                                      ; preds = %13
  %31 = load i8*, i8** %parentPtr, align 8
  store i8* %31, i8** %tmpPtr, align 8
  %32 = load i8*, i8** %thisPtr, align 8
  %33 = load i64, i64* %parentIndex, align 8
  %34 = load i8**, i8*** %elements, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 %33
  store i8* %32, i8** %35, align 8
  %36 = load i8*, i8** %tmpPtr, align 8
  %37 = load i64, i64* %index, align 8
  %38 = load i8**, i8*** %elements, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 %37
  store i8* %36, i8** %39, align 8
  %40 = load i64, i64* %parentIndex, align 8
  store i64 %40, i64* %index, align 8
  br label %10

; <label>:41                                      ; preds = %29, %10
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @TMheap_insert(%struct.heap* %heapPtr, i8* %dataPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.heap*, align 8
  %3 = alloca i8*, align 8
  %size = alloca i64, align 8
  %capacity = alloca i64, align 8
  %newCapacity = alloca i64, align 8
  %newElements = alloca i8**, align 8
  %4 = alloca i64, align 8
  %i = alloca i64, align 8
  %elements = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %elements1 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.heap* %heapPtr, %struct.heap** %2, align 8
  store i8* %dataPtr, i8** %3, align 8
  %8 = load %struct.heap*, %struct.heap** %2, align 8
  %9 = getelementptr inbounds %struct.heap, %struct.heap* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %size, align 8
  %11 = load %struct.heap*, %struct.heap** %2, align 8
  %12 = getelementptr inbounds %struct.heap, %struct.heap* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %capacity, align 8
  %14 = load i64, i64* %size, align 8
  %15 = add nsw i64 %14, 1
  %16 = load i64, i64* %capacity, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %66

; <label>:18                                      ; preds = %0
  %19 = load i64, i64* %capacity, align 8
  %20 = mul nsw i64 %19, 2
  store i64 %20, i64* %newCapacity, align 8
  %21 = load i64, i64* %newCapacity, align 8
  %22 = mul i64 %21, 8
  %23 = call noalias i8* @malloc(i64 %22) #3
  %24 = bitcast i8* %23 to i8**
  store i8** %24, i8*** %newElements, align 8
  %25 = load i8**, i8*** %newElements, align 8
  %26 = icmp eq i8** %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %18
  store i64 0, i64* %1, align 8
  br label %90

; <label>:28                                      ; preds = %18
  %29 = load i64, i64* %newCapacity, align 8
  %30 = load %struct.heap*, %struct.heap** %2, align 8
  %31 = getelementptr inbounds %struct.heap, %struct.heap* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.heap*, %struct.heap** %2, align 8
  %33 = getelementptr inbounds %struct.heap, %struct.heap* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.heap*, %struct.heap** %2, align 8
  %37 = getelementptr inbounds %struct.heap, %struct.heap* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  store i8** %38, i8*** %elements, align 8
  store i64 0, i64* %i, align 8
  br label %39

; <label>:39                                      ; preds = %51, %28
  %40 = load i64, i64* %i, align 8
  %41 = load i64, i64* %size, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %54

; <label>:43                                      ; preds = %39
  %44 = load i64, i64* %i, align 8
  %45 = load i8**, i8*** %elements, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 %44
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %i, align 8
  %49 = load i8**, i8*** %newElements, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 %48
  store i8* %47, i8** %50, align 8
  br label %51

; <label>:51                                      ; preds = %43
  %52 = load i64, i64* %i, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %i, align 8
  br label %39

; <label>:54                                      ; preds = %39
  %55 = load %struct.heap*, %struct.heap** %2, align 8
  %56 = getelementptr inbounds %struct.heap, %struct.heap* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = bitcast i8** %57 to i8*
  call void @free(i8* %58) #3
  %59 = load i8**, i8*** %newElements, align 8
  %60 = load %struct.heap*, %struct.heap** %2, align 8
  %61 = getelementptr inbounds %struct.heap, %struct.heap* %60, i32 0, i32 0
  store i8** %59, i8*** %61, align 8
  %62 = load %struct.heap*, %struct.heap** %2, align 8
  %63 = getelementptr inbounds %struct.heap, %struct.heap* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  store i8** %64, i8*** %5, align 8
  %65 = load i8**, i8*** %5, align 8
  br label %66

; <label>:66                                      ; preds = %54, %0
  %67 = load i64, i64* %size, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %size, align 8
  %69 = load i64, i64* %size, align 8
  %70 = load %struct.heap*, %struct.heap** %2, align 8
  %71 = getelementptr inbounds %struct.heap, %struct.heap* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.heap*, %struct.heap** %2, align 8
  %73 = getelementptr inbounds %struct.heap, %struct.heap* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.heap*, %struct.heap** %2, align 8
  %77 = getelementptr inbounds %struct.heap, %struct.heap* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  store i8** %78, i8*** %elements1, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = load i64, i64* %size, align 8
  %81 = load i8**, i8*** %elements1, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 %80
  store i8* %79, i8** %82, align 8
  %83 = load i64, i64* %size, align 8
  %84 = load i8**, i8*** %elements1, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 %83
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %7, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.heap*, %struct.heap** %2, align 8
  %89 = load i64, i64* %size, align 8
  call void @TMsiftUp(%struct.heap* %88, i64 %89)
  store i64 1, i64* %1, align 8
  br label %90

; <label>:90                                      ; preds = %66, %27
  %91 = load i64, i64* %1, align 8
  ret i64 %91
}

; Function Attrs: nounwind uwtable
define internal void @TMsiftUp(%struct.heap* %heapPtr, i64 %startIndex) #0 {
  %1 = alloca %struct.heap*, align 8
  %2 = alloca i64, align 8
  %elements = alloca i8**, align 8
  %compare = alloca i64 (i8*, i8*)*, align 8
  %index = alloca i64, align 8
  %parentIndex = alloca i64, align 8
  %parentPtr = alloca i8*, align 8
  %thisPtr = alloca i8*, align 8
  %tmpPtr = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.heap* %heapPtr, %struct.heap** %1, align 8
  store i64 %startIndex, i64* %2, align 8
  %5 = load %struct.heap*, %struct.heap** %1, align 8
  %6 = getelementptr inbounds %struct.heap, %struct.heap* %5, i32 0, i32 0
  %7 = load i8**, i8*** %6, align 8
  store i8** %7, i8*** %elements, align 8
  %8 = load %struct.heap*, %struct.heap** %1, align 8
  %9 = getelementptr inbounds %struct.heap, %struct.heap* %8, i32 0, i32 3
  %10 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %9, align 8
  store i64 (i8*, i8*)* %10, i64 (i8*, i8*)** %compare, align 8
  %11 = load i64, i64* %2, align 8
  store i64 %11, i64* %index, align 8
  br label %12

; <label>:12                                      ; preds = %32, %0
  %13 = load i64, i64* %index, align 8
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %15, label %53

; <label>:15                                      ; preds = %12
  %16 = load i64, i64* %index, align 8
  %17 = sdiv i64 %16, 2
  store i64 %17, i64* %parentIndex, align 8
  %18 = load i64, i64* %parentIndex, align 8
  %19 = load i8**, i8*** %elements, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 %18
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %parentPtr, align 8
  %22 = load i64, i64* %index, align 8
  %23 = load i8**, i8*** %elements, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %thisPtr, align 8
  %26 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %compare, align 8
  %27 = load i8*, i8** %parentPtr, align 8
  %28 = load i8*, i8** %thisPtr, align 8
  %29 = call i64 %26(i8* %27, i8* %28)
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %15
  br label %53

; <label>:32                                      ; preds = %15
  %33 = load i8*, i8** %parentPtr, align 8
  store i8* %33, i8** %tmpPtr, align 8
  %34 = load i8*, i8** %thisPtr, align 8
  %35 = load i64, i64* %parentIndex, align 8
  %36 = load i8**, i8*** %elements, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 %35
  store i8* %34, i8** %37, align 8
  %38 = load i64, i64* %parentIndex, align 8
  %39 = load i8**, i8*** %elements, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 %38
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %3, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i8*, i8** %tmpPtr, align 8
  %44 = load i64, i64* %index, align 8
  %45 = load i8**, i8*** %elements, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 %44
  store i8* %43, i8** %46, align 8
  %47 = load i64, i64* %index, align 8
  %48 = load i8**, i8*** %elements, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %4, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %parentIndex, align 8
  store i64 %52, i64* %index, align 8
  br label %12

; <label>:53                                      ; preds = %31, %12
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @heap_remove(%struct.heap* %heapPtr) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.heap*, align 8
  %size = alloca i64, align 8
  %elements = alloca i8**, align 8
  %dataPtr = alloca i8*, align 8
  store %struct.heap* %heapPtr, %struct.heap** %2, align 8
  %3 = load %struct.heap*, %struct.heap** %2, align 8
  %4 = getelementptr inbounds %struct.heap, %struct.heap* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %size, align 8
  %6 = load i64, i64* %size, align 8
  %7 = icmp slt i64 %6, 1
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store i8* null, i8** %1, align 8
  br label %28

; <label>:9                                       ; preds = %0
  %10 = load %struct.heap*, %struct.heap** %2, align 8
  %11 = getelementptr inbounds %struct.heap, %struct.heap* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  store i8** %12, i8*** %elements, align 8
  %13 = load i8**, i8*** %elements, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %dataPtr, align 8
  %16 = load i64, i64* %size, align 8
  %17 = load i8**, i8*** %elements, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 %16
  %19 = load i8*, i8** %18, align 8
  %20 = load i8**, i8*** %elements, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* %size, align 8
  %23 = sub nsw i64 %22, 1
  %24 = load %struct.heap*, %struct.heap** %2, align 8
  %25 = getelementptr inbounds %struct.heap, %struct.heap* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.heap*, %struct.heap** %2, align 8
  call void @heapify(%struct.heap* %26, i64 1)
  %27 = load i8*, i8** %dataPtr, align 8
  store i8* %27, i8** %1, align 8
  br label %28

; <label>:28                                      ; preds = %9, %8
  %29 = load i8*, i8** %1, align 8
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define internal void @heapify(%struct.heap* %heapPtr, i64 %startIndex) #0 {
  %1 = alloca %struct.heap*, align 8
  %2 = alloca i64, align 8
  %elements = alloca i8**, align 8
  %compare = alloca i64 (i8*, i8*)*, align 8
  %size = alloca i64, align 8
  %index = alloca i64, align 8
  %leftIndex = alloca i64, align 8
  %rightIndex = alloca i64, align 8
  %maxIndex = alloca i64, align 8
  %tmpPtr = alloca i8*, align 8
  store %struct.heap* %heapPtr, %struct.heap** %1, align 8
  store i64 %startIndex, i64* %2, align 8
  %3 = load %struct.heap*, %struct.heap** %1, align 8
  %4 = getelementptr inbounds %struct.heap, %struct.heap* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  store i8** %5, i8*** %elements, align 8
  %6 = load %struct.heap*, %struct.heap** %1, align 8
  %7 = getelementptr inbounds %struct.heap, %struct.heap* %6, i32 0, i32 3
  %8 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %7, align 8
  store i64 (i8*, i8*)* %8, i64 (i8*, i8*)** %compare, align 8
  %9 = load %struct.heap*, %struct.heap** %1, align 8
  %10 = getelementptr inbounds %struct.heap, %struct.heap* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %size, align 8
  %12 = load i64, i64* %2, align 8
  store i64 %12, i64* %index, align 8
  br label %13

; <label>:13                                      ; preds = %0, %78
  %14 = load i64, i64* %index, align 8
  %15 = mul nsw i64 2, %14
  store i64 %15, i64* %leftIndex, align 8
  %16 = load i64, i64* %index, align 8
  %17 = mul nsw i64 2, %16
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %rightIndex, align 8
  store i64 -1, i64* %maxIndex, align 8
  %19 = load i64, i64* %leftIndex, align 8
  %20 = load i64, i64* %size, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %36

; <label>:22                                      ; preds = %13
  %23 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %compare, align 8
  %24 = load i64, i64* %leftIndex, align 8
  %25 = load i8**, i8*** %elements, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 %24
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %index, align 8
  %29 = load i8**, i8*** %elements, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 %28
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 %23(i8* %27, i8* %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %36

; <label>:34                                      ; preds = %22
  %35 = load i64, i64* %leftIndex, align 8
  store i64 %35, i64* %maxIndex, align 8
  br label %38

; <label>:36                                      ; preds = %22, %13
  %37 = load i64, i64* %index, align 8
  store i64 %37, i64* %maxIndex, align 8
  br label %38

; <label>:38                                      ; preds = %36, %34
  %39 = load i64, i64* %rightIndex, align 8
  %40 = load i64, i64* %size, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %56

; <label>:42                                      ; preds = %38
  %43 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %compare, align 8
  %44 = load i64, i64* %rightIndex, align 8
  %45 = load i8**, i8*** %elements, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 %44
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %maxIndex, align 8
  %49 = load i8**, i8*** %elements, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 %48
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 %43(i8* %47, i8* %51)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %56

; <label>:54                                      ; preds = %42
  %55 = load i64, i64* %rightIndex, align 8
  store i64 %55, i64* %maxIndex, align 8
  br label %56

; <label>:56                                      ; preds = %54, %42, %38
  %57 = load i64, i64* %maxIndex, align 8
  %58 = load i64, i64* %index, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %56
  br label %79

; <label>:61                                      ; preds = %56
  %62 = load i64, i64* %index, align 8
  %63 = load i8**, i8*** %elements, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 %62
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %tmpPtr, align 8
  %66 = load i64, i64* %maxIndex, align 8
  %67 = load i8**, i8*** %elements, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 %66
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %index, align 8
  %71 = load i8**, i8*** %elements, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 %70
  store i8* %69, i8** %72, align 8
  %73 = load i8*, i8** %tmpPtr, align 8
  %74 = load i64, i64* %maxIndex, align 8
  %75 = load i8**, i8*** %elements, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 %74
  store i8* %73, i8** %76, align 8
  %77 = load i64, i64* %maxIndex, align 8
  store i64 %77, i64* %index, align 8
  br label %78

; <label>:78                                      ; preds = %61
  br label %13

; <label>:79                                      ; preds = %60
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @TMheap_remove(%struct.heap* %heapPtr) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.heap*, align 8
  %size = alloca i64, align 8
  %elements = alloca i8**, align 8
  %dataPtr = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.heap* %heapPtr, %struct.heap** %2, align 8
  %5 = load %struct.heap*, %struct.heap** %2, align 8
  %6 = getelementptr inbounds %struct.heap, %struct.heap* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %size, align 8
  %8 = load i64, i64* %size, align 8
  %9 = icmp slt i64 %8, 1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  store i8* null, i8** %1, align 8
  br label %38

; <label>:11                                      ; preds = %0
  %12 = load %struct.heap*, %struct.heap** %2, align 8
  %13 = getelementptr inbounds %struct.heap, %struct.heap* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  store i8** %14, i8*** %elements, align 8
  %15 = load i8**, i8*** %elements, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %dataPtr, align 8
  %18 = load i64, i64* %size, align 8
  %19 = load i8**, i8*** %elements, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 %18
  %21 = load i8*, i8** %20, align 8
  %22 = load i8**, i8*** %elements, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  store i8* %21, i8** %23, align 8
  %24 = load i8**, i8*** %elements, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* %size, align 8
  %29 = sub nsw i64 %28, 1
  %30 = load %struct.heap*, %struct.heap** %2, align 8
  %31 = getelementptr inbounds %struct.heap, %struct.heap* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.heap*, %struct.heap** %2, align 8
  %33 = getelementptr inbounds %struct.heap, %struct.heap* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.heap*, %struct.heap** %2, align 8
  call void @TMheapify(%struct.heap* %36, i64 1)
  %37 = load i8*, i8** %dataPtr, align 8
  store i8* %37, i8** %1, align 8
  br label %38

; <label>:38                                      ; preds = %11, %10
  %39 = load i8*, i8** %1, align 8
  ret i8* %39
}

; Function Attrs: nounwind uwtable
define internal void @TMheapify(%struct.heap* %heapPtr, i64 %startIndex) #0 {
  %1 = alloca %struct.heap*, align 8
  %2 = alloca i64, align 8
  %elements = alloca i8**, align 8
  %compare = alloca i64 (i8*, i8*)*, align 8
  %size = alloca i64, align 8
  %index = alloca i64, align 8
  %leftIndex = alloca i64, align 8
  %rightIndex = alloca i64, align 8
  %maxIndex = alloca i64, align 8
  %tmpPtr = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.heap* %heapPtr, %struct.heap** %1, align 8
  store i64 %startIndex, i64* %2, align 8
  %5 = load %struct.heap*, %struct.heap** %1, align 8
  %6 = getelementptr inbounds %struct.heap, %struct.heap* %5, i32 0, i32 0
  %7 = load i8**, i8*** %6, align 8
  store i8** %7, i8*** %elements, align 8
  %8 = load %struct.heap*, %struct.heap** %1, align 8
  %9 = getelementptr inbounds %struct.heap, %struct.heap* %8, i32 0, i32 3
  %10 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %9, align 8
  store i64 (i8*, i8*)* %10, i64 (i8*, i8*)** %compare, align 8
  %11 = load %struct.heap*, %struct.heap** %1, align 8
  %12 = getelementptr inbounds %struct.heap, %struct.heap* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %size, align 8
  %14 = load i64, i64* %2, align 8
  store i64 %14, i64* %index, align 8
  br label %15

; <label>:15                                      ; preds = %0, %90
  %16 = load i64, i64* %index, align 8
  %17 = mul nsw i64 2, %16
  store i64 %17, i64* %leftIndex, align 8
  %18 = load i64, i64* %index, align 8
  %19 = mul nsw i64 2, %18
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %rightIndex, align 8
  store i64 -1, i64* %maxIndex, align 8
  %21 = load i64, i64* %leftIndex, align 8
  %22 = load i64, i64* %size, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %38

; <label>:24                                      ; preds = %15
  %25 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %compare, align 8
  %26 = load i64, i64* %leftIndex, align 8
  %27 = load i8**, i8*** %elements, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 %26
  %29 = load i8*, i8** %28, align 8
  %30 = load i64, i64* %index, align 8
  %31 = load i8**, i8*** %elements, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 %30
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 %25(i8* %29, i8* %33)
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %38

; <label>:36                                      ; preds = %24
  %37 = load i64, i64* %leftIndex, align 8
  store i64 %37, i64* %maxIndex, align 8
  br label %40

; <label>:38                                      ; preds = %24, %15
  %39 = load i64, i64* %index, align 8
  store i64 %39, i64* %maxIndex, align 8
  br label %40

; <label>:40                                      ; preds = %38, %36
  %41 = load i64, i64* %rightIndex, align 8
  %42 = load i64, i64* %size, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %58

; <label>:44                                      ; preds = %40
  %45 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %compare, align 8
  %46 = load i64, i64* %rightIndex, align 8
  %47 = load i8**, i8*** %elements, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 %46
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %maxIndex, align 8
  %51 = load i8**, i8*** %elements, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 %50
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 %45(i8* %49, i8* %53)
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %58

; <label>:56                                      ; preds = %44
  %57 = load i64, i64* %rightIndex, align 8
  store i64 %57, i64* %maxIndex, align 8
  br label %58

; <label>:58                                      ; preds = %56, %44, %40
  %59 = load i64, i64* %maxIndex, align 8
  %60 = load i64, i64* %index, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

; <label>:62                                      ; preds = %58
  br label %91

; <label>:63                                      ; preds = %58
  %64 = load i64, i64* %index, align 8
  %65 = load i8**, i8*** %elements, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 %64
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %tmpPtr, align 8
  %68 = load i64, i64* %maxIndex, align 8
  %69 = load i8**, i8*** %elements, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 %68
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %index, align 8
  %73 = load i8**, i8*** %elements, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 %72
  store i8* %71, i8** %74, align 8
  %75 = load i64, i64* %index, align 8
  %76 = load i8**, i8*** %elements, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 %75
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %3, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = load i8*, i8** %tmpPtr, align 8
  %81 = load i64, i64* %maxIndex, align 8
  %82 = load i8**, i8*** %elements, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 %81
  store i8* %80, i8** %83, align 8
  %84 = load i64, i64* %maxIndex, align 8
  %85 = load i8**, i8*** %elements, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 %84
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %4, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = load i64, i64* %maxIndex, align 8
  store i64 %89, i64* %index, align 8
  br label %90

; <label>:90                                      ; preds = %63
  br label %15

; <label>:91                                      ; preds = %62
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @heap_isValid(%struct.heap* %heapPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.heap*, align 8
  %size = alloca i64, align 8
  %compare = alloca i64 (i8*, i8*)*, align 8
  %elements = alloca i8**, align 8
  %i = alloca i64, align 8
  store %struct.heap* %heapPtr, %struct.heap** %2, align 8
  %3 = load %struct.heap*, %struct.heap** %2, align 8
  %4 = getelementptr inbounds %struct.heap, %struct.heap* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %size, align 8
  %6 = load %struct.heap*, %struct.heap** %2, align 8
  %7 = getelementptr inbounds %struct.heap, %struct.heap* %6, i32 0, i32 3
  %8 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %7, align 8
  store i64 (i8*, i8*)* %8, i64 (i8*, i8*)** %compare, align 8
  %9 = load %struct.heap*, %struct.heap** %2, align 8
  %10 = getelementptr inbounds %struct.heap, %struct.heap* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  store i8** %11, i8*** %elements, align 8
  store i64 1, i64* %i, align 8
  br label %12

; <label>:12                                      ; preds = %33, %0
  %13 = load i64, i64* %i, align 8
  %14 = load i64, i64* %size, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %36

; <label>:16                                      ; preds = %12
  %17 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %compare, align 8
  %18 = load i64, i64* %i, align 8
  %19 = add nsw i64 %18, 1
  %20 = load i8**, i8*** %elements, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 %19
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* %i, align 8
  %24 = add nsw i64 %23, 1
  %25 = sdiv i64 %24, 2
  %26 = load i8**, i8*** %elements, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 %25
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 %17(i8* %22, i8* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %16
  store i64 0, i64* %1, align 8
  br label %37

; <label>:32                                      ; preds = %16
  br label %33

; <label>:33                                      ; preds = %32
  %34 = load i64, i64* %i, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %i, align 8
  br label %12

; <label>:36                                      ; preds = %12
  store i64 1, i64* %1, align 8
  br label %37

; <label>:37                                      ; preds = %36, %31
  %38 = load i64, i64* %1, align 8
  ret i64 %38
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
