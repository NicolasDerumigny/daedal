; ModuleID = '../bin/adtree.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adtree_node = type { i64, i64, i64, %struct.vector* }
%struct.vector = type { i64, i64, i8** }
%struct.adtree_vary = type { i64, i64, %struct.adtree_node*, %struct.adtree_node* }
%struct.adtree = type { i64, i64, %struct.adtree_node* }
%struct.data = type { i64, i64, i8*, %struct.random* }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.query = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"nodePtr\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"adtree.c\00", align 1
@__PRETTY_FUNCTION__.makeNode = private unnamed_addr constant [58 x i8] c"adtree_node_t *makeNode(long, long, long, long, data_t *)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"varyPtr\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@__PRETTY_FUNCTION__.makeVary = private unnamed_addr constant [58 x i8] c"adtree_vary_t *makeVary(long, long, long, long, data_t *)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"queryIndex <= lastQueryIndex\00", align 1
@__PRETTY_FUNCTION__.getCount = private unnamed_addr constant [73 x i8] c"long getCount(adtree_node_t *, long, long, vector_t *, long, adtree_t *)\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"superQueryVectorPtr\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: nounwind uwtable
define %struct.adtree_node* @allocNode(i64 %index) #0 {
  %1 = alloca %struct.adtree_node*, align 8
  %2 = alloca i64, align 8
  %nodePtr = alloca %struct.adtree_node*, align 8
  store i64 %index, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 32) #4
  %4 = bitcast i8* %3 to %struct.adtree_node*
  store %struct.adtree_node* %4, %struct.adtree_node** %nodePtr, align 8
  %5 = load %struct.adtree_node*, %struct.adtree_node** %nodePtr, align 8
  %6 = icmp ne %struct.adtree_node* %5, null
  br i1 %6, label %7, label %26

; <label>:7                                       ; preds = %0
  %8 = call %struct.vector* @vector_alloc(i64 1)
  %9 = load %struct.adtree_node*, %struct.adtree_node** %nodePtr, align 8
  %10 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %9, i32 0, i32 3
  store %struct.vector* %8, %struct.vector** %10, align 8
  %11 = load %struct.adtree_node*, %struct.adtree_node** %nodePtr, align 8
  %12 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %11, i32 0, i32 3
  %13 = load %struct.vector*, %struct.vector** %12, align 8
  %14 = icmp eq %struct.vector* %13, null
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %7
  %16 = load %struct.adtree_node*, %struct.adtree_node** %nodePtr, align 8
  %17 = bitcast %struct.adtree_node* %16 to i8*
  call void @free(i8* %17) #4
  store %struct.adtree_node* null, %struct.adtree_node** %1, align 8
  br label %28

; <label>:18                                      ; preds = %7
  %19 = load i64, i64* %2, align 8
  %20 = load %struct.adtree_node*, %struct.adtree_node** %nodePtr, align 8
  %21 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.adtree_node*, %struct.adtree_node** %nodePtr, align 8
  %23 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %22, i32 0, i32 1
  store i64 -1, i64* %23, align 8
  %24 = load %struct.adtree_node*, %struct.adtree_node** %nodePtr, align 8
  %25 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %24, i32 0, i32 2
  store i64 -1, i64* %25, align 8
  br label %26

; <label>:26                                      ; preds = %18, %0
  %27 = load %struct.adtree_node*, %struct.adtree_node** %nodePtr, align 8
  store %struct.adtree_node* %27, %struct.adtree_node** %1, align 8
  br label %28

; <label>:28                                      ; preds = %26, %15
  %29 = load %struct.adtree_node*, %struct.adtree_node** %1, align 8
  ret %struct.adtree_node* %29
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.vector* @vector_alloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @freeNode(%struct.adtree_node* %nodePtr) #0 {
  %1 = alloca %struct.adtree_node*, align 8
  store %struct.adtree_node* %nodePtr, %struct.adtree_node** %1, align 8
  %2 = load %struct.adtree_node*, %struct.adtree_node** %1, align 8
  %3 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %2, i32 0, i32 3
  %4 = load %struct.vector*, %struct.vector** %3, align 8
  call void @vector_free(%struct.vector* %4)
  %5 = load %struct.adtree_node*, %struct.adtree_node** %1, align 8
  %6 = bitcast %struct.adtree_node* %5 to i8*
  call void @free(i8* %6) #4
  ret void
}

declare void @vector_free(%struct.vector*) #2

; Function Attrs: nounwind uwtable
define %struct.adtree_vary* @allocVary(i64 %index) #0 {
  %1 = alloca i64, align 8
  %varyPtr = alloca %struct.adtree_vary*, align 8
  store i64 %index, i64* %1, align 8
  %2 = call noalias i8* @malloc(i64 32) #4
  %3 = bitcast i8* %2 to %struct.adtree_vary*
  store %struct.adtree_vary* %3, %struct.adtree_vary** %varyPtr, align 8
  %4 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %5 = icmp ne %struct.adtree_vary* %4, null
  br i1 %5, label %6, label %16

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %9 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %11 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %10, i32 0, i32 1
  store i64 -1, i64* %11, align 8
  %12 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %13 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %12, i32 0, i32 2
  store %struct.adtree_node* null, %struct.adtree_node** %13, align 8
  %14 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %15 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %14, i32 0, i32 3
  store %struct.adtree_node* null, %struct.adtree_node** %15, align 8
  br label %16

; <label>:16                                      ; preds = %6, %0
  %17 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  ret %struct.adtree_vary* %17
}

; Function Attrs: nounwind uwtable
define void @freeVary(%struct.adtree_vary* %varyPtr) #0 {
  %1 = alloca %struct.adtree_vary*, align 8
  store %struct.adtree_vary* %varyPtr, %struct.adtree_vary** %1, align 8
  %2 = load %struct.adtree_vary*, %struct.adtree_vary** %1, align 8
  %3 = bitcast %struct.adtree_vary* %2 to i8*
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.adtree* @adtree_alloc() #0 {
  %adtreePtr = alloca %struct.adtree*, align 8
  %1 = call noalias i8* @malloc(i64 24) #4
  %2 = bitcast i8* %1 to %struct.adtree*
  store %struct.adtree* %2, %struct.adtree** %adtreePtr, align 8
  %3 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %4 = icmp ne %struct.adtree* %3, null
  br i1 %4, label %5, label %12

; <label>:5                                       ; preds = %0
  %6 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %7 = getelementptr inbounds %struct.adtree, %struct.adtree* %6, i32 0, i32 0
  store i64 -1, i64* %7, align 8
  %8 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %9 = getelementptr inbounds %struct.adtree, %struct.adtree* %8, i32 0, i32 1
  store i64 -1, i64* %9, align 8
  %10 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %11 = getelementptr inbounds %struct.adtree, %struct.adtree* %10, i32 0, i32 2
  store %struct.adtree_node* null, %struct.adtree_node** %11, align 8
  br label %12

; <label>:12                                      ; preds = %5, %0
  %13 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  ret %struct.adtree* %13
}

; Function Attrs: nounwind uwtable
define void @adtree_free(%struct.adtree* %adtreePtr) #0 {
  %1 = alloca %struct.adtree*, align 8
  store %struct.adtree* %adtreePtr, %struct.adtree** %1, align 8
  %2 = load %struct.adtree*, %struct.adtree** %1, align 8
  %3 = getelementptr inbounds %struct.adtree, %struct.adtree* %2, i32 0, i32 2
  %4 = load %struct.adtree_node*, %struct.adtree_node** %3, align 8
  call void @freeNodes(%struct.adtree_node* %4)
  %5 = load %struct.adtree*, %struct.adtree** %1, align 8
  %6 = bitcast %struct.adtree* %5 to i8*
  call void @free(i8* %6) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeNodes(%struct.adtree_node* %nodePtr) #0 {
  %1 = alloca %struct.adtree_node*, align 8
  %varyVectorPtr = alloca %struct.vector*, align 8
  %v = alloca i64, align 8
  %numVary = alloca i64, align 8
  %varyPtr = alloca %struct.adtree_vary*, align 8
  store %struct.adtree_node* %nodePtr, %struct.adtree_node** %1, align 8
  %2 = load %struct.adtree_node*, %struct.adtree_node** %1, align 8
  %3 = icmp ne %struct.adtree_node* %2, null
  br i1 %3, label %4, label %31

; <label>:4                                       ; preds = %0
  %5 = load %struct.adtree_node*, %struct.adtree_node** %1, align 8
  %6 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %5, i32 0, i32 3
  %7 = load %struct.vector*, %struct.vector** %6, align 8
  store %struct.vector* %7, %struct.vector** %varyVectorPtr, align 8
  %8 = load %struct.vector*, %struct.vector** %varyVectorPtr, align 8
  %9 = call i64 @vector_getSize(%struct.vector* %8)
  store i64 %9, i64* %numVary, align 8
  store i64 0, i64* %v, align 8
  br label %10

; <label>:10                                      ; preds = %26, %4
  %11 = load i64, i64* %v, align 8
  %12 = load i64, i64* %numVary, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %29

; <label>:14                                      ; preds = %10
  %15 = load %struct.vector*, %struct.vector** %varyVectorPtr, align 8
  %16 = load i64, i64* %v, align 8
  %17 = call i8* @vector_at(%struct.vector* %15, i64 %16)
  %18 = bitcast i8* %17 to %struct.adtree_vary*
  store %struct.adtree_vary* %18, %struct.adtree_vary** %varyPtr, align 8
  %19 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %20 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %19, i32 0, i32 2
  %21 = load %struct.adtree_node*, %struct.adtree_node** %20, align 8
  call void @freeNodes(%struct.adtree_node* %21)
  %22 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %23 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %22, i32 0, i32 3
  %24 = load %struct.adtree_node*, %struct.adtree_node** %23, align 8
  call void @freeNodes(%struct.adtree_node* %24)
  %25 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  call void @freeVary(%struct.adtree_vary* %25)
  br label %26

; <label>:26                                      ; preds = %14
  %27 = load i64, i64* %v, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %v, align 8
  br label %10

; <label>:29                                      ; preds = %10
  %30 = load %struct.adtree_node*, %struct.adtree_node** %1, align 8
  call void @freeNode(%struct.adtree_node* %30)
  br label %31

; <label>:31                                      ; preds = %29, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @adtree_make(%struct.adtree* %adtreePtr, %struct.data* %dataPtr) #0 {
  %1 = alloca %struct.adtree*, align 8
  %2 = alloca %struct.data*, align 8
  %numRecord = alloca i64, align 8
  store %struct.adtree* %adtreePtr, %struct.adtree** %1, align 8
  store %struct.data* %dataPtr, %struct.data** %2, align 8
  %3 = load %struct.data*, %struct.data** %2, align 8
  %4 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %numRecord, align 8
  %6 = load %struct.data*, %struct.data** %2, align 8
  %7 = getelementptr inbounds %struct.data, %struct.data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.adtree*, %struct.adtree** %1, align 8
  %10 = getelementptr inbounds %struct.adtree, %struct.adtree* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.data*, %struct.data** %2, align 8
  %12 = getelementptr inbounds %struct.data, %struct.data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.adtree*, %struct.adtree** %1, align 8
  %15 = getelementptr inbounds %struct.adtree, %struct.adtree* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.data*, %struct.data** %2, align 8
  %17 = load i64, i64* %numRecord, align 8
  call void @data_sort(%struct.data* %16, i64 0, i64 %17, i64 0)
  %18 = load i64, i64* %numRecord, align 8
  %19 = load %struct.data*, %struct.data** %2, align 8
  %20 = call %struct.adtree_node* @makeNode(i64 -1, i64 -1, i64 0, i64 %18, %struct.data* %19)
  %21 = load %struct.adtree*, %struct.adtree** %1, align 8
  %22 = getelementptr inbounds %struct.adtree, %struct.adtree* %21, i32 0, i32 2
  store %struct.adtree_node* %20, %struct.adtree_node** %22, align 8
  ret void
}

declare void @data_sort(%struct.data*, i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct.adtree_node* @makeNode(i64 %parentIndex, i64 %index, i64 %start, i64 %numRecord, %struct.data* %dataPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.data*, align 8
  %nodePtr = alloca %struct.adtree_node*, align 8
  %varyVectorPtr = alloca %struct.vector*, align 8
  %v = alloca i64, align 8
  %numVar = alloca i64, align 8
  %varyPtr = alloca %struct.adtree_vary*, align 8
  %status = alloca i64, align 8
  store i64 %parentIndex, i64* %1, align 8
  store i64 %index, i64* %2, align 8
  store i64 %start, i64* %3, align 8
  store i64 %numRecord, i64* %4, align 8
  store %struct.data* %dataPtr, %struct.data** %5, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call %struct.adtree_node* @allocNode(i64 %6)
  store %struct.adtree_node* %7, %struct.adtree_node** %nodePtr, align 8
  %8 = load %struct.adtree_node*, %struct.adtree_node** %nodePtr, align 8
  %9 = icmp ne %struct.adtree_node* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %13

; <label>:11                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 283, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.makeNode, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.adtree_node*, %struct.adtree_node** %nodePtr, align 8
  %16 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load %struct.adtree_node*, %struct.adtree_node** %nodePtr, align 8
  %18 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %17, i32 0, i32 3
  %19 = load %struct.vector*, %struct.vector** %18, align 8
  store %struct.vector* %19, %struct.vector** %varyVectorPtr, align 8
  %20 = load %struct.data*, %struct.data** %5, align 8
  %21 = getelementptr inbounds %struct.data, %struct.data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %numVar, align 8
  %23 = load i64, i64* %2, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %v, align 8
  br label %25

; <label>:25                                      ; preds = %52, %13
  %26 = load i64, i64* %v, align 8
  %27 = load i64, i64* %numVar, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %55

; <label>:29                                      ; preds = %25
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* %v, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.data*, %struct.data** %5, align 8
  %35 = call %struct.adtree_vary* @makeVary(i64 %30, i64 %31, i64 %32, i64 %33, %struct.data* %34)
  store %struct.adtree_vary* %35, %struct.adtree_vary** %varyPtr, align 8
  %36 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %37 = icmp ne %struct.adtree_vary* %36, null
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %29
  br label %41

; <label>:39                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 294, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.makeNode, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %41

; <label>:41                                      ; preds = %40, %38
  %42 = load %struct.vector*, %struct.vector** %varyVectorPtr, align 8
  %43 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %44 = bitcast %struct.adtree_vary* %43 to i8*
  %45 = call i64 @vector_pushBack(%struct.vector* %42, i8* %44)
  store i64 %45, i64* %status, align 8
  %46 = load i64, i64* %status, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %41
  br label %51

; <label>:49                                      ; preds = %41
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 296, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.makeNode, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %51

; <label>:51                                      ; preds = %50, %48
  br label %52

; <label>:52                                      ; preds = %51
  %53 = load i64, i64* %v, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %v, align 8
  br label %25

; <label>:55                                      ; preds = %25
  %56 = load %struct.adtree_node*, %struct.adtree_node** %nodePtr, align 8
  ret %struct.adtree_node* %56
}

; Function Attrs: nounwind uwtable
define i64 @adtree_getCount(%struct.adtree* %adtreePtr, %struct.vector* %queryVectorPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.adtree*, align 8
  %3 = alloca %struct.vector*, align 8
  %rootNodePtr = alloca %struct.adtree_node*, align 8
  %lastQueryIndex = alloca i64, align 8
  %numQuery = alloca i64, align 8
  %lastQueryPtr = alloca %struct.query*, align 8
  store %struct.adtree* %adtreePtr, %struct.adtree** %2, align 8
  store %struct.vector* %queryVectorPtr, %struct.vector** %3, align 8
  %4 = load %struct.adtree*, %struct.adtree** %2, align 8
  %5 = getelementptr inbounds %struct.adtree, %struct.adtree* %4, i32 0, i32 2
  %6 = load %struct.adtree_node*, %struct.adtree_node** %5, align 8
  store %struct.adtree_node* %6, %struct.adtree_node** %rootNodePtr, align 8
  %7 = load %struct.adtree_node*, %struct.adtree_node** %rootNodePtr, align 8
  %8 = icmp eq %struct.adtree_node* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  store i64 0, i64* %1, align 8
  br label %30

; <label>:10                                      ; preds = %0
  store i64 -1, i64* %lastQueryIndex, align 8
  %11 = load %struct.vector*, %struct.vector** %3, align 8
  %12 = call i64 @vector_getSize(%struct.vector* %11)
  store i64 %12, i64* %numQuery, align 8
  %13 = load i64, i64* %numQuery, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %24

; <label>:15                                      ; preds = %10
  %16 = load %struct.vector*, %struct.vector** %3, align 8
  %17 = load i64, i64* %numQuery, align 8
  %18 = sub nsw i64 %17, 1
  %19 = call i8* @vector_at(%struct.vector* %16, i64 %18)
  %20 = bitcast i8* %19 to %struct.query*
  store %struct.query* %20, %struct.query** %lastQueryPtr, align 8
  %21 = load %struct.query*, %struct.query** %lastQueryPtr, align 8
  %22 = getelementptr inbounds %struct.query, %struct.query* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %lastQueryIndex, align 8
  br label %24

; <label>:24                                      ; preds = %15, %10
  %25 = load %struct.adtree_node*, %struct.adtree_node** %rootNodePtr, align 8
  %26 = load %struct.vector*, %struct.vector** %3, align 8
  %27 = load i64, i64* %lastQueryIndex, align 8
  %28 = load %struct.adtree*, %struct.adtree** %2, align 8
  %29 = call i64 @getCount(%struct.adtree_node* %25, i64 -1, i64 0, %struct.vector* %26, i64 %27, %struct.adtree* %28)
  store i64 %29, i64* %1, align 8
  br label %30

; <label>:30                                      ; preds = %24, %9
  %31 = load i64, i64* %1, align 8
  ret i64 %31
}

declare i64 @vector_getSize(%struct.vector*) #2

declare i8* @vector_at(%struct.vector*, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @getCount(%struct.adtree_node* %nodePtr, i64 %i, i64 %q, %struct.vector* %queryVectorPtr, i64 %lastQueryIndex, %struct.adtree* %adtreePtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.adtree_node*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vector*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.adtree*, align 8
  %nodeIndex = alloca i64, align 8
  %count = alloca i64, align 8
  %queryPtr = alloca %struct.query*, align 8
  %queryIndex = alloca i64, align 8
  %varyVectorPtr = alloca %struct.vector*, align 8
  %varyPtr = alloca %struct.adtree_vary*, align 8
  %queryValue = alloca i64, align 8
  %numQuery = alloca i64, align 8
  %superQueryVectorPtr = alloca %struct.vector*, align 8
  %qq = alloca i64, align 8
  %status = alloca i64, align 8
  %superCount = alloca i64, align 8
  %invertCount = alloca i64, align 8
  store %struct.adtree_node* %nodePtr, %struct.adtree_node** %2, align 8
  store i64 %i, i64* %3, align 8
  store i64 %q, i64* %4, align 8
  store %struct.vector* %queryVectorPtr, %struct.vector** %5, align 8
  store i64 %lastQueryIndex, i64* %6, align 8
  store %struct.adtree* %adtreePtr, %struct.adtree** %7, align 8
  %8 = load %struct.adtree_node*, %struct.adtree_node** %2, align 8
  %9 = icmp eq %struct.adtree_node* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  store i64 0, i64* %1, align 8
  br label %180

; <label>:11                                      ; preds = %0
  %12 = load %struct.adtree_node*, %struct.adtree_node** %2, align 8
  %13 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %nodeIndex, align 8
  %15 = load i64, i64* %nodeIndex, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %22

; <label>:18                                      ; preds = %11
  %19 = load %struct.adtree_node*, %struct.adtree_node** %2, align 8
  %20 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %1, align 8
  br label %180

; <label>:22                                      ; preds = %11
  store i64 0, i64* %count, align 8
  %23 = load %struct.vector*, %struct.vector** %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i8* @vector_at(%struct.vector* %23, i64 %24)
  %26 = bitcast i8* %25 to %struct.query*
  store %struct.query* %26, %struct.query** %queryPtr, align 8
  %27 = load %struct.query*, %struct.query** %queryPtr, align 8
  %28 = icmp ne %struct.query* %27, null
  br i1 %28, label %33, label %29

; <label>:29                                      ; preds = %22
  %30 = load %struct.adtree_node*, %struct.adtree_node** %2, align 8
  %31 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %1, align 8
  br label %180

; <label>:33                                      ; preds = %22
  %34 = load %struct.query*, %struct.query** %queryPtr, align 8
  %35 = getelementptr inbounds %struct.query, %struct.query* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %queryIndex, align 8
  %37 = load i64, i64* %queryIndex, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %33
  br label %43

; <label>:41                                      ; preds = %33
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 347, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %43

; <label>:43                                      ; preds = %42, %40
  %44 = load %struct.adtree_node*, %struct.adtree_node** %2, align 8
  %45 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %44, i32 0, i32 3
  %46 = load %struct.vector*, %struct.vector** %45, align 8
  store %struct.vector* %46, %struct.vector** %varyVectorPtr, align 8
  %47 = load %struct.vector*, %struct.vector** %varyVectorPtr, align 8
  %48 = load i64, i64* %queryIndex, align 8
  %49 = load i64, i64* %nodeIndex, align 8
  %50 = sub nsw i64 %48, %49
  %51 = sub nsw i64 %50, 1
  %52 = call i8* @vector_at(%struct.vector* %47, i64 %51)
  %53 = bitcast i8* %52 to %struct.adtree_vary*
  store %struct.adtree_vary* %53, %struct.adtree_vary** %varyPtr, align 8
  %54 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %55 = icmp ne %struct.adtree_vary* %54, null
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %43
  br label %59

; <label>:57                                      ; preds = %43
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 352, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  %60 = load %struct.query*, %struct.query** %queryPtr, align 8
  %61 = getelementptr inbounds %struct.query, %struct.query* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %queryValue, align 8
  %63 = load i64, i64* %queryValue, align 8
  %64 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %65 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %141

; <label>:68                                      ; preds = %59
  %69 = load %struct.vector*, %struct.vector** %5, align 8
  %70 = call i64 @vector_getSize(%struct.vector* %69)
  store i64 %70, i64* %numQuery, align 8
  %71 = load i64, i64* %numQuery, align 8
  %72 = sub nsw i64 %71, 1
  %73 = call %struct.vector* @Pvector_alloc(i64 %72)
  store %struct.vector* %73, %struct.vector** %superQueryVectorPtr, align 8
  %74 = load %struct.vector*, %struct.vector** %superQueryVectorPtr, align 8
  %75 = icmp ne %struct.vector* %74, null
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %68
  br label %79

; <label>:77                                      ; preds = %68
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 366, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %79

; <label>:79                                      ; preds = %78, %76
  store i64 0, i64* %qq, align 8
  br label %80

; <label>:80                                      ; preds = %101, %79
  %81 = load i64, i64* %qq, align 8
  %82 = load i64, i64* %numQuery, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %104

; <label>:84                                      ; preds = %80
  %85 = load i64, i64* %qq, align 8
  %86 = load i64, i64* %4, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %100

; <label>:88                                      ; preds = %84
  %89 = load %struct.vector*, %struct.vector** %superQueryVectorPtr, align 8
  %90 = load %struct.vector*, %struct.vector** %5, align 8
  %91 = load i64, i64* %qq, align 8
  %92 = call i8* @vector_at(%struct.vector* %90, i64 %91)
  %93 = call i64 @vector_pushBack(%struct.vector* %89, i8* %92)
  store i64 %93, i64* %status, align 8
  %94 = load i64, i64* %status, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

; <label>:96                                      ; preds = %88
  br label %99

; <label>:97                                      ; preds = %88
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 373, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %99

; <label>:99                                      ; preds = %98, %96
  br label %100

; <label>:100                                     ; preds = %99, %84
  br label %101

; <label>:101                                     ; preds = %100
  %102 = load i64, i64* %qq, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %qq, align 8
  br label %80

; <label>:104                                     ; preds = %80
  %105 = load %struct.adtree*, %struct.adtree** %7, align 8
  %106 = load %struct.vector*, %struct.vector** %superQueryVectorPtr, align 8
  %107 = call i64 @adtree_getCount(%struct.adtree* %105, %struct.vector* %106)
  store i64 %107, i64* %superCount, align 8
  %108 = load %struct.vector*, %struct.vector** %superQueryVectorPtr, align 8
  call void @Pvector_free(%struct.vector* %108)
  %109 = load i64, i64* %queryValue, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %123

; <label>:111                                     ; preds = %104
  %112 = load %struct.query*, %struct.query** %queryPtr, align 8
  %113 = getelementptr inbounds %struct.query, %struct.query* %112, i32 0, i32 1
  store i64 1, i64* %113, align 8
  %114 = load %struct.adtree_node*, %struct.adtree_node** %2, align 8
  %115 = load i64, i64* %3, align 8
  %116 = load i64, i64* %4, align 8
  %117 = load %struct.vector*, %struct.vector** %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load %struct.adtree*, %struct.adtree** %7, align 8
  %120 = call i64 @getCount(%struct.adtree_node* %114, i64 %115, i64 %116, %struct.vector* %117, i64 %118, %struct.adtree* %119)
  store i64 %120, i64* %invertCount, align 8
  %121 = load %struct.query*, %struct.query** %queryPtr, align 8
  %122 = getelementptr inbounds %struct.query, %struct.query* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  br label %135

; <label>:123                                     ; preds = %104
  %124 = load %struct.query*, %struct.query** %queryPtr, align 8
  %125 = getelementptr inbounds %struct.query, %struct.query* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load %struct.adtree_node*, %struct.adtree_node** %2, align 8
  %127 = load i64, i64* %3, align 8
  %128 = load i64, i64* %4, align 8
  %129 = load %struct.vector*, %struct.vector** %5, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load %struct.adtree*, %struct.adtree** %7, align 8
  %132 = call i64 @getCount(%struct.adtree_node* %126, i64 %127, i64 %128, %struct.vector* %129, i64 %130, %struct.adtree* %131)
  store i64 %132, i64* %invertCount, align 8
  %133 = load %struct.query*, %struct.query** %queryPtr, align 8
  %134 = getelementptr inbounds %struct.query, %struct.query* %133, i32 0, i32 1
  store i64 1, i64* %134, align 8
  br label %135

; <label>:135                                     ; preds = %123, %111
  %136 = load i64, i64* %superCount, align 8
  %137 = load i64, i64* %invertCount, align 8
  %138 = sub nsw i64 %136, %137
  %139 = load i64, i64* %count, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %count, align 8
  br label %178

; <label>:141                                     ; preds = %59
  %142 = load i64, i64* %queryValue, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %158

; <label>:144                                     ; preds = %141
  %145 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %146 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %145, i32 0, i32 2
  %147 = load %struct.adtree_node*, %struct.adtree_node** %146, align 8
  %148 = load i64, i64* %3, align 8
  %149 = add nsw i64 %148, 1
  %150 = load i64, i64* %4, align 8
  %151 = add nsw i64 %150, 1
  %152 = load %struct.vector*, %struct.vector** %5, align 8
  %153 = load i64, i64* %6, align 8
  %154 = load %struct.adtree*, %struct.adtree** %7, align 8
  %155 = call i64 @getCount(%struct.adtree_node* %147, i64 %149, i64 %151, %struct.vector* %152, i64 %153, %struct.adtree* %154)
  %156 = load i64, i64* %count, align 8
  %157 = add nsw i64 %156, %155
  store i64 %157, i64* %count, align 8
  br label %177

; <label>:158                                     ; preds = %141
  %159 = load i64, i64* %queryValue, align 8
  %160 = icmp eq i64 %159, 1
  br i1 %160, label %161, label %175

; <label>:161                                     ; preds = %158
  %162 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %163 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %162, i32 0, i32 3
  %164 = load %struct.adtree_node*, %struct.adtree_node** %163, align 8
  %165 = load i64, i64* %3, align 8
  %166 = add nsw i64 %165, 1
  %167 = load i64, i64* %4, align 8
  %168 = add nsw i64 %167, 1
  %169 = load %struct.vector*, %struct.vector** %5, align 8
  %170 = load i64, i64* %6, align 8
  %171 = load %struct.adtree*, %struct.adtree** %7, align 8
  %172 = call i64 @getCount(%struct.adtree_node* %164, i64 %166, i64 %168, %struct.vector* %169, i64 %170, %struct.adtree* %171)
  %173 = load i64, i64* %count, align 8
  %174 = add nsw i64 %173, %172
  store i64 %174, i64* %count, align 8
  br label %176

; <label>:175                                     ; preds = %158
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 433, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i32 0, i32 0)) #5
  unreachable

; <label>:176                                     ; preds = %161
  br label %177

; <label>:177                                     ; preds = %176, %144
  br label %178

; <label>:178                                     ; preds = %177, %135
  %179 = load i64, i64* %count, align 8
  store i64 %179, i64* %1, align 8
  br label %180

; <label>:180                                     ; preds = %178, %29, %18, %10
  %181 = load i64, i64* %1, align 8
  ret i64 %181
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.adtree_vary* @makeVary(i64 %parentIndex, i64 %index, i64 %start, i64 %numRecord, %struct.data* %dataPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.data*, align 8
  %varyPtr = alloca %struct.adtree_vary*, align 8
  %num0 = alloca i64, align 8
  %num1 = alloca i64, align 8
  %mostCommonValue = alloca i64, align 8
  store i64 %parentIndex, i64* %1, align 8
  store i64 %index, i64* %2, align 8
  store i64 %start, i64* %3, align 8
  store i64 %numRecord, i64* %4, align 8
  store %struct.data* %dataPtr, %struct.data** %5, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call %struct.adtree_vary* @allocVary(i64 %6)
  store %struct.adtree_vary* %7, %struct.adtree_vary** %varyPtr, align 8
  %8 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %9 = icmp ne %struct.adtree_vary* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  br label %13

; <label>:11                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.makeVary, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = load i64, i64* %1, align 8
  %15 = add nsw i64 %14, 1
  %16 = load i64, i64* %2, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %26

; <label>:18                                      ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = icmp sgt i64 %19, 1
  br i1 %20, label %21, label %26

; <label>:21                                      ; preds = %18
  %22 = load %struct.data*, %struct.data** %5, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %2, align 8
  call void @data_sort(%struct.data* %22, i64 %23, i64 %24, i64 %25)
  br label %26

; <label>:26                                      ; preds = %21, %18, %13
  %27 = load %struct.data*, %struct.data** %5, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %2, align 8
  %31 = call i64 @data_findSplit(%struct.data* %27, i64 %28, i64 %29, i64 %30)
  store i64 %31, i64* %num0, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %num0, align 8
  %34 = sub nsw i64 %32, %33
  store i64 %34, i64* %num1, align 8
  %35 = load i64, i64* %num0, align 8
  %36 = load i64, i64* %num1, align 8
  %37 = icmp sge i64 %35, %36
  %38 = select i1 %37, i32 0, i32 1
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %mostCommonValue, align 8
  %40 = load i64, i64* %mostCommonValue, align 8
  %41 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %42 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %num0, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %48, label %45

; <label>:45                                      ; preds = %26
  %46 = load i64, i64* %mostCommonValue, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

; <label>:48                                      ; preds = %45, %26
  %49 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %50 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %49, i32 0, i32 2
  store %struct.adtree_node* null, %struct.adtree_node** %50, align 8
  br label %64

; <label>:51                                      ; preds = %45
  %52 = load i64, i64* %2, align 8
  %53 = load i64, i64* %2, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* %num0, align 8
  %56 = load %struct.data*, %struct.data** %5, align 8
  %57 = call %struct.adtree_node* @makeNode(i64 %52, i64 %53, i64 %54, i64 %55, %struct.data* %56)
  %58 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %59 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %58, i32 0, i32 2
  store %struct.adtree_node* %57, %struct.adtree_node** %59, align 8
  %60 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %61 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %60, i32 0, i32 2
  %62 = load %struct.adtree_node*, %struct.adtree_node** %61, align 8
  %63 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  br label %64

; <label>:64                                      ; preds = %51, %48
  %65 = load i64, i64* %num1, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %70, label %67

; <label>:67                                      ; preds = %64
  %68 = load i64, i64* %mostCommonValue, align 8
  %69 = icmp eq i64 %68, 1
  br i1 %69, label %70, label %73

; <label>:70                                      ; preds = %67, %64
  %71 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %72 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %71, i32 0, i32 3
  store %struct.adtree_node* null, %struct.adtree_node** %72, align 8
  br label %88

; <label>:73                                      ; preds = %67
  %74 = load i64, i64* %2, align 8
  %75 = load i64, i64* %2, align 8
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* %num0, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i64, i64* %num1, align 8
  %80 = load %struct.data*, %struct.data** %5, align 8
  %81 = call %struct.adtree_node* @makeNode(i64 %74, i64 %75, i64 %78, i64 %79, %struct.data* %80)
  %82 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %83 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %82, i32 0, i32 3
  store %struct.adtree_node* %81, %struct.adtree_node** %83, align 8
  %84 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  %85 = getelementptr inbounds %struct.adtree_vary, %struct.adtree_vary* %84, i32 0, i32 3
  %86 = load %struct.adtree_node*, %struct.adtree_node** %85, align 8
  %87 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %86, i32 0, i32 1
  store i64 1, i64* %87, align 8
  br label %88

; <label>:88                                      ; preds = %73, %70
  %89 = load %struct.adtree_vary*, %struct.adtree_vary** %varyPtr, align 8
  ret %struct.adtree_vary* %89
}

declare i64 @vector_pushBack(%struct.vector*, i8*) #2

declare i64 @data_findSplit(%struct.data*, i64, i64, i64) #2

declare %struct.vector* @Pvector_alloc(i64) #2

declare void @Pvector_free(%struct.vector*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
