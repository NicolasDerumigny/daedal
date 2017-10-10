; ModuleID = '../bin/learner.ll'
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
define noalias %struct.learner* @learner_alloc(%struct.data* nocapture readonly %dataPtr, %struct.adtree* %adtreePtr, i64 %numThread) #0 {
  %1 = tail call noalias i8* @malloc(i64 336) #6
  %2 = bitcast i8* %1 to %struct.learner*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %39, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to %struct.adtree**
  store %struct.adtree* %adtreePtr, %struct.adtree** %5, align 8
  %6 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = tail call %struct.net* @net_alloc(i64 %7) #6
  %9 = getelementptr inbounds i8, i8* %1, i64 8
  %10 = bitcast i8* %9 to %struct.net**
  store %struct.net* %8, %struct.net** %10, align 8
  %11 = icmp eq %struct.net* %8, null
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %4
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 237, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i64 0, i64 0)) #8
  unreachable

; <label>:13                                      ; preds = %4
  %14 = load i64, i64* %6, align 8
  %15 = shl i64 %14, 2
  %16 = tail call noalias i8* @malloc(i64 %15) #6
  %17 = getelementptr inbounds i8, i8* %1, i64 16
  %18 = bitcast i8* %17 to i8**
  store i8* %16, i8** %18, align 8
  %19 = icmp eq i8* %16, null
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %13
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 240, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i64 0, i64 0)) #8
  unreachable

; <label>:21                                      ; preds = %13
  %22 = getelementptr inbounds i8, i8* %1, i64 80
  %23 = bitcast i8* %22 to float*
  store float 0.000000e+00, float* %23, align 8
  %24 = shl i64 %14, 5
  %25 = tail call noalias i8* @malloc(i64 %24) #6
  %26 = getelementptr inbounds i8, i8* %1, i64 144
  %27 = bitcast i8* %26 to i8**
  store i8* %25, i8** %27, align 8
  %28 = icmp eq i8* %25, null
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %21
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 244, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i64 0, i64 0)) #8
  unreachable

; <label>:30                                      ; preds = %21
  %31 = tail call %struct.list* @list_alloc(i64 (i8*, i8*)* nonnull @compareTask) #6
  %32 = getelementptr inbounds i8, i8* %1, i64 208
  %33 = bitcast i8* %32 to %struct.list**
  store %struct.list* %31, %struct.list** %33, align 8
  %34 = icmp eq %struct.list* %31, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %30
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 246, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.learner_alloc, i64 0, i64 0)) #8
  unreachable

; <label>:36                                      ; preds = %30
  %37 = getelementptr inbounds i8, i8* %1, i64 272
  %38 = bitcast i8* %37 to i64*
  store i64 0, i64* %38, align 8
  br label %39

; <label>:39                                      ; preds = %0, %36
  ret %struct.learner* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.net* @net_alloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare %struct.list* @list_alloc(i64 (i8*, i8*)*) #2

; Function Attrs: norecurse nounwind readonly uwtable
define internal i64 @compareTask(i8* nocapture readonly %aPtr, i8* nocapture readonly %bPtr) #4 {
  %1 = getelementptr inbounds i8, i8* %aPtr, i64 24
  %2 = bitcast i8* %1 to float*
  %3 = load float, float* %2, align 8
  %4 = getelementptr inbounds i8, i8* %bPtr, i64 24
  %5 = bitcast i8* %4 to float*
  %6 = load float, float* %5, align 8
  %7 = fcmp olt float %3, %6
  br i1 %7, label %18, label %8

; <label>:8                                       ; preds = %0
  %9 = fcmp ogt float %3, %6
  br i1 %9, label %18, label %10

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds i8, i8* %aPtr, i64 16
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* %bPtr, i64 16
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  br label %18

; <label>:18                                      ; preds = %8, %0, %10
  %.0 = phi i64 [ %17, %10 ], [ 1, %0 ], [ -1, %8 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define void @learner_free(%struct.learner* nocapture %learnerPtr) #0 {
  %1 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i64 0, i32 8
  %2 = load %struct.list*, %struct.list** %1, align 8
  tail call void @list_free(%struct.list* %2) #6
  %3 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i64 0, i32 6
  %4 = bitcast %struct.learner_task** %3 to i8**
  %5 = load i8*, i8** %4, align 8
  tail call void @free(i8* %5) #6
  %6 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i64 0, i32 2
  %7 = bitcast float** %6 to i8**
  %8 = load i8*, i8** %7, align 8
  tail call void @free(i8* %8) #6
  %9 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i64 0, i32 1
  %10 = load %struct.net*, %struct.net** %9, align 8
  tail call void @net_free(%struct.net* %10) #6
  %11 = bitcast %struct.learner* %learnerPtr to i8*
  tail call void @free(i8* %11) #6
  ret void
}

declare void @list_free(%struct.list*) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

declare void @net_free(%struct.net*) #2

; Function Attrs: nounwind uwtable
define %struct.learner_task* @TMpopTask(%struct.list* %taskListPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %taskListPtr) #6
  %1 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %taskListPtr) #9
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %taskListPtr) #6
  %5 = bitcast i8* %4 to %struct.learner_task*
  %6 = call i64 @TMlist_remove(%struct.list* %taskListPtr, i8* %4) #6
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %3
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 521, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.TMpopTask, i64 0, i64 0)) #8
  unreachable

; <label>:9                                       ; preds = %3, %0
  %taskPtr.0 = phi %struct.learner_task* [ %5, %3 ], [ null, %0 ]
  ret %struct.learner_task* %taskPtr.0
}

declare void @TMlist_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @TMlist_iter_hasNext(%struct.list_node**, %struct.list*) #5

declare i8* @TMlist_iter_next(%struct.list_node**, %struct.list*) #2

declare i64 @TMlist_remove(%struct.list*, i8*) #2

; Function Attrs: nounwind uwtable
define void @learner_run(%struct.learner* %learnerPtr) #0 {
  %1 = bitcast %struct.learner* %learnerPtr to i8*
  tail call void @thread_start(void (i8*)* nonnull @createTaskList, i8* %1) #6
  tail call void @thread_start(void (i8*)* nonnull @learnStructure, i8* %1) #6
  ret void
}

declare void @thread_start(void (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @createTaskList(i8* nocapture %argPtr) #0 {
  %queries = alloca [2 x %struct.query], align 16
  %parentQuery = alloca %struct.query, align 8
  %1 = tail call i64 (...) @thread_getId() #6
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) @thread_getId() #6
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #6
  %5 = tail call i64 (...) @thread_getId() #6
  %6 = tail call i64 (...) @thread_getNumThread() #6
  %7 = getelementptr inbounds i8, i8* %argPtr, i64 208
  %8 = bitcast i8* %7 to %struct.list**
  %9 = load %struct.list*, %struct.list** %8, align 8
  %10 = bitcast i8* %argPtr to %struct.adtree**
  %11 = load %struct.adtree*, %struct.adtree** %10, align 8
  %12 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %13 = bitcast i8* %12 to float**
  %14 = load float*, float** %13, align 8
  %15 = getelementptr inbounds i8, i8* %argPtr, i64 144
  %16 = bitcast i8* %15 to %struct.learner_task**
  %17 = load %struct.learner_task*, %struct.learner_task** %16, align 8
  %18 = tail call %struct.vector* @Pvector_alloc(i64 2) #6
  %19 = icmp eq %struct.vector* %18, null
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 341, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i64 0, i64 0)) #8
  unreachable

; <label>:21                                      ; preds = %0
  %22 = bitcast [2 x %struct.query]* %queries to i8*
  %23 = call i64 @vector_pushBack(%struct.vector* nonnull %18, i8* %22) #6
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %21
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 343, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i64 0, i64 0)) #8
  unreachable

; <label>:26                                      ; preds = %21
  %27 = call %struct.vector* @Pvector_alloc(i64 1) #6
  %28 = icmp eq %struct.vector* %27, null
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %26
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 347, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i64 0, i64 0)) #8
  unreachable

; <label>:30                                      ; preds = %26
  %31 = getelementptr inbounds %struct.adtree, %struct.adtree* %11, i64 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.adtree, %struct.adtree* %11, i64 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sitofp i64 %34 to double
  %36 = call double @log(double %35) #6
  %37 = fmul double %36, -5.000000e-01
  %38 = fptrunc double %37 to float
  %39 = sdiv i64 %6, 2
  %40 = add nsw i64 %32, %39
  %41 = sdiv i64 %40, %6
  %42 = icmp slt i64 %41, 1
  %43 = select i1 %42, i64 1, i64 %41
  %44 = mul nsw i64 %43, %5
  %45 = add nsw i64 %6, -1
  %46 = icmp eq i64 %45, %5
  br i1 %46, label %createPartition.exit, label %47

; <label>:47                                      ; preds = %30
  %48 = add nsw i64 %44, %43
  %49 = icmp sgt i64 %48, %32
  %50 = select i1 %49, i64 %32, i64 %48
  br label %createPartition.exit

createPartition.exit:                             ; preds = %30, %47
  %stop.0.i = phi i64 [ %50, %47 ], [ %32, %30 ]
  %51 = icmp slt i64 %44, %stop.0.i
  br i1 %51, label %.lr.ph49, label %.preheader12

.lr.ph49:                                         ; preds = %createPartition.exit
  %52 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0, i32 0
  %53 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0, i32 1
  br label %54

.preheader12.loopexit:                            ; preds = %computeSpecificLocalLogLikelihood.exit2
  %.lcssa = phi float [ %96, %computeSpecificLocalLogLikelihood.exit2 ]
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.loopexit, %createPartition.exit
  %baseLogLikelihood.0.lcssa = phi float [ 0.000000e+00, %createPartition.exit ], [ %.lcssa, %.preheader12.loopexit ]
  br label %.outer13

; <label>:54                                      ; preds = %.lr.ph49, %computeSpecificLocalLogLikelihood.exit2
  %baseLogLikelihood.048 = phi float [ 0.000000e+00, %.lr.ph49 ], [ %96, %computeSpecificLocalLogLikelihood.exit2 ]
  %v.047 = phi i64 [ %44, %.lr.ph49 ], [ %97, %computeSpecificLocalLogLikelihood.exit2 ]
  store i64 %v.047, i64* %52, align 16
  store i64 0, i64* %53, align 8
  %55 = call i64 @adtree_getCount(%struct.adtree* %11, %struct.vector* nonnull %18) #6
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %computeSpecificLocalLogLikelihood.exit, label %57

; <label>:57                                      ; preds = %54
  %58 = sitofp i64 %55 to double
  %59 = load i64, i64* %33, align 8
  %60 = sitofp i64 %59 to double
  %61 = fdiv double %58, %60
  %62 = call i64 @adtree_getCount(%struct.adtree* %11, %struct.vector* nonnull %27) #6
  %63 = icmp slt i64 %62, %55
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %57
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 287, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i64 0, i64 0)) #8
  unreachable

; <label>:65                                      ; preds = %57
  %66 = icmp sgt i64 %62, 0
  br i1 %66, label %68, label %67

; <label>:67                                      ; preds = %65
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 288, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i64 0, i64 0)) #8
  unreachable

; <label>:68                                      ; preds = %65
  %69 = sitofp i64 %62 to double
  %70 = fdiv double %58, %69
  %71 = call double @log(double %70) #6
  %72 = fmul double %61, %71
  %73 = fptrunc double %72 to float
  br label %computeSpecificLocalLogLikelihood.exit

computeSpecificLocalLogLikelihood.exit:           ; preds = %54, %68
  %.0.i = phi float [ %73, %68 ], [ 0.000000e+00, %54 ]
  %74 = fadd float %.0.i, 0.000000e+00
  store i64 1, i64* %53, align 8
  %75 = call i64 @adtree_getCount(%struct.adtree* %11, %struct.vector* nonnull %18) #6
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %computeSpecificLocalLogLikelihood.exit2, label %77

; <label>:77                                      ; preds = %computeSpecificLocalLogLikelihood.exit
  %78 = sitofp i64 %75 to double
  %79 = load i64, i64* %33, align 8
  %80 = sitofp i64 %79 to double
  %81 = fdiv double %78, %80
  %82 = call i64 @adtree_getCount(%struct.adtree* %11, %struct.vector* nonnull %27) #6
  %83 = icmp slt i64 %82, %75
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %77
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 287, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i64 0, i64 0)) #8
  unreachable

; <label>:85                                      ; preds = %77
  %86 = icmp sgt i64 %82, 0
  br i1 %86, label %88, label %87

; <label>:87                                      ; preds = %85
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 288, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i64 0, i64 0)) #8
  unreachable

; <label>:88                                      ; preds = %85
  %89 = sitofp i64 %82 to double
  %90 = fdiv double %78, %89
  %91 = call double @log(double %90) #6
  %92 = fmul double %81, %91
  %93 = fptrunc double %92 to float
  br label %computeSpecificLocalLogLikelihood.exit2

computeSpecificLocalLogLikelihood.exit2:          ; preds = %computeSpecificLocalLogLikelihood.exit, %88
  %.0.i1 = phi float [ %93, %88 ], [ 0.000000e+00, %computeSpecificLocalLogLikelihood.exit ]
  %94 = fadd float %74, %.0.i1
  %95 = getelementptr inbounds float, float* %14, i64 %v.047
  store float %94, float* %95, align 4
  %96 = fadd float %baseLogLikelihood.048, %94
  %97 = add nsw i64 %v.047, 1
  %98 = icmp slt i64 %97, %stop.0.i
  br i1 %98, label %54, label %.preheader12.loopexit

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %.lr.ph45
  call void @llvm.x86.sse2.pause() #6
  %99 = call i64 (...) @RTM_fallback_isLocked() #6
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %._crit_edge46.loopexit, label %.lr.ph45

._crit_edge46.loopexit:                           ; preds = %.lr.ph45
  br label %._crit_edge46

._crit_edge46:                                    ; preds = %._crit_edge46.loopexit, %.outer13
  %101 = icmp slt i32 %tries.0.ph, 2
  br i1 %101, label %118, label %102

; <label>:102                                     ; preds = %._crit_edge46
  %103 = add nsw i32 %tries.0.ph, -1
  %104 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #6, !srcloc !1
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %109, label %.outer13

.outer13:                                         ; preds = %.preheader12, %102
  %tries.0.ph = phi i32 [ 9, %.preheader12 ], [ %103, %102 ]
  %107 = call i64 (...) @RTM_fallback_isLocked() #6
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %._crit_edge46, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %.outer13
  br label %.lr.ph45

; <label>:109                                     ; preds = %102
  %110 = call i64 (...) @RTM_fallback_isLocked() #6
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %113, label %112

; <label>:112                                     ; preds = %109
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %113

; <label>:113                                     ; preds = %109, %112
  %114 = getelementptr inbounds i8, i8* %argPtr, i64 80
  %115 = bitcast i8* %114 to float*
  %116 = load float, float* %115, align 8
  %117 = fadd float %baseLogLikelihood.0.lcssa, %116
  store float %117, float* %115, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #6, !srcloc !3
  br label %123

; <label>:118                                     ; preds = %._crit_edge46
  call void (...) @RTM_fallback_lock() #6
  %119 = getelementptr inbounds i8, i8* %argPtr, i64 80
  %120 = bitcast i8* %119 to float*
  %121 = load float, float* %120, align 8
  %122 = fadd float %baseLogLikelihood.0.lcssa, %121
  store float %122, float* %120, align 8
  call void (...) @RTM_fallback_unlock() #6
  br label %123

; <label>:123                                     ; preds = %118, %113
  %124 = bitcast %struct.query* %parentQuery to i8*
  %125 = call i64 @Pvector_pushBack(%struct.vector* nonnull %27, i8* %124) #6
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %137, label %.preheader11

.preheader11:                                     ; preds = %123
  br i1 %51, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %.preheader11
  %127 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0, i32 0
  %128 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1
  %129 = bitcast %struct.query* %128 to i8*
  %130 = icmp sgt i64 %32, 0
  %131 = sitofp i64 %34 to float
  %132 = getelementptr inbounds %struct.query, %struct.query* %parentQuery, i64 0, i32 0
  %133 = getelementptr inbounds %struct.query, %struct.query* %128, i64 0, i32 0
  %134 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 0, i32 1
  %135 = getelementptr inbounds [2 x %struct.query], [2 x %struct.query]* %queries, i64 0, i64 1, i32 1
  %136 = getelementptr inbounds %struct.query, %struct.query* %parentQuery, i64 0, i32 1
  br label %138

; <label>:137                                     ; preds = %123
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 398, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i64 0, i64 0)) #8
  unreachable

; <label>:138                                     ; preds = %.lr.ph43, %273
  %v.142 = phi i64 [ %44, %.lr.ph43 ], [ %274, %273 ]
  store i64 %v.142, i64* %127, align 16
  %139 = getelementptr inbounds float, float* %14, i64 %v.142
  %140 = load float, float* %139, align 4
  %141 = call i64 @Pvector_pushBack(%struct.vector* nonnull %18, i8* %129) #6
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %144, label %.preheader

.preheader:                                       ; preds = %138
  br i1 %130, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader
  %143 = call i8* @vector_popBack(%struct.vector* nonnull %18) #6
  br label %273

; <label>:144                                     ; preds = %138
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 411, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i64 0, i64 0)) #8
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %233
  %vv.037 = phi i64 [ %234, %233 ], [ 0, %.lr.ph.preheader ]
  %bestLocalLogLikelihood.036 = phi float [ %bestLocalLogLikelihood.1, %233 ], [ %140, %.lr.ph.preheader ]
  %bestLocalIndex.035 = phi i64 [ %bestLocalIndex.1, %233 ], [ %v.142, %.lr.ph.preheader ]
  %145 = icmp eq i64 %vv.037, %v.142
  br i1 %145, label %233, label %146

; <label>:146                                     ; preds = %.lr.ph
  store i64 %vv.037, i64* %132, align 8
  %147 = icmp slt i64 %v.142, %vv.037
  %v.142.vv.037 = select i1 %147, i64 %v.142, i64 %vv.037
  %vv.037.v.142 = select i1 %147, i64 %vv.037, i64 %v.142
  store i64 %v.142.vv.037, i64* %127, align 16
  store i64 %vv.037.v.142, i64* %133, align 16
  store i64 0, i64* %134, align 8
  store i64 0, i64* %135, align 8
  store i64 0, i64* %136, align 8
  %148 = call i64 @adtree_getCount(%struct.adtree* %11, %struct.vector* nonnull %18) #6
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %computeSpecificLocalLogLikelihood.exit4, label %150

; <label>:150                                     ; preds = %146
  %151 = sitofp i64 %148 to double
  %152 = load i64, i64* %33, align 8
  %153 = sitofp i64 %152 to double
  %154 = fdiv double %151, %153
  %155 = call i64 @adtree_getCount(%struct.adtree* %11, %struct.vector* nonnull %27) #6
  %156 = icmp slt i64 %155, %148
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %150
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 287, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i64 0, i64 0)) #8
  unreachable

; <label>:158                                     ; preds = %150
  %159 = icmp sgt i64 %155, 0
  br i1 %159, label %161, label %160

; <label>:160                                     ; preds = %158
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 288, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i64 0, i64 0)) #8
  unreachable

; <label>:161                                     ; preds = %158
  %162 = sitofp i64 %155 to double
  %163 = fdiv double %151, %162
  %164 = call double @log(double %163) #6
  %165 = fmul double %154, %164
  %166 = fptrunc double %165 to float
  br label %computeSpecificLocalLogLikelihood.exit4

computeSpecificLocalLogLikelihood.exit4:          ; preds = %146, %161
  %.0.i3 = phi float [ %166, %161 ], [ 0.000000e+00, %146 ]
  %167 = fadd float %.0.i3, 0.000000e+00
  store i64 0, i64* %134, align 8
  store i64 1, i64* %135, align 8
  %168 = icmp slt i64 %vv.037, %v.142
  %169 = zext i1 %168 to i64
  %170 = xor i64 %169, 1
  store i64 %170, i64* %136, align 8
  %171 = call i64 @adtree_getCount(%struct.adtree* %11, %struct.vector* nonnull %18) #6
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %computeSpecificLocalLogLikelihood.exit6, label %173

; <label>:173                                     ; preds = %computeSpecificLocalLogLikelihood.exit4
  %174 = sitofp i64 %171 to double
  %175 = load i64, i64* %33, align 8
  %176 = sitofp i64 %175 to double
  %177 = fdiv double %174, %176
  %178 = call i64 @adtree_getCount(%struct.adtree* %11, %struct.vector* nonnull %27) #6
  %179 = icmp slt i64 %178, %171
  br i1 %179, label %180, label %181

; <label>:180                                     ; preds = %173
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 287, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i64 0, i64 0)) #8
  unreachable

; <label>:181                                     ; preds = %173
  %182 = icmp sgt i64 %178, 0
  br i1 %182, label %184, label %183

; <label>:183                                     ; preds = %181
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 288, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i64 0, i64 0)) #8
  unreachable

; <label>:184                                     ; preds = %181
  %185 = sitofp i64 %178 to double
  %186 = fdiv double %174, %185
  %187 = call double @log(double %186) #6
  %188 = fmul double %177, %187
  %189 = fptrunc double %188 to float
  br label %computeSpecificLocalLogLikelihood.exit6

computeSpecificLocalLogLikelihood.exit6:          ; preds = %computeSpecificLocalLogLikelihood.exit4, %184
  %.0.i5 = phi float [ %189, %184 ], [ 0.000000e+00, %computeSpecificLocalLogLikelihood.exit4 ]
  %190 = fadd float %167, %.0.i5
  store i64 1, i64* %134, align 8
  store i64 0, i64* %135, align 8
  store i64 %169, i64* %136, align 8
  %191 = call i64 @adtree_getCount(%struct.adtree* %11, %struct.vector* nonnull %18) #6
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %computeSpecificLocalLogLikelihood.exit8, label %193

; <label>:193                                     ; preds = %computeSpecificLocalLogLikelihood.exit6
  %194 = sitofp i64 %191 to double
  %195 = load i64, i64* %33, align 8
  %196 = sitofp i64 %195 to double
  %197 = fdiv double %194, %196
  %198 = call i64 @adtree_getCount(%struct.adtree* %11, %struct.vector* nonnull %27) #6
  %199 = icmp slt i64 %198, %191
  br i1 %199, label %200, label %201

; <label>:200                                     ; preds = %193
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 287, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i64 0, i64 0)) #8
  unreachable

; <label>:201                                     ; preds = %193
  %202 = icmp sgt i64 %198, 0
  br i1 %202, label %204, label %203

; <label>:203                                     ; preds = %201
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 288, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i64 0, i64 0)) #8
  unreachable

; <label>:204                                     ; preds = %201
  %205 = sitofp i64 %198 to double
  %206 = fdiv double %194, %205
  %207 = call double @log(double %206) #6
  %208 = fmul double %197, %207
  %209 = fptrunc double %208 to float
  br label %computeSpecificLocalLogLikelihood.exit8

computeSpecificLocalLogLikelihood.exit8:          ; preds = %computeSpecificLocalLogLikelihood.exit6, %204
  %.0.i7 = phi float [ %209, %204 ], [ 0.000000e+00, %computeSpecificLocalLogLikelihood.exit6 ]
  %210 = fadd float %190, %.0.i7
  store i64 1, i64* %134, align 8
  store i64 1, i64* %135, align 8
  store i64 1, i64* %136, align 8
  %211 = call i64 @adtree_getCount(%struct.adtree* %11, %struct.vector* nonnull %18) #6
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %computeSpecificLocalLogLikelihood.exit10, label %213

; <label>:213                                     ; preds = %computeSpecificLocalLogLikelihood.exit8
  %214 = sitofp i64 %211 to double
  %215 = load i64, i64* %33, align 8
  %216 = sitofp i64 %215 to double
  %217 = fdiv double %214, %216
  %218 = call i64 @adtree_getCount(%struct.adtree* %11, %struct.vector* nonnull %27) #6
  %219 = icmp slt i64 %218, %211
  br i1 %219, label %220, label %221

; <label>:220                                     ; preds = %213
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 287, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i64 0, i64 0)) #8
  unreachable

; <label>:221                                     ; preds = %213
  %222 = icmp sgt i64 %218, 0
  br i1 %222, label %224, label %223

; <label>:223                                     ; preds = %221
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 288, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i64 0, i64 0)) #8
  unreachable

; <label>:224                                     ; preds = %221
  %225 = sitofp i64 %218 to double
  %226 = fdiv double %214, %225
  %227 = call double @log(double %226) #6
  %228 = fmul double %217, %227
  %229 = fptrunc double %228 to float
  br label %computeSpecificLocalLogLikelihood.exit10

computeSpecificLocalLogLikelihood.exit10:         ; preds = %computeSpecificLocalLogLikelihood.exit8, %224
  %.0.i9 = phi float [ %229, %224 ], [ 0.000000e+00, %computeSpecificLocalLogLikelihood.exit8 ]
  %230 = fadd float %210, %.0.i9
  %231 = fcmp ogt float %230, %bestLocalLogLikelihood.036
  br i1 %231, label %232, label %233

; <label>:232                                     ; preds = %computeSpecificLocalLogLikelihood.exit10
  br label %233

; <label>:233                                     ; preds = %computeSpecificLocalLogLikelihood.exit10, %232, %.lr.ph
  %bestLocalIndex.1 = phi i64 [ %bestLocalIndex.035, %.lr.ph ], [ %vv.037, %232 ], [ %bestLocalIndex.035, %computeSpecificLocalLogLikelihood.exit10 ]
  %bestLocalLogLikelihood.1 = phi float [ %bestLocalLogLikelihood.036, %.lr.ph ], [ %230, %232 ], [ %bestLocalLogLikelihood.036, %computeSpecificLocalLogLikelihood.exit10 ]
  %234 = add nuw nsw i64 %vv.037, 1
  %235 = icmp slt i64 %234, %32
  br i1 %235, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %233
  %bestLocalLogLikelihood.1.lcssa = phi float [ %bestLocalLogLikelihood.1, %233 ]
  %bestLocalIndex.1.lcssa = phi i64 [ %bestLocalIndex.1, %233 ]
  %236 = call i8* @vector_popBack(%struct.vector* nonnull %18) #6
  %237 = icmp eq i64 %bestLocalIndex.1.lcssa, %v.142
  br i1 %237, label %273, label %238

; <label>:238                                     ; preds = %._crit_edge
  %239 = fadd float %baseLogLikelihood.0.lcssa, %bestLocalLogLikelihood.1.lcssa
  %240 = load float, float* %139, align 4
  %241 = fsub float %239, %240
  %242 = fmul float %131, %241
  %243 = fadd float %38, %242
  %244 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %17, i64 %v.142
  %245 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %244, i64 0, i32 0
  store i32 0, i32* %245, align 8
  %246 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %17, i64 %v.142, i32 1
  store i64 %bestLocalIndex.1.lcssa, i64* %246, align 8
  %247 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %17, i64 %v.142, i32 2
  store i64 %v.142, i64* %247, align 8
  %248 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %17, i64 %v.142, i32 3
  store float %243, float* %248, align 8
  br label %.outer

.outer:                                           ; preds = %254, %238
  %tries2.0.ph = phi i32 [ %255, %254 ], [ 9, %238 ]
  %249 = call i64 (...) @RTM_fallback_isLocked() #6
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %._crit_edge41, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %.outer
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %.lr.ph40
  call void @llvm.x86.sse2.pause() #6
  %251 = call i64 (...) @RTM_fallback_isLocked() #6
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %._crit_edge41.loopexit, label %.lr.ph40

._crit_edge41.loopexit:                           ; preds = %.lr.ph40
  br label %._crit_edge41

._crit_edge41:                                    ; preds = %._crit_edge41.loopexit, %.outer
  %253 = icmp slt i32 %tries2.0.ph, 2
  br i1 %253, label %266, label %254

; <label>:254                                     ; preds = %._crit_edge41
  %255 = add nsw i32 %tries2.0.ph, -1
  %256 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #6, !srcloc !1
  %257 = trunc i64 %256 to i32
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %259, label %.outer

; <label>:259                                     ; preds = %254
  %260 = call i64 (...) @RTM_fallback_isLocked() #6
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %263, label %262

; <label>:262                                     ; preds = %259
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %263

; <label>:263                                     ; preds = %259, %262
  %264 = bitcast %struct.learner_task* %244 to i8*
  %265 = call i64 @TMlist_insert(%struct.list* %9, i8* %264) #6
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #6, !srcloc !3
  br label %269

; <label>:266                                     ; preds = %._crit_edge41
  call void (...) @RTM_fallback_lock() #6
  %267 = bitcast %struct.learner_task* %244 to i8*
  %268 = call i64 @TMlist_insert(%struct.list* %9, i8* %267) #6
  call void (...) @RTM_fallback_unlock() #6
  br label %269

; <label>:269                                     ; preds = %266, %263
  %270 = phi i64 [ %268, %266 ], [ %265, %263 ]
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %273

; <label>:272                                     ; preds = %269
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 484, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.createTaskList, i64 0, i64 0)) #8
  unreachable

; <label>:273                                     ; preds = %._crit_edge.thread, %269, %._crit_edge
  %274 = add nsw i64 %v.142, 1
  %275 = icmp slt i64 %274, %stop.0.i
  br i1 %275, label %138, label %._crit_edge44.loopexit

._crit_edge44.loopexit:                           ; preds = %273
  br label %._crit_edge44

._crit_edge44:                                    ; preds = %._crit_edge44.loopexit, %.preheader11
  call void @Pvector_free(%struct.vector* nonnull %18) #6
  call void @Pvector_free(%struct.vector* nonnull %27) #6
  %276 = call i64 (...) @thread_getId() #6
  %277 = trunc i64 %276 to i32
  %278 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %279 = load i32, i32* %278, align 4
  call void @SimRoiEnd(i32 %277, i32 %279) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @learnStructure(i8* %argPtr) #0 {
  %it.i9 = alloca %struct.list_node*, align 8
  %it.i = alloca %struct.list_node*, align 8
  %1 = tail call i64 (...) @thread_getId() #6
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = tail call i64 (...) @thread_getId() #6
  %4 = trunc i64 %3 to i32
  tail call void @SimRoiStart(i32 %4) #6
  %5 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %6 = bitcast i8* %5 to %struct.net**
  %7 = load %struct.net*, %struct.net** %6, align 8
  %8 = bitcast i8* %argPtr to %struct.adtree**
  %9 = load %struct.adtree*, %struct.adtree** %8, align 8
  %10 = getelementptr inbounds %struct.adtree, %struct.adtree* %9, i64 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %13 = bitcast i8* %12 to float**
  %14 = load float*, float** %13, align 8
  %15 = getelementptr inbounds i8, i8* %argPtr, i64 208
  %16 = bitcast i8* %15 to %struct.list**
  %17 = load %struct.list*, %struct.list** %16, align 8
  %18 = load float, float* @global_operationQualityFactor, align 4
  %19 = getelementptr inbounds %struct.adtree, %struct.adtree* %9, i64 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = tail call %struct.bitmap* @Pbitmap_alloc(i64 %20) #6
  %22 = icmp eq %struct.bitmap* %21, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1157, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i64 0, i64 0)) #8
  unreachable

; <label>:24                                      ; preds = %0
  %25 = tail call %struct.queue* @Pqueue_alloc(i64 -1) #6
  %26 = icmp eq %struct.queue* %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %24
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1159, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i64 0, i64 0)) #8
  unreachable

; <label>:28                                      ; preds = %24
  %29 = load i64, i64* %19, align 8
  %30 = shl i64 %29, 4
  %31 = tail call noalias i8* @malloc(i64 %30) #6
  %32 = bitcast i8* %31 to %struct.query*
  %33 = icmp eq i8* %31, null
  br i1 %33, label %40, label %.preheader43

.preheader43:                                     ; preds = %28
  %34 = icmp sgt i64 %29, 0
  br i1 %34, label %.lr.ph115.preheader, label %._crit_edge116

.lr.ph115.preheader:                              ; preds = %.preheader43
  %35 = add i64 %29, -1
  %xtraiter = and i64 %29, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph115.preheader.split, label %.lr.ph115.prol.preheader

.lr.ph115.prol.preheader:                         ; preds = %.lr.ph115.preheader
  br label %.lr.ph115.prol

.lr.ph115.prol:                                   ; preds = %.lr.ph115.prol.preheader, %.lr.ph115.prol
  %v.0114.prol = phi i64 [ %38, %.lr.ph115.prol ], [ 0, %.lr.ph115.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %.lr.ph115.prol ], [ %xtraiter, %.lr.ph115.prol.preheader ]
  %36 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %v.0114.prol, i32 0
  store i64 %v.0114.prol, i64* %36, align 8
  %37 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %v.0114.prol, i32 1
  store i64 -1, i64* %37, align 8
  %38 = add nuw nsw i64 %v.0114.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph115.preheader.split.loopexit, label %.lr.ph115.prol, !llvm.loop !4

.lr.ph115.preheader.split.loopexit:               ; preds = %.lr.ph115.prol
  %.lcssa343 = phi i64 [ %38, %.lr.ph115.prol ]
  br label %.lr.ph115.preheader.split

.lr.ph115.preheader.split:                        ; preds = %.lr.ph115.preheader.split.loopexit, %.lr.ph115.preheader
  %v.0114.unr = phi i64 [ 0, %.lr.ph115.preheader ], [ %.lcssa343, %.lr.ph115.preheader.split.loopexit ]
  %39 = icmp ult i64 %35, 3
  br i1 %39, label %._crit_edge116.loopexit, label %.lr.ph115.preheader.split.split

.lr.ph115.preheader.split.split:                  ; preds = %.lr.ph115.preheader.split
  br label %.lr.ph115

; <label>:40                                      ; preds = %28
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1163, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i64 0, i64 0)) #8
  unreachable

.lr.ph115:                                        ; preds = %.lr.ph115, %.lr.ph115.preheader.split.split
  %v.0114 = phi i64 [ %v.0114.unr, %.lr.ph115.preheader.split.split ], [ %52, %.lr.ph115 ]
  %41 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %v.0114, i32 0
  store i64 %v.0114, i64* %41, align 8
  %42 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %v.0114, i32 1
  store i64 -1, i64* %42, align 8
  %43 = add nuw nsw i64 %v.0114, 1
  %44 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %43, i32 0
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %43, i32 1
  store i64 -1, i64* %45, align 8
  %46 = add nsw i64 %v.0114, 2
  %47 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %46, i32 0
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %46, i32 1
  store i64 -1, i64* %48, align 8
  %49 = add nsw i64 %v.0114, 3
  %50 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %49, i32 0
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %49, i32 1
  store i64 -1, i64* %51, align 8
  %52 = add nsw i64 %v.0114, 4
  %exitcond.3 = icmp eq i64 %52, %29
  br i1 %exitcond.3, label %._crit_edge116.loopexit.unr-lcssa, label %.lr.ph115

._crit_edge116.loopexit.unr-lcssa:                ; preds = %.lr.ph115
  br label %._crit_edge116.loopexit

._crit_edge116.loopexit:                          ; preds = %.lr.ph115.preheader.split, %._crit_edge116.loopexit.unr-lcssa
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %._crit_edge116.loopexit, %.preheader43
  %53 = sitofp i64 %11 to double
  %54 = tail call double @log(double %53) #6
  %55 = fmul double %54, -5.000000e-01
  %56 = fptrunc double %55 to float
  %57 = tail call %struct.vector* @Pvector_alloc(i64 1) #6
  %58 = icmp eq %struct.vector* %57, null
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %._crit_edge116
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1173, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i64 0, i64 0)) #8
  unreachable

; <label>:60                                      ; preds = %._crit_edge116
  %61 = tail call %struct.vector* @Pvector_alloc(i64 1) #6
  %62 = icmp eq %struct.vector* %61, null
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %60
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1175, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i64 0, i64 0)) #8
  unreachable

; <label>:64                                      ; preds = %60
  %65 = tail call %struct.vector* @Pvector_alloc(i64 1) #6
  %66 = icmp eq %struct.vector* %65, null
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %64
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1177, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i64 0, i64 0)) #8
  unreachable

; <label>:68                                      ; preds = %64
  %69 = tail call %struct.vector* @Pvector_alloc(i64 1) #6
  %70 = icmp eq %struct.vector* %69, null
  br i1 %70, label %80, label %.preheader42

.preheader42:                                     ; preds = %68
  %71 = bitcast %struct.list_node** %it.i to i8*
  %72 = getelementptr inbounds i8, i8* %argPtr, i64 272
  %73 = bitcast i8* %72 to i64*
  %74 = getelementptr inbounds i8, i8* %argPtr, i64 80
  %75 = bitcast i8* %74 to float*
  %76 = sitofp i64 %11 to float
  %77 = bitcast %struct.list_node** %it.i9 to i8*
  %78 = getelementptr inbounds i8, i8* %argPtr, i64 144
  %79 = bitcast i8* %78 to %struct.learner_task**
  br label %.backedge

; <label>:80                                      ; preds = %68
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1179, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i64 0, i64 0)) #8
  unreachable

.backedge:                                        ; preds = %.backedge.backedge, %.preheader42
  %.sroa.014.0 = phi i64 [ undef, %.preheader42 ], [ %564, %.backedge.backedge ]
  %.sroa.019.0 = phi i64 [ undef, %.preheader42 ], [ %483, %.backedge.backedge ]
  %.sroa.0.0 = phi i64 [ undef, %.preheader42 ], [ %678, %.backedge.backedge ]
  %bestTask.sroa.0.sroa.5.0 = phi i32 [ undef, %.preheader42 ], [ %bestTask.sroa.0.sroa.5.3, %.backedge.backedge ]
  br label %.outer41

.outer41:                                         ; preds = %87, %.backedge
  %tries.0.ph = phi i32 [ %88, %87 ], [ 9, %.backedge ]
  %81 = call i64 (...) @RTM_fallback_isLocked() #6
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.outer41
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  call void @llvm.x86.sse2.pause() #6
  %83 = call i64 (...) @RTM_fallback_isLocked() #6
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.outer41
  %85 = icmp slt i32 %tries.0.ph, 2
  br i1 %85, label %86, label %87

; <label>:86                                      ; preds = %._crit_edge
  %tries.0.ph.lcssa = phi i32 [ %tries.0.ph, %._crit_edge ]
  call void (...) @RTM_fallback_lock() #6
  br label %96

; <label>:87                                      ; preds = %._crit_edge
  %88 = add nsw i32 %tries.0.ph, -1
  %89 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #6, !srcloc !1
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %.outer41

; <label>:92                                      ; preds = %87
  %tries.0.ph.lcssa299 = phi i32 [ %tries.0.ph, %87 ]
  %93 = call i64 (...) @RTM_fallback_isLocked() #6
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %96, label %95

; <label>:95                                      ; preds = %92
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %96

; <label>:96                                      ; preds = %92, %95, %86
  %tries.0.ph300 = phi i32 [ %tries.0.ph.lcssa299, %92 ], [ %tries.0.ph.lcssa299, %95 ], [ %tries.0.ph.lcssa, %86 ]
  call void @llvm.lifetime.start(i64 8, i8* %71)
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it.i, %struct.list* %17) #6
  %97 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it.i, %struct.list* %17) #9
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %TMpopTask.exit, label %99

; <label>:99                                      ; preds = %96
  %100 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it.i, %struct.list* %17) #6
  %101 = bitcast i8* %100 to %struct.learner_task*
  %102 = call i64 @TMlist_remove(%struct.list* %17, i8* %100) #6
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %TMpopTask.exit

; <label>:104                                     ; preds = %99
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 521, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.TMpopTask, i64 0, i64 0)) #8
  unreachable

TMpopTask.exit:                                   ; preds = %96, %99
  %taskPtr.0.i = phi %struct.learner_task* [ %101, %99 ], [ null, %96 ]
  call void @llvm.lifetime.end(i64 8, i8* %71)
  %105 = icmp sgt i32 %tries.0.ph300, 1
  br i1 %105, label %106, label %107

; <label>:106                                     ; preds = %TMpopTask.exit
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #6, !srcloc !3
  br label %108

; <label>:107                                     ; preds = %TMpopTask.exit
  call void (...) @RTM_fallback_unlock() #6
  br label %108

; <label>:108                                     ; preds = %107, %106
  %109 = icmp eq %struct.learner_task* %taskPtr.0.i, null
  br i1 %109, label %721, label %110

; <label>:110                                     ; preds = %108
  %111 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %taskPtr.0.i, i64 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %taskPtr.0.i, i64 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %taskPtr.0.i, i64 0, i32 2
  %116 = load i64, i64* %115, align 8
  br label %.outer40

.outer40:                                         ; preds = %123, %110
  %tries2.0.ph = phi i32 [ %124, %123 ], [ 9, %110 ]
  %117 = call i64 (...) @RTM_fallback_isLocked() #6
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %._crit_edge91, label %.lr.ph90.preheader

.lr.ph90.preheader:                               ; preds = %.outer40
  br label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %.lr.ph90
  call void @llvm.x86.sse2.pause() #6
  %119 = call i64 (...) @RTM_fallback_isLocked() #6
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %._crit_edge91.loopexit, label %.lr.ph90

._crit_edge91.loopexit:                           ; preds = %.lr.ph90
  br label %._crit_edge91

._crit_edge91:                                    ; preds = %._crit_edge91.loopexit, %.outer40
  %121 = icmp slt i32 %tries2.0.ph, 2
  br i1 %121, label %122, label %123

; <label>:122                                     ; preds = %._crit_edge91
  %tries2.0.ph.lcssa = phi i32 [ %tries2.0.ph, %._crit_edge91 ]
  call void (...) @RTM_fallback_lock() #6
  br label %132

; <label>:123                                     ; preds = %._crit_edge91
  %124 = add nsw i32 %tries2.0.ph, -1
  %125 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 0, i64 3, i64 4294967295) #6, !srcloc !1
  %126 = trunc i64 %125 to i32
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %.outer40

; <label>:128                                     ; preds = %123
  %tries2.0.ph.lcssa301 = phi i32 [ %tries2.0.ph, %123 ]
  %129 = call i64 (...) @RTM_fallback_isLocked() #6
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %132, label %131

; <label>:131                                     ; preds = %128
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %132

; <label>:132                                     ; preds = %128, %131, %122
  %tries2.0.ph302 = phi i32 [ %tries2.0.ph.lcssa301, %128 ], [ %tries2.0.ph.lcssa301, %131 ], [ %tries2.0.ph.lcssa, %122 ]
  switch i32 %112, label %142 [
    i32 0, label %133
    i32 1, label %select.unfold
    i32 2, label %139
  ]

; <label>:133                                     ; preds = %132
  %134 = call i64 @TMnet_hasEdge(%struct.net* %7, i64 %114, i64 %116) #6
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %143

; <label>:136                                     ; preds = %133
  %137 = call i64 @TMnet_isPath(%struct.net* %7, i64 %116, i64 %114, %struct.bitmap* nonnull %21, %struct.queue* nonnull %25) #6
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %select.unfold, label %143

; <label>:139                                     ; preds = %132
  call void @TMnet_applyOperation(%struct.net* %7, i32 1, i64 %114, i64 %116) #6
  %140 = call i64 @TMnet_isPath(%struct.net* %7, i64 %114, i64 %116, %struct.bitmap* nonnull %21, %struct.queue* nonnull %25) #6
  %141 = icmp eq i64 %140, 0
  call void @TMnet_applyOperation(%struct.net* %7, i32 0, i64 %114, i64 %116) #6
  br i1 %141, label %select.unfold, label %143

; <label>:142                                     ; preds = %132
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1245, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i64 0, i64 0)) #8
  unreachable

select.unfold:                                    ; preds = %139, %132, %136
  call void @TMnet_applyOperation(%struct.net* %7, i32 %112, i64 %114, i64 %116) #6
  br label %143

; <label>:143                                     ; preds = %133, %136, %139, %select.unfold
  %144 = phi i1 [ true, %select.unfold ], [ false, %139 ], [ false, %136 ], [ false, %133 ]
  %145 = icmp sgt i32 %tries2.0.ph302, 1
  br i1 %145, label %146, label %147

; <label>:146                                     ; preds = %143
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 3) #6, !srcloc !3
  br label %148

; <label>:147                                     ; preds = %143
  call void (...) @RTM_fallback_unlock() #6
  br label %148

; <label>:148                                     ; preds = %147, %146
  br i1 %144, label %149, label %343

; <label>:149                                     ; preds = %148
  switch i32 %112, label %342 [
    i32 0, label %.outer31.preheader
    i32 1, label %.outer35.preheader
    i32 2, label %.outer39.preheader
  ]

.outer39.preheader:                               ; preds = %149
  br label %.outer39

.outer35.preheader:                               ; preds = %149
  br label %.outer35

.outer31.preheader:                               ; preds = %149
  br label %.outer31

.outer31:                                         ; preds = %.outer31.preheader, %156
  %tries4.0.ph = phi i32 [ %157, %156 ], [ 9, %.outer31.preheader ]
  %150 = call i64 (...) @RTM_fallback_isLocked() #6
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %._crit_edge101, label %.lr.ph100.preheader

.lr.ph100.preheader:                              ; preds = %.outer31
  br label %.lr.ph100

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %.lr.ph100
  call void @llvm.x86.sse2.pause() #6
  %152 = call i64 (...) @RTM_fallback_isLocked() #6
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %._crit_edge101.loopexit, label %.lr.ph100

._crit_edge101.loopexit:                          ; preds = %.lr.ph100
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %._crit_edge101.loopexit, %.outer31
  %154 = icmp slt i32 %tries4.0.ph, 2
  br i1 %154, label %155, label %156

; <label>:155                                     ; preds = %._crit_edge101
  %tries4.0.ph.lcssa = phi i32 [ %tries4.0.ph, %._crit_edge101 ]
  call void (...) @RTM_fallback_lock() #6
  br label %165

; <label>:156                                     ; preds = %._crit_edge101
  %157 = add nsw i32 %tries4.0.ph, -1
  %158 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 4, i64 0, i64 4, i64 4294967295) #6, !srcloc !1
  %159 = trunc i64 %158 to i32
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %.outer31

; <label>:161                                     ; preds = %156
  %tries4.0.ph.lcssa309 = phi i32 [ %tries4.0.ph, %156 ]
  %162 = call i64 (...) @RTM_fallback_isLocked() #6
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %165, label %164

; <label>:164                                     ; preds = %161
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %165

; <label>:165                                     ; preds = %161, %164, %155
  %tries4.0.ph310 = phi i32 [ %tries4.0.ph.lcssa309, %161 ], [ %tries4.0.ph.lcssa309, %164 ], [ %tries4.0.ph.lcssa, %155 ]
  call fastcc void @TMpopulateParentQueryVector(%struct.net* %7, i64 %116, %struct.query* %32, %struct.vector* %61) #6
  %166 = call i64 @Pvector_copy(%struct.vector* %57, %struct.vector* %61) #6
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %169

; <label>:168                                     ; preds = %165
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 619, i8* nonnull getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TMpopulateQueryVectors, i64 0, i64 0)) #8
  unreachable

; <label>:169                                     ; preds = %165
  %170 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %116
  %171 = bitcast %struct.query* %170 to i8*
  %172 = call i64 @Pvector_pushBack(%struct.vector* %57, i8* %171) #6
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %TMpopulateQueryVectors.exit

; <label>:174                                     ; preds = %169
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 621, i8* nonnull getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TMpopulateQueryVectors, i64 0, i64 0)) #8
  unreachable

TMpopulateQueryVectors.exit:                      ; preds = %169
  call void @vector_sort(%struct.vector* %57, i32 (i8*, i8*)* nonnull @compareQuery) #6
  %175 = call i64 @vector_getSize(%struct.vector* %61) #6
  %176 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %116, i32 1
  store i64 0, i64* %176, align 8
  %177 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %175, %struct.adtree* %9, %struct.query* %32, %struct.vector* %57, %struct.vector* %61) #6
  %178 = fadd float %177, 0.000000e+00
  store i64 1, i64* %176, align 8
  %179 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %175, %struct.adtree* %9, %struct.query* %32, %struct.vector* %57, %struct.vector* %61) #6
  %180 = fadd float %178, %179
  store i64 -1, i64* %176, align 8
  %181 = getelementptr inbounds float, float* %14, i64 %116
  %182 = load float, float* %181, align 4
  %183 = fsub float %182, %180
  %184 = fadd float %183, 0.000000e+00
  store float %180, float* %181, align 4
  %185 = icmp sgt i32 %tries4.0.ph310, 1
  br i1 %185, label %186, label %187

; <label>:186                                     ; preds = %TMpopulateQueryVectors.exit
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 4) #6, !srcloc !3
  br label %.outer29.preheader

; <label>:187                                     ; preds = %TMpopulateQueryVectors.exit
  call void (...) @RTM_fallback_unlock() #6
  br label %.outer29.preheader

.outer29.preheader:                               ; preds = %187, %186
  br label %.outer29

.outer29:                                         ; preds = %.outer29.preheader, %193
  %tries6.0.ph = phi i32 [ %194, %193 ], [ 9, %.outer29.preheader ]
  %188 = call i64 (...) @RTM_fallback_isLocked() #6
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %._crit_edge103, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %.outer29
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %.lr.ph102
  call void @llvm.x86.sse2.pause() #6
  %190 = call i64 (...) @RTM_fallback_isLocked() #6
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %._crit_edge103.loopexit, label %.lr.ph102

._crit_edge103.loopexit:                          ; preds = %.lr.ph102
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %.outer29
  %192 = icmp slt i32 %tries6.0.ph, 2
  br i1 %192, label %205, label %193

; <label>:193                                     ; preds = %._crit_edge103
  %194 = add nsw i32 %tries6.0.ph, -1
  %195 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 5, i64 0, i64 5, i64 4294967295) #6, !srcloc !1
  %196 = trunc i64 %195 to i32
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %.outer29

; <label>:198                                     ; preds = %193
  %199 = call i64 (...) @RTM_fallback_isLocked() #6
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %202, label %201

; <label>:201                                     ; preds = %198
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %202

; <label>:202                                     ; preds = %198, %201
  %203 = load i64, i64* %73, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* %73, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 5) #6, !srcloc !3
  br label %343

; <label>:205                                     ; preds = %._crit_edge103
  call void (...) @RTM_fallback_lock() #6
  %206 = load i64, i64* %73, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %73, align 8
  call void (...) @RTM_fallback_unlock() #6
  br label %343

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %.lr.ph96
  call void @llvm.x86.sse2.pause() #6
  %208 = call i64 (...) @RTM_fallback_isLocked() #6
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %._crit_edge97.loopexit, label %.lr.ph96

._crit_edge97.loopexit:                           ; preds = %.lr.ph96
  br label %._crit_edge97

._crit_edge97:                                    ; preds = %._crit_edge97.loopexit, %.outer35
  %210 = icmp slt i32 %tries8.0.ph, 2
  br i1 %210, label %211, label %212

; <label>:211                                     ; preds = %._crit_edge97
  %tries8.0.ph.lcssa = phi i32 [ %tries8.0.ph, %._crit_edge97 ]
  call void (...) @RTM_fallback_lock() #6
  br label %223

; <label>:212                                     ; preds = %._crit_edge97
  %213 = add nsw i32 %tries8.0.ph, -1
  %214 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 6, i64 0, i64 6, i64 4294967295) #6, !srcloc !1
  %215 = trunc i64 %214 to i32
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %219, label %.outer35

.outer35:                                         ; preds = %.outer35.preheader, %212
  %tries8.0.ph = phi i32 [ %213, %212 ], [ 9, %.outer35.preheader ]
  %217 = call i64 (...) @RTM_fallback_isLocked() #6
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %._crit_edge97, label %.lr.ph96.preheader

.lr.ph96.preheader:                               ; preds = %.outer35
  br label %.lr.ph96

; <label>:219                                     ; preds = %212
  %tries8.0.ph.lcssa307 = phi i32 [ %tries8.0.ph, %212 ]
  %220 = call i64 (...) @RTM_fallback_isLocked() #6
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %223, label %222

; <label>:222                                     ; preds = %219
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %223

; <label>:223                                     ; preds = %219, %222, %211
  %tries8.0.ph308 = phi i32 [ %tries8.0.ph.lcssa307, %219 ], [ %tries8.0.ph.lcssa307, %222 ], [ %tries8.0.ph.lcssa, %211 ]
  call fastcc void @TMpopulateParentQueryVector(%struct.net* %7, i64 %114, %struct.query* %32, %struct.vector* %61) #6
  %224 = call i64 @Pvector_copy(%struct.vector* %57, %struct.vector* %61) #6
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %227

; <label>:226                                     ; preds = %223
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 619, i8* nonnull getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TMpopulateQueryVectors, i64 0, i64 0)) #8
  unreachable

; <label>:227                                     ; preds = %223
  %228 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %114
  %229 = bitcast %struct.query* %228 to i8*
  %230 = call i64 @Pvector_pushBack(%struct.vector* %57, i8* %229) #6
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %TMpopulateQueryVectors.exit6

; <label>:232                                     ; preds = %227
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 621, i8* nonnull getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TMpopulateQueryVectors, i64 0, i64 0)) #8
  unreachable

TMpopulateQueryVectors.exit6:                     ; preds = %227
  call void @vector_sort(%struct.vector* %57, i32 (i8*, i8*)* nonnull @compareQuery) #6
  %233 = call i64 @vector_getSize(%struct.vector* %61) #6
  %234 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %114, i32 1
  store i64 0, i64* %234, align 8
  %235 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %233, %struct.adtree* %9, %struct.query* %32, %struct.vector* %57, %struct.vector* %61) #6
  %236 = fadd float %235, 0.000000e+00
  store i64 1, i64* %234, align 8
  %237 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %233, %struct.adtree* %9, %struct.query* %32, %struct.vector* %57, %struct.vector* %61) #6
  %238 = fadd float %236, %237
  store i64 -1, i64* %234, align 8
  %239 = getelementptr inbounds float, float* %14, i64 %114
  %240 = load float, float* %239, align 4
  %241 = fsub float %240, %238
  %242 = fadd float %241, 0.000000e+00
  store float %238, float* %239, align 4
  %243 = icmp sgt i32 %tries8.0.ph308, 1
  br i1 %243, label %244, label %245

; <label>:244                                     ; preds = %TMpopulateQueryVectors.exit6
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 6) #6, !srcloc !3
  br label %.outer33.preheader

; <label>:245                                     ; preds = %TMpopulateQueryVectors.exit6
  call void (...) @RTM_fallback_unlock() #6
  br label %.outer33.preheader

.outer33.preheader:                               ; preds = %245, %244
  br label %.outer33

.outer33:                                         ; preds = %.outer33.preheader, %251
  %tries10.0.ph = phi i32 [ %252, %251 ], [ 9, %.outer33.preheader ]
  %246 = call i64 (...) @RTM_fallback_isLocked() #6
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %._crit_edge99, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %.outer33
  br label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %.lr.ph98
  call void @llvm.x86.sse2.pause() #6
  %248 = call i64 (...) @RTM_fallback_isLocked() #6
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %._crit_edge99.loopexit, label %.lr.ph98

._crit_edge99.loopexit:                           ; preds = %.lr.ph98
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %._crit_edge99.loopexit, %.outer33
  %250 = icmp slt i32 %tries10.0.ph, 2
  br i1 %250, label %263, label %251

; <label>:251                                     ; preds = %._crit_edge99
  %252 = add nsw i32 %tries10.0.ph, -1
  %253 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 7, i64 0, i64 7, i64 4294967295) #6, !srcloc !1
  %254 = trunc i64 %253 to i32
  %255 = icmp eq i32 %254, -1
  br i1 %255, label %256, label %.outer33

; <label>:256                                     ; preds = %251
  %257 = call i64 (...) @RTM_fallback_isLocked() #6
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %260, label %259

; <label>:259                                     ; preds = %256
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %260

; <label>:260                                     ; preds = %256, %259
  %261 = load i64, i64* %73, align 8
  %262 = add nsw i64 %261, -1
  store i64 %262, i64* %73, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 7) #6, !srcloc !3
  br label %343

; <label>:263                                     ; preds = %._crit_edge99
  call void (...) @RTM_fallback_lock() #6
  %264 = load i64, i64* %73, align 8
  %265 = add nsw i64 %264, -1
  store i64 %265, i64* %73, align 8
  call void (...) @RTM_fallback_unlock() #6
  br label %343

.lr.ph92:                                         ; preds = %.lr.ph92.preheader, %.lr.ph92
  call void @llvm.x86.sse2.pause() #6
  %266 = call i64 (...) @RTM_fallback_isLocked() #6
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %._crit_edge93.loopexit, label %.lr.ph92

._crit_edge93.loopexit:                           ; preds = %.lr.ph92
  br label %._crit_edge93

._crit_edge93:                                    ; preds = %._crit_edge93.loopexit, %.outer39
  %268 = icmp slt i32 %tries13.0.ph, 2
  br i1 %268, label %269, label %270

; <label>:269                                     ; preds = %._crit_edge93
  %tries13.0.ph.lcssa = phi i32 [ %tries13.0.ph, %._crit_edge93 ]
  call void (...) @RTM_fallback_lock() #6
  br label %281

; <label>:270                                     ; preds = %._crit_edge93
  %271 = add nsw i32 %tries13.0.ph, -1
  %272 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 8, i64 0, i64 8, i64 4294967295) #6, !srcloc !1
  %273 = trunc i64 %272 to i32
  %274 = icmp eq i32 %273, -1
  br i1 %274, label %277, label %.outer39

.outer39:                                         ; preds = %.outer39.preheader, %270
  %tries13.0.ph = phi i32 [ %271, %270 ], [ 9, %.outer39.preheader ]
  %275 = call i64 (...) @RTM_fallback_isLocked() #6
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %._crit_edge93, label %.lr.ph92.preheader

.lr.ph92.preheader:                               ; preds = %.outer39
  br label %.lr.ph92

; <label>:277                                     ; preds = %270
  %tries13.0.ph.lcssa303 = phi i32 [ %tries13.0.ph, %270 ]
  %278 = call i64 (...) @RTM_fallback_isLocked() #6
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %281, label %280

; <label>:280                                     ; preds = %277
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %281

; <label>:281                                     ; preds = %277, %280, %269
  %tries13.0.ph304 = phi i32 [ %tries13.0.ph.lcssa303, %277 ], [ %tries13.0.ph.lcssa303, %280 ], [ %tries13.0.ph.lcssa, %269 ]
  call fastcc void @TMpopulateParentQueryVector(%struct.net* %7, i64 %114, %struct.query* %32, %struct.vector* %61) #6
  %282 = call i64 @Pvector_copy(%struct.vector* %57, %struct.vector* %61) #6
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %285

; <label>:284                                     ; preds = %281
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 619, i8* nonnull getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TMpopulateQueryVectors, i64 0, i64 0)) #8
  unreachable

; <label>:285                                     ; preds = %281
  %286 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %114
  %287 = bitcast %struct.query* %286 to i8*
  %288 = call i64 @Pvector_pushBack(%struct.vector* %57, i8* %287) #6
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %TMpopulateQueryVectors.exit7

; <label>:290                                     ; preds = %285
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 621, i8* nonnull getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TMpopulateQueryVectors, i64 0, i64 0)) #8
  unreachable

TMpopulateQueryVectors.exit7:                     ; preds = %285
  call void @vector_sort(%struct.vector* %57, i32 (i8*, i8*)* nonnull @compareQuery) #6
  %291 = call i64 @vector_getSize(%struct.vector* %61) #6
  %292 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %114, i32 1
  store i64 0, i64* %292, align 8
  %293 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %291, %struct.adtree* %9, %struct.query* %32, %struct.vector* %57, %struct.vector* %61) #6
  %294 = fadd float %293, 0.000000e+00
  store i64 1, i64* %292, align 8
  %295 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %291, %struct.adtree* %9, %struct.query* %32, %struct.vector* %57, %struct.vector* %61) #6
  %296 = fadd float %294, %295
  store i64 -1, i64* %292, align 8
  %297 = getelementptr inbounds float, float* %14, i64 %114
  %298 = load float, float* %297, align 4
  %299 = fsub float %298, %296
  %300 = fadd float %299, 0.000000e+00
  store float %296, float* %297, align 4
  %301 = icmp sgt i32 %tries13.0.ph304, 1
  br i1 %301, label %302, label %303

; <label>:302                                     ; preds = %TMpopulateQueryVectors.exit7
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 8) #6, !srcloc !3
  br label %.outer37.preheader

; <label>:303                                     ; preds = %TMpopulateQueryVectors.exit7
  call void (...) @RTM_fallback_unlock() #6
  br label %.outer37.preheader

.outer37.preheader:                               ; preds = %303, %302
  br label %.outer37

.outer37:                                         ; preds = %.outer37.preheader, %310
  %tries16.0.ph = phi i32 [ %311, %310 ], [ 9, %.outer37.preheader ]
  %304 = call i64 (...) @RTM_fallback_isLocked() #6
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %._crit_edge95, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %.outer37
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  call void @llvm.x86.sse2.pause() #6
  %306 = call i64 (...) @RTM_fallback_isLocked() #6
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %._crit_edge95.loopexit, label %.lr.ph94

._crit_edge95.loopexit:                           ; preds = %.lr.ph94
  br label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge95.loopexit, %.outer37
  %308 = icmp slt i32 %tries16.0.ph, 2
  br i1 %308, label %309, label %310

; <label>:309                                     ; preds = %._crit_edge95
  %tries16.0.ph.lcssa = phi i32 [ %tries16.0.ph, %._crit_edge95 ]
  call void (...) @RTM_fallback_lock() #6
  br label %319

; <label>:310                                     ; preds = %._crit_edge95
  %311 = add nsw i32 %tries16.0.ph, -1
  %312 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 9, i64 0, i64 9, i64 4294967295) #6, !srcloc !1
  %313 = trunc i64 %312 to i32
  %314 = icmp eq i32 %313, -1
  br i1 %314, label %315, label %.outer37

; <label>:315                                     ; preds = %310
  %tries16.0.ph.lcssa305 = phi i32 [ %tries16.0.ph, %310 ]
  %316 = call i64 (...) @RTM_fallback_isLocked() #6
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %319, label %318

; <label>:318                                     ; preds = %315
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %319

; <label>:319                                     ; preds = %315, %318, %309
  %tries16.0.ph306 = phi i32 [ %tries16.0.ph.lcssa305, %315 ], [ %tries16.0.ph.lcssa305, %318 ], [ %tries16.0.ph.lcssa, %309 ]
  call fastcc void @TMpopulateParentQueryVector(%struct.net* %7, i64 %116, %struct.query* %32, %struct.vector* %61) #6
  %320 = call i64 @Pvector_copy(%struct.vector* %57, %struct.vector* %61) #6
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %323

; <label>:322                                     ; preds = %319
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 619, i8* nonnull getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TMpopulateQueryVectors, i64 0, i64 0)) #8
  unreachable

; <label>:323                                     ; preds = %319
  %324 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %116
  %325 = bitcast %struct.query* %324 to i8*
  %326 = call i64 @Pvector_pushBack(%struct.vector* %57, i8* %325) #6
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %TMpopulateQueryVectors.exit8

; <label>:328                                     ; preds = %323
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 621, i8* nonnull getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.TMpopulateQueryVectors, i64 0, i64 0)) #8
  unreachable

TMpopulateQueryVectors.exit8:                     ; preds = %323
  call void @vector_sort(%struct.vector* %57, i32 (i8*, i8*)* nonnull @compareQuery) #6
  %329 = call i64 @vector_getSize(%struct.vector* %61) #6
  %330 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %116, i32 1
  store i64 0, i64* %330, align 8
  %331 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %329, %struct.adtree* %9, %struct.query* %32, %struct.vector* %57, %struct.vector* %61) #6
  %332 = fadd float %331, 0.000000e+00
  store i64 1, i64* %330, align 8
  %333 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %329, %struct.adtree* %9, %struct.query* %32, %struct.vector* %57, %struct.vector* %61) #6
  %334 = fadd float %332, %333
  store i64 -1, i64* %330, align 8
  %335 = getelementptr inbounds float, float* %14, i64 %116
  %336 = load float, float* %335, align 4
  %337 = fsub float %336, %334
  %338 = fadd float %300, %337
  store float %334, float* %335, align 4
  %339 = icmp sgt i32 %tries16.0.ph306, 1
  br i1 %339, label %340, label %341

; <label>:340                                     ; preds = %TMpopulateQueryVectors.exit8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 9) #6, !srcloc !3
  br label %343

; <label>:341                                     ; preds = %TMpopulateQueryVectors.exit8
  call void (...) @RTM_fallback_unlock() #6
  br label %343

; <label>:342                                     ; preds = %149
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1378, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.learnStructure, i64 0, i64 0)) #8
  unreachable

; <label>:343                                     ; preds = %205, %202, %263, %260, %341, %340, %148
  %deltaLogLikelihood.0 = phi float [ %338, %340 ], [ %338, %341 ], [ %242, %260 ], [ %242, %263 ], [ %184, %202 ], [ %184, %205 ], [ 0.000000e+00, %148 ]
  br label %.outer28

.outer28:                                         ; preds = %349, %343
  %tries20.0.ph = phi i32 [ %350, %349 ], [ 9, %343 ]
  %344 = call i64 (...) @RTM_fallback_isLocked() #6
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %._crit_edge105, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %.outer28
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.lr.ph104
  call void @llvm.x86.sse2.pause() #6
  %346 = call i64 (...) @RTM_fallback_isLocked() #6
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %._crit_edge105.loopexit, label %.lr.ph104

._crit_edge105.loopexit:                          ; preds = %.lr.ph104
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge105.loopexit, %.outer28
  %348 = icmp slt i32 %tries20.0.ph, 2
  br i1 %348, label %362, label %349

; <label>:349                                     ; preds = %._crit_edge105
  %350 = add nsw i32 %tries20.0.ph, -1
  %351 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 10, i64 0, i64 10, i64 4294967295) #6, !srcloc !1
  %352 = trunc i64 %351 to i32
  %353 = icmp eq i32 %352, -1
  br i1 %353, label %354, label %.outer28

; <label>:354                                     ; preds = %349
  %355 = call i64 (...) @RTM_fallback_isLocked() #6
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %358, label %357

; <label>:357                                     ; preds = %354
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %358

; <label>:358                                     ; preds = %354, %357
  %359 = load float, float* %75, align 8
  %360 = fadd float %deltaLogLikelihood.0, %359
  store float %360, float* %75, align 8
  %361 = load i64, i64* %73, align 8
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 10) #6, !srcloc !3
  br label %366

; <label>:362                                     ; preds = %._crit_edge105
  call void (...) @RTM_fallback_lock() #6
  %363 = load float, float* %75, align 8
  %364 = fadd float %deltaLogLikelihood.0, %363
  store float %364, float* %75, align 8
  %365 = load i64, i64* %73, align 8
  call void (...) @RTM_fallback_unlock() #6
  br label %366

; <label>:366                                     ; preds = %362, %358
  %367 = phi i64 [ %365, %362 ], [ %361, %358 ]
  %368 = phi float [ %364, %362 ], [ %360, %358 ]
  %369 = sitofp i64 %367 to float
  %370 = fmul float %56, %369
  %371 = fmul float %76, %368
  %372 = fadd float %371, %370
  br label %.outer27

.outer27:                                         ; preds = %379, %366
  %tries23.0.ph = phi i32 [ %380, %379 ], [ 9, %366 ]
  %373 = call i64 (...) @RTM_fallback_isLocked() #6
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %._crit_edge107, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %.outer27
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %.lr.ph106
  call void @llvm.x86.sse2.pause() #6
  %375 = call i64 (...) @RTM_fallback_isLocked() #6
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %._crit_edge107.loopexit, label %.lr.ph106

._crit_edge107.loopexit:                          ; preds = %.lr.ph106
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %._crit_edge107.loopexit, %.outer27
  %377 = icmp slt i32 %tries23.0.ph, 2
  br i1 %377, label %378, label %379

; <label>:378                                     ; preds = %._crit_edge107
  %tries23.0.ph.lcssa = phi i32 [ %tries23.0.ph, %._crit_edge107 ]
  call void (...) @RTM_fallback_lock() #6
  br label %388

; <label>:379                                     ; preds = %._crit_edge107
  %380 = add nsw i32 %tries23.0.ph, -1
  %381 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 11, i64 0, i64 11, i64 4294967295) #6, !srcloc !1
  %382 = trunc i64 %381 to i32
  %383 = icmp eq i32 %382, -1
  br i1 %383, label %384, label %.outer27

; <label>:384                                     ; preds = %379
  %tries23.0.ph.lcssa311 = phi i32 [ %tries23.0.ph, %379 ]
  %385 = call i64 (...) @RTM_fallback_isLocked() #6
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %388, label %387

; <label>:387                                     ; preds = %384
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %388

; <label>:388                                     ; preds = %384, %387, %378
  %tries23.0.ph312 = phi i32 [ %tries23.0.ph.lcssa311, %384 ], [ %tries23.0.ph.lcssa311, %387 ], [ %tries23.0.ph.lcssa, %378 ]
  call void @llvm.lifetime.start(i64 8, i8* %77)
  %389 = load %struct.adtree*, %struct.adtree** %8, align 8, !noalias !6
  %390 = load %struct.net*, %struct.net** %6, align 8, !noalias !6
  %391 = load float*, float** %13, align 8, !noalias !6
  call fastcc void @TMpopulateParentQueryVector(%struct.net* %390, i64 %116, %struct.query* %32, %struct.vector* %61) #6, !noalias !6
  %392 = call i64 @Pvector_copy(%struct.vector* nonnull %65, %struct.vector* %61) #6, !noalias !6
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %394, label %395

; <label>:394                                     ; preds = %388
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 742, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i64 0, i64 0)) #8, !noalias !6
  unreachable

; <label>:395                                     ; preds = %388
  %396 = call i64 @Pvector_copy(%struct.vector* nonnull %69, %struct.vector* nonnull %65) #6, !noalias !6
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %398, label %399

; <label>:398                                     ; preds = %395
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 745, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i64 0, i64 0)) #8, !noalias !6
  unreachable

; <label>:399                                     ; preds = %395
  %400 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %116
  %401 = bitcast %struct.query* %400 to i8*
  %402 = call i64 @Pvector_pushBack(%struct.vector* nonnull %69, i8* %401) #6, !noalias !6
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %404, label %405

; <label>:404                                     ; preds = %399
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 747, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i64 0, i64 0)) #8, !noalias !6
  unreachable

; <label>:405                                     ; preds = %399
  call void @vector_sort(%struct.vector* %57, i32 (i8*, i8*)* nonnull @compareQuery) #6, !noalias !6
  %406 = sitofp i64 %116 to float
  %407 = getelementptr inbounds float, float* %391, i64 %116
  %408 = load float, float* %407, align 4, !noalias !6
  %409 = call i64 @TMnet_findDescendants(%struct.net* %390, i64 %116, %struct.bitmap* nonnull %21, %struct.queue* nonnull %25) #6, !noalias !6
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %411, label %412

; <label>:411                                     ; preds = %405
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 760, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i64 0, i64 0)) #8, !noalias !6
  unreachable

; <label>:412                                     ; preds = %405
  %413 = call %struct.list* @net_getParentIdListPtr(%struct.net* %390, i64 %116) #6, !noalias !6
  %414 = load i64, i64* @global_maxNumEdgeLearned, align 8, !noalias !6
  %415 = icmp slt i64 %414, 0
  br i1 %415, label %419, label %416

; <label>:416                                     ; preds = %412
  %417 = call i64 @TMlist_getSize(%struct.list* %413) #6, !noalias !6
  %418 = icmp sgt i64 %417, %414
  br i1 %418, label %.loopexit.i, label %419

; <label>:419                                     ; preds = %416, %412
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it.i9, %struct.list* %413) #6, !noalias !6
  %420 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it.i9, %struct.list* %413) #9, !noalias !6
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %.preheader.i, label %.lr.ph22.i.preheader

.lr.ph22.i.preheader:                             ; preds = %419
  br label %.lr.ph22.i

.preheader.i.loopexit:                            ; preds = %.lr.ph22.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit, %419
  %422 = call i64 @bitmap_findClear(%struct.bitmap* nonnull %21, i64 0) #6, !noalias !6
  %423 = icmp sgt i64 %422, -1
  br i1 %423, label %.lr.ph.lr.ph.i, label %.loopexit.i

.lr.ph.lr.ph.i:                                   ; preds = %.preheader.i
  %424 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %116, i32 1
  br label %.lr.ph.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.preheader, %.lr.ph22.i
  %425 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it.i9, %struct.list* %413) #6, !noalias !6
  %426 = ptrtoint i8* %425 to i64
  %427 = call i64 @bitmap_set(%struct.bitmap* nonnull %21, i64 %426) #6, !noalias !6
  %428 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it.i9, %struct.list* %413) #9, !noalias !6
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %.preheader.i.loopexit, label %.lr.ph22.i

; <label>:430                                     ; preds = %.lr.ph.i, %.backedge.i
  %431 = phi i64 [ %465, %.lr.ph.i ], [ %434, %.backedge.i ]
  %432 = icmp eq i64 %431, %116
  br i1 %432, label %.backedge.i, label %436

.backedge.i:                                      ; preds = %454, %430
  %433 = add nsw i64 %431, 1
  %434 = call i64 @bitmap_findClear(%struct.bitmap* nonnull %21, i64 %433) #6, !noalias !6
  %435 = icmp sgt i64 %434, -1
  br i1 %435, label %430, label %.loopexit.i.loopexit

; <label>:436                                     ; preds = %430
  %437 = call i64 @Pvector_copy(%struct.vector* %57, %struct.vector* nonnull %69) #6, !noalias !6
  %438 = icmp eq i64 %437, 0
  br i1 %438, label %439, label %440

; <label>:439                                     ; preds = %436
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 786, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i64 0, i64 0)) #8, !noalias !6
  unreachable

; <label>:440                                     ; preds = %436
  %441 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %431
  %442 = bitcast %struct.query* %441 to i8*
  %443 = call i64 @Pvector_pushBack(%struct.vector* %57, i8* %442) #6, !noalias !6
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %445, label %446

; <label>:445                                     ; preds = %440
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 788, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i64 0, i64 0)) #8, !noalias !6
  unreachable

; <label>:446                                     ; preds = %440
  call void @vector_sort(%struct.vector* %57, i32 (i8*, i8*)* nonnull @compareQuery) #6, !noalias !6
  %447 = call i64 @Pvector_copy(%struct.vector* %61, %struct.vector* nonnull %65) #6, !noalias !6
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %450

; <label>:449                                     ; preds = %446
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 792, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i64 0, i64 0)) #8, !noalias !6
  unreachable

; <label>:450                                     ; preds = %446
  %451 = call i64 @Pvector_pushBack(%struct.vector* %61, i8* %442) #6, !noalias !6
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %453, label %454

; <label>:453                                     ; preds = %450
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 794, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestInsertTask, i64 0, i64 0)) #8, !noalias !6
  unreachable

; <label>:454                                     ; preds = %450
  call void @vector_sort(%struct.vector* %61, i32 (i8*, i8*)* nonnull @compareQuery) #6, !noalias !6
  %455 = call i64 @vector_getSize(%struct.vector* %61) #6, !noalias !6
  store i64 0, i64* %424, align 8, !noalias !6
  %456 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %455, %struct.adtree* %389, %struct.query* %32, %struct.vector* %57, %struct.vector* %61) #6, !noalias !6
  %457 = fadd float %456, 0.000000e+00
  store i64 1, i64* %424, align 8, !noalias !6
  %458 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %455, %struct.adtree* %389, %struct.query* %32, %struct.vector* %57, %struct.vector* %61) #6, !noalias !6
  %459 = fadd float %457, %458
  store i64 -1, i64* %424, align 8, !noalias !6
  %460 = fcmp ogt float %459, %bestLocalLogLikelihood.0.ph18.i
  br i1 %460, label %.outer.i, label %.backedge.i

.outer.i:                                         ; preds = %454
  %.lcssa = phi float [ %459, %454 ]
  %.lcssa316 = phi i64 [ %431, %454 ]
  %461 = sitofp i64 %.lcssa316 to float
  %462 = add nsw i64 %.lcssa316, 1
  %463 = call i64 @bitmap_findClear(%struct.bitmap* nonnull %21, i64 %462) #6, !noalias !6
  %464 = icmp sgt i64 %463, -1
  br i1 %464, label %.lr.ph.i, label %.loopexit.i.loopexit254

.lr.ph.i:                                         ; preds = %.outer.i, %.lr.ph.lr.ph.i
  %465 = phi i64 [ %422, %.lr.ph.lr.ph.i ], [ %463, %.outer.i ]
  %bestFromId.0.ph19.i = phi float [ %406, %.lr.ph.lr.ph.i ], [ %461, %.outer.i ]
  %bestLocalLogLikelihood.0.ph18.i = phi float [ %408, %.lr.ph.lr.ph.i ], [ %.lcssa, %.outer.i ]
  br label %430

.loopexit.i.loopexit:                             ; preds = %.backedge.i
  %bestLocalLogLikelihood.0.ph18.i.lcssa327 = phi float [ %bestLocalLogLikelihood.0.ph18.i, %.backedge.i ]
  %bestFromId.0.ph19.i.lcssa322 = phi float [ %bestFromId.0.ph19.i, %.backedge.i ]
  br label %.loopexit.i

.loopexit.i.loopexit254:                          ; preds = %.outer.i
  %.lcssa328 = phi float [ %461, %.outer.i ]
  %.lcssa.lcssa = phi float [ %.lcssa, %.outer.i ]
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit254, %.loopexit.i.loopexit, %.preheader.i, %416
  %bestLocalLogLikelihood.1.i = phi float [ %408, %416 ], [ %408, %.preheader.i ], [ %bestLocalLogLikelihood.0.ph18.i.lcssa327, %.loopexit.i.loopexit ], [ %.lcssa.lcssa, %.loopexit.i.loopexit254 ]
  %bestFromId.1.i = phi float [ %406, %416 ], [ %406, %.preheader.i ], [ %bestFromId.0.ph19.i.lcssa322, %.loopexit.i.loopexit ], [ %.lcssa328, %.loopexit.i.loopexit254 ]
  %466 = fptosi float %bestFromId.1.i to i64
  %467 = fcmp une float %bestFromId.1.i, %406
  br i1 %467, label %468, label %TMfindBestInsertTask.exit

; <label>:468                                     ; preds = %.loopexit.i
  %469 = getelementptr inbounds %struct.adtree, %struct.adtree* %389, i64 0, i32 1
  %470 = load i64, i64* %469, align 8, !noalias !6
  %471 = call i64 @TMlist_getSize(%struct.list* %413) #6, !noalias !6
  %472 = add nsw i64 %471, 1
  %473 = load i64, i64* @global_insertPenalty, align 8, !noalias !6
  %474 = mul nsw i64 %472, %473
  %475 = add nsw i64 %474, %367
  %476 = sitofp i64 %475 to float
  %477 = fmul float %56, %476
  %478 = sitofp i64 %470 to float
  %479 = fadd float %368, %bestLocalLogLikelihood.1.i
  %480 = fsub float %479, %408
  %481 = fmul float %480, %478
  %482 = fadd float %481, %477
  br label %TMfindBestInsertTask.exit

TMfindBestInsertTask.exit:                        ; preds = %.loopexit.i, %468
  %bestTask.sroa.4.0.i = phi float [ %482, %468 ], [ 0.000000e+00, %.loopexit.i ]
  %483 = and i64 %.sroa.019.0, -4294967296
  call void @llvm.lifetime.end(i64 8, i8* %77)
  %484 = icmp sgt i32 %tries23.0.ph312, 1
  br i1 %484, label %485, label %486

; <label>:485                                     ; preds = %TMfindBestInsertTask.exit
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 11) #6, !srcloc !3
  br label %487

; <label>:486                                     ; preds = %TMfindBestInsertTask.exit
  call void (...) @RTM_fallback_unlock() #6
  br label %487

; <label>:487                                     ; preds = %486, %485
  %488 = icmp ne i64 %466, %116
  %489 = fdiv float %372, %18
  %490 = fcmp ogt float %bestTask.sroa.4.0.i, %489
  %or.cond = and i1 %488, %490
  br i1 %or.cond, label %491, label %494

; <label>:491                                     ; preds = %487
  %492 = lshr i64 %.sroa.019.0, 32
  %493 = trunc i64 %492 to i32
  br label %494

; <label>:494                                     ; preds = %487, %491
  %bestTask.sroa.0.sroa.5.1 = phi i32 [ %493, %491 ], [ %bestTask.sroa.0.sroa.5.0, %487 ]
  %bestTask.sroa.0.sroa.0.0 = phi i64 [ 0, %491 ], [ 3, %487 ]
  %bestTask.sroa.14.0 = phi float [ %bestTask.sroa.4.0.i, %491 ], [ %372, %487 ]
  %bestTask.sroa.9.0 = phi i64 [ %116, %491 ], [ -1, %487 ]
  %bestTask.sroa.5.0 = phi i64 [ %466, %491 ], [ -1, %487 ]
  br label %.outer25

.outer25:                                         ; preds = %501, %494
  %tries25.0.ph = phi i32 [ %502, %501 ], [ 9, %494 ]
  %495 = call i64 (...) @RTM_fallback_isLocked() #6
  %496 = icmp eq i64 %495, 0
  br i1 %496, label %._crit_edge109, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %.outer25
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  call void @llvm.x86.sse2.pause() #6
  %497 = call i64 (...) @RTM_fallback_isLocked() #6
  %498 = icmp eq i64 %497, 0
  br i1 %498, label %._crit_edge109.loopexit, label %.lr.ph108

._crit_edge109.loopexit:                          ; preds = %.lr.ph108
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %._crit_edge109.loopexit, %.outer25
  %499 = icmp slt i32 %tries25.0.ph, 2
  br i1 %499, label %500, label %501

; <label>:500                                     ; preds = %._crit_edge109
  %tries25.0.ph.lcssa = phi i32 [ %tries25.0.ph, %._crit_edge109 ]
  call void (...) @RTM_fallback_lock() #6
  br label %510

; <label>:501                                     ; preds = %._crit_edge109
  %502 = add nsw i32 %tries25.0.ph, -1
  %503 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 12, i64 0, i64 12, i64 4294967295) #6, !srcloc !1
  %504 = trunc i64 %503 to i32
  %505 = icmp eq i32 %504, -1
  br i1 %505, label %506, label %.outer25

; <label>:506                                     ; preds = %501
  %tries25.0.ph.lcssa329 = phi i32 [ %tries25.0.ph, %501 ]
  %507 = call i64 (...) @RTM_fallback_isLocked() #6
  %508 = icmp eq i64 %507, 0
  br i1 %508, label %510, label %509

; <label>:509                                     ; preds = %506
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %510

; <label>:510                                     ; preds = %506, %509, %500
  %tries25.0.ph330 = phi i32 [ %tries25.0.ph.lcssa329, %506 ], [ %tries25.0.ph.lcssa329, %509 ], [ %tries25.0.ph.lcssa, %500 ]
  %511 = load %struct.adtree*, %struct.adtree** %8, align 8, !noalias !9
  %512 = load %struct.net*, %struct.net** %6, align 8, !noalias !9
  %513 = load float*, float** %13, align 8, !noalias !9
  call fastcc void @TMpopulateParentQueryVector(%struct.net* %512, i64 %116, %struct.query* %32, %struct.vector* nonnull %65) #6, !noalias !9
  %514 = call i64 @vector_getSize(%struct.vector* nonnull %65) #6, !noalias !9
  %515 = getelementptr inbounds float, float* %513, i64 %116
  %516 = load float, float* %515, align 4, !noalias !9
  %517 = icmp sgt i64 %514, 0
  br i1 %517, label %.lr.ph13.i, label %._crit_edge14.i

.lr.ph13.i:                                       ; preds = %510
  %518 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %116, i32 1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %525, %.lr.ph13.i
  %bestFromId.011.us.i = phi float [ %406, %.lr.ph13.i ], [ %bestFromId.1.us.i, %525 ]
  %bestLocalLogLikelihood.010.us.i = phi float [ %516, %.lr.ph13.i ], [ %bestLocalLogLikelihood.1.us.i, %525 ]
  %i.09.us.i = phi i64 [ 0, %.lr.ph13.i ], [ %533, %525 ]
  %519 = call i8* @vector_at(%struct.vector* nonnull %65, i64 %i.09.us.i) #6, !noalias !9
  %520 = bitcast i8* %519 to i64*
  %521 = load i64, i64* %520, align 8, !noalias !9
  call void @vector_clear(%struct.vector* %61) #6, !noalias !9
  br label %535

; <label>:522                                     ; preds = %._crit_edge.us.i
  %523 = call i64 @Pvector_pushBack(%struct.vector* %57, i8* %401) #6, !noalias !9
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %.us-lcssa16.us.i, label %525

; <label>:525                                     ; preds = %522
  call void @vector_sort(%struct.vector* %57, i32 (i8*, i8*)* nonnull @compareQuery) #6, !noalias !9
  %526 = call i64 @vector_getSize(%struct.vector* %61) #6, !noalias !9
  store i64 0, i64* %518, align 8, !noalias !9
  %527 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %526, %struct.adtree* %511, %struct.query* %32, %struct.vector* %57, %struct.vector* %61) #6, !noalias !9
  %528 = fadd float %527, 0.000000e+00
  store i64 1, i64* %518, align 8, !noalias !9
  %529 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %526, %struct.adtree* %511, %struct.query* %32, %struct.vector* %57, %struct.vector* %61) #6, !noalias !9
  %530 = fadd float %528, %529
  store i64 -1, i64* %518, align 8, !noalias !9
  %531 = fcmp ogt float %530, %bestLocalLogLikelihood.010.us.i
  %532 = sitofp i64 %521 to float
  %bestLocalLogLikelihood.1.us.i = select i1 %531, float %530, float %bestLocalLogLikelihood.010.us.i
  %bestFromId.1.us.i = select i1 %531, float %532, float %bestFromId.011.us.i
  %533 = add nuw nsw i64 %i.09.us.i, 1
  %534 = icmp slt i64 %533, %514
  br i1 %534, label %.lr.ph.us.i, label %._crit_edge14.i.loopexit, !llvm.loop !12

; <label>:535                                     ; preds = %545, %.lr.ph.us.i
  %p.08.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %546, %545 ]
  %536 = icmp eq i64 %p.08.us.i, %521
  br i1 %536, label %545, label %537

; <label>:537                                     ; preds = %535
  %538 = call i8* @vector_at(%struct.vector* nonnull %65, i64 %p.08.us.i) #6, !noalias !9
  %539 = bitcast i8* %538 to i64*
  %540 = load i64, i64* %539, align 8, !noalias !9
  %541 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %540
  %542 = bitcast %struct.query* %541 to i8*
  %543 = call i64 @Pvector_pushBack(%struct.vector* %61, i8* %542) #6, !noalias !9
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %.us-lcssa17.us.i, label %545

; <label>:545                                     ; preds = %537, %535
  %546 = add nuw nsw i64 %p.08.us.i, 1
  %547 = icmp slt i64 %546, %514
  br i1 %547, label %535, label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %545
  %548 = call i64 @Pvector_copy(%struct.vector* %57, %struct.vector* %61) #6, !noalias !9
  %549 = icmp eq i64 %548, 0
  br i1 %549, label %.us-lcssa.us.i, label %522

.us-lcssa17.us.i:                                 ; preds = %537
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 895, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestRemoveTask, i64 0, i64 0)) #8, !noalias !9
  unreachable

.us-lcssa.us.i:                                   ; preds = %._crit_edge.us.i
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 904, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestRemoveTask, i64 0, i64 0)) #8, !noalias !9
  unreachable

.us-lcssa16.us.i:                                 ; preds = %522
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 906, i8* nonnull getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.TMfindBestRemoveTask, i64 0, i64 0)) #8, !noalias !9
  unreachable

._crit_edge14.i.loopexit:                         ; preds = %525
  %bestFromId.1.us.i.lcssa = phi float [ %bestFromId.1.us.i, %525 ]
  %bestLocalLogLikelihood.1.us.i.lcssa = phi float [ %bestLocalLogLikelihood.1.us.i, %525 ]
  br label %._crit_edge14.i

._crit_edge14.i:                                  ; preds = %._crit_edge14.i.loopexit, %510
  %bestFromId.0.lcssa.i = phi float [ %406, %510 ], [ %bestFromId.1.us.i.lcssa, %._crit_edge14.i.loopexit ]
  %bestLocalLogLikelihood.0.lcssa.i = phi float [ %516, %510 ], [ %bestLocalLogLikelihood.1.us.i.lcssa, %._crit_edge14.i.loopexit ]
  %550 = fptosi float %bestFromId.0.lcssa.i to i64
  %551 = fcmp une float %bestFromId.0.lcssa.i, %406
  br i1 %551, label %552, label %TMfindBestRemoveTask.exit

; <label>:552                                     ; preds = %._crit_edge14.i
  %553 = getelementptr inbounds %struct.adtree, %struct.adtree* %511, i64 0, i32 1
  %554 = load i64, i64* %553, align 8, !noalias !9
  %555 = add nsw i64 %367, -1
  %556 = sitofp i64 %555 to float
  %557 = fmul float %56, %556
  %558 = sitofp i64 %554 to float
  %559 = fadd float %368, %bestLocalLogLikelihood.0.lcssa.i
  %560 = fsub float %559, %516
  %561 = fmul float %560, %558
  %562 = fadd float %557, %561
  br label %TMfindBestRemoveTask.exit

TMfindBestRemoveTask.exit:                        ; preds = %._crit_edge14.i, %552
  %bestTask.sroa.4.0.i10 = phi float [ %562, %552 ], [ 0.000000e+00, %._crit_edge14.i ]
  %563 = and i64 %.sroa.014.0, -4294967296
  %564 = or i64 %563, 1
  %565 = icmp sgt i32 %tries25.0.ph330, 1
  br i1 %565, label %566, label %567

; <label>:566                                     ; preds = %TMfindBestRemoveTask.exit
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 12) #6, !srcloc !3
  br label %568

; <label>:567                                     ; preds = %TMfindBestRemoveTask.exit
  call void (...) @RTM_fallback_unlock() #6
  br label %568

; <label>:568                                     ; preds = %567, %566
  %569 = icmp ne i64 %550, %116
  %570 = fdiv float %bestTask.sroa.14.0, %18
  %571 = fcmp ogt float %bestTask.sroa.4.0.i10, %570
  %or.cond3 = and i1 %569, %571
  br i1 %or.cond3, label %572, label %575

; <label>:572                                     ; preds = %568
  %573 = lshr i64 %.sroa.014.0, 32
  %574 = trunc i64 %573 to i32
  br label %575

; <label>:575                                     ; preds = %568, %572
  %bestTask.sroa.0.sroa.5.2 = phi i32 [ %574, %572 ], [ %bestTask.sroa.0.sroa.5.1, %568 ]
  %bestTask.sroa.0.sroa.0.1 = phi i64 [ 1, %572 ], [ %bestTask.sroa.0.sroa.0.0, %568 ]
  %bestTask.sroa.14.1 = phi float [ %bestTask.sroa.4.0.i10, %572 ], [ %bestTask.sroa.14.0, %568 ]
  %bestTask.sroa.9.1 = phi i64 [ %116, %572 ], [ %bestTask.sroa.9.0, %568 ]
  %bestTask.sroa.5.1 = phi i64 [ %550, %572 ], [ %bestTask.sroa.5.0, %568 ]
  br label %.outer24

.outer24:                                         ; preds = %582, %575
  %tries27.0.ph = phi i32 [ %583, %582 ], [ 9, %575 ]
  %576 = call i64 (...) @RTM_fallback_isLocked() #6
  %577 = icmp eq i64 %576, 0
  br i1 %577, label %._crit_edge111, label %.lr.ph110.preheader

.lr.ph110.preheader:                              ; preds = %.outer24
  br label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110.preheader, %.lr.ph110
  call void @llvm.x86.sse2.pause() #6
  %578 = call i64 (...) @RTM_fallback_isLocked() #6
  %579 = icmp eq i64 %578, 0
  br i1 %579, label %._crit_edge111.loopexit, label %.lr.ph110

._crit_edge111.loopexit:                          ; preds = %.lr.ph110
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %._crit_edge111.loopexit, %.outer24
  %580 = icmp slt i32 %tries27.0.ph, 2
  br i1 %580, label %581, label %582

; <label>:581                                     ; preds = %._crit_edge111
  %tries27.0.ph.lcssa = phi i32 [ %tries27.0.ph, %._crit_edge111 ]
  call void (...) @RTM_fallback_lock() #6
  br label %591

; <label>:582                                     ; preds = %._crit_edge111
  %583 = add nsw i32 %tries27.0.ph, -1
  %584 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 13, i64 0, i64 13, i64 4294967295) #6, !srcloc !1
  %585 = trunc i64 %584 to i32
  %586 = icmp eq i32 %585, -1
  br i1 %586, label %587, label %.outer24

; <label>:587                                     ; preds = %582
  %tries27.0.ph.lcssa331 = phi i32 [ %tries27.0.ph, %582 ]
  %588 = call i64 (...) @RTM_fallback_isLocked() #6
  %589 = icmp eq i64 %588, 0
  br i1 %589, label %591, label %590

; <label>:590                                     ; preds = %587
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %591

; <label>:591                                     ; preds = %587, %590, %581
  %tries27.0.ph332 = phi i32 [ %tries27.0.ph.lcssa331, %587 ], [ %tries27.0.ph.lcssa331, %590 ], [ %tries27.0.ph.lcssa, %581 ]
  %592 = load %struct.adtree*, %struct.adtree** %8, align 8, !noalias !14
  %593 = load %struct.net*, %struct.net** %6, align 8, !noalias !14
  %594 = load float*, float** %13, align 8, !noalias !14
  call fastcc void @TMpopulateParentQueryVector(%struct.net* %593, i64 %116, %struct.query* %32, %struct.vector* nonnull %65) #6, !noalias !14
  %595 = call i64 @vector_getSize(%struct.vector* nonnull %65) #6, !noalias !14
  %596 = getelementptr inbounds float, float* %594, i64 %116
  %597 = load float, float* %596, align 4, !noalias !14
  %598 = icmp sgt i64 %595, 0
  br i1 %598, label %.lr.ph20.i, label %TMfindBestReverseTask.exit

.lr.ph20.i:                                       ; preds = %591
  %599 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %116, i32 1
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %649, %.lr.ph20.i
  %bestFromId.018.i = phi i64 [ %116, %.lr.ph20.i ], [ %bestFromId.1.i12, %649 ]
  %i.017.i = phi i64 [ 0, %.lr.ph20.i ], [ %658, %649 ]
  %600 = call i8* @vector_at(%struct.vector* nonnull %65, i64 %i.017.i) #6, !noalias !14
  %601 = bitcast i8* %600 to i64*
  %602 = load i64, i64* %601, align 8, !noalias !14
  %603 = getelementptr inbounds float, float* %594, i64 %602
  %604 = load float, float* %603, align 4, !noalias !14
  %605 = fadd float %597, %604
  call fastcc void @TMpopulateParentQueryVector(%struct.net* %593, i64 %602, %struct.query* %32, %struct.vector* nonnull %69) #6, !noalias !14
  call void @vector_clear(%struct.vector* %61) #6, !noalias !14
  br label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %616, %.lr.ph.preheader.i
  %p.016.i = phi i64 [ %617, %616 ], [ 0, %.lr.ph.preheader.i ]
  %606 = icmp eq i64 %p.016.i, %602
  br i1 %606, label %616, label %607

; <label>:607                                     ; preds = %.lr.ph.i11
  %608 = call i8* @vector_at(%struct.vector* nonnull %65, i64 %p.016.i) #6, !noalias !14
  %609 = bitcast i8* %608 to i64*
  %610 = load i64, i64* %609, align 8, !noalias !14
  %611 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %610
  %612 = bitcast %struct.query* %611 to i8*
  %613 = call i64 @Pvector_pushBack(%struct.vector* %61, i8* %612) #6, !noalias !14
  %614 = icmp eq i64 %613, 0
  br i1 %614, label %615, label %616

; <label>:615                                     ; preds = %607
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1024, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i64 0, i64 0)) #8, !noalias !14
  unreachable

; <label>:616                                     ; preds = %607, %.lr.ph.i11
  %617 = add nuw nsw i64 %p.016.i, 1
  %618 = icmp slt i64 %617, %595
  br i1 %618, label %.lr.ph.i11, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %616
  %619 = call i64 @Pvector_copy(%struct.vector* %57, %struct.vector* %61) #6, !noalias !14
  %620 = icmp eq i64 %619, 0
  br i1 %620, label %621, label %622

; <label>:621                                     ; preds = %._crit_edge.i
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1033, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i64 0, i64 0)) #8, !noalias !14
  unreachable

; <label>:622                                     ; preds = %._crit_edge.i
  %623 = call i64 @Pvector_pushBack(%struct.vector* %57, i8* %401) #6, !noalias !14
  %624 = icmp eq i64 %623, 0
  br i1 %624, label %625, label %626

; <label>:625                                     ; preds = %622
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1035, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i64 0, i64 0)) #8, !noalias !14
  unreachable

; <label>:626                                     ; preds = %622
  call void @vector_sort(%struct.vector* %57, i32 (i8*, i8*)* nonnull @compareQuery) #6, !noalias !14
  %627 = call i64 @vector_getSize(%struct.vector* %61) #6, !noalias !14
  store i64 0, i64* %599, align 8, !noalias !14
  %628 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %627, %struct.adtree* %592, %struct.query* %32, %struct.vector* %57, %struct.vector* %61) #6, !noalias !14
  %629 = fadd float %628, 0.000000e+00
  store i64 1, i64* %599, align 8, !noalias !14
  %630 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %627, %struct.adtree* %592, %struct.query* %32, %struct.vector* %57, %struct.vector* %61) #6, !noalias !14
  %631 = fadd float %629, %630
  store i64 -1, i64* %599, align 8, !noalias !14
  %632 = call i64 @Pvector_copy(%struct.vector* %61, %struct.vector* nonnull %69) #6, !noalias !14
  %633 = icmp eq i64 %632, 0
  br i1 %633, label %634, label %635

; <label>:634                                     ; preds = %626
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1055, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i64 0, i64 0)) #8, !noalias !14
  unreachable

; <label>:635                                     ; preds = %626
  %636 = call i64 @Pvector_pushBack(%struct.vector* %61, i8* nonnull %401) #6, !noalias !14
  %637 = icmp eq i64 %636, 0
  br i1 %637, label %638, label %639

; <label>:638                                     ; preds = %635
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1057, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i64 0, i64 0)) #8, !noalias !14
  unreachable

; <label>:639                                     ; preds = %635
  call void @vector_sort(%struct.vector* %61, i32 (i8*, i8*)* nonnull @compareQuery) #6, !noalias !14
  %640 = call i64 @Pvector_copy(%struct.vector* %57, %struct.vector* %61) #6, !noalias !14
  %641 = icmp eq i64 %640, 0
  br i1 %641, label %642, label %643

; <label>:642                                     ; preds = %639
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1061, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i64 0, i64 0)) #8, !noalias !14
  unreachable

; <label>:643                                     ; preds = %639
  %644 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %602
  %645 = bitcast %struct.query* %644 to i8*
  %646 = call i64 @Pvector_pushBack(%struct.vector* %57, i8* %645) #6, !noalias !14
  %647 = icmp eq i64 %646, 0
  br i1 %647, label %648, label %649

; <label>:648                                     ; preds = %643
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1063, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.TMfindBestReverseTask, i64 0, i64 0)) #8, !noalias !14
  unreachable

; <label>:649                                     ; preds = %643
  call void @vector_sort(%struct.vector* %57, i32 (i8*, i8*)* nonnull @compareQuery) #6, !noalias !14
  %650 = call i64 @vector_getSize(%struct.vector* %61) #6, !noalias !14
  %651 = getelementptr inbounds %struct.query, %struct.query* %32, i64 %602, i32 1
  store i64 0, i64* %651, align 8, !noalias !14
  %652 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %650, %struct.adtree* %592, %struct.query* nonnull %32, %struct.vector* %57, %struct.vector* %61) #6, !noalias !14
  %653 = fadd float %652, 0.000000e+00
  store i64 1, i64* %651, align 8, !noalias !14
  %654 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %650, %struct.adtree* %592, %struct.query* nonnull %32, %struct.vector* %57, %struct.vector* %61) #6, !noalias !14
  %655 = fadd float %653, %654
  store i64 -1, i64* %651, align 8, !noalias !14
  %656 = fadd float %631, %655
  %657 = fcmp ogt float %656, %605
  %bestFromId.1.i12 = select i1 %657, i64 %602, i64 %bestFromId.018.i
  %658 = add nuw nsw i64 %i.017.i, 1
  %659 = icmp slt i64 %658, %595
  br i1 %659, label %.lr.ph.preheader.i, label %660, !llvm.loop !17

; <label>:660                                     ; preds = %649
  %bestFromId.1.i12.lcssa = phi i64 [ %bestFromId.1.i12, %649 ]
  %.lcssa342 = phi i1 [ %657, %649 ]
  %.lcssa341 = phi float [ %656, %649 ]
  %.lcssa340 = phi float [ %605, %649 ]
  %bestLocalLogLikelihood.1.le.i = select i1 %.lcssa342, float %.lcssa341, float %.lcssa340
  %661 = icmp eq i64 %bestFromId.1.i12.lcssa, %116
  br i1 %661, label %TMfindBestReverseTask.exit, label %662

; <label>:662                                     ; preds = %660
  call void @TMnet_applyOperation(%struct.net* %593, i32 1, i64 %bestFromId.1.i12.lcssa, i64 %116) #6, !noalias !14
  %663 = call i64 @TMnet_isPath(%struct.net* %593, i64 %bestFromId.1.i12.lcssa, i64 %116, %struct.bitmap* nonnull %21, %struct.queue* nonnull %25) #6, !noalias !14
  %664 = icmp eq i64 %663, 0
  call void @TMnet_applyOperation(%struct.net* %593, i32 0, i64 %bestFromId.1.i12.lcssa, i64 %116) #6, !noalias !14
  %bestFromId.0..i = select i1 %664, i64 %bestFromId.1.i12.lcssa, i64 %116
  %665 = icmp eq i64 %bestFromId.0..i, %116
  br i1 %665, label %TMfindBestReverseTask.exit, label %666

; <label>:666                                     ; preds = %662
  %667 = getelementptr inbounds float, float* %594, i64 %bestFromId.0..i
  %668 = load float, float* %667, align 4, !noalias !14
  %669 = getelementptr inbounds %struct.adtree, %struct.adtree* %592, i64 0, i32 1
  %670 = load i64, i64* %669, align 8, !noalias !14
  %671 = sitofp i64 %670 to float
  %672 = fadd float %368, %bestLocalLogLikelihood.1.le.i
  %673 = fsub float %672, %597
  %674 = fsub float %673, %668
  %675 = fmul float %674, %671
  %676 = fadd float %370, %675
  br label %TMfindBestReverseTask.exit

TMfindBestReverseTask.exit:                       ; preds = %591, %660, %662, %666
  %bestFromId.235.i = phi i64 [ %bestFromId.0..i, %666 ], [ %116, %662 ], [ %116, %660 ], [ %116, %591 ]
  %bestTask.sroa.4.0.i13 = phi float [ %676, %666 ], [ 0.000000e+00, %662 ], [ 0.000000e+00, %660 ], [ 0.000000e+00, %591 ]
  %677 = and i64 %.sroa.0.0, -4294967296
  %678 = or i64 %677, 2
  %679 = icmp sgt i32 %tries27.0.ph332, 1
  br i1 %679, label %680, label %681

; <label>:680                                     ; preds = %TMfindBestReverseTask.exit
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 13) #6, !srcloc !3
  br label %682

; <label>:681                                     ; preds = %TMfindBestReverseTask.exit
  call void (...) @RTM_fallback_unlock() #6
  br label %682

; <label>:682                                     ; preds = %681, %680
  %683 = icmp ne i64 %bestFromId.235.i, %116
  %684 = fdiv float %bestTask.sroa.14.1, %18
  %685 = fcmp ogt float %bestTask.sroa.4.0.i13, %684
  %or.cond5 = and i1 %683, %685
  br i1 %or.cond5, label %686, label %689

; <label>:686                                     ; preds = %682
  %687 = lshr i64 %.sroa.0.0, 32
  %688 = trunc i64 %687 to i32
  br label %689

; <label>:689                                     ; preds = %682, %686
  %bestTask.sroa.0.sroa.5.3 = phi i32 [ %688, %686 ], [ %bestTask.sroa.0.sroa.5.2, %682 ]
  %bestTask.sroa.0.sroa.0.2 = phi i64 [ 2, %686 ], [ %bestTask.sroa.0.sroa.0.1, %682 ]
  %bestTask.sroa.14.2 = phi float [ %bestTask.sroa.4.0.i13, %686 ], [ %bestTask.sroa.14.1, %682 ]
  %bestTask.sroa.9.2 = phi i64 [ %116, %686 ], [ %bestTask.sroa.9.1, %682 ]
  %bestTask.sroa.5.2 = phi i64 [ %bestFromId.235.i, %686 ], [ %bestTask.sroa.5.1, %682 ]
  %690 = icmp eq i64 %bestTask.sroa.9.2, -1
  br i1 %690, label %.backedge.backedge, label %691

; <label>:691                                     ; preds = %689
  %692 = load %struct.learner_task*, %struct.learner_task** %79, align 8
  %693 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %692, i64 %116
  %694 = bitcast %struct.learner_task* %693 to i8*
  %695 = bitcast %struct.learner_task* %693 to i64*
  %696 = zext i32 %bestTask.sroa.0.sroa.5.3 to i64
  %697 = shl nuw i64 %696, 32
  %698 = and i64 %bestTask.sroa.0.sroa.0.2, 4294967295
  %699 = or i64 %697, %698
  store i64 %699, i64* %695, align 8
  %700 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %692, i64 %116, i32 1
  store i64 %bestTask.sroa.5.2, i64* %700, align 8
  %701 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %692, i64 %116, i32 2
  store i64 %bestTask.sroa.9.2, i64* %701, align 8
  %702 = getelementptr inbounds %struct.learner_task, %struct.learner_task* %692, i64 %116, i32 3
  store float %bestTask.sroa.14.2, float* %702, align 8
  br label %.outer

.outer:                                           ; preds = %708, %691
  %tries29.0.ph = phi i32 [ %709, %708 ], [ 9, %691 ]
  %703 = call i64 (...) @RTM_fallback_isLocked() #6
  %704 = icmp eq i64 %703, 0
  br i1 %704, label %._crit_edge113, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %.outer
  br label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %.lr.ph112
  call void @llvm.x86.sse2.pause() #6
  %705 = call i64 (...) @RTM_fallback_isLocked() #6
  %706 = icmp eq i64 %705, 0
  br i1 %706, label %._crit_edge113.loopexit, label %.lr.ph112

._crit_edge113.loopexit:                          ; preds = %.lr.ph112
  br label %._crit_edge113

._crit_edge113:                                   ; preds = %._crit_edge113.loopexit, %.outer
  %707 = icmp slt i32 %tries29.0.ph, 2
  br i1 %707, label %719, label %708

; <label>:708                                     ; preds = %._crit_edge113
  %709 = add nsw i32 %tries29.0.ph, -1
  %710 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 14, i64 0, i64 14, i64 4294967295) #6, !srcloc !1
  %711 = trunc i64 %710 to i32
  %712 = icmp eq i32 %711, -1
  br i1 %712, label %713, label %.outer

; <label>:713                                     ; preds = %708
  %714 = call i64 (...) @RTM_fallback_isLocked() #6
  %715 = icmp eq i64 %714, 0
  br i1 %715, label %717, label %716

; <label>:716                                     ; preds = %713
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #6, !srcloc !2
  br label %717

; <label>:717                                     ; preds = %713, %716
  %718 = call i64 @TMlist_insert(%struct.list* %17, i8* %694) #6
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 14) #6, !srcloc !3
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %717, %719, %689
  br label %.backedge

; <label>:719                                     ; preds = %._crit_edge113
  call void (...) @RTM_fallback_lock() #6
  %720 = call i64 @TMlist_insert(%struct.list* %17, i8* %694) #6
  call void (...) @RTM_fallback_unlock() #6
  br label %.backedge.backedge

; <label>:721                                     ; preds = %108
  call void @Pbitmap_free(%struct.bitmap* nonnull %21) #6
  call void @Pqueue_free(%struct.queue* nonnull %25) #6
  call void @Pvector_free(%struct.vector* nonnull %69) #6
  call void @Pvector_free(%struct.vector* nonnull %65) #6
  call void @Pvector_free(%struct.vector* nonnull %57) #6
  call void @Pvector_free(%struct.vector* nonnull %61) #6
  call void @free(i8* %31) #6
  %722 = call i64 (...) @thread_getId() #6
  %723 = trunc i64 %722 to i32
  %724 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %725 = load i32, i32* %724, align 4
  call void @SimRoiEnd(i32 %723, i32 %725) #6
  ret void
}

; Function Attrs: nounwind uwtable
define float @learner_score(%struct.learner* nocapture readonly %learnerPtr) #0 {
  %it.i.i = alloca %struct.list_node*, align 8
  %1 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i64 0, i32 0
  %2 = load %struct.adtree*, %struct.adtree** %1, align 8
  %3 = getelementptr inbounds %struct.learner, %struct.learner* %learnerPtr, i64 0, i32 1
  %4 = load %struct.net*, %struct.net** %3, align 8
  %5 = tail call %struct.vector* @vector_alloc(i64 1) #6
  %6 = icmp eq %struct.vector* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1516, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.learner_score, i64 0, i64 0)) #8
  unreachable

; <label>:8                                       ; preds = %0
  %9 = tail call %struct.vector* @vector_alloc(i64 1) #6
  %10 = icmp eq %struct.vector* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1518, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.learner_score, i64 0, i64 0)) #8
  unreachable

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds %struct.adtree, %struct.adtree* %2, i64 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = shl i64 %14, 4
  %16 = tail call noalias i8* @malloc(i64 %15) #6
  %17 = bitcast i8* %16 to %struct.query*
  %18 = icmp eq i8* %16, null
  br i1 %18, label %25, label %.preheader1

.preheader1:                                      ; preds = %12
  %19 = icmp sgt i64 %14, 0
  br i1 %19, label %.lr.ph13.preheader, label %._crit_edge

.lr.ph13.preheader:                               ; preds = %.preheader1
  %20 = add i64 %14, -1
  %xtraiter = and i64 %14, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph13.preheader.split, label %.lr.ph13.prol.preheader

.lr.ph13.prol.preheader:                          ; preds = %.lr.ph13.preheader
  br label %.lr.ph13.prol

.lr.ph13.prol:                                    ; preds = %.lr.ph13.prol.preheader, %.lr.ph13.prol
  %v.012.prol = phi i64 [ %23, %.lr.ph13.prol ], [ 0, %.lr.ph13.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %.lr.ph13.prol ], [ %xtraiter, %.lr.ph13.prol.preheader ]
  %21 = getelementptr inbounds %struct.query, %struct.query* %17, i64 %v.012.prol, i32 0
  store i64 %v.012.prol, i64* %21, align 8
  %22 = getelementptr inbounds %struct.query, %struct.query* %17, i64 %v.012.prol, i32 1
  store i64 -1, i64* %22, align 8
  %23 = add nuw nsw i64 %v.012.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph13.preheader.split.loopexit, label %.lr.ph13.prol, !llvm.loop !18

.lr.ph13.preheader.split.loopexit:                ; preds = %.lr.ph13.prol
  %.lcssa30 = phi i64 [ %23, %.lr.ph13.prol ]
  br label %.lr.ph13.preheader.split

.lr.ph13.preheader.split:                         ; preds = %.lr.ph13.preheader.split.loopexit, %.lr.ph13.preheader
  %v.012.unr = phi i64 [ 0, %.lr.ph13.preheader ], [ %.lcssa30, %.lr.ph13.preheader.split.loopexit ]
  %24 = icmp ult i64 %20, 3
  br i1 %24, label %.preheader, label %.lr.ph13.preheader.split.split

.lr.ph13.preheader.split.split:                   ; preds = %.lr.ph13.preheader.split
  br label %.lr.ph13

; <label>:25                                      ; preds = %12
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1522, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.learner_score, i64 0, i64 0)) #8
  unreachable

.preheader.unr-lcssa:                             ; preds = %.lr.ph13
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph13.preheader.split, %.preheader.unr-lcssa
  br i1 %19, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %26 = bitcast %struct.list_node** %it.i.i to i8*
  br label %39

.lr.ph13:                                         ; preds = %.lr.ph13, %.lr.ph13.preheader.split.split
  %v.012 = phi i64 [ %v.012.unr, %.lr.ph13.preheader.split.split ], [ %38, %.lr.ph13 ]
  %27 = getelementptr inbounds %struct.query, %struct.query* %17, i64 %v.012, i32 0
  store i64 %v.012, i64* %27, align 8
  %28 = getelementptr inbounds %struct.query, %struct.query* %17, i64 %v.012, i32 1
  store i64 -1, i64* %28, align 8
  %29 = add nuw nsw i64 %v.012, 1
  %30 = getelementptr inbounds %struct.query, %struct.query* %17, i64 %29, i32 0
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.query, %struct.query* %17, i64 %29, i32 1
  store i64 -1, i64* %31, align 8
  %32 = add nsw i64 %v.012, 2
  %33 = getelementptr inbounds %struct.query, %struct.query* %17, i64 %32, i32 0
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.query, %struct.query* %17, i64 %32, i32 1
  store i64 -1, i64* %34, align 8
  %35 = add nsw i64 %v.012, 3
  %36 = getelementptr inbounds %struct.query, %struct.query* %17, i64 %35, i32 0
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.query, %struct.query* %17, i64 %35, i32 1
  store i64 -1, i64* %37, align 8
  %38 = add nsw i64 %v.012, 4
  %exitcond.3 = icmp eq i64 %38, %14
  br i1 %exitcond.3, label %.preheader.unr-lcssa, label %.lr.ph13

; <label>:39                                      ; preds = %.lr.ph, %populateQueryVectors.exit
  %v.110 = phi i64 [ 0, %.lr.ph ], [ %71, %populateQueryVectors.exit ]
  %numTotalParent.09 = phi i64 [ 0, %.lr.ph ], [ %42, %populateQueryVectors.exit ]
  %logLikelihood.08 = phi float [ 0.000000e+00, %.lr.ph ], [ %70, %populateQueryVectors.exit ]
  %40 = call %struct.list* @net_getParentIdListPtr(%struct.net* %4, i64 %v.110) #6
  %41 = call i64 @list_getSize(%struct.list* %40) #6
  %42 = add nsw i64 %41, %numTotalParent.09
  call void @llvm.lifetime.start(i64 8, i8* %26) #6
  call void @vector_clear(%struct.vector* nonnull %9) #6
  %43 = call %struct.list* @net_getParentIdListPtr(%struct.net* %4, i64 %v.110) #6
  call void @list_iter_reset(%struct.list_node** nonnull %it.i.i, %struct.list* %43) #6
  br label %44

; <label>:44                                      ; preds = %47, %39
  %45 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it.i.i, %struct.list* %43) #9
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %populateParentQueryVector.exit.i, label %47

; <label>:47                                      ; preds = %44
  %48 = call i8* @list_iter_next(%struct.list_node** nonnull %it.i.i, %struct.list* %43) #6
  %49 = ptrtoint i8* %48 to i64
  %50 = getelementptr inbounds %struct.query, %struct.query* %17, i64 %49
  %51 = bitcast %struct.query* %50 to i8*
  %52 = call i64 @vector_pushBack(%struct.vector* nonnull %9, i8* %51) #6
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %44

; <label>:54                                      ; preds = %47
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 548, i8* nonnull getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.populateParentQueryVector, i64 0, i64 0)) #8
  unreachable

populateParentQueryVector.exit.i:                 ; preds = %44
  call void @llvm.lifetime.end(i64 8, i8* %26) #6
  %55 = call i64 @vector_copy(%struct.vector* nonnull %5, %struct.vector* nonnull %9) #6
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %populateParentQueryVector.exit.i
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 595, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.populateQueryVectors, i64 0, i64 0)) #8
  unreachable

; <label>:58                                      ; preds = %populateParentQueryVector.exit.i
  %59 = getelementptr inbounds %struct.query, %struct.query* %17, i64 %v.110
  %60 = bitcast %struct.query* %59 to i8*
  %61 = call i64 @vector_pushBack(%struct.vector* nonnull %5, i8* %60) #6
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %populateQueryVectors.exit

; <label>:63                                      ; preds = %58
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 597, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.populateQueryVectors, i64 0, i64 0)) #8
  unreachable

populateQueryVectors.exit:                        ; preds = %58
  call void @vector_sort(%struct.vector* nonnull %5, i32 (i8*, i8*)* nonnull @compareQuery) #6
  %64 = call i64 @vector_getSize(%struct.vector* nonnull %9) #6
  %65 = getelementptr inbounds %struct.query, %struct.query* %17, i64 %v.110, i32 1
  store i64 0, i64* %65, align 8
  %66 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %64, %struct.adtree* %2, %struct.query* %17, %struct.vector* nonnull %5, %struct.vector* nonnull %9) #6
  %67 = fadd float %66, 0.000000e+00
  store i64 1, i64* %65, align 8
  %68 = call fastcc float @computeLocalLogLikelihoodHelper(i64 0, i64 %64, %struct.adtree* %2, %struct.query* %17, %struct.vector* nonnull %5, %struct.vector* nonnull %9) #6
  %69 = fadd float %67, %68
  store i64 -1, i64* %65, align 8
  %70 = fadd float %logLikelihood.08, %69
  %71 = add nuw nsw i64 %v.110, 1
  %72 = icmp slt i64 %71, %14
  br i1 %72, label %39, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %populateQueryVectors.exit
  %.lcssa = phi float [ %70, %populateQueryVectors.exit ]
  %.lcssa29 = phi i64 [ %42, %populateQueryVectors.exit ]
  %phitmp = sitofp i64 %.lcssa29 to double
  %phitmp17 = fmul double %phitmp, -5.000000e-01
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader1, %._crit_edge.loopexit, %.preheader
  %numTotalParent.0.lcssa = phi double [ -0.000000e+00, %.preheader ], [ %phitmp17, %._crit_edge.loopexit ], [ -0.000000e+00, %.preheader1 ]
  %logLikelihood.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %.lcssa, %._crit_edge.loopexit ], [ 0.000000e+00, %.preheader1 ]
  call void @vector_free(%struct.vector* nonnull %5) #6
  call void @vector_free(%struct.vector* nonnull %9) #6
  call void @free(i8* nonnull %16) #6
  %73 = getelementptr inbounds %struct.adtree, %struct.adtree* %2, i64 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = sitofp i64 %74 to double
  %76 = call double @log(double %75) #6
  %77 = fmul double %numTotalParent.0.lcssa, %76
  %78 = fptrunc double %77 to float
  %79 = sitofp i64 %74 to float
  %80 = fmul float %logLikelihood.0.lcssa, %79
  %81 = fadd float %80, %78
  ret float %81
}

declare %struct.vector* @vector_alloc(i64) #2

declare %struct.list* @net_getParentIdListPtr(%struct.net*, i64) #2

declare i64 @list_getSize(%struct.list*) #2

declare void @vector_free(%struct.vector*) #2

; Function Attrs: nounwind
declare double @log(double) #1

declare i64 @thread_getId(...) #2

declare void @SimRoiStart(i32) #2

declare i64 @thread_getNumThread(...) #2

declare %struct.vector* @Pvector_alloc(i64) #2

declare i64 @vector_pushBack(%struct.vector*, i8*) #2

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
declare void @llvm.x86.sse2.pause() #6

declare %struct.bitmap* @Pbitmap_alloc(i64) #2

declare %struct.queue* @Pqueue_alloc(i64) #2

declare i64 @TMnet_hasEdge(%struct.net*, i64, i64) #2

declare i64 @TMnet_isPath(%struct.net*, i64, i64, %struct.bitmap*, %struct.queue*) #2

declare void @TMnet_applyOperation(%struct.net*, i32, i64, i64) #2

declare void @Pbitmap_free(%struct.bitmap*) #2

declare void @Pqueue_free(%struct.queue*) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @TMpopulateParentQueryVector(%struct.net* %netPtr, i64 %id, %struct.query* %queries, %struct.vector* %parentQueryVectorPtr) unnamed_addr #0 {
  %it = alloca %struct.list_node*, align 8
  tail call void @vector_clear(%struct.vector* %parentQueryVectorPtr) #6
  %1 = tail call %struct.list* @net_getParentIdListPtr(%struct.net* %netPtr, i64 %id) #6
  call void @TMlist_iter_reset(%struct.list_node** nonnull %it, %struct.list* %1) #6
  br label %2

; <label>:2                                       ; preds = %5, %0
  %3 = call i64 @TMlist_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %1) #9
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %13, label %5

; <label>:5                                       ; preds = %2
  %6 = call i8* @TMlist_iter_next(%struct.list_node** nonnull %it, %struct.list* %1) #6
  %7 = ptrtoint i8* %6 to i64
  %8 = getelementptr inbounds %struct.query, %struct.query* %queries, i64 %7
  %9 = bitcast %struct.query* %8 to i8*
  %10 = call i64 @Pvector_pushBack(%struct.vector* %parentQueryVectorPtr, i8* %9) #6
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %2

; <label>:12                                      ; preds = %5
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 574, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.TMpopulateParentQueryVector, i64 0, i64 0)) #8
  unreachable

; <label>:13                                      ; preds = %2
  ret void
}

declare i64 @Pvector_copy(%struct.vector*, %struct.vector*) #2

declare void @vector_sort(%struct.vector*, i32 (i8*, i8*)*) #2

; Function Attrs: norecurse nounwind readonly uwtable
define internal i32 @compareQuery(i8* nocapture readonly %aPtr, i8* nocapture readonly %bPtr) #4 {
  %1 = bitcast i8* %aPtr to %struct.query**
  %2 = load %struct.query*, %struct.query** %1, align 8
  %3 = bitcast i8* %bPtr to %struct.query**
  %4 = load %struct.query*, %struct.query** %3, align 8
  %5 = getelementptr inbounds %struct.query, %struct.query* %2, i64 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.query, %struct.query* %4, i64 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %6, %8
  %10 = trunc i64 %9 to i32
  ret i32 %10
}

declare void @vector_clear(%struct.vector*) #2

declare i64 @TMnet_findDescendants(%struct.net*, i64, %struct.bitmap*, %struct.queue*) #2

declare i64 @TMlist_getSize(%struct.list*) #2

declare i64 @bitmap_set(%struct.bitmap*, i64) #2

declare i64 @bitmap_findClear(%struct.bitmap*, i64) #2

declare i64 @vector_getSize(%struct.vector*) #2

declare i8* @vector_at(%struct.vector*, i64) #2

declare i64 @vector_copy(%struct.vector*, %struct.vector*) #2

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #5

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind uwtable
define internal fastcc float @computeLocalLogLikelihoodHelper(i64 %i, i64 %numParent, %struct.adtree* %adtreePtr, %struct.query* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr) unnamed_addr #0 {
  %1 = icmp slt i64 %i, %numParent
  br i1 %1, label %23, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @adtree_getCount(%struct.adtree* %adtreePtr, %struct.vector* %queryVectorPtr) #6
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %computeSpecificLocalLogLikelihood.exit, label %5

; <label>:5                                       ; preds = %2
  %6 = sitofp i64 %3 to double
  %7 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = sitofp i64 %8 to double
  %10 = fdiv double %6, %9
  %11 = tail call i64 @adtree_getCount(%struct.adtree* %adtreePtr, %struct.vector* %parentQueryVectorPtr) #6
  %12 = icmp slt i64 %11, %3
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %5
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 287, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i64 0, i64 0)) #8
  unreachable

; <label>:14                                      ; preds = %5
  %15 = icmp sgt i64 %11, 0
  br i1 %15, label %17, label %16

; <label>:16                                      ; preds = %14
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 288, i8* nonnull getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.computeSpecificLocalLogLikelihood, i64 0, i64 0)) #8
  unreachable

; <label>:17                                      ; preds = %14
  %18 = sitofp i64 %11 to double
  %19 = fdiv double %6, %18
  %20 = tail call double @log(double %19) #6
  %21 = fmul double %10, %20
  %22 = fptrunc double %21 to float
  br label %computeSpecificLocalLogLikelihood.exit

; <label>:23                                      ; preds = %0
  %24 = tail call i8* @vector_at(%struct.vector* %parentQueryVectorPtr, i64 %i) #6
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.query, %struct.query* %queries, i64 %26, i32 1
  store i64 0, i64* %27, align 8
  %28 = add nsw i64 %i, 1
  %29 = tail call fastcc float @computeLocalLogLikelihoodHelper(i64 %28, i64 %numParent, %struct.adtree* %adtreePtr, %struct.query* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  %30 = fadd float %29, 0.000000e+00
  store i64 1, i64* %27, align 8
  %31 = tail call fastcc float @computeLocalLogLikelihoodHelper(i64 %28, i64 %numParent, %struct.adtree* %adtreePtr, %struct.query* %queries, %struct.vector* %queryVectorPtr, %struct.vector* %parentQueryVectorPtr)
  %32 = fadd float %30, %31
  store i64 -1, i64* %27, align 8
  ret float %32

computeSpecificLocalLogLikelihood.exit:           ; preds = %17, %2
  %.0 = phi float [ %22, %17 ], [ 0.000000e+00, %2 ]
  ret float %.0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { argmemonly nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = !{i32 1711916, i32 1711932, i32 1711968, i32 1712004, i32 1712040}
!2 = !{i32 1712517, i32 1712532, i32 1712566}
!3 = !{i32 1712288, i32 1712303, i32 1712331}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.unroll.disable"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"TMfindBestInsertTask: %agg.result"}
!8 = distinct !{!8, !"TMfindBestInsertTask"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"TMfindBestRemoveTask: %agg.result"}
!11 = distinct !{!11, !"TMfindBestRemoveTask"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.vectorize.width", i32 1337}
!14 = !{!15}
!15 = distinct !{!15, !16, !"TMfindBestReverseTask: %agg.result"}
!16 = distinct !{!16, !"TMfindBestReverseTask"}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !5}
