; ModuleID = 'data.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i64, i64, i8*, %struct.random* }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.net = type opaque
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.queue = type opaque
%struct.vector = type { i64, i64, i8** }
%struct.bitmap = type { i64, i64, i64* }

@.str = private unnamed_addr constant [7 x i8] c"netPtr\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"data.c\00", align 1
@__PRETTY_FUNCTION__.data_generate = private unnamed_addr constant [49 x i8] c"net_t *data_generate(data_t *, long, long, long)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"thresholdsTable\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"thresholds\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"workQueuePtr\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"dependencyVectorPtr\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"orderedBitmapPtr\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"doneBitmapPtr\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"numOrder == numVar\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"value != DATA_INIT\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"record <= (dataPtr->records + numRecord * numVar)\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"start >= 0 && start <= dataPtr->numRecord\00", align 1
@__PRETTY_FUNCTION__.data_sort = private unnamed_addr constant [43 x i8] c"void data_sort(data_t *, long, long, long)\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"num >= 0 && num <= dataPtr->numRecord\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"start + num >= 0 && start + num <= dataPtr->numRecord\00", align 1

; Function Attrs: nounwind uwtable
define %struct.data* @data_alloc(i64 %numVar, i64 %numRecord, %struct.random* %randomPtr) #0 {
  %1 = alloca %struct.data*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.random*, align 8
  %dataPtr = alloca %struct.data*, align 8
  %numDatum = alloca i64, align 8
  store i64 %numVar, i64* %2, align 8
  store i64 %numRecord, i64* %3, align 8
  store %struct.random* %randomPtr, %struct.random** %4, align 8
  %5 = call noalias i8* @malloc(i64 32) #6
  %6 = bitcast i8* %5 to %struct.data*
  store %struct.data* %6, %struct.data** %dataPtr, align 8
  %7 = load %struct.data*, %struct.data** %dataPtr, align 8
  %8 = icmp ne %struct.data* %7, null
  br i1 %8, label %9, label %40

; <label>:9                                       ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = mul nsw i64 %10, %11
  store i64 %12, i64* %numDatum, align 8
  %13 = load i64, i64* %numDatum, align 8
  %14 = mul i64 %13, 1
  %15 = call noalias i8* @malloc(i64 %14) #6
  %16 = load %struct.data*, %struct.data** %dataPtr, align 8
  %17 = getelementptr inbounds %struct.data, %struct.data* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.data*, %struct.data** %dataPtr, align 8
  %19 = getelementptr inbounds %struct.data, %struct.data* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %9
  %23 = load %struct.data*, %struct.data** %dataPtr, align 8
  %24 = bitcast %struct.data* %23 to i8*
  call void @free(i8* %24) #6
  store %struct.data* null, %struct.data** %1, align 8
  br label %42

; <label>:25                                      ; preds = %9
  %26 = load %struct.data*, %struct.data** %dataPtr, align 8
  %27 = getelementptr inbounds %struct.data, %struct.data* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* %numDatum, align 8
  %30 = mul i64 %29, 1
  call void @llvm.memset.p0i8.i64(i8* %28, i8 2, i64 %30, i32 1, i1 false)
  %31 = load i64, i64* %2, align 8
  %32 = load %struct.data*, %struct.data** %dataPtr, align 8
  %33 = getelementptr inbounds %struct.data, %struct.data* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.data*, %struct.data** %dataPtr, align 8
  %36 = getelementptr inbounds %struct.data, %struct.data* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.random*, %struct.random** %4, align 8
  %38 = load %struct.data*, %struct.data** %dataPtr, align 8
  %39 = getelementptr inbounds %struct.data, %struct.data* %38, i32 0, i32 3
  store %struct.random* %37, %struct.random** %39, align 8
  br label %40

; <label>:40                                      ; preds = %25, %0
  %41 = load %struct.data*, %struct.data** %dataPtr, align 8
  store %struct.data* %41, %struct.data** %1, align 8
  br label %42

; <label>:42                                      ; preds = %40, %22
  %43 = load %struct.data*, %struct.data** %1, align 8
  ret %struct.data* %43
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @data_free(%struct.data* %dataPtr) #0 {
  %1 = alloca %struct.data*, align 8
  store %struct.data* %dataPtr, %struct.data** %1, align 8
  %2 = load %struct.data*, %struct.data** %1, align 8
  %3 = getelementptr inbounds %struct.data, %struct.data* %2, i32 0, i32 2
  %4 = load i8*, i8** %3, align 8
  call void @free(i8* %4) #6
  %5 = load %struct.data*, %struct.data** %1, align 8
  %6 = bitcast %struct.data* %5 to i8*
  call void @free(i8* %6) #6
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.net* @data_generate(%struct.data* %dataPtr, i64 %seed, i64 %maxNumParent, i64 %percentParent) #0 {
  %1 = alloca %struct.data*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %randomPtr = alloca %struct.random*, align 8
  %numVar = alloca i64, align 8
  %netPtr = alloca %struct.net*, align 8
  %thresholdsTable = alloca i64**, align 8
  %v = alloca i64, align 8
  %parentIdListPtr = alloca %struct.list*, align 8
  %numThreshold = alloca i64, align 8
  %thresholds = alloca i64*, align 8
  %t = alloca i64, align 8
  %threshold = alloca i64, align 8
  %order = alloca i64*, align 8
  %numOrder = alloca i64, align 8
  %workQueuePtr = alloca %struct.queue*, align 8
  %dependencyVectorPtr = alloca %struct.vector*, align 8
  %orderedBitmapPtr = alloca %struct.bitmap*, align 8
  %doneBitmapPtr = alloca %struct.bitmap*, align 8
  %childIdListPtr = alloca %struct.list*, align 8
  %numChild = alloca i64, align 8
  %status = alloca i64, align 8
  %id = alloca i64, align 8
  %parentIdListPtr1 = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %parentId = alloca i64, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %id2 = alloca i64, align 8
  %record = alloca i8*, align 8
  %r = alloca i64, align 8
  %numRecord = alloca i64, align 8
  %o = alloca i64, align 8
  %v3 = alloca i64, align 8
  %parentIdListPtr4 = alloca %struct.list*, align 8
  %index = alloca i64, align 8
  %it5 = alloca %struct.list_node*, align 8
  %parentId6 = alloca i64, align 8
  %value = alloca i64, align 8
  %rnd = alloca i64, align 8
  %threshold7 = alloca i64, align 8
  store %struct.data* %dataPtr, %struct.data** %1, align 8
  store i64 %seed, i64* %2, align 8
  store i64 %maxNumParent, i64* %3, align 8
  store i64 %percentParent, i64* %4, align 8
  %5 = load %struct.data*, %struct.data** %1, align 8
  %6 = getelementptr inbounds %struct.data, %struct.data* %5, i32 0, i32 3
  %7 = load %struct.random*, %struct.random** %6, align 8
  store %struct.random* %7, %struct.random** %randomPtr, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = load %struct.random*, %struct.random** %randomPtr, align 8
  %12 = load i64, i64* %2, align 8
  call void @random_seed(%struct.random* %11, i64 %12)
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = load %struct.data*, %struct.data** %1, align 8
  %15 = getelementptr inbounds %struct.data, %struct.data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %numVar, align 8
  %17 = load i64, i64* %numVar, align 8
  %18 = call %struct.net* @net_alloc(i64 %17)
  store %struct.net* %18, %struct.net** %netPtr, align 8
  %19 = load %struct.net*, %struct.net** %netPtr, align 8
  %20 = icmp ne %struct.net* %19, null
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %13
  br label %24

; <label>:22                                      ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 149, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %24

; <label>:24                                      ; preds = %23, %21
  %25 = load %struct.net*, %struct.net** %netPtr, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.random*, %struct.random** %randomPtr, align 8
  call void @net_generateRandomEdges(%struct.net* %25, i64 %26, i64 %27, %struct.random* %28)
  %29 = load i64, i64* %numVar, align 8
  %30 = mul i64 %29, 8
  %31 = call noalias i8* @malloc(i64 %30) #6
  %32 = bitcast i8* %31 to i64**
  store i64** %32, i64*** %thresholdsTable, align 8
  %33 = load i64**, i64*** %thresholdsTable, align 8
  %34 = icmp ne i64** %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %24
  br label %38

; <label>:36                                      ; preds = %24
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  store i64 0, i64* %v, align 8
  br label %39

; <label>:39                                      ; preds = %82, %38
  %40 = load i64, i64* %v, align 8
  %41 = load i64, i64* %numVar, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %85

; <label>:43                                      ; preds = %39
  %44 = load %struct.net*, %struct.net** %netPtr, align 8
  %45 = load i64, i64* %v, align 8
  %46 = call %struct.list* @net_getParentIdListPtr(%struct.net* %44, i64 %45)
  store %struct.list* %46, %struct.list** %parentIdListPtr, align 8
  %47 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %48 = call i64 @list_getSize(%struct.list* %47)
  %49 = trunc i64 %48 to i32
  %50 = shl i32 1, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %numThreshold, align 8
  %52 = load i64, i64* %numThreshold, align 8
  %53 = mul i64 %52, 8
  %54 = call noalias i8* @malloc(i64 %53) #6
  %55 = bitcast i8* %54 to i64*
  store i64* %55, i64** %thresholds, align 8
  %56 = load i64*, i64** %thresholds, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %43
  br label %61

; <label>:59                                      ; preds = %43
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 164, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %61

; <label>:61                                      ; preds = %60, %58
  store i64 0, i64* %t, align 8
  br label %62

; <label>:62                                      ; preds = %74, %61
  %63 = load i64, i64* %t, align 8
  %64 = load i64, i64* %numThreshold, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %77

; <label>:66                                      ; preds = %62
  %67 = load %struct.random*, %struct.random** %randomPtr, align 8
  %68 = call i64 @random_generate(%struct.random* %67)
  %69 = urem i64 %68, 101
  store i64 %69, i64* %threshold, align 8
  %70 = load i64, i64* %threshold, align 8
  %71 = load i64, i64* %t, align 8
  %72 = load i64*, i64** %thresholds, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 %71
  store i64 %70, i64* %73, align 8
  br label %74

; <label>:74                                      ; preds = %66
  %75 = load i64, i64* %t, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %t, align 8
  br label %62

; <label>:77                                      ; preds = %62
  %78 = load i64*, i64** %thresholds, align 8
  %79 = load i64, i64* %v, align 8
  %80 = load i64**, i64*** %thresholdsTable, align 8
  %81 = getelementptr inbounds i64*, i64** %80, i64 %79
  store i64* %78, i64** %81, align 8
  br label %82

; <label>:82                                      ; preds = %77
  %83 = load i64, i64* %v, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %v, align 8
  br label %39

; <label>:85                                      ; preds = %39
  %86 = load i64, i64* %numVar, align 8
  %87 = mul i64 %86, 8
  %88 = call noalias i8* @malloc(i64 %87) #6
  %89 = bitcast i8* %88 to i64*
  store i64* %89, i64** %order, align 8
  %90 = load i64*, i64** %order, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %92, label %93

; <label>:92                                      ; preds = %85
  br label %95

; <label>:93                                      ; preds = %85
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 178, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %95

; <label>:95                                      ; preds = %94, %92
  store i64 0, i64* %numOrder, align 8
  %96 = call %struct.queue* @queue_alloc(i64 -1)
  store %struct.queue* %96, %struct.queue** %workQueuePtr, align 8
  %97 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %98 = icmp ne %struct.queue* %97, null
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %95
  br label %102

; <label>:100                                     ; preds = %95
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 182, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %102

; <label>:102                                     ; preds = %101, %99
  %103 = call %struct.vector* @vector_alloc(i64 1)
  store %struct.vector* %103, %struct.vector** %dependencyVectorPtr, align 8
  %104 = load %struct.vector*, %struct.vector** %dependencyVectorPtr, align 8
  %105 = icmp ne %struct.vector* %104, null
  br i1 %105, label %106, label %107

; <label>:106                                     ; preds = %102
  br label %109

; <label>:107                                     ; preds = %102
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 185, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %109

; <label>:109                                     ; preds = %108, %106
  %110 = load i64, i64* %numVar, align 8
  %111 = call %struct.bitmap* @bitmap_alloc(i64 %110)
  store %struct.bitmap* %111, %struct.bitmap** %orderedBitmapPtr, align 8
  %112 = load %struct.bitmap*, %struct.bitmap** %orderedBitmapPtr, align 8
  %113 = icmp ne %struct.bitmap* %112, null
  br i1 %113, label %114, label %115

; <label>:114                                     ; preds = %109
  br label %117

; <label>:115                                     ; preds = %109
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 188, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %117

; <label>:117                                     ; preds = %116, %114
  %118 = load %struct.bitmap*, %struct.bitmap** %orderedBitmapPtr, align 8
  call void @bitmap_clearAll(%struct.bitmap* %118)
  %119 = load i64, i64* %numVar, align 8
  %120 = call %struct.bitmap* @bitmap_alloc(i64 %119)
  store %struct.bitmap* %120, %struct.bitmap** %doneBitmapPtr, align 8
  %121 = load %struct.bitmap*, %struct.bitmap** %doneBitmapPtr, align 8
  %122 = icmp ne %struct.bitmap* %121, null
  br i1 %122, label %123, label %124

; <label>:123                                     ; preds = %117
  br label %126

; <label>:124                                     ; preds = %117
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 192, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %126

; <label>:126                                     ; preds = %125, %123
  %127 = load %struct.bitmap*, %struct.bitmap** %doneBitmapPtr, align 8
  call void @bitmap_clearAll(%struct.bitmap* %127)
  store i64 -1, i64* %v, align 8
  br label %128

; <label>:128                                     ; preds = %234, %126
  %129 = load %struct.bitmap*, %struct.bitmap** %doneBitmapPtr, align 8
  %130 = load i64, i64* %v, align 8
  %131 = add nsw i64 %130, 1
  %132 = call i64 @bitmap_findClear(%struct.bitmap* %129, i64 %131)
  store i64 %132, i64* %v, align 8
  %133 = icmp sge i64 %132, 0
  br i1 %133, label %134, label %235

; <label>:134                                     ; preds = %128
  %135 = load %struct.net*, %struct.net** %netPtr, align 8
  %136 = load i64, i64* %v, align 8
  %137 = call %struct.list* @net_getChildIdListPtr(%struct.net* %135, i64 %136)
  store %struct.list* %137, %struct.list** %childIdListPtr, align 8
  %138 = load %struct.list*, %struct.list** %childIdListPtr, align 8
  %139 = call i64 @list_getSize(%struct.list* %138)
  store i64 %139, i64* %numChild, align 8
  %140 = load i64, i64* %numChild, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %234

; <label>:142                                     ; preds = %134
  %143 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  call void @queue_clear(%struct.queue* %143)
  %144 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %145 = load i64, i64* %v, align 8
  %146 = inttoptr i64 %145 to i8*
  %147 = call i64 @queue_push(%struct.queue* %144, i8* %146)
  store i64 %147, i64* %status, align 8
  %148 = load i64, i64* %status, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

; <label>:150                                     ; preds = %142
  br label %153

; <label>:151                                     ; preds = %142
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 208, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %153

; <label>:153                                     ; preds = %152, %150
  br label %154

; <label>:154                                     ; preds = %204, %153
  %155 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %156 = call i64 @queue_isEmpty(%struct.queue* %155)
  %157 = icmp ne i64 %156, 0
  %158 = xor i1 %157, true
  br i1 %158, label %159, label %205

; <label>:159                                     ; preds = %154
  %160 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %161 = call i8* @queue_pop(%struct.queue* %160)
  %162 = ptrtoint i8* %161 to i64
  store i64 %162, i64* %id, align 8
  %163 = load %struct.bitmap*, %struct.bitmap** %doneBitmapPtr, align 8
  %164 = load i64, i64* %id, align 8
  %165 = call i64 @bitmap_set(%struct.bitmap* %163, i64 %164)
  store i64 %165, i64* %status, align 8
  %166 = load i64, i64* %status, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

; <label>:168                                     ; preds = %159
  br label %171

; <label>:169                                     ; preds = %159
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 212, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %171

; <label>:171                                     ; preds = %170, %168
  %172 = load %struct.vector*, %struct.vector** %dependencyVectorPtr, align 8
  %173 = load i64, i64* %id, align 8
  %174 = inttoptr i64 %173 to i8*
  %175 = call i64 @vector_pushBack(%struct.vector* %172, i8* %174)
  store i64 %175, i64* %status, align 8
  %176 = load i64, i64* %status, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

; <label>:178                                     ; preds = %171
  br label %181

; <label>:179                                     ; preds = %171
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 214, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %181

; <label>:181                                     ; preds = %180, %178
  %182 = load %struct.net*, %struct.net** %netPtr, align 8
  %183 = load i64, i64* %id, align 8
  %184 = call %struct.list* @net_getParentIdListPtr(%struct.net* %182, i64 %183)
  store %struct.list* %184, %struct.list** %parentIdListPtr1, align 8
  %185 = load %struct.list*, %struct.list** %parentIdListPtr1, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %185)
  br label %186

; <label>:186                                     ; preds = %203, %181
  %187 = load %struct.list*, %struct.list** %parentIdListPtr1, align 8
  %188 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %187) #8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %204

; <label>:190                                     ; preds = %186
  %191 = load %struct.list*, %struct.list** %parentIdListPtr1, align 8
  %192 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %191)
  %193 = ptrtoint i8* %192 to i64
  store i64 %193, i64* %parentId, align 8
  %194 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %195 = load i64, i64* %parentId, align 8
  %196 = inttoptr i64 %195 to i8*
  %197 = call i64 @queue_push(%struct.queue* %194, i8* %196)
  store i64 %197, i64* %status, align 8
  %198 = load i64, i64* %status, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

; <label>:200                                     ; preds = %190
  br label %203

; <label>:201                                     ; preds = %190
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %203

; <label>:203                                     ; preds = %202, %200
  br label %186

; <label>:204                                     ; preds = %186
  br label %154

; <label>:205                                     ; preds = %154
  %206 = load %struct.vector*, %struct.vector** %dependencyVectorPtr, align 8
  %207 = call i64 @vector_getSize(%struct.vector* %206)
  store i64 %207, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %208

; <label>:208                                     ; preds = %230, %205
  %209 = load i64, i64* %i, align 8
  %210 = load i64, i64* %n, align 8
  %211 = icmp slt i64 %209, %210
  br i1 %211, label %212, label %233

; <label>:212                                     ; preds = %208
  %213 = load %struct.vector*, %struct.vector** %dependencyVectorPtr, align 8
  %214 = call i8* @vector_popBack(%struct.vector* %213)
  %215 = ptrtoint i8* %214 to i64
  store i64 %215, i64* %id2, align 8
  %216 = load %struct.bitmap*, %struct.bitmap** %orderedBitmapPtr, align 8
  %217 = load i64, i64* %id2, align 8
  %218 = call i64 @bitmap_isSet(%struct.bitmap* %216, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %229, label %220

; <label>:220                                     ; preds = %212
  %221 = load %struct.bitmap*, %struct.bitmap** %orderedBitmapPtr, align 8
  %222 = load i64, i64* %id2, align 8
  %223 = call i64 @bitmap_set(%struct.bitmap* %221, i64 %222)
  %224 = load i64, i64* %id2, align 8
  %225 = load i64, i64* %numOrder, align 8
  %226 = add nsw i64 %225, 1
  store i64 %226, i64* %numOrder, align 8
  %227 = load i64*, i64** %order, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 %225
  store i64 %224, i64* %228, align 8
  br label %229

; <label>:229                                     ; preds = %220, %212
  br label %230

; <label>:230                                     ; preds = %229
  %231 = load i64, i64* %i, align 8
  %232 = add nsw i64 %231, 1
  store i64 %232, i64* %i, align 8
  br label %208

; <label>:233                                     ; preds = %208
  br label %234

; <label>:234                                     ; preds = %233, %134
  br label %128

; <label>:235                                     ; preds = %128
  %236 = load i64, i64* %numOrder, align 8
  %237 = load i64, i64* %numVar, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %240

; <label>:239                                     ; preds = %235
  br label %242

; <label>:240                                     ; preds = %235
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 241, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %242

; <label>:242                                     ; preds = %241, %239
  %243 = load %struct.data*, %struct.data** %1, align 8
  %244 = getelementptr inbounds %struct.data, %struct.data* %243, i32 0, i32 2
  %245 = load i8*, i8** %244, align 8
  store i8* %245, i8** %record, align 8
  %246 = load %struct.data*, %struct.data** %1, align 8
  %247 = getelementptr inbounds %struct.data, %struct.data* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %numRecord, align 8
  store i64 0, i64* %r, align 8
  br label %249

; <label>:249                                     ; preds = %329, %242
  %250 = load i64, i64* %r, align 8
  %251 = load i64, i64* %numRecord, align 8
  %252 = icmp slt i64 %250, %251
  br i1 %252, label %253, label %332

; <label>:253                                     ; preds = %249
  store i64 0, i64* %o, align 8
  br label %254

; <label>:254                                     ; preds = %309, %253
  %255 = load i64, i64* %o, align 8
  %256 = load i64, i64* %numOrder, align 8
  %257 = icmp slt i64 %255, %256
  br i1 %257, label %258, label %312

; <label>:258                                     ; preds = %254
  %259 = load i64, i64* %o, align 8
  %260 = load i64*, i64** %order, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 %259
  %262 = load i64, i64* %261, align 8
  store i64 %262, i64* %v3, align 8
  %263 = load %struct.net*, %struct.net** %netPtr, align 8
  %264 = load i64, i64* %v3, align 8
  %265 = call %struct.list* @net_getParentIdListPtr(%struct.net* %263, i64 %264)
  store %struct.list* %265, %struct.list** %parentIdListPtr4, align 8
  store i64 0, i64* %index, align 8
  %266 = load %struct.list*, %struct.list** %parentIdListPtr4, align 8
  call void @list_iter_reset(%struct.list_node** %it5, %struct.list* %266)
  br label %267

; <label>:267                                     ; preds = %285, %258
  %268 = load %struct.list*, %struct.list** %parentIdListPtr4, align 8
  %269 = call i64 @list_iter_hasNext(%struct.list_node** %it5, %struct.list* %268) #8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %290

; <label>:271                                     ; preds = %267
  %272 = load %struct.list*, %struct.list** %parentIdListPtr4, align 8
  %273 = call i8* @list_iter_next(%struct.list_node** %it5, %struct.list* %272)
  %274 = ptrtoint i8* %273 to i64
  store i64 %274, i64* %parentId6, align 8
  %275 = load i64, i64* %parentId6, align 8
  %276 = load i8*, i8** %record, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 %275
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i64
  store i64 %279, i64* %value, align 8
  %280 = load i64, i64* %value, align 8
  %281 = icmp ne i64 %280, 2
  br i1 %281, label %282, label %283

; <label>:282                                     ; preds = %271
  br label %285

; <label>:283                                     ; preds = %271
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 261, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %285

; <label>:285                                     ; preds = %284, %282
  %286 = load i64, i64* %index, align 8
  %287 = shl i64 %286, 1
  %288 = load i64, i64* %value, align 8
  %289 = add nsw i64 %287, %288
  store i64 %289, i64* %index, align 8
  br label %267

; <label>:290                                     ; preds = %267
  %291 = load %struct.random*, %struct.random** %randomPtr, align 8
  %292 = call i64 @random_generate(%struct.random* %291)
  %293 = urem i64 %292, 100
  store i64 %293, i64* %rnd, align 8
  %294 = load i64, i64* %index, align 8
  %295 = load i64, i64* %v3, align 8
  %296 = load i64**, i64*** %thresholdsTable, align 8
  %297 = getelementptr inbounds i64*, i64** %296, i64 %295
  %298 = load i64*, i64** %297, align 8
  %299 = getelementptr inbounds i64, i64* %298, i64 %294
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %threshold7, align 8
  %301 = load i64, i64* %rnd, align 8
  %302 = load i64, i64* %threshold7, align 8
  %303 = icmp slt i64 %301, %302
  %304 = select i1 %303, i32 1, i32 0
  %305 = trunc i32 %304 to i8
  %306 = load i64, i64* %v3, align 8
  %307 = load i8*, i8** %record, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 %306
  store i8 %305, i8* %308, align 1
  br label %309

; <label>:309                                     ; preds = %290
  %310 = load i64, i64* %o, align 8
  %311 = add nsw i64 %310, 1
  store i64 %311, i64* %o, align 8
  br label %254

; <label>:312                                     ; preds = %254
  %313 = load i64, i64* %numVar, align 8
  %314 = load i8*, i8** %record, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 %313
  store i8* %315, i8** %record, align 8
  %316 = load i8*, i8** %record, align 8
  %317 = load %struct.data*, %struct.data** %1, align 8
  %318 = getelementptr inbounds %struct.data, %struct.data* %317, i32 0, i32 2
  %319 = load i8*, i8** %318, align 8
  %320 = load i64, i64* %numRecord, align 8
  %321 = load i64, i64* %numVar, align 8
  %322 = mul nsw i64 %320, %321
  %323 = getelementptr inbounds i8, i8* %319, i64 %322
  %324 = icmp ule i8* %316, %323
  br i1 %324, label %325, label %326

; <label>:325                                     ; preds = %312
  br label %328

; <label>:326                                     ; preds = %312
  call void @__assert_fail(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 269, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.data_generate, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %328

; <label>:328                                     ; preds = %327, %325
  br label %329

; <label>:329                                     ; preds = %328
  %330 = load i64, i64* %r, align 8
  %331 = add nsw i64 %330, 1
  store i64 %331, i64* %r, align 8
  br label %249

; <label>:332                                     ; preds = %249
  %333 = load %struct.bitmap*, %struct.bitmap** %doneBitmapPtr, align 8
  call void @bitmap_free(%struct.bitmap* %333)
  %334 = load %struct.bitmap*, %struct.bitmap** %orderedBitmapPtr, align 8
  call void @bitmap_free(%struct.bitmap* %334)
  %335 = load %struct.vector*, %struct.vector** %dependencyVectorPtr, align 8
  call void @vector_free(%struct.vector* %335)
  %336 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  call void @queue_free(%struct.queue* %336)
  %337 = load i64*, i64** %order, align 8
  %338 = bitcast i64* %337 to i8*
  call void @free(i8* %338) #6
  store i64 0, i64* %v, align 8
  br label %339

; <label>:339                                     ; preds = %349, %332
  %340 = load i64, i64* %v, align 8
  %341 = load i64, i64* %numVar, align 8
  %342 = icmp slt i64 %340, %341
  br i1 %342, label %343, label %352

; <label>:343                                     ; preds = %339
  %344 = load i64, i64* %v, align 8
  %345 = load i64**, i64*** %thresholdsTable, align 8
  %346 = getelementptr inbounds i64*, i64** %345, i64 %344
  %347 = load i64*, i64** %346, align 8
  %348 = bitcast i64* %347 to i8*
  call void @free(i8* %348) #6
  br label %349

; <label>:349                                     ; preds = %343
  %350 = load i64, i64* %v, align 8
  %351 = add nsw i64 %350, 1
  store i64 %351, i64* %v, align 8
  br label %339

; <label>:352                                     ; preds = %339
  %353 = load i64**, i64*** %thresholdsTable, align 8
  %354 = bitcast i64** %353 to i8*
  call void @free(i8* %354) #6
  %355 = load %struct.net*, %struct.net** %netPtr, align 8
  ret %struct.net* %355
}

declare void @random_seed(%struct.random*, i64) #3

declare %struct.net* @net_alloc(i64) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

declare void @net_generateRandomEdges(%struct.net*, i64, i64, %struct.random*) #3

declare %struct.list* @net_getParentIdListPtr(%struct.net*, i64) #3

declare i64 @list_getSize(%struct.list*) #3

declare i64 @random_generate(%struct.random*) #3

declare %struct.queue* @queue_alloc(i64) #3

declare %struct.vector* @vector_alloc(i64) #3

declare %struct.bitmap* @bitmap_alloc(i64) #3

declare void @bitmap_clearAll(%struct.bitmap*) #3

declare i64 @bitmap_findClear(%struct.bitmap*, i64) #3

declare %struct.list* @net_getChildIdListPtr(%struct.net*, i64) #3

declare void @queue_clear(%struct.queue*) #3

declare i64 @queue_push(%struct.queue*, i8*) #3

declare i64 @queue_isEmpty(%struct.queue*) #3

declare i8* @queue_pop(%struct.queue*) #3

declare i64 @bitmap_set(%struct.bitmap*, i64) #3

declare i64 @vector_pushBack(%struct.vector*, i8*) #3

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #3

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #5

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #3

declare i64 @vector_getSize(%struct.vector*) #3

declare i8* @vector_popBack(%struct.vector*) #3

declare i64 @bitmap_isSet(%struct.bitmap*, i64) #3

declare void @bitmap_free(%struct.bitmap*) #3

declare void @vector_free(%struct.vector*) #3

declare void @queue_free(%struct.queue*) #3

; Function Attrs: nounwind uwtable
define i8* @data_getRecord(%struct.data* %dataPtr, i64 %index) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.data*, align 8
  %3 = alloca i64, align 8
  store %struct.data* %dataPtr, %struct.data** %2, align 8
  store i64 %index, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.data*, %struct.data** %2, align 8
  %9 = getelementptr inbounds %struct.data, %struct.data* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %6, %0
  store i8* null, i8** %1, align 8
  br label %23

; <label>:13                                      ; preds = %6
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.data*, %struct.data** %2, align 8
  %16 = getelementptr inbounds %struct.data, %struct.data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = mul nsw i64 %14, %17
  %19 = load %struct.data*, %struct.data** %2, align 8
  %20 = getelementptr inbounds %struct.data, %struct.data* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 %18
  store i8* %22, i8** %1, align 8
  br label %23

; <label>:23                                      ; preds = %13, %12
  %24 = load i8*, i8** %1, align 8
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define i64 @data_copy(%struct.data* %dstPtr, %struct.data* %srcPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.data*, align 8
  %3 = alloca %struct.data*, align 8
  %numDstDatum = alloca i64, align 8
  %numSrcDatum = alloca i64, align 8
  store %struct.data* %dstPtr, %struct.data** %2, align 8
  store %struct.data* %srcPtr, %struct.data** %3, align 8
  %4 = load %struct.data*, %struct.data** %2, align 8
  %5 = getelementptr inbounds %struct.data, %struct.data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.data*, %struct.data** %2, align 8
  %8 = getelementptr inbounds %struct.data, %struct.data* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = mul nsw i64 %6, %9
  store i64 %10, i64* %numDstDatum, align 8
  %11 = load %struct.data*, %struct.data** %3, align 8
  %12 = getelementptr inbounds %struct.data, %struct.data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.data*, %struct.data** %3, align 8
  %15 = getelementptr inbounds %struct.data, %struct.data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = mul nsw i64 %13, %16
  store i64 %17, i64* %numSrcDatum, align 8
  %18 = load i64, i64* %numDstDatum, align 8
  %19 = load i64, i64* %numSrcDatum, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %35

; <label>:21                                      ; preds = %0
  %22 = load %struct.data*, %struct.data** %2, align 8
  %23 = getelementptr inbounds %struct.data, %struct.data* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  call void @free(i8* %24) #6
  %25 = load i64, i64* %numSrcDatum, align 8
  %26 = call noalias i8* @calloc(i64 %25, i64 1) #6
  %27 = load %struct.data*, %struct.data** %2, align 8
  %28 = getelementptr inbounds %struct.data, %struct.data* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.data*, %struct.data** %2, align 8
  %30 = getelementptr inbounds %struct.data, %struct.data* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %21
  store i64 0, i64* %1, align 8
  br label %54

; <label>:34                                      ; preds = %21
  br label %35

; <label>:35                                      ; preds = %34, %0
  %36 = load %struct.data*, %struct.data** %3, align 8
  %37 = getelementptr inbounds %struct.data, %struct.data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.data*, %struct.data** %2, align 8
  %40 = getelementptr inbounds %struct.data, %struct.data* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.data*, %struct.data** %3, align 8
  %42 = getelementptr inbounds %struct.data, %struct.data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.data*, %struct.data** %2, align 8
  %45 = getelementptr inbounds %struct.data, %struct.data* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.data*, %struct.data** %2, align 8
  %47 = getelementptr inbounds %struct.data, %struct.data* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.data*, %struct.data** %3, align 8
  %50 = getelementptr inbounds %struct.data, %struct.data* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %numSrcDatum, align 8
  %53 = mul i64 %52, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %51, i64 %53, i32 1, i1 false)
  store i64 1, i64* %1, align 8
  br label %54

; <label>:54                                      ; preds = %35, %33
  %55 = load i64, i64* %1, align 8
  ret i64 %55
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @data_sort(%struct.data* %dataPtr, i64 %start, i64 %num, i64 %offset) #0 {
  %1 = alloca %struct.data*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %numVar = alloca i64, align 8
  store %struct.data* %dataPtr, %struct.data** %1, align 8
  store i64 %start, i64* %2, align 8
  store i64 %num, i64* %3, align 8
  store i64 %offset, i64* %4, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %7, label %14

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %2, align 8
  %9 = load %struct.data*, %struct.data** %1, align 8
  %10 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %8, %11
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %7
  br label %16

; <label>:14                                      ; preds = %7, %0
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 366, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.data_sort, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = load i64, i64* %3, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.data*, %struct.data** %1, align 8
  %22 = getelementptr inbounds %struct.data, %struct.data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %19
  br label %28

; <label>:26                                      ; preds = %19, %16
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 367, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.data_sort, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %28

; <label>:28                                      ; preds = %27, %25
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* %3, align 8
  %31 = add nsw i64 %29, %30
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %42

; <label>:33                                      ; preds = %28
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.data*, %struct.data** %1, align 8
  %38 = getelementptr inbounds %struct.data, %struct.data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %36, %39
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %33
  br label %44

; <label>:42                                      ; preds = %33, %28
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 368, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.data_sort, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %44

; <label>:44                                      ; preds = %43, %41
  %45 = load %struct.data*, %struct.data** %1, align 8
  %46 = getelementptr inbounds %struct.data, %struct.data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %numVar, align 8
  %48 = load %struct.data*, %struct.data** %1, align 8
  %49 = getelementptr inbounds %struct.data, %struct.data* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* %numVar, align 8
  %53 = mul nsw i64 %51, %52
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i64, i64* %3, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i64, i64* %numVar, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i64, i64* %numVar, align 8
  %60 = load i64, i64* %4, align 8
  call void @sort(i8* %54, i32 %56, i32 %58, i32 (i8*, i8*, i64, i64)* @compareRecord, i64 %59, i64 %60)
  ret void
}

declare void @sort(i8*, i32, i32, i32 (i8*, i8*, i64, i64)*, i64, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @compareRecord(i8* %p1, i8* %p2, i64 %n, i64 %offset) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %i = alloca i64, align 8
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %u1 = alloca i8, align 1
  %u2 = alloca i8, align 1
  store i8* %p1, i8** %2, align 8
  store i8* %p2, i8** %3, align 8
  store i64 %n, i64* %4, align 8
  store i64 %offset, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = sub nsw i64 %6, %7
  store i64 %8, i64* %i, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8* %11, i8** %s1, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %14, i8** %s2, align 8
  br label %15

; <label>:15                                      ; preds = %37, %0
  %16 = load i64, i64* %i, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %i, align 8
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %38

; <label>:19                                      ; preds = %15
  %20 = load i8*, i8** %s1, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %s1, align 8
  %22 = load i8, i8* %20, align 1
  store i8 %22, i8* %u1, align 1
  %23 = load i8*, i8** %s2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %s2, align 8
  %25 = load i8, i8* %23, align 1
  store i8 %25, i8* %u2, align 1
  %26 = load i8, i8* %u1, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %u2, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %37

; <label>:31                                      ; preds = %19
  %32 = load i8, i8* %u1, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %u2, align 1
  %35 = zext i8 %34 to i32
  %36 = sub nsw i32 %33, %35
  store i32 %36, i32* %1, align 4
  br label %39

; <label>:37                                      ; preds = %19
  br label %15

; <label>:38                                      ; preds = %15
  store i32 0, i32* %1, align 4
  br label %39

; <label>:39                                      ; preds = %38, %31
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define i64 @data_findSplit(%struct.data* %dataPtr, i64 %start, i64 %num, i64 %offset) #0 {
  %1 = alloca %struct.data*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  %numVar = alloca i64, align 8
  %records = alloca i8*, align 8
  %mid = alloca i64, align 8
  store %struct.data* %dataPtr, %struct.data** %1, align 8
  store i64 %start, i64* %2, align 8
  store i64 %num, i64* %3, align 8
  store i64 %offset, i64* %4, align 8
  %5 = load i64, i64* %2, align 8
  store i64 %5, i64* %low, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = add nsw i64 %6, %7
  %9 = sub nsw i64 %8, 1
  store i64 %9, i64* %high, align 8
  %10 = load %struct.data*, %struct.data** %1, align 8
  %11 = getelementptr inbounds %struct.data, %struct.data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %numVar, align 8
  %13 = load %struct.data*, %struct.data** %1, align 8
  %14 = getelementptr inbounds %struct.data, %struct.data* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %records, align 8
  br label %16

; <label>:16                                      ; preds = %41, %0
  %17 = load i64, i64* %low, align 8
  %18 = load i64, i64* %high, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %42

; <label>:20                                      ; preds = %16
  %21 = load i64, i64* %low, align 8
  %22 = load i64, i64* %high, align 8
  %23 = add nsw i64 %21, %22
  %24 = sdiv i64 %23, 2
  store i64 %24, i64* %mid, align 8
  %25 = load i64, i64* %numVar, align 8
  %26 = load i64, i64* %mid, align 8
  %27 = mul nsw i64 %25, %26
  %28 = load i64, i64* %4, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i8*, i8** %records, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 %29
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

; <label>:35                                      ; preds = %20
  %36 = load i64, i64* %mid, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %low, align 8
  br label %41

; <label>:38                                      ; preds = %20
  %39 = load i64, i64* %mid, align 8
  %40 = sub nsw i64 %39, 1
  store i64 %40, i64* %high, align 8
  br label %41

; <label>:41                                      ; preds = %38, %35
  br label %16

; <label>:42                                      ; preds = %16
  %43 = load i64, i64* %low, align 8
  %44 = load i64, i64* %2, align 8
  %45 = sub nsw i64 %43, %44
  ret i64 %45
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
