; ModuleID = '../bin/adtree.marked.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adtree_node = type { i64, i64, i64, %struct.vector* }
%struct.vector = type { i64, i64, i8** }
%struct.adtree_vary = type { i64, i64, %struct.adtree_node*, %struct.adtree_node* }
%struct.adtree = type { i64, i64, %struct.adtree_node* }
%struct.data = type { i64, i64, i8*, %struct.random* }
%struct.random = type { i64 (i64*, i64*)*, [624 x i64], i64 }

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
define noalias %struct.adtree_node* @allocNode(i64 %index) #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #5
  %2 = bitcast i8* %1 to %struct.adtree_node*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %13, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.vector* @vector_alloc(i64 1) #5
  %6 = getelementptr inbounds i8, i8* %1, i64 24
  %7 = bitcast i8* %6 to %struct.vector**
  store %struct.vector* %5, %struct.vector** %7, align 8
  %8 = icmp eq %struct.vector* %5, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %4
  tail call void @free(i8* nonnull %1) #5
  br label %13

; <label>:10                                      ; preds = %4
  %11 = bitcast i8* %1 to i64*
  store i64 %index, i64* %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 8
  call void @llvm.memset.p0i8.i64(i8* %12, i8 -1, i64 16, i32 8, i1 false)
  br label %13

; <label>:13                                      ; preds = %10, %0, %9
  %.0 = phi %struct.adtree_node* [ null, %9 ], [ %2, %0 ], [ %2, %10 ]
  ret %struct.adtree_node* %.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.vector* @vector_alloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @freeNode(%struct.adtree_node* nocapture %nodePtr) #0 {
  %1 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %nodePtr, i64 0, i32 3
  %2 = load %struct.vector*, %struct.vector** %1, align 8
  tail call void @vector_free(%struct.vector* %2) #5
  %3 = bitcast %struct.adtree_node* %nodePtr to i8*
  tail call void @free(i8* %3) #5
  ret void
}

declare void @vector_free(%struct.vector*) #2

; Function Attrs: nounwind uwtable
define noalias %struct.adtree_vary* @allocVary(i64 %index) #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #5
  %2 = bitcast i8* %1 to %struct.adtree_vary*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %9, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to i64*
  store i64 %index, i64* %5, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 -1, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 16, i32 8, i1 false)
  br label %9

; <label>:9                                       ; preds = %0, %4
  ret %struct.adtree_vary* %2
}

; Function Attrs: nounwind uwtable
define void @freeVary(%struct.adtree_vary* nocapture %varyPtr) #0 {
  %1 = bitcast %struct.adtree_vary* %varyPtr to i8*
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define noalias %struct.adtree* @adtree_alloc() #0 {
  %1 = tail call noalias i8* @malloc(i64 24) #5
  %2 = bitcast i8* %1 to %struct.adtree*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8, i8* %1, i64 16
  %6 = bitcast i8* %5 to %struct.adtree_node**
  call void @llvm.memset.p0i8.i64(i8* nonnull %1, i8 -1, i64 16, i32 8, i1 false)
  store %struct.adtree_node* null, %struct.adtree_node** %6, align 8
  br label %7

; <label>:7                                       ; preds = %0, %4
  ret %struct.adtree* %2
}

; Function Attrs: nounwind uwtable
define void @adtree_free(%struct.adtree* nocapture %adtreePtr) #0 {
  %1 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i64 0, i32 2
  %2 = load %struct.adtree_node*, %struct.adtree_node** %1, align 8
  tail call fastcc void @freeNodes(%struct.adtree_node* %2)
  %3 = bitcast %struct.adtree* %adtreePtr to i8*
  tail call void @free(i8* %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @freeNodes(%struct.adtree_node* %nodePtr) unnamed_addr #0 {
  %1 = icmp eq %struct.adtree_node* %nodePtr, null
  br i1 %1, label %17, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %nodePtr, i64 0, i32 3
  %4 = load %struct.vector*, %struct.vector** %3, align 8
  %5 = tail call i64 @vector_getSize(%struct.vector* %4) #5
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %v.01 = phi i64 [ %14, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %7 = tail call i8* @vector_at(%struct.vector* %4, i64 %v.01) #5
  %8 = getelementptr inbounds i8, i8* %7, i64 16
  %9 = bitcast i8* %8 to %struct.adtree_node**
  %10 = load %struct.adtree_node*, %struct.adtree_node** %9, align 8
  tail call fastcc void @freeNodes(%struct.adtree_node* %10)
  %11 = getelementptr inbounds i8, i8* %7, i64 24
  %12 = bitcast i8* %11 to %struct.adtree_node**
  %13 = load %struct.adtree_node*, %struct.adtree_node** %12, align 8
  tail call fastcc void @freeNodes(%struct.adtree_node* %13)
  tail call void @free(i8* %7) #5
  %14 = add nuw nsw i64 %v.01, 1
  %exitcond = icmp eq i64 %14, %5
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %15 = load %struct.vector*, %struct.vector** %3, align 8
  tail call void @vector_free(%struct.vector* %15) #5
  %16 = bitcast %struct.adtree_node* %nodePtr to i8*
  tail call void @free(i8* %16) #5
  br label %17

; <label>:17                                      ; preds = %0, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @adtree_make(%struct.adtree* nocapture %adtreePtr, %struct.data* %dataPtr) #0 {
  %1 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i64 0, i32 0
  store i64 %4, i64* %5, align 8
  %6 = load i64, i64* %1, align 8
  %7 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i64 0, i32 1
  store i64 %6, i64* %7, align 8
  tail call void @data_sort(%struct.data* %dataPtr, i64 0, i64 %2, i64 0) #5
  %8 = tail call fastcc %struct.adtree_node* @makeNode(i64 -1, i64 -1, i64 0, i64 %2, %struct.data* %dataPtr)
  %9 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i64 0, i32 2
  store %struct.adtree_node* %8, %struct.adtree_node** %9, align 8
  ret void
}

declare void @data_sort(%struct.data*, i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.adtree_node* @makeNode(i64 %parentIndex, i64 %index, i64 %start, i64 %numRecord, %struct.data* %dataPtr) unnamed_addr #0 {
  %1 = tail call noalias i8* @malloc(i64 32) #5
  %2 = bitcast i8* %1 to %struct.adtree_node*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %allocNode.exit, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.vector* @vector_alloc(i64 1) #5
  %6 = getelementptr inbounds i8, i8* %1, i64 24
  %7 = bitcast i8* %6 to %struct.vector**
  store %struct.vector* %5, %struct.vector** %7, align 8
  %8 = icmp eq %struct.vector* %5, null
  br i1 %8, label %allocNode.exit.thread, label %allocNode.exit.thread1

allocNode.exit.thread:                            ; preds = %4
  tail call void @free(i8* nonnull %1) #5
  br label %allocNode.exit

allocNode.exit.thread1:                           ; preds = %4
  %9 = bitcast i8* %1 to i64*
  store i64 %index, i64* %9, align 8
  %10 = getelementptr inbounds i8, i8* %1, i64 8
  %11 = bitcast i8* %10 to i64*
  store i64 -1, i64* %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 16
  %13 = bitcast i8* %12 to i64*
  store i64 %numRecord, i64* %13, align 8
  %14 = getelementptr inbounds %struct.data, %struct.data* %dataPtr, i64 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %numRecord, 1
  br i1 %16, label %allocNode.exit.thread1.split.us.preheader, label %allocNode.exit.thread1.split.preheader

allocNode.exit.thread1.split.preheader:           ; preds = %allocNode.exit.thread1
  br label %allocNode.exit.thread1.split

allocNode.exit.thread1.split.us.preheader:        ; preds = %allocNode.exit.thread1
  br label %allocNode.exit.thread1.split.us

allocNode.exit.thread1.split.us:                  ; preds = %allocNode.exit.thread1.split.us.preheader, %makeVary.exit.us
  %v.0.in.us = phi i64 [ %v.0.us, %makeVary.exit.us ], [ %index, %allocNode.exit.thread1.split.us.preheader ]
  %v.0.us = add nsw i64 %v.0.in.us, 1
  %17 = icmp slt i64 %v.0.us, %15
  br i1 %17, label %18, label %.us-lcssa.us.loopexit

; <label>:18                                      ; preds = %allocNode.exit.thread1.split.us
  %19 = tail call noalias i8* @malloc(i64 32) #5
  %20 = icmp eq i8* %19, null
  br i1 %20, label %allocVary.exit.i.loopexit, label %allocVary.exit.i.thread.us

allocVary.exit.i.thread.us:                       ; preds = %18
  %21 = bitcast i8* %19 to i64*
  store i64 %v.0.us, i64* %21, align 8
  %22 = getelementptr inbounds i8, i8* %19, i64 8
  %23 = bitcast i8* %22 to i64*
  store i64 -1, i64* %23, align 8
  %24 = getelementptr inbounds i8, i8* %19, i64 16
  tail call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 16, i32 8, i1 false) #5
  %25 = icmp eq i64 %v.0.in.us, %parentIndex
  br i1 %25, label %27, label %26

; <label>:26                                      ; preds = %allocVary.exit.i.thread.us
  tail call void @data_sort(%struct.data* %dataPtr, i64 %start, i64 %numRecord, i64 %v.0.us) #5
  br label %27

; <label>:27                                      ; preds = %allocVary.exit.i.thread.us, %26
  %28 = tail call i64 @data_findSplit(%struct.data* %dataPtr, i64 %start, i64 %numRecord, i64 %v.0.us) #5
  %29 = sub nsw i64 %numRecord, %28
  %30 = icmp sge i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = xor i64 %31, 1
  store i64 %32, i64* %23, align 8
  %33 = icmp eq i64 %28, 0
  %or.cond3.i.us = or i1 %33, %30
  br i1 %or.cond3.i.us, label %38, label %34

; <label>:34                                      ; preds = %27
  %35 = tail call fastcc %struct.adtree_node* @makeNode(i64 %v.0.us, i64 %v.0.us, i64 %start, i64 %28, %struct.data* %dataPtr) #5
  %36 = bitcast i8* %24 to %struct.adtree_node**
  store %struct.adtree_node* %35, %struct.adtree_node** %36, align 8
  %37 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %35, i64 0, i32 1
  store i64 0, i64* %37, align 8
  br label %40

; <label>:38                                      ; preds = %27
  %39 = bitcast i8* %24 to %struct.adtree_node**
  store %struct.adtree_node* null, %struct.adtree_node** %39, align 8
  br label %40

; <label>:40                                      ; preds = %38, %34
  %41 = icmp eq i64 %28, %numRecord
  %42 = xor i1 %30, true
  %or.cond5.i.us = or i1 %41, %42
  br i1 %or.cond5.i.us, label %49, label %43

; <label>:43                                      ; preds = %40
  %44 = add nsw i64 %28, %start
  %45 = tail call fastcc %struct.adtree_node* @makeNode(i64 %v.0.us, i64 %v.0.us, i64 %44, i64 %29, %struct.data* %dataPtr) #5
  %46 = getelementptr inbounds i8, i8* %19, i64 24
  %47 = bitcast i8* %46 to %struct.adtree_node**
  store %struct.adtree_node* %45, %struct.adtree_node** %47, align 8
  %48 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %45, i64 0, i32 1
  store i64 1, i64* %48, align 8
  br label %makeVary.exit.us

; <label>:49                                      ; preds = %40
  %50 = getelementptr inbounds i8, i8* %19, i64 24
  %51 = bitcast i8* %50 to %struct.adtree_node**
  store %struct.adtree_node* null, %struct.adtree_node** %51, align 8
  br label %makeVary.exit.us

makeVary.exit.us:                                 ; preds = %49, %43
  %52 = tail call i64 @vector_pushBack(%struct.vector* nonnull %5, i8* nonnull %19) #5
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %.us-lcssa3.us.loopexit, label %allocNode.exit.thread1.split.us

allocNode.exit:                                   ; preds = %0, %allocNode.exit.thread
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 283, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.makeNode, i64 0, i64 0)) #6
  unreachable

allocNode.exit.thread1.split:                     ; preds = %allocNode.exit.thread1.split.preheader, %makeVary.exit
  %v.0.in = phi i64 [ %v.0, %makeVary.exit ], [ %index, %allocNode.exit.thread1.split.preheader ]
  %v.0 = add nsw i64 %v.0.in, 1
  %54 = icmp slt i64 %v.0, %15
  br i1 %54, label %55, label %.us-lcssa.us.loopexit13

; <label>:55                                      ; preds = %allocNode.exit.thread1.split
  %56 = tail call noalias i8* @malloc(i64 32) #5
  %57 = icmp eq i8* %56, null
  br i1 %57, label %allocVary.exit.i.loopexit14, label %allocVary.exit.i.thread

allocVary.exit.i.thread:                          ; preds = %55
  %58 = bitcast i8* %56 to i64*
  store i64 %v.0, i64* %58, align 8
  %59 = getelementptr inbounds i8, i8* %56, i64 8
  %60 = bitcast i8* %59 to i64*
  store i64 -1, i64* %60, align 8
  %61 = getelementptr inbounds i8, i8* %56, i64 16
  tail call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 16, i32 8, i1 false) #5
  %62 = tail call i64 @data_findSplit(%struct.data* %dataPtr, i64 %start, i64 %numRecord, i64 %v.0) #5
  %63 = sub nsw i64 %numRecord, %62
  %64 = icmp sge i64 %62, %63
  %65 = zext i1 %64 to i64
  %66 = xor i64 %65, 1
  store i64 %66, i64* %60, align 8
  %67 = icmp eq i64 %62, 0
  %or.cond3.i = or i1 %67, %64
  br i1 %or.cond3.i, label %68, label %70

allocVary.exit.i.loopexit:                        ; preds = %18
  br label %allocVary.exit.i

allocVary.exit.i.loopexit14:                      ; preds = %55
  br label %allocVary.exit.i

allocVary.exit.i:                                 ; preds = %allocVary.exit.i.loopexit14, %allocVary.exit.i.loopexit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 239, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.makeVary, i64 0, i64 0)) #6
  unreachable

; <label>:68                                      ; preds = %allocVary.exit.i.thread
  %69 = bitcast i8* %61 to %struct.adtree_node**
  store %struct.adtree_node* null, %struct.adtree_node** %69, align 8
  br label %74

; <label>:70                                      ; preds = %allocVary.exit.i.thread
  %71 = tail call fastcc %struct.adtree_node* @makeNode(i64 %v.0, i64 %v.0, i64 %start, i64 %62, %struct.data* %dataPtr) #5
  %72 = bitcast i8* %61 to %struct.adtree_node**
  store %struct.adtree_node* %71, %struct.adtree_node** %72, align 8
  %73 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %71, i64 0, i32 1
  store i64 0, i64* %73, align 8
  br label %74

; <label>:74                                      ; preds = %70, %68
  %75 = icmp eq i64 %62, %numRecord
  %76 = xor i1 %64, true
  %or.cond5.i = or i1 %75, %76
  br i1 %or.cond5.i, label %77, label %80

; <label>:77                                      ; preds = %74
  %78 = getelementptr inbounds i8, i8* %56, i64 24
  %79 = bitcast i8* %78 to %struct.adtree_node**
  store %struct.adtree_node* null, %struct.adtree_node** %79, align 8
  br label %makeVary.exit

; <label>:80                                      ; preds = %74
  %81 = add nsw i64 %62, %start
  %82 = tail call fastcc %struct.adtree_node* @makeNode(i64 %v.0, i64 %v.0, i64 %81, i64 %63, %struct.data* %dataPtr) #5
  %83 = getelementptr inbounds i8, i8* %56, i64 24
  %84 = bitcast i8* %83 to %struct.adtree_node**
  store %struct.adtree_node* %82, %struct.adtree_node** %84, align 8
  %85 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %82, i64 0, i32 1
  store i64 1, i64* %85, align 8
  br label %makeVary.exit

makeVary.exit:                                    ; preds = %80, %77
  %86 = tail call i64 @vector_pushBack(%struct.vector* nonnull %5, i8* nonnull %56) #5
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %.us-lcssa3.us.loopexit15, label %allocNode.exit.thread1.split

.us-lcssa3.us.loopexit:                           ; preds = %makeVary.exit.us
  br label %.us-lcssa3.us

.us-lcssa3.us.loopexit15:                         ; preds = %makeVary.exit
  br label %.us-lcssa3.us

.us-lcssa3.us:                                    ; preds = %.us-lcssa3.us.loopexit15, %.us-lcssa3.us.loopexit
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 296, i8* nonnull getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.makeNode, i64 0, i64 0)) #6
  unreachable

.us-lcssa.us.loopexit:                            ; preds = %allocNode.exit.thread1.split.us
  br label %.us-lcssa.us

.us-lcssa.us.loopexit13:                          ; preds = %allocNode.exit.thread1.split
  br label %.us-lcssa.us

.us-lcssa.us:                                     ; preds = %.us-lcssa.us.loopexit13, %.us-lcssa.us.loopexit
  ret %struct.adtree_node* %2
}

; Function Attrs: nounwind uwtable
define i64 @adtree_getCount(%struct.adtree* %adtreePtr, %struct.vector* %queryVectorPtr) #0 {
  %1 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i64 0, i32 2
  %2 = load %struct.adtree_node*, %struct.adtree_node** %1, align 8
  %3 = icmp eq %struct.adtree_node* %2, null
  br i1 %3, label %14, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i64 @vector_getSize(%struct.vector* %queryVectorPtr) #5
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %4
  %8 = add nsw i64 %5, -1
  %9 = tail call i8* @vector_at(%struct.vector* %queryVectorPtr, i64 %8) #5
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 8
  br label %12

; <label>:12                                      ; preds = %7, %4
  %lastQueryIndex.0 = phi i64 [ %11, %7 ], [ -1, %4 ]
  %13 = tail call fastcc i64 @getCount(%struct.adtree_node* nonnull %2, i64 -1, i64 0, %struct.vector* %queryVectorPtr, i64 %lastQueryIndex.0, %struct.adtree* nonnull %adtreePtr)
  br label %14

; <label>:14                                      ; preds = %0, %12
  %.0 = phi i64 [ %13, %12 ], [ 0, %0 ]
  ret i64 %.0
}

declare i64 @vector_getSize(%struct.vector*) #2

declare i8* @vector_at(%struct.vector*, i64) #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @getCount(%struct.adtree_node* %nodePtr, i64 %i, i64 %q, %struct.vector* %queryVectorPtr, i64 %lastQueryIndex, %struct.adtree* %adtreePtr) unnamed_addr #0 {
  %1 = icmp eq %struct.adtree_node* %nodePtr, null
  br i1 %1, label %.loopexit, label %.lr.ph27.preheader

.lr.ph27.preheader:                               ; preds = %0
  br label %.lr.ph27

.lr.ph27:                                         ; preds = %.lr.ph27.preheader, %tailrecurse.backedge
  %q.tr25 = phi i64 [ %75, %tailrecurse.backedge ], [ %q, %.lr.ph27.preheader ]
  %i.tr24 = phi i64 [ %74, %tailrecurse.backedge ], [ %i, %.lr.ph27.preheader ]
  %nodePtr.tr23 = phi %struct.adtree_node* [ %nodePtr.tr.be, %tailrecurse.backedge ], [ %nodePtr, %.lr.ph27.preheader ]
  %2 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %nodePtr.tr23, i64 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = icmp slt i64 %3, %lastQueryIndex
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %.lr.ph27
  %nodePtr.tr23.lcssa = phi %struct.adtree_node* [ %nodePtr.tr23, %.lr.ph27 ]
  %6 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %nodePtr.tr23.lcssa, i64 0, i32 2
  %7 = load i64, i64* %6, align 8
  br label %.loopexit

; <label>:8                                       ; preds = %.lr.ph27
  %9 = tail call i8* @vector_at(%struct.vector* %queryVectorPtr, i64 %q.tr25) #5
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %8
  %nodePtr.tr23.lcssa132 = phi %struct.adtree_node* [ %nodePtr.tr23, %8 ]
  %12 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %nodePtr.tr23.lcssa132, i64 0, i32 2
  %13 = load i64, i64* %12, align 8
  br label %.loopexit

; <label>:14                                      ; preds = %8
  %15 = bitcast i8* %9 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, %lastQueryIndex
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %14
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 347, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i64 0, i64 0)) #6
  unreachable

; <label>:19                                      ; preds = %14
  %20 = getelementptr inbounds %struct.adtree_node, %struct.adtree_node* %nodePtr.tr23, i64 0, i32 3
  %21 = load %struct.vector*, %struct.vector** %20, align 8
  %22 = xor i64 %3, -1
  %23 = add i64 %16, %22
  %24 = tail call i8* @vector_at(%struct.vector* %21, i64 %23) #5
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %19
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 352, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i64 0, i64 0)) #6
  unreachable

; <label>:27                                      ; preds = %19
  %28 = getelementptr inbounds i8, i8* %9, i64 8
  %29 = bitcast i8* %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %24, i64 8
  %32 = bitcast i8* %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %71

; <label>:35                                      ; preds = %27
  %.lcssa140 = phi i64 [ %30, %27 ]
  %.lcssa = phi i64* [ %29, %27 ]
  %nodePtr.tr23.lcssa135 = phi %struct.adtree_node* [ %nodePtr.tr23, %27 ]
  %i.tr24.lcssa129 = phi i64 [ %i.tr24, %27 ]
  %q.tr25.lcssa123 = phi i64 [ %q.tr25, %27 ]
  %36 = tail call i64 @vector_getSize(%struct.vector* %queryVectorPtr) #5
  %37 = add nsw i64 %36, -1
  %38 = tail call %struct.vector* @Pvector_alloc(i64 %37) #5
  %39 = icmp eq %struct.vector* %38, null
  br i1 %39, label %41, label %.preheader

.preheader:                                       ; preds = %35
  %40 = icmp sgt i64 %36, 0
  br i1 %40, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

; <label>:41                                      ; preds = %35
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 366, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i64 0, i64 0)) #6
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %48
  %qq.022 = phi i64 [ %49, %48 ], [ 0, %.lr.ph.preheader ]
  %42 = icmp eq i64 %qq.022, %q.tr25.lcssa123
  br i1 %42, label %48, label %43

; <label>:43                                      ; preds = %.lr.ph
  %44 = tail call i8* @vector_at(%struct.vector* %queryVectorPtr, i64 %qq.022) #5
  %45 = tail call i64 @vector_pushBack(%struct.vector* nonnull %38, i8* %44) #5
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %43
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 373, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i64 0, i64 0)) #6
  unreachable

; <label>:48                                      ; preds = %43, %.lr.ph
  %49 = add nuw nsw i64 %qq.022, 1
  %50 = icmp slt i64 %49, %36
  br i1 %50, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %51 = getelementptr inbounds %struct.adtree, %struct.adtree* %adtreePtr, i64 0, i32 2
  %52 = load %struct.adtree_node*, %struct.adtree_node** %51, align 8
  %53 = icmp eq %struct.adtree_node* %52, null
  br i1 %53, label %adtree_getCount.exit, label %54

; <label>:54                                      ; preds = %._crit_edge
  %55 = tail call i64 @vector_getSize(%struct.vector* nonnull %38) #5
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %62

; <label>:57                                      ; preds = %54
  %58 = add nsw i64 %55, -1
  %59 = tail call i8* @vector_at(%struct.vector* nonnull %38, i64 %58) #5
  %60 = bitcast i8* %59 to i64*
  %61 = load i64, i64* %60, align 8
  br label %62

; <label>:62                                      ; preds = %57, %54
  %lastQueryIndex.0.i = phi i64 [ %61, %57 ], [ -1, %54 ]
  %63 = tail call fastcc i64 @getCount(%struct.adtree_node* nonnull %52, i64 -1, i64 0, %struct.vector* nonnull %38, i64 %lastQueryIndex.0.i, %struct.adtree* nonnull %adtreePtr) #5
  br label %adtree_getCount.exit

adtree_getCount.exit:                             ; preds = %._crit_edge, %62
  %.0.i = phi i64 [ %63, %62 ], [ 0, %._crit_edge ]
  tail call void @Pvector_free(%struct.vector* nonnull %38) #5
  %64 = icmp eq i64 %.lcssa140, 0
  br i1 %64, label %65, label %67

; <label>:65                                      ; preds = %adtree_getCount.exit
  store i64 1, i64* %.lcssa, align 8
  %66 = tail call fastcc i64 @getCount(%struct.adtree_node* nonnull %nodePtr.tr23.lcssa135, i64 %i.tr24.lcssa129, i64 %q.tr25.lcssa123, %struct.vector* %queryVectorPtr, i64 %lastQueryIndex, %struct.adtree* nonnull %adtreePtr)
  br label %69

; <label>:67                                      ; preds = %adtree_getCount.exit
  store i64 0, i64* %.lcssa, align 8
  %68 = tail call fastcc i64 @getCount(%struct.adtree_node* nonnull %nodePtr.tr23.lcssa135, i64 %i.tr24.lcssa129, i64 %q.tr25.lcssa123, %struct.vector* %queryVectorPtr, i64 %lastQueryIndex, %struct.adtree* nonnull %adtreePtr)
  br label %69

; <label>:69                                      ; preds = %67, %65
  %storemerge = phi i64 [ 1, %67 ], [ 0, %65 ]
  %invertCount.0 = phi i64 [ %68, %67 ], [ %66, %65 ]
  store i64 %storemerge, i64* %.lcssa, align 8
  %70 = sub nsw i64 %.0.i, %invertCount.0
  br label %.loopexit

; <label>:71                                      ; preds = %27
  switch i64 %30, label %79 [
    i64 0, label %72
    i64 1, label %77
  ]

; <label>:72                                      ; preds = %71
  %73 = getelementptr inbounds i8, i8* %24, i64 16
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %72, %77
  %nodePtr.tr.be.in.in = phi i8* [ %73, %72 ], [ %78, %77 ]
  %nodePtr.tr.be.in = bitcast i8* %nodePtr.tr.be.in.in to %struct.adtree_node**
  %nodePtr.tr.be = load %struct.adtree_node*, %struct.adtree_node** %nodePtr.tr.be.in, align 8
  %74 = add nsw i64 %i.tr24, 1
  %75 = add nsw i64 %q.tr25, 1
  %76 = icmp eq %struct.adtree_node* %nodePtr.tr.be, null
  br i1 %76, label %.loopexit.loopexit, label %.lr.ph27

; <label>:77                                      ; preds = %71
  %78 = getelementptr inbounds i8, i8* %24, i64 24
  br label %tailrecurse.backedge

; <label>:79                                      ; preds = %71
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 433, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.getCount, i64 0, i64 0)) #6
  unreachable

.loopexit.loopexit:                               ; preds = %tailrecurse.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0, %69, %11, %5
  %.0 = phi i64 [ %7, %5 ], [ %13, %11 ], [ %70, %69 ], [ 0, %0 ], [ 0, %.loopexit.loopexit ]
  ret i64 %.0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare i64 @vector_pushBack(%struct.vector*, i8*) #2

declare i64 @data_findSplit(%struct.data*, i64, i64, i64) #2

declare %struct.vector* @Pvector_alloc(i64) #2

declare void @Pvector_free(%struct.vector*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
