; ModuleID = '../bin/learner.stats.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.learner = type { %struct.adtree*, %struct.net*, float*, [56 x i8], float, [60 x i8], %struct.learner_task*, [56 x i8], %struct.list*, [56 x i8], i64, [56 x i8] }
%struct.net = type opaque
%struct.learner_task = type { i32, i64, i64, float }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.data = type { i64, i64, i8*, %struct.random* }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }
%struct.adtree = type { i64, i64, %struct.adtree_node* }
%struct.adtree_node = type { i64, i64, i64, %struct.vector* }
%struct.vector = type { i64, i64, i8** }
%struct.query = type { i64, i64 }
%struct.bitmap = type { i64, i64, i64* }
%struct.queue = type opaque
%struct.findBestTaskArg = type { i64, %struct.learner*, %struct.query*, %struct.vector*, %struct.vector*, i64, float, float, %struct.bitmap*, %struct.queue*, %struct.vector*, %struct.vector* }

@.str = private unnamed_addr constant [19 x i8] c"learnerPtr->netPtr\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"learner.c\00", align 1
@__PRETTY_FUNCTION__.learner_alloc = private unnamed_addr constant [53 x i8] c"learner_t *learner_alloc(data_t *, adtree_t *, long)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"learnerPtr->localBaseLogLikelihoods\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"learnerPtr->tasks\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"learnerPtr->taskListPtr\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@__PRETTY_FUNCTION__.TMpopTask = private unnamed_addr constant [36 x i8] c"learner_task_t *TMpopTask(list_t *)\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"queryVectorPtr\00", align 1
@__PRETTY_FUNCTION__.learner_score = private unnamed_addr constant [33 x i8] c"float learner_score(learner_t *)\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"parentQueryVectorPtr\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"queries\00", align 1
@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@__PRETTY_FUNCTION__.createTaskList = private unnamed_addr constant [28 x i8] c"void createTaskList(void *)\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"parentCount >= count\00", align 1
@__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood = private unnamed_addr constant [76 x i8] c"float computeSpecificLocalLogLikelihood(adtree_t *, vector_t *, vector_t *)\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"parentCount > 0\00", align 1
@global_operationQualityFactor = external global float, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"visitedBitmapPtr\00", align 1
@__PRETTY_FUNCTION__.learnStructure = private unnamed_addr constant [28 x i8] c"void learnStructure(void *)\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"workQueuePtr\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"aQueryVectorPtr\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"bQueryVectorPtr\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.TMpopulateQueryVectors = private unnamed_addr constant [78 x i8] c"void TMpopulateQueryVectors(net_t *, long, query_t *, vector_t *, vector_t *)\00", align 1
@__PRETTY_FUNCTION__.TMpopulateParentQueryVector = private unnamed_addr constant [71 x i8] c"void TMpopulateParentQueryVector(net_t *, long, query_t *, vector_t *)\00", align 1
@__PRETTY_FUNCTION__.TMfindBestInsertTask = private unnamed_addr constant [57 x i8] c"learner_task_t TMfindBestInsertTask(findBestTaskArg_t *)\00", align 1
@global_maxNumEdgeLearned = external global i64, align 8
@global_insertPenalty = external global i64, align 8
@__PRETTY_FUNCTION__.TMfindBestRemoveTask = private unnamed_addr constant [57 x i8] c"learner_task_t TMfindBestRemoveTask(findBestTaskArg_t *)\00", align 1
@__PRETTY_FUNCTION__.TMfindBestReverseTask = private unnamed_addr constant [58 x i8] c"learner_task_t TMfindBestReverseTask(findBestTaskArg_t *)\00", align 1
@__PRETTY_FUNCTION__.populateQueryVectors = private unnamed_addr constant [76 x i8] c"void populateQueryVectors(net_t *, long, query_t *, vector_t *, vector_t *)\00", align 1
@__PRETTY_FUNCTION__.populateParentQueryVector = private unnamed_addr constant [69 x i8] c"void populateParentQueryVector(net_t *, long, query_t *, vector_t *)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.learner* @learner_alloc(%struct.data* %dataPtr, %struct.adtree* %adtreePtr, i64 %numThread) #0 {
  %1 = alloca %struct.data*, align 8
  %2 = alloca %struct.adtree*, align 8
  %3 = alloca i64, align 8
  %learnerPtr = alloca %struct.learner*, align 8
  store %struct.data* %dataPtr, %struct.data** %1, align 8
  store %struct.adtree* %adtreePtr, %struct.adtree** %2, align 8
  store i64 %numThread, i64* %3, align 8
  %4 = call noalias i8* @malloc(i64 336) #5
  %5 = bitcast i8* %4 to %struct.learner*
  store %struct.learner* %5, %struct.learner** %learnerPtr, align 8
  %6 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %7 = icmp ne %struct.learner* %6, null
  br i1 %7, label %8, label %73

; <label>:8                                       ; preds = %0
  %9 = load %struct.adtree*, %struct.adtree** %2, align 8
  %10 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %11 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 0
  store %struct.adtree* %9, %struct.adtree** %11, align 8
  %12 = load %struct.data*, %struct.data** %1, align 8
  %13 = getelementptr inbounds %struct.data, %struct.data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.net* @net_alloc(i64 %14)
  %16 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %17 = getelementptr inbounds %struct.learner, %struct.learner* %16, i32 0, i32 1
  store %struct.net* %15, %struct.net** %17, align 8
  %18 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %19 = getelementptr inbounds %struct.learner, %struct.learner* %18, i32 0, i32 1
  %20 = load %struct.net*, %struct.net** %19, align 8
  %21 = icmp ne %struct.net* %20, null
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %8
  br label %25

; <label>:23                                      ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 237, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:25                                      ; preds = %24, %22
  %26 = load %struct.data*, %struct.data** %1, align 8
  %27 = getelementptr inbounds %struct.data, %struct.data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = mul i64 %28, 4
  %30 = call noalias i8* @malloc(i64 %29) #5
  %31 = bitcast i8* %30 to float*
  %32 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %33 = getelementptr inbounds %struct.learner, %struct.learner* %32, i32 0, i32 2
  store float* %31, float** %33, align 8
  %34 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %35 = getelementptr inbounds %struct.learner, %struct.learner* %34, i32 0, i32 2
  %36 = load float*, float** %35, align 8
  %37 = icmp ne float* %36, null
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %25
  br label %41

; <label>:39                                      ; preds = %25
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 240, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %41

; <label>:41                                      ; preds = %40, %38
  %42 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %43 = getelementptr inbounds %struct.learner, %struct.learner* %42, i32 0, i32 4
  store float 0.000000e+00, float* %43, align 8
  %44 = load %struct.data*, %struct.data** %1, align 8
  %45 = getelementptr inbounds %struct.data, %struct.data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %46, 32
  %48 = call noalias i8* @malloc(i64 %47) #5
  %49 = bitcast i8* %48 to %struct.learner_task*
  %50 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %51 = getelementptr inbounds %struct.learner, %struct.learner* %50, i32 0, i32 6
  store %struct.learner_task* %49, %struct.learner_task** %51, align 8
  %52 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %53 = getelementptr inbounds %struct.learner, %struct.learner* %52, i32 0, i32 6
  %54 = load %struct.learner_task*, %struct.learner_task** %53, align 8
  %55 = icmp ne %struct.learner_task* %54, null
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %41
  br label %59

; <label>:57                                      ; preds = %41
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 244, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  %60 = call %struct.list* @list_alloc(i64 (i8*, i8*)* @compareTask)
  %61 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %62 = getelementptr inbounds %struct.learner, %struct.learner* %61, i32 0, i32 8
  store %struct.list* %60, %struct.list** %62, align 8
  %63 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %64 = getelementptr inbounds %struct.learner, %struct.learner* %63, i32 0, i32 8
  %65 = load %struct.list*, %struct.list** %64, align 8
  %66 = icmp ne %struct.list* %65, null
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %59
  br label %70

; <label>:68                                      ; preds = %59
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 246, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %70

; <label>:70                                      ; preds = %69, %67
  %71 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %72 = getelementptr inbounds %struct.learner, %struct.learner* %71, i32 0, i32 10
  store i64 0, i64* %72, align 8
  br label %73

; <label>:73                                      ; preds = %70, %0
  %74 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  ret %struct.learner* %74
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.net* @net_alloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i64 @compareTask(i8* %aPtr, i8* %bPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %aTaskPtr = alloca %struct.learner_task*, align 8
  %bTaskPtr = alloca %struct.learner_task*, align 8
  %aScore = alloca float, align 4
  %bScore = alloca float, align 4
  store i8* %aPtr, i8** %2, align 8
  store i8* %bPtr, i8** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.learner_task*
  store %struct.learner_task* %5, %struct.learner_task** %aTaskPtr, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.learner_task*
  store %struct.learner_task* %7, %struct.learner_task** %bTaskPtr, align 8
  %8 = load %struct.learner_task*, %struct.learner_task** %aTaskPtr, align 8
  %9 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %8, i32 0, i32 3
  %10 = load float, float* %9, align 8
  store float %10, float* %aScore, align 4
  %11 = load %struct.learner_task*, %struct.learner_task** %bTaskPtr, align 8
  %12 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %11, i32 0, i32 3
  %13 = load float, float* %12, align 8
  store float %13, float* %bScore, align 4
  %14 = load float, float* %aScore, align 4
  %15 = load float, float* %bScore, align 4
  %16 = fcmp olt float %14, %15
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %0
  store i64 1, i64* %1, align 8
  br label %31

; <label>:18                                      ; preds = %0
  %19 = load float, float* %aScore, align 4
  %20 = load float, float* %bScore, align 4
  %21 = fcmp ogt float %19, %20
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %18
  store i64 -1, i64* %1, align 8
  br label %31

; <label>:23                                      ; preds = %18
  %24 = load %struct.learner_task*, %struct.learner_task** %aTaskPtr, align 8
  %25 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.learner_task*, %struct.learner_task** %bTaskPtr, align 8
  %28 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %1, align 8
  br label %31

; <label>:31                                      ; preds = %23, %22, %17
  %32 = load i64, i64* %1, align 8
  ret i64 %32
}

; Function Attrs: nounwind uwtable
define void @learner_free(%struct.learner* %learnerPtr) #0 {
  %1 = alloca %struct.learner*, align 8
  store %struct.learner* %learnerPtr, %struct.learner** %1, align 8
  %2 = load %struct.learner*, %struct.learner** %1, align 8
  %3 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 8
  %4 = load %struct.list*, %struct.list** %3, align 8
  call void @list_free(%struct.list* %4)
  %5 = load %struct.learner*, %struct.learner** %1, align 8
  %6 = getelementptr inbounds %struct.learner, %struct.learner* %5, i32 0, i32 6
  %7 = load %struct.learner_task*, %struct.learner_task** %6, align 8
  %8 = bitcast %struct.learner_task* %7 to i8*
  call void @free(i8* %8) #5
  %9 = load %struct.learner*, %struct.learner** %1, align 8
  %10 = getelementptr inbounds %struct.learner, %struct.learner* %9, i32 0, i32 2
  %11 = load float*, float** %10, align 8
  %12 = bitcast float* %11 to i8*
  call void @free(i8* %12) #5
  %13 = load %struct.learner*, %struct.learner** %1, align 8
  %14 = getelementptr inbounds %struct.learner, %struct.learner* %13, i32 0, i32 1
  %15 = load %struct.net*, %struct.net** %14, align 8
  call void @net_free(%struct.net* %15)
  %16 = load %struct.learner*, %struct.learner** %1, align 8
  %17 = bitcast %struct.learner* %16 to i8*
  call void @free(i8* %17) #5
  ret void
}

declare void @list_free(%struct.list*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @net_free(%struct.net*) #2

; Function Attrs: nounwind uwtable
define %struct.learner_task* @TMpopTask(%struct.list* %taskListPtr) #0 {
  %1 = alloca %struct.list*, align 8
  %taskPtr = alloca %struct.learner_task*, align 8
  %it = alloca %struct.list_node*, align 8
  %status = alloca i64, align 8
  store %struct.list* %taskListPtr, %struct.list** %1, align 8
  store %struct.learner_task* null, %struct.learner_task** %taskPtr, align 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %2)
  %3 = load %struct.list*, %struct.list** %1, align 8
  %4 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %3) #8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %20

; <label>:6                                       ; preds = %0
  %7 = load %struct.list*, %struct.list** %1, align 8
  %8 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %7)
  %9 = bitcast i8* %8 to %struct.learner_task*
  store %struct.learner_task* %9, %struct.learner_task** %taskPtr, align 8
  %10 = load %struct.list*, %struct.list** %1, align 8
  %11 = load %struct.learner_task*, %struct.learner_task** %taskPtr, align 8
  %12 = bitcast %struct.learner_task* %11 to i8*
  %13 = call i64 @TMlist_remove(%struct.list* %10, i8* %12)
  store i64 %13, i64* %status, align 8
  %14 = load i64, i64* %status, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %6
  br label %19

; <label>:17                                      ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 521, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.TMpopTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %19

; <label>:19                                      ; preds = %18, %16
  br label %20

; <label>:20                                      ; preds = %19, %0
  %21 = load %struct.learner_task*, %struct.learner_task** %taskPtr, align 8
  ret %struct.learner_task* %21
}

declare void @TMlist_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @TMlist_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @TMlist_iter_next(%struct.list_node**, %struct.list*) #2

declare i64 @TMlist_remove(%struct.list*, i8*) #2

; Function Attrs: nounwind uwtable
define void @learner_run(%struct.learner* %learnerPtr) #0 {
  %1 = alloca %struct.learner*, align 8
  store %struct.learner* %learnerPtr, %struct.learner** %1, align 8
  %2 = load %struct.learner*, %struct.learner** %1, align 8
  %3 = bitcast %struct.learner* %2 to i8*
  call void @thread_start(void (i8*)* @createTaskList, i8* %3)
  %4 = load %struct.learner*, %struct.learner** %1, align 8
  %5 = bitcast %struct.learner* %4 to i8*
  call void @thread_start(void (i8*)* @learnStructure, i8* %5)
  ret void
}

declare void @thread_start(void (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @createTaskList(i8* %argPtr) #0 {
  %1 = alloca i64, align 8
  %handler.i3 = alloca i64, align 8
  %ret.i4 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %handler.i = alloca i64, align 8
  %ret.i = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %_tm_thread_context = alloca %struct._tm_thread_context_t*, align 8
  %myId = alloca i64, align 8
  %numThread = alloca i64, align 8
  %learnerPtr = alloca %struct.learner*, align 8
  %taskListPtr = alloca %struct.list*, align 8
  %status = alloca i64, align 8
  %adtreePtr = alloca %struct.adtree*, align 8
  %localBaseLogLikelihoods = alloca float*, align 8
  %tasks = alloca %struct.learner_task*, align 8
  %queries = alloca [2 x %struct.query], align 16
  %queryVectorPtr = alloca %struct.vector*, align 8
  %parentQuery = alloca %struct.query, align 8
  %parentQueryVectorPtr = alloca %struct.vector*, align 8
  %numVar = alloca i64, align 8
  %numRecord = alloca i64, align 8
  %baseLogLikelihood = alloca float, align 4
  %penalty = alloca float, align 4
  %v = alloca i64, align 8
  %v_start = alloca i64, align 8
  %v_stop = alloca i64, align 8
  %localBaseLogLikelihood = alloca float, align 4
  %__status = alloca i32, align 4
  %tries = alloca i32, align 4
  %globalBaseLogLikelihood = alloca float, align 4
  %8 = alloca float, align 4
  %bestLocalIndex = alloca i64, align 8
  %bestLocalLogLikelihood = alloca float, align 4
  %vv = alloca i64, align 8
  %newLocalLogLikelihood = alloca float, align 4
  %logLikelihood = alloca float, align 4
  %score = alloca float, align 4
  %taskPtr = alloca %struct.learner_task*, align 8
  %__status1 = alloca i32, align 4
  %tries2 = alloca i32, align 4
  store i8* %argPtr, i8** %7, align 8
  %9 = call i64 (...) @thread_getId()
  %10 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %11 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %10, i64 %9
  store %struct._tm_thread_context_t* %11, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  br label %12

; <label>:12                                      ; preds = %0
  %13 = call i64 (...) @thread_getId()
  %14 = trunc i64 %13 to i32
  call void @SimRoiStart(i32 %14)
  br label %15

; <label>:15                                      ; preds = %12
  %16 = call i64 (...) @thread_getId()
  store i64 %16, i64* %myId, align 8
  %17 = call i64 (...) @thread_getNumThread()
  store i64 %17, i64* %numThread, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.learner*
  store %struct.learner* %19, %struct.learner** %learnerPtr, align 8
  %20 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %21 = getelementptr inbounds %struct.learner, %struct.learner* %20, i32 0, i32 8
  %22 = load %struct.list*, %struct.list** %21, align 8
  store %struct.list* %22, %struct.list** %taskListPtr, align 8
  %23 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %24 = getelementptr inbounds %struct.learner, %struct.learner* %23, i32 0, i32 0
  %25 = load %struct.adtree*, %struct.adtree** %24, align 8
  store %struct.adtree* %25, %struct.adtree** %adtreePtr, align 8
  %26 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %27 = getelementptr inbounds %struct.learner, %struct.learner* %26, i32 0, i32 2
  %28 = load float*, float** %27, align 8
  store float* %28, float** %localBaseLogLikelihoods, align 8
  %29 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %30 = getelementptr inbounds %struct.learner, %struct.learner* %29, i32 0, i32 6
  %31 = load %struct.learner_task*, %struct.learner_task** %30, align 8
  store %struct.learner_task* %31, %struct.learner_task** %tasks, align 8
  %32 = call %struct.vector* @Pvector_alloc(i64 2)
  store %struct.vector* %32, %struct.vector** %queryVectorPtr, align 8
  %33 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %34 = icmp ne %struct.vector* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %15
  br label %38

; <label>:36                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 341, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %40 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %41 = bitcast %struct.query* %40 to i8*
  %42 = call i64 @vector_pushBack(%struct.vector* %39, i8* %41)
  store i64 %42, i64* %status, align 8
  %43 = load i64, i64* %status, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %38
  br label %48

; <label>:46                                      ; preds = %38
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 343, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %48

; <label>:48                                      ; preds = %47, %45
  %49 = call %struct.vector* @Pvector_alloc(i64 1)
  store %struct.vector* %49, %struct.vector** %parentQueryVectorPtr, align 8
  %50 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %51 = icmp ne %struct.vector* %50, null
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %48
  br label %55

; <label>:53                                      ; preds = %48
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 347, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %55

; <label>:55                                      ; preds = %54, %52
  %56 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %57 = getelementptr inbounds %struct.adtree, %struct.adtree* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %numVar, align 8
  %59 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %60 = getelementptr inbounds %struct.adtree, %struct.adtree* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %numRecord, align 8
  store float 0.000000e+00, float* %baseLogLikelihood, align 4
  %62 = load i64, i64* %numRecord, align 8
  %63 = sitofp i64 %62 to double
  %64 = call double @log(double %63) #5
  %65 = fmul double -5.000000e-01, %64
  %66 = fptrunc double %65 to float
  store float %66, float* %penalty, align 4
  %67 = load i64, i64* %numVar, align 8
  %68 = load i64, i64* %myId, align 8
  %69 = load i64, i64* %numThread, align 8
  call void @createPartition(i64 0, i64 %67, i64 %68, i64 %69, i64* %v_start, i64* %v_stop)
  %70 = load i64, i64* %v_start, align 8
  store i64 %70, i64* %v, align 8
  br label %71

; <label>:71                                      ; preds = %102, %55
  %72 = load i64, i64* %v, align 8
  %73 = load i64, i64* %v_stop, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %105

; <label>:75                                      ; preds = %71
  store float 0.000000e+00, float* %localBaseLogLikelihood, align 4
  %76 = load i64, i64* %v, align 8
  %77 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %78 = getelementptr inbounds %struct.query, %struct.query* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 16
  %79 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %80 = getelementptr inbounds %struct.query, %struct.query* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %82 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %83 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %84 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %81, %struct.vector* %82, %struct.vector* %83)
  %85 = load float, float* %localBaseLogLikelihood, align 4
  %86 = fadd float %85, %84
  store float %86, float* %localBaseLogLikelihood, align 4
  %87 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %88 = getelementptr inbounds %struct.query, %struct.query* %87, i32 0, i32 1
  store i64 1, i64* %88, align 8
  %89 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %90 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %91 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %92 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %89, %struct.vector* %90, %struct.vector* %91)
  %93 = load float, float* %localBaseLogLikelihood, align 4
  %94 = fadd float %93, %92
  store float %94, float* %localBaseLogLikelihood, align 4
  %95 = load float, float* %localBaseLogLikelihood, align 4
  %96 = load i64, i64* %v, align 8
  %97 = load float*, float** %localBaseLogLikelihoods, align 8
  %98 = getelementptr inbounds float, float* %97, i64 %96
  store float %95, float* %98, align 4
  %99 = load float, float* %localBaseLogLikelihood, align 4
  %100 = load float, float* %baseLogLikelihood, align 4
  %101 = fadd float %100, %99
  store float %101, float* %baseLogLikelihood, align 4
  br label %102

; <label>:102                                     ; preds = %75
  %103 = load i64, i64* %v, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %v, align 8
  br label %71

; <label>:105                                     ; preds = %71
  store i32 -1, i32* %__status, align 4
  store i32 9, i32* %tries, align 4
  br label %106

; <label>:106                                     ; preds = %127, %105
  br label %107

; <label>:107                                     ; preds = %110, %106
  %108 = call i64 (...) @RTM_fallback_isLocked()
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

; <label>:110                                     ; preds = %107
  call void @llvm.x86.sse2.pause() #5
  br label %107

; <label>:111                                     ; preds = %107
  %112 = load i32, i32* %tries, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %tries, align 4
  %114 = load i32, i32* %tries, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %117

; <label>:116                                     ; preds = %111
  call void (...) @RTM_fallback_lock()
  br label %134

; <label>:117                                     ; preds = %111
  store i64 0, i64* %5, align 8
  store i64 0, i64* %handler.i, align 8
  store i64 4294967295, i64* %ret.i, align 8
  %118 = load i64, i64* %ret.i, align 8
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* %handler.i, align 8
  %121 = load i64, i64* %5, align 8
  %122 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %119, i64 %120, i64 %121, i64 %118) #5, !srcloc !1
  store i64 %122, i64* %ret.i, align 8
  %123 = load i64, i64* %ret.i, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %__status, align 4
  %125 = load i32, i32* %__status, align 4
  %126 = icmp ne i32 %125, -1
  br i1 %126, label %127, label %128

; <label>:127                                     ; preds = %117
  br label %106

; <label>:128                                     ; preds = %117
  %129 = call i64 (...) @RTM_fallback_isLocked()
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

; <label>:131                                     ; preds = %128
  store i64 255, i64* %4, align 8
  %132 = load i64, i64* %4, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %132) #5, !srcloc !2
  br label %133

; <label>:133                                     ; preds = %131, %128
  br label %134

; <label>:134                                     ; preds = %133, %116
  %135 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %136 = getelementptr inbounds %struct.learner, %struct.learner* %135, i32 0, i32 4
  %137 = load float, float* %136, align 8
  store float %137, float* %globalBaseLogLikelihood, align 4
  %138 = load float, float* %baseLogLikelihood, align 4
  %139 = load float, float* %globalBaseLogLikelihood, align 4
  %140 = fadd float %138, %139
  %141 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %142 = getelementptr inbounds %struct.learner, %struct.learner* %141, i32 0, i32 4
  store float %140, float* %142, align 8
  %143 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %144 = getelementptr inbounds %struct.learner, %struct.learner* %143, i32 0, i32 4
  %145 = load float, float* %144, align 8
  store float %145, float* %8, align 4
  %146 = load float, float* %8, align 4
  %147 = load i32, i32* %tries, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %151

; <label>:149                                     ; preds = %134
  store i64 0, i64* %3, align 8
  %150 = load i64, i64* %3, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %150) #5, !srcloc !3
  br label %152

; <label>:151                                     ; preds = %134
  call void (...) @RTM_fallback_unlock()
  br label %152

; <label>:152                                     ; preds = %151, %149
  %153 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %154 = bitcast %struct.query* %parentQuery to i8*
  %155 = call i64 @Pvector_pushBack(%struct.vector* %153, i8* %154)
  store i64 %155, i64* %status, align 8
  %156 = load i64, i64* %status, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

; <label>:158                                     ; preds = %152
  br label %161

; <label>:159                                     ; preds = %152
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 398, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %161

; <label>:161                                     ; preds = %160, %158
  %162 = load i64, i64* %v_start, align 8
  store i64 %162, i64* %v, align 8
  br label %163

; <label>:163                                     ; preds = %361, %161
  %164 = load i64, i64* %v, align 8
  %165 = load i64, i64* %v_stop, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %167, label %364

; <label>:167                                     ; preds = %163
  %168 = load i64, i64* %v, align 8
  %169 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %170 = getelementptr inbounds %struct.query, %struct.query* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 16
  %171 = load i64, i64* %v, align 8
  store i64 %171, i64* %bestLocalIndex, align 8
  %172 = load i64, i64* %v, align 8
  %173 = load float*, float** %localBaseLogLikelihoods, align 8
  %174 = getelementptr inbounds float, float* %173, i64 %172
  %175 = load float, float* %174, align 4
  store float %175, float* %bestLocalLogLikelihood, align 4
  %176 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %177 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %178 = bitcast %struct.query* %177 to i8*
  %179 = call i64 @Pvector_pushBack(%struct.vector* %176, i8* %178)
  store i64 %179, i64* %status, align 8
  %180 = load i64, i64* %status, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

; <label>:182                                     ; preds = %167
  br label %185

; <label>:183                                     ; preds = %167
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 411, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %185

; <label>:185                                     ; preds = %184, %182
  store i64 0, i64* %vv, align 8
  br label %186

; <label>:186                                     ; preds = %277, %185
  %187 = load i64, i64* %vv, align 8
  %188 = load i64, i64* %numVar, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %280

; <label>:190                                     ; preds = %186
  %191 = load i64, i64* %vv, align 8
  %192 = load i64, i64* %v, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %195

; <label>:194                                     ; preds = %190
  br label %277

; <label>:195                                     ; preds = %190
  %196 = load i64, i64* %vv, align 8
  %197 = getelementptr inbounds %struct.query, %struct.query* %parentQuery, i32 0, i32 0
  store i64 %196, i64* %197, align 8
  %198 = load i64, i64* %v, align 8
  %199 = load i64, i64* %vv, align 8
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %201, label %208

; <label>:201                                     ; preds = %195
  %202 = load i64, i64* %v, align 8
  %203 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %204 = getelementptr inbounds %struct.query, %struct.query* %203, i32 0, i32 0
  store i64 %202, i64* %204, align 16
  %205 = load i64, i64* %vv, align 8
  %206 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %207 = getelementptr inbounds %struct.query, %struct.query* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 16
  br label %215

; <label>:208                                     ; preds = %195
  %209 = load i64, i64* %vv, align 8
  %210 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %211 = getelementptr inbounds %struct.query, %struct.query* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 16
  %212 = load i64, i64* %v, align 8
  %213 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %214 = getelementptr inbounds %struct.query, %struct.query* %213, i32 0, i32 0
  store i64 %212, i64* %214, align 16
  br label %215

; <label>:215                                     ; preds = %208, %201
  store float 0.000000e+00, float* %newLocalLogLikelihood, align 4
  %216 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %217 = getelementptr inbounds %struct.query, %struct.query* %216, i32 0, i32 1
  store i64 0, i64* %217, align 8
  %218 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %219 = getelementptr inbounds %struct.query, %struct.query* %218, i32 0, i32 1
  store i64 0, i64* %219, align 8
  %220 = getelementptr inbounds %struct.query, %struct.query* %parentQuery, i32 0, i32 1
  store i64 0, i64* %220, align 8
  %221 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %222 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %223 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %224 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %221, %struct.vector* %222, %struct.vector* %223)
  %225 = load float, float* %newLocalLogLikelihood, align 4
  %226 = fadd float %225, %224
  store float %226, float* %newLocalLogLikelihood, align 4
  %227 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %228 = getelementptr inbounds %struct.query, %struct.query* %227, i32 0, i32 1
  store i64 0, i64* %228, align 8
  %229 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %230 = getelementptr inbounds %struct.query, %struct.query* %229, i32 0, i32 1
  store i64 1, i64* %230, align 8
  %231 = load i64, i64* %vv, align 8
  %232 = load i64, i64* %v, align 8
  %233 = icmp slt i64 %231, %232
  %234 = select i1 %233, i32 0, i32 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.query, %struct.query* %parentQuery, i32 0, i32 1
  store i64 %235, i64* %236, align 8
  %237 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %238 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %239 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %240 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %237, %struct.vector* %238, %struct.vector* %239)
  %241 = load float, float* %newLocalLogLikelihood, align 4
  %242 = fadd float %241, %240
  store float %242, float* %newLocalLogLikelihood, align 4
  %243 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %244 = getelementptr inbounds %struct.query, %struct.query* %243, i32 0, i32 1
  store i64 1, i64* %244, align 8
  %245 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %246 = getelementptr inbounds %struct.query, %struct.query* %245, i32 0, i32 1
  store i64 0, i64* %246, align 8
  %247 = load i64, i64* %vv, align 8
  %248 = load i64, i64* %v, align 8
  %249 = icmp slt i64 %247, %248
  %250 = select i1 %249, i32 1, i32 0
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.query, %struct.query* %parentQuery, i32 0, i32 1
  store i64 %251, i64* %252, align 8
  %253 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %254 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %255 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %256 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %253, %struct.vector* %254, %struct.vector* %255)
  %257 = load float, float* %newLocalLogLikelihood, align 4
  %258 = fadd float %257, %256
  store float %258, float* %newLocalLogLikelihood, align 4
  %259 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %260 = getelementptr inbounds %struct.query, %struct.query* %259, i32 0, i32 1
  store i64 1, i64* %260, align 8
  %261 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %262 = getelementptr inbounds %struct.query, %struct.query* %261, i32 0, i32 1
  store i64 1, i64* %262, align 8
  %263 = getelementptr inbounds %struct.query, %struct.query* %parentQuery, i32 0, i32 1
  store i64 1, i64* %263, align 8
  %264 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %265 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %266 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %267 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %264, %struct.vector* %265, %struct.vector* %266)
  %268 = load float, float* %newLocalLogLikelihood, align 4
  %269 = fadd float %268, %267
  store float %269, float* %newLocalLogLikelihood, align 4
  %270 = load float, float* %newLocalLogLikelihood, align 4
  %271 = load float, float* %bestLocalLogLikelihood, align 4
  %272 = fcmp ogt float %270, %271
  br i1 %272, label %273, label %276

; <label>:273                                     ; preds = %215
  %274 = load i64, i64* %vv, align 8
  store i64 %274, i64* %bestLocalIndex, align 8
  %275 = load float, float* %newLocalLogLikelihood, align 4
  store float %275, float* %bestLocalLogLikelihood, align 4
  br label %276

; <label>:276                                     ; preds = %273, %215
  br label %277

; <label>:277                                     ; preds = %276, %194
  %278 = load i64, i64* %vv, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %vv, align 8
  br label %186

; <label>:280                                     ; preds = %186
  %281 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %282 = call i8* @vector_popBack(%struct.vector* %281)
  %283 = load i64, i64* %bestLocalIndex, align 8
  %284 = load i64, i64* %v, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %360

; <label>:286                                     ; preds = %280
  %287 = load i64, i64* %numRecord, align 8
  %288 = sitofp i64 %287 to float
  %289 = load float, float* %baseLogLikelihood, align 4
  %290 = load float, float* %bestLocalLogLikelihood, align 4
  %291 = fadd float %289, %290
  %292 = load i64, i64* %v, align 8
  %293 = load float*, float** %localBaseLogLikelihoods, align 8
  %294 = getelementptr inbounds float, float* %293, i64 %292
  %295 = load float, float* %294, align 4
  %296 = fsub float %291, %295
  %297 = fmul float %288, %296
  store float %297, float* %logLikelihood, align 4
  %298 = load float, float* %penalty, align 4
  %299 = load float, float* %logLikelihood, align 4
  %300 = fadd float %298, %299
  store float %300, float* %score, align 4
  %301 = load i64, i64* %v, align 8
  %302 = load %struct.learner_task*, %struct.learner_task** %tasks, align 8
  %303 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %302, i64 %301
  store %struct.learner_task* %303, %struct.learner_task** %taskPtr, align 8
  %304 = load %struct.learner_task*, %struct.learner_task** %taskPtr, align 8
  %305 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %304, i32 0, i32 0
  store i32 0, i32* %305, align 8
  %306 = load i64, i64* %bestLocalIndex, align 8
  %307 = load %struct.learner_task*, %struct.learner_task** %taskPtr, align 8
  %308 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %307, i32 0, i32 1
  store i64 %306, i64* %308, align 8
  %309 = load i64, i64* %v, align 8
  %310 = load %struct.learner_task*, %struct.learner_task** %taskPtr, align 8
  %311 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %310, i32 0, i32 2
  store i64 %309, i64* %311, align 8
  %312 = load float, float* %score, align 4
  %313 = load %struct.learner_task*, %struct.learner_task** %taskPtr, align 8
  %314 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %313, i32 0, i32 3
  store float %312, float* %314, align 8
  store i32 -1, i32* %__status1, align 4
  store i32 9, i32* %tries2, align 4
  br label %315

; <label>:315                                     ; preds = %336, %286
  br label %316

; <label>:316                                     ; preds = %319, %315
  %317 = call i64 (...) @RTM_fallback_isLocked()
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %320

; <label>:319                                     ; preds = %316
  call void @llvm.x86.sse2.pause() #5
  br label %316

; <label>:320                                     ; preds = %316
  %321 = load i32, i32* %tries2, align 4
  %322 = add nsw i32 %321, -1
  store i32 %322, i32* %tries2, align 4
  %323 = load i32, i32* %tries2, align 4
  %324 = icmp sle i32 %323, 0
  br i1 %324, label %325, label %326

; <label>:325                                     ; preds = %320
  call void (...) @RTM_fallback_lock()
  br label %343

; <label>:326                                     ; preds = %320
  store i64 1, i64* %1, align 8
  store i64 0, i64* %handler.i3, align 8
  store i64 4294967295, i64* %ret.i4, align 8
  %327 = load i64, i64* %ret.i4, align 8
  %328 = load i64, i64* %1, align 8
  %329 = load i64, i64* %handler.i3, align 8
  %330 = load i64, i64* %1, align 8
  %331 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %328, i64 %329, i64 %330, i64 %327) #5, !srcloc !1
  store i64 %331, i64* %ret.i4, align 8
  %332 = load i64, i64* %ret.i4, align 8
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %__status1, align 4
  %334 = load i32, i32* %__status1, align 4
  %335 = icmp ne i32 %334, -1
  br i1 %335, label %336, label %337

; <label>:336                                     ; preds = %326
  br label %315

; <label>:337                                     ; preds = %326
  %338 = call i64 (...) @RTM_fallback_isLocked()
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %342

; <label>:340                                     ; preds = %337
  store i64 255, i64* %2, align 8
  %341 = load i64, i64* %2, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %341) #5, !srcloc !2
  br label %342

; <label>:342                                     ; preds = %340, %337
  br label %343

; <label>:343                                     ; preds = %342, %325
  %344 = load %struct.list*, %struct.list** %taskListPtr, align 8
  %345 = load %struct.learner_task*, %struct.learner_task** %taskPtr, align 8
  %346 = bitcast %struct.learner_task* %345 to i8*
  %347 = call i64 @TMlist_insert(%struct.list* %344, i8* %346)
  store i64 %347, i64* %status, align 8
  %348 = load i32, i32* %tries2, align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %352

; <label>:350                                     ; preds = %343
  store i64 1, i64* %6, align 8
  %351 = load i64, i64* %6, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %351) #5, !srcloc !3
  br label %353

; <label>:352                                     ; preds = %343
  call void (...) @RTM_fallback_unlock()
  br label %353

; <label>:353                                     ; preds = %352, %350
  %354 = load i64, i64* %status, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %357

; <label>:356                                     ; preds = %353
  br label %359

; <label>:357                                     ; preds = %353
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %359

; <label>:359                                     ; preds = %358, %356
  br label %360

; <label>:360                                     ; preds = %359, %280
  br label %361

; <label>:361                                     ; preds = %360
  %362 = load i64, i64* %v, align 8
  %363 = add nsw i64 %362, 1
  store i64 %363, i64* %v, align 8
  br label %163

; <label>:364                                     ; preds = %163
  %365 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  call void @Pvector_free(%struct.vector* %365)
  %366 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  call void @Pvector_free(%struct.vector* %366)
  br label %367

; <label>:367                                     ; preds = %364
  %368 = call i64 (...) @thread_getId()
  %369 = trunc i64 %368 to i32
  %370 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %371 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 4
  call void @SimRoiEnd(i32 %369, i32 %372)
  br label %373

; <label>:373                                     ; preds = %367
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @learnStructure(i8* %argPtr) #0 {
  %1 = alloca i64, align 8
  %handler.i52 = alloca i64, align 8
  %ret.i53 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %handler.i50 = alloca i64, align 8
  %ret.i51 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %handler.i48 = alloca i64, align 8
  %ret.i49 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %handler.i46 = alloca i64, align 8
  %ret.i47 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %handler.i44 = alloca i64, align 8
  %ret.i45 = alloca i64, align 8
  %16 = alloca i64, align 8
  %handler.i42 = alloca i64, align 8
  %ret.i43 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %handler.i40 = alloca i64, align 8
  %ret.i41 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %handler.i38 = alloca i64, align 8
  %ret.i39 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %handler.i36 = alloca i64, align 8
  %ret.i37 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %handler.i34 = alloca i64, align 8
  %ret.i35 = alloca i64, align 8
  %31 = alloca i64, align 8
  %handler.i32 = alloca i64, align 8
  %ret.i33 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %handler.i30 = alloca i64, align 8
  %ret.i31 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %handler.i = alloca i64, align 8
  %ret.i = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i8*, align 8
  %_tm_thread_context = alloca %struct._tm_thread_context_t*, align 8
  %learnerPtr = alloca %struct.learner*, align 8
  %netPtr = alloca %struct.net*, align 8
  %adtreePtr = alloca %struct.adtree*, align 8
  %numRecord = alloca i64, align 8
  %localBaseLogLikelihoods = alloca float*, align 8
  %taskListPtr = alloca %struct.list*, align 8
  %operationQualityFactor = alloca float, align 4
  %visitedBitmapPtr = alloca %struct.bitmap*, align 8
  %workQueuePtr = alloca %struct.queue*, align 8
  %numVar = alloca i64, align 8
  %queries = alloca %struct.query*, align 8
  %v = alloca i64, align 8
  %basePenalty = alloca float, align 4
  %queryVectorPtr = alloca %struct.vector*, align 8
  %parentQueryVectorPtr = alloca %struct.vector*, align 8
  %aQueryVectorPtr = alloca %struct.vector*, align 8
  %bQueryVectorPtr = alloca %struct.vector*, align 8
  %arg = alloca %struct.findBestTaskArg, align 8
  %taskPtr = alloca %struct.learner_task*, align 8
  %__status = alloca i32, align 4
  %tries = alloca i32, align 4
  %op = alloca i32, align 4
  %fromId = alloca i64, align 8
  %toId = alloca i64, align 8
  %isTaskValid = alloca i64, align 8
  %__status1 = alloca i32, align 4
  %tries2 = alloca i32, align 4
  %deltaLogLikelihood = alloca float, align 4
  %newBaseLogLikelihood = alloca float, align 4
  %__status3 = alloca i32, align 4
  %tries4 = alloca i32, align 4
  %toLocalBaseLogLikelihood = alloca float, align 4
  %41 = alloca float, align 4
  %__status5 = alloca i32, align 4
  %tries6 = alloca i32, align 4
  %numTotalParent = alloca i64, align 8
  %42 = alloca i64, align 8
  %__status7 = alloca i32, align 4
  %tries8 = alloca i32, align 4
  %fromLocalBaseLogLikelihood = alloca float, align 4
  %43 = alloca float, align 4
  %__status9 = alloca i32, align 4
  %tries10 = alloca i32, align 4
  %numTotalParent11 = alloca i64, align 8
  %44 = alloca i64, align 8
  %__status12 = alloca i32, align 4
  %tries13 = alloca i32, align 4
  %fromLocalBaseLogLikelihood14 = alloca float, align 4
  %45 = alloca float, align 4
  %__status15 = alloca i32, align 4
  %tries16 = alloca i32, align 4
  %toLocalBaseLogLikelihood17 = alloca float, align 4
  %46 = alloca float, align 4
  %baseLogLikelihood = alloca float, align 4
  %numTotalParent18 = alloca i64, align 8
  %__status19 = alloca i32, align 4
  %tries20 = alloca i32, align 4
  %oldBaseLogLikelihood = alloca float, align 4
  %newBaseLogLikelihood21 = alloca float, align 4
  %47 = alloca float, align 4
  %baseScore = alloca float, align 4
  %bestTask = alloca %struct.learner_task, align 8
  %newTask = alloca %struct.learner_task, align 8
  %__status22 = alloca i32, align 4
  %tries23 = alloca i32, align 4
  %48 = alloca %struct.learner_task, align 8
  %__status24 = alloca i32, align 4
  %tries25 = alloca i32, align 4
  %49 = alloca %struct.learner_task, align 8
  %__status26 = alloca i32, align 4
  %tries27 = alloca i32, align 4
  %50 = alloca %struct.learner_task, align 8
  %tasks = alloca %struct.learner_task*, align 8
  %__status28 = alloca i32, align 4
  %tries29 = alloca i32, align 4
  store i8* %argPtr, i8** %40, align 8
  %51 = call i64 (...) @thread_getId()
  %52 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %53 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %52, i64 %51
  store %struct._tm_thread_context_t* %53, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  br label %54

; <label>:54                                      ; preds = %0
  %55 = call i64 (...) @thread_getId()
  %56 = trunc i64 %55 to i32
  call void @SimRoiStart(i32 %56)
  br label %57

; <label>:57                                      ; preds = %54
  %58 = load i8*, i8** %40, align 8
  %59 = bitcast i8* %58 to %struct.learner*
  store %struct.learner* %59, %struct.learner** %learnerPtr, align 8
  %60 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %61 = getelementptr inbounds %struct.learner, %struct.learner* %60, i32 0, i32 1
  %62 = load %struct.net*, %struct.net** %61, align 8
  store %struct.net* %62, %struct.net** %netPtr, align 8
  %63 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %64 = getelementptr inbounds %struct.learner, %struct.learner* %63, i32 0, i32 0
  %65 = load %struct.adtree*, %struct.adtree** %64, align 8
  store %struct.adtree* %65, %struct.adtree** %adtreePtr, align 8
  %66 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %67 = getelementptr inbounds %struct.adtree, %struct.adtree* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %numRecord, align 8
  %69 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %70 = getelementptr inbounds %struct.learner, %struct.learner* %69, i32 0, i32 2
  %71 = load float*, float** %70, align 8
  store float* %71, float** %localBaseLogLikelihoods, align 8
  %72 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %73 = getelementptr inbounds %struct.learner, %struct.learner* %72, i32 0, i32 8
  %74 = load %struct.list*, %struct.list** %73, align 8
  store %struct.list* %74, %struct.list** %taskListPtr, align 8
  %75 = load float, float* @global_operationQualityFactor, align 4
  store float %75, float* %operationQualityFactor, align 4
  %76 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %77 = getelementptr inbounds %struct.learner, %struct.learner* %76, i32 0, i32 0
  %78 = load %struct.adtree*, %struct.adtree** %77, align 8
  %79 = getelementptr inbounds %struct.adtree, %struct.adtree* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call %struct.bitmap* @Pbitmap_alloc(i64 %80)
  store %struct.bitmap* %81, %struct.bitmap** %visitedBitmapPtr, align 8
  %82 = load %struct.bitmap*, %struct.bitmap** %visitedBitmapPtr, align 8
  %83 = icmp ne %struct.bitmap* %82, null
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %57
  br label %87

; <label>:85                                      ; preds = %57
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %87

; <label>:87                                      ; preds = %86, %84
  %88 = call %struct.queue* @Pqueue_alloc(i64 -1)
  store %struct.queue* %88, %struct.queue** %workQueuePtr, align 8
  %89 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %90 = icmp ne %struct.queue* %89, null
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %87
  br label %94

; <label>:92                                      ; preds = %87
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1159, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %94

; <label>:94                                      ; preds = %93, %91
  %95 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %96 = getelementptr inbounds %struct.adtree, %struct.adtree* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %numVar, align 8
  %98 = load i64, i64* %numVar, align 8
  %99 = mul i64 %98, 16
  %100 = call noalias i8* @malloc(i64 %99) #5
  %101 = bitcast i8* %100 to %struct.query*
  store %struct.query* %101, %struct.query** %queries, align 8
  %102 = load %struct.query*, %struct.query** %queries, align 8
  %103 = icmp ne %struct.query* %102, null
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %94
  br label %107

; <label>:105                                     ; preds = %94
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %107

; <label>:107                                     ; preds = %106, %104
  store i64 0, i64* %v, align 8
  br label %108

; <label>:108                                     ; preds = %122, %107
  %109 = load i64, i64* %v, align 8
  %110 = load i64, i64* %numVar, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %125

; <label>:112                                     ; preds = %108
  %113 = load i64, i64* %v, align 8
  %114 = load i64, i64* %v, align 8
  %115 = load %struct.query*, %struct.query** %queries, align 8
  %116 = getelementptr inbounds %struct.query, %struct.query* %115, i64 %114
  %117 = getelementptr inbounds %struct.query, %struct.query* %116, i32 0, i32 0
  store i64 %113, i64* %117, align 8
  %118 = load i64, i64* %v, align 8
  %119 = load %struct.query*, %struct.query** %queries, align 8
  %120 = getelementptr inbounds %struct.query, %struct.query* %119, i64 %118
  %121 = getelementptr inbounds %struct.query, %struct.query* %120, i32 0, i32 1
  store i64 -1, i64* %121, align 8
  br label %122

; <label>:122                                     ; preds = %112
  %123 = load i64, i64* %v, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %v, align 8
  br label %108

; <label>:125                                     ; preds = %108
  %126 = load i64, i64* %numRecord, align 8
  %127 = sitofp i64 %126 to double
  %128 = call double @log(double %127) #5
  %129 = fmul double -5.000000e-01, %128
  %130 = fptrunc double %129 to float
  store float %130, float* %basePenalty, align 4
  %131 = call %struct.vector* @Pvector_alloc(i64 1)
  store %struct.vector* %131, %struct.vector** %queryVectorPtr, align 8
  %132 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %133 = icmp ne %struct.vector* %132, null
  br i1 %133, label %134, label %135

; <label>:134                                     ; preds = %125
  br label %137

; <label>:135                                     ; preds = %125
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1173, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %137

; <label>:137                                     ; preds = %136, %134
  %138 = call %struct.vector* @Pvector_alloc(i64 1)
  store %struct.vector* %138, %struct.vector** %parentQueryVectorPtr, align 8
  %139 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %140 = icmp ne %struct.vector* %139, null
  br i1 %140, label %141, label %142

; <label>:141                                     ; preds = %137
  br label %144

; <label>:142                                     ; preds = %137
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %144

; <label>:144                                     ; preds = %143, %141
  %145 = call %struct.vector* @Pvector_alloc(i64 1)
  store %struct.vector* %145, %struct.vector** %aQueryVectorPtr, align 8
  %146 = load %struct.vector*, %struct.vector** %aQueryVectorPtr, align 8
  %147 = icmp ne %struct.vector* %146, null
  br i1 %147, label %148, label %149

; <label>:148                                     ; preds = %144
  br label %151

; <label>:149                                     ; preds = %144
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %151

; <label>:151                                     ; preds = %150, %148
  %152 = call %struct.vector* @Pvector_alloc(i64 1)
  store %struct.vector* %152, %struct.vector** %bQueryVectorPtr, align 8
  %153 = load %struct.vector*, %struct.vector** %bQueryVectorPtr, align 8
  %154 = icmp ne %struct.vector* %153, null
  br i1 %154, label %155, label %156

; <label>:155                                     ; preds = %151
  br label %158

; <label>:156                                     ; preds = %151
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %158

; <label>:158                                     ; preds = %157, %155
  %159 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %160 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 1
  store %struct.learner* %159, %struct.learner** %160, align 8
  %161 = load %struct.query*, %struct.query** %queries, align 8
  %162 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 2
  store %struct.query* %161, %struct.query** %162, align 8
  %163 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %164 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 3
  store %struct.vector* %163, %struct.vector** %164, align 8
  %165 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %166 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 4
  store %struct.vector* %165, %struct.vector** %166, align 8
  %167 = load %struct.bitmap*, %struct.bitmap** %visitedBitmapPtr, align 8
  %168 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 8
  store %struct.bitmap* %167, %struct.bitmap** %168, align 8
  %169 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %170 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 9
  store %struct.queue* %169, %struct.queue** %170, align 8
  %171 = load %struct.vector*, %struct.vector** %aQueryVectorPtr, align 8
  %172 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 10
  store %struct.vector* %171, %struct.vector** %172, align 8
  %173 = load %struct.vector*, %struct.vector** %bQueryVectorPtr, align 8
  %174 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 11
  store %struct.vector* %173, %struct.vector** %174, align 8
  br label %175

; <label>:175                                     ; preds = %956, %158
  store i32 -1, i32* %__status, align 4
  store i32 9, i32* %tries, align 4
  br label %176

; <label>:176                                     ; preds = %197, %175
  br label %177

; <label>:177                                     ; preds = %180, %176
  %178 = call i64 (...) @RTM_fallback_isLocked()
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

; <label>:180                                     ; preds = %177
  call void @llvm.x86.sse2.pause() #5
  br label %177

; <label>:181                                     ; preds = %177
  %182 = load i32, i32* %tries, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %tries, align 4
  %184 = load i32, i32* %tries, align 4
  %185 = icmp sle i32 %184, 0
  br i1 %185, label %186, label %187

; <label>:186                                     ; preds = %181
  call void (...) @RTM_fallback_lock()
  br label %204

; <label>:187                                     ; preds = %181
  store i64 2, i64* %38, align 8
  store i64 0, i64* %handler.i, align 8
  store i64 4294967295, i64* %ret.i, align 8
  %188 = load i64, i64* %ret.i, align 8
  %189 = load i64, i64* %38, align 8
  %190 = load i64, i64* %handler.i, align 8
  %191 = load i64, i64* %38, align 8
  %192 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %189, i64 %190, i64 %191, i64 %188) #5, !srcloc !1
  store i64 %192, i64* %ret.i, align 8
  %193 = load i64, i64* %ret.i, align 8
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %__status, align 4
  %195 = load i32, i32* %__status, align 4
  %196 = icmp ne i32 %195, -1
  br i1 %196, label %197, label %198

; <label>:197                                     ; preds = %187
  br label %176

; <label>:198                                     ; preds = %187
  %199 = call i64 (...) @RTM_fallback_isLocked()
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %203

; <label>:201                                     ; preds = %198
  store i64 255, i64* %37, align 8
  %202 = load i64, i64* %37, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %202) #5, !srcloc !2
  br label %203

; <label>:203                                     ; preds = %201, %198
  br label %204

; <label>:204                                     ; preds = %203, %186
  %205 = load %struct.list*, %struct.list** %taskListPtr, align 8
  %206 = call %struct.learner_task* @TMpopTask(%struct.list* %205)
  store %struct.learner_task* %206, %struct.learner_task** %taskPtr, align 8
  %207 = load i32, i32* %tries, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %211

; <label>:209                                     ; preds = %204
  store i64 2, i64* %36, align 8
  %210 = load i64, i64* %36, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %210) #5, !srcloc !3
  br label %212

; <label>:211                                     ; preds = %204
  call void (...) @RTM_fallback_unlock()
  br label %212

; <label>:212                                     ; preds = %211, %209
  %213 = load %struct.learner_task*, %struct.learner_task** %taskPtr, align 8
  %214 = icmp eq %struct.learner_task* %213, null
  br i1 %214, label %215, label %216

; <label>:215                                     ; preds = %212
  br label %957

; <label>:216                                     ; preds = %212
  %217 = load %struct.learner_task*, %struct.learner_task** %taskPtr, align 8
  %218 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %op, align 4
  %220 = load %struct.learner_task*, %struct.learner_task** %taskPtr, align 8
  %221 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %fromId, align 8
  %223 = load %struct.learner_task*, %struct.learner_task** %taskPtr, align 8
  %224 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %toId, align 8
  store i32 -1, i32* %__status1, align 4
  store i32 9, i32* %tries2, align 4
  br label %226

; <label>:226                                     ; preds = %247, %216
  br label %227

; <label>:227                                     ; preds = %230, %226
  %228 = call i64 (...) @RTM_fallback_isLocked()
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

; <label>:230                                     ; preds = %227
  call void @llvm.x86.sse2.pause() #5
  br label %227

; <label>:231                                     ; preds = %227
  %232 = load i32, i32* %tries2, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %tries2, align 4
  %234 = load i32, i32* %tries2, align 4
  %235 = icmp sle i32 %234, 0
  br i1 %235, label %236, label %237

; <label>:236                                     ; preds = %231
  call void (...) @RTM_fallback_lock()
  br label %254

; <label>:237                                     ; preds = %231
  store i64 3, i64* %34, align 8
  store i64 0, i64* %handler.i30, align 8
  store i64 4294967295, i64* %ret.i31, align 8
  %238 = load i64, i64* %ret.i31, align 8
  %239 = load i64, i64* %34, align 8
  %240 = load i64, i64* %handler.i30, align 8
  %241 = load i64, i64* %34, align 8
  %242 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %239, i64 %240, i64 %241, i64 %238) #5, !srcloc !1
  store i64 %242, i64* %ret.i31, align 8
  %243 = load i64, i64* %ret.i31, align 8
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %__status1, align 4
  %245 = load i32, i32* %__status1, align 4
  %246 = icmp ne i32 %245, -1
  br i1 %246, label %247, label %248

; <label>:247                                     ; preds = %237
  br label %226

; <label>:248                                     ; preds = %237
  %249 = call i64 (...) @RTM_fallback_isLocked()
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %253

; <label>:251                                     ; preds = %248
  store i64 255, i64* %33, align 8
  %252 = load i64, i64* %33, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %252) #5, !srcloc !2
  br label %253

; <label>:253                                     ; preds = %251, %248
  br label %254

; <label>:254                                     ; preds = %253, %236
  store i64 1, i64* %isTaskValid, align 8
  %255 = load i32, i32* %op, align 4
  switch i32 %255, label %289 [
    i32 0, label %256
    i32 1, label %272
    i32 2, label %273
  ]

; <label>:256                                     ; preds = %254
  %257 = load %struct.net*, %struct.net** %netPtr, align 8
  %258 = load i64, i64* %fromId, align 8
  %259 = load i64, i64* %toId, align 8
  %260 = call i64 @TMnet_hasEdge(%struct.net* %257, i64 %258, i64 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %270, label %262

; <label>:262                                     ; preds = %256
  %263 = load %struct.net*, %struct.net** %netPtr, align 8
  %264 = load i64, i64* %toId, align 8
  %265 = load i64, i64* %fromId, align 8
  %266 = load %struct.bitmap*, %struct.bitmap** %visitedBitmapPtr, align 8
  %267 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %268 = call i64 @TMnet_isPath(%struct.net* %263, i64 %264, i64 %265, %struct.bitmap* %266, %struct.queue* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %271

; <label>:270                                     ; preds = %262, %256
  store i64 0, i64* %isTaskValid, align 8
  br label %271

; <label>:271                                     ; preds = %270, %262
  br label %290

; <label>:272                                     ; preds = %254
  br label %290

; <label>:273                                     ; preds = %254
  %274 = load %struct.net*, %struct.net** %netPtr, align 8
  %275 = load i64, i64* %fromId, align 8
  %276 = load i64, i64* %toId, align 8
  call void @TMnet_applyOperation(%struct.net* %274, i32 1, i64 %275, i64 %276)
  %277 = load %struct.net*, %struct.net** %netPtr, align 8
  %278 = load i64, i64* %fromId, align 8
  %279 = load i64, i64* %toId, align 8
  %280 = load %struct.bitmap*, %struct.bitmap** %visitedBitmapPtr, align 8
  %281 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %282 = call i64 @TMnet_isPath(%struct.net* %277, i64 %278, i64 %279, %struct.bitmap* %280, %struct.queue* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %285

; <label>:284                                     ; preds = %273
  store i64 0, i64* %isTaskValid, align 8
  br label %285

; <label>:285                                     ; preds = %284, %273
  %286 = load %struct.net*, %struct.net** %netPtr, align 8
  %287 = load i64, i64* %fromId, align 8
  %288 = load i64, i64* %toId, align 8
  call void @TMnet_applyOperation(%struct.net* %286, i32 0, i64 %287, i64 %288)
  br label %290

; <label>:289                                     ; preds = %254
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1245, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable

; <label>:290                                     ; preds = %285, %272, %271
  %291 = load i64, i64* %isTaskValid, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %298

; <label>:293                                     ; preds = %290
  %294 = load %struct.net*, %struct.net** %netPtr, align 8
  %295 = load i32, i32* %op, align 4
  %296 = load i64, i64* %fromId, align 8
  %297 = load i64, i64* %toId, align 8
  call void @TMnet_applyOperation(%struct.net* %294, i32 %295, i64 %296, i64 %297)
  br label %298

; <label>:298                                     ; preds = %293, %290
  %299 = load i32, i32* %tries2, align 4
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %303

; <label>:301                                     ; preds = %298
  store i64 3, i64* %32, align 8
  %302 = load i64, i64* %32, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %302) #5, !srcloc !3
  br label %304

; <label>:303                                     ; preds = %298
  call void (...) @RTM_fallback_unlock()
  br label %304

; <label>:304                                     ; preds = %303, %301
  store float 0.000000e+00, float* %deltaLogLikelihood, align 4
  %305 = load i64, i64* %isTaskValid, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %666

; <label>:307                                     ; preds = %304
  %308 = load i32, i32* %op, align 4
  switch i32 %308, label %664 [
    i32 0, label %309
    i32 1, label %421
    i32 2, label %533
  ]

; <label>:309                                     ; preds = %307
  store i32 -1, i32* %__status3, align 4
  store i32 9, i32* %tries4, align 4
  br label %310

; <label>:310                                     ; preds = %331, %309
  br label %311

; <label>:311                                     ; preds = %314, %310
  %312 = call i64 (...) @RTM_fallback_isLocked()
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %315

; <label>:314                                     ; preds = %311
  call void @llvm.x86.sse2.pause() #5
  br label %311

; <label>:315                                     ; preds = %311
  %316 = load i32, i32* %tries4, align 4
  %317 = add nsw i32 %316, -1
  store i32 %317, i32* %tries4, align 4
  %318 = load i32, i32* %tries4, align 4
  %319 = icmp sle i32 %318, 0
  br i1 %319, label %320, label %321

; <label>:320                                     ; preds = %315
  call void (...) @RTM_fallback_lock()
  br label %338

; <label>:321                                     ; preds = %315
  store i64 4, i64* %30, align 8
  store i64 0, i64* %handler.i34, align 8
  store i64 4294967295, i64* %ret.i35, align 8
  %322 = load i64, i64* %ret.i35, align 8
  %323 = load i64, i64* %30, align 8
  %324 = load i64, i64* %handler.i34, align 8
  %325 = load i64, i64* %30, align 8
  %326 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %323, i64 %324, i64 %325, i64 %322) #5, !srcloc !1
  store i64 %326, i64* %ret.i35, align 8
  %327 = load i64, i64* %ret.i35, align 8
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %__status3, align 4
  %329 = load i32, i32* %__status3, align 4
  %330 = icmp ne i32 %329, -1
  br i1 %330, label %331, label %332

; <label>:331                                     ; preds = %321
  br label %310

; <label>:332                                     ; preds = %321
  %333 = call i64 (...) @RTM_fallback_isLocked()
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %337

; <label>:335                                     ; preds = %332
  store i64 255, i64* %29, align 8
  %336 = load i64, i64* %29, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %336) #5, !srcloc !2
  br label %337

; <label>:337                                     ; preds = %335, %332
  br label %338

; <label>:338                                     ; preds = %337, %320
  %339 = load %struct.net*, %struct.net** %netPtr, align 8
  %340 = load i64, i64* %toId, align 8
  %341 = load %struct.query*, %struct.query** %queries, align 8
  %342 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %343 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  call void @TMpopulateQueryVectors(%struct.net* %339, i64 %340, %struct.query* %341, %struct.vector* %342, %struct.vector* %343)
  %344 = load i64, i64* %toId, align 8
  %345 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %346 = load %struct.net*, %struct.net** %netPtr, align 8
  %347 = load %struct.query*, %struct.query** %queries, align 8
  %348 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %349 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %350 = call float @computeLocalLogLikelihood(i64 %344, %struct.adtree* %345, %struct.net* %346, %struct.query* %347, %struct.vector* %348, %struct.vector* %349)
  store float %350, float* %newBaseLogLikelihood, align 4
  %351 = load i64, i64* %toId, align 8
  %352 = load float*, float** %localBaseLogLikelihoods, align 8
  %353 = getelementptr inbounds float, float* %352, i64 %351
  %354 = load float, float* %353, align 4
  store float %354, float* %toLocalBaseLogLikelihood, align 4
  %355 = load float, float* %toLocalBaseLogLikelihood, align 4
  %356 = load float, float* %newBaseLogLikelihood, align 4
  %357 = fsub float %355, %356
  %358 = load float, float* %deltaLogLikelihood, align 4
  %359 = fadd float %358, %357
  store float %359, float* %deltaLogLikelihood, align 4
  %360 = load float, float* %newBaseLogLikelihood, align 4
  %361 = load i64, i64* %toId, align 8
  %362 = load float*, float** %localBaseLogLikelihoods, align 8
  %363 = getelementptr inbounds float, float* %362, i64 %361
  store float %360, float* %363, align 4
  %364 = load i64, i64* %toId, align 8
  %365 = load float*, float** %localBaseLogLikelihoods, align 8
  %366 = getelementptr inbounds float, float* %365, i64 %364
  %367 = load float, float* %366, align 4
  store float %367, float* %41, align 4
  %368 = load float, float* %41, align 4
  %369 = load i32, i32* %tries4, align 4
  %370 = icmp sgt i32 %369, 0
  br i1 %370, label %371, label %373

; <label>:371                                     ; preds = %338
  store i64 4, i64* %28, align 8
  %372 = load i64, i64* %28, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %372) #5, !srcloc !3
  br label %374

; <label>:373                                     ; preds = %338
  call void (...) @RTM_fallback_unlock()
  br label %374

; <label>:374                                     ; preds = %373, %371
  store i32 -1, i32* %__status5, align 4
  store i32 9, i32* %tries6, align 4
  br label %375

; <label>:375                                     ; preds = %396, %374
  br label %376

; <label>:376                                     ; preds = %379, %375
  %377 = call i64 (...) @RTM_fallback_isLocked()
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %380

; <label>:379                                     ; preds = %376
  call void @llvm.x86.sse2.pause() #5
  br label %376

; <label>:380                                     ; preds = %376
  %381 = load i32, i32* %tries6, align 4
  %382 = add nsw i32 %381, -1
  store i32 %382, i32* %tries6, align 4
  %383 = load i32, i32* %tries6, align 4
  %384 = icmp sle i32 %383, 0
  br i1 %384, label %385, label %386

; <label>:385                                     ; preds = %380
  call void (...) @RTM_fallback_lock()
  br label %403

; <label>:386                                     ; preds = %380
  store i64 5, i64* %26, align 8
  store i64 0, i64* %handler.i36, align 8
  store i64 4294967295, i64* %ret.i37, align 8
  %387 = load i64, i64* %ret.i37, align 8
  %388 = load i64, i64* %26, align 8
  %389 = load i64, i64* %handler.i36, align 8
  %390 = load i64, i64* %26, align 8
  %391 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %388, i64 %389, i64 %390, i64 %387) #5, !srcloc !1
  store i64 %391, i64* %ret.i37, align 8
  %392 = load i64, i64* %ret.i37, align 8
  %393 = trunc i64 %392 to i32
  store i32 %393, i32* %__status5, align 4
  %394 = load i32, i32* %__status5, align 4
  %395 = icmp ne i32 %394, -1
  br i1 %395, label %396, label %397

; <label>:396                                     ; preds = %386
  br label %375

; <label>:397                                     ; preds = %386
  %398 = call i64 (...) @RTM_fallback_isLocked()
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %402

; <label>:400                                     ; preds = %397
  store i64 255, i64* %25, align 8
  %401 = load i64, i64* %25, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %401) #5, !srcloc !2
  br label %402

; <label>:402                                     ; preds = %400, %397
  br label %403

; <label>:403                                     ; preds = %402, %385
  %404 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %405 = getelementptr inbounds %struct.learner, %struct.learner* %404, i32 0, i32 10
  %406 = load i64, i64* %405, align 8
  store i64 %406, i64* %numTotalParent, align 8
  %407 = load i64, i64* %numTotalParent, align 8
  %408 = add nsw i64 %407, 1
  %409 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %410 = getelementptr inbounds %struct.learner, %struct.learner* %409, i32 0, i32 10
  store i64 %408, i64* %410, align 8
  %411 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %412 = getelementptr inbounds %struct.learner, %struct.learner* %411, i32 0, i32 10
  %413 = load i64, i64* %412, align 8
  store i64 %413, i64* %42, align 8
  %414 = load i64, i64* %42, align 8
  %415 = load i32, i32* %tries6, align 4
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %419

; <label>:417                                     ; preds = %403
  store i64 5, i64* %24, align 8
  %418 = load i64, i64* %24, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %418) #5, !srcloc !3
  br label %420

; <label>:419                                     ; preds = %403
  call void (...) @RTM_fallback_unlock()
  br label %420

; <label>:420                                     ; preds = %419, %417
  br label %665

; <label>:421                                     ; preds = %307
  store i32 -1, i32* %__status7, align 4
  store i32 9, i32* %tries8, align 4
  br label %422

; <label>:422                                     ; preds = %443, %421
  br label %423

; <label>:423                                     ; preds = %426, %422
  %424 = call i64 (...) @RTM_fallback_isLocked()
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %427

; <label>:426                                     ; preds = %423
  call void @llvm.x86.sse2.pause() #5
  br label %423

; <label>:427                                     ; preds = %423
  %428 = load i32, i32* %tries8, align 4
  %429 = add nsw i32 %428, -1
  store i32 %429, i32* %tries8, align 4
  %430 = load i32, i32* %tries8, align 4
  %431 = icmp sle i32 %430, 0
  br i1 %431, label %432, label %433

; <label>:432                                     ; preds = %427
  call void (...) @RTM_fallback_lock()
  br label %450

; <label>:433                                     ; preds = %427
  store i64 6, i64* %23, align 8
  store i64 0, i64* %handler.i38, align 8
  store i64 4294967295, i64* %ret.i39, align 8
  %434 = load i64, i64* %ret.i39, align 8
  %435 = load i64, i64* %23, align 8
  %436 = load i64, i64* %handler.i38, align 8
  %437 = load i64, i64* %23, align 8
  %438 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %435, i64 %436, i64 %437, i64 %434) #5, !srcloc !1
  store i64 %438, i64* %ret.i39, align 8
  %439 = load i64, i64* %ret.i39, align 8
  %440 = trunc i64 %439 to i32
  store i32 %440, i32* %__status7, align 4
  %441 = load i32, i32* %__status7, align 4
  %442 = icmp ne i32 %441, -1
  br i1 %442, label %443, label %444

; <label>:443                                     ; preds = %433
  br label %422

; <label>:444                                     ; preds = %433
  %445 = call i64 (...) @RTM_fallback_isLocked()
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %449

; <label>:447                                     ; preds = %444
  store i64 255, i64* %22, align 8
  %448 = load i64, i64* %22, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %448) #5, !srcloc !2
  br label %449

; <label>:449                                     ; preds = %447, %444
  br label %450

; <label>:450                                     ; preds = %449, %432
  %451 = load %struct.net*, %struct.net** %netPtr, align 8
  %452 = load i64, i64* %fromId, align 8
  %453 = load %struct.query*, %struct.query** %queries, align 8
  %454 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %455 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  call void @TMpopulateQueryVectors(%struct.net* %451, i64 %452, %struct.query* %453, %struct.vector* %454, %struct.vector* %455)
  %456 = load i64, i64* %fromId, align 8
  %457 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %458 = load %struct.net*, %struct.net** %netPtr, align 8
  %459 = load %struct.query*, %struct.query** %queries, align 8
  %460 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %461 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %462 = call float @computeLocalLogLikelihood(i64 %456, %struct.adtree* %457, %struct.net* %458, %struct.query* %459, %struct.vector* %460, %struct.vector* %461)
  store float %462, float* %newBaseLogLikelihood, align 4
  %463 = load i64, i64* %fromId, align 8
  %464 = load float*, float** %localBaseLogLikelihoods, align 8
  %465 = getelementptr inbounds float, float* %464, i64 %463
  %466 = load float, float* %465, align 4
  store float %466, float* %fromLocalBaseLogLikelihood, align 4
  %467 = load float, float* %fromLocalBaseLogLikelihood, align 4
  %468 = load float, float* %newBaseLogLikelihood, align 4
  %469 = fsub float %467, %468
  %470 = load float, float* %deltaLogLikelihood, align 4
  %471 = fadd float %470, %469
  store float %471, float* %deltaLogLikelihood, align 4
  %472 = load float, float* %newBaseLogLikelihood, align 4
  %473 = load i64, i64* %fromId, align 8
  %474 = load float*, float** %localBaseLogLikelihoods, align 8
  %475 = getelementptr inbounds float, float* %474, i64 %473
  store float %472, float* %475, align 4
  %476 = load i64, i64* %fromId, align 8
  %477 = load float*, float** %localBaseLogLikelihoods, align 8
  %478 = getelementptr inbounds float, float* %477, i64 %476
  %479 = load float, float* %478, align 4
  store float %479, float* %43, align 4
  %480 = load float, float* %43, align 4
  %481 = load i32, i32* %tries8, align 4
  %482 = icmp sgt i32 %481, 0
  br i1 %482, label %483, label %485

; <label>:483                                     ; preds = %450
  store i64 6, i64* %21, align 8
  %484 = load i64, i64* %21, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %484) #5, !srcloc !3
  br label %486

; <label>:485                                     ; preds = %450
  call void (...) @RTM_fallback_unlock()
  br label %486

; <label>:486                                     ; preds = %485, %483
  store i32 -1, i32* %__status9, align 4
  store i32 9, i32* %tries10, align 4
  br label %487

; <label>:487                                     ; preds = %508, %486
  br label %488

; <label>:488                                     ; preds = %491, %487
  %489 = call i64 (...) @RTM_fallback_isLocked()
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %492

; <label>:491                                     ; preds = %488
  call void @llvm.x86.sse2.pause() #5
  br label %488

; <label>:492                                     ; preds = %488
  %493 = load i32, i32* %tries10, align 4
  %494 = add nsw i32 %493, -1
  store i32 %494, i32* %tries10, align 4
  %495 = load i32, i32* %tries10, align 4
  %496 = icmp sle i32 %495, 0
  br i1 %496, label %497, label %498

; <label>:497                                     ; preds = %492
  call void (...) @RTM_fallback_lock()
  br label %515

; <label>:498                                     ; preds = %492
  store i64 7, i64* %19, align 8
  store i64 0, i64* %handler.i40, align 8
  store i64 4294967295, i64* %ret.i41, align 8
  %499 = load i64, i64* %ret.i41, align 8
  %500 = load i64, i64* %19, align 8
  %501 = load i64, i64* %handler.i40, align 8
  %502 = load i64, i64* %19, align 8
  %503 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %500, i64 %501, i64 %502, i64 %499) #5, !srcloc !1
  store i64 %503, i64* %ret.i41, align 8
  %504 = load i64, i64* %ret.i41, align 8
  %505 = trunc i64 %504 to i32
  store i32 %505, i32* %__status9, align 4
  %506 = load i32, i32* %__status9, align 4
  %507 = icmp ne i32 %506, -1
  br i1 %507, label %508, label %509

; <label>:508                                     ; preds = %498
  br label %487

; <label>:509                                     ; preds = %498
  %510 = call i64 (...) @RTM_fallback_isLocked()
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %514

; <label>:512                                     ; preds = %509
  store i64 255, i64* %18, align 8
  %513 = load i64, i64* %18, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %513) #5, !srcloc !2
  br label %514

; <label>:514                                     ; preds = %512, %509
  br label %515

; <label>:515                                     ; preds = %514, %497
  %516 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %517 = getelementptr inbounds %struct.learner, %struct.learner* %516, i32 0, i32 10
  %518 = load i64, i64* %517, align 8
  store i64 %518, i64* %numTotalParent11, align 8
  %519 = load i64, i64* %numTotalParent11, align 8
  %520 = sub nsw i64 %519, 1
  %521 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %522 = getelementptr inbounds %struct.learner, %struct.learner* %521, i32 0, i32 10
  store i64 %520, i64* %522, align 8
  %523 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %524 = getelementptr inbounds %struct.learner, %struct.learner* %523, i32 0, i32 10
  %525 = load i64, i64* %524, align 8
  store i64 %525, i64* %44, align 8
  %526 = load i64, i64* %44, align 8
  %527 = load i32, i32* %tries10, align 4
  %528 = icmp sgt i32 %527, 0
  br i1 %528, label %529, label %531

; <label>:529                                     ; preds = %515
  store i64 7, i64* %17, align 8
  %530 = load i64, i64* %17, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %530) #5, !srcloc !3
  br label %532

; <label>:531                                     ; preds = %515
  call void (...) @RTM_fallback_unlock()
  br label %532

; <label>:532                                     ; preds = %531, %529
  br label %665

; <label>:533                                     ; preds = %307
  store i32 -1, i32* %__status12, align 4
  store i32 9, i32* %tries13, align 4
  br label %534

; <label>:534                                     ; preds = %555, %533
  br label %535

; <label>:535                                     ; preds = %538, %534
  %536 = call i64 (...) @RTM_fallback_isLocked()
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %538, label %539

; <label>:538                                     ; preds = %535
  call void @llvm.x86.sse2.pause() #5
  br label %535

; <label>:539                                     ; preds = %535
  %540 = load i32, i32* %tries13, align 4
  %541 = add nsw i32 %540, -1
  store i32 %541, i32* %tries13, align 4
  %542 = load i32, i32* %tries13, align 4
  %543 = icmp sle i32 %542, 0
  br i1 %543, label %544, label %545

; <label>:544                                     ; preds = %539
  call void (...) @RTM_fallback_lock()
  br label %562

; <label>:545                                     ; preds = %539
  store i64 8, i64* %15, align 8
  store i64 0, i64* %handler.i44, align 8
  store i64 4294967295, i64* %ret.i45, align 8
  %546 = load i64, i64* %ret.i45, align 8
  %547 = load i64, i64* %15, align 8
  %548 = load i64, i64* %handler.i44, align 8
  %549 = load i64, i64* %15, align 8
  %550 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %547, i64 %548, i64 %549, i64 %546) #5, !srcloc !1
  store i64 %550, i64* %ret.i45, align 8
  %551 = load i64, i64* %ret.i45, align 8
  %552 = trunc i64 %551 to i32
  store i32 %552, i32* %__status12, align 4
  %553 = load i32, i32* %__status12, align 4
  %554 = icmp ne i32 %553, -1
  br i1 %554, label %555, label %556

; <label>:555                                     ; preds = %545
  br label %534

; <label>:556                                     ; preds = %545
  %557 = call i64 (...) @RTM_fallback_isLocked()
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %559, label %561

; <label>:559                                     ; preds = %556
  store i64 255, i64* %14, align 8
  %560 = load i64, i64* %14, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %560) #5, !srcloc !2
  br label %561

; <label>:561                                     ; preds = %559, %556
  br label %562

; <label>:562                                     ; preds = %561, %544
  %563 = load %struct.net*, %struct.net** %netPtr, align 8
  %564 = load i64, i64* %fromId, align 8
  %565 = load %struct.query*, %struct.query** %queries, align 8
  %566 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %567 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  call void @TMpopulateQueryVectors(%struct.net* %563, i64 %564, %struct.query* %565, %struct.vector* %566, %struct.vector* %567)
  %568 = load i64, i64* %fromId, align 8
  %569 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %570 = load %struct.net*, %struct.net** %netPtr, align 8
  %571 = load %struct.query*, %struct.query** %queries, align 8
  %572 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %573 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %574 = call float @computeLocalLogLikelihood(i64 %568, %struct.adtree* %569, %struct.net* %570, %struct.query* %571, %struct.vector* %572, %struct.vector* %573)
  store float %574, float* %newBaseLogLikelihood, align 4
  %575 = load i64, i64* %fromId, align 8
  %576 = load float*, float** %localBaseLogLikelihoods, align 8
  %577 = getelementptr inbounds float, float* %576, i64 %575
  %578 = load float, float* %577, align 4
  store float %578, float* %fromLocalBaseLogLikelihood14, align 4
  %579 = load float, float* %fromLocalBaseLogLikelihood14, align 4
  %580 = load float, float* %newBaseLogLikelihood, align 4
  %581 = fsub float %579, %580
  %582 = load float, float* %deltaLogLikelihood, align 4
  %583 = fadd float %582, %581
  store float %583, float* %deltaLogLikelihood, align 4
  %584 = load float, float* %newBaseLogLikelihood, align 4
  %585 = load i64, i64* %fromId, align 8
  %586 = load float*, float** %localBaseLogLikelihoods, align 8
  %587 = getelementptr inbounds float, float* %586, i64 %585
  store float %584, float* %587, align 4
  %588 = load i64, i64* %fromId, align 8
  %589 = load float*, float** %localBaseLogLikelihoods, align 8
  %590 = getelementptr inbounds float, float* %589, i64 %588
  %591 = load float, float* %590, align 4
  store float %591, float* %45, align 4
  %592 = load float, float* %45, align 4
  %593 = load i32, i32* %tries13, align 4
  %594 = icmp sgt i32 %593, 0
  br i1 %594, label %595, label %597

; <label>:595                                     ; preds = %562
  store i64 8, i64* %13, align 8
  %596 = load i64, i64* %13, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %596) #5, !srcloc !3
  br label %598

; <label>:597                                     ; preds = %562
  call void (...) @RTM_fallback_unlock()
  br label %598

; <label>:598                                     ; preds = %597, %595
  store i32 -1, i32* %__status15, align 4
  store i32 9, i32* %tries16, align 4
  br label %599

; <label>:599                                     ; preds = %620, %598
  br label %600

; <label>:600                                     ; preds = %603, %599
  %601 = call i64 (...) @RTM_fallback_isLocked()
  %602 = icmp ne i64 %601, 0
  br i1 %602, label %603, label %604

; <label>:603                                     ; preds = %600
  call void @llvm.x86.sse2.pause() #5
  br label %600

; <label>:604                                     ; preds = %600
  %605 = load i32, i32* %tries16, align 4
  %606 = add nsw i32 %605, -1
  store i32 %606, i32* %tries16, align 4
  %607 = load i32, i32* %tries16, align 4
  %608 = icmp sle i32 %607, 0
  br i1 %608, label %609, label %610

; <label>:609                                     ; preds = %604
  call void (...) @RTM_fallback_lock()
  br label %627

; <label>:610                                     ; preds = %604
  store i64 9, i64* %11, align 8
  store i64 0, i64* %handler.i46, align 8
  store i64 4294967295, i64* %ret.i47, align 8
  %611 = load i64, i64* %ret.i47, align 8
  %612 = load i64, i64* %11, align 8
  %613 = load i64, i64* %handler.i46, align 8
  %614 = load i64, i64* %11, align 8
  %615 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %612, i64 %613, i64 %614, i64 %611) #5, !srcloc !1
  store i64 %615, i64* %ret.i47, align 8
  %616 = load i64, i64* %ret.i47, align 8
  %617 = trunc i64 %616 to i32
  store i32 %617, i32* %__status15, align 4
  %618 = load i32, i32* %__status15, align 4
  %619 = icmp ne i32 %618, -1
  br i1 %619, label %620, label %621

; <label>:620                                     ; preds = %610
  br label %599

; <label>:621                                     ; preds = %610
  %622 = call i64 (...) @RTM_fallback_isLocked()
  %623 = icmp ne i64 %622, 0
  br i1 %623, label %624, label %626

; <label>:624                                     ; preds = %621
  store i64 255, i64* %10, align 8
  %625 = load i64, i64* %10, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %625) #5, !srcloc !2
  br label %626

; <label>:626                                     ; preds = %624, %621
  br label %627

; <label>:627                                     ; preds = %626, %609
  %628 = load %struct.net*, %struct.net** %netPtr, align 8
  %629 = load i64, i64* %toId, align 8
  %630 = load %struct.query*, %struct.query** %queries, align 8
  %631 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %632 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  call void @TMpopulateQueryVectors(%struct.net* %628, i64 %629, %struct.query* %630, %struct.vector* %631, %struct.vector* %632)
  %633 = load i64, i64* %toId, align 8
  %634 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %635 = load %struct.net*, %struct.net** %netPtr, align 8
  %636 = load %struct.query*, %struct.query** %queries, align 8
  %637 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %638 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %639 = call float @computeLocalLogLikelihood(i64 %633, %struct.adtree* %634, %struct.net* %635, %struct.query* %636, %struct.vector* %637, %struct.vector* %638)
  store float %639, float* %newBaseLogLikelihood, align 4
  %640 = load i64, i64* %toId, align 8
  %641 = load float*, float** %localBaseLogLikelihoods, align 8
  %642 = getelementptr inbounds float, float* %641, i64 %640
  %643 = load float, float* %642, align 4
  store float %643, float* %toLocalBaseLogLikelihood17, align 4
  %644 = load float, float* %toLocalBaseLogLikelihood17, align 4
  %645 = load float, float* %newBaseLogLikelihood, align 4
  %646 = fsub float %644, %645
  %647 = load float, float* %deltaLogLikelihood, align 4
  %648 = fadd float %647, %646
  store float %648, float* %deltaLogLikelihood, align 4
  %649 = load float, float* %newBaseLogLikelihood, align 4
  %650 = load i64, i64* %toId, align 8
  %651 = load float*, float** %localBaseLogLikelihoods, align 8
  %652 = getelementptr inbounds float, float* %651, i64 %650
  store float %649, float* %652, align 4
  %653 = load i64, i64* %toId, align 8
  %654 = load float*, float** %localBaseLogLikelihoods, align 8
  %655 = getelementptr inbounds float, float* %654, i64 %653
  %656 = load float, float* %655, align 4
  store float %656, float* %46, align 4
  %657 = load float, float* %46, align 4
  %658 = load i32, i32* %tries16, align 4
  %659 = icmp sgt i32 %658, 0
  br i1 %659, label %660, label %662

; <label>:660                                     ; preds = %627
  store i64 9, i64* %9, align 8
  %661 = load i64, i64* %9, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %661) #5, !srcloc !3
  br label %663

; <label>:662                                     ; preds = %627
  call void (...) @RTM_fallback_unlock()
  br label %663

; <label>:663                                     ; preds = %662, %660
  br label %665

; <label>:664                                     ; preds = %307
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1378, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable

; <label>:665                                     ; preds = %663, %532, %420
  br label %666

; <label>:666                                     ; preds = %665, %304
  store i32 -1, i32* %__status19, align 4
  store i32 9, i32* %tries20, align 4
  br label %667

; <label>:667                                     ; preds = %688, %666
  br label %668

; <label>:668                                     ; preds = %671, %667
  %669 = call i64 (...) @RTM_fallback_isLocked()
  %670 = icmp ne i64 %669, 0
  br i1 %670, label %671, label %672

; <label>:671                                     ; preds = %668
  call void @llvm.x86.sse2.pause() #5
  br label %668

; <label>:672                                     ; preds = %668
  %673 = load i32, i32* %tries20, align 4
  %674 = add nsw i32 %673, -1
  store i32 %674, i32* %tries20, align 4
  %675 = load i32, i32* %tries20, align 4
  %676 = icmp sle i32 %675, 0
  br i1 %676, label %677, label %678

; <label>:677                                     ; preds = %672
  call void (...) @RTM_fallback_lock()
  br label %695

; <label>:678                                     ; preds = %672
  store i64 10, i64* %8, align 8
  store i64 0, i64* %handler.i48, align 8
  store i64 4294967295, i64* %ret.i49, align 8
  %679 = load i64, i64* %ret.i49, align 8
  %680 = load i64, i64* %8, align 8
  %681 = load i64, i64* %handler.i48, align 8
  %682 = load i64, i64* %8, align 8
  %683 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %680, i64 %681, i64 %682, i64 %679) #5, !srcloc !1
  store i64 %683, i64* %ret.i49, align 8
  %684 = load i64, i64* %ret.i49, align 8
  %685 = trunc i64 %684 to i32
  store i32 %685, i32* %__status19, align 4
  %686 = load i32, i32* %__status19, align 4
  %687 = icmp ne i32 %686, -1
  br i1 %687, label %688, label %689

; <label>:688                                     ; preds = %678
  br label %667

; <label>:689                                     ; preds = %678
  %690 = call i64 (...) @RTM_fallback_isLocked()
  %691 = icmp ne i64 %690, 0
  br i1 %691, label %692, label %694

; <label>:692                                     ; preds = %689
  store i64 255, i64* %7, align 8
  %693 = load i64, i64* %7, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %693) #5, !srcloc !2
  br label %694

; <label>:694                                     ; preds = %692, %689
  br label %695

; <label>:695                                     ; preds = %694, %677
  %696 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %697 = getelementptr inbounds %struct.learner, %struct.learner* %696, i32 0, i32 4
  %698 = load float, float* %697, align 8
  store float %698, float* %oldBaseLogLikelihood, align 4
  %699 = load float, float* %oldBaseLogLikelihood, align 4
  %700 = load float, float* %deltaLogLikelihood, align 4
  %701 = fadd float %699, %700
  store float %701, float* %newBaseLogLikelihood21, align 4
  %702 = load float, float* %newBaseLogLikelihood21, align 4
  %703 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %704 = getelementptr inbounds %struct.learner, %struct.learner* %703, i32 0, i32 4
  store float %702, float* %704, align 8
  %705 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %706 = getelementptr inbounds %struct.learner, %struct.learner* %705, i32 0, i32 4
  %707 = load float, float* %706, align 8
  store float %707, float* %47, align 4
  %708 = load float, float* %47, align 4
  %709 = load float, float* %newBaseLogLikelihood21, align 4
  store float %709, float* %baseLogLikelihood, align 4
  %710 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %711 = getelementptr inbounds %struct.learner, %struct.learner* %710, i32 0, i32 10
  %712 = load i64, i64* %711, align 8
  store i64 %712, i64* %numTotalParent18, align 8
  %713 = load i32, i32* %tries20, align 4
  %714 = icmp sgt i32 %713, 0
  br i1 %714, label %715, label %717

; <label>:715                                     ; preds = %695
  store i64 10, i64* %6, align 8
  %716 = load i64, i64* %6, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %716) #5, !srcloc !3
  br label %718

; <label>:717                                     ; preds = %695
  call void (...) @RTM_fallback_unlock()
  br label %718

; <label>:718                                     ; preds = %717, %715
  %719 = load i64, i64* %numTotalParent18, align 8
  %720 = sitofp i64 %719 to float
  %721 = load float, float* %basePenalty, align 4
  %722 = fmul float %720, %721
  %723 = load i64, i64* %numRecord, align 8
  %724 = sitofp i64 %723 to float
  %725 = load float, float* %baseLogLikelihood, align 4
  %726 = fmul float %724, %725
  %727 = fadd float %722, %726
  store float %727, float* %baseScore, align 4
  %728 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 0
  store i32 3, i32* %728, align 8
  %729 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  store i64 -1, i64* %729, align 8
  %730 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 1
  store i64 -1, i64* %730, align 8
  %731 = load float, float* %baseScore, align 4
  %732 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float %731, float* %732, align 8
  %733 = load i64, i64* %toId, align 8
  %734 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 0
  store i64 %733, i64* %734, align 8
  %735 = load i64, i64* %numTotalParent18, align 8
  %736 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 5
  store i64 %735, i64* %736, align 8
  %737 = load float, float* %basePenalty, align 4
  %738 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 6
  store float %737, float* %738, align 8
  %739 = load float, float* %baseLogLikelihood, align 4
  %740 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 7
  store float %739, float* %740, align 4
  store i32 -1, i32* %__status22, align 4
  store i32 9, i32* %tries23, align 4
  br label %741

; <label>:741                                     ; preds = %762, %718
  br label %742

; <label>:742                                     ; preds = %745, %741
  %743 = call i64 (...) @RTM_fallback_isLocked()
  %744 = icmp ne i64 %743, 0
  br i1 %744, label %745, label %746

; <label>:745                                     ; preds = %742
  call void @llvm.x86.sse2.pause() #5
  br label %742

; <label>:746                                     ; preds = %742
  %747 = load i32, i32* %tries23, align 4
  %748 = add nsw i32 %747, -1
  store i32 %748, i32* %tries23, align 4
  %749 = load i32, i32* %tries23, align 4
  %750 = icmp sle i32 %749, 0
  br i1 %750, label %751, label %752

; <label>:751                                     ; preds = %746
  call void (...) @RTM_fallback_lock()
  br label %769

; <label>:752                                     ; preds = %746
  store i64 11, i64* %4, align 8
  store i64 0, i64* %handler.i50, align 8
  store i64 4294967295, i64* %ret.i51, align 8
  %753 = load i64, i64* %ret.i51, align 8
  %754 = load i64, i64* %4, align 8
  %755 = load i64, i64* %handler.i50, align 8
  %756 = load i64, i64* %4, align 8
  %757 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %754, i64 %755, i64 %756, i64 %753) #5, !srcloc !1
  store i64 %757, i64* %ret.i51, align 8
  %758 = load i64, i64* %ret.i51, align 8
  %759 = trunc i64 %758 to i32
  store i32 %759, i32* %__status22, align 4
  %760 = load i32, i32* %__status22, align 4
  %761 = icmp ne i32 %760, -1
  br i1 %761, label %762, label %763

; <label>:762                                     ; preds = %752
  br label %741

; <label>:763                                     ; preds = %752
  %764 = call i64 (...) @RTM_fallback_isLocked()
  %765 = icmp ne i64 %764, 0
  br i1 %765, label %766, label %768

; <label>:766                                     ; preds = %763
  store i64 255, i64* %3, align 8
  %767 = load i64, i64* %3, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %767) #5, !srcloc !2
  br label %768

; <label>:768                                     ; preds = %766, %763
  br label %769

; <label>:769                                     ; preds = %768, %751
  call void @TMfindBestInsertTask(%struct.learner_task* sret %48, %struct.findBestTaskArg* %arg)
  %770 = bitcast %struct.learner_task* %newTask to i8*
  %771 = bitcast %struct.learner_task* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %770, i8* %771, i64 32, i32 8, i1 false)
  %772 = load i32, i32* %tries23, align 4
  %773 = icmp sgt i32 %772, 0
  br i1 %773, label %774, label %776

; <label>:774                                     ; preds = %769
  store i64 11, i64* %2, align 8
  %775 = load i64, i64* %2, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %775) #5, !srcloc !3
  br label %777

; <label>:776                                     ; preds = %769
  call void (...) @RTM_fallback_unlock()
  br label %777

; <label>:777                                     ; preds = %776, %774
  %778 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 1
  %779 = load i64, i64* %778, align 8
  %780 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 2
  %781 = load i64, i64* %780, align 8
  %782 = icmp ne i64 %779, %781
  br i1 %782, label %783, label %794

; <label>:783                                     ; preds = %777
  %784 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 3
  %785 = load float, float* %784, align 8
  %786 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  %787 = load float, float* %786, align 8
  %788 = load float, float* %operationQualityFactor, align 4
  %789 = fdiv float %787, %788
  %790 = fcmp ogt float %785, %789
  br i1 %790, label %791, label %794

; <label>:791                                     ; preds = %783
  %792 = bitcast %struct.learner_task* %bestTask to i8*
  %793 = bitcast %struct.learner_task* %newTask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %792, i8* %793, i64 32, i32 8, i1 false)
  br label %794

; <label>:794                                     ; preds = %791, %783, %777
  store i32 -1, i32* %__status24, align 4
  store i32 9, i32* %tries25, align 4
  br label %795

; <label>:795                                     ; preds = %816, %794
  br label %796

; <label>:796                                     ; preds = %799, %795
  %797 = call i64 (...) @RTM_fallback_isLocked()
  %798 = icmp ne i64 %797, 0
  br i1 %798, label %799, label %800

; <label>:799                                     ; preds = %796
  call void @llvm.x86.sse2.pause() #5
  br label %796

; <label>:800                                     ; preds = %796
  %801 = load i32, i32* %tries25, align 4
  %802 = add nsw i32 %801, -1
  store i32 %802, i32* %tries25, align 4
  %803 = load i32, i32* %tries25, align 4
  %804 = icmp sle i32 %803, 0
  br i1 %804, label %805, label %806

; <label>:805                                     ; preds = %800
  call void (...) @RTM_fallback_lock()
  br label %823

; <label>:806                                     ; preds = %800
  store i64 12, i64* %1, align 8
  store i64 0, i64* %handler.i52, align 8
  store i64 4294967295, i64* %ret.i53, align 8
  %807 = load i64, i64* %ret.i53, align 8
  %808 = load i64, i64* %1, align 8
  %809 = load i64, i64* %handler.i52, align 8
  %810 = load i64, i64* %1, align 8
  %811 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %808, i64 %809, i64 %810, i64 %807) #5, !srcloc !1
  store i64 %811, i64* %ret.i53, align 8
  %812 = load i64, i64* %ret.i53, align 8
  %813 = trunc i64 %812 to i32
  store i32 %813, i32* %__status24, align 4
  %814 = load i32, i32* %__status24, align 4
  %815 = icmp ne i32 %814, -1
  br i1 %815, label %816, label %817

; <label>:816                                     ; preds = %806
  br label %795

; <label>:817                                     ; preds = %806
  %818 = call i64 (...) @RTM_fallback_isLocked()
  %819 = icmp ne i64 %818, 0
  br i1 %819, label %820, label %822

; <label>:820                                     ; preds = %817
  store i64 255, i64* %5, align 8
  %821 = load i64, i64* %5, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %821) #5, !srcloc !2
  br label %822

; <label>:822                                     ; preds = %820, %817
  br label %823

; <label>:823                                     ; preds = %822, %805
  call void @TMfindBestRemoveTask(%struct.learner_task* sret %49, %struct.findBestTaskArg* %arg)
  %824 = bitcast %struct.learner_task* %newTask to i8*
  %825 = bitcast %struct.learner_task* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %824, i8* %825, i64 32, i32 8, i1 false)
  %826 = load i32, i32* %tries25, align 4
  %827 = icmp sgt i32 %826, 0
  br i1 %827, label %828, label %830

; <label>:828                                     ; preds = %823
  store i64 12, i64* %12, align 8
  %829 = load i64, i64* %12, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %829) #5, !srcloc !3
  br label %831

; <label>:830                                     ; preds = %823
  call void (...) @RTM_fallback_unlock()
  br label %831

; <label>:831                                     ; preds = %830, %828
  %832 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 1
  %833 = load i64, i64* %832, align 8
  %834 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 2
  %835 = load i64, i64* %834, align 8
  %836 = icmp ne i64 %833, %835
  br i1 %836, label %837, label %848

; <label>:837                                     ; preds = %831
  %838 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 3
  %839 = load float, float* %838, align 8
  %840 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  %841 = load float, float* %840, align 8
  %842 = load float, float* %operationQualityFactor, align 4
  %843 = fdiv float %841, %842
  %844 = fcmp ogt float %839, %843
  br i1 %844, label %845, label %848

; <label>:845                                     ; preds = %837
  %846 = bitcast %struct.learner_task* %bestTask to i8*
  %847 = bitcast %struct.learner_task* %newTask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %846, i8* %847, i64 32, i32 8, i1 false)
  br label %848

; <label>:848                                     ; preds = %845, %837, %831
  store i32 -1, i32* %__status26, align 4
  store i32 9, i32* %tries27, align 4
  br label %849

; <label>:849                                     ; preds = %870, %848
  br label %850

; <label>:850                                     ; preds = %853, %849
  %851 = call i64 (...) @RTM_fallback_isLocked()
  %852 = icmp ne i64 %851, 0
  br i1 %852, label %853, label %854

; <label>:853                                     ; preds = %850
  call void @llvm.x86.sse2.pause() #5
  br label %850

; <label>:854                                     ; preds = %850
  %855 = load i32, i32* %tries27, align 4
  %856 = add nsw i32 %855, -1
  store i32 %856, i32* %tries27, align 4
  %857 = load i32, i32* %tries27, align 4
  %858 = icmp sle i32 %857, 0
  br i1 %858, label %859, label %860

; <label>:859                                     ; preds = %854
  call void (...) @RTM_fallback_lock()
  br label %877

; <label>:860                                     ; preds = %854
  store i64 13, i64* %16, align 8
  store i64 0, i64* %handler.i42, align 8
  store i64 4294967295, i64* %ret.i43, align 8
  %861 = load i64, i64* %ret.i43, align 8
  %862 = load i64, i64* %16, align 8
  %863 = load i64, i64* %handler.i42, align 8
  %864 = load i64, i64* %16, align 8
  %865 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %862, i64 %863, i64 %864, i64 %861) #5, !srcloc !1
  store i64 %865, i64* %ret.i43, align 8
  %866 = load i64, i64* %ret.i43, align 8
  %867 = trunc i64 %866 to i32
  store i32 %867, i32* %__status26, align 4
  %868 = load i32, i32* %__status26, align 4
  %869 = icmp ne i32 %868, -1
  br i1 %869, label %870, label %871

; <label>:870                                     ; preds = %860
  br label %849

; <label>:871                                     ; preds = %860
  %872 = call i64 (...) @RTM_fallback_isLocked()
  %873 = icmp ne i64 %872, 0
  br i1 %873, label %874, label %876

; <label>:874                                     ; preds = %871
  store i64 255, i64* %20, align 8
  %875 = load i64, i64* %20, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %875) #5, !srcloc !2
  br label %876

; <label>:876                                     ; preds = %874, %871
  br label %877

; <label>:877                                     ; preds = %876, %859
  call void @TMfindBestReverseTask(%struct.learner_task* sret %50, %struct.findBestTaskArg* %arg)
  %878 = bitcast %struct.learner_task* %newTask to i8*
  %879 = bitcast %struct.learner_task* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %878, i8* %879, i64 32, i32 8, i1 false)
  %880 = load i32, i32* %tries27, align 4
  %881 = icmp sgt i32 %880, 0
  br i1 %881, label %882, label %884

; <label>:882                                     ; preds = %877
  store i64 13, i64* %27, align 8
  %883 = load i64, i64* %27, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %883) #5, !srcloc !3
  br label %885

; <label>:884                                     ; preds = %877
  call void (...) @RTM_fallback_unlock()
  br label %885

; <label>:885                                     ; preds = %884, %882
  %886 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 1
  %887 = load i64, i64* %886, align 8
  %888 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 2
  %889 = load i64, i64* %888, align 8
  %890 = icmp ne i64 %887, %889
  br i1 %890, label %891, label %902

; <label>:891                                     ; preds = %885
  %892 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 3
  %893 = load float, float* %892, align 8
  %894 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  %895 = load float, float* %894, align 8
  %896 = load float, float* %operationQualityFactor, align 4
  %897 = fdiv float %895, %896
  %898 = fcmp ogt float %893, %897
  br i1 %898, label %899, label %902

; <label>:899                                     ; preds = %891
  %900 = bitcast %struct.learner_task* %bestTask to i8*
  %901 = bitcast %struct.learner_task* %newTask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %900, i8* %901, i64 32, i32 8, i1 false)
  br label %902

; <label>:902                                     ; preds = %899, %891, %885
  %903 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  %904 = load i64, i64* %903, align 8
  %905 = icmp ne i64 %904, -1
  br i1 %905, label %906, label %956

; <label>:906                                     ; preds = %902
  %907 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %908 = getelementptr inbounds %struct.learner, %struct.learner* %907, i32 0, i32 6
  %909 = load %struct.learner_task*, %struct.learner_task** %908, align 8
  store %struct.learner_task* %909, %struct.learner_task** %tasks, align 8
  %910 = load i64, i64* %toId, align 8
  %911 = load %struct.learner_task*, %struct.learner_task** %tasks, align 8
  %912 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %911, i64 %910
  %913 = bitcast %struct.learner_task* %912 to i8*
  %914 = bitcast %struct.learner_task* %bestTask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %913, i8* %914, i64 32, i32 8, i1 false)
  store i32 -1, i32* %__status28, align 4
  store i32 9, i32* %tries29, align 4
  br label %915

; <label>:915                                     ; preds = %936, %906
  br label %916

; <label>:916                                     ; preds = %919, %915
  %917 = call i64 (...) @RTM_fallback_isLocked()
  %918 = icmp ne i64 %917, 0
  br i1 %918, label %919, label %920

; <label>:919                                     ; preds = %916
  call void @llvm.x86.sse2.pause() #5
  br label %916

; <label>:920                                     ; preds = %916
  %921 = load i32, i32* %tries29, align 4
  %922 = add nsw i32 %921, -1
  store i32 %922, i32* %tries29, align 4
  %923 = load i32, i32* %tries29, align 4
  %924 = icmp sle i32 %923, 0
  br i1 %924, label %925, label %926

; <label>:925                                     ; preds = %920
  call void (...) @RTM_fallback_lock()
  br label %943

; <label>:926                                     ; preds = %920
  store i64 14, i64* %31, align 8
  store i64 0, i64* %handler.i32, align 8
  store i64 4294967295, i64* %ret.i33, align 8
  %927 = load i64, i64* %ret.i33, align 8
  %928 = load i64, i64* %31, align 8
  %929 = load i64, i64* %handler.i32, align 8
  %930 = load i64, i64* %31, align 8
  %931 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 %928, i64 %929, i64 %930, i64 %927) #5, !srcloc !1
  store i64 %931, i64* %ret.i33, align 8
  %932 = load i64, i64* %ret.i33, align 8
  %933 = trunc i64 %932 to i32
  store i32 %933, i32* %__status28, align 4
  %934 = load i32, i32* %__status28, align 4
  %935 = icmp ne i32 %934, -1
  br i1 %935, label %936, label %937

; <label>:936                                     ; preds = %926
  br label %915

; <label>:937                                     ; preds = %926
  %938 = call i64 (...) @RTM_fallback_isLocked()
  %939 = icmp ne i64 %938, 0
  br i1 %939, label %940, label %942

; <label>:940                                     ; preds = %937
  store i64 255, i64* %35, align 8
  %941 = load i64, i64* %35, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %941) #5, !srcloc !2
  br label %942

; <label>:942                                     ; preds = %940, %937
  br label %943

; <label>:943                                     ; preds = %942, %925
  %944 = load %struct.list*, %struct.list** %taskListPtr, align 8
  %945 = load i64, i64* %toId, align 8
  %946 = load %struct.learner_task*, %struct.learner_task** %tasks, align 8
  %947 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %946, i64 %945
  %948 = bitcast %struct.learner_task* %947 to i8*
  %949 = call i64 @TMlist_insert(%struct.list* %944, i8* %948)
  %950 = load i32, i32* %tries29, align 4
  %951 = icmp sgt i32 %950, 0
  br i1 %951, label %952, label %954

; <label>:952                                     ; preds = %943
  store i64 14, i64* %39, align 8
  %953 = load i64, i64* %39, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 %953) #5, !srcloc !3
  br label %955

; <label>:954                                     ; preds = %943
  call void (...) @RTM_fallback_unlock()
  br label %955

; <label>:955                                     ; preds = %954, %952
  br label %956

; <label>:956                                     ; preds = %955, %902
  br label %175

; <label>:957                                     ; preds = %215
  %958 = load %struct.bitmap*, %struct.bitmap** %visitedBitmapPtr, align 8
  call void @Pbitmap_free(%struct.bitmap* %958)
  %959 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  call void @Pqueue_free(%struct.queue* %959)
  %960 = load %struct.vector*, %struct.vector** %bQueryVectorPtr, align 8
  call void @Pvector_free(%struct.vector* %960)
  %961 = load %struct.vector*, %struct.vector** %aQueryVectorPtr, align 8
  call void @Pvector_free(%struct.vector* %961)
  %962 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  call void @Pvector_free(%struct.vector* %962)
  %963 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  call void @Pvector_free(%struct.vector* %963)
  %964 = load %struct.query*, %struct.query** %queries, align 8
  %965 = bitcast %struct.query* %964 to i8*
  call void @free(i8* %965) #5
  br label %966

; <label>:966                                     ; preds = %957
  %967 = call i64 (...) @thread_getId()
  %968 = trunc i64 %967 to i32
  %969 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** %_tm_thread_context, align 8
  %970 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %969, i32 0, i32 4
  %971 = load i32, i32* %970, align 4
  call void @SimRoiEnd(i32 %968, i32 %971)
  br label %972

; <label>:972                                     ; preds = %966
  ret void
}

; Function Attrs: nounwind uwtable
define float @learner_score(%struct.learner* %learnerPtr) #0 {
  %1 = alloca %struct.learner*, align 8
  %adtreePtr = alloca %struct.adtree*, align 8
  %netPtr = alloca %struct.net*, align 8
  %queryVectorPtr = alloca %struct.vector*, align 8
  %parentQueryVectorPtr = alloca %struct.vector*, align 8
  %numVar = alloca i64, align 8
  %queries = alloca %struct.query*, align 8
  %v = alloca i64, align 8
  %numTotalParent = alloca i64, align 8
  %logLikelihood = alloca float, align 4
  %parentIdListPtr = alloca %struct.list*, align 8
  %localLogLikelihood = alloca float, align 4
  %numRecord = alloca i64, align 8
  %penalty = alloca float, align 4
  %score = alloca float, align 4
  store %struct.learner* %learnerPtr, %struct.learner** %1, align 8
  %2 = load %struct.learner*, %struct.learner** %1, align 8
  %3 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 0
  %4 = load %struct.adtree*, %struct.adtree** %3, align 8
  store %struct.adtree* %4, %struct.adtree** %adtreePtr, align 8
  %5 = load %struct.learner*, %struct.learner** %1, align 8
  %6 = getelementptr inbounds %struct.learner, %struct.learner* %5, i32 0, i32 1
  %7 = load %struct.net*, %struct.net** %6, align 8
  store %struct.net* %7, %struct.net** %netPtr, align 8
  %8 = call %struct.vector* @vector_alloc(i64 1)
  store %struct.vector* %8, %struct.vector** %queryVectorPtr, align 8
  %9 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %10 = icmp ne %struct.vector* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  br label %14

; <label>:12                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1516, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.learner_score, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  %15 = call %struct.vector* @vector_alloc(i64 1)
  store %struct.vector* %15, %struct.vector** %parentQueryVectorPtr, align 8
  %16 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %17 = icmp ne %struct.vector* %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %14
  br label %21

; <label>:19                                      ; preds = %14
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1518, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.learner_score, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:21                                      ; preds = %20, %18
  %22 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %23 = getelementptr inbounds %struct.adtree, %struct.adtree* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %numVar, align 8
  %25 = load i64, i64* %numVar, align 8
  %26 = mul i64 %25, 16
  %27 = call noalias i8* @malloc(i64 %26) #5
  %28 = bitcast i8* %27 to %struct.query*
  store %struct.query* %28, %struct.query** %queries, align 8
  %29 = load %struct.query*, %struct.query** %queries, align 8
  %30 = icmp ne %struct.query* %29, null
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %21
  br label %34

; <label>:32                                      ; preds = %21
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1522, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.learner_score, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %34

; <label>:34                                      ; preds = %33, %31
  store i64 0, i64* %v, align 8
  br label %35

; <label>:35                                      ; preds = %49, %34
  %36 = load i64, i64* %v, align 8
  %37 = load i64, i64* %numVar, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %52

; <label>:39                                      ; preds = %35
  %40 = load i64, i64* %v, align 8
  %41 = load i64, i64* %v, align 8
  %42 = load %struct.query*, %struct.query** %queries, align 8
  %43 = getelementptr inbounds %struct.query, %struct.query* %42, i64 %41
  %44 = getelementptr inbounds %struct.query, %struct.query* %43, i32 0, i32 0
  store i64 %40, i64* %44, align 8
  %45 = load i64, i64* %v, align 8
  %46 = load %struct.query*, %struct.query** %queries, align 8
  %47 = getelementptr inbounds %struct.query, %struct.query* %46, i64 %45
  %48 = getelementptr inbounds %struct.query, %struct.query* %47, i32 0, i32 1
  store i64 -1, i64* %48, align 8
  br label %49

; <label>:49                                      ; preds = %39
  %50 = load i64, i64* %v, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %v, align 8
  br label %35

; <label>:52                                      ; preds = %35
  store i64 0, i64* %numTotalParent, align 8
  store float 0.000000e+00, float* %logLikelihood, align 4
  store i64 0, i64* %v, align 8
  br label %53

; <label>:53                                      ; preds = %80, %52
  %54 = load i64, i64* %v, align 8
  %55 = load i64, i64* %numVar, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %83

; <label>:57                                      ; preds = %53
  %58 = load %struct.net*, %struct.net** %netPtr, align 8
  %59 = load i64, i64* %v, align 8
  %60 = call %struct.list* @net_getParentIdListPtr(%struct.net* %58, i64 %59)
  store %struct.list* %60, %struct.list** %parentIdListPtr, align 8
  %61 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %62 = call i64 @list_getSize(%struct.list* %61)
  %63 = load i64, i64* %numTotalParent, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %numTotalParent, align 8
  %65 = load %struct.net*, %struct.net** %netPtr, align 8
  %66 = load i64, i64* %v, align 8
  %67 = load %struct.query*, %struct.query** %queries, align 8
  %68 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %69 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  call void @populateQueryVectors(%struct.net* %65, i64 %66, %struct.query* %67, %struct.vector* %68, %struct.vector* %69)
  %70 = load i64, i64* %v, align 8
  %71 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %72 = load %struct.net*, %struct.net** %netPtr, align 8
  %73 = load %struct.query*, %struct.query** %queries, align 8
  %74 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %75 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %76 = call float @computeLocalLogLikelihood(i64 %70, %struct.adtree* %71, %struct.net* %72, %struct.query* %73, %struct.vector* %74, %struct.vector* %75)
  store float %76, float* %localLogLikelihood, align 4
  %77 = load float, float* %localLogLikelihood, align 4
  %78 = load float, float* %logLikelihood, align 4
  %79 = fadd float %78, %77
  store float %79, float* %logLikelihood, align 4
  br label %80

; <label>:80                                      ; preds = %57
  %81 = load i64, i64* %v, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %v, align 8
  br label %53

; <label>:83                                      ; preds = %53
  %84 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  call void @vector_free(%struct.vector* %84)
  %85 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  call void @vector_free(%struct.vector* %85)
  %86 = load %struct.query*, %struct.query** %queries, align 8
  %87 = bitcast %struct.query* %86 to i8*
  call void @free(i8* %87) #5
  %88 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %89 = getelementptr inbounds %struct.adtree, %struct.adtree* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %numRecord, align 8
  %91 = load i64, i64* %numTotalParent, align 8
  %92 = sitofp i64 %91 to double
  %93 = fmul double -5.000000e-01, %92
  %94 = load i64, i64* %numRecord, align 8
  %95 = sitofp i64 %94 to double
  %96 = call double @log(double %95) #5
  %97 = fmul double %93, %96
  %98 = fptrunc double %97 to float
  store float %98, float* %penalty, align 4
  %99 = load float, float* %penalty, align 4
  %100 = load i64, i64* %numRecord, align 8
  %101 = sitofp i64 %100 to float
  %102 = load float, float* %logLikelihood, align 4
  %103 = fmul float %101, %102
  %104 = fadd float %99, %103
  store float %104, float* %score, align 4
  %105 = load float, float* %score, align 4
  ret float %105
}

declare %struct.vector* @vector_alloc(i64) #2

declare %struct.list* @net_getParentIdListPtr(%struct.net*, i64) #2

declare i64 @list_getSize(%struct.list*) #2

; Function Attrs: nounwind uwtable
define internal void @populateQueryVectors(%struct.net* %netPtr, i64 %id, %struct.query* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.query*, align 8
  %4 = alloca %struct.vector*, align 8
  %5 = alloca %struct.vector*, align 8
  %status = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i64 %id, i64* %2, align 8
  store %struct.query* %queries, %struct.query** %3, align 8
  store %struct.vector* %queryVectorPtr, %struct.vector** %4, align 8
  store %struct.vector* %parentQueryVectorPtr, %struct.vector** %5, align 8
  %6 = load %struct.net*, %struct.net** %1, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load %struct.query*, %struct.query** %3, align 8
  %9 = load %struct.vector*, %struct.vector** %5, align 8
  call void @populateParentQueryVector(%struct.net* %6, i64 %7, %struct.query* %8, %struct.vector* %9)
  %10 = load %struct.vector*, %struct.vector** %4, align 8
  %11 = load %struct.vector*, %struct.vector** %5, align 8
  %12 = call i64 @vector_copy(%struct.vector* %10, %struct.vector* %11)
  store i64 %12, i64* %status, align 8
  %13 = load i64, i64* %status, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  br label %18

; <label>:16                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 595, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.populateQueryVectors, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = load %struct.vector*, %struct.vector** %4, align 8
  %20 = load i64, i64* %2, align 8
  %21 = load %struct.query*, %struct.query** %3, align 8
  %22 = getelementptr inbounds %struct.query, %struct.query* %21, i64 %20
  %23 = bitcast %struct.query* %22 to i8*
  %24 = call i64 @vector_pushBack(%struct.vector* %19, i8* %23)
  store i64 %24, i64* %status, align 8
  %25 = load i64, i64* %status, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %18
  br label %30

; <label>:28                                      ; preds = %18
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 597, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.populateQueryVectors, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load %struct.vector*, %struct.vector** %4, align 8
  call void @vector_sort(%struct.vector* %31, i32 (i8*, i8*)* @compareQuery)
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @computeLocalLogLikelihood(i64 %id, %struct.adtree* %adtreePtr, %struct.net* %netPtr, %struct.query* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.adtree*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.query*, align 8
  %5 = alloca %struct.vector*, align 8
  %6 = alloca %struct.vector*, align 8
  %numParent = alloca i64, align 8
  %localLogLikelihood = alloca float, align 4
  store i64 %id, i64* %1, align 8
  store %struct.adtree* %adtreePtr, %struct.adtree** %2, align 8
  store %struct.net* %netPtr, %struct.net** %3, align 8
  store %struct.query* %queries, %struct.query** %4, align 8
  store %struct.vector* %queryVectorPtr, %struct.vector** %5, align 8
  store %struct.vector* %parentQueryVectorPtr, %struct.vector** %6, align 8
  %7 = load %struct.vector*, %struct.vector** %6, align 8
  %8 = call i64 @vector_getSize(%struct.vector* %7)
  store i64 %8, i64* %numParent, align 8
  store float 0.000000e+00, float* %localLogLikelihood, align 4
  %9 = load i64, i64* %1, align 8
  %10 = load %struct.query*, %struct.query** %4, align 8
  %11 = getelementptr inbounds %struct.query, %struct.query* %10, i64 %9
  %12 = getelementptr inbounds %struct.query, %struct.query* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %numParent, align 8
  %14 = load %struct.adtree*, %struct.adtree** %2, align 8
  %15 = load %struct.query*, %struct.query** %4, align 8
  %16 = load %struct.vector*, %struct.vector** %5, align 8
  %17 = load %struct.vector*, %struct.vector** %6, align 8
  %18 = call float @computeLocalLogLikelihoodHelper(i64 0, i64 %13, %struct.adtree* %14, %struct.query* %15, %struct.vector* %16, %struct.vector* %17)
  %19 = load float, float* %localLogLikelihood, align 4
  %20 = fadd float %19, %18
  store float %20, float* %localLogLikelihood, align 4
  %21 = load i64, i64* %1, align 8
  %22 = load %struct.query*, %struct.query** %4, align 8
  %23 = getelementptr inbounds %struct.query, %struct.query* %22, i64 %21
  %24 = getelementptr inbounds %struct.query, %struct.query* %23, i32 0, i32 1
  store i64 1, i64* %24, align 8
  %25 = load i64, i64* %numParent, align 8
  %26 = load %struct.adtree*, %struct.adtree** %2, align 8
  %27 = load %struct.query*, %struct.query** %4, align 8
  %28 = load %struct.vector*, %struct.vector** %5, align 8
  %29 = load %struct.vector*, %struct.vector** %6, align 8
  %30 = call float @computeLocalLogLikelihoodHelper(i64 0, i64 %25, %struct.adtree* %26, %struct.query* %27, %struct.vector* %28, %struct.vector* %29)
  %31 = load float, float* %localLogLikelihood, align 4
  %32 = fadd float %31, %30
  store float %32, float* %localLogLikelihood, align 4
  %33 = load i64, i64* %1, align 8
  %34 = load %struct.query*, %struct.query** %4, align 8
  %35 = getelementptr inbounds %struct.query, %struct.query* %34, i64 %33
  %36 = getelementptr inbounds %struct.query, %struct.query* %35, i32 0, i32 1
  store i64 -1, i64* %36, align 8
  %37 = load float, float* %localLogLikelihood, align 4
  ret float %37
}

declare void @vector_free(%struct.vector*) #2

; Function Attrs: nounwind
declare double @log(double) #1

declare i64 @thread_getId(...) #2

declare void @SimRoiStart(i32) #2

declare i64 @thread_getNumThread(...) #2

declare %struct.vector* @Pvector_alloc(i64) #2

declare i64 @vector_pushBack(%struct.vector*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @createPartition(i64 %min, i64 %max, i64 %id, i64 %n, i64* %startPtr, i64* %stopPtr) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %range = alloca i64, align 8
  %chunk = alloca i64, align 8
  %_a = alloca i32, align 4
  %_b = alloca i64, align 8
  %7 = alloca i64, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %_a1 = alloca i64, align 8
  %_b2 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %min, i64* %1, align 8
  store i64 %max, i64* %2, align 8
  store i64 %id, i64* %3, align 8
  store i64 %n, i64* %4, align 8
  store i64* %startPtr, i64** %5, align 8
  store i64* %stopPtr, i64** %6, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* %1, align 8
  %11 = sub nsw i64 %9, %10
  store i64 %11, i64* %range, align 8
  store i32 1, i32* %_a, align 4
  %12 = load i64, i64* %range, align 8
  %13 = load i64, i64* %4, align 8
  %14 = sdiv i64 %13, 2
  %15 = add nsw i64 %12, %14
  %16 = load i64, i64* %4, align 8
  %17 = sdiv i64 %15, %16
  store i64 %17, i64* %_b, align 8
  %18 = load i32, i32* %_a, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %_b, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %0
  %23 = load i32, i32* %_a, align 4
  %24 = sext i32 %23 to i64
  br label %27

; <label>:25                                      ; preds = %0
  %26 = load i64, i64* %_b, align 8
  br label %27

; <label>:27                                      ; preds = %25, %22
  %28 = phi i64 [ %24, %22 ], [ %26, %25 ]
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %chunk, align 8
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* %chunk, align 8
  %32 = load i64, i64* %3, align 8
  %33 = mul nsw i64 %31, %32
  %34 = add nsw i64 %30, %33
  store i64 %34, i64* %start, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = sub nsw i64 %36, 1
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %41

; <label>:39                                      ; preds = %27
  %40 = load i64, i64* %2, align 8
  store i64 %40, i64* %stop, align 8
  br label %56

; <label>:41                                      ; preds = %27
  %42 = load i64, i64* %2, align 8
  store i64 %42, i64* %_a1, align 8
  %43 = load i64, i64* %start, align 8
  %44 = load i64, i64* %chunk, align 8
  %45 = add nsw i64 %43, %44
  store i64 %45, i64* %_b2, align 8
  %46 = load i64, i64* %_a1, align 8
  %47 = load i64, i64* %_b2, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %51

; <label>:49                                      ; preds = %41
  %50 = load i64, i64* %_a1, align 8
  br label %53

; <label>:51                                      ; preds = %41
  %52 = load i64, i64* %_b2, align 8
  br label %53

; <label>:53                                      ; preds = %51, %49
  %54 = phi i64 [ %50, %49 ], [ %52, %51 ]
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %stop, align 8
  br label %56

; <label>:56                                      ; preds = %53, %39
  %57 = load i64, i64* %start, align 8
  %58 = load i64*, i64** %5, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* %stop, align 8
  %60 = load i64*, i64** %6, align 8
  store i64 %59, i64* %60, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @computeSpecificLocalLogLikelihood(%struct.adtree* %adtreePtr, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) #0 {
  %1 = alloca float, align 4
  %2 = alloca %struct.adtree*, align 8
  %3 = alloca %struct.vector*, align 8
  %4 = alloca %struct.vector*, align 8
  %count = alloca i64, align 8
  %probability = alloca double, align 8
  %parentCount = alloca i64, align 8
  store %struct.adtree* %adtreePtr, %struct.adtree** %2, align 8
  store %struct.vector* %queryVectorPtr, %struct.vector** %3, align 8
  store %struct.vector* %parentQueryVectorPtr, %struct.vector** %4, align 8
  %5 = load %struct.adtree*, %struct.adtree** %2, align 8
  %6 = load %struct.vector*, %struct.vector** %3, align 8
  %7 = call i64 @adtree_getCount(%struct.adtree* %5, %struct.vector* %6)
  store i64 %7, i64* %count, align 8
  %8 = load i64, i64* %count, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  store float 0.000000e+00, float* %1, align 4
  br label %44

; <label>:11                                      ; preds = %0
  %12 = load i64, i64* %count, align 8
  %13 = sitofp i64 %12 to double
  %14 = load %struct.adtree*, %struct.adtree** %2, align 8
  %15 = getelementptr inbounds %struct.adtree, %struct.adtree* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sitofp i64 %16 to double
  %18 = fdiv double %13, %17
  store double %18, double* %probability, align 8
  %19 = load %struct.adtree*, %struct.adtree** %2, align 8
  %20 = load %struct.vector*, %struct.vector** %4, align 8
  %21 = call i64 @adtree_getCount(%struct.adtree* %19, %struct.vector* %20)
  store i64 %21, i64* %parentCount, align 8
  %22 = load i64, i64* %parentCount, align 8
  %23 = load i64, i64* %count, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %11
  br label %28

; <label>:26                                      ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 287, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %28

; <label>:28                                      ; preds = %27, %25
  %29 = load i64, i64* %parentCount, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %28
  br label %34

; <label>:32                                      ; preds = %28
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 288, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %34

; <label>:34                                      ; preds = %33, %31
  %35 = load double, double* %probability, align 8
  %36 = load i64, i64* %count, align 8
  %37 = sitofp i64 %36 to double
  %38 = load i64, i64* %parentCount, align 8
  %39 = sitofp i64 %38 to double
  %40 = fdiv double %37, %39
  %41 = call double @log(double %40) #5
  %42 = fmul double %35, %41
  %43 = fptrunc double %42 to float
  store float %43, float* %1, align 4
  br label %44

; <label>:44                                      ; preds = %34, %10
  %45 = load float, float* %1, align 4
  ret float %45
}

declare i64 @RTM_fallback_isLocked(...) #2

declare void @RTM_fallback_lock(...) #2

declare void @RTM_fallback_unlock(...) #2

declare i64 @Pvector_pushBack(%struct.vector*, i8*) #2

declare i8* @vector_popBack(%struct.vector*) #2

declare i64 @TMlist_insert(%struct.list*, i8*) #2

declare void @Pvector_free(%struct.vector*) #2

declare void @SimRoiEnd(i32, i32) #2

declare i64 @adtree_getCount(%struct.adtree*, %struct.vector*) #2

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #5

declare %struct.bitmap* @Pbitmap_alloc(i64) #2

declare %struct.queue* @Pqueue_alloc(i64) #2

declare i64 @TMnet_hasEdge(%struct.net*, i64, i64) #2

declare i64 @TMnet_isPath(%struct.net*, i64, i64, %struct.bitmap*, %struct.queue*) #2

declare void @TMnet_applyOperation(%struct.net*, i32, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @TMpopulateQueryVectors(%struct.net* %netPtr, i64 %id, %struct.query* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.query*, align 8
  %4 = alloca %struct.vector*, align 8
  %5 = alloca %struct.vector*, align 8
  %status = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i64 %id, i64* %2, align 8
  store %struct.query* %queries, %struct.query** %3, align 8
  store %struct.vector* %queryVectorPtr, %struct.vector** %4, align 8
  store %struct.vector* %parentQueryVectorPtr, %struct.vector** %5, align 8
  %6 = load %struct.net*, %struct.net** %1, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load %struct.query*, %struct.query** %3, align 8
  %9 = load %struct.vector*, %struct.vector** %5, align 8
  call void @TMpopulateParentQueryVector(%struct.net* %6, i64 %7, %struct.query* %8, %struct.vector* %9)
  %10 = load %struct.vector*, %struct.vector** %4, align 8
  %11 = load %struct.vector*, %struct.vector** %5, align 8
  %12 = call i64 @Pvector_copy(%struct.vector* %10, %struct.vector* %11)
  store i64 %12, i64* %status, align 8
  %13 = load i64, i64* %status, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  br label %18

; <label>:16                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 619, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TMpopulateQueryVectors, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  %19 = load %struct.vector*, %struct.vector** %4, align 8
  %20 = load i64, i64* %2, align 8
  %21 = load %struct.query*, %struct.query** %3, align 8
  %22 = getelementptr inbounds %struct.query, %struct.query* %21, i64 %20
  %23 = bitcast %struct.query* %22 to i8*
  %24 = call i64 @Pvector_pushBack(%struct.vector* %19, i8* %23)
  store i64 %24, i64* %status, align 8
  %25 = load i64, i64* %status, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %18
  br label %30

; <label>:28                                      ; preds = %18
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 621, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TMpopulateQueryVectors, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load %struct.vector*, %struct.vector** %4, align 8
  call void @vector_sort(%struct.vector* %31, i32 (i8*, i8*)* @compareQuery)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMfindBestInsertTask(%struct.learner_task* noalias sret %agg.result, %struct.findBestTaskArg* %argPtr) #0 {
  %1 = alloca %struct.findBestTaskArg*, align 8
  %toId = alloca i64, align 8
  %learnerPtr = alloca %struct.learner*, align 8
  %queries = alloca %struct.query*, align 8
  %queryVectorPtr = alloca %struct.vector*, align 8
  %parentQueryVectorPtr = alloca %struct.vector*, align 8
  %numTotalParent = alloca i64, align 8
  %basePenalty = alloca float, align 4
  %baseLogLikelihood = alloca float, align 4
  %invalidBitmapPtr = alloca %struct.bitmap*, align 8
  %workQueuePtr = alloca %struct.queue*, align 8
  %baseParentQueryVectorPtr = alloca %struct.vector*, align 8
  %baseQueryVectorPtr = alloca %struct.vector*, align 8
  %status = alloca i64, align 8
  %adtreePtr = alloca %struct.adtree*, align 8
  %netPtr = alloca %struct.net*, align 8
  %localBaseLogLikelihoods = alloca float*, align 8
  %bestFromId = alloca float, align 4
  %oldLocalLogLikelihood = alloca float, align 4
  %bestLocalLogLikelihood = alloca float, align 4
  %fromId = alloca i64, align 8
  %parentIdListPtr = alloca %struct.list*, align 8
  %maxNumEdgeLearned = alloca i64, align 8
  %it = alloca %struct.list_node*, align 8
  %parentId = alloca i64, align 8
  %newLocalLogLikelihood = alloca float, align 4
  %bestTask = alloca %struct.learner_task, align 8
  %numRecord = alloca i64, align 8
  %numParent = alloca i64, align 8
  %penalty = alloca float, align 4
  %logLikelihood = alloca float, align 4
  %bestScore = alloca float, align 4
  store %struct.findBestTaskArg* %argPtr, %struct.findBestTaskArg** %1, align 8
  %2 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %3 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %toId, align 8
  %5 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %6 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %5, i32 0, i32 1
  %7 = load %struct.learner*, %struct.learner** %6, align 8
  store %struct.learner* %7, %struct.learner** %learnerPtr, align 8
  %8 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %9 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %8, i32 0, i32 2
  %10 = load %struct.query*, %struct.query** %9, align 8
  store %struct.query* %10, %struct.query** %queries, align 8
  %11 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %12 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %11, i32 0, i32 3
  %13 = load %struct.vector*, %struct.vector** %12, align 8
  store %struct.vector* %13, %struct.vector** %queryVectorPtr, align 8
  %14 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %15 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %14, i32 0, i32 4
  %16 = load %struct.vector*, %struct.vector** %15, align 8
  store %struct.vector* %16, %struct.vector** %parentQueryVectorPtr, align 8
  %17 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %18 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %numTotalParent, align 8
  %20 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %21 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %20, i32 0, i32 6
  %22 = load float, float* %21, align 8
  store float %22, float* %basePenalty, align 4
  %23 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %24 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %23, i32 0, i32 7
  %25 = load float, float* %24, align 4
  store float %25, float* %baseLogLikelihood, align 4
  %26 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %27 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %26, i32 0, i32 8
  %28 = load %struct.bitmap*, %struct.bitmap** %27, align 8
  store %struct.bitmap* %28, %struct.bitmap** %invalidBitmapPtr, align 8
  %29 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %30 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %29, i32 0, i32 9
  %31 = load %struct.queue*, %struct.queue** %30, align 8
  store %struct.queue* %31, %struct.queue** %workQueuePtr, align 8
  %32 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %33 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %32, i32 0, i32 10
  %34 = load %struct.vector*, %struct.vector** %33, align 8
  store %struct.vector* %34, %struct.vector** %baseParentQueryVectorPtr, align 8
  %35 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %36 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %35, i32 0, i32 11
  %37 = load %struct.vector*, %struct.vector** %36, align 8
  store %struct.vector* %37, %struct.vector** %baseQueryVectorPtr, align 8
  %38 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %39 = getelementptr inbounds %struct.learner, %struct.learner* %38, i32 0, i32 0
  %40 = load %struct.adtree*, %struct.adtree** %39, align 8
  store %struct.adtree* %40, %struct.adtree** %adtreePtr, align 8
  %41 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %42 = getelementptr inbounds %struct.learner, %struct.learner* %41, i32 0, i32 1
  %43 = load %struct.net*, %struct.net** %42, align 8
  store %struct.net* %43, %struct.net** %netPtr, align 8
  %44 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %45 = getelementptr inbounds %struct.learner, %struct.learner* %44, i32 0, i32 2
  %46 = load float*, float** %45, align 8
  store float* %46, float** %localBaseLogLikelihoods, align 8
  %47 = load %struct.net*, %struct.net** %netPtr, align 8
  %48 = load i64, i64* %toId, align 8
  %49 = load %struct.query*, %struct.query** %queries, align 8
  %50 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  call void @TMpopulateParentQueryVector(%struct.net* %47, i64 %48, %struct.query* %49, %struct.vector* %50)
  %51 = load %struct.vector*, %struct.vector** %baseParentQueryVectorPtr, align 8
  %52 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %53 = call i64 @Pvector_copy(%struct.vector* %51, %struct.vector* %52)
  store i64 %53, i64* %status, align 8
  %54 = load i64, i64* %status, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %0
  br label %59

; <label>:57                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 742, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  %60 = load %struct.vector*, %struct.vector** %baseQueryVectorPtr, align 8
  %61 = load %struct.vector*, %struct.vector** %baseParentQueryVectorPtr, align 8
  %62 = call i64 @Pvector_copy(%struct.vector* %60, %struct.vector* %61)
  store i64 %62, i64* %status, align 8
  %63 = load i64, i64* %status, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %59
  br label %68

; <label>:66                                      ; preds = %59
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 745, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %68

; <label>:68                                      ; preds = %67, %65
  %69 = load %struct.vector*, %struct.vector** %baseQueryVectorPtr, align 8
  %70 = load i64, i64* %toId, align 8
  %71 = load %struct.query*, %struct.query** %queries, align 8
  %72 = getelementptr inbounds %struct.query, %struct.query* %71, i64 %70
  %73 = bitcast %struct.query* %72 to i8*
  %74 = call i64 @Pvector_pushBack(%struct.vector* %69, i8* %73)
  store i64 %74, i64* %status, align 8
  %75 = load i64, i64* %status, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %68
  br label %80

; <label>:78                                      ; preds = %68
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 747, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %80

; <label>:80                                      ; preds = %79, %77
  %81 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  call void @vector_sort(%struct.vector* %81, i32 (i8*, i8*)* @compareQuery)
  %82 = load i64, i64* %toId, align 8
  %83 = sitofp i64 %82 to float
  store float %83, float* %bestFromId, align 4
  %84 = load i64, i64* %toId, align 8
  %85 = load float*, float** %localBaseLogLikelihoods, align 8
  %86 = getelementptr inbounds float, float* %85, i64 %84
  %87 = load float, float* %86, align 4
  store float %87, float* %oldLocalLogLikelihood, align 4
  %88 = load float, float* %oldLocalLogLikelihood, align 4
  store float %88, float* %bestLocalLogLikelihood, align 4
  %89 = load %struct.net*, %struct.net** %netPtr, align 8
  %90 = load i64, i64* %toId, align 8
  %91 = load %struct.bitmap*, %struct.bitmap** %invalidBitmapPtr, align 8
  %92 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %93 = call i64 @TMnet_findDescendants(%struct.net* %89, i64 %90, %struct.bitmap* %91, %struct.queue* %92)
  store i64 %93, i64* %status, align 8
  %94 = load i64, i64* %status, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

; <label>:96                                      ; preds = %80
  br label %99

; <label>:97                                      ; preds = %80
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 760, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %99

; <label>:99                                      ; preds = %98, %96
  store i64 -1, i64* %fromId, align 8
  %100 = load %struct.net*, %struct.net** %netPtr, align 8
  %101 = load i64, i64* %toId, align 8
  %102 = call %struct.list* @net_getParentIdListPtr(%struct.net* %100, i64 %101)
  store %struct.list* %102, %struct.list** %parentIdListPtr, align 8
  %103 = load i64, i64* @global_maxNumEdgeLearned, align 8
  store i64 %103, i64* %maxNumEdgeLearned, align 8
  %104 = load i64, i64* %maxNumEdgeLearned, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %111, label %106

; <label>:106                                     ; preds = %99
  %107 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %108 = call i64 @TMlist_getSize(%struct.list* %107)
  %109 = load i64, i64* %maxNumEdgeLearned, align 8
  %110 = icmp sle i64 %108, %109
  br i1 %110, label %111, label %197

; <label>:111                                     ; preds = %106, %99
  %112 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %112)
  br label %113

; <label>:113                                     ; preds = %117, %111
  %114 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %115 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %114) #8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

; <label>:117                                     ; preds = %113
  %118 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %119 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %118)
  %120 = ptrtoint i8* %119 to i64
  store i64 %120, i64* %parentId, align 8
  %121 = load %struct.bitmap*, %struct.bitmap** %invalidBitmapPtr, align 8
  %122 = load i64, i64* %parentId, align 8
  %123 = call i64 @bitmap_set(%struct.bitmap* %121, i64 %122)
  br label %113

; <label>:124                                     ; preds = %113
  br label %125

; <label>:125                                     ; preds = %195, %135, %124
  %126 = load %struct.bitmap*, %struct.bitmap** %invalidBitmapPtr, align 8
  %127 = load i64, i64* %fromId, align 8
  %128 = add nsw i64 %127, 1
  %129 = call i64 @bitmap_findClear(%struct.bitmap* %126, i64 %128)
  store i64 %129, i64* %fromId, align 8
  %130 = icmp sge i64 %129, 0
  br i1 %130, label %131, label %196

; <label>:131                                     ; preds = %125
  %132 = load i64, i64* %fromId, align 8
  %133 = load i64, i64* %toId, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %131
  br label %125

; <label>:136                                     ; preds = %131
  %137 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %138 = load %struct.vector*, %struct.vector** %baseQueryVectorPtr, align 8
  %139 = call i64 @Pvector_copy(%struct.vector* %137, %struct.vector* %138)
  store i64 %139, i64* %status, align 8
  %140 = load i64, i64* %status, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %136
  br label %145

; <label>:143                                     ; preds = %136
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 786, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %145

; <label>:145                                     ; preds = %144, %142
  %146 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %147 = load i64, i64* %fromId, align 8
  %148 = load %struct.query*, %struct.query** %queries, align 8
  %149 = getelementptr inbounds %struct.query, %struct.query* %148, i64 %147
  %150 = bitcast %struct.query* %149 to i8*
  %151 = call i64 @Pvector_pushBack(%struct.vector* %146, i8* %150)
  store i64 %151, i64* %status, align 8
  %152 = load i64, i64* %status, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

; <label>:154                                     ; preds = %145
  br label %157

; <label>:155                                     ; preds = %145
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 788, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %157

; <label>:157                                     ; preds = %156, %154
  %158 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  call void @vector_sort(%struct.vector* %158, i32 (i8*, i8*)* @compareQuery)
  %159 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %160 = load %struct.vector*, %struct.vector** %baseParentQueryVectorPtr, align 8
  %161 = call i64 @Pvector_copy(%struct.vector* %159, %struct.vector* %160)
  store i64 %161, i64* %status, align 8
  %162 = load i64, i64* %status, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

; <label>:164                                     ; preds = %157
  br label %167

; <label>:165                                     ; preds = %157
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 792, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %167

; <label>:167                                     ; preds = %166, %164
  %168 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %169 = load i64, i64* %fromId, align 8
  %170 = load %struct.query*, %struct.query** %queries, align 8
  %171 = getelementptr inbounds %struct.query, %struct.query* %170, i64 %169
  %172 = bitcast %struct.query* %171 to i8*
  %173 = call i64 @Pvector_pushBack(%struct.vector* %168, i8* %172)
  store i64 %173, i64* %status, align 8
  %174 = load i64, i64* %status, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

; <label>:176                                     ; preds = %167
  br label %179

; <label>:177                                     ; preds = %167
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 794, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %179

; <label>:179                                     ; preds = %178, %176
  %180 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  call void @vector_sort(%struct.vector* %180, i32 (i8*, i8*)* @compareQuery)
  %181 = load i64, i64* %toId, align 8
  %182 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %183 = load %struct.net*, %struct.net** %netPtr, align 8
  %184 = load %struct.query*, %struct.query** %queries, align 8
  %185 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %186 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %187 = call float @computeLocalLogLikelihood(i64 %181, %struct.adtree* %182, %struct.net* %183, %struct.query* %184, %struct.vector* %185, %struct.vector* %186)
  store float %187, float* %newLocalLogLikelihood, align 4
  %188 = load float, float* %newLocalLogLikelihood, align 4
  %189 = load float, float* %bestLocalLogLikelihood, align 4
  %190 = fcmp ogt float %188, %189
  br i1 %190, label %191, label %195

; <label>:191                                     ; preds = %179
  %192 = load float, float* %newLocalLogLikelihood, align 4
  store float %192, float* %bestLocalLogLikelihood, align 4
  %193 = load i64, i64* %fromId, align 8
  %194 = sitofp i64 %193 to float
  store float %194, float* %bestFromId, align 4
  br label %195

; <label>:195                                     ; preds = %191, %179
  br label %125

; <label>:196                                     ; preds = %125
  br label %197

; <label>:197                                     ; preds = %196, %106
  %198 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 0
  store i32 0, i32* %198, align 8
  %199 = load float, float* %bestFromId, align 4
  %200 = fptosi float %199 to i64
  %201 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 1
  store i64 %200, i64* %201, align 8
  %202 = load i64, i64* %toId, align 8
  %203 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  store i64 %202, i64* %203, align 8
  %204 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float 0.000000e+00, float* %204, align 8
  %205 = load float, float* %bestFromId, align 4
  %206 = load i64, i64* %toId, align 8
  %207 = sitofp i64 %206 to float
  %208 = fcmp une float %205, %207
  br i1 %208, label %209, label %237

; <label>:209                                     ; preds = %197
  %210 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %211 = getelementptr inbounds %struct.adtree, %struct.adtree* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %numRecord, align 8
  %213 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %214 = call i64 @TMlist_getSize(%struct.list* %213)
  %215 = add nsw i64 %214, 1
  store i64 %215, i64* %numParent, align 8
  %216 = load i64, i64* %numTotalParent, align 8
  %217 = load i64, i64* %numParent, align 8
  %218 = load i64, i64* @global_insertPenalty, align 8
  %219 = mul nsw i64 %217, %218
  %220 = add nsw i64 %216, %219
  %221 = sitofp i64 %220 to float
  %222 = load float, float* %basePenalty, align 4
  %223 = fmul float %221, %222
  store float %223, float* %penalty, align 4
  %224 = load i64, i64* %numRecord, align 8
  %225 = sitofp i64 %224 to float
  %226 = load float, float* %baseLogLikelihood, align 4
  %227 = load float, float* %bestLocalLogLikelihood, align 4
  %228 = fadd float %226, %227
  %229 = load float, float* %oldLocalLogLikelihood, align 4
  %230 = fsub float %228, %229
  %231 = fmul float %225, %230
  store float %231, float* %logLikelihood, align 4
  %232 = load float, float* %penalty, align 4
  %233 = load float, float* %logLikelihood, align 4
  %234 = fadd float %232, %233
  store float %234, float* %bestScore, align 4
  %235 = load float, float* %bestScore, align 4
  %236 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float %235, float* %236, align 8
  br label %237

; <label>:237                                     ; preds = %209, %197
  %238 = bitcast %struct.learner_task* %agg.result to i8*
  %239 = bitcast %struct.learner_task* %bestTask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %238, i8* %239, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal void @TMfindBestRemoveTask(%struct.learner_task* noalias sret %agg.result, %struct.findBestTaskArg* %argPtr) #0 {
  %1 = alloca %struct.findBestTaskArg*, align 8
  %toId = alloca i64, align 8
  %learnerPtr = alloca %struct.learner*, align 8
  %queries = alloca %struct.query*, align 8
  %queryVectorPtr = alloca %struct.vector*, align 8
  %parentQueryVectorPtr = alloca %struct.vector*, align 8
  %numTotalParent = alloca i64, align 8
  %basePenalty = alloca float, align 4
  %baseLogLikelihood = alloca float, align 4
  %origParentQueryVectorPtr = alloca %struct.vector*, align 8
  %status = alloca i64, align 8
  %adtreePtr = alloca %struct.adtree*, align 8
  %netPtr = alloca %struct.net*, align 8
  %localBaseLogLikelihoods = alloca float*, align 8
  %numParent = alloca i64, align 8
  %bestFromId = alloca float, align 4
  %oldLocalLogLikelihood = alloca float, align 4
  %bestLocalLogLikelihood = alloca float, align 4
  %i = alloca i64, align 8
  %queryPtr = alloca %struct.query*, align 8
  %fromId = alloca i64, align 8
  %p = alloca i64, align 8
  %queryPtr1 = alloca %struct.query*, align 8
  %newLocalLogLikelihood = alloca float, align 4
  %bestTask = alloca %struct.learner_task, align 8
  %numRecord = alloca i64, align 8
  %penalty = alloca float, align 4
  %logLikelihood = alloca float, align 4
  %bestScore = alloca float, align 4
  store %struct.findBestTaskArg* %argPtr, %struct.findBestTaskArg** %1, align 8
  %2 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %3 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %toId, align 8
  %5 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %6 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %5, i32 0, i32 1
  %7 = load %struct.learner*, %struct.learner** %6, align 8
  store %struct.learner* %7, %struct.learner** %learnerPtr, align 8
  %8 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %9 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %8, i32 0, i32 2
  %10 = load %struct.query*, %struct.query** %9, align 8
  store %struct.query* %10, %struct.query** %queries, align 8
  %11 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %12 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %11, i32 0, i32 3
  %13 = load %struct.vector*, %struct.vector** %12, align 8
  store %struct.vector* %13, %struct.vector** %queryVectorPtr, align 8
  %14 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %15 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %14, i32 0, i32 4
  %16 = load %struct.vector*, %struct.vector** %15, align 8
  store %struct.vector* %16, %struct.vector** %parentQueryVectorPtr, align 8
  %17 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %18 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %numTotalParent, align 8
  %20 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %21 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %20, i32 0, i32 6
  %22 = load float, float* %21, align 8
  store float %22, float* %basePenalty, align 4
  %23 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %24 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %23, i32 0, i32 7
  %25 = load float, float* %24, align 4
  store float %25, float* %baseLogLikelihood, align 4
  %26 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %27 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %26, i32 0, i32 10
  %28 = load %struct.vector*, %struct.vector** %27, align 8
  store %struct.vector* %28, %struct.vector** %origParentQueryVectorPtr, align 8
  %29 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %30 = getelementptr inbounds %struct.learner, %struct.learner* %29, i32 0, i32 0
  %31 = load %struct.adtree*, %struct.adtree** %30, align 8
  store %struct.adtree* %31, %struct.adtree** %adtreePtr, align 8
  %32 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %33 = getelementptr inbounds %struct.learner, %struct.learner* %32, i32 0, i32 1
  %34 = load %struct.net*, %struct.net** %33, align 8
  store %struct.net* %34, %struct.net** %netPtr, align 8
  %35 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %36 = getelementptr inbounds %struct.learner, %struct.learner* %35, i32 0, i32 2
  %37 = load float*, float** %36, align 8
  store float* %37, float** %localBaseLogLikelihoods, align 8
  %38 = load %struct.net*, %struct.net** %netPtr, align 8
  %39 = load i64, i64* %toId, align 8
  %40 = load %struct.query*, %struct.query** %queries, align 8
  %41 = load %struct.vector*, %struct.vector** %origParentQueryVectorPtr, align 8
  call void @TMpopulateParentQueryVector(%struct.net* %38, i64 %39, %struct.query* %40, %struct.vector* %41)
  %42 = load %struct.vector*, %struct.vector** %origParentQueryVectorPtr, align 8
  %43 = call i64 @vector_getSize(%struct.vector* %42)
  store i64 %43, i64* %numParent, align 8
  %44 = load i64, i64* %toId, align 8
  %45 = sitofp i64 %44 to float
  store float %45, float* %bestFromId, align 4
  %46 = load i64, i64* %toId, align 8
  %47 = load float*, float** %localBaseLogLikelihoods, align 8
  %48 = getelementptr inbounds float, float* %47, i64 %46
  %49 = load float, float* %48, align 4
  store float %49, float* %oldLocalLogLikelihood, align 4
  %50 = load float, float* %oldLocalLogLikelihood, align 4
  store float %50, float* %bestLocalLogLikelihood, align 4
  store i64 0, i64* %i, align 8
  br label %__kernel__TMfindBestRemoveTask0

__kernel__TMfindBestRemoveTask0:                  ; preds = %132, %0
  %51 = load i64, i64* %i, align 8
  %52 = load i64, i64* %numParent, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %135

; <label>:54                                      ; preds = %__kernel__TMfindBestRemoveTask0
  %55 = load %struct.vector*, %struct.vector** %origParentQueryVectorPtr, align 8
  %56 = load i64, i64* %i, align 8
  %57 = call i8* @vector_at(%struct.vector* %55, i64 %56)
  %58 = bitcast i8* %57 to %struct.query*
  store %struct.query* %58, %struct.query** %queryPtr, align 8
  %59 = load %struct.query*, %struct.query** %queryPtr, align 8
  %60 = getelementptr inbounds %struct.query, %struct.query* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %fromId, align 8
  %62 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  call void @vector_clear(%struct.vector* %62)
  store i64 0, i64* %p, align 8
  br label %63

; <label>:63                                      ; preds = %91, %54
  %64 = load i64, i64* %p, align 8
  %65 = load i64, i64* %numParent, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %94

; <label>:67                                      ; preds = %63
  %68 = load i64, i64* %p, align 8
  %69 = load i64, i64* %fromId, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %90

; <label>:71                                      ; preds = %67
  %72 = load %struct.vector*, %struct.vector** %origParentQueryVectorPtr, align 8
  %73 = load i64, i64* %p, align 8
  %74 = call i8* @vector_at(%struct.vector* %72, i64 %73)
  %75 = bitcast i8* %74 to %struct.query*
  store %struct.query* %75, %struct.query** %queryPtr1, align 8
  %76 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %77 = load %struct.query*, %struct.query** %queryPtr1, align 8
  %78 = getelementptr inbounds %struct.query, %struct.query* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.query*, %struct.query** %queries, align 8
  %81 = getelementptr inbounds %struct.query, %struct.query* %80, i64 %79
  %82 = bitcast %struct.query* %81 to i8*
  %83 = call i64 @Pvector_pushBack(%struct.vector* %76, i8* %82)
  store i64 %83, i64* %status, align 8
  %84 = load i64, i64* %status, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

; <label>:86                                      ; preds = %71
  br label %89

; <label>:87                                      ; preds = %71
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 895, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestRemoveTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %89

; <label>:89                                      ; preds = %88, %86
  br label %90

; <label>:90                                      ; preds = %89, %67
  br label %91

; <label>:91                                      ; preds = %90
  %92 = load i64, i64* %p, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %p, align 8
  br label %63

; <label>:94                                      ; preds = %63
  %95 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %96 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %97 = call i64 @Pvector_copy(%struct.vector* %95, %struct.vector* %96)
  store i64 %97, i64* %status, align 8
  %98 = load i64, i64* %status, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

; <label>:100                                     ; preds = %94
  br label %103

; <label>:101                                     ; preds = %94
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 904, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestRemoveTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %103

; <label>:103                                     ; preds = %102, %100
  %104 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %105 = load i64, i64* %toId, align 8
  %106 = load %struct.query*, %struct.query** %queries, align 8
  %107 = getelementptr inbounds %struct.query, %struct.query* %106, i64 %105
  %108 = bitcast %struct.query* %107 to i8*
  %109 = call i64 @Pvector_pushBack(%struct.vector* %104, i8* %108)
  store i64 %109, i64* %status, align 8
  %110 = load i64, i64* %status, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %103
  br label %115

; <label>:113                                     ; preds = %103
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 906, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestRemoveTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %115

; <label>:115                                     ; preds = %114, %112
  %116 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  call void @vector_sort(%struct.vector* %116, i32 (i8*, i8*)* @compareQuery)
  %117 = load i64, i64* %toId, align 8
  %118 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %119 = load %struct.net*, %struct.net** %netPtr, align 8
  %120 = load %struct.query*, %struct.query** %queries, align 8
  %121 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %122 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %123 = call float @computeLocalLogLikelihood(i64 %117, %struct.adtree* %118, %struct.net* %119, %struct.query* %120, %struct.vector* %121, %struct.vector* %122)
  store float %123, float* %newLocalLogLikelihood, align 4
  %124 = load float, float* %newLocalLogLikelihood, align 4
  %125 = load float, float* %bestLocalLogLikelihood, align 4
  %126 = fcmp ogt float %124, %125
  br i1 %126, label %127, label %131

; <label>:127                                     ; preds = %115
  %128 = load float, float* %newLocalLogLikelihood, align 4
  store float %128, float* %bestLocalLogLikelihood, align 4
  %129 = load i64, i64* %fromId, align 8
  %130 = sitofp i64 %129 to float
  store float %130, float* %bestFromId, align 4
  br label %131

; <label>:131                                     ; preds = %127, %115
  br label %132

; <label>:132                                     ; preds = %131
  %133 = load i64, i64* %i, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %i, align 8
  br label %__kernel__TMfindBestRemoveTask0, !llvm.loop !4

; <label>:135                                     ; preds = %__kernel__TMfindBestRemoveTask0
  %136 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load float, float* %bestFromId, align 4
  %138 = fptosi float %137 to i64
  %139 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 1
  store i64 %138, i64* %139, align 8
  %140 = load i64, i64* %toId, align 8
  %141 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  store i64 %140, i64* %141, align 8
  %142 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float 0.000000e+00, float* %142, align 8
  %143 = load float, float* %bestFromId, align 4
  %144 = load i64, i64* %toId, align 8
  %145 = sitofp i64 %144 to float
  %146 = fcmp une float %143, %145
  br i1 %146, label %147, label %169

; <label>:147                                     ; preds = %135
  %148 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %149 = getelementptr inbounds %struct.adtree, %struct.adtree* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %numRecord, align 8
  %151 = load i64, i64* %numTotalParent, align 8
  %152 = sub nsw i64 %151, 1
  %153 = sitofp i64 %152 to float
  %154 = load float, float* %basePenalty, align 4
  %155 = fmul float %153, %154
  store float %155, float* %penalty, align 4
  %156 = load i64, i64* %numRecord, align 8
  %157 = sitofp i64 %156 to float
  %158 = load float, float* %baseLogLikelihood, align 4
  %159 = load float, float* %bestLocalLogLikelihood, align 4
  %160 = fadd float %158, %159
  %161 = load float, float* %oldLocalLogLikelihood, align 4
  %162 = fsub float %160, %161
  %163 = fmul float %157, %162
  store float %163, float* %logLikelihood, align 4
  %164 = load float, float* %penalty, align 4
  %165 = load float, float* %logLikelihood, align 4
  %166 = fadd float %164, %165
  store float %166, float* %bestScore, align 4
  %167 = load float, float* %bestScore, align 4
  %168 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float %167, float* %168, align 8
  br label %169

; <label>:169                                     ; preds = %147, %135
  %170 = bitcast %struct.learner_task* %agg.result to i8*
  %171 = bitcast %struct.learner_task* %bestTask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %170, i8* %171, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMfindBestReverseTask(%struct.learner_task* noalias sret %agg.result, %struct.findBestTaskArg* %argPtr) #0 {
  %1 = alloca %struct.findBestTaskArg*, align 8
  %toId = alloca i64, align 8
  %learnerPtr = alloca %struct.learner*, align 8
  %queries = alloca %struct.query*, align 8
  %queryVectorPtr = alloca %struct.vector*, align 8
  %parentQueryVectorPtr = alloca %struct.vector*, align 8
  %numTotalParent = alloca i64, align 8
  %basePenalty = alloca float, align 4
  %baseLogLikelihood = alloca float, align 4
  %visitedBitmapPtr = alloca %struct.bitmap*, align 8
  %workQueuePtr = alloca %struct.queue*, align 8
  %toOrigParentQueryVectorPtr = alloca %struct.vector*, align 8
  %fromOrigParentQueryVectorPtr = alloca %struct.vector*, align 8
  %status = alloca i64, align 8
  %adtreePtr = alloca %struct.adtree*, align 8
  %netPtr = alloca %struct.net*, align 8
  %localBaseLogLikelihoods = alloca float*, align 8
  %numParent = alloca i64, align 8
  %bestFromId = alloca i64, align 8
  %oldLocalLogLikelihood = alloca float, align 4
  %bestLocalLogLikelihood = alloca float, align 4
  %fromId = alloca i64, align 8
  %i = alloca i64, align 8
  %queryPtr = alloca %struct.query*, align 8
  %p = alloca i64, align 8
  %queryPtr1 = alloca %struct.query*, align 8
  %newLocalLogLikelihood = alloca float, align 4
  %isTaskValid = alloca i64, align 8
  %bestTask = alloca %struct.learner_task, align 8
  %fromLocalLogLikelihood = alloca float, align 4
  %numRecord = alloca i64, align 8
  %penalty = alloca float, align 4
  %logLikelihood = alloca float, align 4
  %bestScore = alloca float, align 4
  store %struct.findBestTaskArg* %argPtr, %struct.findBestTaskArg** %1, align 8
  %2 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %3 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %toId, align 8
  %5 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %6 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %5, i32 0, i32 1
  %7 = load %struct.learner*, %struct.learner** %6, align 8
  store %struct.learner* %7, %struct.learner** %learnerPtr, align 8
  %8 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %9 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %8, i32 0, i32 2
  %10 = load %struct.query*, %struct.query** %9, align 8
  store %struct.query* %10, %struct.query** %queries, align 8
  %11 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %12 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %11, i32 0, i32 3
  %13 = load %struct.vector*, %struct.vector** %12, align 8
  store %struct.vector* %13, %struct.vector** %queryVectorPtr, align 8
  %14 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %15 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %14, i32 0, i32 4
  %16 = load %struct.vector*, %struct.vector** %15, align 8
  store %struct.vector* %16, %struct.vector** %parentQueryVectorPtr, align 8
  %17 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %18 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %numTotalParent, align 8
  %20 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %21 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %20, i32 0, i32 6
  %22 = load float, float* %21, align 8
  store float %22, float* %basePenalty, align 4
  %23 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %24 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %23, i32 0, i32 7
  %25 = load float, float* %24, align 4
  store float %25, float* %baseLogLikelihood, align 4
  %26 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %27 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %26, i32 0, i32 8
  %28 = load %struct.bitmap*, %struct.bitmap** %27, align 8
  store %struct.bitmap* %28, %struct.bitmap** %visitedBitmapPtr, align 8
  %29 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %30 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %29, i32 0, i32 9
  %31 = load %struct.queue*, %struct.queue** %30, align 8
  store %struct.queue* %31, %struct.queue** %workQueuePtr, align 8
  %32 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %33 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %32, i32 0, i32 10
  %34 = load %struct.vector*, %struct.vector** %33, align 8
  store %struct.vector* %34, %struct.vector** %toOrigParentQueryVectorPtr, align 8
  %35 = load %struct.findBestTaskArg*, %struct.findBestTaskArg** %1, align 8
  %36 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %35, i32 0, i32 11
  %37 = load %struct.vector*, %struct.vector** %36, align 8
  store %struct.vector* %37, %struct.vector** %fromOrigParentQueryVectorPtr, align 8
  %38 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %39 = getelementptr inbounds %struct.learner, %struct.learner* %38, i32 0, i32 0
  %40 = load %struct.adtree*, %struct.adtree** %39, align 8
  store %struct.adtree* %40, %struct.adtree** %adtreePtr, align 8
  %41 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %42 = getelementptr inbounds %struct.learner, %struct.learner* %41, i32 0, i32 1
  %43 = load %struct.net*, %struct.net** %42, align 8
  store %struct.net* %43, %struct.net** %netPtr, align 8
  %44 = load %struct.learner*, %struct.learner** %learnerPtr, align 8
  %45 = getelementptr inbounds %struct.learner, %struct.learner* %44, i32 0, i32 2
  %46 = load float*, float** %45, align 8
  store float* %46, float** %localBaseLogLikelihoods, align 8
  %47 = load %struct.net*, %struct.net** %netPtr, align 8
  %48 = load i64, i64* %toId, align 8
  %49 = load %struct.query*, %struct.query** %queries, align 8
  %50 = load %struct.vector*, %struct.vector** %toOrigParentQueryVectorPtr, align 8
  call void @TMpopulateParentQueryVector(%struct.net* %47, i64 %48, %struct.query* %49, %struct.vector* %50)
  %51 = load %struct.vector*, %struct.vector** %toOrigParentQueryVectorPtr, align 8
  %52 = call i64 @vector_getSize(%struct.vector* %51)
  store i64 %52, i64* %numParent, align 8
  %53 = load i64, i64* %toId, align 8
  store i64 %53, i64* %bestFromId, align 8
  %54 = load i64, i64* %toId, align 8
  %55 = load float*, float** %localBaseLogLikelihoods, align 8
  %56 = getelementptr inbounds float, float* %55, i64 %54
  %57 = load float, float* %56, align 4
  store float %57, float* %oldLocalLogLikelihood, align 4
  %58 = load float, float* %oldLocalLogLikelihood, align 4
  store float %58, float* %bestLocalLogLikelihood, align 4
  store i64 0, i64* %fromId, align 8
  store i64 0, i64* %i, align 8
  br label %__kernel__TMfindBestReverseTask1

__kernel__TMfindBestReverseTask1:                 ; preds = %202, %0
  %59 = load i64, i64* %i, align 8
  %60 = load i64, i64* %numParent, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %205

; <label>:62                                      ; preds = %__kernel__TMfindBestReverseTask1
  %63 = load %struct.vector*, %struct.vector** %toOrigParentQueryVectorPtr, align 8
  %64 = load i64, i64* %i, align 8
  %65 = call i8* @vector_at(%struct.vector* %63, i64 %64)
  %66 = bitcast i8* %65 to %struct.query*
  store %struct.query* %66, %struct.query** %queryPtr, align 8
  %67 = load %struct.query*, %struct.query** %queryPtr, align 8
  %68 = getelementptr inbounds %struct.query, %struct.query* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %fromId, align 8
  %70 = load float, float* %oldLocalLogLikelihood, align 4
  %71 = load i64, i64* %fromId, align 8
  %72 = load float*, float** %localBaseLogLikelihoods, align 8
  %73 = getelementptr inbounds float, float* %72, i64 %71
  %74 = load float, float* %73, align 4
  %75 = fadd float %70, %74
  store float %75, float* %bestLocalLogLikelihood, align 4
  %76 = load %struct.net*, %struct.net** %netPtr, align 8
  %77 = load i64, i64* %fromId, align 8
  %78 = load %struct.query*, %struct.query** %queries, align 8
  %79 = load %struct.vector*, %struct.vector** %fromOrigParentQueryVectorPtr, align 8
  call void @TMpopulateParentQueryVector(%struct.net* %76, i64 %77, %struct.query* %78, %struct.vector* %79)
  %80 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  call void @vector_clear(%struct.vector* %80)
  store i64 0, i64* %p, align 8
  br label %81

; <label>:81                                      ; preds = %109, %62
  %82 = load i64, i64* %p, align 8
  %83 = load i64, i64* %numParent, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %112

; <label>:85                                      ; preds = %81
  %86 = load i64, i64* %p, align 8
  %87 = load i64, i64* %fromId, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %108

; <label>:89                                      ; preds = %85
  %90 = load %struct.vector*, %struct.vector** %toOrigParentQueryVectorPtr, align 8
  %91 = load i64, i64* %p, align 8
  %92 = call i8* @vector_at(%struct.vector* %90, i64 %91)
  %93 = bitcast i8* %92 to %struct.query*
  store %struct.query* %93, %struct.query** %queryPtr1, align 8
  %94 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %95 = load %struct.query*, %struct.query** %queryPtr1, align 8
  %96 = getelementptr inbounds %struct.query, %struct.query* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.query*, %struct.query** %queries, align 8
  %99 = getelementptr inbounds %struct.query, %struct.query* %98, i64 %97
  %100 = bitcast %struct.query* %99 to i8*
  %101 = call i64 @Pvector_pushBack(%struct.vector* %94, i8* %100)
  store i64 %101, i64* %status, align 8
  %102 = load i64, i64* %status, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %89
  br label %107

; <label>:105                                     ; preds = %89
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1024, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %107

; <label>:107                                     ; preds = %106, %104
  br label %108

; <label>:108                                     ; preds = %107, %85
  br label %109

; <label>:109                                     ; preds = %108
  %110 = load i64, i64* %p, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %p, align 8
  br label %81

; <label>:112                                     ; preds = %81
  %113 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %114 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %115 = call i64 @Pvector_copy(%struct.vector* %113, %struct.vector* %114)
  store i64 %115, i64* %status, align 8
  %116 = load i64, i64* %status, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

; <label>:118                                     ; preds = %112
  br label %121

; <label>:119                                     ; preds = %112
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1033, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %121

; <label>:121                                     ; preds = %120, %118
  %122 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %123 = load i64, i64* %toId, align 8
  %124 = load %struct.query*, %struct.query** %queries, align 8
  %125 = getelementptr inbounds %struct.query, %struct.query* %124, i64 %123
  %126 = bitcast %struct.query* %125 to i8*
  %127 = call i64 @Pvector_pushBack(%struct.vector* %122, i8* %126)
  store i64 %127, i64* %status, align 8
  %128 = load i64, i64* %status, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

; <label>:130                                     ; preds = %121
  br label %133

; <label>:131                                     ; preds = %121
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1035, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %133

; <label>:133                                     ; preds = %132, %130
  %134 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  call void @vector_sort(%struct.vector* %134, i32 (i8*, i8*)* @compareQuery)
  %135 = load i64, i64* %toId, align 8
  %136 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %137 = load %struct.net*, %struct.net** %netPtr, align 8
  %138 = load %struct.query*, %struct.query** %queries, align 8
  %139 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %140 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %141 = call float @computeLocalLogLikelihood(i64 %135, %struct.adtree* %136, %struct.net* %137, %struct.query* %138, %struct.vector* %139, %struct.vector* %140)
  store float %141, float* %newLocalLogLikelihood, align 4
  %142 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %143 = load %struct.vector*, %struct.vector** %fromOrigParentQueryVectorPtr, align 8
  %144 = call i64 @Pvector_copy(%struct.vector* %142, %struct.vector* %143)
  store i64 %144, i64* %status, align 8
  %145 = load i64, i64* %status, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

; <label>:147                                     ; preds = %133
  br label %150

; <label>:148                                     ; preds = %133
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1055, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %150

; <label>:150                                     ; preds = %149, %147
  %151 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %152 = load i64, i64* %toId, align 8
  %153 = load %struct.query*, %struct.query** %queries, align 8
  %154 = getelementptr inbounds %struct.query, %struct.query* %153, i64 %152
  %155 = bitcast %struct.query* %154 to i8*
  %156 = call i64 @Pvector_pushBack(%struct.vector* %151, i8* %155)
  store i64 %156, i64* %status, align 8
  %157 = load i64, i64* %status, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

; <label>:159                                     ; preds = %150
  br label %162

; <label>:160                                     ; preds = %150
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1057, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %162

; <label>:162                                     ; preds = %161, %159
  %163 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  call void @vector_sort(%struct.vector* %163, i32 (i8*, i8*)* @compareQuery)
  %164 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %165 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %166 = call i64 @Pvector_copy(%struct.vector* %164, %struct.vector* %165)
  store i64 %166, i64* %status, align 8
  %167 = load i64, i64* %status, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

; <label>:169                                     ; preds = %162
  br label %172

; <label>:170                                     ; preds = %162
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1061, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %172

; <label>:172                                     ; preds = %171, %169
  %173 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %174 = load i64, i64* %fromId, align 8
  %175 = load %struct.query*, %struct.query** %queries, align 8
  %176 = getelementptr inbounds %struct.query, %struct.query* %175, i64 %174
  %177 = bitcast %struct.query* %176 to i8*
  %178 = call i64 @Pvector_pushBack(%struct.vector* %173, i8* %177)
  store i64 %178, i64* %status, align 8
  %179 = load i64, i64* %status, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

; <label>:181                                     ; preds = %172
  br label %184

; <label>:182                                     ; preds = %172
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1063, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %184

; <label>:184                                     ; preds = %183, %181
  %185 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  call void @vector_sort(%struct.vector* %185, i32 (i8*, i8*)* @compareQuery)
  %186 = load i64, i64* %fromId, align 8
  %187 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %188 = load %struct.net*, %struct.net** %netPtr, align 8
  %189 = load %struct.query*, %struct.query** %queries, align 8
  %190 = load %struct.vector*, %struct.vector** %queryVectorPtr, align 8
  %191 = load %struct.vector*, %struct.vector** %parentQueryVectorPtr, align 8
  %192 = call float @computeLocalLogLikelihood(i64 %186, %struct.adtree* %187, %struct.net* %188, %struct.query* %189, %struct.vector* %190, %struct.vector* %191)
  %193 = load float, float* %newLocalLogLikelihood, align 4
  %194 = fadd float %193, %192
  store float %194, float* %newLocalLogLikelihood, align 4
  %195 = load float, float* %newLocalLogLikelihood, align 4
  %196 = load float, float* %bestLocalLogLikelihood, align 4
  %197 = fcmp ogt float %195, %196
  br i1 %197, label %198, label %201

; <label>:198                                     ; preds = %184
  %199 = load float, float* %newLocalLogLikelihood, align 4
  store float %199, float* %bestLocalLogLikelihood, align 4
  %200 = load i64, i64* %fromId, align 8
  store i64 %200, i64* %bestFromId, align 8
  br label %201

; <label>:201                                     ; preds = %198, %184
  br label %202

; <label>:202                                     ; preds = %201
  %203 = load i64, i64* %i, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* %i, align 8
  br label %__kernel__TMfindBestReverseTask1, !llvm.loop !6

; <label>:205                                     ; preds = %__kernel__TMfindBestReverseTask1
  %206 = load i64, i64* %bestFromId, align 8
  %207 = load i64, i64* %toId, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %230

; <label>:209                                     ; preds = %205
  store i64 1, i64* %isTaskValid, align 8
  %210 = load %struct.net*, %struct.net** %netPtr, align 8
  %211 = load i64, i64* %bestFromId, align 8
  %212 = load i64, i64* %toId, align 8
  call void @TMnet_applyOperation(%struct.net* %210, i32 1, i64 %211, i64 %212)
  %213 = load %struct.net*, %struct.net** %netPtr, align 8
  %214 = load i64, i64* %bestFromId, align 8
  %215 = load i64, i64* %toId, align 8
  %216 = load %struct.bitmap*, %struct.bitmap** %visitedBitmapPtr, align 8
  %217 = load %struct.queue*, %struct.queue** %workQueuePtr, align 8
  %218 = call i64 @TMnet_isPath(%struct.net* %213, i64 %214, i64 %215, %struct.bitmap* %216, %struct.queue* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

; <label>:220                                     ; preds = %209
  store i64 0, i64* %isTaskValid, align 8
  br label %221

; <label>:221                                     ; preds = %220, %209
  %222 = load %struct.net*, %struct.net** %netPtr, align 8
  %223 = load i64, i64* %bestFromId, align 8
  %224 = load i64, i64* %toId, align 8
  call void @TMnet_applyOperation(%struct.net* %222, i32 0, i64 %223, i64 %224)
  %225 = load i64, i64* %isTaskValid, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %229, label %227

; <label>:227                                     ; preds = %221
  %228 = load i64, i64* %toId, align 8
  store i64 %228, i64* %bestFromId, align 8
  br label %229

; <label>:229                                     ; preds = %227, %221
  br label %230

; <label>:230                                     ; preds = %229, %205
  %231 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 0
  store i32 2, i32* %231, align 8
  %232 = load i64, i64* %bestFromId, align 8
  %233 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 1
  store i64 %232, i64* %233, align 8
  %234 = load i64, i64* %toId, align 8
  %235 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  store i64 %234, i64* %235, align 8
  %236 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float 0.000000e+00, float* %236, align 8
  %237 = load i64, i64* %bestFromId, align 8
  %238 = load i64, i64* %toId, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %267

; <label>:240                                     ; preds = %230
  %241 = load i64, i64* %bestFromId, align 8
  %242 = load float*, float** %localBaseLogLikelihoods, align 8
  %243 = getelementptr inbounds float, float* %242, i64 %241
  %244 = load float, float* %243, align 4
  store float %244, float* %fromLocalLogLikelihood, align 4
  %245 = load %struct.adtree*, %struct.adtree** %adtreePtr, align 8
  %246 = getelementptr inbounds %struct.adtree, %struct.adtree* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %numRecord, align 8
  %248 = load i64, i64* %numTotalParent, align 8
  %249 = sitofp i64 %248 to float
  %250 = load float, float* %basePenalty, align 4
  %251 = fmul float %249, %250
  store float %251, float* %penalty, align 4
  %252 = load i64, i64* %numRecord, align 8
  %253 = sitofp i64 %252 to float
  %254 = load float, float* %baseLogLikelihood, align 4
  %255 = load float, float* %bestLocalLogLikelihood, align 4
  %256 = fadd float %254, %255
  %257 = load float, float* %oldLocalLogLikelihood, align 4
  %258 = fsub float %256, %257
  %259 = load float, float* %fromLocalLogLikelihood, align 4
  %260 = fsub float %258, %259
  %261 = fmul float %253, %260
  store float %261, float* %logLikelihood, align 4
  %262 = load float, float* %penalty, align 4
  %263 = load float, float* %logLikelihood, align 4
  %264 = fadd float %262, %263
  store float %264, float* %bestScore, align 4
  %265 = load float, float* %bestScore, align 4
  %266 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float %265, float* %266, align 8
  br label %267

; <label>:267                                     ; preds = %240, %230
  %268 = bitcast %struct.learner_task* %agg.result to i8*
  %269 = bitcast %struct.learner_task* %bestTask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %268, i8* %269, i64 32, i32 8, i1 false)
  ret void
}

declare void @Pbitmap_free(%struct.bitmap*) #2

declare void @Pqueue_free(%struct.queue*) #2

; Function Attrs: nounwind uwtable
define internal void @TMpopulateParentQueryVector(%struct.net* %netPtr, i64 %id, %struct.query* %queries, %struct.vector* %parentQueryVectorPtr) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.query*, align 8
  %4 = alloca %struct.vector*, align 8
  %parentIdListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %parentId = alloca i64, align 8
  %status = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i64 %id, i64* %2, align 8
  store %struct.query* %queries, %struct.query** %3, align 8
  store %struct.vector* %parentQueryVectorPtr, %struct.vector** %4, align 8
  %5 = load %struct.vector*, %struct.vector** %4, align 8
  call void @vector_clear(%struct.vector* %5)
  %6 = load %struct.net*, %struct.net** %1, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call %struct.list* @net_getParentIdListPtr(%struct.net* %6, i64 %7)
  store %struct.list* %8, %struct.list** %parentIdListPtr, align 8
  %9 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %9)
  br label %10

; <label>:10                                      ; preds = %29, %0
  %11 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %12 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %11) #8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

; <label>:14                                      ; preds = %10
  %15 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %16 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %15)
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* %parentId, align 8
  %18 = load %struct.vector*, %struct.vector** %4, align 8
  %19 = load i64, i64* %parentId, align 8
  %20 = load %struct.query*, %struct.query** %3, align 8
  %21 = getelementptr inbounds %struct.query, %struct.query* %20, i64 %19
  %22 = bitcast %struct.query* %21 to i8*
  %23 = call i64 @Pvector_pushBack(%struct.vector* %18, i8* %22)
  store i64 %23, i64* %status, align 8
  %24 = load i64, i64* %status, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %14
  br label %29

; <label>:27                                      ; preds = %14
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 574, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.TMpopulateParentQueryVector, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %26
  br label %10

; <label>:30                                      ; preds = %10
  ret void
}

declare i64 @Pvector_copy(%struct.vector*, %struct.vector*) #2

declare void @vector_sort(%struct.vector*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @compareQuery(i8* %aPtr, i8* %bPtr) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %aQueryPtr = alloca %struct.query*, align 8
  %bQueryPtr = alloca %struct.query*, align 8
  store i8* %aPtr, i8** %1, align 8
  store i8* %bPtr, i8** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = bitcast i8* %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.query*
  store %struct.query* %6, %struct.query** %aQueryPtr, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.query*
  store %struct.query* %10, %struct.query** %bQueryPtr, align 8
  %11 = load %struct.query*, %struct.query** %aQueryPtr, align 8
  %12 = getelementptr inbounds %struct.query, %struct.query* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.query*, %struct.query** %bQueryPtr, align 8
  %15 = getelementptr inbounds %struct.query, %struct.query* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = trunc i64 %17 to i32
  ret i32 %18
}

declare void @vector_clear(%struct.vector*) #2

declare i64 @TMnet_findDescendants(%struct.net*, i64, %struct.bitmap*, %struct.queue*) #2

declare i64 @TMlist_getSize(%struct.list*) #2

declare i64 @bitmap_set(%struct.bitmap*, i64) #2

declare i64 @bitmap_findClear(%struct.bitmap*, i64) #2

declare i64 @vector_getSize(%struct.vector*) #2

declare i8* @vector_at(%struct.vector*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @populateParentQueryVector(%struct.net* %netPtr, i64 %id, %struct.query* %queries, %struct.vector* %parentQueryVectorPtr) #0 {
  %1 = alloca %struct.net*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.query*, align 8
  %4 = alloca %struct.vector*, align 8
  %parentIdListPtr = alloca %struct.list*, align 8
  %it = alloca %struct.list_node*, align 8
  %parentId = alloca i64, align 8
  %status = alloca i64, align 8
  store %struct.net* %netPtr, %struct.net** %1, align 8
  store i64 %id, i64* %2, align 8
  store %struct.query* %queries, %struct.query** %3, align 8
  store %struct.vector* %parentQueryVectorPtr, %struct.vector** %4, align 8
  %5 = load %struct.vector*, %struct.vector** %4, align 8
  call void @vector_clear(%struct.vector* %5)
  %6 = load %struct.net*, %struct.net** %1, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call %struct.list* @net_getParentIdListPtr(%struct.net* %6, i64 %7)
  store %struct.list* %8, %struct.list** %parentIdListPtr, align 8
  %9 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %9)
  br label %10

; <label>:10                                      ; preds = %29, %0
  %11 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %12 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %11) #8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

; <label>:14                                      ; preds = %10
  %15 = load %struct.list*, %struct.list** %parentIdListPtr, align 8
  %16 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %15)
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* %parentId, align 8
  %18 = load %struct.vector*, %struct.vector** %4, align 8
  %19 = load i64, i64* %parentId, align 8
  %20 = load %struct.query*, %struct.query** %3, align 8
  %21 = getelementptr inbounds %struct.query, %struct.query* %20, i64 %19
  %22 = bitcast %struct.query* %21 to i8*
  %23 = call i64 @vector_pushBack(%struct.vector* %18, i8* %22)
  store i64 %23, i64* %status, align 8
  %24 = load i64, i64* %status, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %14
  br label %29

; <label>:27                                      ; preds = %14
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 548, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.populateParentQueryVector, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %26
  br label %10

; <label>:30                                      ; preds = %10
  ret void
}

declare i64 @vector_copy(%struct.vector*, %struct.vector*) #2

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind uwtable
define internal float @computeLocalLogLikelihoodHelper(i64 %i, i64 %numParent, %struct.adtree* %adtreePtr, %struct.query* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) #0 {
  %1 = alloca float, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.adtree*, align 8
  %5 = alloca %struct.query*, align 8
  %6 = alloca %struct.vector*, align 8
  %7 = alloca %struct.vector*, align 8
  %localLogLikelihood = alloca float, align 4
  %parentQueryPtr = alloca %struct.query*, align 8
  %parentIndex = alloca i64, align 8
  store i64 %i, i64* %2, align 8
  store i64 %numParent, i64* %3, align 8
  store %struct.adtree* %adtreePtr, %struct.adtree** %4, align 8
  store %struct.query* %queries, %struct.query** %5, align 8
  store %struct.vector* %queryVectorPtr, %struct.vector** %6, align 8
  store %struct.vector* %parentQueryVectorPtr, %struct.vector** %7, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %0
  %12 = load %struct.adtree*, %struct.adtree** %4, align 8
  %13 = load %struct.vector*, %struct.vector** %6, align 8
  %14 = load %struct.vector*, %struct.vector** %7, align 8
  %15 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %12, %struct.vector* %13, %struct.vector* %14)
  store float %15, float* %1, align 4
  br label %57

; <label>:16                                      ; preds = %0
  store float 0.000000e+00, float* %localLogLikelihood, align 4
  %17 = load %struct.vector*, %struct.vector** %7, align 8
  %18 = load i64, i64* %2, align 8
  %19 = call i8* @vector_at(%struct.vector* %17, i64 %18)
  %20 = bitcast i8* %19 to %struct.query*
  store %struct.query* %20, %struct.query** %parentQueryPtr, align 8
  %21 = load %struct.query*, %struct.query** %parentQueryPtr, align 8
  %22 = getelementptr inbounds %struct.query, %struct.query* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %parentIndex, align 8
  %24 = load i64, i64* %parentIndex, align 8
  %25 = load %struct.query*, %struct.query** %5, align 8
  %26 = getelementptr inbounds %struct.query, %struct.query* %25, i64 %24
  %27 = getelementptr inbounds %struct.query, %struct.query* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i64, i64* %2, align 8
  %29 = add nsw i64 %28, 1
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.adtree*, %struct.adtree** %4, align 8
  %32 = load %struct.query*, %struct.query** %5, align 8
  %33 = load %struct.vector*, %struct.vector** %6, align 8
  %34 = load %struct.vector*, %struct.vector** %7, align 8
  %35 = call float @computeLocalLogLikelihoodHelper(i64 %29, i64 %30, %struct.adtree* %31, %struct.query* %32, %struct.vector* %33, %struct.vector* %34)
  %36 = load float, float* %localLogLikelihood, align 4
  %37 = fadd float %36, %35
  store float %37, float* %localLogLikelihood, align 4
  %38 = load i64, i64* %parentIndex, align 8
  %39 = load %struct.query*, %struct.query** %5, align 8
  %40 = getelementptr inbounds %struct.query, %struct.query* %39, i64 %38
  %41 = getelementptr inbounds %struct.query, %struct.query* %40, i32 0, i32 1
  store i64 1, i64* %41, align 8
  %42 = load i64, i64* %2, align 8
  %43 = add nsw i64 %42, 1
  %44 = load i64, i64* %3, align 8
  %45 = load %struct.adtree*, %struct.adtree** %4, align 8
  %46 = load %struct.query*, %struct.query** %5, align 8
  %47 = load %struct.vector*, %struct.vector** %6, align 8
  %48 = load %struct.vector*, %struct.vector** %7, align 8
  %49 = call float @computeLocalLogLikelihoodHelper(i64 %43, i64 %44, %struct.adtree* %45, %struct.query* %46, %struct.vector* %47, %struct.vector* %48)
  %50 = load float, float* %localLogLikelihood, align 4
  %51 = fadd float %50, %49
  store float %51, float* %localLogLikelihood, align 4
  %52 = load i64, i64* %parentIndex, align 8
  %53 = load %struct.query*, %struct.query** %5, align 8
  %54 = getelementptr inbounds %struct.query, %struct.query* %53, i64 %52
  %55 = getelementptr inbounds %struct.query, %struct.query* %54, i32 0, i32 1
  store i64 -1, i64* %55, align 8
  %56 = load float, float* %localLogLikelihood, align 4
  store float %56, float* %1, align 4
  br label %57

; <label>:57                                      ; preds = %16, %11
  %58 = load float, float* %1, align 4
  ret float %58
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1711916, i32 1711932, i32 1711968, i32 1712004, i32 1712040}
!2 = !{i32 1712517, i32 1712532, i32 1712566}
!3 = !{i32 1712288, i32 1712303, i32 1712331}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.vectorize.width", i32 1337}
!6 = distinct !{!6, !5}
