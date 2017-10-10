; ModuleID = '../bin/learner.marked.ll'
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
%struct.findBestTaskArg = type { i64, %struct.learner*, %struct.query*, %struct.vector*, %struct.vector*, i64, float, float, %struct.bitmap*, %struct.queue*, %struct.vector*, %struct.vector* }
%struct.bitmap = type { i64, i64, i64* }
%struct.queue = type opaque

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
@"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_vi" = external global i64
@"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_lsup" = external global i64
@"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_granularity" = external global i64
@"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_vi" = external global i64
@"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_lsup" = external global i64
@"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_granularity" = external global i64

; Function Attrs: nounwind uwtable
define %struct.learner* @learner_alloc(%struct.data* %dataPtr, %struct.adtree* %adtreePtr, i64 %numThread) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call noalias i8* @malloc(i64 336) #5
  %2 = bitcast i8* %1 to %struct.learner*
  %3 = icmp ne %struct.learner* %2, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %54

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 0
  store %struct.adtree* %adtreePtr, %struct.adtree** %5, align 8
  %6 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call %struct.net* @net_alloc(i64 %7)
  %9 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 1
  store %struct.net* %8, %struct.net** %9, align 8
  %10 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 1
  %11 = load %struct.net*, %struct.net** %10, align 8
  %12 = icmp ne %struct.net* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %4
  br label %16

; <label>:14                                      ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 237, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = mul i64 %18, 4
  %20 = call noalias i8* @malloc(i64 %19) #5
  %21 = bitcast i8* %20 to float*
  %22 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 2
  store float* %21, float** %22, align 8
  %23 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 2
  %24 = load float*, float** %23, align 8
  %25 = icmp ne float* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %16
  br label %29

; <label>:27                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 240, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %26
  %30 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 4
  store float 0.000000e+00, float* %30, align 8
  %31 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = mul i64 %32, 32
  %34 = call noalias i8* @malloc(i64 %33) #5
  %35 = bitcast i8* %34 to %struct.learner_task*
  %36 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 6
  store %struct.learner_task* %35, %struct.learner_task** %36, align 8
  %37 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 6
  %38 = load %struct.learner_task*, %struct.learner_task** %37, align 8
  %39 = icmp ne %struct.learner_task* %38, null
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %29
  br label %43

; <label>:41                                      ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 244, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %43

; <label>:43                                      ; preds = %42, %40
  %44 = call %struct.list* @list_alloc(i64 (i8*, i8*)* @compareTask)
  %45 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 8
  store %struct.list* %44, %struct.list** %45, align 8
  %46 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 8
  %47 = load %struct.list*, %struct.list** %46, align 8
  %48 = icmp ne %struct.list* %47, null
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %43
  br label %52

; <label>:50                                      ; preds = %43
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 246, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %52

; <label>:52                                      ; preds = %51, %49
  %53 = getelementptr inbounds %struct.learner, %struct.learner* %2, i32 0, i32 10
  store i64 0, i64* %53, align 8
  br label %54

; <label>:54                                      ; preds = %._crit_edge, %52
  ret %struct.learner* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.net* @net_alloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i64 @compareTask(i8* %aPtr, i8* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast i8* %aPtr to %struct.learner_task*
  %2 = bitcast i8* %bPtr to %struct.learner_task*
  %3 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %1, i32 0, i32 3
  %4 = load float, float* %3, align 8
  %5 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %2, i32 0, i32 3
  %6 = load float, float* %5, align 8
  %7 = fcmp olt float %4, %6
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %18

; <label>:9                                       ; preds = %0
  %10 = fcmp ogt float %4, %6
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %9
  br label %18

; <label>:12                                      ; preds = %9
  %13 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %1, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %2, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %14, %16
  br label %18

; <label>:18                                      ; preds = %12, %11, %8
  %.0 = phi i64 [ 1, %8 ], [ -1, %11 ], [ %17, %12 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define void @learner_free(%struct.learner* %learnerPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i32 0, i32 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  call void @list_free(%struct.list* %2)
  %3 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i32 0, i32 6
  %4 = load %struct.learner_task*, %struct.learner_task** %3, align 8
  %5 = bitcast %struct.learner_task* %4 to i8*
  call void @free(i8* %5) #5
  %6 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i32 0, i32 2
  %7 = load float*, float** %6, align 8
  %8 = bitcast float* %7 to i8*
  call void @free(i8* %8) #5
  %9 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i32 0, i32 1
  %10 = load %struct.net*, %struct.net** %9, align 8
  call void @net_free(%struct.net* %10)
  %11 = bitcast %struct.learner* %learnerPtr to i8*
  call void @free(i8* %11) #5
  ret void
}

declare void @list_free(%struct.list*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @net_free(%struct.net*) #2

; Function Attrs: nounwind uwtable
define %struct.learner_task* @TMpopTask(%struct.list* %taskListPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %taskListPtr)
  %1 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %taskListPtr) #8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %._crit_edge

._crit_edge:                                      ; preds = %0
  br label %13

; <label>:3                                       ; preds = %0
  %4 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %taskListPtr)
  %5 = bitcast i8* %4 to %struct.learner_task*
  %6 = bitcast %struct.learner_task* %5 to i8*
  %7 = call i64 @TMlist_remove(%struct.list* %taskListPtr, i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %3
  br label %12

; <label>:10                                      ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 521, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.TMpopTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %12

; <label>:12                                      ; preds = %11, %9
  br label %13

; <label>:13                                      ; preds = %._crit_edge, %12
  %taskPtr.0 = phi %struct.learner_task* [ %5, %12 ], [ null, %._crit_edge ]
  ret %struct.learner_task* %taskPtr.0
}

declare void @TMlist_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @TMlist_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @TMlist_iter_next(%struct.list_node**, %struct.list*) #2

declare i64 @TMlist_remove(%struct.list*, i8*) #2

; Function Attrs: nounwind uwtable
define void @learner_run(%struct.learner* %learnerPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast %struct.learner* %learnerPtr to i8*
  call void @thread_start(void (i8*)* @createTaskList, i8* %1)
  %2 = bitcast %struct.learner* %learnerPtr to i8*
  call void @thread_start(void (i8*)* @learnStructure, i8* %2)
  ret void
}

declare void @thread_start(void (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @createTaskList(i8* %argPtr) #0 {
  %queries = alloca [2 x %struct.query], align 16
  %parentQuery = alloca %struct.query, align 8
  %v_start = alloca i64, align 8
  %v_stop = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 (...) @thread_getId()
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1
  br label %4

; <label>:4                                       ; preds = %0
  %5 = call i64 (...) @thread_getId()
  %6 = trunc i64 %5 to i32
  call void @SimRoiStart(i32 %6)
  br label %7

; <label>:7                                       ; preds = %4
  %8 = call i64 (...) @thread_getId()
  %9 = call i64 (...) @thread_getNumThread()
  %10 = bitcast i8* %argPtr to %struct.learner*
  %11 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 8
  %12 = load %struct.list*, %struct.list** %11, align 8
  %13 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 0
  %14 = load %struct.adtree*, %struct.adtree** %13, align 8
  %15 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 2
  %16 = load float*, float** %15, align 8
  %17 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 6
  %18 = load %struct.learner_task*, %struct.learner_task** %17, align 8
  %19 = call %struct.vector* @Pvector_alloc(i64 2)
  %20 = icmp ne %struct.vector* %19, null
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %7
  br label %24

; <label>:22                                      ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 341, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %24

; <label>:24                                      ; preds = %23, %21
  %25 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %26 = bitcast %struct.query* %25 to i8*
  %27 = call i64 @vector_pushBack(%struct.vector* %19, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %24
  br label %32

; <label>:30                                      ; preds = %24
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 343, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %32

; <label>:32                                      ; preds = %31, %29
  %33 = call %struct.vector* @Pvector_alloc(i64 1)
  %34 = icmp ne %struct.vector* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %32
  br label %38

; <label>:36                                      ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 347, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = getelementptr inbounds %struct.adtree, %struct.adtree* %14, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.adtree, %struct.adtree* %14, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sitofp i64 %42 to double
  %44 = call double @log(double %43) #5
  %45 = fmul double -5.000000e-01, %44
  %46 = fptrunc double %45 to float
  call void @createPartition(i64 0, i64 %40, i64 %8, i64 %9, i64* %v_start, i64* %v_stop)
  %47 = load i64, i64* %v_start, align 8
  %48 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %49 = getelementptr inbounds %struct.query, %struct.query* %48, i32 0, i32 0
  %50 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %51 = getelementptr inbounds %struct.query, %struct.query* %50, i32 0, i32 1
  %52 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %53 = getelementptr inbounds %struct.query, %struct.query* %52, i32 0, i32 1
  br label %54

; <label>:54                                      ; preds = %64, %38
  %baseLogLikelihood.0 = phi float [ 0.000000e+00, %38 ], [ %63, %64 ]
  %v.0 = phi i64 [ %47, %38 ], [ %65, %64 ]
  %55 = load i64, i64* %v_stop, align 8
  %56 = icmp slt i64 %v.0, %55
  br i1 %56, label %57, label %66

; <label>:57                                      ; preds = %54
  store i64 %v.0, i64* %49, align 16
  store i64 0, i64* %51, align 8
  %58 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %14, %struct.vector* %19, %struct.vector* %33)
  %59 = fadd float 0.000000e+00, %58
  store i64 1, i64* %53, align 8
  %60 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %14, %struct.vector* %19, %struct.vector* %33)
  %61 = fadd float %59, %60
  %62 = getelementptr inbounds float, float* %16, i64 %v.0
  store float %61, float* %62, align 4
  %63 = fadd float %baseLogLikelihood.0, %61
  br label %64

; <label>:64                                      ; preds = %57
  %65 = add nsw i64 %v.0, 1
  br label %54

; <label>:66                                      ; preds = %54
  br label %67

; <label>:67                                      ; preds = %80, %66
  %tries.0 = phi i32 [ 9, %66 ], [ %73, %80 ]
  br label %68

; <label>:68                                      ; preds = %71, %67
  %69 = call i64 (...) @RTM_fallback_isLocked()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %68
  call void @llvm.x86.sse2.pause() #5
  br label %68

; <label>:72                                      ; preds = %68
  %73 = add nsw i32 %tries.0, -1
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %72
  call void (...) @RTM_fallback_lock()
  br label %86

; <label>:76                                      ; preds = %72
  %77 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #5, !srcloc !1
  %78 = trunc i64 %77 to i32
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %76
  br label %67

; <label>:81                                      ; preds = %76
  %82 = call i64 (...) @RTM_fallback_isLocked()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %._crit_edge

._crit_edge:                                      ; preds = %81
  br label %85

; <label>:84                                      ; preds = %81
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %85

; <label>:85                                      ; preds = %._crit_edge, %84
  br label %86

; <label>:86                                      ; preds = %85, %75
  %87 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 4
  %88 = load float, float* %87, align 8
  %89 = fadd float %baseLogLikelihood.0, %88
  %90 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 4
  store float %89, float* %90, align 8
  %91 = getelementptr inbounds %struct.learner, %struct.learner* %10, i32 0, i32 4
  %92 = load float, float* %91, align 8
  %93 = icmp sgt i32 %73, 0
  br i1 %93, label %94, label %95

; <label>:94                                      ; preds = %86
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #5, !srcloc !3
  br label %96

; <label>:95                                      ; preds = %86
  call void (...) @RTM_fallback_unlock()
  br label %96

; <label>:96                                      ; preds = %95, %94
  %97 = bitcast %struct.query* %parentQuery to i8*
  %98 = call i64 @Pvector_pushBack(%struct.vector* %33, i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

; <label>:100                                     ; preds = %96
  br label %103

; <label>:101                                     ; preds = %96
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 398, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %103

; <label>:103                                     ; preds = %102, %100
  %104 = load i64, i64* %v_start, align 8
  %105 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %106 = getelementptr inbounds %struct.query, %struct.query* %105, i32 0, i32 0
  %107 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %108 = bitcast %struct.query* %107 to i8*
  %109 = getelementptr inbounds %struct.query, %struct.query* %parentQuery, i32 0, i32 0
  %110 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %111 = getelementptr inbounds %struct.query, %struct.query* %110, i32 0, i32 0
  %112 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %113 = getelementptr inbounds %struct.query, %struct.query* %112, i32 0, i32 0
  %114 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %115 = getelementptr inbounds %struct.query, %struct.query* %114, i32 0, i32 1
  %116 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %117 = getelementptr inbounds %struct.query, %struct.query* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.query, %struct.query* %parentQuery, i32 0, i32 1
  %119 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %120 = getelementptr inbounds %struct.query, %struct.query* %119, i32 0, i32 1
  %121 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %122 = getelementptr inbounds %struct.query, %struct.query* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.query, %struct.query* %parentQuery, i32 0, i32 1
  %124 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %125 = getelementptr inbounds %struct.query, %struct.query* %124, i32 0, i32 1
  %126 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %127 = getelementptr inbounds %struct.query, %struct.query* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.query, %struct.query* %parentQuery, i32 0, i32 1
  %129 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %130 = getelementptr inbounds %struct.query, %struct.query* %129, i32 0, i32 1
  %131 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %132 = getelementptr inbounds %struct.query, %struct.query* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.query, %struct.query* %parentQuery, i32 0, i32 1
  %134 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0
  %135 = getelementptr inbounds %struct.query, %struct.query* %134, i32 0, i32 0
  %136 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %137 = getelementptr inbounds %struct.query, %struct.query* %136, i32 0, i32 0
  %138 = sitofp i64 %42 to float
  br label %139

; <label>:139                                     ; preds = %227, %103
  %v.1 = phi i64 [ %104, %103 ], [ %228, %227 ]
  %140 = load i64, i64* %v_stop, align 8
  %141 = icmp slt i64 %v.1, %140
  br i1 %141, label %142, label %229

; <label>:142                                     ; preds = %139
  store i64 %v.1, i64* %106, align 16
  %143 = getelementptr inbounds float, float* %16, i64 %v.1
  %144 = load float, float* %143, align 4
  %145 = call i64 @Pvector_pushBack(%struct.vector* %19, i8* %108)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

; <label>:147                                     ; preds = %142
  br label %150

; <label>:148                                     ; preds = %142
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 411, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:150                                     ; preds = %147
  br label %151

; <label>:151                                     ; preds = %178, %150
  %bestLocalIndex.0 = phi i64 [ %v.1, %150 ], [ %bestLocalIndex.2, %178 ]
  %bestLocalLogLikelihood.0 = phi float [ %144, %150 ], [ %bestLocalLogLikelihood.2, %178 ]
  %vv.0 = phi i64 [ 0, %150 ], [ %179, %178 ]
  %152 = icmp slt i64 %vv.0, %40
  br i1 %152, label %153, label %180

; <label>:153                                     ; preds = %151
  %154 = icmp eq i64 %vv.0, %v.1
  br i1 %154, label %155, label %156

; <label>:155                                     ; preds = %153
  br label %178

; <label>:156                                     ; preds = %153
  store i64 %vv.0, i64* %109, align 8
  %157 = icmp slt i64 %v.1, %vv.0
  br i1 %157, label %158, label %159

; <label>:158                                     ; preds = %156
  store i64 %v.1, i64* %111, align 16
  store i64 %vv.0, i64* %113, align 16
  br label %160

; <label>:159                                     ; preds = %156
  store i64 %vv.0, i64* %135, align 16
  store i64 %v.1, i64* %137, align 16
  br label %160

; <label>:160                                     ; preds = %159, %158
  store i64 0, i64* %115, align 8
  store i64 0, i64* %117, align 8
  store i64 0, i64* %118, align 8
  %161 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %14, %struct.vector* %19, %struct.vector* %33)
  %162 = fadd float 0.000000e+00, %161
  store i64 0, i64* %120, align 8
  store i64 1, i64* %122, align 8
  %163 = icmp slt i64 %vv.0, %v.1
  %164 = select i1 %163, i32 0, i32 1
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %123, align 8
  %166 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %14, %struct.vector* %19, %struct.vector* %33)
  %167 = fadd float %162, %166
  store i64 1, i64* %125, align 8
  store i64 0, i64* %127, align 8
  %168 = icmp slt i64 %vv.0, %v.1
  %169 = select i1 %168, i32 1, i32 0
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %128, align 8
  %171 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %14, %struct.vector* %19, %struct.vector* %33)
  %172 = fadd float %167, %171
  store i64 1, i64* %130, align 8
  store i64 1, i64* %132, align 8
  store i64 1, i64* %133, align 8
  %173 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %14, %struct.vector* %19, %struct.vector* %33)
  %174 = fadd float %172, %173
  %175 = fcmp ogt float %174, %bestLocalLogLikelihood.0
  br i1 %175, label %176, label %._crit_edge1

._crit_edge1:                                     ; preds = %160
  br label %177

; <label>:176                                     ; preds = %160
  br label %177

; <label>:177                                     ; preds = %._crit_edge1, %176
  %bestLocalIndex.1 = phi i64 [ %vv.0, %176 ], [ %bestLocalIndex.0, %._crit_edge1 ]
  %bestLocalLogLikelihood.1 = phi float [ %174, %176 ], [ %bestLocalLogLikelihood.0, %._crit_edge1 ]
  br label %178

; <label>:178                                     ; preds = %177, %155
  %bestLocalIndex.2 = phi i64 [ %bestLocalIndex.0, %155 ], [ %bestLocalIndex.1, %177 ]
  %bestLocalLogLikelihood.2 = phi float [ %bestLocalLogLikelihood.0, %155 ], [ %bestLocalLogLikelihood.1, %177 ]
  %179 = add nsw i64 %vv.0, 1
  br label %151

; <label>:180                                     ; preds = %151
  %181 = call i8* @vector_popBack(%struct.vector* %19)
  %182 = icmp ne i64 %bestLocalIndex.0, %v.1
  br i1 %182, label %183, label %._crit_edge2

._crit_edge2:                                     ; preds = %180
  br label %226

; <label>:183                                     ; preds = %180
  %184 = fadd float %baseLogLikelihood.0, %bestLocalLogLikelihood.0
  %185 = getelementptr inbounds float, float* %16, i64 %v.1
  %186 = load float, float* %185, align 4
  %187 = fsub float %184, %186
  %188 = fmul float %138, %187
  %189 = fadd float %46, %188
  %190 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %18, i64 %v.1
  %191 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  %192 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %190, i32 0, i32 1
  store i64 %bestLocalIndex.0, i64* %192, align 8
  %193 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %190, i32 0, i32 2
  store i64 %v.1, i64* %193, align 8
  %194 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %190, i32 0, i32 3
  store float %189, float* %194, align 8
  br label %195

; <label>:195                                     ; preds = %208, %183
  %tries2.0 = phi i32 [ 9, %183 ], [ %201, %208 ]
  br label %196

; <label>:196                                     ; preds = %199, %195
  %197 = call i64 (...) @RTM_fallback_isLocked()
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

; <label>:199                                     ; preds = %196
  call void @llvm.x86.sse2.pause() #5
  br label %196

; <label>:200                                     ; preds = %196
  %201 = add nsw i32 %tries2.0, -1
  %202 = icmp sle i32 %201, 0
  br i1 %202, label %203, label %204

; <label>:203                                     ; preds = %200
  call void (...) @RTM_fallback_lock()
  br label %214

; <label>:204                                     ; preds = %200
  %205 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #5, !srcloc !1
  %206 = trunc i64 %205 to i32
  %207 = icmp ne i32 %206, -1
  br i1 %207, label %208, label %209

; <label>:208                                     ; preds = %204
  br label %195

; <label>:209                                     ; preds = %204
  %210 = call i64 (...) @RTM_fallback_isLocked()
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %._crit_edge3

._crit_edge3:                                     ; preds = %209
  br label %213

; <label>:212                                     ; preds = %209
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %213

; <label>:213                                     ; preds = %._crit_edge3, %212
  br label %214

; <label>:214                                     ; preds = %213, %203
  %215 = bitcast %struct.learner_task* %190 to i8*
  %216 = call i64 @TMlist_insert(%struct.list* %12, i8* %215)
  %217 = icmp sgt i32 %201, 0
  br i1 %217, label %218, label %219

; <label>:218                                     ; preds = %214
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #5, !srcloc !3
  br label %220

; <label>:219                                     ; preds = %214
  call void (...) @RTM_fallback_unlock()
  br label %220

; <label>:220                                     ; preds = %219, %218
  %221 = icmp ne i64 %216, 0
  br i1 %221, label %222, label %223

; <label>:222                                     ; preds = %220
  br label %225

; <label>:223                                     ; preds = %220
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 484, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:225                                     ; preds = %222
  br label %226

; <label>:226                                     ; preds = %._crit_edge2, %225
  br label %227

; <label>:227                                     ; preds = %226
  %228 = add nsw i64 %v.1, 1
  br label %139

; <label>:229                                     ; preds = %139
  call void @Pvector_free(%struct.vector* %19)
  call void @Pvector_free(%struct.vector* %33)
  br label %230

; <label>:230                                     ; preds = %229
  %231 = call i64 (...) @thread_getId()
  %232 = trunc i64 %231 to i32
  %233 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  call void @SimRoiEnd(i32 %232, i32 %234)
  br label %235

; <label>:235                                     ; preds = %230
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @learnStructure(i8* %argPtr) #0 {
  %arg = alloca %struct.findBestTaskArg, align 8
  %bestTask = alloca %struct.learner_task, align 8
  %newTask = alloca %struct.learner_task, align 8
  %1 = alloca %struct.learner_task, align 8
  %2 = alloca %struct.learner_task, align 8
  %3 = alloca %struct.learner_task, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %4 = call i64 (...) @thread_getId()
  %5 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %6 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %5, i64 %4
  br label %7

; <label>:7                                       ; preds = %0
  %8 = call i64 (...) @thread_getId()
  %9 = trunc i64 %8 to i32
  call void @SimRoiStart(i32 %9)
  br label %10

; <label>:10                                      ; preds = %7
  %11 = bitcast i8* %argPtr to %struct.learner*
  %12 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 1
  %13 = load %struct.net*, %struct.net** %12, align 8
  %14 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 0
  %15 = load %struct.adtree*, %struct.adtree** %14, align 8
  %16 = getelementptr inbounds %struct.adtree, %struct.adtree* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 2
  %19 = load float*, float** %18, align 8
  %20 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 8
  %21 = load %struct.list*, %struct.list** %20, align 8
  %22 = load float, float* @global_operationQualityFactor, align 4
  %23 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 0
  %24 = load %struct.adtree*, %struct.adtree** %23, align 8
  %25 = getelementptr inbounds %struct.adtree, %struct.adtree* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.bitmap* @Pbitmap_alloc(i64 %26)
  %28 = icmp ne %struct.bitmap* %27, null
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %10
  br label %32

; <label>:30                                      ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %32

; <label>:32                                      ; preds = %31, %29
  %33 = call %struct.queue* @Pqueue_alloc(i64 -1)
  %34 = icmp ne %struct.queue* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %32
  br label %38

; <label>:36                                      ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1159, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = getelementptr inbounds %struct.adtree, %struct.adtree* %15, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = mul i64 %40, 16
  %42 = call noalias i8* @malloc(i64 %41) #5
  %43 = bitcast i8* %42 to %struct.query*
  %44 = icmp ne %struct.query* %43, null
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %38
  br label %48

; <label>:46                                      ; preds = %38
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %48

; <label>:48                                      ; preds = %47, %45
  br label %49

; <label>:49                                      ; preds = %56, %48
  %v.0 = phi i64 [ 0, %48 ], [ %57, %56 ]
  %50 = icmp slt i64 %v.0, %40
  br i1 %50, label %51, label %58

; <label>:51                                      ; preds = %49
  %52 = getelementptr inbounds %struct.query, %struct.query* %43, i64 %v.0
  %53 = getelementptr inbounds %struct.query, %struct.query* %52, i32 0, i32 0
  store i64 %v.0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.query, %struct.query* %43, i64 %v.0
  %55 = getelementptr inbounds %struct.query, %struct.query* %54, i32 0, i32 1
  store i64 -1, i64* %55, align 8
  br label %56

; <label>:56                                      ; preds = %51
  %57 = add nsw i64 %v.0, 1
  br label %49

; <label>:58                                      ; preds = %49
  %59 = sitofp i64 %17 to double
  %60 = call double @log(double %59) #5
  %61 = fmul double -5.000000e-01, %60
  %62 = fptrunc double %61 to float
  %63 = call %struct.vector* @Pvector_alloc(i64 1)
  %64 = icmp ne %struct.vector* %63, null
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %58
  br label %68

; <label>:66                                      ; preds = %58
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1173, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %68

; <label>:68                                      ; preds = %67, %65
  %69 = call %struct.vector* @Pvector_alloc(i64 1)
  %70 = icmp ne %struct.vector* %69, null
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %68
  br label %74

; <label>:72                                      ; preds = %68
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %74

; <label>:74                                      ; preds = %73, %71
  %75 = call %struct.vector* @Pvector_alloc(i64 1)
  %76 = icmp ne %struct.vector* %75, null
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %74
  br label %80

; <label>:78                                      ; preds = %74
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %80

; <label>:80                                      ; preds = %79, %77
  %81 = call %struct.vector* @Pvector_alloc(i64 1)
  %82 = icmp ne %struct.vector* %81, null
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %80
  br label %86

; <label>:84                                      ; preds = %80
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %86

; <label>:86                                      ; preds = %85, %83
  %87 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 1
  store %struct.learner* %11, %struct.learner** %87, align 8
  %88 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 2
  store %struct.query* %43, %struct.query** %88, align 8
  %89 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 3
  store %struct.vector* %63, %struct.vector** %89, align 8
  %90 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 4
  store %struct.vector* %69, %struct.vector** %90, align 8
  %91 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 8
  store %struct.bitmap* %27, %struct.bitmap** %91, align 8
  %92 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 9
  store %struct.queue* %33, %struct.queue** %92, align 8
  %93 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 10
  store %struct.vector* %75, %struct.vector** %93, align 8
  %94 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 11
  store %struct.vector* %81, %struct.vector** %94, align 8
  %95 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 10
  %96 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 10
  %97 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 10
  %98 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 10
  %99 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 10
  %100 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 10
  %101 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 4
  %102 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 4
  %103 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 4
  %104 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 10
  %105 = sitofp i64 %17 to float
  %106 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 0
  %107 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  %108 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 1
  %109 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  %110 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 0
  %111 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 5
  %112 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 6
  %113 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %arg, i32 0, i32 7
  %114 = bitcast %struct.learner_task* %newTask to i8*
  %115 = bitcast %struct.learner_task* %1 to i8*
  %116 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 1
  %117 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 2
  %118 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 3
  %119 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  %120 = bitcast %struct.learner_task* %bestTask to i8*
  %121 = bitcast %struct.learner_task* %newTask to i8*
  %122 = bitcast %struct.learner_task* %newTask to i8*
  %123 = bitcast %struct.learner_task* %2 to i8*
  %124 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 1
  %125 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 2
  %126 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 3
  %127 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  %128 = bitcast %struct.learner_task* %bestTask to i8*
  %129 = bitcast %struct.learner_task* %newTask to i8*
  %130 = bitcast %struct.learner_task* %newTask to i8*
  %131 = bitcast %struct.learner_task* %3 to i8*
  %132 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 1
  %133 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 2
  %134 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %newTask, i32 0, i32 3
  %135 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  %136 = bitcast %struct.learner_task* %bestTask to i8*
  %137 = bitcast %struct.learner_task* %newTask to i8*
  %138 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  %139 = getelementptr inbounds %struct.learner, %struct.learner* %11, i32 0, i32 6
  %140 = bitcast %struct.learner_task* %bestTask to i8*
  br label %141

; <label>:141                                     ; preds = %580, %86
  br label %142

; <label>:142                                     ; preds = %157, %141
  %143 = phi i32 [ %155, %157 ], [ -1, %141 ]
  %144 = phi i32 [ %150, %157 ], [ 9, %141 ]
  br label %145

; <label>:145                                     ; preds = %148, %142
  %146 = call i64 (...) @RTM_fallback_isLocked()
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

; <label>:148                                     ; preds = %145
  call void @llvm.x86.sse2.pause() #5
  br label %145

; <label>:149                                     ; preds = %145
  %150 = add nsw i32 %144, -1
  %151 = icmp sle i32 %150, 0
  br i1 %151, label %152, label %153

; <label>:152                                     ; preds = %149
  %.lcssa33 = phi i32 [ %150, %149 ]
  %.lcssa31 = phi i32 [ %143, %149 ]
  call void (...) @RTM_fallback_lock()
  br label %163

; <label>:153                                     ; preds = %149
  %154 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #5, !srcloc !1
  %155 = trunc i64 %154 to i32
  %156 = icmp ne i32 %155, -1
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %153
  br label %142

; <label>:158                                     ; preds = %153
  %.lcssa35 = phi i32 [ %155, %153 ]
  %.lcssa34 = phi i32 [ %150, %153 ]
  %159 = call i64 (...) @RTM_fallback_isLocked()
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %._crit_edge

._crit_edge:                                      ; preds = %158
  br label %162

; <label>:161                                     ; preds = %158
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %162

; <label>:162                                     ; preds = %._crit_edge, %161
  br label %163

; <label>:163                                     ; preds = %162, %152
  %164 = phi i32 [ %.lcssa34, %162 ], [ %.lcssa33, %152 ]
  %165 = phi i32 [ %.lcssa35, %162 ], [ %.lcssa31, %152 ]
  %166 = call %struct.learner_task* @TMpopTask(%struct.list* %21)
  %167 = icmp sgt i32 %164, 0
  br i1 %167, label %168, label %169

; <label>:168                                     ; preds = %163
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #5, !srcloc !3
  br label %170

; <label>:169                                     ; preds = %163
  call void (...) @RTM_fallback_unlock()
  br label %170

; <label>:170                                     ; preds = %169, %168
  %171 = icmp eq %struct.learner_task* %166, null
  br i1 %171, label %172, label %173

; <label>:172                                     ; preds = %170
  %.lcssa28 = phi i32 [ %165, %170 ]
  %.lcssa = phi i32 [ %164, %170 ]
  br label %581

; <label>:173                                     ; preds = %170
  %174 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %166, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %166, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %166, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  br label %180

; <label>:180                                     ; preds = %193, %173
  %tries2.0 = phi i32 [ 9, %173 ], [ %186, %193 ]
  br label %181

; <label>:181                                     ; preds = %184, %180
  %182 = call i64 (...) @RTM_fallback_isLocked()
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

; <label>:184                                     ; preds = %181
  call void @llvm.x86.sse2.pause() #5
  br label %181

; <label>:185                                     ; preds = %181
  %186 = add nsw i32 %tries2.0, -1
  %187 = icmp sle i32 %186, 0
  br i1 %187, label %188, label %189

; <label>:188                                     ; preds = %185
  call void (...) @RTM_fallback_lock()
  br label %199

; <label>:189                                     ; preds = %185
  %190 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 0, i64 3, i64 4294967295) #5, !srcloc !1
  %191 = trunc i64 %190 to i32
  %192 = icmp ne i32 %191, -1
  br i1 %192, label %193, label %194

; <label>:193                                     ; preds = %189
  br label %180

; <label>:194                                     ; preds = %189
  %195 = call i64 (...) @RTM_fallback_isLocked()
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %._crit_edge1

._crit_edge1:                                     ; preds = %194
  br label %198

; <label>:197                                     ; preds = %194
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %198

; <label>:198                                     ; preds = %._crit_edge1, %197
  br label %199

; <label>:199                                     ; preds = %198, %188
  switch i32 %175, label %214 [
    i32 0, label %200
    i32 1, label %208
    i32 2, label %209
  ]

; <label>:200                                     ; preds = %199
  %201 = call i64 @TMnet_hasEdge(%struct.net* %13, i64 %177, i64 %179)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %._crit_edge2, label %203

._crit_edge2:                                     ; preds = %200
  br label %206

; <label>:203                                     ; preds = %200
  %204 = call i64 @TMnet_isPath(%struct.net* %13, i64 %179, i64 %177, %struct.bitmap* %27, %struct.queue* %33)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %._crit_edge3, label %._crit_edge4

._crit_edge4:                                     ; preds = %203
  br label %207

._crit_edge3:                                     ; preds = %203
  br label %206

; <label>:206                                     ; preds = %._crit_edge3, %._crit_edge2
  br label %207

; <label>:207                                     ; preds = %._crit_edge4, %206
  %isTaskValid.0 = phi i64 [ 0, %206 ], [ 1, %._crit_edge4 ]
  br label %215

; <label>:208                                     ; preds = %199
  br label %215

; <label>:209                                     ; preds = %199
  call void @TMnet_applyOperation(%struct.net* %13, i32 1, i64 %177, i64 %179)
  %210 = call i64 @TMnet_isPath(%struct.net* %13, i64 %177, i64 %179, %struct.bitmap* %27, %struct.queue* %33)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %._crit_edge5

._crit_edge5:                                     ; preds = %209
  br label %213

; <label>:212                                     ; preds = %209
  br label %213

; <label>:213                                     ; preds = %._crit_edge5, %212
  %isTaskValid.1 = phi i64 [ 0, %212 ], [ 1, %._crit_edge5 ]
  call void @TMnet_applyOperation(%struct.net* %13, i32 0, i64 %177, i64 %179)
  br label %215

; <label>:214                                     ; preds = %199
  %.lcssa29 = phi i32 [ %165, %199 ]
  %.lcssa26 = phi i32 [ %164, %199 ]
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1245, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable

; <label>:215                                     ; preds = %213, %208, %207
  %isTaskValid.2 = phi i64 [ %isTaskValid.1, %213 ], [ 1, %208 ], [ %isTaskValid.0, %207 ]
  %216 = icmp ne i64 %isTaskValid.2, 0
  br i1 %216, label %217, label %._crit_edge6

._crit_edge6:                                     ; preds = %215
  br label %218

; <label>:217                                     ; preds = %215
  call void @TMnet_applyOperation(%struct.net* %13, i32 %175, i64 %177, i64 %179)
  br label %218

; <label>:218                                     ; preds = %._crit_edge6, %217
  %219 = icmp sgt i32 %186, 0
  br i1 %219, label %220, label %221

; <label>:220                                     ; preds = %218
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 3) #5, !srcloc !3
  br label %222

; <label>:221                                     ; preds = %218
  call void (...) @RTM_fallback_unlock()
  br label %222

; <label>:222                                     ; preds = %221, %220
  %223 = icmp ne i64 %isTaskValid.2, 0
  br i1 %223, label %224, label %._crit_edge7

._crit_edge7:                                     ; preds = %222
  br label %412

; <label>:224                                     ; preds = %222
  switch i32 %175, label %410 [
    i32 0, label %225
    i32 1, label %285
    i32 2, label %345
  ]

; <label>:225                                     ; preds = %224
  br label %226

; <label>:226                                     ; preds = %239, %225
  %tries4.0 = phi i32 [ 9, %225 ], [ %232, %239 ]
  br label %227

; <label>:227                                     ; preds = %230, %226
  %228 = call i64 (...) @RTM_fallback_isLocked()
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

; <label>:230                                     ; preds = %227
  call void @llvm.x86.sse2.pause() #5
  br label %227

; <label>:231                                     ; preds = %227
  %232 = add nsw i32 %tries4.0, -1
  %233 = icmp sle i32 %232, 0
  br i1 %233, label %234, label %235

; <label>:234                                     ; preds = %231
  call void (...) @RTM_fallback_lock()
  br label %245

; <label>:235                                     ; preds = %231
  %236 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 4, i64 0, i64 4, i64 4294967295) #5, !srcloc !1
  %237 = trunc i64 %236 to i32
  %238 = icmp ne i32 %237, -1
  br i1 %238, label %239, label %240

; <label>:239                                     ; preds = %235
  br label %226

; <label>:240                                     ; preds = %235
  %241 = call i64 (...) @RTM_fallback_isLocked()
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %._crit_edge8

._crit_edge8:                                     ; preds = %240
  br label %244

; <label>:243                                     ; preds = %240
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %244

; <label>:244                                     ; preds = %._crit_edge8, %243
  br label %245

; <label>:245                                     ; preds = %244, %234
  call void @TMpopulateQueryVectors(%struct.net* %13, i64 %179, %struct.query* %43, %struct.vector* %63, %struct.vector* %69)
  %246 = call float @computeLocalLogLikelihood(i64 %179, %struct.adtree* %15, %struct.net* %13, %struct.query* %43, %struct.vector* %63, %struct.vector* %69)
  %247 = getelementptr inbounds float, float* %19, i64 %179
  %248 = load float, float* %247, align 4
  %249 = fsub float %248, %246
  %250 = fadd float 0.000000e+00, %249
  %251 = getelementptr inbounds float, float* %19, i64 %179
  store float %246, float* %251, align 4
  %252 = getelementptr inbounds float, float* %19, i64 %179
  %253 = load float, float* %252, align 4
  %254 = icmp sgt i32 %232, 0
  br i1 %254, label %255, label %256

; <label>:255                                     ; preds = %245
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 4) #5, !srcloc !3
  br label %257

; <label>:256                                     ; preds = %245
  call void (...) @RTM_fallback_unlock()
  br label %257

; <label>:257                                     ; preds = %256, %255
  br label %258

; <label>:258                                     ; preds = %271, %257
  %tries6.0 = phi i32 [ 9, %257 ], [ %264, %271 ]
  br label %259

; <label>:259                                     ; preds = %262, %258
  %260 = call i64 (...) @RTM_fallback_isLocked()
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

; <label>:262                                     ; preds = %259
  call void @llvm.x86.sse2.pause() #5
  br label %259

; <label>:263                                     ; preds = %259
  %264 = add nsw i32 %tries6.0, -1
  %265 = icmp sle i32 %264, 0
  br i1 %265, label %266, label %267

; <label>:266                                     ; preds = %263
  call void (...) @RTM_fallback_lock()
  br label %277

; <label>:267                                     ; preds = %263
  %268 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 5, i64 0, i64 5, i64 4294967295) #5, !srcloc !1
  %269 = trunc i64 %268 to i32
  %270 = icmp ne i32 %269, -1
  br i1 %270, label %271, label %272

; <label>:271                                     ; preds = %267
  br label %258

; <label>:272                                     ; preds = %267
  %273 = call i64 (...) @RTM_fallback_isLocked()
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %._crit_edge9

._crit_edge9:                                     ; preds = %272
  br label %276

; <label>:275                                     ; preds = %272
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %276

; <label>:276                                     ; preds = %._crit_edge9, %275
  br label %277

; <label>:277                                     ; preds = %276, %266
  %278 = load i64, i64* %95, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %96, align 8
  %280 = load i64, i64* %97, align 8
  %281 = icmp sgt i32 %264, 0
  br i1 %281, label %282, label %283

; <label>:282                                     ; preds = %277
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 5) #5, !srcloc !3
  br label %284

; <label>:283                                     ; preds = %277
  call void (...) @RTM_fallback_unlock()
  br label %284

; <label>:284                                     ; preds = %283, %282
  br label %411

; <label>:285                                     ; preds = %224
  br label %286

; <label>:286                                     ; preds = %299, %285
  %tries8.0 = phi i32 [ 9, %285 ], [ %292, %299 ]
  br label %287

; <label>:287                                     ; preds = %290, %286
  %288 = call i64 (...) @RTM_fallback_isLocked()
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

; <label>:290                                     ; preds = %287
  call void @llvm.x86.sse2.pause() #5
  br label %287

; <label>:291                                     ; preds = %287
  %292 = add nsw i32 %tries8.0, -1
  %293 = icmp sle i32 %292, 0
  br i1 %293, label %294, label %295

; <label>:294                                     ; preds = %291
  call void (...) @RTM_fallback_lock()
  br label %305

; <label>:295                                     ; preds = %291
  %296 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 6, i64 0, i64 6, i64 4294967295) #5, !srcloc !1
  %297 = trunc i64 %296 to i32
  %298 = icmp ne i32 %297, -1
  br i1 %298, label %299, label %300

; <label>:299                                     ; preds = %295
  br label %286

; <label>:300                                     ; preds = %295
  %301 = call i64 (...) @RTM_fallback_isLocked()
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %._crit_edge10

._crit_edge10:                                    ; preds = %300
  br label %304

; <label>:303                                     ; preds = %300
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %304

; <label>:304                                     ; preds = %._crit_edge10, %303
  br label %305

; <label>:305                                     ; preds = %304, %294
  call void @TMpopulateQueryVectors(%struct.net* %13, i64 %177, %struct.query* %43, %struct.vector* %63, %struct.vector* %69)
  %306 = call float @computeLocalLogLikelihood(i64 %177, %struct.adtree* %15, %struct.net* %13, %struct.query* %43, %struct.vector* %63, %struct.vector* %69)
  %307 = getelementptr inbounds float, float* %19, i64 %177
  %308 = load float, float* %307, align 4
  %309 = fsub float %308, %306
  %310 = fadd float 0.000000e+00, %309
  %311 = getelementptr inbounds float, float* %19, i64 %177
  store float %306, float* %311, align 4
  %312 = getelementptr inbounds float, float* %19, i64 %177
  %313 = load float, float* %312, align 4
  %314 = icmp sgt i32 %292, 0
  br i1 %314, label %315, label %316

; <label>:315                                     ; preds = %305
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 6) #5, !srcloc !3
  br label %317

; <label>:316                                     ; preds = %305
  call void (...) @RTM_fallback_unlock()
  br label %317

; <label>:317                                     ; preds = %316, %315
  br label %318

; <label>:318                                     ; preds = %331, %317
  %tries10.0 = phi i32 [ 9, %317 ], [ %324, %331 ]
  br label %319

; <label>:319                                     ; preds = %322, %318
  %320 = call i64 (...) @RTM_fallback_isLocked()
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %323

; <label>:322                                     ; preds = %319
  call void @llvm.x86.sse2.pause() #5
  br label %319

; <label>:323                                     ; preds = %319
  %324 = add nsw i32 %tries10.0, -1
  %325 = icmp sle i32 %324, 0
  br i1 %325, label %326, label %327

; <label>:326                                     ; preds = %323
  call void (...) @RTM_fallback_lock()
  br label %337

; <label>:327                                     ; preds = %323
  %328 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 7, i64 0, i64 7, i64 4294967295) #5, !srcloc !1
  %329 = trunc i64 %328 to i32
  %330 = icmp ne i32 %329, -1
  br i1 %330, label %331, label %332

; <label>:331                                     ; preds = %327
  br label %318

; <label>:332                                     ; preds = %327
  %333 = call i64 (...) @RTM_fallback_isLocked()
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %._crit_edge11

._crit_edge11:                                    ; preds = %332
  br label %336

; <label>:335                                     ; preds = %332
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %336

; <label>:336                                     ; preds = %._crit_edge11, %335
  br label %337

; <label>:337                                     ; preds = %336, %326
  %338 = load i64, i64* %98, align 8
  %339 = sub nsw i64 %338, 1
  store i64 %339, i64* %99, align 8
  %340 = load i64, i64* %100, align 8
  %341 = icmp sgt i32 %324, 0
  br i1 %341, label %342, label %343

; <label>:342                                     ; preds = %337
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 7) #5, !srcloc !3
  br label %344

; <label>:343                                     ; preds = %337
  call void (...) @RTM_fallback_unlock()
  br label %344

; <label>:344                                     ; preds = %343, %342
  br label %411

; <label>:345                                     ; preds = %224
  br label %346

; <label>:346                                     ; preds = %359, %345
  %tries13.0 = phi i32 [ 9, %345 ], [ %352, %359 ]
  br label %347

; <label>:347                                     ; preds = %350, %346
  %348 = call i64 (...) @RTM_fallback_isLocked()
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %351

; <label>:350                                     ; preds = %347
  call void @llvm.x86.sse2.pause() #5
  br label %347

; <label>:351                                     ; preds = %347
  %352 = add nsw i32 %tries13.0, -1
  %353 = icmp sle i32 %352, 0
  br i1 %353, label %354, label %355

; <label>:354                                     ; preds = %351
  call void (...) @RTM_fallback_lock()
  br label %365

; <label>:355                                     ; preds = %351
  %356 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 8, i64 0, i64 8, i64 4294967295) #5, !srcloc !1
  %357 = trunc i64 %356 to i32
  %358 = icmp ne i32 %357, -1
  br i1 %358, label %359, label %360

; <label>:359                                     ; preds = %355
  br label %346

; <label>:360                                     ; preds = %355
  %361 = call i64 (...) @RTM_fallback_isLocked()
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %._crit_edge12

._crit_edge12:                                    ; preds = %360
  br label %364

; <label>:363                                     ; preds = %360
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %364

; <label>:364                                     ; preds = %._crit_edge12, %363
  br label %365

; <label>:365                                     ; preds = %364, %354
  call void @TMpopulateQueryVectors(%struct.net* %13, i64 %177, %struct.query* %43, %struct.vector* %63, %struct.vector* %69)
  %366 = call float @computeLocalLogLikelihood(i64 %177, %struct.adtree* %15, %struct.net* %13, %struct.query* %43, %struct.vector* %63, %struct.vector* %69)
  %367 = getelementptr inbounds float, float* %19, i64 %177
  %368 = load float, float* %367, align 4
  %369 = fsub float %368, %366
  %370 = fadd float 0.000000e+00, %369
  %371 = getelementptr inbounds float, float* %19, i64 %177
  store float %366, float* %371, align 4
  %372 = getelementptr inbounds float, float* %19, i64 %177
  %373 = load float, float* %372, align 4
  %374 = icmp sgt i32 %352, 0
  br i1 %374, label %375, label %376

; <label>:375                                     ; preds = %365
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 8) #5, !srcloc !3
  br label %377

; <label>:376                                     ; preds = %365
  call void (...) @RTM_fallback_unlock()
  br label %377

; <label>:377                                     ; preds = %376, %375
  br label %378

; <label>:378                                     ; preds = %391, %377
  %tries16.0 = phi i32 [ 9, %377 ], [ %384, %391 ]
  br label %379

; <label>:379                                     ; preds = %382, %378
  %380 = call i64 (...) @RTM_fallback_isLocked()
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %383

; <label>:382                                     ; preds = %379
  call void @llvm.x86.sse2.pause() #5
  br label %379

; <label>:383                                     ; preds = %379
  %384 = add nsw i32 %tries16.0, -1
  %385 = icmp sle i32 %384, 0
  br i1 %385, label %386, label %387

; <label>:386                                     ; preds = %383
  call void (...) @RTM_fallback_lock()
  br label %397

; <label>:387                                     ; preds = %383
  %388 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 9, i64 0, i64 9, i64 4294967295) #5, !srcloc !1
  %389 = trunc i64 %388 to i32
  %390 = icmp ne i32 %389, -1
  br i1 %390, label %391, label %392

; <label>:391                                     ; preds = %387
  br label %378

; <label>:392                                     ; preds = %387
  %393 = call i64 (...) @RTM_fallback_isLocked()
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %._crit_edge13

._crit_edge13:                                    ; preds = %392
  br label %396

; <label>:395                                     ; preds = %392
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %396

; <label>:396                                     ; preds = %._crit_edge13, %395
  br label %397

; <label>:397                                     ; preds = %396, %386
  call void @TMpopulateQueryVectors(%struct.net* %13, i64 %179, %struct.query* %43, %struct.vector* %63, %struct.vector* %69)
  %398 = call float @computeLocalLogLikelihood(i64 %179, %struct.adtree* %15, %struct.net* %13, %struct.query* %43, %struct.vector* %63, %struct.vector* %69)
  %399 = getelementptr inbounds float, float* %19, i64 %179
  %400 = load float, float* %399, align 4
  %401 = fsub float %400, %398
  %402 = fadd float %370, %401
  %403 = getelementptr inbounds float, float* %19, i64 %179
  store float %398, float* %403, align 4
  %404 = getelementptr inbounds float, float* %19, i64 %179
  %405 = load float, float* %404, align 4
  %406 = icmp sgt i32 %384, 0
  br i1 %406, label %407, label %408

; <label>:407                                     ; preds = %397
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 9) #5, !srcloc !3
  br label %409

; <label>:408                                     ; preds = %397
  call void (...) @RTM_fallback_unlock()
  br label %409

; <label>:409                                     ; preds = %408, %407
  br label %411

; <label>:410                                     ; preds = %224
  %.lcssa30 = phi i32 [ %165, %224 ]
  %.lcssa27 = phi i32 [ %164, %224 ]
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1378, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i32 0, i32 0)) #7
  unreachable

; <label>:411                                     ; preds = %409, %344, %284
  %deltaLogLikelihood.0 = phi float [ %402, %409 ], [ %310, %344 ], [ %250, %284 ]
  br label %412

; <label>:412                                     ; preds = %._crit_edge7, %411
  %deltaLogLikelihood.1 = phi float [ %deltaLogLikelihood.0, %411 ], [ 0.000000e+00, %._crit_edge7 ]
  br label %413

; <label>:413                                     ; preds = %426, %412
  %tries20.0 = phi i32 [ 9, %412 ], [ %419, %426 ]
  br label %414

; <label>:414                                     ; preds = %417, %413
  %415 = call i64 (...) @RTM_fallback_isLocked()
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %418

; <label>:417                                     ; preds = %414
  call void @llvm.x86.sse2.pause() #5
  br label %414

; <label>:418                                     ; preds = %414
  %419 = add nsw i32 %tries20.0, -1
  %420 = icmp sle i32 %419, 0
  br i1 %420, label %421, label %422

; <label>:421                                     ; preds = %418
  call void (...) @RTM_fallback_lock()
  br label %432

; <label>:422                                     ; preds = %418
  %423 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 10, i64 0, i64 10, i64 4294967295) #5, !srcloc !1
  %424 = trunc i64 %423 to i32
  %425 = icmp ne i32 %424, -1
  br i1 %425, label %426, label %427

; <label>:426                                     ; preds = %422
  br label %413

; <label>:427                                     ; preds = %422
  %428 = call i64 (...) @RTM_fallback_isLocked()
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %._crit_edge14

._crit_edge14:                                    ; preds = %427
  br label %431

; <label>:430                                     ; preds = %427
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %431

; <label>:431                                     ; preds = %._crit_edge14, %430
  br label %432

; <label>:432                                     ; preds = %431, %421
  %433 = load float, float* %101, align 8
  %434 = fadd float %433, %deltaLogLikelihood.1
  store float %434, float* %102, align 8
  %435 = load float, float* %103, align 8
  %436 = load i64, i64* %104, align 8
  %437 = icmp sgt i32 %419, 0
  br i1 %437, label %438, label %439

; <label>:438                                     ; preds = %432
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 10) #5, !srcloc !3
  br label %440

; <label>:439                                     ; preds = %432
  call void (...) @RTM_fallback_unlock()
  br label %440

; <label>:440                                     ; preds = %439, %438
  %441 = sitofp i64 %436 to float
  %442 = fmul float %441, %62
  %443 = fmul float %105, %434
  %444 = fadd float %442, %443
  store i32 3, i32* %106, align 8
  store i64 -1, i64* %107, align 8
  store i64 -1, i64* %108, align 8
  store float %444, float* %109, align 8
  store i64 %179, i64* %110, align 8
  store i64 %436, i64* %111, align 8
  store float %62, float* %112, align 8
  store float %434, float* %113, align 4
  br label %445

; <label>:445                                     ; preds = %458, %440
  %tries23.0 = phi i32 [ 9, %440 ], [ %451, %458 ]
  br label %446

; <label>:446                                     ; preds = %449, %445
  %447 = call i64 (...) @RTM_fallback_isLocked()
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %450

; <label>:449                                     ; preds = %446
  call void @llvm.x86.sse2.pause() #5
  br label %446

; <label>:450                                     ; preds = %446
  %451 = add nsw i32 %tries23.0, -1
  %452 = icmp sle i32 %451, 0
  br i1 %452, label %453, label %454

; <label>:453                                     ; preds = %450
  call void (...) @RTM_fallback_lock()
  br label %464

; <label>:454                                     ; preds = %450
  %455 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 11, i64 0, i64 11, i64 4294967295) #5, !srcloc !1
  %456 = trunc i64 %455 to i32
  %457 = icmp ne i32 %456, -1
  br i1 %457, label %458, label %459

; <label>:458                                     ; preds = %454
  br label %445

; <label>:459                                     ; preds = %454
  %460 = call i64 (...) @RTM_fallback_isLocked()
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %._crit_edge15

._crit_edge15:                                    ; preds = %459
  br label %463

; <label>:462                                     ; preds = %459
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %463

; <label>:463                                     ; preds = %._crit_edge15, %462
  br label %464

; <label>:464                                     ; preds = %463, %453
  call void @TMfindBestInsertTask(%struct.learner_task* sret %1, %struct.findBestTaskArg* %arg)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 32, i32 8, i1 false)
  %465 = icmp sgt i32 %451, 0
  br i1 %465, label %466, label %467

; <label>:466                                     ; preds = %464
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 11) #5, !srcloc !3
  br label %468

; <label>:467                                     ; preds = %464
  call void (...) @RTM_fallback_unlock()
  br label %468

; <label>:468                                     ; preds = %467, %466
  %469 = load i64, i64* %116, align 8
  %470 = load i64, i64* %117, align 8
  %471 = icmp ne i64 %469, %470
  br i1 %471, label %472, label %._crit_edge16

._crit_edge16:                                    ; preds = %468
  br label %478

; <label>:472                                     ; preds = %468
  %473 = load float, float* %118, align 8
  %474 = load float, float* %119, align 8
  %475 = fdiv float %474, %22
  %476 = fcmp ogt float %473, %475
  br i1 %476, label %477, label %._crit_edge17

._crit_edge17:                                    ; preds = %472
  br label %478

; <label>:477                                     ; preds = %472
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 32, i32 8, i1 false)
  br label %478

; <label>:478                                     ; preds = %._crit_edge17, %._crit_edge16, %477
  br label %479

; <label>:479                                     ; preds = %492, %478
  %tries25.0 = phi i32 [ 9, %478 ], [ %485, %492 ]
  br label %480

; <label>:480                                     ; preds = %483, %479
  %481 = call i64 (...) @RTM_fallback_isLocked()
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %484

; <label>:483                                     ; preds = %480
  call void @llvm.x86.sse2.pause() #5
  br label %480

; <label>:484                                     ; preds = %480
  %485 = add nsw i32 %tries25.0, -1
  %486 = icmp sle i32 %485, 0
  br i1 %486, label %487, label %488

; <label>:487                                     ; preds = %484
  call void (...) @RTM_fallback_lock()
  br label %498

; <label>:488                                     ; preds = %484
  %489 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 12, i64 0, i64 12, i64 4294967295) #5, !srcloc !1
  %490 = trunc i64 %489 to i32
  %491 = icmp ne i32 %490, -1
  br i1 %491, label %492, label %493

; <label>:492                                     ; preds = %488
  br label %479

; <label>:493                                     ; preds = %488
  %494 = call i64 (...) @RTM_fallback_isLocked()
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %._crit_edge18

._crit_edge18:                                    ; preds = %493
  br label %497

; <label>:496                                     ; preds = %493
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %497

; <label>:497                                     ; preds = %._crit_edge18, %496
  br label %498

; <label>:498                                     ; preds = %497, %487
  call void @TMfindBestRemoveTask(%struct.learner_task* sret %2, %struct.findBestTaskArg* %arg)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 32, i32 8, i1 false)
  %499 = icmp sgt i32 %485, 0
  br i1 %499, label %500, label %501

; <label>:500                                     ; preds = %498
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 12) #5, !srcloc !3
  br label %502

; <label>:501                                     ; preds = %498
  call void (...) @RTM_fallback_unlock()
  br label %502

; <label>:502                                     ; preds = %501, %500
  %503 = load i64, i64* %124, align 8
  %504 = load i64, i64* %125, align 8
  %505 = icmp ne i64 %503, %504
  br i1 %505, label %506, label %._crit_edge19

._crit_edge19:                                    ; preds = %502
  br label %512

; <label>:506                                     ; preds = %502
  %507 = load float, float* %126, align 8
  %508 = load float, float* %127, align 8
  %509 = fdiv float %508, %22
  %510 = fcmp ogt float %507, %509
  br i1 %510, label %511, label %._crit_edge20

._crit_edge20:                                    ; preds = %506
  br label %512

; <label>:511                                     ; preds = %506
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %129, i64 32, i32 8, i1 false)
  br label %512

; <label>:512                                     ; preds = %._crit_edge20, %._crit_edge19, %511
  br label %513

; <label>:513                                     ; preds = %526, %512
  %tries27.0 = phi i32 [ 9, %512 ], [ %519, %526 ]
  br label %514

; <label>:514                                     ; preds = %517, %513
  %515 = call i64 (...) @RTM_fallback_isLocked()
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %518

; <label>:517                                     ; preds = %514
  call void @llvm.x86.sse2.pause() #5
  br label %514

; <label>:518                                     ; preds = %514
  %519 = add nsw i32 %tries27.0, -1
  %520 = icmp sle i32 %519, 0
  br i1 %520, label %521, label %522

; <label>:521                                     ; preds = %518
  call void (...) @RTM_fallback_lock()
  br label %532

; <label>:522                                     ; preds = %518
  %523 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 13, i64 0, i64 13, i64 4294967295) #5, !srcloc !1
  %524 = trunc i64 %523 to i32
  %525 = icmp ne i32 %524, -1
  br i1 %525, label %526, label %527

; <label>:526                                     ; preds = %522
  br label %513

; <label>:527                                     ; preds = %522
  %528 = call i64 (...) @RTM_fallback_isLocked()
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %._crit_edge21

._crit_edge21:                                    ; preds = %527
  br label %531

; <label>:530                                     ; preds = %527
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %531

; <label>:531                                     ; preds = %._crit_edge21, %530
  br label %532

; <label>:532                                     ; preds = %531, %521
  call void @TMfindBestReverseTask(%struct.learner_task* sret %3, %struct.findBestTaskArg* %arg)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %131, i64 32, i32 8, i1 false)
  %533 = icmp sgt i32 %519, 0
  br i1 %533, label %534, label %535

; <label>:534                                     ; preds = %532
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 13) #5, !srcloc !3
  br label %536

; <label>:535                                     ; preds = %532
  call void (...) @RTM_fallback_unlock()
  br label %536

; <label>:536                                     ; preds = %535, %534
  %537 = load i64, i64* %132, align 8
  %538 = load i64, i64* %133, align 8
  %539 = icmp ne i64 %537, %538
  br i1 %539, label %540, label %._crit_edge22

._crit_edge22:                                    ; preds = %536
  br label %546

; <label>:540                                     ; preds = %536
  %541 = load float, float* %134, align 8
  %542 = load float, float* %135, align 8
  %543 = fdiv float %542, %22
  %544 = fcmp ogt float %541, %543
  br i1 %544, label %545, label %._crit_edge23

._crit_edge23:                                    ; preds = %540
  br label %546

; <label>:545                                     ; preds = %540
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %136, i8* %137, i64 32, i32 8, i1 false)
  br label %546

; <label>:546                                     ; preds = %._crit_edge23, %._crit_edge22, %545
  %547 = load i64, i64* %138, align 8
  %548 = icmp ne i64 %547, -1
  br i1 %548, label %549, label %._crit_edge24

._crit_edge24:                                    ; preds = %546
  br label %580

; <label>:549                                     ; preds = %546
  %550 = load %struct.learner_task*, %struct.learner_task** %139, align 8
  %551 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %550, i64 %179
  %552 = bitcast %struct.learner_task* %551 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %552, i8* %140, i64 32, i32 8, i1 false)
  br label %553

; <label>:553                                     ; preds = %566, %549
  %tries29.0 = phi i32 [ 9, %549 ], [ %559, %566 ]
  br label %554

; <label>:554                                     ; preds = %557, %553
  %555 = call i64 (...) @RTM_fallback_isLocked()
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %558

; <label>:557                                     ; preds = %554
  call void @llvm.x86.sse2.pause() #5
  br label %554

; <label>:558                                     ; preds = %554
  %559 = add nsw i32 %tries29.0, -1
  %560 = icmp sle i32 %559, 0
  br i1 %560, label %561, label %562

; <label>:561                                     ; preds = %558
  call void (...) @RTM_fallback_lock()
  br label %572

; <label>:562                                     ; preds = %558
  %563 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 14, i64 0, i64 14, i64 4294967295) #5, !srcloc !1
  %564 = trunc i64 %563 to i32
  %565 = icmp ne i32 %564, -1
  br i1 %565, label %566, label %567

; <label>:566                                     ; preds = %562
  br label %553

; <label>:567                                     ; preds = %562
  %568 = call i64 (...) @RTM_fallback_isLocked()
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %570, label %._crit_edge25

._crit_edge25:                                    ; preds = %567
  br label %571

; <label>:570                                     ; preds = %567
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #5, !srcloc !2
  br label %571

; <label>:571                                     ; preds = %._crit_edge25, %570
  br label %572

; <label>:572                                     ; preds = %571, %561
  %573 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %550, i64 %179
  %574 = bitcast %struct.learner_task* %573 to i8*
  %575 = call i64 @TMlist_insert(%struct.list* %21, i8* %574)
  %576 = icmp sgt i32 %559, 0
  br i1 %576, label %577, label %578

; <label>:577                                     ; preds = %572
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 14) #5, !srcloc !3
  br label %579

; <label>:578                                     ; preds = %572
  call void (...) @RTM_fallback_unlock()
  br label %579

; <label>:579                                     ; preds = %578, %577
  br label %580

; <label>:580                                     ; preds = %._crit_edge24, %579
  br label %141

; <label>:581                                     ; preds = %172
  call void @Pbitmap_free(%struct.bitmap* %27)
  call void @Pqueue_free(%struct.queue* %33)
  call void @Pvector_free(%struct.vector* %81)
  call void @Pvector_free(%struct.vector* %75)
  call void @Pvector_free(%struct.vector* %63)
  call void @Pvector_free(%struct.vector* %69)
  %582 = bitcast %struct.query* %43 to i8*
  call void @free(i8* %582) #5
  br label %583

; <label>:583                                     ; preds = %581
  %584 = call i64 (...) @thread_getId()
  %585 = trunc i64 %584 to i32
  %586 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %6, i32 0, i32 4
  %587 = load i32, i32* %586, align 4
  call void @SimRoiEnd(i32 %585, i32 %587)
  br label %588

; <label>:588                                     ; preds = %583
  ret void
}

; Function Attrs: nounwind uwtable
define float @learner_score(%struct.learner* %learnerPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i32 0, i32 0
  %2 = load %struct.adtree*, %struct.adtree** %1, align 8
  %3 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i32 0, i32 1
  %4 = load %struct.net*, %struct.net** %3, align 8
  %5 = call %struct.vector* @vector_alloc(i64 1)
  %6 = icmp ne %struct.vector* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %10

; <label>:8                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1516, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.learner_score, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10                                      ; preds = %9, %7
  %11 = call %struct.vector* @vector_alloc(i64 1)
  %12 = icmp ne %struct.vector* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  br label %16

; <label>:14                                      ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1518, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.learner_score, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = getelementptr inbounds %struct.adtree, %struct.adtree* %2, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = mul i64 %18, 16
  %20 = call noalias i8* @malloc(i64 %19) #5
  %21 = bitcast i8* %20 to %struct.query*
  %22 = icmp ne %struct.query* %21, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %16
  br label %26

; <label>:24                                      ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1522, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.learner_score, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %26

; <label>:26                                      ; preds = %25, %23
  br label %27

; <label>:27                                      ; preds = %34, %26
  %v.0 = phi i64 [ 0, %26 ], [ %35, %34 ]
  %28 = icmp slt i64 %v.0, %18
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %27
  %30 = getelementptr inbounds %struct.query, %struct.query* %21, i64 %v.0
  %31 = getelementptr inbounds %struct.query, %struct.query* %30, i32 0, i32 0
  store i64 %v.0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.query, %struct.query* %21, i64 %v.0
  %33 = getelementptr inbounds %struct.query, %struct.query* %32, i32 0, i32 1
  store i64 -1, i64* %33, align 8
  br label %34

; <label>:34                                      ; preds = %29
  %35 = add nsw i64 %v.0, 1
  br label %27

; <label>:36                                      ; preds = %27
  br label %37

; <label>:37                                      ; preds = %45, %36
  %v.1 = phi i64 [ 0, %36 ], [ %46, %45 ]
  %numTotalParent.0 = phi i64 [ 0, %36 ], [ %42, %45 ]
  %logLikelihood.0 = phi float [ 0.000000e+00, %36 ], [ %44, %45 ]
  %38 = icmp slt i64 %v.1, %18
  br i1 %38, label %39, label %47

; <label>:39                                      ; preds = %37
  %40 = call %struct.list* @net_getParentIdListPtr(%struct.net* %4, i64 %v.1)
  %41 = call i64 @list_getSize(%struct.list* %40)
  %42 = add nsw i64 %numTotalParent.0, %41
  call void @populateQueryVectors(%struct.net* %4, i64 %v.1, %struct.query* %21, %struct.vector* %5, %struct.vector* %11)
  %43 = call float @computeLocalLogLikelihood(i64 %v.1, %struct.adtree* %2, %struct.net* %4, %struct.query* %21, %struct.vector* %5, %struct.vector* %11)
  %44 = fadd float %logLikelihood.0, %43
  br label %45

; <label>:45                                      ; preds = %39
  %46 = add nsw i64 %v.1, 1
  br label %37

; <label>:47                                      ; preds = %37
  call void @vector_free(%struct.vector* %5)
  call void @vector_free(%struct.vector* %11)
  %48 = bitcast %struct.query* %21 to i8*
  call void @free(i8* %48) #5
  %49 = getelementptr inbounds %struct.adtree, %struct.adtree* %2, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %numTotalParent.0 to double
  %52 = fmul double -5.000000e-01, %51
  %53 = sitofp i64 %50 to double
  %54 = call double @log(double %53) #5
  %55 = fmul double %52, %54
  %56 = fptrunc double %55 to float
  %57 = sitofp i64 %50 to float
  %58 = fmul float %57, %logLikelihood.0
  %59 = fadd float %56, %58
  ret float %59
}

declare %struct.vector* @vector_alloc(i64) #2

declare %struct.list* @net_getParentIdListPtr(%struct.net*, i64) #2

declare i64 @list_getSize(%struct.list*) #2

; Function Attrs: nounwind uwtable
define internal void @populateQueryVectors(%struct.net* %netPtr, i64 %id, %struct.query* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  call void @populateParentQueryVector(%struct.net* %netPtr, i64 %id, %struct.query* %queries, %struct.vector* %parentQueryVectorPtr)
  %1 = call i64 @vector_copy(%struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 595, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.populateQueryVectors, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %6

; <label>:6                                       ; preds = %5, %3
  %7 = getelementptr inbounds %struct.query, %struct.query* %queries, i64 %id
  %8 = bitcast %struct.query* %7 to i8*
  %9 = call i64 @vector_pushBack(%struct.vector* %queryVectorPtr, i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %6
  br label %14

; <label>:12                                      ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 597, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.populateQueryVectors, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  call void @vector_sort(%struct.vector* %queryVectorPtr, i32 (i8*, i8*)* @compareQuery)
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @computeLocalLogLikelihood(i64 %id, %struct.adtree* %adtreePtr, %struct.net* %netPtr, %struct.query* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @vector_getSize(%struct.vector* %parentQueryVectorPtr)
  %2 = getelementptr inbounds %struct.query, %struct.query* %queries, i64 %id
  %3 = getelementptr inbounds %struct.query, %struct.query* %2, i32 0, i32 1
  store i64 0, i64* %3, align 8
  %4 = call float @computeLocalLogLikelihoodHelper(i64 0, i64 %1, %struct.adtree* %adtreePtr, %struct.query* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  %5 = fadd float 0.000000e+00, %4
  %6 = getelementptr inbounds %struct.query, %struct.query* %queries, i64 %id
  %7 = getelementptr inbounds %struct.query, %struct.query* %6, i32 0, i32 1
  store i64 1, i64* %7, align 8
  %8 = call float @computeLocalLogLikelihoodHelper(i64 0, i64 %1, %struct.adtree* %adtreePtr, %struct.query* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  %9 = fadd float %5, %8
  %10 = getelementptr inbounds %struct.query, %struct.query* %queries, i64 %id
  %11 = getelementptr inbounds %struct.query, %struct.query* %10, i32 0, i32 1
  store i64 -1, i64* %11, align 8
  ret float %9
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
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = sub nsw i64 %max, %min
  %2 = sdiv i64 %n, 2
  %3 = add nsw i64 %1, %2
  %4 = sdiv i64 %3, %n
  %5 = sext i32 1 to i64
  %6 = icmp sgt i64 %5, %4
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %0
  %8 = sext i32 1 to i64
  br label %10

; <label>:9                                       ; preds = %0
  br label %10

; <label>:10                                      ; preds = %9, %7
  %.reg2mem9.0 = phi i64 [ %8, %7 ], [ %4, %9 ]
  %11 = mul nsw i64 %.reg2mem9.0, %id
  %12 = add nsw i64 %min, %11
  %13 = sub nsw i64 %n, 1
  %14 = icmp eq i64 %id, %13
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %10
  br label %22

; <label>:16                                      ; preds = %10
  %17 = add nsw i64 %12, %.reg2mem9.0
  %18 = icmp slt i64 %max, %17
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %16
  br label %21

; <label>:20                                      ; preds = %16
  br label %21

; <label>:21                                      ; preds = %20, %19
  %.reg2mem7.0 = phi i64 [ %max, %19 ], [ %17, %20 ]
  br label %22

; <label>:22                                      ; preds = %21, %15
  %stop.0 = phi i64 [ %max, %15 ], [ %.reg2mem7.0, %21 ]
  store i64 %12, i64* %startPtr, align 8
  store i64 %stop.0, i64* %stopPtr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @computeSpecificLocalLogLikelihood(%struct.adtree* %adtreePtr, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = call i64 @adtree_getCount(%struct.adtree* %adtreePtr, %struct.vector* %queryVectorPtr)
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %27

; <label>:4                                       ; preds = %0
  %5 = sitofp i64 %1 to double
  %6 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = sitofp i64 %7 to double
  %9 = fdiv double %5, %8
  %10 = call i64 @adtree_getCount(%struct.adtree* %adtreePtr, %struct.vector* %parentQueryVectorPtr)
  %11 = icmp sge i64 %10, %1
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %4
  br label %15

; <label>:13                                      ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 287, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = icmp sgt i64 %10, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %15
  br label %20

; <label>:18                                      ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 288, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = sitofp i64 %1 to double
  %22 = sitofp i64 %10 to double
  %23 = fdiv double %21, %22
  %24 = call double @log(double %23) #5
  %25 = fmul double %9, %24
  %26 = fptrunc double %25 to float
  br label %27

; <label>:27                                      ; preds = %20, %3
  %.0 = phi float [ 0.000000e+00, %3 ], [ %26, %20 ]
  ret float %.0
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
  %"reg2mem alloca point" = bitcast i32 0 to i32
  call void @TMpopulateParentQueryVector(%struct.net* %netPtr, i64 %id, %struct.query* %queries, %struct.vector* %parentQueryVectorPtr)
  %1 = call i64 @Pvector_copy(%struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 619, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TMpopulateQueryVectors, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %6

; <label>:6                                       ; preds = %5, %3
  %7 = getelementptr inbounds %struct.query, %struct.query* %queries, i64 %id
  %8 = bitcast %struct.query* %7 to i8*
  %9 = call i64 @Pvector_pushBack(%struct.vector* %queryVectorPtr, i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %6
  br label %14

; <label>:12                                      ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 621, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TMpopulateQueryVectors, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %14

; <label>:14                                      ; preds = %13, %11
  call void @vector_sort(%struct.vector* %queryVectorPtr, i32 (i8*, i8*)* @compareQuery)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMfindBestInsertTask(%struct.learner_task* noalias sret %agg.result, %struct.findBestTaskArg* %argPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %bestTask = alloca %struct.learner_task, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 1
  %4 = load %struct.learner*, %struct.learner** %3, align 8
  %5 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 2
  %6 = load %struct.query*, %struct.query** %5, align 8
  %7 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 3
  %8 = load %struct.vector*, %struct.vector** %7, align 8
  %9 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 4
  %10 = load %struct.vector*, %struct.vector** %9, align 8
  %11 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 6
  %14 = load float, float* %13, align 8
  %15 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 7
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 8
  %18 = load %struct.bitmap*, %struct.bitmap** %17, align 8
  %19 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 9
  %20 = load %struct.queue*, %struct.queue** %19, align 8
  %21 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 10
  %22 = load %struct.vector*, %struct.vector** %21, align 8
  %23 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 11
  %24 = load %struct.vector*, %struct.vector** %23, align 8
  %25 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 0
  %26 = load %struct.adtree*, %struct.adtree** %25, align 8
  %27 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 1
  %28 = load %struct.net*, %struct.net** %27, align 8
  %29 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 2
  %30 = load float*, float** %29, align 8
  call void @TMpopulateParentQueryVector(%struct.net* %28, i64 %2, %struct.query* %6, %struct.vector* %10)
  %31 = call i64 @Pvector_copy(%struct.vector* %22, %struct.vector* %10)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %0
  br label %36

; <label>:34                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 742, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = call i64 @Pvector_copy(%struct.vector* %24, %struct.vector* %22)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %36
  br label %42

; <label>:40                                      ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 745, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %42

; <label>:42                                      ; preds = %41, %39
  %43 = getelementptr inbounds %struct.query, %struct.query* %6, i64 %2
  %44 = bitcast %struct.query* %43 to i8*
  %45 = call i64 @Pvector_pushBack(%struct.vector* %24, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %42
  br label %50

; <label>:48                                      ; preds = %42
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 747, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %50

; <label>:50                                      ; preds = %49, %47
  call void @vector_sort(%struct.vector* %8, i32 (i8*, i8*)* @compareQuery)
  %51 = sitofp i64 %2 to float
  %52 = getelementptr inbounds float, float* %30, i64 %2
  %53 = load float, float* %52, align 4
  %54 = call i64 @TMnet_findDescendants(%struct.net* %28, i64 %2, %struct.bitmap* %18, %struct.queue* %20)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %50
  br label %59

; <label>:57                                      ; preds = %50
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 760, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %59

; <label>:59                                      ; preds = %58, %56
  %60 = call %struct.list* @net_getParentIdListPtr(%struct.net* %28, i64 %2)
  %61 = load i64, i64* @global_maxNumEdgeLearned, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %._crit_edge, label %63

._crit_edge:                                      ; preds = %59
  br label %66

; <label>:63                                      ; preds = %59
  %64 = call i64 @TMlist_getSize(%struct.list* %60)
  %65 = icmp sle i64 %64, %61
  br i1 %65, label %._crit_edge1, label %._crit_edge2

._crit_edge2:                                     ; preds = %63
  br label %117

._crit_edge1:                                     ; preds = %63
  br label %66

; <label>:66                                      ; preds = %._crit_edge1, %._crit_edge
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %60)
  br label %67

; <label>:67                                      ; preds = %70, %66
  %68 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %60) #8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

; <label>:70                                      ; preds = %67
  %71 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %60)
  %72 = ptrtoint i8* %71 to i64
  %73 = call i64 @bitmap_set(%struct.bitmap* %18, i64 %72)
  br label %67

; <label>:74                                      ; preds = %67
  br label %75

; <label>:75                                      ; preds = %.backedge, %74
  %bestFromId.0 = phi float [ %51, %74 ], [ %bestFromId.1, %.backedge ]
  %bestLocalLogLikelihood.0 = phi float [ %53, %74 ], [ %bestLocalLogLikelihood.1, %.backedge ]
  %fromId.0 = phi i64 [ -1, %74 ], [ %77, %.backedge ]
  %76 = add nsw i64 %fromId.0, 1
  %77 = call i64 @bitmap_findClear(%struct.bitmap* %18, i64 %76)
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %116

; <label>:79                                      ; preds = %75
  %80 = icmp eq i64 %77, %2
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %79
  br label %.backedge

.backedge:                                        ; preds = %81, %115
  %bestFromId.1 = phi float [ %bestFromId.0, %81 ], [ %bestFromId.2, %115 ]
  %bestLocalLogLikelihood.1 = phi float [ %bestLocalLogLikelihood.0, %81 ], [ %bestLocalLogLikelihood.2, %115 ]
  br label %75

; <label>:82                                      ; preds = %79
  %83 = call i64 @Pvector_copy(%struct.vector* %8, %struct.vector* %24)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %82
  br label %88

; <label>:86                                      ; preds = %82
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 786, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:88                                      ; preds = %85
  %89 = getelementptr inbounds %struct.query, %struct.query* %6, i64 %77
  %90 = bitcast %struct.query* %89 to i8*
  %91 = call i64 @Pvector_pushBack(%struct.vector* %8, i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %88
  br label %96

; <label>:94                                      ; preds = %88
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 788, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:96                                      ; preds = %93
  call void @vector_sort(%struct.vector* %8, i32 (i8*, i8*)* @compareQuery)
  %97 = call i64 @Pvector_copy(%struct.vector* %10, %struct.vector* %22)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %96
  br label %102

; <label>:100                                     ; preds = %96
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 792, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:102                                     ; preds = %99
  %103 = getelementptr inbounds %struct.query, %struct.query* %6, i64 %77
  %104 = bitcast %struct.query* %103 to i8*
  %105 = call i64 @Pvector_pushBack(%struct.vector* %10, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

; <label>:107                                     ; preds = %102
  br label %110

; <label>:108                                     ; preds = %102
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 794, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:110                                     ; preds = %107
  call void @vector_sort(%struct.vector* %10, i32 (i8*, i8*)* @compareQuery)
  %111 = call float @computeLocalLogLikelihood(i64 %2, %struct.adtree* %26, %struct.net* %28, %struct.query* %6, %struct.vector* %8, %struct.vector* %10)
  %112 = fcmp ogt float %111, %bestLocalLogLikelihood.0
  br i1 %112, label %113, label %._crit_edge3

._crit_edge3:                                     ; preds = %110
  br label %115

; <label>:113                                     ; preds = %110
  %114 = sitofp i64 %77 to float
  br label %115

; <label>:115                                     ; preds = %._crit_edge3, %113
  %bestFromId.2 = phi float [ %114, %113 ], [ %bestFromId.0, %._crit_edge3 ]
  %bestLocalLogLikelihood.2 = phi float [ %111, %113 ], [ %bestLocalLogLikelihood.0, %._crit_edge3 ]
  br label %.backedge

; <label>:116                                     ; preds = %75
  br label %117

; <label>:117                                     ; preds = %._crit_edge2, %116
  %bestFromId.3 = phi float [ %bestFromId.0, %116 ], [ %51, %._crit_edge2 ]
  %bestLocalLogLikelihood.3 = phi float [ %bestLocalLogLikelihood.0, %116 ], [ %53, %._crit_edge2 ]
  %118 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = fptosi float %bestFromId.3 to i64
  %120 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 1
  store i64 %119, i64* %120, align 8
  %121 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  store i64 %2, i64* %121, align 8
  %122 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float 0.000000e+00, float* %122, align 8
  %123 = sitofp i64 %2 to float
  %124 = fcmp une float %bestFromId.3, %123
  br i1 %124, label %125, label %._crit_edge4

._crit_edge4:                                     ; preds = %117
  br label %141

; <label>:125                                     ; preds = %117
  %126 = getelementptr inbounds %struct.adtree, %struct.adtree* %26, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @TMlist_getSize(%struct.list* %60)
  %129 = add nsw i64 %128, 1
  %130 = load i64, i64* @global_insertPenalty, align 8
  %131 = mul nsw i64 %129, %130
  %132 = add nsw i64 %12, %131
  %133 = sitofp i64 %132 to float
  %134 = fmul float %133, %14
  %135 = sitofp i64 %127 to float
  %136 = fadd float %16, %bestLocalLogLikelihood.3
  %137 = fsub float %136, %53
  %138 = fmul float %135, %137
  %139 = fadd float %134, %138
  %140 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float %139, float* %140, align 8
  br label %141

; <label>:141                                     ; preds = %._crit_edge4, %125
  %142 = bitcast %struct.learner_task* %agg.result to i8*
  %143 = bitcast %struct.learner_task* %bestTask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %142, i8* %143, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define internal void @TMfindBestRemoveTask(%struct.learner_task* noalias sret %agg.result, %struct.findBestTaskArg* %argPtr) #0 {
  %bestTask = alloca %struct.learner_task, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 1
  %4 = load %struct.learner*, %struct.learner** %3, align 8
  %5 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 2
  %6 = load %struct.query*, %struct.query** %5, align 8
  %7 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 3
  %8 = load %struct.vector*, %struct.vector** %7, align 8
  %9 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 4
  %10 = load %struct.vector*, %struct.vector** %9, align 8
  %11 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 6
  %14 = load float, float* %13, align 8
  %15 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 7
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 10
  %18 = load %struct.vector*, %struct.vector** %17, align 8
  %19 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 0
  %20 = load %struct.adtree*, %struct.adtree** %19, align 8
  %21 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 1
  %22 = load %struct.net*, %struct.net** %21, align 8
  %23 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 2
  %24 = load float*, float** %23, align 8
  call void @TMpopulateParentQueryVector(%struct.net* %22, i64 %2, %struct.query* %6, %struct.vector* %18)
  %25 = call i64 @vector_getSize(%struct.vector* %18)
  %26 = sitofp i64 %2 to float
  %27 = getelementptr inbounds float, float* %24, i64 %2
  %28 = load float, float* %27, align 4
  %29 = getelementptr inbounds %struct.query, %struct.query* %6, i64 %2
  %30 = bitcast %struct.query* %29 to i8*
  br label %__kernel__TMfindBestRemoveTask0_outer_chunking

__kernel__TMfindBestRemoveTask0_outer_chunking:   ; preds = %0, %__kernel__TMfindBestRemoveTask0_exitChunk
  %bestFromId.0 = phi float [ %26, %0 ], [ %bestFromId.1, %__kernel__TMfindBestRemoveTask0_exitChunk ]
  %bestLocalLogLikelihood.0 = phi float [ %28, %0 ], [ %bestLocalLogLikelihood.1, %__kernel__TMfindBestRemoveTask0_exitChunk ]
  %i.0 = phi i64 [ 0, %0 ], [ %i.1, %__kernel__TMfindBestRemoveTask0_exitChunk ]
  %lsup_value = load i64, i64* @"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_lsup"
  store i64 %lsup_value, i64* @"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_vi"
  %granularity_value = load i64, i64* @"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_granularity"
  %new_lsup = add i64 %lsup_value, %granularity_value
  store i64 %new_lsup, i64* @"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_lsup"
  %outer_vi = load i64, i64* @"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_vi"
  br label %__kernel____kernel__TMfindBestRemoveTask0_viCond

__kernel____kernel__TMfindBestRemoveTask0_viCond: ; preds = %__kernel__TMfindBestRemoveTask0_outer_chunking, %75
  %bestFromId.1 = phi float [ %bestFromId.0, %__kernel__TMfindBestRemoveTask0_outer_chunking ], [ %bestFromId.2, %75 ]
  %bestLocalLogLikelihood.1 = phi float [ %bestLocalLogLikelihood.0, %__kernel__TMfindBestRemoveTask0_outer_chunking ], [ %bestLocalLogLikelihood.2, %75 ]
  %i.1 = phi i64 [ %i.0, %__kernel__TMfindBestRemoveTask0_outer_chunking ], [ %76, %75 ]
  %vi_value = phi i64 [ %outer_vi, %__kernel__TMfindBestRemoveTask0_outer_chunking ], [ %"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_vi_inc", %75 ]
  %lsup_value3 = load i64, i64* @"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_lsup"
  %"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_vi_cmp" = icmp slt i64 %vi_value, %lsup_value3
  br i1 %"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_vi_cmp", label %__kernel__TMfindBestRemoveTask0, label %__kernel__TMfindBestRemoveTask0_exitChunk

__kernel__TMfindBestRemoveTask0_exitChunk:        ; preds = %__kernel____kernel__TMfindBestRemoveTask0_viCond
  br label %__kernel__TMfindBestRemoveTask0_outer_chunking

__kernel__TMfindBestRemoveTask0:                  ; preds = %__kernel____kernel__TMfindBestRemoveTask0_viCond
  %31 = icmp slt i64 %i.1, %25
  br i1 %31, label %32, label %77

; <label>:32                                      ; preds = %__kernel__TMfindBestRemoveTask0
  %33 = call i8* @vector_at(%struct.vector* %18, i64 %i.1)
  %34 = bitcast i8* %33 to %struct.query*
  %35 = getelementptr inbounds %struct.query, %struct.query* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  call void @vector_clear(%struct.vector* %10)
  br label %37

; <label>:37                                      ; preds = %55, %32
  %p.0 = phi i64 [ 0, %32 ], [ %56, %55 ]
  %38 = icmp slt i64 %p.0, %25
  br i1 %38, label %39, label %57

; <label>:39                                      ; preds = %37
  %40 = icmp ne i64 %p.0, %36
  br i1 %40, label %41, label %._crit_edge

._crit_edge:                                      ; preds = %39
  br label %54

; <label>:41                                      ; preds = %39
  %42 = call i8* @vector_at(%struct.vector* %18, i64 %p.0)
  %43 = bitcast i8* %42 to %struct.query*
  %44 = getelementptr inbounds %struct.query, %struct.query* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.query, %struct.query* %6, i64 %45
  %47 = bitcast %struct.query* %46 to i8*
  %48 = call i64 @Pvector_pushBack(%struct.vector* %10, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %41
  br label %53

; <label>:51                                      ; preds = %41
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 895, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestRemoveTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:53                                      ; preds = %50
  br label %54

; <label>:54                                      ; preds = %._crit_edge, %53
  br label %55

; <label>:55                                      ; preds = %54
  %56 = add nsw i64 %p.0, 1
  br label %37

; <label>:57                                      ; preds = %37
  %58 = call i64 @Pvector_copy(%struct.vector* %8, %struct.vector* %10)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %57
  br label %63

; <label>:61                                      ; preds = %57
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 904, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestRemoveTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:63                                      ; preds = %60
  %64 = call i64 @Pvector_pushBack(%struct.vector* %8, i8* %30)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

; <label>:66                                      ; preds = %63
  br label %69

; <label>:67                                      ; preds = %63
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 906, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestRemoveTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:69                                      ; preds = %66
  call void @vector_sort(%struct.vector* %8, i32 (i8*, i8*)* @compareQuery)
  %70 = call float @computeLocalLogLikelihood(i64 %2, %struct.adtree* %20, %struct.net* %22, %struct.query* %6, %struct.vector* %8, %struct.vector* %10)
  %71 = fcmp ogt float %70, %bestLocalLogLikelihood.1
  br i1 %71, label %72, label %._crit_edge1

._crit_edge1:                                     ; preds = %69
  br label %74

; <label>:72                                      ; preds = %69
  %73 = sitofp i64 %36 to float
  br label %74

; <label>:74                                      ; preds = %._crit_edge1, %72
  %bestFromId.2 = phi float [ %73, %72 ], [ %bestFromId.1, %._crit_edge1 ]
  %bestLocalLogLikelihood.2 = phi float [ %70, %72 ], [ %bestLocalLogLikelihood.1, %._crit_edge1 ]
  br label %75

; <label>:75                                      ; preds = %74
  %76 = add nsw i64 %i.1, 1
  %"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_vi_inc" = add i64 %vi_value, 1
  store i64 %"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_vi_inc", i64* @"../bin/learner.marked.ll_TMfindBestRemoveTask___kernel__TMfindBestRemoveTask0_vi"
  br label %__kernel____kernel__TMfindBestRemoveTask0_viCond, !llvm.loop !4

; <label>:77                                      ; preds = %__kernel__TMfindBestRemoveTask0
  %78 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = fptosi float %bestFromId.1 to i64
  %80 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 1
  store i64 %79, i64* %80, align 8
  %81 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  store i64 %2, i64* %81, align 8
  %82 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float 0.000000e+00, float* %82, align 8
  %83 = sitofp i64 %2 to float
  %84 = fcmp une float %bestFromId.1, %83
  br i1 %84, label %85, label %._crit_edge2

._crit_edge2:                                     ; preds = %77
  br label %97

; <label>:85                                      ; preds = %77
  %86 = getelementptr inbounds %struct.adtree, %struct.adtree* %20, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %12, 1
  %89 = sitofp i64 %88 to float
  %90 = fmul float %89, %14
  %91 = sitofp i64 %87 to float
  %92 = fadd float %16, %bestLocalLogLikelihood.1
  %93 = fsub float %92, %28
  %94 = fmul float %91, %93
  %95 = fadd float %90, %94
  %96 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float %95, float* %96, align 8
  br label %97

; <label>:97                                      ; preds = %._crit_edge2, %85
  %98 = bitcast %struct.learner_task* %agg.result to i8*
  %99 = bitcast %struct.learner_task* %bestTask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TMfindBestReverseTask(%struct.learner_task* noalias sret %agg.result, %struct.findBestTaskArg* %argPtr) #0 {
  %bestTask = alloca %struct.learner_task, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 1
  %4 = load %struct.learner*, %struct.learner** %3, align 8
  %5 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 2
  %6 = load %struct.query*, %struct.query** %5, align 8
  %7 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 3
  %8 = load %struct.vector*, %struct.vector** %7, align 8
  %9 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 4
  %10 = load %struct.vector*, %struct.vector** %9, align 8
  %11 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 6
  %14 = load float, float* %13, align 8
  %15 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 7
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 8
  %18 = load %struct.bitmap*, %struct.bitmap** %17, align 8
  %19 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 9
  %20 = load %struct.queue*, %struct.queue** %19, align 8
  %21 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 10
  %22 = load %struct.vector*, %struct.vector** %21, align 8
  %23 = getelementptr inbounds %struct.findBestTaskArg, %struct.findBestTaskArg* %argPtr, i32 0, i32 11
  %24 = load %struct.vector*, %struct.vector** %23, align 8
  %25 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 0
  %26 = load %struct.adtree*, %struct.adtree** %25, align 8
  %27 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 1
  %28 = load %struct.net*, %struct.net** %27, align 8
  %29 = getelementptr inbounds %struct.learner, %struct.learner* %4, i32 0, i32 2
  %30 = load float*, float** %29, align 8
  call void @TMpopulateParentQueryVector(%struct.net* %28, i64 %2, %struct.query* %6, %struct.vector* %22)
  %31 = call i64 @vector_getSize(%struct.vector* %22)
  %32 = getelementptr inbounds float, float* %30, i64 %2
  %33 = load float, float* %32, align 4
  %34 = getelementptr inbounds %struct.query, %struct.query* %6, i64 %2
  %35 = bitcast %struct.query* %34 to i8*
  %36 = getelementptr inbounds %struct.query, %struct.query* %6, i64 %2
  %37 = bitcast %struct.query* %36 to i8*
  br label %__kernel__TMfindBestReverseTask1_outer_chunking

__kernel__TMfindBestReverseTask1_outer_chunking:  ; preds = %0, %__kernel__TMfindBestReverseTask1_exitChunk
  %bestFromId.0 = phi i64 [ %2, %0 ], [ %bestFromId.1, %__kernel__TMfindBestReverseTask1_exitChunk ]
  %bestLocalLogLikelihood.0 = phi float [ %33, %0 ], [ %bestLocalLogLikelihood.1, %__kernel__TMfindBestReverseTask1_exitChunk ]
  %i.0 = phi i64 [ 0, %0 ], [ %i.1, %__kernel__TMfindBestReverseTask1_exitChunk ]
  %lsup_value = load i64, i64* @"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_lsup"
  store i64 %lsup_value, i64* @"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_vi"
  %granularity_value = load i64, i64* @"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_granularity"
  %new_lsup = add i64 %lsup_value, %granularity_value
  store i64 %new_lsup, i64* @"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_lsup"
  %outer_vi = load i64, i64* @"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_vi"
  br label %__kernel____kernel__TMfindBestReverseTask1_viCond

__kernel____kernel__TMfindBestReverseTask1_viCond: ; preds = %__kernel__TMfindBestReverseTask1_outer_chunking, %112
  %bestFromId.1 = phi i64 [ %bestFromId.0, %__kernel__TMfindBestReverseTask1_outer_chunking ], [ %bestFromId.2, %112 ]
  %bestLocalLogLikelihood.1 = phi float [ %bestLocalLogLikelihood.0, %__kernel__TMfindBestReverseTask1_outer_chunking ], [ %bestLocalLogLikelihood.2, %112 ]
  %i.1 = phi i64 [ %i.0, %__kernel__TMfindBestReverseTask1_outer_chunking ], [ %113, %112 ]
  %vi_value = phi i64 [ %outer_vi, %__kernel__TMfindBestReverseTask1_outer_chunking ], [ %"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_vi_inc", %112 ]
  %lsup_value6 = load i64, i64* @"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_lsup"
  %"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_vi_cmp" = icmp slt i64 %vi_value, %lsup_value6
  br i1 %"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_vi_cmp", label %__kernel__TMfindBestReverseTask1, label %__kernel__TMfindBestReverseTask1_exitChunk

__kernel__TMfindBestReverseTask1_exitChunk:       ; preds = %__kernel____kernel__TMfindBestReverseTask1_viCond
  br label %__kernel__TMfindBestReverseTask1_outer_chunking

__kernel__TMfindBestReverseTask1:                 ; preds = %__kernel____kernel__TMfindBestReverseTask1_viCond
  %38 = icmp slt i64 %i.1, %31
  br i1 %38, label %39, label %114

; <label>:39                                      ; preds = %__kernel__TMfindBestReverseTask1
  %40 = call i8* @vector_at(%struct.vector* %22, i64 %i.1)
  %41 = bitcast i8* %40 to %struct.query*
  %42 = getelementptr inbounds %struct.query, %struct.query* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds float, float* %30, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fadd float %33, %45
  call void @TMpopulateParentQueryVector(%struct.net* %28, i64 %43, %struct.query* %6, %struct.vector* %24)
  call void @vector_clear(%struct.vector* %10)
  br label %47

; <label>:47                                      ; preds = %65, %39
  %p.0 = phi i64 [ 0, %39 ], [ %66, %65 ]
  %48 = icmp slt i64 %p.0, %31
  br i1 %48, label %49, label %67

; <label>:49                                      ; preds = %47
  %50 = icmp ne i64 %p.0, %43
  br i1 %50, label %51, label %._crit_edge

._crit_edge:                                      ; preds = %49
  br label %64

; <label>:51                                      ; preds = %49
  %52 = call i8* @vector_at(%struct.vector* %22, i64 %p.0)
  %53 = bitcast i8* %52 to %struct.query*
  %54 = getelementptr inbounds %struct.query, %struct.query* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.query, %struct.query* %6, i64 %55
  %57 = bitcast %struct.query* %56 to i8*
  %58 = call i64 @Pvector_pushBack(%struct.vector* %10, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %51
  br label %63

; <label>:61                                      ; preds = %51
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1024, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:63                                      ; preds = %60
  br label %64

; <label>:64                                      ; preds = %._crit_edge, %63
  br label %65

; <label>:65                                      ; preds = %64
  %66 = add nsw i64 %p.0, 1
  br label %47

; <label>:67                                      ; preds = %47
  %68 = call i64 @Pvector_copy(%struct.vector* %8, %struct.vector* %10)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %67
  br label %73

; <label>:71                                      ; preds = %67
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1033, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:73                                      ; preds = %70
  %74 = call i64 @Pvector_pushBack(%struct.vector* %8, i8* %35)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %73
  br label %79

; <label>:77                                      ; preds = %73
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1035, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:79                                      ; preds = %76
  call void @vector_sort(%struct.vector* %8, i32 (i8*, i8*)* @compareQuery)
  %80 = call float @computeLocalLogLikelihood(i64 %2, %struct.adtree* %26, %struct.net* %28, %struct.query* %6, %struct.vector* %8, %struct.vector* %10)
  %81 = call i64 @Pvector_copy(%struct.vector* %10, %struct.vector* %24)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %79
  br label %86

; <label>:84                                      ; preds = %79
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1055, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:86                                      ; preds = %83
  %87 = call i64 @Pvector_pushBack(%struct.vector* %10, i8* %37)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

; <label>:89                                      ; preds = %86
  br label %92

; <label>:90                                      ; preds = %86
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1057, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:92                                      ; preds = %89
  call void @vector_sort(%struct.vector* %10, i32 (i8*, i8*)* @compareQuery)
  %93 = call i64 @Pvector_copy(%struct.vector* %8, %struct.vector* %10)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

; <label>:95                                      ; preds = %92
  br label %98

; <label>:96                                      ; preds = %92
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1061, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:98                                      ; preds = %95
  %99 = getelementptr inbounds %struct.query, %struct.query* %6, i64 %43
  %100 = bitcast %struct.query* %99 to i8*
  %101 = call i64 @Pvector_pushBack(%struct.vector* %8, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

; <label>:103                                     ; preds = %98
  br label %106

; <label>:104                                     ; preds = %98
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1063, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:106                                     ; preds = %103
  call void @vector_sort(%struct.vector* %8, i32 (i8*, i8*)* @compareQuery)
  %107 = call float @computeLocalLogLikelihood(i64 %43, %struct.adtree* %26, %struct.net* %28, %struct.query* %6, %struct.vector* %8, %struct.vector* %10)
  %108 = fadd float %80, %107
  %109 = fcmp ogt float %108, %46
  br i1 %109, label %110, label %._crit_edge1

._crit_edge1:                                     ; preds = %106
  br label %111

; <label>:110                                     ; preds = %106
  br label %111

; <label>:111                                     ; preds = %._crit_edge1, %110
  %bestFromId.2 = phi i64 [ %43, %110 ], [ %bestFromId.1, %._crit_edge1 ]
  %bestLocalLogLikelihood.2 = phi float [ %108, %110 ], [ %46, %._crit_edge1 ]
  br label %112

; <label>:112                                     ; preds = %111
  %113 = add nsw i64 %i.1, 1
  %"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_vi_inc" = add i64 %vi_value, 1
  store i64 %"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_vi_inc", i64* @"../bin/learner.marked.ll_TMfindBestReverseTask___kernel__TMfindBestReverseTask1_vi"
  br label %__kernel____kernel__TMfindBestReverseTask1_viCond, !llvm.loop !6

; <label>:114                                     ; preds = %__kernel__TMfindBestReverseTask1
  %115 = icmp ne i64 %bestFromId.1, %2
  br i1 %115, label %116, label %._crit_edge2

._crit_edge2:                                     ; preds = %114
  br label %124

; <label>:116                                     ; preds = %114
  call void @TMnet_applyOperation(%struct.net* %28, i32 1, i64 %bestFromId.1, i64 %2)
  %117 = call i64 @TMnet_isPath(%struct.net* %28, i64 %bestFromId.1, i64 %2, %struct.bitmap* %18, %struct.queue* %20)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %._crit_edge3

._crit_edge3:                                     ; preds = %116
  br label %120

; <label>:119                                     ; preds = %116
  br label %120

; <label>:120                                     ; preds = %._crit_edge3, %119
  %isTaskValid.0 = phi i64 [ 0, %119 ], [ 1, %._crit_edge3 ]
  call void @TMnet_applyOperation(%struct.net* %28, i32 0, i64 %bestFromId.1, i64 %2)
  %121 = icmp ne i64 %isTaskValid.0, 0
  br i1 %121, label %._crit_edge4, label %122

._crit_edge4:                                     ; preds = %120
  br label %123

; <label>:122                                     ; preds = %120
  br label %123

; <label>:123                                     ; preds = %._crit_edge4, %122
  %bestFromId.3 = phi i64 [ %bestFromId.1, %._crit_edge4 ], [ %2, %122 ]
  br label %124

; <label>:124                                     ; preds = %._crit_edge2, %123
  %bestFromId.4 = phi i64 [ %bestFromId.3, %123 ], [ %bestFromId.1, %._crit_edge2 ]
  %125 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 0
  store i32 2, i32* %125, align 8
  %126 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 1
  store i64 %bestFromId.4, i64* %126, align 8
  %127 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 2
  store i64 %2, i64* %127, align 8
  %128 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float 0.000000e+00, float* %128, align 8
  %129 = icmp ne i64 %bestFromId.4, %2
  br i1 %129, label %130, label %._crit_edge5

._crit_edge5:                                     ; preds = %124
  br label %144

; <label>:130                                     ; preds = %124
  %131 = getelementptr inbounds float, float* %30, i64 %bestFromId.4
  %132 = load float, float* %131, align 4
  %133 = getelementptr inbounds %struct.adtree, %struct.adtree* %26, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = sitofp i64 %12 to float
  %136 = fmul float %135, %14
  %137 = sitofp i64 %134 to float
  %138 = fadd float %16, %bestLocalLogLikelihood.1
  %139 = fsub float %138, %33
  %140 = fsub float %139, %132
  %141 = fmul float %137, %140
  %142 = fadd float %136, %141
  %143 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %bestTask, i32 0, i32 3
  store float %142, float* %143, align 8
  br label %144

; <label>:144                                     ; preds = %._crit_edge5, %130
  %145 = bitcast %struct.learner_task* %agg.result to i8*
  %146 = bitcast %struct.learner_task* %bestTask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* %146, i64 32, i32 8, i1 false)
  ret void
}

declare void @Pbitmap_free(%struct.bitmap*) #2

declare void @Pqueue_free(%struct.queue*) #2

; Function Attrs: nounwind uwtable
define internal void @TMpopulateParentQueryVector(%struct.net* %netPtr, i64 %id, %struct.query* %queries, %struct.vector* %parentQueryVectorPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  call void @vector_clear(%struct.vector* %parentQueryVectorPtr)
  %1 = call %struct.list* @net_getParentIdListPtr(%struct.net* %netPtr, i64 %id)
  call void @TMlist_iter_reset(%struct.list_node** %it, %struct.list* %1)
  br label %2

; <label>:2                                       ; preds = %15, %0
  %3 = call i64 @TMlist_iter_hasNext(%struct.list_node** %it, %struct.list* %1) #8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %16

; <label>:5                                       ; preds = %2
  %6 = call i8* @TMlist_iter_next(%struct.list_node** %it, %struct.list* %1)
  %7 = ptrtoint i8* %6 to i64
  %8 = getelementptr inbounds %struct.query, %struct.query* %queries, i64 %7
  %9 = bitcast %struct.query* %8 to i8*
  %10 = call i64 @Pvector_pushBack(%struct.vector* %parentQueryVectorPtr, i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %5
  br label %15

; <label>:13                                      ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 574, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.TMpopulateParentQueryVector, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:15                                      ; preds = %12
  br label %2

; <label>:16                                      ; preds = %2
  ret void
}

declare i64 @Pvector_copy(%struct.vector*, %struct.vector*) #2

declare void @vector_sort(%struct.vector*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @compareQuery(i8* %aPtr, i8* %bPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = bitcast i8* %aPtr to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.query*
  %4 = bitcast i8* %bPtr to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.query*
  %7 = getelementptr inbounds %struct.query, %struct.query* %3, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.query, %struct.query* %6, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %8, %10
  %12 = trunc i64 %11 to i32
  ret i32 %12
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
  %it = alloca %struct.list_node*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  call void @vector_clear(%struct.vector* %parentQueryVectorPtr)
  %1 = call %struct.list* @net_getParentIdListPtr(%struct.net* %netPtr, i64 %id)
  call void @list_iter_reset(%struct.list_node** %it, %struct.list* %1)
  br label %2

; <label>:2                                       ; preds = %15, %0
  %3 = call i64 @list_iter_hasNext(%struct.list_node** %it, %struct.list* %1) #8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %16

; <label>:5                                       ; preds = %2
  %6 = call i8* @list_iter_next(%struct.list_node** %it, %struct.list* %1)
  %7 = ptrtoint i8* %6 to i64
  %8 = getelementptr inbounds %struct.query, %struct.query* %queries, i64 %7
  %9 = bitcast %struct.query* %8 to i8*
  %10 = call i64 @vector_pushBack(%struct.vector* %parentQueryVectorPtr, i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %5
  br label %15

; <label>:13                                      ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 548, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.populateParentQueryVector, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  unreachable

; <label>:15                                      ; preds = %12
  br label %2

; <label>:16                                      ; preds = %2
  ret void
}

declare i64 @vector_copy(%struct.vector*, %struct.vector*) #2

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #4

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind uwtable
define internal float @computeLocalLogLikelihoodHelper(i64 %i, i64 %numParent, %struct.adtree* %adtreePtr, %struct.query* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) #0 {
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %1 = icmp sge i64 %i, %numParent
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = call float @computeSpecificLocalLogLikelihood(%struct.adtree* %adtreePtr, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  br label %21

; <label>:4                                       ; preds = %0
  %5 = call i8* @vector_at(%struct.vector* %parentQueryVectorPtr, i64 %i)
  %6 = bitcast i8* %5 to %struct.query*
  %7 = getelementptr inbounds %struct.query, %struct.query* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.query, %struct.query* %queries, i64 %8
  %10 = getelementptr inbounds %struct.query, %struct.query* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = add nsw i64 %i, 1
  %12 = call float @computeLocalLogLikelihoodHelper(i64 %11, i64 %numParent, %struct.adtree* %adtreePtr, %struct.query* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  %13 = fadd float 0.000000e+00, %12
  %14 = getelementptr inbounds %struct.query, %struct.query* %queries, i64 %8
  %15 = getelementptr inbounds %struct.query, %struct.query* %14, i32 0, i32 1
  store i64 1, i64* %15, align 8
  %16 = add nsw i64 %i, 1
  %17 = call float @computeLocalLogLikelihoodHelper(i64 %16, i64 %numParent, %struct.adtree* %adtreePtr, %struct.query* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  %18 = fadd float %13, %17
  %19 = getelementptr inbounds %struct.query, %struct.query* %queries, i64 %8
  %20 = getelementptr inbounds %struct.query, %struct.query* %19, i32 0, i32 1
  store i64 -1, i64* %20, align 8
  br label %21

; <label>:21                                      ; preds = %4, %2
  %.0 = phi float [ %3, %2 ], [ %18, %4 ]
  ret float %.0
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
