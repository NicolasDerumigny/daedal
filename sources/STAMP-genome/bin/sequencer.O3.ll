; ModuleID = '../bin/sequencer.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tm_thread_context_t = type { i32, i32, %struct.simple_metadata*, i32, i32, [44 x i8] }
%struct.simple_metadata = type opaque
%struct.sequencer = type { i8*, %struct.segments*, %struct.hashtable*, %struct.endInfoEntry*, %struct.table**, %struct.constructEntry*, %struct.table*, i64 }
%struct.hashtable = type { %struct.list**, i64, i64 (i8*)*, i64 (%struct.pair*, %struct.pair*)*, i64, i64 }
%struct.list = type { %struct.list_node, i64 (i8*, i8*)*, i64 }
%struct.list_node = type { i8*, %struct.list_node* }
%struct.pair = type { i8*, i8* }
%struct.endInfoEntry = type { i64, i64 }
%struct.constructEntry = type { i64, i8*, i64, %struct.constructEntry*, %struct.constructEntry*, %struct.constructEntry*, i64, i64 }
%struct.table = type { %struct.list**, i64 }
%struct.segments = type { i64, i64, %struct.vector*, i8** }
%struct.vector = type { i64, i64, i8** }

@thread_contexts = external global %struct._tm_thread_context_t*, align 8
@.str = private unnamed_addr constant [12 x i8] c"segmentsPtr\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"sequencer.c\00", align 1
@__PRETTY_FUNCTION__.sequencer_run = private unnamed_addr constant [27 x i8] c"void sequencer_run(void *)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"startConstructEntry_endPtr\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"endConstructEntry_startPtr\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"newSequenceLength <= totalLength\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"copyPtr <= (sequence + sequenceLength)\00", align 1
@str = private unnamed_addr constant [40 x i8] c"ERROR: sequence length != actual length\00"

; Function Attrs: nounwind uwtable
define noalias %struct.sequencer* @sequencer_alloc(i64 %geneLength, i64 %segmentLength, %struct.segments* %segmentsPtr) #0 {
  %1 = sub nsw i64 %geneLength, %segmentLength
  %2 = add nsw i64 %1, 1
  %3 = tail call noalias i8* @malloc(i64 64) #7
  %4 = bitcast i8* %3 to %struct.sequencer*
  %5 = icmp eq i8* %3, null
  br i1 %5, label %.loopexit, label %6

; <label>:6                                       ; preds = %0
  %7 = tail call %struct.hashtable* @hashtable_alloc(i64 %geneLength, i64 (i8*)* nonnull @hashSegment, i64 (%struct.pair*, %struct.pair*)* nonnull @compareSegment, i64 -1, i64 -1) #7
  %8 = getelementptr inbounds i8, i8* %3, i64 16
  %9 = bitcast i8* %8 to %struct.hashtable**
  store %struct.hashtable* %7, %struct.hashtable** %9, align 8
  %10 = icmp eq %struct.hashtable* %7, null
  br i1 %10, label %.loopexit, label %11

; <label>:11                                      ; preds = %6
  %12 = shl i64 %2, 4
  %13 = tail call noalias i8* @malloc(i64 %12) #7
  %14 = getelementptr inbounds i8, i8* %3, i64 24
  %15 = bitcast i8* %14 to i8**
  store i8* %13, i8** %15, align 8
  %16 = icmp slt i64 %1, 0
  %17 = bitcast i8* %13 to %struct.endInfoEntry*
  br i1 %16, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %11
  %18 = add i64 %geneLength, 1
  %19 = sub i64 %18, %segmentLength
  %20 = sub i64 %geneLength, %segmentLength
  %xtraiter = and i64 %19, 7
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph8.split, label %.preheader11

.preheader11:                                     ; preds = %.lr.ph8
  br label %21

; <label>:21                                      ; preds = %.preheader11, %21
  %i.06.prol = phi i64 [ %24, %21 ], [ 0, %.preheader11 ]
  %prol.iter = phi i64 [ %prol.iter.sub, %21 ], [ %xtraiter, %.preheader11 ]
  %22 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %i.06.prol, i32 0
  %23 = bitcast i64* %22 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %23, align 8
  %24 = add nuw nsw i64 %i.06.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph8.split.loopexit, label %21, !llvm.loop !1

.lr.ph8.split.loopexit:                           ; preds = %21
  %.lcssa = phi i64 [ %24, %21 ]
  br label %.lr.ph8.split

.lr.ph8.split:                                    ; preds = %.lr.ph8.split.loopexit, %.lr.ph8
  %i.06.unr = phi i64 [ 0, %.lr.ph8 ], [ %.lcssa, %.lr.ph8.split.loopexit ]
  %25 = icmp ult i64 %20, 7
  br i1 %25, label %._crit_edge9.loopexit, label %.lr.ph8.split.split

.lr.ph8.split.split:                              ; preds = %.lr.ph8.split
  br label %26

; <label>:26                                      ; preds = %26, %.lr.ph8.split.split
  %i.06 = phi i64 [ %i.06.unr, %.lr.ph8.split.split ], [ %50, %26 ]
  %27 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %i.06, i32 0
  %28 = bitcast i64* %27 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %28, align 8
  %29 = add nuw nsw i64 %i.06, 1
  %30 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %29, i32 0
  %31 = bitcast i64* %30 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %31, align 8
  %32 = add nsw i64 %i.06, 2
  %33 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %32, i32 0
  %34 = bitcast i64* %33 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %34, align 8
  %35 = add nsw i64 %i.06, 3
  %36 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %35, i32 0
  %37 = bitcast i64* %36 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %37, align 8
  %38 = add nsw i64 %i.06, 4
  %39 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %38, i32 0
  %40 = bitcast i64* %39 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %40, align 8
  %41 = add nsw i64 %i.06, 5
  %42 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %41, i32 0
  %43 = bitcast i64* %42 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %43, align 8
  %44 = add nsw i64 %i.06, 6
  %45 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %44, i32 0
  %46 = bitcast i64* %45 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %46, align 8
  %47 = add nsw i64 %i.06, 7
  %48 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %17, i64 %47, i32 0
  %49 = bitcast i64* %48 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %49, align 8
  %50 = add nsw i64 %i.06, 8
  %exitcond10.7 = icmp eq i64 %50, %19
  br i1 %exitcond10.7, label %._crit_edge9.loopexit.unr-lcssa, label %26

._crit_edge9.loopexit.unr-lcssa:                  ; preds = %26
  br label %._crit_edge9.loopexit

._crit_edge9.loopexit:                            ; preds = %.lr.ph8.split, %._crit_edge9.loopexit.unr-lcssa
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %._crit_edge9.loopexit, %11
  %51 = shl i64 %segmentLength, 3
  %52 = tail call noalias i8* @malloc(i64 %51) #7
  %53 = getelementptr inbounds i8, i8* %3, i64 32
  %54 = bitcast i8* %53 to i8**
  store i8* %52, i8** %54, align 8
  %55 = icmp eq i8* %52, null
  %56 = bitcast i8* %52 to %struct.table**
  br i1 %55, label %.loopexit, label %.preheader1

.preheader1:                                      ; preds = %._crit_edge9
  %57 = icmp sgt i64 %segmentLength, 1
  br i1 %57, label %.lr.ph4.preheader, label %._crit_edge5

.lr.ph4.preheader:                                ; preds = %.preheader1
  br label %.lr.ph4

; <label>:58                                      ; preds = %.lr.ph4
  %59 = icmp slt i64 %63, %segmentLength
  br i1 %59, label %.lr.ph4, label %._crit_edge5.loopexit

.lr.ph4:                                          ; preds = %.lr.ph4.preheader, %58
  %i.13 = phi i64 [ %63, %58 ], [ 1, %.lr.ph4.preheader ]
  %60 = tail call %struct.table* @table_alloc(i64 %geneLength, i64 (i8*, i8*)* null) #7
  %61 = getelementptr inbounds %struct.table*, %struct.table** %56, i64 %i.13
  store %struct.table* %60, %struct.table** %61, align 8
  %62 = icmp eq %struct.table* %60, null
  %63 = add nuw nsw i64 %i.13, 1
  br i1 %62, label %.loopexit.loopexit, label %58

._crit_edge5.loopexit:                            ; preds = %58
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge5.loopexit, %.preheader1
  %64 = getelementptr inbounds i8, i8* %3, i64 56
  %65 = bitcast i8* %64 to i64*
  store i64 %segmentLength, i64* %65, align 8
  %66 = shl i64 %2, 6
  %67 = tail call noalias i8* @malloc(i64 %66) #7
  %68 = getelementptr inbounds i8, i8* %3, i64 40
  %69 = bitcast i8* %68 to i8**
  store i8* %67, i8** %69, align 8
  %70 = icmp eq i8* %67, null
  %71 = bitcast i8* %67 to %struct.constructEntry*
  br i1 %70, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge5
  br i1 %16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %72 = add i64 %geneLength, 1
  %73 = sub i64 %72, %segmentLength
  br label %74

; <label>:74                                      ; preds = %74, %.lr.ph
  %i.22 = phi i64 [ 0, %.lr.ph ], [ %84, %74 ]
  %75 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i64 %i.22
  %76 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %75, i64 0, i32 0
  store i64 1, i64* %76, align 8
  %77 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i64 %i.22, i32 1
  %78 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i64 %i.22, i32 3
  %79 = bitcast i8** %77 to i8*
  call void @llvm.memset.p0i8.i64(i8* %79, i8 0, i64 16, i32 8, i1 false)
  store %struct.constructEntry* %75, %struct.constructEntry** %78, align 8
  %80 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i64 %i.22, i32 4
  store %struct.constructEntry* null, %struct.constructEntry** %80, align 8
  %81 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i64 %i.22, i32 5
  store %struct.constructEntry* %75, %struct.constructEntry** %81, align 8
  %82 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i64 %i.22, i32 6
  store i64 0, i64* %82, align 8
  %83 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %71, i64 %i.22, i32 7
  store i64 %segmentLength, i64* %83, align 8
  %84 = add nuw nsw i64 %i.22, 1
  %exitcond = icmp eq i64 %84, %73
  br i1 %exitcond, label %._crit_edge.loopexit, label %74

._crit_edge.loopexit:                             ; preds = %74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %85 = tail call %struct.table* @table_alloc(i64 %geneLength, i64 (i8*, i8*)* null) #7
  %86 = getelementptr inbounds i8, i8* %3, i64 48
  %87 = bitcast i8* %86 to %struct.table**
  store %struct.table* %85, %struct.table** %87, align 8
  %88 = icmp eq %struct.table* %85, null
  br i1 %88, label %.loopexit, label %89

; <label>:89                                      ; preds = %._crit_edge
  %90 = getelementptr inbounds i8, i8* %3, i64 8
  %91 = bitcast i8* %90 to %struct.segments**
  store %struct.segments* %segmentsPtr, %struct.segments** %91, align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge, %._crit_edge5, %._crit_edge9, %6, %0, %89
  %.0 = phi %struct.sequencer* [ %4, %89 ], [ null, %0 ], [ null, %6 ], [ null, %._crit_edge9 ], [ null, %._crit_edge5 ], [ null, %._crit_edge ], [ null, %.loopexit.loopexit ]
  ret %struct.sequencer* %.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct.hashtable* @hashtable_alloc(i64, i64 (i8*)*, i64 (%struct.pair*, %struct.pair*)*, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @hashSegment(i8* %keyPtr) #0 {
  %1 = tail call i64 @hash_sdbm(i8* %keyPtr) #7
  ret i64 %1
}

; Function Attrs: nounwind readonly uwtable
define internal i64 @compareSegment(%struct.pair* nocapture readonly %a, %struct.pair* nocapture readonly %b) #3 {
  %1 = getelementptr inbounds %struct.pair, %struct.pair* %a, i64 0, i32 0
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds %struct.pair, %struct.pair* %b, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = tail call i32 @strcmp(i8* %2, i8* %4) #8
  %6 = sext i32 %5 to i64
  ret i64 %6
}

declare %struct.table* @table_alloc(i64, i64 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define void @sequencer_run(i8* nocapture %argPtr) #0 {
  %it = alloca %struct.list_node*, align 8
  %it16 = alloca %struct.list_node*, align 8
  %1 = tail call i64 (...) @thread_getId() #7
  %2 = load %struct._tm_thread_context_t*, %struct._tm_thread_context_t** @thread_contexts, align 8
  %3 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1
  %4 = tail call i64 (...) @thread_getId() #7
  %5 = trunc i64 %4 to i32
  tail call void @SimRoiStart(i32 %5) #7
  %6 = tail call i64 (...) @thread_getId() #7
  %7 = getelementptr inbounds i8, i8* %argPtr, i64 16
  %8 = bitcast i8* %7 to %struct.hashtable**
  %9 = load %struct.hashtable*, %struct.hashtable** %8, align 8
  %10 = getelementptr inbounds i8, i8* %argPtr, i64 24
  %11 = bitcast i8* %10 to %struct.endInfoEntry**
  %12 = load %struct.endInfoEntry*, %struct.endInfoEntry** %11, align 8
  %13 = getelementptr inbounds i8, i8* %argPtr, i64 32
  %14 = bitcast i8* %13 to %struct.table***
  %15 = load %struct.table**, %struct.table*** %14, align 8
  %16 = getelementptr inbounds i8, i8* %argPtr, i64 40
  %17 = bitcast i8* %16 to %struct.constructEntry**
  %18 = load %struct.constructEntry*, %struct.constructEntry** %17, align 8
  %19 = getelementptr inbounds i8, i8* %argPtr, i64 48
  %20 = bitcast i8* %19 to %struct.table**
  %21 = load %struct.table*, %struct.table** %20, align 8
  %22 = getelementptr inbounds i8, i8* %argPtr, i64 8
  %23 = bitcast i8* %22 to %struct.segments**
  %24 = load %struct.segments*, %struct.segments** %23, align 8
  %25 = icmp eq %struct.segments* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %0
  tail call void @__assert_fail(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 257, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #9
  unreachable

; <label>:27                                      ; preds = %0
  %28 = getelementptr inbounds %struct.segments, %struct.segments* %24, i64 0, i32 2
  %29 = load %struct.vector*, %struct.vector** %28, align 8
  %30 = tail call i64 @vector_getSize(%struct.vector* %29) #7
  %31 = getelementptr inbounds %struct.segments, %struct.segments* %24, i64 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = tail call i64 (...) @thread_getNumThread() #7
  %34 = sdiv i64 %33, 2
  %35 = add nsw i64 %34, %30
  %36 = sdiv i64 %35, %33
  %37 = mul nsw i64 %36, %6
  %38 = add nsw i64 %33, -1
  %39 = icmp eq i64 %6, %38
  %40 = add nsw i64 %37, %36
  %i_stop.0 = select i1 %39, i64 %30, i64 %40
  %41 = icmp slt i64 %37, %i_stop.0
  br i1 %41, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %27
  %42 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i64 0, i32 0
  %43 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  br label %44

; <label>:44                                      ; preds = %.lr.ph101, %74
  %i.099 = phi i64 [ %37, %.lr.ph101 ], [ %63, %74 ]
  %45 = load i32, i32* %42, align 8
  %46 = tail call i32 @workBegin(i32 0, i32 %45) #7
  store i32 %46, i32* %43, align 4
  br label %.outer22

.outer22:                                         ; preds = %53, %44
  %tries.0.ph = phi i32 [ %54, %53 ], [ 9, %44 ]
  %47 = tail call i64 (...) @RTM_fallback_isLocked() #7
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %._crit_edge94, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %.outer22
  br label %.lr.ph93

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph93
  tail call void @llvm.x86.sse2.pause() #7
  %49 = tail call i64 (...) @RTM_fallback_isLocked() #7
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %._crit_edge94.loopexit, label %.lr.ph93

._crit_edge94.loopexit:                           ; preds = %.lr.ph93
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %._crit_edge94.loopexit, %.outer22
  %51 = icmp slt i32 %tries.0.ph, 2
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %._crit_edge94
  %tries.0.ph.lcssa = phi i32 [ %tries.0.ph, %._crit_edge94 ]
  tail call void (...) @RTM_fallback_lock() #7
  br label %62

; <label>:53                                      ; preds = %._crit_edge94
  %54 = add nsw i32 %tries.0.ph, -1
  %55 = tail call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 0, i64 0, i64 4294967295) #7, !srcloc !3
  %56 = trunc i64 %55 to i32
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %.outer22

; <label>:58                                      ; preds = %53
  %tries.0.ph.lcssa198 = phi i32 [ %tries.0.ph, %53 ]
  %59 = tail call i64 (...) @RTM_fallback_isLocked() #7
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %62, label %61

; <label>:61                                      ; preds = %58
  tail call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #7, !srcloc !4
  br label %62

; <label>:62                                      ; preds = %58, %61, %52
  %tries.0.ph199 = phi i32 [ %tries.0.ph.lcssa198, %58 ], [ %tries.0.ph.lcssa198, %61 ], [ %tries.0.ph.lcssa, %52 ]
  %63 = add nsw i64 %i.099, 12
  %64 = icmp slt i64 %i_stop.0, %63
  %65 = select i1 %64, i64 %i_stop.0, i64 %63
  %66 = icmp slt i64 %i.099, %65
  br i1 %66, label %.lr.ph97.preheader, label %._crit_edge98

.lr.ph97.preheader:                               ; preds = %62
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %.lr.ph97
  %ii.095 = phi i64 [ %69, %.lr.ph97 ], [ %i.099, %.lr.ph97.preheader ]
  %67 = tail call i8* @vector_at(%struct.vector* %29, i64 %ii.095) #7
  %68 = tail call i64 @TMhashtable_insert(%struct.hashtable* %9, i8* %67, i8* %67) #7
  %69 = add nsw i64 %ii.095, 1
  %70 = icmp slt i64 %69, %65
  br i1 %70, label %.lr.ph97, label %._crit_edge98.loopexit, !llvm.loop !5

._crit_edge98.loopexit:                           ; preds = %.lr.ph97
  br label %._crit_edge98

._crit_edge98:                                    ; preds = %._crit_edge98.loopexit, %62
  %71 = icmp sgt i32 %tries.0.ph199, 1
  br i1 %71, label %72, label %73

; <label>:72                                      ; preds = %._crit_edge98
  tail call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 0) #7, !srcloc !7
  br label %74

; <label>:73                                      ; preds = %._crit_edge98
  tail call void (...) @RTM_fallback_unlock() #7
  br label %74

; <label>:74                                      ; preds = %72, %73
  tail call void @workEnd(i32 0, i32 0) #7
  %75 = icmp slt i64 %63, %i_stop.0
  br i1 %75, label %44, label %._crit_edge102.loopexit

._crit_edge102.loopexit:                          ; preds = %74
  br label %._crit_edge102

._crit_edge102:                                   ; preds = %._crit_edge102.loopexit, %27
  tail call void (...) @thread_barrier_wait() #7
  %76 = tail call i64 @hashtable_getSize(%struct.hashtable* %9) #7
  %77 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i64 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %34
  %80 = sdiv i64 %79, %33
  %81 = mul nsw i64 %80, %6
  %82 = add nsw i64 %81, %80
  %i_stop.1 = select i1 %39, i64 %78, i64 %82
  %83 = add nsw i64 %76, %34
  %84 = sdiv i64 %83, %33
  %85 = mul nsw i64 %84, %6
  %86 = icmp slt i64 %81, %i_stop.1
  br i1 %86, label %.lr.ph91, label %._crit_edge92

.lr.ph91:                                         ; preds = %._crit_edge102
  %87 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i64 0, i32 0
  %88 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %89 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %9, i64 0, i32 0
  %90 = icmp sgt i64 %32, 1
  br label %91

; <label>:91                                      ; preds = %.lr.ph91, %205
  %i.189 = phi i64 [ %81, %.lr.ph91 ], [ %206, %205 ]
  %entryIndex.088 = phi i64 [ %85, %.lr.ph91 ], [ %entryIndex.1.lcssa, %205 ]
  %92 = load i32, i32* %87, align 8
  %93 = call i32 @workBegin(i32 0, i32 %92) #7
  store i32 %93, i32* %88, align 4
  %94 = load %struct.list**, %struct.list*** %89, align 8
  %95 = getelementptr inbounds %struct.list*, %struct.list** %94, i64 %i.189
  %96 = load %struct.list*, %struct.list** %95, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it, %struct.list* %96) #7
  br label %97

; <label>:97                                      ; preds = %201, %91
  %entryIndex.1 = phi i64 [ %entryIndex.088, %91 ], [ %132, %201 ]
  %98 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it, %struct.list* %96) #8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %205, label %100

; <label>:100                                     ; preds = %97
  %101 = call i8* @list_iter_next(%struct.list_node** nonnull %it, %struct.list* %96) #7
  %102 = bitcast i8* %101 to i8**
  %103 = load i8*, i8** %102, align 8
  br label %.outer21

.outer21:                                         ; preds = %110, %100
  %tries8.0.ph = phi i32 [ %111, %110 ], [ 9, %100 ]
  %104 = call i64 (...) @RTM_fallback_isLocked() #7
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %._crit_edge75, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %.outer21
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %.lr.ph74
  call void @llvm.x86.sse2.pause() #7
  %106 = call i64 (...) @RTM_fallback_isLocked() #7
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %._crit_edge75.loopexit, label %.lr.ph74

._crit_edge75.loopexit:                           ; preds = %.lr.ph74
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %._crit_edge75.loopexit, %.outer21
  %108 = icmp slt i32 %tries8.0.ph, 2
  br i1 %108, label %109, label %110

; <label>:109                                     ; preds = %._crit_edge75
  %tries8.0.ph.lcssa = phi i32 [ %tries8.0.ph, %._crit_edge75 ]
  call void (...) @RTM_fallback_lock() #7
  br label %.preheader20

; <label>:110                                     ; preds = %._crit_edge75
  %111 = add nsw i32 %tries8.0.ph, -1
  %112 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 0, i64 1, i64 4294967295) #7, !srcloc !3
  %113 = trunc i64 %112 to i32
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %.outer21

; <label>:115                                     ; preds = %110
  %tries8.0.ph.lcssa188 = phi i32 [ %tries8.0.ph, %110 ]
  %116 = call i64 (...) @RTM_fallback_isLocked() #7
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %.preheader20, label %118

; <label>:118                                     ; preds = %115
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #7, !srcloc !4
  br label %.preheader20

.preheader20:                                     ; preds = %118, %109, %115
  %tries8.0.ph189 = phi i32 [ %tries8.0.ph.lcssa188, %118 ], [ %tries8.0.ph.lcssa, %109 ], [ %tries8.0.ph.lcssa188, %115 ]
  %119 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %entryIndex.1, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %._crit_edge78, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %.preheader20
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %entryIndex.276 = phi i64 [ %123, %.lr.ph77 ], [ %entryIndex.1, %.lr.ph77.preheader ]
  %122 = add nsw i64 %entryIndex.276, 1
  %123 = srem i64 %122, %76
  %124 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %123, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %._crit_edge78.loopexit, label %.lr.ph77, !llvm.loop !8

._crit_edge78.loopexit:                           ; preds = %.lr.ph77
  %.lcssa191 = phi i8** [ %124, %.lr.ph77 ]
  %.lcssa190 = phi i64 [ %123, %.lr.ph77 ]
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %.preheader20
  %.lcssa35 = phi i8** [ %119, %.preheader20 ], [ %.lcssa191, %._crit_edge78.loopexit ]
  %.pn = phi i64 [ %entryIndex.1, %.preheader20 ], [ %.lcssa190, %._crit_edge78.loopexit ]
  %.lcssa34 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %.pn
  store i8* %103, i8** %.lcssa35, align 8
  %127 = icmp sgt i32 %tries8.0.ph189, 1
  br i1 %127, label %128, label %129

; <label>:128                                     ; preds = %._crit_edge78
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 1) #7, !srcloc !7
  br label %130

; <label>:129                                     ; preds = %._crit_edge78
  call void (...) @RTM_fallback_unlock() #7
  br label %130

; <label>:130                                     ; preds = %129, %128
  %131 = add nsw i64 %.pn, 1
  %132 = srem i64 %131, %76
  %133 = getelementptr inbounds i8, i8* %103, i64 1
  %134 = load i8, i8* %133, align 1
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %hashString.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %130
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %136 = phi i8 [ %141, %.lr.ph.i ], [ %134, %.lr.ph.i.preheader ]
  %.03.i = phi i8* [ %138, %.lr.ph.i ], [ %133, %.lr.ph.i.preheader ]
  %hash.02.i = phi i64 [ %140, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %137 = sext i8 %136 to i64
  %138 = getelementptr inbounds i8, i8* %.03.i, i64 1
  %139 = mul i64 %hash.02.i, 65599
  %140 = add i64 %139, %137
  %141 = load i8, i8* %138, align 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %hashString.exit.loopexit, label %.lr.ph.i

hashString.exit.loopexit:                         ; preds = %.lr.ph.i
  %.lcssa192 = phi i64 [ %140, %.lr.ph.i ]
  br label %hashString.exit

hashString.exit:                                  ; preds = %hashString.exit.loopexit, %130
  %hash.0.lcssa.i = phi i64 [ 0, %130 ], [ %.lcssa192, %hashString.exit.loopexit ]
  %143 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %.pn, i32 2
  store i64 %hash.0.lcssa.i, i64* %143, align 8
  %144 = load i8, i8* %103, align 1
  %145 = sext i8 %144 to i64
  br i1 %90, label %.preheader16.lr.ph, label %.preheader18

.preheader16.lr.ph:                               ; preds = %hashString.exit
  %146 = bitcast %struct.constructEntry* %.lcssa34 to i8*
  br label %.preheader16

; <label>:147                                     ; preds = %177
  %148 = icmp slt i64 %179, %32
  %149 = getelementptr inbounds i8, i8* %103, i64 %j6.084
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i64
  %152 = mul i64 %154, 65599
  %153 = add i64 %152, %151
  br i1 %148, label %.preheader16, label %.preheader18.loopexit

.preheader18.loopexit:                            ; preds = %147
  %.lcssa195 = phi i64 [ %153, %147 ]
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.loopexit, %hashString.exit
  %.lcssa39 = phi i64 [ %145, %hashString.exit ], [ %.lcssa195, %.preheader18.loopexit ]
  br label %.outer19

.preheader16:                                     ; preds = %.preheader16.lr.ph, %147
  %154 = phi i64 [ %145, %.preheader16.lr.ph ], [ %153, %147 ]
  %j6.084 = phi i64 [ 1, %.preheader16.lr.ph ], [ %179, %147 ]
  br label %.outer17

.outer17:                                         ; preds = %.preheader16, %161
  %tries10.0.ph = phi i32 [ 9, %.preheader16 ], [ %162, %161 ]
  %155 = call i64 (...) @RTM_fallback_isLocked() #7
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %._crit_edge83, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.outer17
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %.lr.ph82
  call void @llvm.x86.sse2.pause() #7
  %157 = call i64 (...) @RTM_fallback_isLocked() #7
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %._crit_edge83.loopexit, label %.lr.ph82

._crit_edge83.loopexit:                           ; preds = %.lr.ph82
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %._crit_edge83.loopexit, %.outer17
  %159 = icmp slt i32 %tries10.0.ph, 2
  br i1 %159, label %160, label %161

; <label>:160                                     ; preds = %._crit_edge83
  %tries10.0.ph.lcssa = phi i32 [ %tries10.0.ph, %._crit_edge83 ]
  call void (...) @RTM_fallback_lock() #7
  br label %170

; <label>:161                                     ; preds = %._crit_edge83
  %162 = add nsw i32 %tries10.0.ph, -1
  %163 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 0, i64 2, i64 4294967295) #7, !srcloc !3
  %164 = trunc i64 %163 to i32
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %.outer17

; <label>:166                                     ; preds = %161
  %tries10.0.ph.lcssa193 = phi i32 [ %tries10.0.ph, %161 ]
  %167 = call i64 (...) @RTM_fallback_isLocked() #7
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %170, label %169

; <label>:169                                     ; preds = %166
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #7, !srcloc !4
  br label %170

; <label>:170                                     ; preds = %166, %169, %160
  %tries10.0.ph194 = phi i32 [ %tries10.0.ph.lcssa193, %166 ], [ %tries10.0.ph.lcssa193, %169 ], [ %tries10.0.ph.lcssa, %160 ]
  %171 = getelementptr inbounds %struct.table*, %struct.table** %15, i64 %j6.084
  %172 = load %struct.table*, %struct.table** %171, align 8
  %173 = call i64 @TMtable_insert(%struct.table* %172, i64 %154, i8* %146) #7
  %174 = icmp sgt i32 %tries10.0.ph194, 1
  br i1 %174, label %175, label %176

; <label>:175                                     ; preds = %170
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 2) #7, !srcloc !7
  br label %177

; <label>:176                                     ; preds = %170
  call void (...) @RTM_fallback_unlock() #7
  br label %177

; <label>:177                                     ; preds = %176, %175
  %178 = icmp eq i64 %173, 0
  %179 = add nuw nsw i64 %j6.084, 1
  br i1 %178, label %180, label %147

; <label>:180                                     ; preds = %177
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 405, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #9
  unreachable

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %.lr.ph86
  call void @llvm.x86.sse2.pause() #7
  %181 = call i64 (...) @RTM_fallback_isLocked() #7
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %._crit_edge87.loopexit, label %.lr.ph86

._crit_edge87.loopexit:                           ; preds = %.lr.ph86
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit, %.outer19
  %183 = icmp slt i32 %tries12.0.ph, 2
  br i1 %183, label %198, label %184

; <label>:184                                     ; preds = %._crit_edge87
  %185 = add nsw i32 %tries12.0.ph, -1
  %186 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 3, i64 0, i64 3, i64 4294967295) #7, !srcloc !3
  %187 = trunc i64 %186 to i32
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %191, label %.outer19

.outer19:                                         ; preds = %.preheader18, %184
  %tries12.0.ph = phi i32 [ 9, %.preheader18 ], [ %185, %184 ]
  %189 = call i64 (...) @RTM_fallback_isLocked() #7
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %._crit_edge87, label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %.outer19
  br label %.lr.ph86

; <label>:191                                     ; preds = %184
  %192 = call i64 (...) @RTM_fallback_isLocked() #7
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %195, label %194

; <label>:194                                     ; preds = %191
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #7, !srcloc !4
  br label %195

; <label>:195                                     ; preds = %191, %194
  %196 = bitcast %struct.constructEntry* %.lcssa34 to i8*
  %197 = call i64 @TMtable_insert(%struct.table* %21, i64 %.lcssa39, i8* %196) #7
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 3) #7, !srcloc !7
  br label %201

; <label>:198                                     ; preds = %._crit_edge87
  call void (...) @RTM_fallback_lock() #7
  %199 = bitcast %struct.constructEntry* %.lcssa34 to i8*
  %200 = call i64 @TMtable_insert(%struct.table* %21, i64 %.lcssa39, i8* %199) #7
  call void (...) @RTM_fallback_unlock() #7
  br label %201

; <label>:201                                     ; preds = %198, %195
  %202 = phi i64 [ %200, %198 ], [ %197, %195 ]
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %97

; <label>:204                                     ; preds = %201
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 418, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #9
  unreachable

; <label>:205                                     ; preds = %97
  %entryIndex.1.lcssa = phi i64 [ %entryIndex.1, %97 ]
  call void @workEnd(i32 0, i32 0) #7
  %206 = add nsw i64 %i.189, 1
  %207 = icmp slt i64 %206, %i_stop.1
  br i1 %207, label %91, label %._crit_edge92.loopexit

._crit_edge92.loopexit:                           ; preds = %205
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %._crit_edge92.loopexit, %._crit_edge102
  call void (...) @thread_barrier_wait() #7
  %208 = icmp sgt i64 %32, 1
  br i1 %208, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %._crit_edge92
  %209 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %3, i64 0, i32 0
  %210 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %211 = add nsw i64 %85, %84
  %index_stop.0 = select i1 %39, i64 %76, i64 %211
  %212 = icmp slt i64 %85, %index_stop.0
  %213 = icmp eq i64 %6, 0
  %214 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 1, i32 0
  %215 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 0, i32 1
  %216 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 0, i32 0
  %217 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 0, i32 1
  %218 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 0, i32 2
  br label %219

; <label>:219                                     ; preds = %.lr.ph72, %366
  %substringLength.070.in = phi i64 [ %32, %.lr.ph72 ], [ %substringLength.070, %366 ]
  %substringLength.070 = add nsw i64 %substringLength.070.in, -1
  %220 = load i32, i32* %209, align 8
  %221 = call i32 @workBegin(i32 0, i32 %220) #7
  store i32 %221, i32* %210, align 4
  %222 = getelementptr inbounds %struct.table*, %struct.table** %15, i64 %substringLength.070
  %223 = load %struct.table*, %struct.table** %222, align 8
  %224 = getelementptr inbounds %struct.table, %struct.table* %223, i64 0, i32 0
  %225 = load %struct.list**, %struct.list*** %224, align 8
  %226 = getelementptr inbounds %struct.table, %struct.table* %223, i64 0, i32 1
  %227 = load i64, i64* %226, align 8
  br i1 %212, label %.lr.ph56, label %._crit_edge57

.lr.ph56:                                         ; preds = %219
  %228 = sub nsw i64 %32, %substringLength.070
  %substringLength.0.neg = sub i64 1, %substringLength.070.in
  br label %229

; <label>:229                                     ; preds = %.lr.ph56, %.loopexit14
  %entryIndex.354 = phi i64 [ %85, %.lr.ph56 ], [ %309, %.loopexit14 ]
  %230 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %entryIndex.354, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %.loopexit14, label %233

; <label>:233                                     ; preds = %229
  %234 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %entryIndex.354, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %entryIndex.354, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = urem i64 %237, %227
  %239 = getelementptr inbounds %struct.list*, %struct.list** %225, i64 %238
  %240 = load %struct.list*, %struct.list** %239, align 8
  call void @list_iter_reset(%struct.list_node** nonnull %it16, %struct.list* %240) #7
  %241 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %entryIndex.354, i32 3
  %242 = getelementptr inbounds i8, i8* %235, i64 %228
  %243 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %entryIndex.354, i32 4
  %244 = bitcast %struct.constructEntry** %243 to i8**
  %245 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %entryIndex.354, i32 6
  br label %246

; <label>:246                                     ; preds = %304, %233
  %247 = call i64 @list_iter_hasNext(%struct.list_node** nonnull %it16, %struct.list* %240) #8
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %.loopexit14.loopexit, label %249

; <label>:249                                     ; preds = %246
  %250 = call i8* @list_iter_next(%struct.list_node** nonnull %it16, %struct.list* %240) #7
  %251 = bitcast i8* %250 to %struct.constructEntry*
  %252 = getelementptr inbounds i8, i8* %250, i64 8
  %253 = bitcast i8* %252 to i8**
  %254 = load i8*, i8** %253, align 8
  br label %.outer

.outer:                                           ; preds = %261, %249
  %tries18.0.ph = phi i32 [ %262, %261 ], [ 9, %249 ]
  %255 = call i64 (...) @RTM_fallback_isLocked() #7
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %._crit_edge53, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %.outer
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %.lr.ph52
  call void @llvm.x86.sse2.pause() #7
  %257 = call i64 (...) @RTM_fallback_isLocked() #7
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %._crit_edge53.loopexit, label %.lr.ph52

._crit_edge53.loopexit:                           ; preds = %.lr.ph52
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %._crit_edge53.loopexit, %.outer
  %259 = icmp slt i32 %tries18.0.ph, 2
  br i1 %259, label %260, label %261

; <label>:260                                     ; preds = %._crit_edge53
  %tries18.0.ph.lcssa = phi i32 [ %tries18.0.ph, %._crit_edge53 ]
  call void (...) @RTM_fallback_lock() #7
  br label %270

; <label>:261                                     ; preds = %._crit_edge53
  %262 = add nsw i32 %tries18.0.ph, -1
  %263 = call i64 asm sideeffect "mov $0, %rcx\0A\09mov $1, %rdx\0A\09mov $2, %rdi\0A\09xbegin   .+6 \0A\09", "={ax},r,r,r,0,~{rax},~{rcx},~{rdx},~{rdi},~{dirflag},~{fpsr},~{flags}"(i64 4, i64 0, i64 4, i64 4294967295) #7, !srcloc !3
  %264 = trunc i64 %263 to i32
  %265 = icmp eq i32 %264, -1
  br i1 %265, label %266, label %.outer

; <label>:266                                     ; preds = %261
  %tries18.0.ph.lcssa183 = phi i32 [ %tries18.0.ph, %261 ]
  %267 = call i64 (...) @RTM_fallback_isLocked() #7
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %270, label %269

; <label>:269                                     ; preds = %266
  call void asm sideeffect "mov $0,%rcx\0A\09xabort  $$0 \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 255) #7, !srcloc !4
  br label %270

; <label>:270                                     ; preds = %266, %269, %260
  %tries18.0.ph184 = phi i32 [ %tries18.0.ph.lcssa183, %266 ], [ %tries18.0.ph.lcssa183, %269 ], [ %tries18.0.ph.lcssa, %260 ]
  %271 = bitcast i8* %250 to i64*
  %272 = load i64, i64* %271, align 8
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %300, label %274

; <label>:274                                     ; preds = %270
  %275 = load %struct.constructEntry*, %struct.constructEntry** %241, align 8
  %276 = icmp eq %struct.constructEntry* %275, %251
  br i1 %276, label %300, label %277

; <label>:277                                     ; preds = %274
  %278 = call i32 @strncmp(i8* %254, i8* %242, i64 %substringLength.070) #8
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %300

; <label>:280                                     ; preds = %277
  store i64 0, i64* %271, align 8
  store i64 0, i64* %230, align 8
  %281 = getelementptr inbounds i8, i8* %250, i64 40
  %282 = bitcast i8* %281 to %struct.constructEntry**
  %283 = load %struct.constructEntry*, %struct.constructEntry** %282, align 8
  %284 = load %struct.constructEntry*, %struct.constructEntry** %241, align 8
  %285 = icmp eq %struct.constructEntry* %283, null
  br i1 %285, label %286, label %287

; <label>:286                                     ; preds = %280
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 506, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #9
  unreachable

; <label>:287                                     ; preds = %280
  %288 = icmp eq %struct.constructEntry* %284, null
  br i1 %288, label %289, label %290

; <label>:289                                     ; preds = %287
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 507, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #9
  unreachable

; <label>:290                                     ; preds = %287
  %291 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %283, i64 0, i32 3
  store %struct.constructEntry* %284, %struct.constructEntry** %291, align 8
  store i8* %250, i8** %244, align 8
  %292 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %284, i64 0, i32 5
  store %struct.constructEntry* %283, %struct.constructEntry** %292, align 8
  store i64 %substringLength.070, i64* %245, align 8
  %293 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %284, i64 0, i32 7
  %294 = load i64, i64* %293, align 8
  %295 = getelementptr inbounds i8, i8* %250, i64 56
  %296 = bitcast i8* %295 to i64*
  %297 = load i64, i64* %296, align 8
  %298 = add i64 %294, %substringLength.0.neg
  %299 = add i64 %298, %297
  store i64 %299, i64* %293, align 8
  br label %300

; <label>:300                                     ; preds = %274, %270, %290, %277
  %301 = icmp sgt i32 %tries18.0.ph184, 1
  br i1 %301, label %302, label %303

; <label>:302                                     ; preds = %300
  call void asm sideeffect "mov $0,%rcx\0A\09xend \0A\09", "r,~{rcx},~{dirflag},~{fpsr},~{flags}"(i64 4) #7, !srcloc !7
  br label %304

; <label>:303                                     ; preds = %300
  call void (...) @RTM_fallback_unlock() #7
  br label %304

; <label>:304                                     ; preds = %303, %302
  %305 = load i64, i64* %230, align 8
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %.loopexit14.loopexit, label %246

.loopexit14.loopexit:                             ; preds = %246, %304
  br label %.loopexit14

.loopexit14:                                      ; preds = %.loopexit14.loopexit, %229
  %307 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %entryIndex.354, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = add nsw i64 %308, %entryIndex.354
  %310 = icmp slt i64 %309, %index_stop.0
  br i1 %310, label %229, label %._crit_edge57.loopexit

._crit_edge57.loopexit:                           ; preds = %.loopexit14
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %._crit_edge57.loopexit, %219
  call void (...) @thread_barrier_wait() #7
  %311 = icmp sgt i64 %substringLength.070, 1
  %or.cond = and i1 %213, %311
  br i1 %or.cond, label %312, label %366

; <label>:312                                     ; preds = %._crit_edge57
  %313 = sub nsw i64 %32, %substringLength.070
  %314 = add nuw nsw i64 %313, 1
  %315 = load i64, i64* %214, align 8
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %.lr.ph60.preheader, label %._crit_edge61

.lr.ph60.preheader:                               ; preds = %312
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %i.258 = phi i64 [ %319, %.lr.ph60 ], [ 1, %.lr.ph60.preheader ]
  %317 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %i.258, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = add nsw i64 %318, %i.258
  %320 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %319, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %.lr.ph60, label %._crit_edge61.loopexit

._crit_edge61.loopexit:                           ; preds = %.lr.ph60
  %.lcssa = phi i64 [ %319, %.lr.ph60 ]
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %._crit_edge61.loopexit, %312
  %i.2.lcssa = phi i64 [ 1, %312 ], [ %.lcssa, %._crit_edge61.loopexit ]
  store i64 %i.2.lcssa, i64* %215, align 8
  %323 = load i64, i64* %216, align 8
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %.preheader15, label %325

; <label>:325                                     ; preds = %._crit_edge61
  %326 = load i8*, i8** %217, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 %314
  %328 = load i8, i8* %327, align 1
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %hashString.exit11, label %.lr.ph.i9.preheader

.lr.ph.i9.preheader:                              ; preds = %325
  br label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph.i9.preheader, %.lr.ph.i9
  %330 = phi i8 [ %335, %.lr.ph.i9 ], [ %328, %.lr.ph.i9.preheader ]
  %.03.i7 = phi i8* [ %332, %.lr.ph.i9 ], [ %327, %.lr.ph.i9.preheader ]
  %hash.02.i8 = phi i64 [ %334, %.lr.ph.i9 ], [ 0, %.lr.ph.i9.preheader ]
  %331 = sext i8 %330 to i64
  %332 = getelementptr inbounds i8, i8* %.03.i7, i64 1
  %333 = mul i64 %hash.02.i8, 65599
  %334 = add i64 %333, %331
  %335 = load i8, i8* %332, align 1
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %hashString.exit11.loopexit, label %.lr.ph.i9

hashString.exit11.loopexit:                       ; preds = %.lr.ph.i9
  %.lcssa185 = phi i64 [ %334, %.lr.ph.i9 ]
  br label %hashString.exit11

hashString.exit11:                                ; preds = %hashString.exit11.loopexit, %325
  %hash.0.lcssa.i10 = phi i64 [ 0, %325 ], [ %.lcssa185, %hashString.exit11.loopexit ]
  store i64 %hash.0.lcssa.i10, i64* %218, align 8
  br label %.preheader15

.preheader15:                                     ; preds = %._crit_edge61, %hashString.exit11
  %337 = icmp slt i64 %i.2.lcssa, %76
  br i1 %337, label %.lr.ph65.preheader, label %._crit_edge66

.lr.ph65.preheader:                               ; preds = %.preheader15
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %359
  %i.364 = phi i64 [ %362, %359 ], [ %i.2.lcssa, %.lr.ph65.preheader ]
  %j.063 = phi i64 [ %j.1, %359 ], [ 0, %.lr.ph65.preheader ]
  %338 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %i.364, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %359, label %341

; <label>:341                                     ; preds = %.lr.ph65
  %342 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %i.364, i32 1
  %343 = load i8*, i8** %342, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 %314
  %345 = load i8, i8* %344, align 1
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %hashString.exit6, label %.lr.ph.i4.preheader

.lr.ph.i4.preheader:                              ; preds = %341
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4.preheader, %.lr.ph.i4
  %347 = phi i8 [ %352, %.lr.ph.i4 ], [ %345, %.lr.ph.i4.preheader ]
  %.03.i2 = phi i8* [ %349, %.lr.ph.i4 ], [ %344, %.lr.ph.i4.preheader ]
  %hash.02.i3 = phi i64 [ %351, %.lr.ph.i4 ], [ 0, %.lr.ph.i4.preheader ]
  %348 = sext i8 %347 to i64
  %349 = getelementptr inbounds i8, i8* %.03.i2, i64 1
  %350 = mul i64 %hash.02.i3, 65599
  %351 = add i64 %350, %348
  %352 = load i8, i8* %349, align 1
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %hashString.exit6.loopexit, label %.lr.ph.i4

hashString.exit6.loopexit:                        ; preds = %.lr.ph.i4
  %.lcssa186 = phi i64 [ %351, %.lr.ph.i4 ]
  br label %hashString.exit6

hashString.exit6:                                 ; preds = %hashString.exit6.loopexit, %341
  %hash.0.lcssa.i5 = phi i64 [ 0, %341 ], [ %.lcssa186, %hashString.exit6.loopexit ]
  %354 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %i.364, i32 2
  store i64 %hash.0.lcssa.i5, i64* %354, align 8
  %355 = sub nsw i64 %i.364, %j.063
  %356 = icmp slt i64 %355, 1
  %357 = select i1 %356, i64 1, i64 %355
  %358 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %j.063, i32 1
  store i64 %357, i64* %358, align 8
  br label %359

; <label>:359                                     ; preds = %.lr.ph65, %hashString.exit6
  %j.1 = phi i64 [ %i.364, %hashString.exit6 ], [ %j.063, %.lr.ph65 ]
  %360 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %i.364, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = add nsw i64 %361, %i.364
  %363 = icmp slt i64 %362, %76
  br i1 %363, label %.lr.ph65, label %._crit_edge66.loopexit

._crit_edge66.loopexit:                           ; preds = %359
  %.lcssa187 = phi i64 [ %362, %359 ]
  %j.1.lcssa = phi i64 [ %j.1, %359 ]
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %._crit_edge66.loopexit, %.preheader15
  %i.3.lcssa = phi i64 [ %i.2.lcssa, %.preheader15 ], [ %.lcssa187, %._crit_edge66.loopexit ]
  %j.0.lcssa = phi i64 [ 0, %.preheader15 ], [ %j.1.lcssa, %._crit_edge66.loopexit ]
  %364 = sub nsw i64 %i.3.lcssa, %j.0.lcssa
  %365 = getelementptr inbounds %struct.endInfoEntry, %struct.endInfoEntry* %12, i64 %j.0.lcssa, i32 1
  store i64 %364, i64* %365, align 8
  br label %366

; <label>:366                                     ; preds = %._crit_edge66, %._crit_edge57
  call void (...) @thread_barrier_wait() #7
  call void @workEnd(i32 0, i32 0) #7
  br i1 %311, label %219, label %._crit_edge73.loopexit

._crit_edge73.loopexit:                           ; preds = %366
  br label %._crit_edge73

._crit_edge73:                                    ; preds = %._crit_edge73.loopexit, %._crit_edge92
  call void (...) @thread_barrier_wait() #7
  %367 = icmp eq i64 %6, 0
  br i1 %367, label %.preheader13, label %425

.preheader13:                                     ; preds = %._crit_edge73
  %368 = icmp sgt i64 %76, 0
  br i1 %368, label %.lr.ph49.preheader, label %._crit_edge50

.lr.ph49.preheader:                               ; preds = %.preheader13
  %xtraiter = and i64 %76, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph49.preheader.split, label %.lr.ph49.prol

.lr.ph49.prol:                                    ; preds = %.lr.ph49.preheader
  %369 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = icmp eq i64 %370, 0
  br i1 %371, label %375, label %372

; <label>:372                                     ; preds = %.lr.ph49.prol
  %373 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 0, i32 7
  %374 = load i64, i64* %373, align 8
  br label %375

; <label>:375                                     ; preds = %372, %.lr.ph49.prol
  %totalLength.1.prol = phi i64 [ %374, %372 ], [ 0, %.lr.ph49.prol ]
  br label %.lr.ph49.preheader.split

.lr.ph49.preheader.split:                         ; preds = %.lr.ph49.preheader, %375
  %totalLength.1.lcssa.unr = phi i64 [ undef, %.lr.ph49.preheader ], [ %totalLength.1.prol, %375 ]
  %i.448.unr = phi i64 [ 0, %.lr.ph49.preheader ], [ 1, %375 ]
  %totalLength.047.unr = phi i64 [ 0, %.lr.ph49.preheader ], [ %totalLength.1.prol, %375 ]
  %376 = icmp eq i64 %76, 1
  br i1 %376, label %._crit_edge50.loopexit, label %.lr.ph49.preheader.split.split

.lr.ph49.preheader.split.split:                   ; preds = %.lr.ph49.preheader.split
  br label %.lr.ph49

.lr.ph49:                                         ; preds = %434, %.lr.ph49.preheader.split.split
  %i.448 = phi i64 [ %i.448.unr, %.lr.ph49.preheader.split.split ], [ %435, %434 ]
  %totalLength.047 = phi i64 [ %totalLength.047.unr, %.lr.ph49.preheader.split.split ], [ %totalLength.1.1, %434 ]
  %377 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %i.448, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %.lr.ph49.1180, label %380

; <label>:380                                     ; preds = %.lr.ph49
  %381 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %i.448, i32 7
  %382 = load i64, i64* %381, align 8
  %383 = add nsw i64 %382, %totalLength.047
  br label %.lr.ph49.1180

.lr.ph49.1180:                                    ; preds = %.lr.ph49, %380
  %totalLength.1 = phi i64 [ %383, %380 ], [ %totalLength.047, %.lr.ph49 ]
  %384 = add nuw nsw i64 %i.448, 1
  %385 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %384, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %434, label %430

._crit_edge50.loopexit.unr-lcssa:                 ; preds = %434
  %totalLength.1.1.lcssa = phi i64 [ %totalLength.1.1, %434 ]
  br label %._crit_edge50.loopexit

._crit_edge50.loopexit:                           ; preds = %.lr.ph49.preheader.split, %._crit_edge50.loopexit.unr-lcssa
  %totalLength.1.lcssa = phi i64 [ %totalLength.1.lcssa.unr, %.lr.ph49.preheader.split ], [ %totalLength.1.1.lcssa, %._crit_edge50.loopexit.unr-lcssa ]
  br label %._crit_edge50

._crit_edge50:                                    ; preds = %._crit_edge50.loopexit, %.preheader13
  %totalLength.0.lcssa = phi i64 [ 0, %.preheader13 ], [ %totalLength.1.lcssa, %._crit_edge50.loopexit ]
  %388 = add nsw i64 %totalLength.0.lcssa, 1
  %389 = call noalias i8* @malloc(i64 %388) #7
  %390 = bitcast i8* %argPtr to i8**
  store i8* %389, i8** %390, align 8
  %391 = icmp eq i8* %389, null
  br i1 %391, label %392, label %.preheader

.preheader:                                       ; preds = %._crit_edge50
  br i1 %368, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

; <label>:392                                     ; preds = %._crit_edge50
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 593, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #9
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %421
  %i.546 = phi i64 [ %422, %421 ], [ 0, %.lr.ph.preheader ]
  %sequenceLength.045 = phi i64 [ %sequenceLength.1, %421 ], [ 0, %.lr.ph.preheader ]
  %393 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %i.546
  %394 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %393, i64 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %421, label %397

; <label>:397                                     ; preds = %.lr.ph
  %398 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %i.546, i32 7
  %399 = load i64, i64* %398, align 8
  %400 = add nsw i64 %399, %sequenceLength.045
  %401 = icmp sgt i64 %400, %totalLength.0.lcssa
  br i1 %401, label %402, label %403

; <label>:402                                     ; preds = %397
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 603, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #9
  unreachable

; <label>:403                                     ; preds = %397
  %404 = getelementptr inbounds i8, i8* %389, i64 %sequenceLength.045
  %405 = getelementptr inbounds i8, i8* %389, i64 %400
  br label %406

; <label>:406                                     ; preds = %413, %403
  %copyPtr.0 = phi i8* [ %404, %403 ], [ %410, %413 ]
  %constructEntryPtr26.0 = phi %struct.constructEntry* [ %393, %403 ], [ %417, %413 ]
  %407 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i64 0, i32 6
  %408 = load i64, i64* %407, align 8
  %409 = sub nsw i64 %32, %408
  %410 = getelementptr inbounds i8, i8* %copyPtr.0, i64 %409
  %411 = icmp ugt i8* %410, %405
  br i1 %411, label %412, label %413

; <label>:412                                     ; preds = %406
  %copyPtr.0.lcssa = phi i8* [ %copyPtr.0, %406 ]
  %puts = call i32 @puts(i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @str, i64 0, i64 0))
  br label %.loopexit

; <label>:413                                     ; preds = %406
  %414 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i64 0, i32 1
  %415 = load i8*, i8** %414, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %copyPtr.0, i8* %415, i64 %409, i32 1, i1 false)
  %416 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %constructEntryPtr26.0, i64 0, i32 4
  %417 = load %struct.constructEntry*, %struct.constructEntry** %416, align 8
  %418 = icmp eq %struct.constructEntry* %417, null
  br i1 %418, label %.loopexit.loopexit, label %406

.loopexit.loopexit:                               ; preds = %413
  %.lcssa182 = phi i8* [ %410, %413 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %412
  %copyPtr.1 = phi i8* [ %copyPtr.0.lcssa, %412 ], [ %.lcssa182, %.loopexit.loopexit ]
  %419 = icmp ugt i8* %copyPtr.1, %405
  br i1 %419, label %420, label %421

; <label>:420                                     ; preds = %.loopexit
  call void @__assert_fail(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 617, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.sequencer_run, i64 0, i64 0)) #9
  unreachable

; <label>:421                                     ; preds = %.loopexit, %.lr.ph
  %sequenceLength.1 = phi i64 [ %400, %.loopexit ], [ %sequenceLength.045, %.lr.ph ]
  %422 = add nuw nsw i64 %i.546, 1
  %423 = icmp slt i64 %422, %76
  br i1 %423, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %421
  %sequenceLength.1.lcssa = phi i64 [ %sequenceLength.1, %421 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %sequenceLength.0.lcssa = phi i64 [ 0, %.preheader ], [ %sequenceLength.1.lcssa, %._crit_edge.loopexit ]
  %424 = getelementptr inbounds i8, i8* %389, i64 %sequenceLength.0.lcssa
  store i8 0, i8* %424, align 1
  br label %425

; <label>:425                                     ; preds = %._crit_edge73, %._crit_edge
  %426 = call i64 (...) @thread_getId() #7
  %427 = trunc i64 %426 to i32
  %428 = getelementptr inbounds %struct._tm_thread_context_t, %struct._tm_thread_context_t* %2, i64 %1, i32 4
  %429 = load i32, i32* %428, align 4
  call void @SimRoiEnd(i32 %427, i32 %429) #7
  ret void

; <label>:430                                     ; preds = %.lr.ph49.1180
  %431 = getelementptr inbounds %struct.constructEntry, %struct.constructEntry* %18, i64 %384, i32 7
  %432 = load i64, i64* %431, align 8
  %433 = add nsw i64 %432, %totalLength.1
  br label %434

; <label>:434                                     ; preds = %430, %.lr.ph49.1180
  %totalLength.1.1 = phi i64 [ %433, %430 ], [ %totalLength.1, %.lr.ph49.1180 ]
  %435 = add nsw i64 %i.448, 2
  %exitcond.1 = icmp eq i64 %435, %76
  br i1 %exitcond.1, label %._crit_edge50.loopexit.unr-lcssa, label %.lr.ph49
}

declare i64 @thread_getId(...) #2

declare void @SimRoiStart(i32) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

declare i64 @vector_getSize(%struct.vector*) #2

declare i64 @thread_getNumThread(...) #2

declare i32 @workBegin(i32, i32) #2

declare i64 @RTM_fallback_isLocked(...) #2

declare void @RTM_fallback_lock(...) #2

declare i8* @vector_at(%struct.vector*, i64) #2

declare i64 @TMhashtable_insert(%struct.hashtable*, i8*, i8*) #2

declare void @RTM_fallback_unlock(...) #2

declare void @workEnd(i32, i32) #2

declare void @thread_barrier_wait(...) #2

declare i64 @hashtable_getSize(%struct.hashtable*) #2

declare void @list_iter_reset(%struct.list_node**, %struct.list*) #2

; Function Attrs: nounwind readonly
declare i64 @list_iter_hasNext(%struct.list_node**, %struct.list*) #5

declare i8* @list_iter_next(%struct.list_node**, %struct.list*) #2

declare i64 @TMtable_insert(%struct.table*, i64, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare void @SimRoiEnd(i32, i32) #2

; Function Attrs: nounwind uwtable
define void @sequencer_free(%struct.sequencer* nocapture %sequencerPtr) #0 {
  %1 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i64 0, i32 6
  %2 = load %struct.table*, %struct.table** %1, align 8
  tail call void @table_free(%struct.table* %2) #7
  %3 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i64 0, i32 5
  %4 = bitcast %struct.constructEntry** %3 to i8**
  %5 = load i8*, i8** %4, align 8
  tail call void @free(i8* %5) #7
  %6 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i64 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 1
  %9 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i64 0, i32 4
  br i1 %8, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.01 = phi i64 [ %13, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  %10 = load %struct.table**, %struct.table*** %9, align 8
  %11 = getelementptr inbounds %struct.table*, %struct.table** %10, i64 %i.01
  %12 = load %struct.table*, %struct.table** %11, align 8
  tail call void @table_free(%struct.table* %12) #7
  %13 = add nuw nsw i64 %i.01, 1
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  %16 = bitcast %struct.table*** %9 to i8**
  %17 = load i8*, i8** %16, align 8
  tail call void @free(i8* %17) #7
  %18 = getelementptr inbounds %struct.sequencer, %struct.sequencer* %sequencerPtr, i64 0, i32 3
  %19 = bitcast %struct.endInfoEntry** %18 to i8**
  %20 = load i8*, i8** %19, align 8
  tail call void @free(i8* %20) #7
  %21 = bitcast %struct.sequencer* %sequencerPtr to i8*
  tail call void @free(i8* %21) #7
  ret void
}

declare void @table_free(%struct.table*) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

declare i64 @hash_sdbm(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #7

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+rtm,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (http://llvm.org/git/clang.git 07a6361e0f32f699d47c124106e7911b584974d4) (https://github.com/llvm-mirror/llvm.git 051e787f26dbfdc26cf61a57bc82ca00dcb812e8)"}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
!3 = !{i32 1398597, i32 1398613, i32 1398649, i32 1398685, i32 1398721}
!4 = !{i32 1399198, i32 1399213, i32 1399247}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.vectorize.width", i32 1337}
!7 = !{i32 1398969, i32 1398984, i32 1399012}
!8 = distinct !{!8, !6}
